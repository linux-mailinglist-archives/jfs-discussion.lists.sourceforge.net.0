Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E1B4325CC
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 19:58:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcWty-0003FU-L8; Mon, 18 Oct 2021 17:58:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <axboe@kernel.dk>) id 1mcWdD-0004S7-7O
 for jfs-discussion@lists.sourceforge.net; Mon, 18 Oct 2021 17:41:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8eHyIh60ZUzo3JWH2PHiHe4cTmG/UJai+TUUoRo1bPo=; b=l/waIEGsToBPry5qdNJtLUaIot
 U/+EgZKDnncgQDuJC6C5W7LiYCv1yqc59H4Q1m35Se+LdqsmUobLVVjxgDeQb81xhCoWQwca007mX
 +tQ7Db8q7/ViWjXdOTuzOqdKsVYGB2WJu8nfmClWkS0t5sWB9ABGftf17XnqBluvyr+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8eHyIh60ZUzo3JWH2PHiHe4cTmG/UJai+TUUoRo1bPo=; b=F2kFnZ76ug9f/p5jl7gLeOwNVP
 hvEdhLpwi6+N+4l1kF04wTMD0FYOpzPimQ+Bn2xXebScyTKrj2kT7myAFyQbFC0grtkdWXgoRlQvq
 lJneidOn3v+I0P1Q36+sBXZ6OTNORIKx5SdGxJ4T1WPQpdxEgo4dA2hOYoQo6xFA4i7I=;
