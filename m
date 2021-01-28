Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D78307603
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Or-0000PX-5V; Thu, 28 Jan 2021 12:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51UB-0002Uv-Pf
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mp+TqthrEQwik0r339pP0NpM3xwQG73uCJBt8TSlm1U=; b=EZmAzLSn7qOBsM7brJ2nCh7qw6
 r3ez3W/qkizuvB+kxRd55AhP42cDIcurf84vcftM6DJ+JMrL8FnsyW7aVreCm6Xq6OcgVpqmahMqi
 r/PotO04jbTHoW8USIOhe+IxdRkUGJlQ2ATJoqcxL03UId37pk55tLGhg5SNB7NifRIo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mp+TqthrEQwik0r339pP0NpM3xwQG73uCJBt8TSlm1U=; b=PxFq9cAhX3bLkNPBwQQg+tN6Lm
 zvhcNSdCi2KUF9PiQRGY2F0Xdocfrh9BHBUhAJvjQ9Hh/gK08mM0K7YSlogPIs3k6xwb6cXGPWwGQ
 gmpxwp73NdD9ceLMIaNDgH6X0lklRFbCyW5X3vfsnyk+Jho46QmnN6xta9MSMXXRshbQ=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51U2-00GGzf-LS
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611817970; x=1643353970;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A6gWT2+anXyYq2Hv6qVI+iojoFiSM9Vb51ZpjBpkhPc=;
 b=eWKswTbPDXIvD7O2YZdgUNScWvyQx0jrRC6Eb6RA/009j/GwdM8vNZH5
 3jdwdFOIMSCfEe3rrrjokz6uVEQa1uuiuUWiisWl9HRhfOxVnfGN6LhXd
 oSMKZIeU+rCNZmkPPe+QP2WsADRpHu3+/r/C3jRxfRR/BAj/xgD4Xb9Pq
 NJR4S/pPGTLPdJcVCxDXaHLAL1lkWChszvnrFyIWul5nd+BV+tSkcxlnV
 zxMzdXVSyruWgwJTEGEO004HVHiQWLrRHHRls8pYyJk9BPHjt26R/lmD3
 gldhJddfbLxUUl/qGy2MPIBd9ls0FLOC3q/jzSoximja2nJDmQqvuxOL7 A==;
IronPort-SDR: RDACdbLJrHVRc0XOxKvIspmTYoNKqHvnKNFk/D3KH3PqY3tZjuyIYqT2/MTdTpFHogTWumpzo3
 AGR8KW8ZE0vTz3uk3iwSqKN8D8GzU+YG6T+RSxHc+uIASl56JYFGnrGvHcFtkSe8ePiBYJOZ/a
 CrCUNOQdQ1L7YnLzOLfRZ7RNPtixzaQyl90HUEBhEh6QaGjgYXU+nXBCmEOT9c4PN6Lo1DrWMH
 gulkwoF9TddwglHPn1CdPEzW48FtdHbcF7d2roh9VtXS+IXDwe4huhynVrG0BVAWYsm9DDw/BV
 ixE=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="159693783"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:12:45 +0800
IronPort-SDR: gn/d+LXx2dQXjRcUPlUm1Ll+W+PbWOr7imMtS7wxPlpEyvye833Arzx2xTwjjURuqSlMGR2Mkt
 /MT3MXWka27clMNJcmWMY9utQOLaswzi68rRU2ojcQhpdxcPt2y2/iK4DMe/Tnlryz+DzeoaVI
 pseBlAzf3UOvV5koZLdGBSiBb7ybwc9mR3yCevOQ1Gp/ErVAQjikAcPAGW1isCRu0sbxPDNtsb
 /FLVW7EXS1wmSq6zrkNok7HsPcL1htR0rpnGGwlNrtAzhLh1LDV0VsEu+KY9zr4j510QNmTRPq
 C0ek2N/t9Q4au8GvvI6qI29u
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:55:03 -0800
IronPort-SDR: iX0HhBu+61xFa7EtRWB17G0RFoDdFxtABLHP5yHe733z1qMOeQszsqPYXIq64MFQkReY48/RWk
 FOClHc2dhNxuRM1QyLpF0KtQrhnCpVvcpPgq0B9OecXrJpCL8UYdCuDWFTL9LdxFS6qWHXh51B
 DNrP6xQEwjJPm/GL/W/Mv5XtvThzXYCRCRRzvICfBStun4/LN576oOtiFYHwzWMShhTX3BjqKf
 c8icNJold/1bdh3xf4xqkQcFwP0TJ4M2AqZVo41MRst8Lsv9bfR6qeue7iMnlhLF3vJJuSRBwu
 WXg=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:12:45 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:06 -0800
