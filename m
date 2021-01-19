Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D832FB6AD
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reS-0000Ms-P3; Tue, 19 Jan 2021 14:06:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jTN-0000AO-Sk
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0DERenJ1MxiLyem/AqYgHlbF2zue51u0pVbQJwlOIBw=; b=E4xzICALwX9B8AufHWvxx/Mqaq
 kX5E+Z0Lz/tqIGLFfc/+ujxMW4Qh8+jshVP84VOQRut+vIdETdZqRgxoC5+5flEOth9AXYJodXkxZ
 b1FONg1MIIb9/7+dS4xNXJ5clXyGGIUB8u/JQ5lSRhPm0Ar3jpMx2sqLiKB7AbKxGBa0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0DERenJ1MxiLyem/AqYgHlbF2zue51u0pVbQJwlOIBw=; b=FaXbie1MjyArcfLqXont8NwdVb
 vnvYUeoA+jscuZvB61n+2S5OCqh5M3nk2jddMG08COInsL5/lSw9gc0piXAb21GAqt5iT8TJ2YNKr
 M/lZCKQB3JD19P7WyXdrrQVIxNNVd/33bxvqRRQ8gJI5BOnlBS/TLfNY38EaNuTLnwyQ=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jTB-00DzM6-0a
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033740; x=1642569740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xDvxltQy2dTITc0BsqVzj/cnHCYvpegwiBh4lFEjP/k=;
 b=OlmQktX1RkXMpBjxn6t1NZY2xBlPqjA4bYqyVU/ypn0zHOyQEbByIqVD
 iOzAwUHiBkaagO29Pdms0eUJvMHkFs46FsheFBB4iLBTuB0hEVTqOgiFm
 tkjw6vkAqquTOSFcXzLDQZtvWZYvUlOyAC+UY63u0pjgcKNsYK87qUxFj
 98Lf1AS555GheFDF64Hb/+xUrSuXUKTWw+DAuiB5zT/2ITfO59NQ2JkSb
 vESlY8GJe7exXwiamfnB9F3gbqrlmOpVCsj+XvTRq/PX1ovafki3NNi5a
 R/2NV5WJAX+lzl2ns/lw9IMjkUurmaUEGtPAC9x8Zjkn4qrPjaM/n/wZz A==;
IronPort-SDR: 6UvDE670t+qVpA/33Cv79XpNUuEhKFrntQTQpnb8dvA8zojg/aSAPWBCrZ9PnxHfH++9vnsxvD
 jpX2hRtZHVwn+4zWGR3CutZXfSDiy6AXx8Y7h5a906V3PsXlQYgi9u+b80nv9F6au/Jh3LLhEb
 3k0w45He+3jlxgybaTj9YR61E3RjR5fuB/Kw43Gx0nbX6tLOunUi5qQfEREz/0GRYBx7NtgIfC
 d3HOHZOqbMiU8kIc9NhezMtZhFJuJFDH8m+5NWBbYDPHLwEPrI6Q6C6llhdCkF0yrsTkaN6YQX
 tjA=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157758460"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:06:42 +0800
IronPort-SDR: 60wGGyzCKZcE6yUCNzPHKRvx918888bM3zQ/3Eie1iCmS7xr3AUvbne4Bhw5gGFUVBxwky7fZy
 2nmdlrm/b/wjPZ3KZ4ql6bJWlyV77gGn3bGc4Lj8ueiS2fL/WbwTHhD6bfxcCGlsKqCQw1rMjG
 trDc1qoVh0rlb8cI/KgKfTUrA71kA7CfZRfSJTg93snsit7SiJ3SFky24in8W/nagsCvhh94nm
 WUBHG+FAAHGTHDUqcyPGo5hmZ0g08bZ/jBCkABjWFPzQFd6c75NhyrTsTgJ7cUBxs0dxOll2dc
 AfqeMRc5wc0OvxuEZ7kY/Q/K
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:51:19 -0800
IronPort-SDR: +NpnU1qF6QR8N8XBneIu3ZiZvasLVseQjYJJ1MMaKJ+OglnqkmtIQug/+7v1w/r2fkDf84edQB
 DjafWMcc4nOfiH+Mk03qupgTmYSJWzjHG319wMnHdznvAZeqQCPvdsGd5DhsBkszoippTGcVSA
 HK0sa0ldtVZMuvow8gFchGX7RsHVWH4qFN2Kntl3WSC7I2G5w7F3PvWz0KvKk1ACpfqrdG9xEj
 nchAe07v2IYGlvMXlxEBOdpBs6EbbN/Fyy3RtZL7kH3VABJ8RZFvQM1pZVPOuoiP0DweMhWYKY
 mtU=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:06:42 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:05:55 -0800
