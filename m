Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B62D2FB6A8
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reS-0000Mk-NJ; Tue, 19 Jan 2021 14:06:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jTL-00009w-1O
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ESH2i8BySIbLu05ZeRE2W1XnEwJkaogWO/o/9vAgpus=; b=gGwQ1jJFFzFKlwZSjmDLXfxb4u
 gKqjbktnZCQoHgwIT9MfHqV6ruDtQ2QNz1cfRbQpPQ+tq2YA/7dwdnGuICmnjoSN4YqZhd7bU03+f
 X0nxhcnySLm9aDpWTmJF4QEsERLJNmmYwWToL6wmOj9Ck8AVz6rNz+Z8Ps1Na5jW2qLY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ESH2i8BySIbLu05ZeRE2W1XnEwJkaogWO/o/9vAgpus=; b=QmeWNkkMTGZQ23mNf8NHlnVtUd
 vZl3pjhFbOWjKqF58YGfbLBYg9evbl9rL1PLqATzpCDVkbFOjIf2KgpgDt7jxk5G28r82TOmTHeXY
 8AWQ/k/cGeRSBDuAUP5LJJFDmKdSKRlDSbfN/zQFax4xkHK6U33S6ESZA4F3yqoJObsM=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jTH-006vgT-J0
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:22:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033747; x=1642569747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZpEdbwVtPI0wVPLoSXxNauBL5CtIsv1pRUC3n0RI/T8=;
 b=mBhO4fibarQ9ofvSYTQWh+XXbSi/6RHmOxzEAIfs+FdROivCUUpSlRTs
 GSObF4JQNPlpzxohaZv/7mmkbqObwITpzs5zcyDMt4wLvB0iv5v4XjLm9
 ISbP3u5wTq2Lsf8LklXGo8YTSCabY4VXmIR5YnNT3TNMq4RxYcbVtxqnf
 18fkJUpGBxS0Z0tlNmQSZGHYfhFg1elWaD/+zW1+iqEv5W1VfhJm8mHo2
 wmfjNnCtQv7qo0QqlBmpmAKIavFgv3SJ+d7Z5LngvdEIo4vI1dHhQ+BFB
 5AekdR413Dec4dlRPAci7ukp0yx5bY4o2E0DKri6GYcHyX9Wab+P4ljNT A==;
IronPort-SDR: XUVh+rPgNTDZpgtyynRyz2jejEIFPXc2MKkj3/DjyzPxb4VoQvppzxQ0ZPrF7yUgSIkSohrybj
 8uh0BB7e6imdgDgL+WGXnf4MIwKuswDP+pFSvMnbYBM4ivK4ujCp9O9SmcoUg1t1sjVklTrm6H
 z/s3SrGSllr/tERiyp/2gwoDSPnTT7+XWLBcaVtLDHOR8JxaJdgKpzRLOFez3YY9+TWp0XQBas
 3f259QDyAZMDYMkUFFa1dL/QDwkPOdYZXF8Nwo7ejBigFhG6q487orSKRnb/rnyYdFm934eUix
 Hv8=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="162200888"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:06:49 +0800
IronPort-SDR: Nxxx5w4v6vykEHVXbpcMlI/yUfEThjYWcu8UTbgoE9Hz6PMFfrioUb3PH6oDxh+KEuXFZo7f6V
 IqxYvJ5UhEcda24cawCIFXYfD51OntCGNuWed6UzfCjkGE6LdSt7Wl/E80YU87WgQEZAmINKeH
 oJBT/YJzTrK3vR/gIpwYr87l4hjGWaOGIqpVpeqnynrygmhhwSq+h1cbGygI3VpxUBxdAtHm/l
 fFfHLnUhmAmuE5IW8kEm1V7zEwgNR2uUppqxL7DPmDfv4oUE06vDwkrrIW2IMQ/moXw/NrqbNv
 CJDgzQtw1cZoGUN443LV5NP4
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:49:25 -0800
IronPort-SDR: XoCPpBnEyAS0C26NACpPNr6hc2mgCkBhR/slXc8vz6d3NBxAPkngsmR+924mOBWvaQi6WZHAP1
 e4hIrlRuqs07ngks51wLmgnhqz6gvPVZzt6c/xtYGHpktVNv4G+tlyQwdXjSld+DKB31WM3e0X
 o4xJZXi1ZVzEGxYUOHxoYuaGW27b5AhyEnbnJEWPqSGnvSmb4YAK4r55aDWz+qouFqxTNJ1Ve4
 MmaSi236cQpo5ubtxkwfTjN+hUw7qXvWgQEEinw8kPT9rlOQYeg6qJM9v7qJDF5MBv1NXcWrD2
 OOA=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:06:49 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:05:56 -0800
Message-Id: <20210119050631.57073-3-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jTH-006vgT-J0
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:27 +0000
Subject: [Jfs-discussion] [RFC PATCH 02/37] fs: use bio_init_fields in
 block_dev
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
 fs/block_dev.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/fs/block_dev.c b/fs/block_dev.c
index 3e5b02f6606c..44b992976ee5 100644
--- a/fs/block_dev.c
+++ b/fs/block_dev.c
@@ -239,12 +239,9 @@ __blkdev_direct_IO_simple(struct kiocb *iocb, struct iov_iter *iter,
 	}
 
 	bio_init(&bio, vecs, nr_pages);
-	bio_set_dev(&bio, bdev);
-	bio.bi_iter.bi_sector = pos >> 9;
-	bio.bi_write_hint = iocb->ki_hint;
-	bio.bi_private = current;
-	bio.bi_end_io = blkdev_bio_end_io_simple;
-	bio.bi_ioprio = iocb->ki_ioprio;
+	bio_init_fields(&bio, bdev, pos >> 9, current, blkdev_bio_end_io_simple,
+			iocb->ki_ioprio, iocb->ki_hint);
+
 
 	ret = bio_iov_iter_get_pages(&bio, iter);
 	if (unlikely(ret))
@@ -390,12 +387,8 @@ __blkdev_direct_IO(struct kiocb *iocb, struct iov_iter *iter, int nr_pages)
 		blk_start_plug(&plug);
 
 	for (;;) {
-		bio_set_dev(bio, bdev);
-		bio->bi_iter.bi_sector = pos >> 9;
-		bio->bi_write_hint = iocb->ki_hint;
-		bio->bi_private = dio;
-		bio->bi_end_io = blkdev_bio_end_io;
-		bio->bi_ioprio = iocb->ki_ioprio;
+		bio_init_fields(bio, bdev, pos >> 9, dio, blkdev_bio_end_io,
+				iocb->ki_ioprio, iocb->ki_hint);
 
 		ret = bio_iov_iter_get_pages(bio, iter);
 		if (unlikely(ret)) {
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
