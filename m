Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FD342F83B
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 18:32:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbQ7g-0001nh-QQ; Fri, 15 Oct 2021 16:31:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1mbPdR-0000vq-9D
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 16:00:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oA+XtrVpatY111qi9rW+eMi2Ccu5JD4bZ/9KhM3WrlE=; b=NGica+GI0HPlvbGFawnj6a24M5
 ONkFSwyeOHEB5Ge1vxYHxx080hgz+XzHRoS8anSM1nxZdNmVyFv2J0Et0S9gyQy434O5vVZKqaeuN
 0avTbbrz/c7xDjp+sQWunhapkUfG57M59HjZf8zwRUrgu2/uRqxCaFXAGx3jur/3qyuM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oA+XtrVpatY111qi9rW+eMi2Ccu5JD4bZ/9KhM3WrlE=; b=aSG1gPXxVH0AJVuGkPqDA6WV8R
 RzqjX8bh4LBsoreDEBVYchL8Sbr2KTiuMGZdRskAIKKqlTc30FKv3ZE3zdagl3Jq2ThmTkIQDOx8/
 Sb+8OjV0KJpb9fXBFf0XE1ecKaRONd0bpra+vym10t8S2VIFTptYTgxr9RUYb8KqFAgg=;
Received: from mail-pl1-f179.google.com ([209.85.214.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbPdP-00Ep39-DH
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 16:00:41 +0000
Received: by mail-pl1-f179.google.com with SMTP id e10so1778903plh.8
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 15 Oct 2021 09:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oA+XtrVpatY111qi9rW+eMi2Ccu5JD4bZ/9KhM3WrlE=;
 b=XqIRk8njJo5f/smXtBnMnpa5uhREVTwoyHge7bthfJu3PV1eAY0raWnd7H8TUnbAlP
 6QJTXqryNMqTNsEzDWj/azKOg0JWIJXEUmyPhlYenUOsueW8KFdrQGT7L/i4Eg4OiZnx
 gS2Q2/7koaDEtdkJVEfY5BHTSx0EojKPtQeUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oA+XtrVpatY111qi9rW+eMi2Ccu5JD4bZ/9KhM3WrlE=;
 b=qClLFgYC6/CxOx7dBJjkqvT+F99kbB8Qg5oTQ5ObO9NlHEcjQ193v6wuoAyPTWimwM
 dlGBSelIaClaQmuD5pOBFGt9MI04xwrnXRifL3NLCBvfD57UZbNEUEHeplo34x2bqLYV
 6Bu+Dn0NqUGy1fQHDjd4GRuj9gKQNXkZmB9FDIWz3brMjcQxoUZqXsoC1cnpMNJewA24
 2mxUl1U+kE2VSDB9J/IKV5tsoSEIoX/7DYb087dsuKiqANA+g5RkkIdE1Iropgo+Je9a
 bSo6qgp4eIU2HNton0S9KJN6iHMLDolrn6PM3iZTFj4Nru6ueyOtaeQimZTyBhZlmRK2
 /i3w==
X-Gm-Message-State: AOAM530RnfdeB4ZahitJFgjFTmr5yAq3I8fBX0HPIxyn4zvlq2hn2gwb
 HRg6BaDRFupuierspIADWcetXw==
X-Google-Smtp-Source: ABdhPJzKtqYe4vRxUad2HzrB2swbKAK83Cb9s6XXYIsx2Jq5whQZG4n13YyVL1QUtSJ6rA0qtwQqhQ==
X-Received: by 2002:a17:90a:a386:: with SMTP id
 x6mr14380761pjp.56.1634313616631; 
 Fri, 15 Oct 2021 09:00:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id nn14sm5397718pjb.27.2021.10.15.09.00.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 09:00:16 -0700 (PDT)
Date: Fri, 15 Oct 2021 09:00:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110150900.71DDE55E1B@keescook>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-10-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-10-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:22PM +0200, Christoph Hellwig
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.179 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.179 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mbPdP-00Ep39-DH
X-Mailman-Approved-At: Fri, 15 Oct 2021 16:31:33 +0000
Subject: Re: [Jfs-discussion] [PATCH 09/30] fs: use bdev_nr_bytes instead of
 open coding it in blkdev_max_block
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
 Jan Kara <jack@suse.cz>, Mike Snitzer <snitzer@redhat.com>,
 linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Chaitanya Kulkarni <kch@nvidia.com>, Josef Bacik <josef@toxicpanda.com>,
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

On Fri, Oct 15, 2021 at 03:26:22PM +0200, Christoph Hellwig wrote:
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
