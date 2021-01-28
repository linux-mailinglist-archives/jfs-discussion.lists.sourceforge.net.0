Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6159A307608
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ot-0000U8-1h; Thu, 28 Jan 2021 12:27:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51We-0008BJ-0O
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=boFE/Y4CSRUwogTYFgq+HGiAEX1lr1O8rDyKFav1X5Q=; b=eH29bXXjeI66rDn7gbUZraxfc9
 IZbL+Ad2BwiTjG/anAcU8whMrUQGiWq7jMPvgEWwGK4KersqNENw8Zme2XHVHMLq40YgDygi75Vtc
 TAKlXXMWe1reMf+G6g38Kekv53nsNn6g+8sVzJFtd5dzT6+cnecdeUyUDQ9DPrWc+DSM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=boFE/Y4CSRUwogTYFgq+HGiAEX1lr1O8rDyKFav1X5Q=; b=LWNTk4wjXVLyl3g1qOTSMrT5+C
 sGZBkV+XtyhxePmBNpOBPODOmzlueOgTJcwOKUYl7YVWO3JKr3ONMt9Pi6LtXrIR+ubSK3vjFJLb4
 itTX47/Qid4OVnLCBTtNiQzwknMReqBjppRX54BAxzHLh9uw2u51o4HhcXjV2+eS0AMQ=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51WQ-0000Yc-3W
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818118; x=1643354118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XPaYjcRaIFpnYMD3YBMMFWgQznGRHjSurwf/uHFVwCI=;
 b=rtOHPtZ2mjHibFMhLjAhR+sq/Q+keMHelYSGv81APHRwYuZBvphlYYmx
 y4cSYK3VG2IswyRC2rnR7lqkMWykWJ2QS2MiceFa7uAIP3jur7SNuhKsz
 uvHgDf/ynocO1IAf/nebBGQBXE2PSul6J7Hy8nJkeutq188buwrPbicGC
 qlEoXCaCE2SVOx8A7Fg+tHeaO9vWW0/tN//E8FXYty8j0A2Xk/IYMQ2zA
 ucHM8Bq6yLebvNYJ4CxfNlTAYYFcwYMK1vBZSZt96HmEYymGYVuEqh1j6
 vGOgEmM8ZX9yHGKc58bNfYn34aGNhNxYci/cfcyFDwqWRNPMc8VrkDq4/ w==;
IronPort-SDR: 9uqJfvKdU3FHpuBLpBFEtbgVxnDzrmzRFRYWvWeO4Z3N8gbzGEf5XXdFX1N5x3ktz43gVYqMrb
 MTsqjnrTMZt1zNb+0KsYV7Zje/8ZceVPyE2lR+xasjfM+012Y6SPzReilBv8Lkehjxw2CA2zyt
 thWyu6NhCbVqSkzIN7Kpuduw8s219H6qpxO+YRsARECYMI82qeLjVeEETV3sBCcslW8P1DCxTz
 cp5ADwMehxwm6oVxZM8N15atonuTAn2GO7p0CeT7iwzBtSajevBmdj4+mUHalXs3z4vuURVGlC
 dNA=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="162963393"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:14:54 +0800
IronPort-SDR: hqYlZ8CEjFrr++Rhzzc9vbuU/owW/xEqJf1wiuA5mwmkkxD4C4NBNBAQWUqd8SJ1IJ6KlEgfcr
 Of4lwp5WblXDL8FfJSHxlvvGr8d6wKysTljHIdJNByMueH2G65wtQkhCVp/7aRjGvzTxU/fvN+
 feiSt4cvjglO2GQ4lDZ45ddy0/XLe/b7+pqi+VuqVEu6Bi+2JsPMNnicr3Wciva5cMl62Gz3xS
 8bg5x3r96Mu4T5qdJcdzUlfWZgV+l5u4Fv3dS4HN8bZjtgt99fQFby8ZQ6I+9fHismpr+Q9wtg
 sYwn9rLIfiIS6O+JI7FmTKJm
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:57:12 -0800
IronPort-SDR: m1TZ+g0HqYnNuuEaVgIMmloDXGiOQeWVkBatefSwdP931h6/Qc9uK8rnz+JHWAn0f3QBmOsUC2
 fXJ41UlgQQnfdBQndrwCq+hQtl7mr6AQW85+ZjLVP2rPUrLfDej915AJE+NjNtCGI740sa3D8g
 UGQ9bx3fpoJbY98zSPHF13CT5IYtiyfyvVxvvVA5VfTuNLKWU4ZEgYs5jdqkUbRYa6sajX3DSU
 E+nFYRIRokBPoO+x05JGw6lqTR47HYfSK6LYXKwXfQUKv6zaLN0igntqoauBJYDwbicxGnznwF
 roE=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:14:54 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:22 -0800
Message-Id: <20210128071133.60335-24-chaitanya.kulkarni@wdc.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51WQ-0000Yc-3W
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:45 +0000
Subject: [Jfs-discussion] [RFC PATCH 23/34] fs/mpage.c: use bio_new
 mpage_alloc
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
 fs/mpage.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/fs/mpage.c b/fs/mpage.c
index 830e6cc2a9e7..01725126e81f 100644
--- a/fs/mpage.c
+++ b/fs/mpage.c
@@ -68,25 +68,21 @@ static struct bio *mpage_bio_submit(int op, int op_flags, struct bio *bio)
 }
 
 static struct bio *
-mpage_alloc(struct block_device *bdev,
-		sector_t first_sector, int nr_vecs,
-		gfp_t gfp_flags)
+mpage_alloc(struct block_device *bdev, sector_t first_sector, int nr_vecs,
+	    gfp_t gfp_flags)
 {
 	struct bio *bio;
 
 	/* Restrict the given (page cache) mask for slab allocations */
 	gfp_flags &= GFP_KERNEL;
-	bio = bio_alloc(gfp_flags, nr_vecs);
+	bio = bio_new(bdev, first_sector, 0, 0, nr_vecs, gfp_flags);
 
 	if (bio == NULL && (current->flags & PF_MEMALLOC)) {
 		while (!bio && (nr_vecs /= 2))
-			bio = bio_alloc(gfp_flags, nr_vecs);
+			bio = bio_new(bdev, first_sector, 0, 0, nr_vecs,
+					gfp_flags);
 	}
 
-	if (bio) {
-		bio_set_dev(bio, bdev);
-		bio->bi_iter.bi_sector = first_sector;
-	}
 	return bio;
 }
 
@@ -304,9 +300,7 @@ static struct bio *do_mpage_readpage(struct mpage_readpage_args *args)
 				goto out;
 		}
 		args->bio = mpage_alloc(bdev, blocks[0] << (blkbits - 9),
-					min_t(int, args->nr_pages,
-					      BIO_MAX_PAGES),
-					gfp);
+					args->nr_pages, gfp);
 		if (args->bio == NULL)
 			goto confused;
 	}
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
