Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7348B71678E
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41bX-00084h-B8;
	Tue, 30 May 2023 15:49:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41bW-00084X-DY for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SsAjS6t4vxeJS3qx6Gp/BdZFxpipc6y58YVRUDPoMew=; b=amWrsv5Q4EX5qbXPgl0VAZ7XT6
 0JPGyglFUEK748qum2LmPopnMwHBAPhbSyKeGCOFMq72GDURU6OMW9QtaqISj6xu7MpeJS5o7IkBK
 4cXlGT1ek2miXTSN0RgnIwWojaKIx1vIn9gi5qYVwR5SbUppkcarZWwcISHbY7kZfcII=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SsAjS6t4vxeJS3qx6Gp/BdZFxpipc6y58YVRUDPoMew=; b=YyYVXfqNtp7WHxwaIup5g1uXYA
 xYxQ57w5MR8rrBFA3krVhI2SRta8SzxCIWwTljwlf1jr9JLBsrfnG/6YQSqbEgHvpq0cOmOCzwbG5
 wUri+htwNra2gw1FGkF3LLMvegoyOWMLzTMs9yQ6hC9TRDvaoeybyP/uloj9ZA9R9/0k=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41bV-006ft1-Mj for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461785; x=1716997785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yht1tkgwasi8HpY3YFcrQQ6s5n80qKmfhqnvFToXZgs=;
 b=rYfOAor3Bw4IoJTcvVtCSGKWsjEGl+M0A334WOU8jCEuwDyqLTIsgviY
 JnCQcHIZdYf7tPM4HYX8QAXCqoQbxjfBs5Fm447ydu4GdSpCM/QWouHJo
 OPscaStjqi1O2JZnYpfwT8tr8cHEHE3esRmOB5OMdywxRIJ6vWBYUPVgg
 lFXOaX+VLmgmsVeHONr9VCAKPd+LbXEpCbCoWDPR0UidJHEJOkbQLOMf1
 zXgjQCDKrPuXwqmwPPucYhSVW8A+Pk98+AlhplpNWBvJhK8sVyGJuFCVc
 CXJzuIlnoIlQ3a+7ts9pQOY82tAIdknWO8pCqX1kCgi9q+inW5XFs249M g==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="336465936"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:49:38 +0800
IronPort-SDR: H6TF1dar+rdYKqqyhRqQnLmHJyjMqBsSDc4aujWg3YauOlyLt0gMB5naJ79iTLsRsk4Amr7Hx8
 GuacXERtngaytZi41/M7WBEwxJ+CGXHjq0m4si/oM3UpWKUby5dvYlwhrGWcDYUsjXjOliD+WN
 dORbMzRAbyt/dcsmRZupznPmCzkwaGxnz4GfNCg6bUj7yPZnC3JJhnBsnToRQ+wBsFeJer8YXE
 2mDzYyunbuwwEJRgf82WOgmNCWKNsL2UHlpvArJeT3f3Y1fyIUPR9AjPZxwZEhMFazBc/zGs4M
 z1E=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 07:58:50 -0700
IronPort-SDR: rDb04cLPnHkw83pxdqtCHKsua7HM5tgjjmF6YXHJIVLNeG4c320WrXtss9t9FpJkHk8dSG8jrZ
 U37pjVXEoaNU8XYLzdmKXeGmEFd+1dDT4nL97b8EqiMmuRm14WWVuMYkCCNNBQqq0YdinOO5yq
 Lxf5U0o9U/edHt5LmR3MVSlhItwiTl+U8LIJ90qQ/E0eH322rprOjcHnRMPPJHrvTPHPHmMyw2
 XmVBT7OeOZhz0Z77oO06/HoQL/Numzb2HGonQSheeFZI4laqGj05EvNx/k0pFoJFGK5U9EVg6i
 1Sg=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:49:35 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:06 -0700
Message-Id: <442aec07a192f0b2fe918b66357bdf7d7c25ffdd.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview:  dm-zoned uses bio_add_page() for adding a single page to a
 freshly created metadata bio. Use __bio_add_page() instead as adding a single
 page to a new bio is always guaranteed to succeed. This brings us a step
 closer to marking bio_add_page() __must_check 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
X-Headers-End: 1q41bV-006ft1-Mj
Subject: [Jfs-discussion] [PATCH v6 03/20] dm: dm-zoned: use __bio_add_page
 for adding single metadata page
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

dm-zoned uses bio_add_page() for adding a single page to a freshly created
metadata bio.

Use __bio_add_page() instead as adding a single page to a new bio is
always guaranteed to succeed.

This brings us a step closer to marking bio_add_page() __must_check

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/dm-zoned-metadata.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/md/dm-zoned-metadata.c b/drivers/md/dm-zoned-metadata.c
index 8f0896a6990b..9d3cca8e3dc9 100644
--- a/drivers/md/dm-zoned-metadata.c
+++ b/drivers/md/dm-zoned-metadata.c
@@ -577,7 +577,7 @@ static struct dmz_mblock *dmz_get_mblock_slow(struct dmz_metadata *zmd,
 	bio->bi_iter.bi_sector = dmz_blk2sect(block);
 	bio->bi_private = mblk;
 	bio->bi_end_io = dmz_mblock_bio_end_io;
-	bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
+	__bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
 	submit_bio(bio);
 
 	return mblk;
@@ -728,7 +728,7 @@ static int dmz_write_mblock(struct dmz_metadata *zmd, struct dmz_mblock *mblk,
 	bio->bi_iter.bi_sector = dmz_blk2sect(block);
 	bio->bi_private = mblk;
 	bio->bi_end_io = dmz_mblock_bio_end_io;
-	bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
+	__bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
 	submit_bio(bio);
 
 	return 0;
@@ -752,7 +752,7 @@ static int dmz_rdwr_block(struct dmz_dev *dev, enum req_op op,
 	bio = bio_alloc(dev->bdev, 1, op | REQ_SYNC | REQ_META | REQ_PRIO,
 			GFP_NOIO);
 	bio->bi_iter.bi_sector = dmz_blk2sect(block);
-	bio_add_page(bio, page, DMZ_BLOCK_SIZE, 0);
+	__bio_add_page(bio, page, DMZ_BLOCK_SIZE, 0);
 	ret = submit_bio_wait(bio);
 	bio_put(bio);
 
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
