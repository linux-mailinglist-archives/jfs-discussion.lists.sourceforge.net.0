Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 724F94F63FC
	for <lists+jfs-discussion@lfdr.de>; Wed,  6 Apr 2022 17:51:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nc7w7-0002DD-HJ; Wed, 06 Apr 2022 15:51:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <prvs=0880ca2a2=damien.lemoal@opensource.wdc.com>)
 id 1nc1eJ-0003w5-RK
 for jfs-discussion@lists.sourceforge.net; Wed, 06 Apr 2022 09:08:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6e5T+sIABv1llA3nY2078mDuWVILL0MDZSdgf8H3bng=; b=d2kTXeM3dhvILBzm34gUjjzn08
 qCnJBo0WINeMduYqSzRhBD7hERIZartQPAp1ruYlaqBeu0XPZhNqppHMt+a+RdAZoGYpmAeorL8Ch
 UqDqjzQ3No2USVerHXxGAHyq6/pH+xmaYWrXSYrtvG5C7IW0b4zaEXnQVYl0QGhr66ss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6e5T+sIABv1llA3nY2078mDuWVILL0MDZSdgf8H3bng=; b=UUNy16cFz/IoGzDaCxPgB05dBj
 hWOv1UcjkCFjFLKTG4Pdz5vjOd4A+aa0qezT+ewrtrc/nJf10oAYXZHfq9FWAlLpqlq6AVT45m/Lx
 GbH+jH3K6ef/3A7EFx0X27dqkUJ00g6srh9oY91kZv0jIasQKQ32ell8g1uc131i+SSU=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nc1eG-0003II-Vj
 for jfs-discussion@lists.sourceforge.net; Wed, 06 Apr 2022 09:08:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1649236100; x=1680772100;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LFM3dJ4XtmmQmpjm/ADKwYliPf/iPacGMSt9/3x5IFU=;
 b=dCby1FTIY/8U+LfyoB9uFGcfralnmYjPa7Sdvsoz3KUNbO94yJS0Xw4B
 ZpcL0j7wYJrOCFy7/cH8bOiTLbozRL1mcyZN3rq0tY1ebBlLOZ71X7pdF
 jMY4pPwlxxpb6snRPioRIu5QJoyIggdxRucDZvAyycLqkgVLCbOgpiUnI
 yrr6Aly4Vnj3McVngW38D9e7i3EaXbCnNcyw+4MRovfHro/8B5g5qIFMV
 idjg3ACyCiWsWWDG02Rsmr4EnDUSHNzFQb6RxyhD6M5LfuXVEYKMMOfIJ
 XutsWwSsdecP4fjQtVbN5703yp/z2Xx4QmuR2+xyJthLL1O83swhq4v8U g==;
X-IronPort-AV: E=Sophos;i="5.90,239,1643644800"; d="scan'208";a="309182683"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 06 Apr 2022 16:52:42 +0800
IronPort-SDR: fgKckq8JsUgs7VjDt1Lp6uckypnMrwKHyUQaPsvHXveZpBwAAZkK3oiAdYU1E+Cdg+VNVocqSf
 VvrcwuRiNXsdE3XoFZgiVDefZPTgEL4jKJ1Gk2KNiPVg4YeKKuXlB0NJL53P4ytsu8PkdD4MR8
 uY1b8VJ6U1q8tMXKePmSsJtXFLoGXHFeBJLPK6WjX0GmGD6Xgnvw1/kpFqlfWup/fOAWzvPsWN
 V9pa8kxDvZMuR9laq50ahsc6gSAgxb3+IkN6AG7mikqnzUNWeRCLZ4ilWxrjEPz/mDKBV4tLIK
 6Wx9LPFyjb+lqbV+dQDKPYO0
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 06 Apr 2022 01:24:14 -0700
IronPort-SDR: /n8M+6wv4FNJqzyvjqqCU+krQyHbqJPfJpYwaSKoaFpKccbQwTywQdoBohe6WDRCzMBXao1L+t
 kHL4fjadV8bDTcNQ0r66+rm90B0fkQh7JkjRGXtGqfyGW7mO+jDV7iX4vTJAqdcxpWeQbqiVyr
 kxCKVB+hYfN6iHnt3WZL0uGjmzL1/UUvbzvg6vPR6O5z4YFYLSBb64YYP4cjQbKfS/WyZCtHup
 +ccherLYOLwdtlg+dC9prI3t8m1lPA9pQ99JqL/J52D0F1QUv/+qcSpnjNfQamsO31uQmEQNXN
 yBM=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 06 Apr 2022 01:52:43 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4KYJDm6Hb4z1SVp3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed,  6 Apr 2022 01:52:40 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1649235159; x=1651827160; bh=LFM3dJ4XtmmQmpjm/ADKwYliPf/iPacGMSt
 9/3x5IFU=; b=ikqDdTG9ODAQQF/gXGSxdqGX933yPoUen760dZAYRlO1pjUicgY
 QNTmeVuFXL3991m5ocJlTZlAM/kL9Y+0/7Vqh369/+y1rd8dHIZCsirzcij49SEY
 lzAIBh2wf5Sf3ey+zlsq0uODq7OVssECPvEDwFf8vv6EXSj1/hUZOIgCb1YrW8o1
 2M9SVtb0B4XKp93g7XBI0ujENrB5hIjr3CO5qzrkEqkMATglY4o3RYlHRiXsW1Sz
 sYLuDt6RTZ47ylFhS4lgN/BBnpVQ7fdiQZnyYCU5qRit9Am3tawi9wutpwWz+FNF
 LQkskhLFb7giNbGTHrp0y0pi3f33Krg86Fg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id btR2d_qMepQl for <jfs-discussion@lists.sourceforge.net>;
 Wed,  6 Apr 2022 01:52:39 -0700 (PDT)