Message-Id: <20210128071133.60335-8-chaitanya.kulkarni@wdc.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.154.45 listed in list.dnswl.org]
X-Headers-End: 1l51U2-00GGzf-LS
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:43 +0000
Subject: [Jfs-discussion] [RFC PATCH 07/34] dm: use bio_new in dm-log-writes
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

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/md/dm-log-writes.c | 30 ++++++++++--------------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/md/dm-log-writes.c b/drivers/md/dm-log-writes.c
index e3d35c6c9f71..7ca9af407647 100644
--- a/drivers/md/dm-log-writes.c
+++ b/drivers/md/dm-log-writes.c
@@ -217,18 +217,15 @@ static int write_metadata(struct log_writes_c *lc, void *entry,
 	void *ptr;
 	size_t ret;
 
-	bio = bio_alloc(GFP_KERNEL, 1);
+	bio = bio_new(lc->logdev->bdev, sector, REQ_OP_WRITE, 0, 1, GFP_KERNEL);
 	if (!bio) {
 		DMERR("Couldn't alloc log bio");
 		goto error;
 	}
 	bio->bi_iter.bi_size = 0;
-	bio->bi_iter.bi_sector = sector;
-	bio_set_dev(bio, lc->logdev->bdev);
 	bio->bi_end_io = (sector == WRITE_LOG_SUPER_SECTOR) ?
 			  log_end_super : log_end_io;
 	bio->bi_private = lc;
-	bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 	page = alloc_page(GFP_KERNEL);
 	if (!page) {
@@ -264,7 +261,7 @@ static int write_inline_data(struct log_writes_c *lc, void *entry,
 			     size_t entrylen, void *data, size_t datalen,
 			     sector_t sector)
 {
-	int num_pages, bio_pages, pg_datalen, pg_sectorlen, i;
+	int num_pages, pg_datalen, pg_sectorlen, i;
 	struct page *page;
 	struct bio *bio;
 	size_t ret;
@@ -272,24 +269,21 @@ static int write_inline_data(struct log_writes_c *lc, void *entry,
 
 	while (datalen) {
 		num_pages = ALIGN(datalen, PAGE_SIZE) >> PAGE_SHIFT;
-		bio_pages = min(num_pages, BIO_MAX_PAGES);
 
 		atomic_inc(&lc->io_blocks);
 
-		bio = bio_alloc(GFP_KERNEL, bio_pages);
+		bio = bio_new(lc->logdev->bdev, sector, REQ_OP_WRITE, 0,
+			      num_pages, GFP_KERNEL);
 		if (!bio) {
 			DMERR("Couldn't alloc inline data bio");
 			goto error;
 		}
 
 		bio->bi_iter.bi_size = 0;
-		bio->bi_iter.bi_sector = sector;
-		bio_set_dev(bio, lc->logdev->bdev);
 		bio->bi_end_io = log_end_io;
 		bio->bi_private = lc;
-		bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
-		for (i = 0; i < bio_pages; i++) {
+		for (i = 0; i < bio->bi_max_vecs; i++) {
 			pg_datalen = min_t(int, datalen, PAGE_SIZE);
 			pg_sectorlen = ALIGN(pg_datalen, lc->sectorsize);
 
@@ -317,7 +311,7 @@ static int write_inline_data(struct log_writes_c *lc, void *entry,
 		}
 		submit_bio(bio);
 
-		sector += bio_pages * PAGE_SECTORS;
+		sector += bio->bi_max_vecs * PAGE_SECTORS;
 	}
 	return 0;
 error_bio:
@@ -364,17 +358,15 @@ static int log_one_block(struct log_writes_c *lc,
 		goto out;
 
 	atomic_inc(&lc->io_blocks);
-	bio = bio_alloc(GFP_KERNEL, min(block->vec_cnt, BIO_MAX_PAGES));
+	bio = bio_new(lc->logdev->bdev, sector, REQ_OP_WRITE, 0,
+			block->vec_cnt, GFP_KERNEL);
 	if (!bio) {
 		DMERR("Couldn't alloc log bio");
 		goto error;
 	}
 	bio->bi_iter.bi_size = 0;
-	bio->bi_iter.bi_sector = sector;
-	bio_set_dev(bio, lc->logdev->bdev);
 	bio->bi_end_io = log_end_io;
 	bio->bi_private = lc;
-	bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 	for (i = 0; i < block->vec_cnt; i++) {
 		/*
@@ -386,17 +378,15 @@ static int log_one_block(struct log_writes_c *lc,
 		if (ret != block->vecs[i].bv_len) {
 			atomic_inc(&lc->io_blocks);
 			submit_bio(bio);
-			bio = bio_alloc(GFP_KERNEL, min(block->vec_cnt - i, BIO_MAX_PAGES));
+			bio = bio_new(lc->logdev->bdev, sector, REQ_OP_WRITE,
+					0, block->vec_cnt - i, GFP_KERNEL);
 			if (!bio) {
 				DMERR("Couldn't alloc log bio");
 				goto error;
 			}
 			bio->bi_iter.bi_size = 0;
-			bio->bi_iter.bi_sector = sector;
-			bio_set_dev(bio, lc->logdev->bdev);
 			bio->bi_end_io = log_end_io;
 			bio->bi_private = lc;
-			bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 			ret = bio_add_page(bio, block->vecs[i].bv_page,
 					   block->vecs[i].bv_len, 0);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