Received: from mail-il1-f182.google.com ([209.85.166.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mcWdA-0006NE-4V
 for jfs-discussion@lists.sourceforge.net; Mon, 18 Oct 2021 17:41:03 +0000
Received: by mail-il1-f182.google.com with SMTP id s3so15837878ild.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 18 Oct 2021 10:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8eHyIh60ZUzo3JWH2PHiHe4cTmG/UJai+TUUoRo1bPo=;
 b=FxDre2hjyoHZ64BANF3MmORptiQUy9H6AZXx6LsuyaBb3BcaZC0U/QrU21BtTujGBo
 8pKXev+INoMpwpLRfH86fYXpprj4xYaVKSen9V7xFxUy/Adi3YagOWpZv1TCL1fYRKF4
 KJjdISFmhkQQ0L4EmrQXCfcR5w3Zzj3aqn6DzOl13eefz8vxGa1vYg1bewxzJ9VB28da
 3UiILqBGRheOtvSI5gJ9xtk7xHUS/Gucotz2TgqyyRfnlasGRztSAeszEgY1u2mV13ER
 EMsST0UXfQiH71wz4IGsonA4VDgwXa5gnJGRFiHsgHIEksPy/aZTeVCzAUrIhmXl9xQs
 p/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8eHyIh60ZUzo3JWH2PHiHe4cTmG/UJai+TUUoRo1bPo=;
 b=wFaJTDJ4rCsSl+0G9Mov/Tce9lPhSbyRFpG6c3GB74v4aybRfHUOk5gkVs0GhxUjPJ
 vFE0eQo4nxCSRO9MbM5urw4Cdb1ab+MIGwN6S/tJHuyFVhEZHsq7Vu/ZuxkHx25PWPoR
 9ODgOWnE3fh5m/Z7ox39EYV7kro2/zbThvMTKB5+yejd632nZHubGl1LtDU562OlJV6K
 EiwTI9urUgRcjN/qX2oZSXqrcencDEA/+/pGli0p8A/qTi9yWZQi4KPLMvgxMNX2ZQ3j
 N6jgF0AAtXoB+wRROrCeyVrHal3+95eqfLtDjkJNw7vQNzK+HaesTHsrT6kLwcU01cQO
 MmNA==
X-Gm-Message-State: AOAM532nRP05p3nWrzUNa4ppl2efa6O/ZsSGXJPxZoqoKD64dpJCmUR0
 ry/TT5CmJO0DberUfuT2JGHKkg==
X-Google-Smtp-Source: ABdhPJwRrr1OSerCMeedIq2RIL4WChs1nkzMA+HxEg+LQORSp5DecggK+ro0hO8CL+NowqI2hdNiZw==
X-Received: by 2002:a05:6e02:14d3:: with SMTP id
 o19mr15105521ilk.257.1634578853304; 
 Mon, 18 Oct 2021 10:40:53 -0700 (PDT)
Received: from [192.168.1.30] ([207.135.234.126])
 by smtp.gmail.com with ESMTPSA id s6sm3131684ilv.18.2021.10.18.10.40.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Oct 2021 10:40:52 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>
References: <20211018101130.1838532-1-hch@lst.de>
 <4a8c3a39-9cd3-5b2f-6d0f-a16e689755e6@kernel.dk>
 <20211018171843.GA3338@lst.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <2f5dcf79-8419-45ff-c27c-68d43242ccfe@kernel.dk>
Date: Mon, 18 Oct 2021 11:40:51 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20211018171843.GA3338@lst.de>
Content-Language: en-US
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/18/21 11:18 AM, Christoph Hellwig wrote: > On Mon, Oct
 18, 2021 at 11:16:08AM -0600, Jens Axboe wrote: >> This looks good to me.
 Followup question, as it's related - I've got a >> hacky patch th [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mcWdA-0006NE-4V
X-Mailman-Approved-At: Mon, 18 Oct 2021 17:58:19 +0000
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
 reiserfs-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/18/21 11:18 AM, Christoph Hellwig wrote:
> On Mon, Oct 18, 2021 at 11:16:08AM -0600, Jens Axboe wrote:
>> This looks good to me. Followup question, as it's related - I've got a
>> hacky patch that caches the inode size in the bdev:
>>
>> https://git.kernel.dk/cgit/linux-block/commit/?h=perf-wip&id=c754951eb7193258c35a574bd1ccccb7c4946ee4
>>
>> so we don't have to dip into the inode itself for the fast path. While
>> it's obviously not something being proposed for inclusion right now, is
>> there a world in which we can make something like that work?
> 
> There's just two places that update i_size for block devices:
> set_capacity and bdev_set_nr_sectors.  So you just need to update
> bd_nr_sectors there and you're done.

This on top of your patches should do the trick, then.


commit eebb7c5048163985fb21d6cb740ebac78cb46051
Author: Jens Axboe <axboe@kernel.dk>
Date:   Mon Oct 18 11:39:45 2021 -0600

    block: cache inode size in bdev
    
    Reading the inode size brings in a new cacheline for IO submit, and
    it's in the hot path being checked for every single IO. When doing
    millions of IOs per core per second, this is noticeable overhead.
    
    Cache the nr_sectors in the bdev itself.
    
    Signed-off-by: Jens Axboe <axboe@kernel.dk>

diff --git a/block/genhd.c b/block/genhd.c
index 759bc06810f8..53495e3391e3 100644
--- a/block/genhd.c
+++ b/block/genhd.c
@@ -58,6 +58,7 @@ void set_capacity(struct gendisk *disk, sector_t sectors)
 
 	spin_lock(&bdev->bd_size_lock);
 	i_size_write(bdev->bd_inode, (loff_t)sectors << SECTOR_SHIFT);
+	bdev->bd_nr_sectors = sectors;
 	spin_unlock(&bdev->bd_size_lock);
 }
 EXPORT_SYMBOL(set_capacity);
diff --git a/block/partitions/core.c b/block/partitions/core.c
index 9dbddc355b40..66ef9bc6d6a1 100644
--- a/block/partitions/core.c
+++ b/block/partitions/core.c
@@ -91,6 +91,7 @@ static void bdev_set_nr_sectors(struct block_device *bdev, sector_t sectors)
 {
 	spin_lock(&bdev->bd_size_lock);
 	i_size_write(bdev->bd_inode, (loff_t)sectors << SECTOR_SHIFT);
+	bdev->bd_nr_sectors = sectors;
 	spin_unlock(&bdev->bd_size_lock);
 }
 
diff --git a/include/linux/blk_types.h b/include/linux/blk_types.h
index 472e55e0e94f..fe065c394fff 100644
--- a/include/linux/blk_types.h
+++ b/include/linux/blk_types.h
@@ -39,6 +39,7 @@ struct bio_crypt_ctx;
 
 struct block_device {
 	sector_t		bd_start_sect;
+	sector_t		bd_nr_sectors;
 	struct disk_stats __percpu *bd_stats;
 	unsigned long		bd_stamp;
 	bool			bd_read_only;	/* read-only policy */
diff --git a/include/linux/genhd.h b/include/linux/genhd.h
index 7b0326661a1e..001f617f82da 100644
--- a/include/linux/genhd.h
+++ b/include/linux/genhd.h
@@ -238,7 +238,7 @@ static inline sector_t get_start_sect(struct block_device *bdev)
 
 static inline loff_t bdev_nr_bytes(struct block_device *bdev)
 {
-	return i_size_read(bdev->bd_inode);
+	return bdev->bd_nr_sectors;
 }
 
 static inline sector_t bdev_nr_sectors(struct block_device *bdev)

-- 
Jens Axboe



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
