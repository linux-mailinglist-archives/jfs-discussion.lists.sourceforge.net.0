Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 947EC717EF2
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:51:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMJ-0005tb-DO;
	Wed, 31 May 2023 11:51:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMB-0005sl-HN for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZIbu0TX21EDIwOw8wIGcHvfYOz5FfA+fTkIFuK8R5i4=; b=k5gtrw13qA0IbR2mOm+9DEJL9e
 mVNa/j0J8piwqZKHmPwa9Jn1jE4nqXDFzSjU7wF5Botkn+JVZwTELMmniROWcxJlv6IpP/lBFq2NL
 Er07t1dXgsj5opWqPPiGawriWUClAqdvDrFwzGwnBZ722MA7Fswsnm3zEAoYEnuUVW7Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZIbu0TX21EDIwOw8wIGcHvfYOz5FfA+fTkIFuK8R5i4=; b=kBogLOz4zrIGQOnE3GxH5dPCqq
 +Q8FgJL2zBvA0oDXup7oP3q9iNP4rtvjs723sJXMKR5GI3fV6v0TTHzcpFqCPrWJ1Qb8pc77UhWEH
 hrDmjzCUbrKu59p/EPPhehFg7cocKNLkhrBR7dhNHO+flM78cog/K6JkU1M1F2rEzpv0=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMA-007QMk-Va for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533870; x=1717069870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KhIiE2PZNX0ldPMtUgXTcFhOjFzcO4m6Vc6He+n9TMM=;
 b=TBBrPYzJ7ZU2d1Nq5BQoqyu7sdANp60AD6IY+UEwPeYyhtm1rBoqukhX
 8NWTK+89yMK+pxwAegFMHoGCL5OEinGhElVEu3r5pV2mvutnoCsa4Hisv
 5CNF06uqvcyInd97/uPvOEY9BNyiOVaTnyf1Qekjoj2pAkKWF++Z0sO4+
 Wj3DYSQstdbhZa3eVqGaOXDDwYLzcmTZ/6AekFG5NlAF3ofdnVnsjaztd
 xbeiWzfBuoL1+wHSiQ6MO4IqfneudxIJE76dJjj5flyajdXzM5vOwDwb8
 5QELaXqjoJT2VRX//8iPS0IeinWe7rlYUI9sYSTdi4qQlfLRcEfWGIhY0 A==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179902"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:10 +0800
IronPort-SDR: Wa8UXQ73euYfOyIjSf6oLkGyowAs92jgFS4tj6bEvgm2m2mnDc0+HjgjrFFVfTNBrJPXVAG+yL
 86iBJSK1oppkg3/QTARfFkP/8m9y1vpcgG7JmIkps8heN0dWPq6RHNV6rxdq20fzba8JhAQU0C
 4TvbQWWS85032ZFdTEqIIohP3XnW4Y/TJxJOmuHB+79y+ZKJGqTJOJaXjY8UjOjPaDwmNEWO3o
 0kzc+cbV/faQqZQv9vQmDzA7EIrwonwysbpDOyitMW8kmuz4mg2PJWSHuXgiKQoRbf8WwTgKL7
 Aw8=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:06:03 -0700
IronPort-SDR: f4sky3ehrJxiT/WAHaDyDgGjgkEGaBVQ9Ynqzb+9FpjL0wrWalF1YoF39q6U55+/vA10v+md4S
 xA+EZ1AAvJbX4CPvXm2q38H3efX7qrlaeAvxzz0OHLkK/u2zsBNbVKWqTmZi71JeCHDpbVB39S
 aUtkeULE6SgapnBoQdZNAscRSiR6/B2TGee/piMikW+A9bCZVdTSYmVNk+gXPXJSo+BoUGRM1S
 G6csNNGPboiDcVMzRkpPA8s+7n4Mf/m2BO4bnujYmZkdKcmmY1nC5gkfsQ85PydSyrrQfCFnhg
 xVI=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:08 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:29 -0700
Message-Id: <832a810d6c9e71f88b0a39cb076a8c70e8bcb821.1685532726.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685532726.git.johannes.thumshirn@wdc.com>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The raid5 log metadata submission code uses bio_add_page()
 to add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4KMA-007QMk-Va
Subject: [Jfs-discussion] [PATCH v7 06/20] md: raid5-log: use __bio_add_page
 to add single page
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

The raid5 log metadata submission code uses bio_add_page() to add a page
to a newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid5-cache.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/md/raid5-cache.c b/drivers/md/raid5-cache.c
index 46182b955aef..852b265c5db4 100644
--- a/drivers/md/raid5-cache.c
+++ b/drivers/md/raid5-cache.c
@@ -792,7 +792,7 @@ static struct r5l_io_unit *r5l_new_meta(struct r5l_log *log)
 	io->current_bio = r5l_bio_alloc(log);
 	io->current_bio->bi_end_io = r5l_log_endio;
 	io->current_bio->bi_private = io;
-	bio_add_page(io->current_bio, io->meta_page, PAGE_SIZE, 0);
+	__bio_add_page(io->current_bio, io->meta_page, PAGE_SIZE, 0);
 
 	r5_reserve_log_entry(log, io);
 
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
