Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE36307601
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Oq-0000Oh-IZ; Thu, 28 Jan 2021 12:27:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51TI-0007gr-0r
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Osa3OeB+wO5I32f1up39QExl1/Rnv3M1puyTJjwYMBY=; b=TZ00cRoYYar2cRm/CKkWZsUy9r
 BQ+YwlmVOppD8Wi+KNoNFtpavsLatHexdgORkTAuU0cZE2pRyAFf6Kh4xwa2D/gKzJEcRm9It+nEP
 63mI+8BC1NNbDn/0ZrS1+OQc8yV++AXl3iwpbn6CEJiX+eJDN9dIZjfq4uzwQh57Vntg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Osa3OeB+wO5I32f1up39QExl1/Rnv3M1puyTJjwYMBY=; b=JStCm8CjHdSnPfqoWLEDVNZ9z/
 p0QsuqFuDijZKpq6WTnCuovRs4sm4CCpWkjiijP7ZsBuzAuFIAG5TaVhbyRcfdS+M6jVLX1n1c5Ch
 Io4pKJ4409zCGkGPqUWx75/C3xRI0QAO9T5TMSpTzmJcg0FOSmWGdhkq7tVZYPOuiBSE=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51T6-00GGyi-DH
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611817981; x=1643353981;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eWet3+GOqUNRw+dCyihtl3LTOeV3gTTJDd7Ea4w+clg=;
 b=F1eT8HTi6hcOil62IqKdQ4TqrDj5vhMOsTRIaDXTagicF4UB/cJHr7w5
 wdWqipu9RE/XKDor1aT408Ugs2CIFlcm5ooHNj3UCgrsuUj4CeXIsdV4i
 OpQOw4P4y6HoDrLBeZMK2PtceZ4k4FEn0N1aOG5rxmAkXCIdIQBVEhvVN
 tPrMWKD3QHgtKeUy4jZQ5XWxy1ZIMod9p+yVSwzq6Refbcaz+P5zq8bYt
 m9WdqVW+cwKLnaCE6O43T31FpZ/wab8WCTmFcdRHXz3+tfi9dNmp9RUOl
 WAWzoifhHHKqaocxjHTwI+lb+BRno6tYvG+W4Fdk3pS/zd+E7JBYuWfkt g==;
IronPort-SDR: xYITHIc5+sdWJ4T27aUQE/y/p244bRx3PKNQNxu4WmkdlKY9Y3uyDQeEBFF5AmJDes/K6opRg9
 wj/2kgSYA/0f6I01J4Hqnfg0VGqe104aqd00Ih65AR4eCbpzwq6ww5JBj9AuLd7NDiKNbZ7MwE
 OE/5lBHjjpsaDX1tWnq3UXNStgt7+kXi5U967eQaMDdlpS6u72tMMmCPj2cZvgDKsnXqb8oQ/a
 D3zKn83HZNaYxPIu+2ivWPrNfIMCdrO/h7UaVJphGmxRxTlYisRXHzczVnyogSQRyPCol+7qFm
 ezI=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="262548847"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:12:53 +0800
IronPort-SDR: bjFC+C8+48PNQscyGQRtbnsGEudUcG5t2ELJkSpQfA5sLP6gRbB/Fgo0qioHtiEuhd/XjTWjCR
 zQBk9iBHe+ZdK0juUmPVW5IqIxUqf7UDcVRMGY33gRW3s3UrkCkXcaFr89znPbVLWskRS5nno6
 nF5oOiph70/arlFr8MrOaMbanWLbJ18TpElOprkLFjRqEf6M882WBRKp2wOQG5X+DEZkVKqTpa
 xYlWsGwpJ10GEQ63MrFNtcd5ESmTQ2/gAP5qs5DYVr5jnlt+9wyt/OEH0giN17izRFGaN/62aE
 urmIuj1DwZUPtgKKSfucxW6S
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:54:05 -0800
IronPort-SDR: UO027L+w2LmrSv+r4jHc7V6MfhclxochZ4q/gKoOnHb/alTZT7F9/4KjZrNCZAKJPJHjEl8zjQ
 btfDHq8ntGB6arYkxikoGObA79gqCi3nJZAFBbpTjKtHzOWqNheZit1SHeKrnOkOlZqda10wHA
 lKzVa+peWlZiSXNoZnitf2s3YH424/Lf6Od0Q5TvGZLxtIxoLSsxIGie29rcLN/atLab1ULG9S
 UmjXPLLRWItiporouoLkwAzUh8fELyClcBeyT3S1PWdOuFAmZ6ShYxhRystXSbBeBsPW0LixEL
 geY=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:11:46 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:00 -0800
