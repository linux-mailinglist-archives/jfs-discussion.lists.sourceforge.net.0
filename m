Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4FE30761A
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Or-0000PO-2j; Thu, 28 Jan 2021 12:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Tp-0002UG-Mq
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9BH+mzUQ0AOckjfbIj2shrgfW7DX4p3viSYZEABsxnE=; b=nAYEIZUNDFNn139Wp028OXi1ci
 u0TyDjM/mS1oGzKtncWpPS5b9rewSIq61YGZFI6dNsuLqK5xQ9kzmikdgo0xK+NisyfLN6mJB8tPX
 ImydyOX5+dFH+U0sXnv9XTFnHOII6XH7V9ExljNkj4YwbYR27HJcdgIiqpaaPC+q6y2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9BH+mzUQ0AOckjfbIj2shrgfW7DX4p3viSYZEABsxnE=; b=jy3YsjxLmQAryPxp8/CXpGFPEl
 +WERpSAyEUqTlK+trS9jWl9SRgLkD5r7SXfSExfAuHuet9+1bBW60jnK2q5JCsbzDpPpVW5snJ3ww
 1kzsHt7xXuRbpBLrXWR6Xd43Tj/yjFvH0scUPNW9dwlznyXKrIXEevMLwJGmYxgQfiE4=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51Th-00DWBO-W2
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611817949; x=1643353949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yNs/pnE8yDpXGswjvz9qkLYz+CA1dL9+4aNznurTKfw=;
 b=PnW3ritDuGyP3h/ul5MYpsX9gkCYq74bIt3hH44U9F33cdnO/wmcLqU/
 ZnVDSwxo15Y4TjqlyYJgY6E1wIuDS54M0EII0zq1cVWQ8SNyYQNSKIWIP
 +lb51cWJWDe25wNa5u4FrmIPjgbXQpO8SBBl0GnnAZ8jmF5LbalYv3Jf8
 yw9B/i+ILGN/bLrFk9uHCT0mgsGFEB4ayoI49UxShp8qKIGY5NGj6LFFT
 KA+4JwjwRz6Y1r8nscX/rBn4AfTdl7+URCwJtlb3RPt936HZCw4KPcixc
 TP20VKuMxBaPDweip8jQE8wKuTnSznQQbZTS1aNGIJhcSt4TCd4AKC89t w==;
IronPort-SDR: jYoskkQhewReK7Gi1Nh8i4Sn6C4Ib93wfqecD0yo1k2CNeIEpeGPTnVs7AqGnz/Jx/KixHyJ/g
 VJL0o9E7tcg8FXMwbfvRhLtsaMSZjKaZCC4QjqipmCVRESQ4luLdXOUZQCnCaaqp06ig/y4pX5
 D7dYooBSQ1efTrH5yAwi7dBEf/2v5IKCxDRbc8PhAAQ40lXTXT39IfZRNZv4/IR84zGYXW5phy
 WSmr3WTEG/W9RXYg9NBRQIBS/QgBQlqXmBsWvpHswz7XURFDQq2ncLOUNkJZI5HBnIz5IxHuPQ
 W/g=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="268892387"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:12:26 +0800