Received: from [10.149.53.254] (washi.fujisawa.hgst.com [10.149.53.254])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4KYJDg4WyPz1Rvlx;
 Wed,  6 Apr 2022 01:52:35 -0700 (PDT)
Message-ID: <ea3d14cb-00ea-8d7b-4615-9347fdd7aa27@opensource.wdc.com>
Date: Wed, 6 Apr 2022 17:52:34 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
References: <20220406060516.409838-1-hch@lst.de>
 <20220406060516.409838-15-hch@lst.de>
Organization: Western Digital Research
In-Reply-To: <20220406060516.409838-15-hch@lst.de>
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/6/22 15:05, Christoph Hellwig wrote: > Add a helper to
 check the max supported sectors for zone append based on > the block_device
 instead of having to poke into the block layer internal > reques [...] 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nc1eG-0003II-Vj
X-Mailman-Approved-At: Wed, 06 Apr 2022 15:51:09 +0000
Subject: Re: [Jfs-discussion] [PATCH 14/27] block: add a
 bdev_max_zone_append_sectors helper
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
From: Damien Le Moal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-nvme@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, cluster-devel@redhat.com,
 xen-devel@lists.xenproject.org, linux-ext4@vger.kernel.org,
 linux-um@lists.infradead.org, nbd@other.debian.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 4/6/22 15:05, Christoph Hellwig wrote:
> Add a helper to check the max supported sectors for zone append based on
> the block_device instead of having to poke into the block layer internal
> request_queue.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/nvme/target/zns.c | 3 +--
>   fs/zonefs/super.c         | 3 +--
>   include/linux/blkdev.h    | 6 ++++++
>   3 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/nvme/target/zns.c b/drivers/nvme/target/zns.c
> index e34718b095504..82b61acf7a72b 100644
> --- a/drivers/nvme/target/zns.c
> +++ b/drivers/nvme/target/zns.c
> @@ -34,8 +34,7 @@ static int validate_conv_zones_cb(struct blk_zone *z,
>   
>   bool nvmet_bdev_zns_enable(struct nvmet_ns *ns)
>   {
> -	struct request_queue *q = ns->bdev->bd_disk->queue;
> -	u8 zasl = nvmet_zasl(queue_max_zone_append_sectors(q));
> +	u8 zasl = nvmet_zasl(bdev_max_zone_append_sectors(ns->bdev));
>   	struct gendisk *bd_disk = ns->bdev->bd_disk;
>   	int ret;
>   
> diff --git a/fs/zonefs/super.c b/fs/zonefs/super.c
> index 3614c7834007d..7a63807b736c4 100644
> --- a/fs/zonefs/super.c
> +++ b/fs/zonefs/super.c
> @@ -678,13 +678,12 @@ static ssize_t zonefs_file_dio_append(struct kiocb *iocb, struct iov_iter *from)
>   	struct inode *inode = file_inode(iocb->ki_filp);
>   	struct zonefs_inode_info *zi = ZONEFS_I(inode);
>   	struct block_device *bdev = inode->i_sb->s_bdev;
> -	unsigned int max;
> +	unsigned int max = bdev_max_zone_append_sectors(bdev);
>   	struct bio *bio;
>   	ssize_t size;
>   	int nr_pages;
>   	ssize_t ret;
>   
> -	max = queue_max_zone_append_sectors(bdev_get_queue(bdev));
>   	max = ALIGN_DOWN(max << SECTOR_SHIFT, inode->i_sb->s_blocksize);
>   	iov_iter_truncate(from, max);
>   
> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> index a433798c3343e..f8c50b77543eb 100644
> --- a/include/linux/blkdev.h
> +++ b/include/linux/blkdev.h
> @@ -1188,6 +1188,12 @@ static inline unsigned int queue_max_zone_append_sectors(const struct request_qu
>   	return min(l->max_zone_append_sectors, l->max_sectors);
>   }
>   
> +static inline unsigned int
> +bdev_max_zone_append_sectors(struct block_device *bdev)
> +{
> +	return queue_max_zone_append_sectors(bdev_get_queue(bdev));
> +}
> +
>   static inline unsigned queue_logical_block_size(const struct request_queue *q)
>   {
>   	int retval = 512;

Looks good.

Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