Message-Id: <20210128071133.60335-2-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51T6-00GGyi-DH
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:42 +0000
Subject: [Jfs-discussion] [RFC PATCH 01/34] block: move common code into
 blk_next_bio()
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
Cc: shaggy@kernel.org, sergey.senozhatsky.work@gmail.com, snitzer@redhat.com,
 tiwai@suse.de, djwong@kernel.org, gustavoars@kernel.org,
 joseph.qi@linux.alibaba.com, pavel@ucw.cz, alex.shi@linux.alibaba.com,
 hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com, sagi@grimberg.me,
 mark@fasheh.com, osandov@fb.com, ebiggers@kernel.org, ngupta@vflare.org,
 len.brown@intel.com, chaitanya.kulkarni@wdc.com, konrad.wilk@oracle.com,
 hare@suse.de, ming.lei@redhat.com, viro@zeniv.linux.org.uk,
 jefflexu@linux.alibaba.com, jaegeuk@kernel.org, konishi.ryusuke@gmail.com,
 bvanassche@acm.org, axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 akpm@linux-foundation.org, martin.petersen@oracle.com, rjw@rjwysocki.net,
 philipp.reisner@linbit.com, minchan@kernel.org, tj@kernel.org,
 lars.ellenberg@linbit.com, jth@kernel.org, asml.silence@gmail.com,
 jlbec@evilplan.org, roger.pau@citrix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

blk_next_bio() is the central function which allocates the bios for
discard, write-same, write-zeroes and zone-mgmt. The initialization of
various bio members is duplicated in disacrd, write-same, write-zeores.
In this preparation patch we add bdev, sector, op, and opf arguments to
the blk_next_bio() to reduce the duplication. 

In the next patch we introduce bio_new(), this prepration patch allows
us to call it inside blk_next_bio().

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 block/blk-lib.c   | 36 +++++++++++++++---------------------
 block/blk-zoned.c |  4 +---
 block/blk.h       |  5 +++--
 3 files changed, 19 insertions(+), 26 deletions(-)

diff --git a/block/blk-lib.c b/block/blk-lib.c
index 752f9c722062..fb486a0bdb58 100644
--- a/block/blk-lib.c
+++ b/block/blk-lib.c
@@ -10,7 +10,9 @@
 
 #include "blk.h"
 
-struct bio *blk_next_bio(struct bio *bio, unsigned int nr_pages, gfp_t gfp)
+struct bio *blk_next_bio(struct bio *bio, struct block_device *bdev,
+			sector_t sect, unsigned op, unsigned opf,
+			unsigned int nr_pages, gfp_t gfp)
 {
 	struct bio *new = bio_alloc(gfp, nr_pages);
 
@@ -19,6 +21,10 @@ struct bio *blk_next_bio(struct bio *bio, unsigned int nr_pages, gfp_t gfp)
 		submit_bio(bio);
 	}
 
+	new->bi_iter.bi_sector = sect;
+	bio_set_dev(new, bdev);
+	bio_set_op_attrs(new, op, opf);
+
 	return new;
 }
 
