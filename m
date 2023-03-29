Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 622646CF032
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:06:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZFr-0000dx-7A;
	Wed, 29 Mar 2023 17:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZFm-0000dp-KF for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XBVoGOaxFjX7F249TlpPBZ0ayzeIHnTslvlScVx5NcE=; b=bVqltnZHsjf+0hwq9g23GMd8aY
 b2v6bYZWgbKemRNru0QzgJSkhSzAgDg0OyW3li4UWf8YvuIeM+B9zrVPVQMya28ggoKvaIOnWvV0o
 SeaRtGDPkiInDC/M20GAt31xXUVReQG+rYeGeIDc8udkHtYL88N654/uCT5BLLHyq998=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XBVoGOaxFjX7F249TlpPBZ0ayzeIHnTslvlScVx5NcE=; b=HeSuecxZ2IDp4eKrzpuLvOvUnz
 EOpbS151gIGPgU3iAoGxATQtaQLMexzznOC2GnAj9W77P3Yzxea3ed4rpOEH6qMpzR+v3HbT8cn60
 FGvCrNKDmDF0KQiK31OhtvF352hxPxL+KiEXC3KWKOzsAY4tLn8NOzUl6ZfTuFOQdgao=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZFl-008aXc-7l for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109589; x=1711645589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b2tfkQJHOoMo9xPMUAirVs15MwxpHItWsELh86gGl5g=;
 b=OpLTBt9HB7HNpB/th0V5kS9hT3M8N5H9sMN8ys+AXKnx4m6JZ7YpuZ3y
 s2hAzsdMLsAFlXbEtoL45avaHtvPO9zr2/9fzcq8+jJv0jQdhEFYrzQKq
 2B2wE84osOXkGVP5jEeyac82Kmh1ca7ZT5hUMSP3zUm9UuQv9LoLIjT54
 fu4rIFbMjGZxB0r2P6VPNC70x7Dvp4XnZBg1WAoC1dG1CGyejm08mYhEa
 uQfqSnOiAFHSY4Q0Z0YMO6TtVf1n0QVORf/U2tQ08CCTCm8ZFiXSynEgw
 dRWcjGO1HhyHCXbJjWBncZd7PRXS1suNIOuw6zq8XW71pvnZ79Hquu63F g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807012"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:26 +0800
IronPort-SDR: WPr5yze6U1GBj/MDFJbRODop4/CQ8ZYt9RkP/wSmr/12kbSpY/RX+h+7jrjHkkigj8MrZn70Rc
 +4c8j2TVkDzY0GlwOtNTA0a8/OBVsXaNyE7BCM+BG/xvMWlGjgAIaQtAMCgsV2wsdEFTTsoAtH
 yAjKEwv8ELw6wsuMcAP8av3YCvp8sZhbyDnIO0umdpVrdsn5A3iZ3bCCPvHTqHvFd8Pp1X9p2L
 OXUg4TzivoGHQoOHa0rHEntwudNteq8He7r6U/CHnz3H9wjDcC0SvkhuBsFPy8pcvgUojW9ESg
 D1M=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:22:36 -0700
IronPort-SDR: oN2UR0L9Ic/bC5ZlKdub2hL2B3WzSMNwWPaTts8Go9tRNUBzKiBjVMXtPb1MCBqH30XhfX5VFK
 r3o3y5lK4V0syF4FJkhuPmKVn0NSvYTqzCGIASu7aUGIjtgkWZfbeiTvlj5dp1GTJ+SAbWxEQ1
 bH84aK1rLSnMEBKGsMwYaHXGhkfZPfTCuxZYs+HVziD2+k4Bdwtx3+/JcWFce+mApOYNcNV45r
 3t5a5tYLJENitHpxBEddwdCKeyJVZy3OKiWBV7xOctdwFhAm4r3Z/fd+xkk6SD/0qdXQzGwmhy
 sn0=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:25 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:48 -0700
Message-Id: <87d0bf7d65cb7c64a0010524e5b39466f2b79870.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680108414.git.johannes.thumshirn@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1phZFl-008aXc-7l
Subject: [Jfs-discussion] [PATCH 02/19] drbd: use __bio_add_page to add page
 to bio
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

The drbd code only adds a single page to a newly created bio. So use
__bio_add_page() to add the page which is guaranteed to succeed in this
case.

This brings us closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/drbd/drbd_bitmap.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/block/drbd/drbd_bitmap.c b/drivers/block/drbd/drbd_bitmap.c
index 289876ffbc31..c542dcf8c457 100644
--- a/drivers/block/drbd/drbd_bitmap.c
+++ b/drivers/block/drbd/drbd_bitmap.c
@@ -1043,9 +1043,11 @@ static void bm_page_io_async(struct drbd_bm_aio_ctx *ctx, int page_nr) __must_ho
 	bio = bio_alloc_bioset(device->ldev->md_bdev, 1, op, GFP_NOIO,
 			&drbd_md_io_bio_set);
 	bio->bi_iter.bi_sector = on_disk_sector;
-	/* bio_add_page of a single page to an empty bio will always succeed,
-	 * according to api.  Do we want to assert that? */
-	bio_add_page(bio, page, len, 0);
+	/*
+	 * __bio_add_page of a single page to an empty bio will always succeed,
+	 * according to api.  Do we want to assert that?
+	 */
+	__bio_add_page(bio, page, len, 0);
 	bio->bi_private = ctx;
 	bio->bi_end_io = drbd_bm_endio;
 
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
