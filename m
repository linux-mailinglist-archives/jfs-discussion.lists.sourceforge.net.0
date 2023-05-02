Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 099396F4131
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:21:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn8P-0001SR-2H;
	Tue, 02 May 2023 10:21:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn8N-0001SL-7N for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rsEwzp4KUsprajGpTbcSGFfmf+KMGB2h2D2G/ECnUFA=; b=laR3KdK7WvHPv4kqezma+YA/Ax
 F5QUIBroIiepihl1Hd52EG9IGBRaj4xdO7G0u97GK9jKnM0TeUYBM8mYMoJMcr9hMAV31Fo49ufRK
 FMSMzQ6UK2d9klEGrjtUL4Q7bFM8CNNYMoXEHk01PUy1qMvinuc7nI0Mup5Y9+OlAknk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rsEwzp4KUsprajGpTbcSGFfmf+KMGB2h2D2G/ECnUFA=; b=Npa6BahY6LrLrN4kYltSE7Mxlh
 DbT3RBtM8o1qHS29V9tQa+bDeNJXp7PgMG4XvQR27qYhkgBJmNO5YOhbLc6O9UJkvdnQnGlquTUa0
 nVYKWGtUMMpf1nqC7XJQ/aF7VasCA2NoelZbsn43O++eLOxjtm6HXJjUtsqF9Y5psngI=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn8K-0004ZU-2P for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022880; x=1714558880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GdWYuRal4gtN4Ezno5RYxoKK4shSZO/plZI344B5fU8=;
 b=fmuLJR+rpKGPFj5J0TGRZ9bzIkVcydu+En3/Q2PyKjSyi22dZ4wbIYg5
 RMuWvHLMLH/FOxbtk22bGGdnPS0KsTSEfxodcSDwVJPo7uASZUQu9SF4L
 Z6029QloUBmWxzZOFWj+jk9+eOUuPY/qZn+ASQEsaAI0jAhBsbeQsEVbs
 Ah65yF4gyIaL35k4GDZNB7zyGI9t9jiev4YmUlIjZB4suJDiU+33JZdeI
 20mSWmt6q5IgAg+muzA8RdaWNtiGBpx6cgC6Q8VrfBTkyCfhq7AWWa33l
 8HVE1Izxb7beChQECQkpodKmvh/9tZNwIdT/lIFcL0D2xfr8R8xN7Hkwh A==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="227916259"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:14 +0800
IronPort-SDR: DJkANg6+oXDcaHzTtLNMLols7+AQU6Zi0CgSfsbhyX3Y1O1KC8wDrd5I5kw0Is8EErd7CAi2CH
 +1RdvneB69tagcQe6xyOedH73Fx7K5WiCgh5ss9pXnlVYV41GgBDAsdKHVfyzp6jNu83WWLBfs
 Tvmzov5rQbG3wMDVTxc3u/5IhDd9QLT2/PrjACOVucsDQy9Yrbe+Ai5fsbEEsrrsf5y9SoDzTX
 RrYl8HxLkKEjkY6nfeoQnsR7uMklYzWc2WCIdY1925Y50cN3fUrRUNlqlq5zUpU4iGOr7I1cfI
 iK0=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:42 -0700
IronPort-SDR: /S22iEpnOiCcoykSs4awuNv6zgGhYXfplgG+S3pD2v+040jaGI8/UT37PBAwwxcjkEonrgZmkF
 MJPvEWtr1zVH0AIddfQ67gYFP3HKB7q55d5Q1Kb8u6skPN7kRW+WuGOCfae67Jkkt8+4Oaw0js
 JkBz4bNt1kGrsBmJVm+4KD8wEnX4pNgSMaG3kJRUQiB8x1MM+ujOP6oeUZFhoRrtBiBmuCy7MO
 c0PlJP0a2U0EUVTKgLVaxjO9oJKo1AU/i7anC+hCZa7jKJqlBykub1Cxy0u0yhF0QACwsoDW1Q
 DfA=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:08 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:22 +0200
Message-Id: <20230502101934.24901-9-johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The JFS IO code uses bio_add_page() to add a page to a newly
 created bio. bio_add_page() can fail, but the return value is never checked.
 Use __bio_add_page() as adding a single page to a newly created bio is
 guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ptn8K-0004ZU-2P
Subject: [Jfs-discussion] [PATCH v5 08/20] jfs: logmgr: use __bio_add_page
 to add single page to bio
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
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, shaggy@kernel.org, song@kernel.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The JFS IO code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/jfs/jfs_logmgr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 695415cbfe98..15c645827dec 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1974,7 +1974,7 @@ static int lbmRead(struct jfs_log * log, int pn, struct lbuf ** bpp)
 
 	bio = bio_alloc(log->bdev, 1, REQ_OP_READ, GFP_NOFS);
 	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
-	bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
+	__bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 	BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);
 
 	bio->bi_end_io = lbmIODone;
@@ -2115,7 +2115,7 @@ static void lbmStartIO(struct lbuf * bp)
 
 	bio = bio_alloc(log->bdev, 1, REQ_OP_WRITE | REQ_SYNC, GFP_NOFS);
 	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
-	bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
+	__bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 	BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);
 
 	bio->bi_end_io = lbmIODone;
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
