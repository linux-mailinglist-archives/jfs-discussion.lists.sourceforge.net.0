Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DDD42C265
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 16:09:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maew0-0000o4-Sr; Wed, 13 Oct 2021 14:08:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1maXZS-0005Ql-B3
 for jfs-discussion@lists.sourceforge.net; Wed, 13 Oct 2021 06:16:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vr2Ti0XXPw/GzVjOiY0OfTomtbZYRULNYJUDEzmrzO4=; b=QRw0/e2ZwMdIx5keC/gkyPCVjU
 1jIH9VvGMXPVCUYVXtgDkq0ayN+3kTSkSNQ7FVOBA/DtkMqeTVI9GtMkp5MugTkwEml14o2SvLFB+
 3tXh0P/w8GtVbHU2eVSQ3E6NC119CZCetITn17wUICGQBtQLQB8RLQBFf3HqGCF83bkI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vr2Ti0XXPw/GzVjOiY0OfTomtbZYRULNYJUDEzmrzO4=; b=l8u6cisb2SeOrFLIAKHT1qon/B
 3HGQLsJgOz5kO3U1PC54PJ6G63jOFWdrfIPiKOPQV6CmxW10gUSapCyNetjFu0285XbBiKxMBzDm9
 dqkSpCqSy7AFenh8HlI5nMQWx8CRvt5m+18dxYW6AhF2AZCV7HLVo1wcK3iyZNH92XRI=;
Received: from mail-pj1-f53.google.com ([209.85.216.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maXZR-007JzO-Nb
 for jfs-discussion@lists.sourceforge.net; Wed, 13 Oct 2021 06:16:58 +0000
Received: by mail-pj1-f53.google.com with SMTP id
 nn3-20020a17090b38c300b001a03bb6c4ebso1448190pjb.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 12 Oct 2021 23:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Vr2Ti0XXPw/GzVjOiY0OfTomtbZYRULNYJUDEzmrzO4=;
 b=K4nvDpNl1g5m539wsQDBpCbf3zo170v/GW6ZnHLXNDrULUU4yYZgBZyGAb+wBnnkpe
 Kw4TilugsMOouo/bETIRMTNNbwFs2By6YycSQiwP6WhM+z5A0iE/rlwHD7YheTZVwxWg
 UujJ8p17bj864LNgI93in3n9RRNxotwxYx6iE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Vr2Ti0XXPw/GzVjOiY0OfTomtbZYRULNYJUDEzmrzO4=;
 b=Fh0Pqs+vXhqu/z89evi0OiBLJAZoAPY/YxSgcWcTA1tdk7QpsUMptPLPDuLqZ0zQCi
 lfXXZ5MLHoa7OEhTM5lKtOXXvz1jY4spLdtmmeBaAYgDSRtqtW8SDTq3jKZtF7/pY3uq
 vukbMwwvlbgYsoQokyiiJusm5njfH86zwTArLjKFq3Id9EN/q6QsNkeVSMUELmiqmBkr
 cZZMVIw8Z4GkvQPNIa7vfvktifzE9aBCaVhAC0Lc/9fZMocATQuJD3au2/+ZYekfKDc2
 JznFjxE056eT6Dpzi+Fa8OZaGXxC7UaWR/bHSqWBD7xGJaoA1cPTow8ybftTbTSDm998
 sNvg==
X-Gm-Message-State: AOAM531QC8Y+44mehn3kxAiVDQeApV6ZeNbdPekdrprxv/4aLUEDlpzN
 zQoAiLYBw3SKw+0vxkJfMPJluw==
X-Google-Smtp-Source: ABdhPJyviIqYDhsPW2xustTPT0ttTkhiIBbQskiTA4bVnp1eNaDrTHxU5FKFz1farm1RVUHRoFmswQ==
X-Received: by 2002:a17:90b:1c8f:: with SMTP id
 oo15mr11110082pjb.169.1634105812260; 
 Tue, 12 Oct 2021 23:16:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c64sm7486893pga.40.2021.10.12.23.16.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 23:16:51 -0700 (PDT)
Date: Tue, 12 Oct 2021 23:16:51 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110122316.9C54C2F@keescook>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-16-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-16-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:28AM +0200, Christoph Hellwig
 wrote: > Use the proper helper to read the block device size. > >
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> Reviewed-by: Kees Cook <keescook@chromium.org>
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maXZR-007JzO-Nb
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:08:32 +0000
Subject: Re: [Jfs-discussion] [PATCH 15/29] hfsplus: use bdev_nr_sectors
 instead of open coding it
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Oct 13, 2021 at 07:10:28AM +0200, Christoph Hellwig wrote:
> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
