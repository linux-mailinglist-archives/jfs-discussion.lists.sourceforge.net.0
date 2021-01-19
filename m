Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EE52FB6AE
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000NW-5W; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jUS-0007FJ-NW
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/QcZIFtD74J0XSHynmWJfPK1XRVTdvAJ/CoWzrFZ1J8=; b=Tyv5V+JZbMwcVR5wSdn45gt9DI
 8FeMc5gMWMLUKp3R14Hl/mIeCPZzuGC60x9qyQj8PTSagx1PoDbyTN3z/bcc3zH0QkKvEQYZJHNz9
 bQmNJ/iQcxQu8JvDodNuzp3RcQOOzq//naNJroctg5sAjNsEyL0X9MKRAAUIKzGfufjs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/QcZIFtD74J0XSHynmWJfPK1XRVTdvAJ/CoWzrFZ1J8=; b=Zr4cr/zmEN8nfhO6bYG3K78eSe
 8vGP852neVTJE1tOmUhvfJQMz9+Ct+b9i+xanHJqfGnjR0fBRVlScP8q8IYBNzOfeJZVRRGThiHpx
 0wUcwhfWo7iS+7JzJrzJZ7jmawBL7CIaFoHmcC9JhhC0zBTTCRkFozSksllGHdOybUow=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jUE-00DzR4-Hf
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033806; x=1642569806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GM24flI6Tk6w3xkQ30UJmV4QFWXT/JYAetQgeL9KGII=;
 b=RxDYdMeOUrNHdt1n0lW5cPJAf1icIDHYpD2WPez8I6n2gLXKvcgtSG4L
 rzXECW2uYOKX4a4IN6OmONZEfE82mXhlxsBhNZQxayK4PdxAeoe0VzBM6
 aciJt+EDdGMnEkdGqdhzyeoh5Id+xQ3d1U+5gvjkP1ScYLzp0yqfzzOMg
 yPEchYLUTOnLsW31GTI/aTHIdU8Ltmj1OIzYJVofCtDcREEgg32vsYe1I
 bI7VRJrUauNbv4h+38EN9ok9VNVXj+S4UzIlwNd/MSZeqM8NLSRUBtGdg
 95oMPSulVDUAOOsNxt3YKf74NAdyxQzGC/B/a2Qt8TKplVVXFAYjOhlD/ w==;
IronPort-SDR: lP132U30IJA+uBBMxzC3i4VQ0IGIU+cKHEffxJdxfFZSCsTwiTuh4ie3aHZmvQhefoz4mCEusp
 oilGXFYJq7vekCGgep4deiLK87U2vi6ESy8aguYdUaVwExXw0iz5yV4+t8EB84Tli7xa1bFPEZ
 p5qPA4Kbb2DQrX1aY485M6pP3hRGpSHWAELN00fJoc/XmyMsqLzEFbtKALfg3N5yqtfWee6VBR
 rzfJ55/Gn61vDKCP9Sdk2sJeGIt2VSPnHYwmSqmg2DMEPENVybtdwOd1gpE9ORCwa5uIBsOA2a
 oTA=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="158940506"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:07:48 +0800
IronPort-SDR: 4Zbi63N1Z0tb+P5YgmUpIL7iGiiKsD6TurEgUUVBQXuhFCdEBVxbUKXS4KyKzQYsyWa7fiRyZr
 Rm9JQR4SyusWl3kxZ3BpJhAE5lIDMF1FJ1Wix6w9LUCfYw6pEqCO88coYEHlFXIrVnpB454wh4
 Di2XsjY4uDUqQYR9/kglnqMUzkbYcIw6WkaXfdAhxijQWuT2RFVNpPMLojC8RjsdYvjcXeKBnp
 Ph8bPuhH5PQViKV/GDKWIWwf9tRfrd6jeMOzMMilBG4LCp4YDEMlwedXBIyiTWd7zEoPudfzvM
 U0PSPXD2cn4cLxmRRk5N7Egl
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:52:24 -0800
IronPort-SDR: z0ZW9dyPTLw53eARwPq8+5nuJJ+yGnb1S3afLxWS5cRMuD3GO8FzJcyb/494viUnLZ93FPHi6a
 3MdikG0yU2ucYS4a+pszMPxdsf3jMw5J2ahGcJgTTzK3LHcPj0MYZR0Q1pR6fYTjIlk5jXhiBg
 wsBVE9/ViYCXjpOk05UySgjB2d/pwdD0R6sXtZQT/+GSCaDzW5cIOqfqIiFsiuqf2/hNL4trLe
 wWdFviDzfdU8EZetm7X+/kphay2DvflOFtCnqYvJIkQCp+kSJnhyMAhfqOGFMVkkVdPhO/0qgy
 FxQ=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:07:47 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:04 -0800
Message-Id: <20210119050631.57073-11-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jUE-00DzR4-Hf
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 10/37] iomap: use bio_init_fields in
 direct-io
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
 fs/iomap/direct-io.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/fs/iomap/direct-io.c b/fs/iomap/direct-io.c
index 933f234d5bec..3756dbf51909 100644
--- a/fs/iomap/direct-io.c
+++ b/fs/iomap/direct-io.c
@@ -190,10 +190,8 @@ iomap_dio_zero(struct iomap_dio *dio, struct iomap *iomap, loff_t pos,
 	struct bio *bio;
 
 	bio = bio_alloc(GFP_KERNEL, 1);
-	bio_set_dev(bio, iomap->bdev);
-	bio->bi_iter.bi_sector = iomap_sector(iomap, pos);
-	bio->bi_private = dio;
-	bio->bi_end_io = iomap_dio_bio_end_io;
+	bio_init_fields(bio, iomap->bdev, iomap_sector(iomap, pos), dio,
+			iomap_dio_bio_end_io, 0, 0);
 
 	get_page(page);
 	__bio_add_page(bio, page, len, 0);
@@ -272,12 +270,9 @@ iomap_dio_bio_actor(struct inode *inode, loff_t pos, loff_t length,
 		}
 
 		bio = bio_alloc(GFP_KERNEL, nr_pages);
-		bio_set_dev(bio, iomap->bdev);
-		bio->bi_iter.bi_sector = iomap_sector(iomap, pos);
-		bio->bi_write_hint = dio->iocb->ki_hint;
-		bio->bi_ioprio = dio->iocb->ki_ioprio;
-		bio->bi_private = dio;
-		bio->bi_end_io = iomap_dio_bio_end_io;
+		bio_init_fields(bio, iomap->bdev, iomap_sector(iomap, pos), dio,
+				iomap_dio_bio_end_io, dio->iocb->ki_ioprio,
+				dio->iocb->ki_hint);
 
 		ret = bio_iov_iter_get_pages(bio, dio->submit.iter);
 		if (unlikely(ret)) {
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