Message-Id: <20210119050631.57073-2-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.144 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jTB-00DzM6-0a
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 01/37] block: introduce
 bio_init_fields() helper
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, snitzer@redhat.com,
 gustavo@embeddedor.com, clm@fb.com, dm-devel@redhat.com,
 adilger.kernel@dilger.ca, hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com,
 sagi@grimberg.me, darrick.wong@oracle.com, osandov@fb.com,
 kent.overstreet@gmail.com, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 josef@toxicpanda.com, efremov@linux.com, colyli@suse.de, tj@kernel.org,
 viro@zeniv.linux.org.uk, dsterba@suse.com, bvanassche@acm.org,
 agruenba@redhat.com, axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 martin.petersen@oracle.com, song@kernel.org, philipp.reisner@linbit.com,
 jefflexu@linux.alibaba.com, rpeterso@redhat.com, lars.ellenberg@linbit.com,
 jth@kernel.org, asml.silence@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

There are several places in the file-system, block layer, device drivers
where struct bio members such as bdev, sector, private, end io callback,
io priority, write hints are initialized where we can use a helper
function.

This pach introduces a helper function which we use in the block lyaer
code. Subsequent patches use this function to reduce repeated code.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 block/blk-lib.c     | 13 +++++--------
 include/linux/bio.h | 13 +++++++++++++
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/block/blk-lib.c b/block/blk-lib.c
index 752f9c722062..5ee488c1bcc6 100644
--- a/block/blk-lib.c
+++ b/block/blk-lib.c
@@ -95,8 +95,7 @@ int __blkdev_issue_discard(struct block_device *bdev, sector_t sector,
 		WARN_ON_ONCE((req_sects << 9) > UINT_MAX);
 
 		bio = blk_next_bio(bio, 0, gfp_mask);
-		bio->bi_iter.bi_sector = sector;
-		bio_set_dev(bio, bdev);
+		bio_init_fields(bio, bdev, sector, NULL, NULL, 0, 0);
 		bio_set_op_attrs(bio, op, 0);
 
 		bio->bi_iter.bi_size = req_sects << 9;
@@ -189,8 +188,7 @@ static int __blkdev_issue_write_same(struct block_device *bdev, sector_t sector,
 
 	while (nr_sects) {
 		bio = blk_next_bio(bio, 1, gfp_mask);
-		bio->bi_iter.bi_sector = sector;
-		bio_set_dev(bio, bdev);
+		bio_init_fields(bio, bdev, sector, NULL, NULL, 0, 0);
 		bio->bi_vcnt = 1;
 		bio->bi_io_vec->bv_page = page;
 		bio->bi_io_vec->bv_offset = 0;
@@ -265,8 +263,7 @@ static int __blkdev_issue_write_zeroes(struct block_device *bdev,
 
 	while (nr_sects) {
 		bio = blk_next_bio(bio, 0, gfp_mask);
-		bio->bi_iter.bi_sector = sector;
-		bio_set_dev(bio, bdev);
+		bio_init_fields(bio, bdev, sector, NULL, NULL, 0, 0);
 		bio->bi_opf = REQ_OP_WRITE_ZEROES;
 		if (flags & BLKDEV_ZERO_NOUNMAP)
 			bio->bi_opf |= REQ_NOUNMAP;
@@ -317,8 +314,8 @@ static int __blkdev_issue_zero_pages(struct block_device *bdev,
 	while (nr_sects != 0) {
 		bio = blk_next_bio(bio, __blkdev_sectors_to_bio_pages(nr_sects),
 				   gfp_mask);
-		bio->bi_iter.bi_sector = sector;
-		bio_set_dev(bio, bdev);
+		bio_init_fields(bio, bdev, sector, NULL, NULL, 0, 0);
+
 		bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 		while (nr_sects != 0) {
diff --git a/include/linux/bio.h b/include/linux/bio.h
index 1edda614f7ce..fbeaa5e42a5d 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -820,4 +820,17 @@ static inline void bio_set_polled(struct bio *bio, struct kiocb *kiocb)
 		bio->bi_opf |= REQ_NOWAIT;
 }
 
+static inline void bio_init_fields(struct bio *bio, struct block_device *bdev,
+				   sector_t sect, void *priv,
+				   bio_end_io_t *end_io,
+				   unsigned short prio, unsigned short whint)
+{
+	bio_set_dev(bio, bdev);
+	bio->bi_iter.bi_sector = sect;
+	bio->bi_private = priv;
+	bio->bi_end_io = end_io;
+	bio->bi_ioprio = prio;
+	bio->bi_write_hint = whint;
+}
+
 #endif /* __LINUX_BIO_H */
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
