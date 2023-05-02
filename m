Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A57076F41C6
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:36:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptnMp-0001bZ-Io;
	Tue, 02 May 2023 10:36:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptnMn-0001bR-IT for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mqIUrqNVGCwy6lBpBSFsk2biO0lsFrgRXUvYqQ444Oc=; b=UeMUDp2W9iXWuLqPKmajfmLw6F
 h53DsQEX1PqIFYt+ufcXs/+WmJgLPwwbQNXxvRSbYZKYbwgVzDgW+bVhUToUUMhGyAISk3LD0Xbqz
 HHQREF0fTdq7xGcPYOHO1i22ukMlvo4QY00pJmhgMJNKcnpys6QEuSy9x1bdRqLx7too=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mqIUrqNVGCwy6lBpBSFsk2biO0lsFrgRXUvYqQ444Oc=; b=T78RWcJMdDI9C4WCCMDyoaqdmM
 Hgnbz4Xx/V1KNa3Rz4sl98rtdEAM1Fu9PEbmmCJd2pEL4UmGojCc0N4oK1S9mSqwnu9a6UmFUs+Yf
 1d8FUjDxeSljN7TWJGWL4BvvX6vi0vC/RG0DBKSgQWj+++9UEmUHZ6f37jrDNQStxnrc=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptnMm-00056p-1W for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683023775; x=1714559775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9iZj44wPsEck0/AFW/flWeeHkPYU6GMDPlSCG+jgWZM=;
 b=ZBCb/FKtPtQ8xV3Cr9tX37BWdKeun4Ria5SC4K69Wv8gafSCOw4N0u7p
 wwbyFDc5T+CeHS8yIsL9oLmCIHevbJSA3ndBAJF0jb4+WGNC7AdWWJZji
 veYXUAPQ44c/sc3SUIxdnDzf+sOKFLm45Jo5MqeHBlg1oUGKrzL+X0PAs
 FXct1SchhRdjf9tE9XnyrZH1Lz9IJF0RPVPugDnjNCo+3rPmXuToFB5oO
 GNUKFUHSPp/wHqh65GKfeb/YBMG3ijhZbnI0Q7QhRo0mkrr0k6gSoweJA
 XiTrjQWNXk1NLwBXPtJ1YVwkE1bUEkhEGAsmfq7twgFw6OhHp6D3Z4MPd g==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="334136130"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:20:40 +0800
IronPort-SDR: mUHAsj5tQ3IpTlzD5JT28C1csKIg1ok90yU+MTRnQ806yUdCfboy+RNkH/QabOa8+hm3sSZ/08
 UNkhRvqWB1PLjo0XnIRzHysr3yBdMHrjD119nYun/5QCYTD3p2AWQXjQTZ32Pts8w6eMiI1sDv
 czxh4Il2CFQ1My4UXdWXsTdgyelY8QErS2JTAUCqT8g7MDbpI0z2mvdHFcub+6pdbUeTTjXPfp
 /vj0BRthDebKouRNa/OexrtDtLeHDPolBIorqcmBOtLvj8jHOMWGKSRQK3M5/utRCwE/KjupjX
 UTk=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:07 -0700
IronPort-SDR: 02ts8M2ULEXIIQnCeKUUXKET2iYQVZOPeI1lsh12iKPVk+qnVNbuJKmlBBWt8kg6vDqANkUPjP
 S88ZBNuvUPdOJIVrPg/7LZtYELJoOWVn7WGdO66mTrgszCRUCBkByH5V0TlXgfYP8a477LSy47
 8PsG57T0aCd8AhDDweyJ+TxqQuuSlzTrnnljw73aoxjoLO24lM+jJrGrwmoTvR0RGn4d8si2DH
 oPX5IDnKX5tdhmZVSe+A4YScdD2m+NHjpjZHCz65IpUJaZ8b+bdBmJW9nFreuq8/HgVWuI80RN
 TgM=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:20:36 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:15 +0200
Message-Id: <20230502101934.24901-2-johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The swap code only adds a single page to a newly created bio.
 So use __bio_add_page() to add the page which is guaranteed to succeed in
 this case. This brings us closer to marking bio_add_page() as __must_check.
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ptnMm-00056p-1W
Subject: [Jfs-discussion] [PATCH v5 01/20] swap: use __bio_add_page to add
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

The swap code only adds a single page to a newly created bio. So use
__bio_add_page() to add the page which is guaranteed to succeed in this
case.

This brings us closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 mm/page_io.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/mm/page_io.c b/mm/page_io.c
index 87b682d18850..684cd3c7b59b 100644
--- a/mm/page_io.c
+++ b/mm/page_io.c
@@ -338,7 +338,7 @@ static void swap_writepage_bdev_sync(struct page *page,
 	bio_init(&bio, sis->bdev, &bv, 1,
 		 REQ_OP_WRITE | REQ_SWAP | wbc_to_write_flags(wbc));
 	bio.bi_iter.bi_sector = swap_page_sector(page);
-	bio_add_page(&bio, page, thp_size(page), 0);
+	__bio_add_page(&bio, page, thp_size(page), 0);
 
 	bio_associate_blkg_from_page(&bio, page);
 	count_swpout_vm_event(page);
@@ -360,7 +360,7 @@ static void swap_writepage_bdev_async(struct page *page,
 			GFP_NOIO);
 	bio->bi_iter.bi_sector = swap_page_sector(page);
 	bio->bi_end_io = end_swap_bio_write;
-	bio_add_page(bio, page, thp_size(page), 0);
+	__bio_add_page(bio, page, thp_size(page), 0);
 
 	bio_associate_blkg_from_page(bio, page);
 	count_swpout_vm_event(page);
@@ -468,7 +468,7 @@ static void swap_readpage_bdev_sync(struct page *page,
 
 	bio_init(&bio, sis->bdev, &bv, 1, REQ_OP_READ);
 	bio.bi_iter.bi_sector = swap_page_sector(page);
-	bio_add_page(&bio, page, thp_size(page), 0);
+	__bio_add_page(&bio, page, thp_size(page), 0);
 	/*
 	 * Keep this task valid during swap readpage because the oom killer may
 	 * attempt to access it in the page fault retry time check.
@@ -488,7 +488,7 @@ static void swap_readpage_bdev_async(struct page *page,
 	bio = bio_alloc(sis->bdev, 1, REQ_OP_READ, GFP_KERNEL);
 	bio->bi_iter.bi_sector = swap_page_sector(page);
 	bio->bi_end_io = end_swap_bio_read;
-	bio_add_page(bio, page, thp_size(page), 0);
+	__bio_add_page(bio, page, thp_size(page), 0);
 	count_vm_event(PSWPIN);
 	submit_bio(bio);
 }
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
