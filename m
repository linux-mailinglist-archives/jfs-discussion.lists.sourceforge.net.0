Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0321242F96A
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 18:58:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbQX6-0001pH-4k; Fri, 15 Oct 2021 16:58:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1mbQWA-0004SM-Gi
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 16:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K+6isvwekOgtvopkqE4I0h7AgNguipVYqeEY21w12Mo=; b=dtJpr8R9RXA2CF3PSshd7UdH3T
 y/akcKrrECvi8DRPaSanXYPLyDpHoHRa834sildogh4JQGo/qTvDG4I5tZVCcycKGuM9C8SvYH1m2
 QDb+GgmHd1PNGsBgnpLuLYkOvrp+XVe/psH6nxGgbW0JmIaJOP59uuOfuwt4rZPlG8Wg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K+6isvwekOgtvopkqE4I0h7AgNguipVYqeEY21w12Mo=; b=jf21t8JKdHBQkTibzVjv/zDyfm
 MJ4yBSs+mKfQwqDbIVGVmMAafPrVNHkf2lolPHvOiWrR2sapnReWkA8/m4Wdb30zc57ReOdQuQPTh
 wIpERbZXjNpCoJOQwYfKKs5QN3OuH78x/WQYfXA+siMJX5KJNktLBxBxyX4z8Tv9PgLc=;
Received: from mail-pf1-f175.google.com ([209.85.210.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbQW5-00EwGF-V6
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 16:57:13 +0000
Received: by mail-pf1-f175.google.com with SMTP id o133so8855192pfg.7
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 15 Oct 2021 09:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=K+6isvwekOgtvopkqE4I0h7AgNguipVYqeEY21w12Mo=;
 b=XiV2alQ2bCUhPKCRDy35L10uw/QVL0RMTX2wcoCawcZP+N544npMKl6qJHVNuREVMJ
 /3k+gOTpyuD9GvBFRwBhJkrM/MdxCBPLCnVY/0SS1G/dQv3yvOXHSbjERi1b1HJ8bt6c
 zWuPktMOT2lWvGeRm1bA9Ib7yGAG3xwtDOTDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K+6isvwekOgtvopkqE4I0h7AgNguipVYqeEY21w12Mo=;
 b=C0P1v0rMAnMb0m8CdlETSzl3HrzeDcLVarybJ4o1MaToeOVHfnYHu747LeoPLxTMjH
 oa3peiSVp605DFT0Wc904lVC0HJ8CaLCY3XVJ2BU3EIbxRGWhNOw3pD6QQD7c6YY9Jy5
 wgr4NFhHNApUxXfVRIszI8pzCj4vUjzA79yK9CtUNbCbViUAfyfJ3DkUv7QVaO02i7sv
 BH2bGnv5BSW8sRlafCZ0UXAhuqVZDXP+IBqd4Zcbgj1P/IEdWOMyuPgD/pJoXUqe5EZn
 u05EDHLPVE9SMS+mLUFmPpIk5pV7tRTuj4It4/onEsCp9k09mldyVZDNp+b8URFT8u2L
 1iqg==
X-Gm-Message-State: AOAM531M3jyAsXYGQLUG3AQOe3NOH7xrxmZD+dpstAumMSiuZTyOS/CF
 l+ohwAqEL+HTVGJtIv/WDO/RVg==
X-Google-Smtp-Source: ABdhPJy+YUT6npY/fZ/G9URvGOZpt9eamOIJH1D5JMCGxtLxyzdwQfs5MmBQFVKQI/Zn2W8hW6yLYA==
X-Received: by 2002:a05:6a00:1309:b0:44d:4d1e:c930 with SMTP id
 j9-20020a056a00130900b0044d4d1ec930mr12851663pfu.65.1634317024412; 
 Fri, 15 Oct 2021 09:57:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b16sm5793589pfm.58.2021.10.15.09.57.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 09:57:04 -0700 (PDT)
Date: Fri, 15 Oct 2021 09:57:03 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110150957.38CBB0C08@keescook>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-24-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-24-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:36PM +0200, Christoph Hellwig
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
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.175 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mbQW5-00EwGF-V6
X-Mailman-Approved-At: Fri, 15 Oct 2021 16:58:08 +0000
Subject: Re: [Jfs-discussion] [PATCH 23/30] squashfs: use bdev_nr_bytes
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
 reiserfs-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Oct 15, 2021 at 03:26:36PM +0200, Christoph Hellwig wrote:
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
