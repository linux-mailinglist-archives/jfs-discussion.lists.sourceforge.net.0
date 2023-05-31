Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4B9717E3C
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:38:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4K9p-0004W9-G6;
	Wed, 31 May 2023 11:38:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4K9g-0004Vy-MZ for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AKDiQc5c5mMUE+M48Yw66vq1cPaHt+34Qu81mFVf1Zw=; b=mzLiaLaIH5RguLnYOdHde0aY+r
 YX/J+4uWXs8we/QmuOuMJc9fGq43xXFJZmMu7SYtbdlDZ7rrzNYJuy9+52ncKjOephQqP3mevC+pi
 WH8nJ3vtU/mqn0VP9EJVwSounzBkHWhinEcXoHIZYHa0mcMPAczV4vI8UA3lnj9TDiMs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AKDiQc5c5mMUE+M48Yw66vq1cPaHt+34Qu81mFVf1Zw=; b=Ff49spKBtONhJTFGznRQ5wDihm
 FVjd+GAhg8lv1ObvU0dKsxuNWtAn+tTglWiJZj3ejYjWm+r59cJspuYZV/2VuBStAPwPqV83ZHYa7
 XxkbSiqhiqcGQgdAOTBO1S0Tz5u3zPuNSLmuRA2ofExMtiO7rwpOz3VlFaZoLPcdkM6o=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4K9g-007Ph0-ID for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533096; x=1717069096;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UUIQkUbEvB2cbvY4f/6uCB2pRFVtewbvTxuQqfjccj0=;
 b=pA6IWOlxLnn26Mn/xc4nPUGrmiYDICtvpn2BtBmYgVHiyTv0LHyjM+W+
 K5zKp6SbUGzsOMzTlR7J/XXO5mIE0r71zVJDaYs1Pv5DJjeXtBwJ6ylm2
 +BkeBHTXMY2Fvvn7cN+eCpWI2whhb0lk2IsjbISKpeKPWkr3YpbfY3SfH
 EyQPpu0y4J7zUSE+iZC4YsrY8sTlD2VNOonbwMZueTAG/3mOKovQT5bbq
 gAZeMhIhGxIn/QQ5eUKhqjnBozyJBFndmTQgr9Ma0WelQPzWP9JAb6D+c
 IHKtZVBLidDhifr6d0QnvsRw+fktqfMvyQrPM2mucs2yf4jp5XRHaZVjk A==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179031"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:38:13 +0800
IronPort-SDR: ABwCg/r0wxy/GMr4z+xHFzcrkOObwON+4wpJ5sWhp/2WkTolwAh+ZNI33p08im/grTD0o7zCPH
 GSHUvME7HVrc4GDe+II4FaF1Br5IigSW0DHjsrNnwcrFF1Oekn1qJnOCkIlkgpexu0HbPNjIjy
 e4CceCWfTkyPVkvT5D0niY0SoHGlfDdL/inQUqRracR2hC2eDOpEgihbKT2xD6RiisVvmE7SiO
 26VT0Cww9vg/n9VcgPi2ZAW8tS4syAjO0/4fQTc8CZf1qkDMQ1XrJY3tnCEWtVOKHGOhCqYBtt
 Ju8=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:47:25 -0700
IronPort-SDR: R8Q9KolEh3PImyox87/7W5F4WfnjKn9AokTtEG8JHzcsv6doX1KaIZM3MvIfOj5RAKpYBrxCMr
 /3fXjE5iW/DBc3qqp6nWL11B/5QhR/rEzPCHCbWlJZOgGhD9QusBWHdV8vh8PYGCqAHe2eVlhh
 K3RuCuXGH7IcHS+jxNQ6z9oZKGDOM7QHSOgu89qPorP6Aw1/lDasp+n6LyAittcPC0Cdllo+zW
 38OU3IwhO7t8p9sPCOPt4NncqdZlitcCJIn/E9sMJU/CeaMbpF780n7UTUV5wBNgBH65mUwqlk
 69M=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:38:10 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:37:44 -0700
Message-Id: <fb78f4208bb5d1f4032be20d9ee1210468ba3f40.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview: The drbd code only adds a single page to a newly created bio.
 So use __bio_add_page() to add the page which is guaranteed to succeed in
 this case. This brings us closer to marking bio_add_page() as __must_check.
 Content analysis details:   (-2.5 points, 6.0 required)
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
X-Headers-End: 1q4K9g-007Ph0-ID
Subject: [Jfs-discussion] [PATCH v6 02/20] drbd: use __bio_add_page to add
 page to bio
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

The drbd code only adds a single page to a newly created bio. So use
__bio_add_page() to add the page which is guaranteed to succeed in this
case.

This brings us closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/drbd/drbd_bitmap.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/block/drbd/drbd_bitmap.c b/drivers/block/drbd/drbd_bitmap.c
index 6ac8c54b44c7..85ca000a0564 100644
--- a/drivers/block/drbd/drbd_bitmap.c
+++ b/drivers/block/drbd/drbd_bitmap.c
@@ -1043,9 +1043,7 @@ static void bm_page_io_async(struct drbd_bm_aio_ctx *ctx, int page_nr) __must_ho
 	bio = bio_alloc_bioset(device->ldev->md_bdev, 1, op, GFP_NOIO,
 			&drbd_md_io_bio_set);
 	bio->bi_iter.bi_sector = on_disk_sector;
-	/* bio_add_page of a single page to an empty bio will always succeed,
-	 * according to api.  Do we want to assert that? */
-	bio_add_page(bio, page, len, 0);
+	__bio_add_page(bio, page, len, 0);
 	bio->bi_private = ctx;
 	bio->bi_end_io = drbd_bm_endio;
 
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
