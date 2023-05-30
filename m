Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2287167B9
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41bs-00085U-SR;
	Tue, 30 May 2023 15:50:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41bp-00085B-2X for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v0H6G01iGbarR6jkv3pBNWGf0keH7ufLZQ+rs2S4Px4=; b=RnAH/IuONKzhatNjlNs70adpqZ
 Y1HShndg0/8gMTO0OPAsMAW5VVbHxiI4ST86vdOg6F4xD+kv7Sin8++617XLl+Fk7bA3e1rf3PgBf
 Si9hsfuhkQIlW8NCFNDVUAAjJxv/yMO0F6rcprUIW89r9DqwTx+ZYkXiPjtLs3EkNwdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v0H6G01iGbarR6jkv3pBNWGf0keH7ufLZQ+rs2S4Px4=; b=B17/6DJLD91t4+Ln4yBlpGeIAU
 fyuIlOFtw3XeS958TX4lghh6YsuuhFSO9P1QJ9ucM8BV6Q+O/bJ5kPiLxo3u+8LGJ7Pl5qQxiuUop
 0crGCE8c3sTpy5fSWxN1RzOwVM4lJ8u6l83v7nHCtB9WKTCg5jaGBUt0fB4Xcs+RhTbw=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41bm-006ftx-J5 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461802; x=1716997802;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gSS6s+Y+KR0NN3bBjgfAzE61ZLWZg7T5kKisYNE42s8=;
 b=I7Qo/X9FF8Qir94kOZQn7PKx5fE0okJ6E0bMlELZ9f6jxvy88bNXKIZd
 wlkOw9Zhpz5nDjDBwQiEYRw3H1OV0ywl6gKrZBB1pQpTH4D5MkfyL494c
 YEe6AbGtTX4dly/kbNTQlMJAAHxjI3BzqKzi5xvoLY3RJ/7A3p5gWjESV
 aVvdaOKKyEaSFj7/SH9heq+Wt6u9Lwnc58038KRPJoFrAJR4q0bMiV7hl
 gdNR5gYzTQ9NWuH9ACu8KDe6lg0axIzrN+6Nql+gjGp4YXvg/xroch4iE
 Kq7CPrrW1XC5x7QnlG+BNEt2+jY5bcRh8gSLTEqKGrIxeLh2cuVqV19hj g==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="236922650"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:49:54 +0800
IronPort-SDR: sEQHLSK8Ion5jC7of4pqqWiRrsLYdp/K4mUNtvgV9C5XiXH3yAWTu5tKrSSstgEuheuURgeQG5
 O3NNax0T+amT4u1DdSldmtlo69RkfAklG9IU995LfLcXaMhyrQOhU2VhLm8BXrXBU9OaO9IsXB
 SaoQyJz0tvp+zt2rxTdcIX5He4f6rPiYiPFSDTAah0Tb9SAW29Eq6M/h6tc3jTAjPtYXli9CQG
 ZByd4c1OPYc2u9MtTveHSt+4Eyz0EceUwXKKvGOoMDDouvY4X2pCsdgcMdPeAnDn0xivIolUe6
 9eo=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:04:47 -0700
IronPort-SDR: zGTfFG0qpO3ekSs1jkbGf4NhCicS6v3Qh5GV0UwEUz6d58kwkQKUnQDffRvOn1PEv9wQNQpTvS
 L1oZuq/z0RSqONooE5ZtKTVt8hxkZujCOVwJhVMeym4kHlGOkhBiwzfmYNOjlDQQVkrsyxQ4tH
 p80L+3HwbQfc7Jh5sAenLjk04IkjBZOWxj0Hrxyd4f/4OoEOyS4v4abehlJeUA1wJ/hSkRbMfX
 MOJa9T2/0JxEuYE5ao9I9xF38mYJMK2+8AiT0scG/a3lHdVDEa8s97Vq0v8rwx5fkZZoJMlOnW
 T3A=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:49:51 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:11 -0700
Message-Id: <328ebcc2da2307aeb03ce17957a73547c1222e34.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview: The JFS IO code uses bio_add_page() to add a page to a newly
 created bio. bio_add_page() can fail, but the return value is never checked.
 Use __bio_add_page() as adding a single page to a newly created bio is
 guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q41bm-006ftx-J5
Subject: [Jfs-discussion] [PATCH v6 08/20] jfs: logmgr: use __bio_add_page
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
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
