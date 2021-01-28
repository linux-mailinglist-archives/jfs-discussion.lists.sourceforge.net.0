Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D7B307614
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Os-0000S1-4y; Thu, 28 Jan 2021 12:27:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51VA-0002XR-OL
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:14:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DFzlLgm+OMmfqcWGLvsMarZ+KlR4fxTak6zU9r0EAWI=; b=imGFzcC/EQD9e+yMoWEIk+TVQF
 HSP+J0TbPpbZjHE5qOoP1cBxG55hWZjdYWG6fUZIwKyJOWtOw78CHSxs9K/exs+IT4EPk+y9K5BGL
 PCPQb1XQ3H3py0VtBelSo2ossuNVlVlFYswY+A4wdX4BOEe/Jc1R/QhCaxMFnkIXBPgk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DFzlLgm+OMmfqcWGLvsMarZ+KlR4fxTak6zU9r0EAWI=; b=DqXz4PUA7Hu9Z6FS7dJL1TSbyp
 PAUWzrEkmYRuDzyUcbsVnehc9LYK3GmDcWhSKMx1QZpu479FQjW8M5/fyEwO/NW38VfKiyqYrVKwD
 5mWxHSfxNUqRvw8TBsVIxMxgYHz6fIrLMJZRywQgHu+ckg+OEvY0jIMluB+2BRQBzajE=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51Uu-0000SA-FY
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818150; x=1643354150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OdHsUuhLqy4MrzmNdd/tdpH4dcVzXnQrrHk/wuqLVYg=;
 b=pYUEGOOgDf5PXKNfw5d2ZYh1YHiy5oBauRFH3PffkJe6Ana43vDN0t7U
 +IgLEwPP0sG1Yd0YEbTccZQb8cF+ZECfl/vn0IfgpXlSdjTW4Xn5k0FOt
 4zpY2UKx4w3hmF0eisds2eU69SafCPvPl0rF7UVqPYyfQkBr25mFgf4GL
 S2msU2C0qkOGWfpK6t0S7tpBYifcQWzijaSUNGCqN+SddpeauMPzC/U8M
 Q4deItk9m9cRh4jYlalnKKLnXznVXwdhocyiRH7ua3w2hhB/VD76lHP22
 n1FJC+UE4F/COdywaGXrMaH2XRmvtTUpqN3954j62NAP+7TvjUgOp29HZ w==;
IronPort-SDR: 468WWmy9hd2vqrLkP1QxNymXtBK5756vCbKtF1r6PwOR82rW/bqxq52w+MFEc3hB4wCXtXCFEU
 GWE9r/HdQa7uQnHwSHNpmQs8Bq5ZjlwQqvoWqVAD60JTqpGOmiLmFVthG9MeNofnglAOY/oj38
 8q4NBIyxVITLc+ytZK06/u39/Ej5c/8PqP7VcEcipr6HcwG97xPA/aO3akd/Ic7F8rDwHQLZK2
 ik5J5ocmsqG1FKTL5TrsjAjskXjnvfdfdhfHN0SwjMx4MGYTtyevBGOEtauGfbPsqtYdtCAjSV
 3sA=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="262549016"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:15:41 +0800
IronPort-SDR: qg6qCXXcZygyyha4XuMOyZ9pkINxD16mdNQCKB46OxKSVWUh3+R8cI5FW+i5sI/htuXoiRQmJQ
 RB/0qEoueM+cUQy2mAFXd3EPeVRJqnpH/xfda+U86cRjhdkBwgG6iKyFTM2Pd9LihhFeMS0DRB
 R8b1UCy+tsM3mvpTQI2u2uxvBAs0cIPd2sE80EY9lb1KHwDAymr0sC5CpuxyDJjLT/BGt+KVGh
 p8JqrVSmnvkTYcFNZ1RHM2RgMHNPX3gXvrdFmhVXmOJ9/tVXRgUCvrPHSMohl3rpfsOzBZUoFw
 f2SMwlmWxBovEofcAvFlzSyh
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:57:58 -0800
IronPort-SDR: Soam0z/hZs1yuoqW7i6jx5roOoHAapZwcG8+RboeMSicIzBmOYiX0n71yThGE0I1AnlhuM1di0
 VAe/ab59Zj3d54HqeQwwCvYowNBZyfmch3v7Oy4azaqst0BpJQIg4rXG9R5IU/X7180i4BamQI
 Pdm6cEOWuqZT053sZGwqRvhtwriLsaGVJTX83nQ+r2PwZZdfIXxXkXEJoScfk1suUPevohY8gp
 ghp78Zzi9GkjGDnNvz6HqiAkBvVb/9awaEDn2T+13/9ul6gQjwyqb4x2IkJNU2l4rR1clxPnay
 0k0=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:13:38 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:12 -0800
Message-Id: <20210128071133.60335-14-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l51Uu-0000SA-FY
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:44 +0000
Subject: [Jfs-discussion] [RFC PATCH 13/34] block: use bio_new in
 __blkdev_direct_IO
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
 fs/block_dev.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/block_dev.c b/fs/block_dev.c
index 9d4b1a884d76..f3e3247894d7 100644
--- a/fs/block_dev.c
+++ b/fs/block_dev.c
@@ -367,6 +367,8 @@ __blkdev_direct_IO(struct kiocb *iocb, struct iov_iter *iter, int nr_pages)
 		return -EINVAL;
 
 	bio = bio_alloc_bioset(GFP_KERNEL, nr_pages, &blkdev_dio_pool);
+	bio_set_dev(bio, bdev);
+	bio->bi_iter.bi_sector = pos >> 9;
 
 	dio = container_of(bio, struct blkdev_dio, bio);
 	dio->is_sync = is_sync = is_sync_kiocb(iocb);
@@ -389,8 +391,6 @@ __blkdev_direct_IO(struct kiocb *iocb, struct iov_iter *iter, int nr_pages)
 		blk_start_plug(&plug);
 
 	for (;;) {
-		bio_set_dev(bio, bdev);
-		bio->bi_iter.bi_sector = pos >> 9;
 		bio->bi_write_hint = iocb->ki_hint;
 		bio->bi_private = dio;
 		bio->bi_end_io = blkdev_bio_end_io;
@@ -446,7 +446,7 @@ __blkdev_direct_IO(struct kiocb *iocb, struct iov_iter *iter, int nr_pages)
 		}
 
 		submit_bio(bio);
-		bio = bio_alloc(GFP_KERNEL, nr_pages);
+		bio = bio_new(bdev, pos >> 9, 0, 0, nr_pages, GFP_KERNEL);
 	}
 
 	if (!is_poll)
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