IronPort-SDR: tyBCeJYniVeO9lNicWKSyj/qYpksSKC8pHqKGpH0GKZziIIirnbztppHpNyT1or0bE7UbPi8Ox
 AMQSK/EyT1wXjgCZWxkCLHerSiDIH6zNIOoMvwPy2rNIXKYjOt6oDKQti8ItErvFk1JDx5ApNJ
 +oClfMKcgPMQrclduMRCQtmAhMLhWeDhqdeqrZ5SGwA8Wt3so9vRAP8BGLN2mBPOZ5BD2fAtI7
 2K4hz65pZ6d8uKYdbgpQ2Kj5er7OUUgkZIkH5uGRWQ5nVA7B2bMR0MiS7FJn8NRSPeMifu/8fa
 N6JefJop3hoElxHKrnpWIQzo
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:56:46 -0800
IronPort-SDR: AXyfJ+0DzRblLd1C2a8i26F/p5ozSimYWSlSS31hVM9ZD6XicSUM+PrSEKfC1Dird0dpCST4jr
 RH8MY1sbvDVq5P84PowPihV3IFXmyzQNH7jhgBGPCvDUQHmJMRxTWJczw7haMsXH6G94Is8ChW
 3Thpc5BIBnKiKhlT74BApZ+91+Tr+DAOOck7bXVmzNs8yvwHiSmvLe1vToPqpHXLGvuEQ8CHDc
 wMtFD3vO2n6mQgoI8Yf56mEPo6oNIWF003bHhQMN3DD+ikOw4kJGblAZl7I7M30srcHVxOHbPk
 wqE=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:12:26 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:04 -0800
Message-Id: <20210128071133.60335-6-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l51Th-00DWBO-W2
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:42 +0000
Subject: [Jfs-discussion] [RFC PATCH 05/34] xen-blkback: use bio_new
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

Create a wrapper on the tio of the bio_new() named get_new_bio() & use
it in the dispatch_rw_block_io().
p
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/block/xen-blkback/blkback.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/block/xen-blkback/blkback.c b/drivers/block/xen-blkback/blkback.c
index 9ebf53903d7b..3760278f0ee6 100644
--- a/drivers/block/xen-blkback/blkback.c
+++ b/drivers/block/xen-blkback/blkback.c
@@ -1174,6 +1174,15 @@ do_block_io_op(struct xen_blkif_ring *ring, unsigned int *eoi_flags)
 
 	return more_to_do;
 }
+
+static struct bio *
+get_new_bio(struct phys_req *preq, unsigned int op, unsigned int op_flags,
+	    gfp_t gfp_mask, unsigned int nr_bvec)
+{
+	return bio_new(preq->bdev, preq->sector_number, op, op_flags, nr_bvec,
+		       gfp_mask);
+
+}
 /*
  * Transmutation of the 'struct blkif_request' to a proper 'struct bio'
  * and call the 'submit_bio' to pass it to the underlying storage.
@@ -1324,16 +1333,14 @@ static int dispatch_rw_block_io(struct xen_blkif_ring *ring,
 				     seg[i].offset) == 0)) {
 
 			int nr_iovecs = min_t(int, (nseg-i), BIO_MAX_PAGES);
-			bio = bio_alloc(GFP_KERNEL, nr_iovecs);
+			bio = get_new_bio(&preq, operation, operation_flags,
+					  GFP_KERNEL, nr_iovecs);
 			if (unlikely(bio == NULL))
 				goto fail_put_bio;
 
 			biolist[nbio++] = bio;
-			bio_set_dev(bio, preq.bdev);
 			bio->bi_private = pending_req;
 			bio->bi_end_io  = end_block_io_op;
-			bio->bi_iter.bi_sector  = preq.sector_number;
-			bio_set_op_attrs(bio, operation, operation_flags);
 		}
 
 		preq.sector_number += seg[i].nsec;
@@ -1343,15 +1350,14 @@ static int dispatch_rw_block_io(struct xen_blkif_ring *ring,
 	if (!bio) {
 		BUG_ON(operation_flags != REQ_PREFLUSH);
 
-		bio = bio_alloc(GFP_KERNEL, 0);
+		bio = get_new_bio(&preq, operation, operation_flags,
+				  GFP_KERNEL, 0);
 		if (unlikely(bio == NULL))
 			goto fail_put_bio;
 
 		biolist[nbio++] = bio;
-		bio_set_dev(bio, preq.bdev);
 		bio->bi_private = pending_req;
 		bio->bi_end_io  = end_block_io_op;
-		bio_set_op_attrs(bio, operation, operation_flags);
 	}
 
 	atomic_set(&pending_req->pendcnt, nbio);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
