Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAF3716795
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41bb-0001jH-2m;
	Tue, 30 May 2023 15:49:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41bZ-0001jB-4f for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JaOdRASqHT7xzwXc2NQuDZOUhvsv6oArp6EMJMX683Y=; b=QQUg27x2+NbXi2qjdaIYP7yAXB
 tOSJvnDMGu63wWUdfj/XWS+GwZkdjhSsQ3FICIt8I2s+gkBj1de5Qt13CVThk9i+R6a+9UdmE7Vju
 x3e0kWOYQQQPth63x+Rf0bZFzoxOurbwxFx3ssmsJlRFeM18iIBghCrBDLfujatrl8gA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JaOdRASqHT7xzwXc2NQuDZOUhvsv6oArp6EMJMX683Y=; b=eupCJzguDxsvuVgGmPKKi3VWYL
 zMpO6/eKVR0H0cDf6mmbpzDXnJDw/vQRrCKOBwCSpU2oUexn6kTlL2Nw4VesMD96AieWwlP6om9/9
 06VuJYEcdHGpUUg2pq6555bFpuctuC1xSeRDh0sZh7uSlvbVOUEZT2pjetEn9b1DQJ5I=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41bY-006ft6-TM for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461788; x=1716997788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I1+TGenMrGdtSWKYS446AepXRO4LZgePrjmNY71VmmU=;
 b=N4jrF52ZUANZl3499ZUjUg8WLfi1Z8QpUmyBGy430QjLI1rFQqCZwMfd
 8vFybxROR8y5HJ+PkdqD4xAsDJ8ZWkfPXxd8qDoDP7Y7SYsIAU9mjHspe
 XzWRofHxJrftOuYh4xJOiS37h9c2cHaNkDkENgVssDafVV869VYkQBU0x
 BsPY1//LnWDQnpwN1Irxq8VQKuoIGk/huINMPwBczHSW4NaSvjDKEuHk7
 ExdUKfxE7GT/HpXXHKktsFsKHPMiAVbxGeOexNAVtnHabDuP36aw94kf8
 WB9IrZsnQGvuDkBeSBnUyvetl/x42/tkVY9UKA1XmAymCefhCNEmGBxbk w==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="231905690"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:49:45 +0800
IronPort-SDR: RAFIWL96u014GgS0baiEEiGm1UCaXU0W+L+EYSF7L4un+EXJGcRd5IhcxCbezSnYpB8vqSty3I
 WUz++yhuM1XVGkRD/hZVjItw8AGaoi7VAVd2s3BClICeIb6gPBb0UX/uTFcdOX8Hfo8BnduQcu
 aGy1wReJw9fT1Fr367Z7V8SZv5YvvkgzvT9SQDbtNQQ2ptc2nSdjoF+W9Jslw908tBT+OhABHX
 p24QHqUCFQ5K0YhlqDS5TbMogW+SSYY4z7U9o+l0hXVSrQD/mDJ/Dxktksk0wN3u2LzwWXyupT
 Qus=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:04:38 -0700
IronPort-SDR: KJrqulCfq2cqwjkpQuj6PyVKpC28Y9PRziJGpvtZLpCh0rnCFASYlRta5kVMItHLPqq5rbqivp
 lMPfQqlHbxJojiNO1f2byMk3lcSCsyJM5076LR2t1Uk8MU+mMSei3mzF7GpXMo0mg3+kEecLxf
 OyMUtTmjzDB92M0Oo1Hytx+Eufwx2D2FdxOYnT1IorOXPeITVFL5E8NvDvefbboj9O9qo/Gmak
 p1SuxcEHaJrwbUasxNHzxhTj/f1bmxtqyWfrTpTKU/3g7I5gd2SasjsbToJ4cuAKPzx8T5MMe9
 2F0=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:49:41 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:08 -0700
Message-Id: <8b046033b3b073d1ea91c45cd278b7aadd0b7e1e.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685461490.git.johannes.thumshirn@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The md-raid superblock writing code uses bio_add_page() to
 add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q41bY-006ft6-TM
Subject: [Jfs-discussion] [PATCH v6 05/20] md: use __bio_add_page to add
 single page
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Song Liu <song@kernel.org>, dm-devel@redhat.com,
 Christoph Hellwig <hch@lst.de>, Andreas Gruenbacher <agruenba@redhat.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Matthew Wilcox <willy@infradead.org>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Mike Snitzer <snitzer@kernel.org>,
 Ming Lei <ming.lei@redhat.com>, linux-raid@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Hannes Reinecke <hare@suse.de>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, gouhao@uniontech.com,
 linux-mm@kvack.org, Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The md-raid superblock writing code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-of_-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
---
 drivers/md/md.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/md/md.c b/drivers/md/md.c
index 8e344b4b3444..6a559a7e89c0 100644
--- a/drivers/md/md.c
+++ b/drivers/md/md.c
@@ -938,7 +938,7 @@ void md_super_write(struct mddev *mddev, struct md_rdev *rdev,
 	atomic_inc(&rdev->nr_pending);
 
 	bio->bi_iter.bi_sector = sector;
-	bio_add_page(bio, page, size, 0);
+	__bio_add_page(bio, page, size, 0);
 	bio->bi_private = rdev;
 	bio->bi_end_io = super_written;
 
@@ -979,7 +979,7 @@ int sync_page_io(struct md_rdev *rdev, sector_t sector, int size,
 		bio.bi_iter.bi_sector = sector + rdev->new_data_offset;
 	else
 		bio.bi_iter.bi_sector = sector + rdev->data_offset;
-	bio_add_page(&bio, page, size, 0);
+	__bio_add_page(&bio, page, size, 0);
 
 	submit_bio_wait(&bio);
 
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
