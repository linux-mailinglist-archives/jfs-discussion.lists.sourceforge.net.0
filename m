Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E1C42C253
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 16:09:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maew3-0000ti-Rp; Wed, 13 Oct 2021 14:08:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1maXpB-0005un-Jt
 for jfs-discussion@lists.sourceforge.net; Wed, 13 Oct 2021 06:33:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WOss03228JS+U0E2OXL79/LG2Z2ctX8IyohOEDd3STQ=; b=VIzteIkVTG7iK96kQNebJOhYA3
 zlBVz2V8YeyXGgNlxuuWtFBSt5xQWQaZjXArP8kq09YgCJJLRY6LhqpGtFpidEwGOKEEGgWeQM4LC
 4jVpzabWR3/M2VDF0TOIKOmXh1xjhDwLyCtcYRj1Ugcld53kHNczzJPebnPrl3HIdX/c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WOss03228JS+U0E2OXL79/LG2Z2ctX8IyohOEDd3STQ=; b=llLja/1B9gZmJw6b5KWr6JoalE
 zszsFcqDnEJTzFOrUc1QWKWa4LiSbqWJTYGKXWrcKLO0eVLZZ+5lELiw4vF0sm+ffr2sm3Pr5l9QJ
 M5N6Ln8gj9At5PNTNAlZ6MtQmy70jM5KEcTO7GqwB2OVrtbTaj0ZQoFIFMDD5XkAp4Lw=;
Received: from mail-pj1-f52.google.com ([209.85.216.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maXp9-0002a6-L1
 for jfs-discussion@lists.sourceforge.net; Wed, 13 Oct 2021 06:33:12 +0000
Received: by mail-pj1-f52.google.com with SMTP id om14so1389276pjb.5
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 12 Oct 2021 23:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WOss03228JS+U0E2OXL79/LG2Z2ctX8IyohOEDd3STQ=;
 b=SG8eTx4PGHBkPjipBIRHezrGg40X7FKDH3dcqzGEh0ZG/tSW8qND+TAMrNp3f/wqwx
 MhgHQ6qj4VZF73LZ68/IqBwYNjD0oJqF3VY+z4T9q23FV/6ltSnjivxfcuufOGGKlehP
 NgIRnRpzLQoV7Ik4Dnr+7MYlEdDMy98DEnQAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WOss03228JS+U0E2OXL79/LG2Z2ctX8IyohOEDd3STQ=;
 b=wvzO1DKRlcbSLF6aga4cuwk8/QO5Ac8qa2hQxy7EPTzUnK9KF6ynQYYV5CVlZ0buL/
 CgvrvP4MNl5V7aEqJaVQ3oeTGv1d7B1sEm1gbR1bpd0hNdbmVZdBatO/UqIpSwazQ2az
 o/CTOb6A0G1OXyzpsxWdDBq4gNYYamaZ7aBDPW6Zsjl84KSsr0kIs0K8NGNa6cmcvy89
 QAppebQdS5MYguBsBeBYjvyvh1exjLqsLD+nnjTvyE5cv4qZcKXgnZgCgKVmv1eWp0t+
 Z0isKBNnVpu89GD0BLl6mLFwlVMTwdVLY1K/rDYhpmdEKTIWWuvP89WKMLr70yMytWuu
 RWsQ==
X-Gm-Message-State: AOAM530mVAfndrIvAPd6qCSDeuFCiH8ajPtkyKkyU9H17CLLKLa/bkHS
 t7b3jz+3Px6SJapLNk2F/Ir1eg==
X-Google-Smtp-Source: ABdhPJznx7wYhVexbMFNDV4dCepvElOzihP1I4t7IwLHfcLc7mdWs+S7z03dgD05iBEaGZ31xHHwig==
X-Received: by 2002:a17:90b:368a:: with SMTP id
 mj10mr2200890pjb.201.1634106786111; 
 Tue, 12 Oct 2021 23:33:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r31sm4746519pjg.28.2021.10.12.23.33.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 23:33:05 -0700 (PDT)
Date: Tue, 12 Oct 2021 23:33:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110122332.53B5925A@keescook>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-28-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-28-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:40AM +0200, Christoph Hellwig
 wrote: > Use the sb_bdev_nr_blocks helper instead of open coding it. > >
 Signed-off-by: Christoph Hellwig <hch@lst.de> > --- > fs/ntfs/super [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.52 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maXp9-0002a6-L1
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:08:32 +0000
Subject: Re: [Jfs-discussion] [PATCH 27/29] ntfs: use sb_bdev_nr_blocks
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

On Wed, Oct 13, 2021 at 07:10:40AM +0200, Christoph Hellwig wrote:
> Use the sb_bdev_nr_blocks helper instead of open coding it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  fs/ntfs/super.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
> index 0d7e948cb29c9..5ae8de09b271b 100644
> --- a/fs/ntfs/super.c
> +++ b/fs/ntfs/super.c
> @@ -2772,13 +2772,12 @@ static int ntfs_fill_super(struct super_block *sb, void *opt, const int silent)
>  	ntfs_debug("Set device block size to %i bytes (block size bits %i).",
>  			blocksize, sb->s_blocksize_bits);
>  	/* Determine the size of the device in units of block_size bytes. */
> -	if (!i_size_read(sb->s_bdev->bd_inode)) {
> +	vol->nr_blocks = sb_bdev_nr_blocks(sb);
> +	if (!vol->nr_blocks) {

I might be worth mentioning in the commit log why this is safe (i.e. the
"side effect" of the assignment doesn't need to be delayed since it will
be thrown away in the failure path).

>  		if (!silent)
>  			ntfs_error(sb, "Unable to determine device size.");
>  		goto err_out_now;
>  	}
> -	vol->nr_blocks = i_size_read(sb->s_bdev->bd_inode) >>
> -			sb->s_blocksize_bits;
>  	/* Read the boot sector and return unlocked buffer head to it. */
>  	if (!(bh = read_ntfs_boot_sector(sb, silent))) {
>  		if (!silent)
> @@ -2816,8 +2815,7 @@ static int ntfs_fill_super(struct super_block *sb, void *opt, const int silent)
>  			goto err_out_now;
>  		}
>  		BUG_ON(blocksize != sb->s_blocksize);
> -		vol->nr_blocks = i_size_read(sb->s_bdev->bd_inode) >>
> -				sb->s_blocksize_bits;
> +		vol->nr_blocks = sb_bdev_nr_blocks(sb);
>  		ntfs_debug("Changed device block size to %i bytes (block size "
>  				"bits %i) to match volume sector size.",
>  				blocksize, sb->s_blocksize_bits);

Reviewed-by: Kees Cook <keescook@chromium.org>


> -- 
> 2.30.2
> 

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
