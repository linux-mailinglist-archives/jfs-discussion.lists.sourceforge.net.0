Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9789D717E64
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:39:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KAE-0004mZ-Kz;
	Wed, 31 May 2023 11:38:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KAC-0004mK-Se for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kfbXVXnOIfMtfpOW0KwQK8XZeszf1+haBQT/gEejogo=; b=CXnMK4WMMNrgBshTv1xmIRScHl
 LZ47Jy+vcBZuNp3jU7Yo0GqnOrRgNL2lV8g3oqSdArvxnsNwfBxPMGAbABevBO8LM2KWhT52BR8u2
 +pH8QTm5PKpVmMBy4rmNQsuBY2c6ihTsRmJd7q1t7HTaD37IZnJ+MYiHBJKVfI4T38cI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kfbXVXnOIfMtfpOW0KwQK8XZeszf1+haBQT/gEejogo=; b=hP4x16ZxDjIBBETSuchFGaggOu
 Y1TkbZaWyb3d9UDdTmZmtqH2VDTsUK6EzR0gAZUiQghiuEEScrD6srPEL2BV7uCpa8g301He7eR7h
 0ryXmFWqW+Od2c7KjcMHYplNBkGrQCECIJviJaCeWDsv+H39AQIFbDOXAgmwGw/KKPyQ=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KAB-0006rs-Ht for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533127; x=1717069127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VBiHAYrZ5iVLErIRk58IVnEcVkubX6MqVTAomfOuNwY=;
 b=oIiZG+bP4Bl2IS0sAj5mM+7viMAAjXNK1t+WnIdScgQ2lb5VH/LvVtj0
 q4Bt7krqTHgNV04oUBZC/njCHbsXfPGmxXo6WarXcfMekoOLdymZb6MN0
 h248gGbep2mj1e7eZPgt7D4ACOlL21yBPXlRdbVeEogssdetjNledtDGH
 uO3P9e8XhtgmvWevl86G0yqN+ylnIwvSvQh05ldrq6GSiVOHdVzXdZT+F
 Dn5hGXAmEzGuBQv741AiekM80Fzuhx5ucG6cgYbsWP6/fQZkGWpVA6w6x
 AUFE+5lCKy92uj6YUoRQ0BlLL8aVV2lKtFwHOfMcnsf7L6C+YmV0lDL75 g==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179100"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:38:47 +0800
IronPort-SDR: Asay/waALWhYR1PgAF9NpKBIgyrK4faOJ1NcQ9oBWkHi21zr2MFK2R0K5uMnbhON172FIFDD9w
 EUVPZzD4c3gLHGpr+G0sEOGydSscGvhrfaboYjHjGGWVDmsSESDILs39v8PY4Rmi4ZNBUqasHU
 Wlha1oHNOaHt9fhy4fuSAq3lsutEEPpF6KI85IVzwKFPd6VfGnT7aQFVZfz+xmJ3WGQFpu2uPg
 Qn3NE0qJWRBq2xhfZZ4SiuScnxiSpwT5UQmydwEMqNPlNB2ZQIxAhm5Nn+ReFID/dFxkGGQGcF
 ZLM=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:47:59 -0700
IronPort-SDR: wdGMh6RNwdOX9z4wdyOHz0JvcWnTxFxGSKK/Ksg1OEFa4Jnxlt7c8CxWzsVNAu2ywef95mpqNU
 ++V+oN65aC0F0CO/k7+uxwXrD2xBIlIAW/4YajUF+5M5LBD17djJUfzwWjiukxq53hNVFSJ6CI
 yu4F60MLSwbe59TOiyeVfu8WZa1gI81OkAT9SVASu8e5yW94xRpcY7/vQk1Oa/QapeNZY6vge2
 gwnPQvZctrblCXkEJ9Cv8zda976C695H1+iX0Z83/DZFwmmRmaJzmH7HMD20s+gJ3CO71NCI2W
 lZ8=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:38:43 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:37:55 -0700
Message-Id: <d7cfd04d410accee4148d8c0e51230bcb8b4bb8f.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685461490.git.johannes.thumshirn@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  alloc_behind_master_bio() can possibly add multiple pages
 to a bio, but it is not checking for the return value of bio_add_page() if
 adding really succeeded. Check if the page adding succeeded and if not bail
 out. Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q4KAB-0006rs-Ht
Subject: [Jfs-discussion] [PATCH v6 13/20] md: check for failure when adding
 pages in alloc_behind_master_bio
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
 Hannes Reinecke <hare@suse.de>, gouha7@uniontech.com,
 linux-block@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-mm@kvack.org, Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

alloc_behind_master_bio() can possibly add multiple pages to a bio, but it
is not checking for the return value of bio_add_page() if adding really
succeeded.

Check if the page adding succeeded and if not bail out.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid1.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/md/raid1.c b/drivers/md/raid1.c
index 68a9e2d9985b..8283ef177f6c 100644
--- a/drivers/md/raid1.c
+++ b/drivers/md/raid1.c
@@ -1147,7 +1147,10 @@ static void alloc_behind_master_bio(struct r1bio *r1_bio,
 		if (unlikely(!page))
 			goto free_pages;
 
-		bio_add_page(behind_bio, page, len, 0);
+		if (!bio_add_page(behind_bio, page, len, 0)) {
+			free_page(page);
+			goto free_pages;
+		}
 
 		size -= len;
 		i++;
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
