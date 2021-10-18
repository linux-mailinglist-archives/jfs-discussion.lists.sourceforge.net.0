Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 154D84325CD
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 19:58:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcWtz-0003G0-2K; Mon, 18 Oct 2021 17:58:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <axboe@kernel.dk>) id 1mcWp4-0002kt-2B
 for jfs-discussion@lists.sourceforge.net; Mon, 18 Oct 2021 17:53:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YH4oGe9dRfdZQ1d4CvnTMZ1r7HRf2QBAQWpHy9E3Wng=; b=fjoIFxHEmZuPGQ+s7UwdL7LGFF
 LazyIiFnedM/1BVmLpzbZfvM8yFbtQm/Y8x7Btz66ANjm79PI1106qUUEv9UA2rc/UoGHcIkBCYwm
 kFfACu6n7zAA+TAZRmG+KedOtMaXdgLe/XKyeKyu6ndxztGFGRufJt2ih/VLZ1TCsKk0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YH4oGe9dRfdZQ1d4CvnTMZ1r7HRf2QBAQWpHy9E3Wng=; b=kRcjj7p/yaV8lx5tu1h3APV5gP
 ehYifsYrT/PykuwiKpOGnH1p+DETpn2KQl7EBOYRLI17aOUKnHdccAfs/cBoZC15Rz4/RxX0YdZ3K
 G0P32cxwzc3OYQ9cECzImt0/QkD74mTKPo69VtbrtiolJL6uqRX7XAD7dbspen6rnU/8=;
Received: from mail-io1-f42.google.com ([209.85.166.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mcWp2-004ekM-CB
 for jfs-discussion@lists.sourceforge.net; Mon, 18 Oct 2021 17:53:18 +0000
Received: by mail-io1-f42.google.com with SMTP id z69so14152132iof.9
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 18 Oct 2021 10:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YH4oGe9dRfdZQ1d4CvnTMZ1r7HRf2QBAQWpHy9E3Wng=;
 b=UdB/aADcuFPlPcZ5zloyGSC8r8sjGP46bdFZgOczbw//2VtX+qD5PI/hTVyCm/RwVy
 FXAjDscH1TQ3fsg0fSzaSQe7AynSLix9FEl76DQK4y8MTjp/aJVzkmTFFG7c2xS8iXPi
 s+lRVm4eViQimOGv1xw+YUEHZjc66LhnruY2OKJU4kNG1W3nUI3yYhopF97varulsEhH
 lrAHcDhmWx+Ldz3ca7hK3R16UzzOUjcC//cwEEUu4EBzTbKGlwl++3WbIOKHwppSidbZ
 J2GwRHTpqmvpQIvUpXH1LIhuUZWDULALzfc74tUrBZWM1yZdKVE8ClvuVU+5LBey+DKb
 N3Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YH4oGe9dRfdZQ1d4CvnTMZ1r7HRf2QBAQWpHy9E3Wng=;
 b=miGKnOqzf4gZlsd6WFG2KoJZ4Pvmw3PPPqXsBbzvwnrVxTjQZBrhziX32OfG4I8pOy
 a5NwMFQADWsEE29UGshc9BpFDi5Q+ytWPDxgJ/frRg3TdJceoy77/sAwPECx8aY1bjN1
 BjpXrQnfVindtTuLSDwzim2IjwI50C2CwoLVcQOrZAFt4dd683yFl2vFSOPP4my3dxHE
 J+amCqGonVriScF9zbxPWhu2Ehx8HX/7qqRu9pKSE3JhdrKtFjSp/tmI65wjOc1izbvX
 7sy9pdOdaxhtdfhf7B8VO6wtGcgcaCp9HioAye1vvQ/nv2hV2OVA+g1xcQD0legbhDGw
 lYBQ==
X-Gm-Message-State: AOAM532HH/ZJcO2za4YjRwUsuzGmjqhXryvwzdXzS6Vffb8sSjawD5g2
 ofbf6fKhoLkHcGvtUPzYTfslWw==
X-Google-Smtp-Source: ABdhPJzaVpRAohIh75kPuEB6cvjZHptUXsyrO2OyQP99Xt2V/uaZI2XjjHTplRgkBKRlsFA7V0q64g==
X-Received: by 2002:a6b:8dd6:: with SMTP id
 p205mr14846469iod.192.1634579590519; 
 Mon, 18 Oct 2021 10:53:10 -0700 (PDT)
Received: from [192.168.1.30] ([207.135.234.126])
 by smtp.gmail.com with ESMTPSA id m15sm3303730ilh.73.2021.10.18.10.53.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Oct 2021 10:53:10 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>
References: <20211018101130.1838532-1-hch@lst.de>
 <4a8c3a39-9cd3-5b2f-6d0f-a16e689755e6@kernel.dk>
 <20211018171843.GA3338@lst.de>
 <2f5dcf79-8419-45ff-c27c-68d43242ccfe@kernel.dk>
 <20211018174901.GA3990@lst.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <e0784f3e-46c8-c90c-870b-60cc2ed7a2da@kernel.dk>
Date: Mon, 18 Oct 2021 11:53:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20211018174901.GA3990@lst.de>
Content-Language: en-US
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/18/21 11:49 AM, Christoph Hellwig wrote: > On Mon, Oct
 18, 2021 at 11:40:51AM -0600,
 Jens Axboe wrote: >> static inline loff_t bdev_nr_bytes(struct
 block_device *bdev) >> { >> - return i_size_re [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mcWp2-004ekM-CB
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

On 10/18/21 11:49 AM, Christoph Hellwig wrote:
> On Mon, Oct 18, 2021 at 11:40:51AM -0600, Jens Axboe wrote:
>>  static inline loff_t bdev_nr_bytes(struct block_device *bdev)
>>  {
>> -	return i_size_read(bdev->bd_inode);
>> +	return bdev->bd_nr_sectors;
> 
> This hunk needs to go into bdev_nr_sectors, and the bdev_nr_bytes
> probably wants to call bdev_nr_sectors and do the shifting.

Makes sense.

commit dd018a580d0037f65d7dd801cbf3e053f36283de
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
index 7b0326661a1e..a967b3fb3c71 100644
--- a/include/linux/genhd.h
+++ b/include/linux/genhd.h
@@ -236,14 +236,14 @@ static inline sector_t get_start_sect(struct block_device *bdev)
 	return bdev->bd_start_sect;
 }
 
-static inline loff_t bdev_nr_bytes(struct block_device *bdev)
+static inline sector_t bdev_nr_sectors(struct block_device *bdev)
 {
-	return i_size_read(bdev->bd_inode);
+	return bdev->bd_nr_sectors;
 }
 
-static inline sector_t bdev_nr_sectors(struct block_device *bdev)
+static inline loff_t bdev_nr_bytes(struct block_device *bdev)
 {
-	return bdev_nr_bytes(bdev) >> SECTOR_SHIFT;
+	return bdev_nr_setors(bdev) << SECTOR_SHIFT;
 }
 
 static inline sector_t get_capacity(struct gendisk *disk)

-- 
Jens Axboe



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