@@ -94,11 +100,7 @@ int __blkdev_issue_discard(struct block_device *bdev, sector_t sector,
 
 		WARN_ON_ONCE((req_sects << 9) > UINT_MAX);
 
-		bio = blk_next_bio(bio, 0, gfp_mask);
-		bio->bi_iter.bi_sector = sector;
-		bio_set_dev(bio, bdev);
-		bio_set_op_attrs(bio, op, 0);
-
+		bio = blk_next_bio(bio, bdev, sector, op, 0, 0, gfp_mask);
 		bio->bi_iter.bi_size = req_sects << 9;
 		sector += req_sects;
 		nr_sects -= req_sects;
@@ -168,6 +170,7 @@ static int __blkdev_issue_write_same(struct block_device *bdev, sector_t sector,
 {
 	struct request_queue *q = bdev_get_queue(bdev);
 	unsigned int max_write_same_sectors;
+	unsigned int op = REQ_OP_WRITE_SAME;
 	struct bio *bio = *biop;
 	sector_t bs_mask;
 
@@ -188,14 +191,11 @@ static int __blkdev_issue_write_same(struct block_device *bdev, sector_t sector,
 	max_write_same_sectors = bio_allowed_max_sectors(q);
 
 	while (nr_sects) {
-		bio = blk_next_bio(bio, 1, gfp_mask);
-		bio->bi_iter.bi_sector = sector;
-		bio_set_dev(bio, bdev);
+		bio = blk_next_bio(bio, bdev, sector, op, 0, 1, gfp_mask);
 		bio->bi_vcnt = 1;
 		bio->bi_io_vec->bv_page = page;
 		bio->bi_io_vec->bv_offset = 0;
 		bio->bi_io_vec->bv_len = bdev_logical_block_size(bdev);
-		bio_set_op_attrs(bio, REQ_OP_WRITE_SAME, 0);
 
 		if (nr_sects > max_write_same_sectors) {
 			bio->bi_iter.bi_size = max_write_same_sectors << 9;
@@ -249,7 +249,9 @@ static int __blkdev_issue_write_zeroes(struct block_device *bdev,
 {
 	struct bio *bio = *biop;
 	unsigned int max_write_zeroes_sectors;
+	unsigned int op = REQ_OP_WRITE_ZEROES;
 	struct request_queue *q = bdev_get_queue(bdev);
+	unsigned int opf = flags & BLKDEV_ZERO_NOUNMAP ? REQ_NOUNMAP : 0;
 
 	if (!q)
 		return -ENXIO;
@@ -264,13 +266,7 @@ static int __blkdev_issue_write_zeroes(struct block_device *bdev,
 		return -EOPNOTSUPP;
 
 	while (nr_sects) {
-		bio = blk_next_bio(bio, 0, gfp_mask);
-		bio->bi_iter.bi_sector = sector;
-		bio_set_dev(bio, bdev);
-		bio->bi_opf = REQ_OP_WRITE_ZEROES;
-		if (flags & BLKDEV_ZERO_NOUNMAP)
-			bio->bi_opf |= REQ_NOUNMAP;
-
+		bio = blk_next_bio(bio, bdev, sector, op, opf, 0, gfp_mask);
 		if (nr_sects > max_write_zeroes_sectors) {
 			bio->bi_iter.bi_size = max_write_zeroes_sectors << 9;
 			nr_sects -= max_write_zeroes_sectors;
@@ -303,6 +299,7 @@ static int __blkdev_issue_zero_pages(struct block_device *bdev,
 		sector_t sector, sector_t nr_sects, gfp_t gfp_mask,
 		struct bio **biop)
 {
+	unsigned int nr_pages = __blkdev_sectors_to_bio_pages(nr_sects);
 	struct request_queue *q = bdev_get_queue(bdev);
 	struct bio *bio = *biop;
 	int bi_size = 0;
@@ -315,11 +312,8 @@ static int __blkdev_issue_zero_pages(struct block_device *bdev,
 		return -EPERM;
 
 	while (nr_sects != 0) {
-		bio = blk_next_bio(bio, __blkdev_sectors_to_bio_pages(nr_sects),
+		bio = blk_next_bio(bio, bdev, sector, REQ_OP_WRITE, 0, nr_pages,
 				   gfp_mask);
-		bio->bi_iter.bi_sector = sector;
-		bio_set_dev(bio, bdev);
-		bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 		while (nr_sects != 0) {
 			sz = min((sector_t) PAGE_SIZE, nr_sects << 9);
diff --git a/block/blk-zoned.c b/block/blk-zoned.c
index 7a68b6e4300c..68e77628348d 100644
--- a/block/blk-zoned.c
+++ b/block/blk-zoned.c
@@ -231,8 +231,7 @@ int blkdev_zone_mgmt(struct block_device *bdev, enum req_opf op,
 		return -EINVAL;
 
 	while (sector < end_sector) {
-		bio = blk_next_bio(bio, 0, gfp_mask);
-		bio_set_dev(bio, bdev);
+		bio = blk_next_bio(bio, bdev, 0 , op, REQ_SYNC, 0, gfp_mask);
 
 		/*
 		 * Special case for the zone reset operation that reset all
@@ -244,7 +243,6 @@ int blkdev_zone_mgmt(struct block_device *bdev, enum req_opf op,
 			break;
 		}
 
-		bio->bi_opf = op | REQ_SYNC;
 		bio->bi_iter.bi_sector = sector;
 		sector += zone_sectors;
 
diff --git a/block/blk.h b/block/blk.h
index 0198335c5838..0a278bae5478 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -329,8 +329,9 @@ extern int blk_iolatency_init(struct request_queue *q);
 static inline int blk_iolatency_init(struct request_queue *q) { return 0; }
 #endif
 
-struct bio *blk_next_bio(struct bio *bio, unsigned int nr_pages, gfp_t gfp);
-
+struct bio *blk_next_bio(struct bio *bio, struct block_device *bdev,
+			sector_t sect, unsigned op, unsigned opf,
+			unsigned int nr_pages, gfp_t gfp);
 #ifdef CONFIG_BLK_DEV_ZONED
 void blk_queue_free_zone_bitmaps(struct request_queue *q);
 #else
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
