Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BE56CF040
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZGA-0001YT-RG;
	Wed, 29 Mar 2023 17:06:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZGA-0001YM-1w for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5iM0jkMwf+j1C5SPj7cNdROueGq/ObRXRJctwpKvjL8=; b=aq5B2/ddYT/HzYk7wQfLaKx5iK
 46ED89/p37HfNhPrCFKMRRDV5R2ah22mhmYLsDr+smPoEjRfV6Rzn9PG2o/Wex0DUMURZ0AlE/j4m
 aoFBjCrmzgBijPMQPLFYEqQyFMMvfiNOg4N9nhTO54MTPnFL757keEWR+mT5EYfjHgPw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5iM0jkMwf+j1C5SPj7cNdROueGq/ObRXRJctwpKvjL8=; b=ICYecTO+BgviBdwHqPmZlv9rZ4
 yxKKbEqRZzBzeA19pDmxImpqaDEaucHOOIAJfWbQ7+CCkhN0sGHtLhCI8cBMBWdLKgcB0VfUwuNht
 08adBSQOqXifL2w3PS59O+spAnG3MiVDcIOyXmn38OC9pCl+CxbXnHgkDtnzX83hYo/s=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZG8-008aXc-JM for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109612; x=1711645612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HVSOyDSmhD70Nv/fkBkDeTGlq4JItHI/qNc4UYNza9Y=;
 b=gx56qiXJSUySh/uF5RXIflgjm+kw2mHS+lFpozEyx13tZx2bnTQABsW2
 pDLglHbp4/a4mHBG8BV+9YiuXLsuA9cVATGj9DYSS/DA4jIlYo4cL5XIP
 rkx1YH4bf8dCsz6Hp5rJqhgr53W5x1zkNeGAUDgg6HDA0XvQ6S4xw9Q3d
 egBuHTRBFIFTnzbTwkC4Jkg0reTXmcDT7z4c1eSWkThauZhc5HgRhLM94
 WI78+252C81DwJPzImwuPFHeSwOFV7USYSw0vKzP6FOzx/n+u9ATMwKhv
 Sw7xKy0oXPoqsvYlsPyABMoOyRKKakLVRynwIseJs5WRAFFbF8GB+TS3k w==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807070"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:52 +0800
IronPort-SDR: o7imV6cLw/bFhHAvLjHg2MIncW6tUOyEe0B+WK+/DdJKrsYOg+tZXB8Bp6Fe0fblHxeSfJcWr8
 HAWmVEPsQabCnNlsFFGLyfDFyzTBFAcB2d7PFgf0D1EAP76WxLAsVPr7pl2UkDjFoEwSbUMNP0
 X+k1bfg5UvJOXAhsnKbP+QBNuCQKkQ9F7HS2ewr6BT6NEkZ2Shm07yMmgGVZufT5MFahuL4aNX
 S+2ZJI08Gs9K4V2BO4Es3V6MioHh34ix2C3KSuki0nqouZMEu/rklAcEGBUMPh3aAJnRCRybnh
 x20=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:23:01 -0700
IronPort-SDR: BQgCe592q5M7/+hA4h11/kqfHityq5CvcyPS2rBc00hC4byMFoMSONh7xRqYNa59BKcDsROUUt
 MTkgPvmq53Jx71bmK390FtI6XSqL4/k6hBD0d81URBbk3Tt/Bm6YA0CRTta2rw15YqZZnZQclD
 83BsLqej3Hs6EnxH5F5Dgte4ie6E3NSwc71KxqXcfciRA6bA8kvbBkRQZrz0pjrsGYBhyfiXmH
 Sm7ISx3Sy7yOK8htnsoXxQlu9j3TpCWlBVFzghrqQFDWQ1hiGWMf+dYL6Bi+aoFos5RsnY2nEB
 30k=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:51 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:57 -0700
Message-Id: <51e47d746d16221473851e06f86b5d90a904f41d.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680108414.git.johannes.thumshirn@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The GFS superblock reading code uses bio_add_page() to add
 a page to a newly created bio. bio_add_page() can fail, but the return value
 is never checked. Use __bio_add_page() as adding a single page to a newly
 created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phZG8-008aXc-JM
Subject: [Jfs-discussion] [PATCH 11/19] gfs: use __bio_add_page for adding
 single page to bio
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
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Cc: linux-raid@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The GFS superblock reading code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/gfs2/ops_fstype.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/gfs2/ops_fstype.c b/fs/gfs2/ops_fstype.c
index 6de901c3b89b..e0cd0d43b12f 100644
--- a/fs/gfs2/ops_fstype.c
+++ b/fs/gfs2/ops_fstype.c
@@ -254,7 +254,7 @@ static int gfs2_read_super(struct gfs2_sbd *sdp, sector_t sector, int silent)
 
 	bio = bio_alloc(sb->s_bdev, 1, REQ_OP_READ | REQ_META, GFP_NOFS);
 	bio->bi_iter.bi_sector = sector * (sb->s_blocksize >> 9);
-	bio_add_page(bio, page, PAGE_SIZE, 0);
+	__bio_add_page(bio, page, PAGE_SIZE, 0);
 
 	bio->bi_end_io = end_bio_io_page;
 	bio->bi_private = page;
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
