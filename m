Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5562FB69B
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000Pt-Ei; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jVv-0000UT-HQ
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VvJBj/iS+rbktlVd4ZGAB5AIRpyHlwLE8vX6GWJOSMo=; b=iCY/ARxP72wqQZIybmmEd4rOnQ
 K3R5Wy18u/JsNLsUQ2Yi0sMTsfIfdcqxBCkTlpDXYErQGxXPm9BKI4lSsG4cKNeQOhJKmdQNUxgwr
 pEbSaUdOK6jdQuWjBFXM1AlpMJyE44naLNEgUJKesxRTmYb4/Wrmf9pIeo5hlhYNBzGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VvJBj/iS+rbktlVd4ZGAB5AIRpyHlwLE8vX6GWJOSMo=; b=OeLbASW6nXz1KYLKIlGqKO/V2N
 S8sezQA6FUAuWZ9T2akktc6Z1hIpyhWdSgQDiJGAkNFkEDbCPiYOJL3giT+XrGGRcaMjrqrBWotZc
 q+6CJJnfmnoyPbrir4NS8QbfsdUB2v7R70W4Sp4TnhKaqtjaiIJGXsgK96VCwoYoiuPA=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jVt-006vtY-P1
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033909; x=1642569909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pIz0KlDrHBvNvxslhciWsU5/CC3PXDNM4q2bLrt7qLQ=;
 b=Oq0Q/bFzT4MLp6ExSQuuuTqIPnOyPjlRp83sm3gEFILGnKUTprJd8KEl
 uMd1ZYdjmar0ckdzIlqovO6B954TeM0tnPt9EZ8V8jSut72ZSB15b5Lxt
 c9UUCWoWjKmTNJeWVinz0zSFvioQOjeKwwInT8tNPl2VwErZEGIbenfQO
 fAKkhvPQ5dy9r65vQQauSYHtsHhAqyRoX6yP7f/Ip+uPddqVVKhno0OEU
 KCKyZhMtqwIYDsVZnIer0VN8X9A2uxRutZikW3ulyPKEoIS1ZlpLpUir2
 09L4r2In4PTkrWG7hryDKavnJbg/Pk022lqzOmbF/7pp//qmygvIolL/u g==;
IronPort-SDR: EsZkTjKQ5uQXK8jHpwXDlyl6M7Z5KZuTWkRmpME7UrsoFbxMy9YYg1GiPf9ieaDgDpXi9Mr14e
 lTEuDfv84Oj9stZEcCLqtO5OYoaQgzvmDniBcFlBMkc4jMTNInO+mQ83w9RsAsn7duAi2+z6S1
 aioLWiRq4o5FND9B0rX9KEci8BhZkNmgdt1zlQjRaABqRpnB9OvycBb910x4RskeqGTEuZfvgU
 aOqsoADEErq4R6StpGPg8rwCaicow/DxkGfjQql/Gm9/yA92ZPnkcnX/+1uiWHDkxcJAaGpZXv
 EFM=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157758756"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:09:43 +0800
IronPort-SDR: 28NYXCyLTUMr6rBGUPbU1Gr9WQS4EiKbOPvPX+3Y/F9xOyLa8KbbzY9ajC32aXEowTSSTSnvOT
 tUesvzvS0Uli7fOu7RM+lSD9FO1i5Cg6VzjrT3wVxe0AqVJ5ejAKPwFYk2uny5+xkaccGDEemk
 fGv0NsYV1BDSE1Qwjj6Gekb/x16VPFzDwC5jrQDWLaIBkYRI0cF2HecP4w6XC0IUpPvEhpugo1
 7HBvpRV4HA1bgKcYd59Vwu0fuBcUSkHYSBFD4r8QVV7HrF9THFsBhDsYvIW/kxIIaBzZADje8D
 kH7iggZr/77YXju3cvlo2qlx
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:52:18 -0800
IronPort-SDR: LsIx6xfp3MuCvVUBKYFUM/JkQXB8Xd6FGJiWWFhsO5FF8FnRTeuKG7U5dD7Rejep3b07GmAUmb
 ESoAg9lczoALSnARXtAcLYU7nWTaUgdnl4QXBjjX2qbcRpBVzJgVyC4kwkSnttKMzqx1NypHun
 wXbjpdfkPHnx0tGuE/6+V9ou48OKFTaS8Hgad4KU+rvcDNespMF4OxFR14ESWKX7jCsiRaANAt
 Bb3pRfhPY9tW+eTbrNJrKLsm+FoQOnSPpDH4sOQAdptthLApRwVVLlrj3oL4F2Q0S3i/yr38QG
 rvI=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:09:43 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:20 -0800
Message-Id: <20210119050631.57073-27-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jVt-006vtY-P1
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 26/37] dm log writes: use
 bio_init_fields
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

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/md/dm-log-writes.c | 21 ++++++---------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/md/dm-log-writes.c b/drivers/md/dm-log-writes.c
index e3d35c6c9f71..35c2e0418561 100644
--- a/drivers/md/dm-log-writes.c
+++ b/drivers/md/dm-log-writes.c
@@ -223,11 +223,9 @@ static int write_metadata(struct log_writes_c *lc, void *entry,
 		goto error;
 	}
 	bio->bi_iter.bi_size = 0;
-	bio->bi_iter.bi_sector = sector;
-	bio_set_dev(bio, lc->logdev->bdev);
 	bio->bi_end_io = (sector == WRITE_LOG_SUPER_SECTOR) ?
 			  log_end_super : log_end_io;
-	bio->bi_private = lc;
+	bio_init_fields(bio, lc->logdev->bdev, sector, lc, NULL, 0, 0);
 	bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 	page = alloc_page(GFP_KERNEL);
@@ -283,10 +281,8 @@ static int write_inline_data(struct log_writes_c *lc, void *entry,
 		}
 
 		bio->bi_iter.bi_size = 0;
-		bio->bi_iter.bi_sector = sector;
-		bio_set_dev(bio, lc->logdev->bdev);
-		bio->bi_end_io = log_end_io;
-		bio->bi_private = lc;
+		bio_init_fields(bio, lc->logdev->bdev, sector, lc, log_end_io,
+				0, 0);
 		bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 		for (i = 0; i < bio_pages; i++) {
@@ -370,10 +366,8 @@ static int log_one_block(struct log_writes_c *lc,
 		goto error;
 	}
 	bio->bi_iter.bi_size = 0;
-	bio->bi_iter.bi_sector = sector;
-	bio_set_dev(bio, lc->logdev->bdev);
-	bio->bi_end_io = log_end_io;
-	bio->bi_private = lc;
+	bio_init_fields(bio, lc->logdev->bdev, sector, lc, log_end_io,
+			0, 0);
 	bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 	for (i = 0; i < block->vec_cnt; i++) {
@@ -392,10 +386,7 @@ static int log_one_block(struct log_writes_c *lc,
 				goto error;
 			}
 			bio->bi_iter.bi_size = 0;
-			bio->bi_iter.bi_sector = sector;
-			bio_set_dev(bio, lc->logdev->bdev);
-			bio->bi_end_io = log_end_io;
-			bio->bi_private = lc;
+			bio_init_fields(bio, lc->logdev->bdev, sector, lc, log_end_io, 0, 0);
 			bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 			ret = bio_add_page(bio, block->vecs[i].bv_page,
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
