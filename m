Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC211433703
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Oct 2021 15:26:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcp8X-0006L7-BW; Tue, 19 Oct 2021 13:26:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <kari.argillander@gmail.com>)
 id 1mcdYN-0002mZ-CI; Tue, 19 Oct 2021 01:04:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HZB3VynRj4BSJ+DoffwFLiPJvzPYXkayF1wJVNoXqZo=; b=JCkYNyT5y96HEo005SLOzpHTCB
 FkCl+FxF0OBEpQkLSCpJ9qu7T9frSQdyPoN5ZdbAzxK3NN4c3X5ybR7At1TQOoU7rQVH9u8wjfBVj
 kezzaGtJ8gLI8WfrUZkrzBOrgEpAHDwISg3lWmpzsA91Yx1v7Vp8onNQ7O8LEbrGGYTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HZB3VynRj4BSJ+DoffwFLiPJvzPYXkayF1wJVNoXqZo=; b=OzT9IQQONuCHu3RemTGSSLikjm
 pSQ4KbR71GMjJacUuaztQRmBRyJWpjxS81zOSzdrOG4wLYoEFsAlnZnwTKcsEciiAMQxBOQElA1nU
 AJyVxbd/9sMl9znPmLPdNtFieN3z7qw1PSdEVIj2Ey3ynxt8GkRJCAlJV0p2dV+jHeTM=;
Received: from mail-lf1-f50.google.com ([209.85.167.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mcdYI-0000Yr-0E; Tue, 19 Oct 2021 01:04:31 +0000
Received: by mail-lf1-f50.google.com with SMTP id x192so3567728lff.12;
 Mon, 18 Oct 2021 18:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HZB3VynRj4BSJ+DoffwFLiPJvzPYXkayF1wJVNoXqZo=;
 b=qa7Rg2/+uz+UIDCny84Tw5bep3SlaUI84n/FAaUaxIzAubmeoa1ydJFT64PdI4Dc2i
 AgPnjhE+kBzSH4MdsJeGrFG4f0xqH2HBhd6pbyQr8O8l98NNiVXw+7LLIlFbcV+xxCqf
 RA02zj7IDRlPmKt2XOaxe9T0CtUPo6hRSub6+1M9syuYXVu4HWpZ0mdRM4b+vfFK8OI9
 lTRtKN80UFv+SDfLWbeeA+TcDubhn33n9WeCF3bZ9pFOuoi5rOJVIPb1Sykzu+pmiRnV
 qHPYjU4GPUjtfi/yhGpy4ABO9h9df+GLOdeLNWFNTfyVWJ/R/s+xiv91lAtBOCzSytMJ
 pKbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HZB3VynRj4BSJ+DoffwFLiPJvzPYXkayF1wJVNoXqZo=;
 b=iiqhpdWXB0Z6r0oiKSSvVlDKArJqTSY9/RZ5N8DRPBENcgx7Rp8toVlxLaRizF720a
 M1ciAqnpJZiDl44N8YbB0TGRv0DKTQR3nTEIe4luKlbotfnLm55QICHftXcTt/Lk3fvP
 +6Jmy1J74VW0Nw1DabN2f2C3VYTlwG08SMVaa81X3eDCCQ8yRPyBtLk4h3zBj7zec2JM
 njUow5BK5ZLtXxXff5cY4J0QtTshzfGkmHX8S/D5oa3VXISLzmyWiIRBpTAumXL/mJPH
 Tztmoar1HcJhPHct+2m1Quho11znxfYxRwyY53jPdBdZQzcKAdrbZMkWgeXwtiYCibXJ
 wUDQ==
X-Gm-Message-State: AOAM531XuDbd6nnw5d02aP5M6BU9eYsqqW18wlyMp+NX+XJ3VhsNb4JW
 lMUqaIpgv4m6+BMy95ZS4+g=
X-Google-Smtp-Source: ABdhPJzDOI1VPK7ec+9Wvn2TGhELLqlWyRvZ5Uhqz00hPtHEbJZTBFS39lW+J2SjR0uuodKRx0F6pg==
X-Received: by 2002:a05:6512:1284:: with SMTP id
 u4mr3097377lfs.614.1634605459500; 
 Mon, 18 Oct 2021 18:04:19 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id f10sm1533239lfs.56.2021.10.18.18.04.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 18:04:18 -0700 (PDT)
Date: Tue, 19 Oct 2021 04:04:16 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <20211019010416.vgecxu6wnvwi7fii@kari-VirtualBox>
References: <20211018101130.1838532-1-hch@lst.de>
 <4a8c3a39-9cd3-5b2f-6d0f-a16e689755e6@kernel.dk>
 <20211018171843.GA3338@lst.de>
 <2f5dcf79-8419-45ff-c27c-68d43242ccfe@kernel.dk>
 <20211018174901.GA3990@lst.de>
 <e0784f3e-46c8-c90c-870b-60cc2ed7a2da@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0784f3e-46c8-c90c-870b-60cc2ed7a2da@kernel.dk>
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 18, 2021 at 11:53:08AM -0600, Jens Axboe wrote:
 snip.. > diff --git a/include/linux/genhd.h b/include/linux/genhd.h > index
 7b0326661a1e..a967b3fb3c71 100644 > --- a/include/linux/genhd.h > +++
 b/include/linux/genhd.h
 > @@ -236,14 +236,14 @@ static inline [...] 
 Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.50 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?209.85.167.50>]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kari.argillander[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.50 listed in wl.mailspike.net]
X-Headers-End: 1mcdYI-0000Yr-0E
X-Mailman-Approved-At: Tue, 19 Oct 2021 13:26:35 +0000
Subject: Re: [Jfs-discussion] don't use ->bd_inode to access the block
 device size v3
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
 reiserfs-devel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Oct 18, 2021 at 11:53:08AM -0600, Jens Axboe wrote:

snip..

> diff --git a/include/linux/genhd.h b/include/linux/genhd.h
> index 7b0326661a1e..a967b3fb3c71 100644
> --- a/include/linux/genhd.h
> +++ b/include/linux/genhd.h
> @@ -236,14 +236,14 @@ static inline sector_t get_start_sect(struct block_device *bdev)
>  	return bdev->bd_start_sect;
>  }
>  
> -static inline loff_t bdev_nr_bytes(struct block_device *bdev)
> +static inline sector_t bdev_nr_sectors(struct block_device *bdev)
>  {
> -	return i_size_read(bdev->bd_inode);
> +	return bdev->bd_nr_sectors;
>  }
>  
> -static inline sector_t bdev_nr_sectors(struct block_device *bdev)
> +static inline loff_t bdev_nr_bytes(struct block_device *bdev)
>  {
> -	return bdev_nr_bytes(bdev) >> SECTOR_SHIFT;
> +	return bdev_nr_setors(bdev) << SECTOR_SHIFT;

setors -> sectors

>  }
>  
>  static inline sector_t get_capacity(struct gendisk *disk)
> 
> -- 
> Jens Axboe
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
