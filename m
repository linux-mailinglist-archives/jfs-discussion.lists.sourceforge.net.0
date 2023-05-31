Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FD1717E39
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:38:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4K9h-0005dU-44;
	Wed, 31 May 2023 11:38:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4K9f-0005dE-Mk for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JFwZOevzZPaYPPGYr1w21C+cJT0TV2LMpZApShUn0g8=; b=GMnFIerOZmp6bTRux95Vcu1+qN
 ASloLL5ltqpSLDSSzNRvxOKCJiAFxwKL5S0NP8vniFkoLVjfLFJsWeyLjffssuTuuhzti0VyV1/P8
 OKedgV+AU0bpOZkC99PtQ0iyMsOBCw0FsTa29mbLxMmkykGn/AOmRLNj9+WJ+6REadlI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JFwZOevzZPaYPPGYr1w21C+cJT0TV2LMpZApShUn0g8=; b=AWOCkpzDfIjAsuAx575MXmKqNq
 VeH9II61gUta0FGXb5XDGs7rN8L5bRCBEZsbkPzqU0zVfHeH7oX39uwlvGwEDiu1DDcIDH7hA8mKA
 bSdlq7Wk+vL3me0KcCm7saokZplOtGO4qBeyoh9gEQBHPfJOOTWaUhVVdyQeKybgLzuQ=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4K9f-007Ph0-Mf for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533095; x=1717069095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QmZzem9nS4IdX+YpMPH6/hkU8Q8851NfFydLySYg+TQ=;
 b=FShKy1Gk5ntSfSD0TKODW0ZQEfOq7KJLzYtNSJwy5Opx8+6JUWkaXPrQ
 D++6drgTRuPFBpY/b4gG71bXv3Pu0y3KVLC/VLzD6xfm0C6NYGQNQ22X5
 pA9quIQOpdq8Wd4q7cxRPpmWttI8pqZEhrPGgPbis+RAGV5N/SLQ9+384
 AiJbeYQ5VJegrxvUY0FAi97nTIZGseQt/6dP4PuDhpgbqRLFqUyMcwgpc
 Cza5uG1fu4dDPb0vXBzkP0sPDENSuHqShtVvnoNxhZdKWXm4/qIJ9zen0
 jw4Wp++kr02d1xWcVJ5iEtnRPFziZJKvaIj80TWXx/82PSiMw9GZWpBpd A==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179018"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:38:10 +0800
IronPort-SDR: K3JGRkxlE1idaZwVSOsEbgRBA0yawKvrPH5eS99292TrmzaMfDZLXIk1B2JO5uK+00C/X8Nx1n
 2g08VtEFQt/gSMcPXIsRUUEVuB4gZvH7oMoSXKYt3kgS6zQn2g5YKOsce7lgfIbfbuiOWvP/xw
 ahjezzlcdmVHRUun3fwrmCrySF8yQvSnuRZEeYDUDFbjhlZDtN5wavKu9bW48Im5cWtEt6+gby
 HqJKlGDXTP8O7Swa7G0mMTaIW7Nch3coYXEi8XLBP3FU4etHMWX8FaUSUDfXaidOSdm6e0uAPs
 6Hg=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:47:22 -0700
IronPort-SDR: elnARq94Fzfs9J/SRdQfPNSX2Mj47szsB+03GiXquQ2ST3HVuP3adJmqVxYOTx4q+O3Ar0gSDG
 obKu1tjEmPaDp0Baw6hhej1TiKvLCydrnnSOivc5pAoD/cOgpqCNYnEP6/Mqd74RpC+Wx0vSBH
 GI3+WyE4fAK6iQr0axj5aoe3KHl8hMhJY0SalgRpsyxXvDMZmnHERLU4aQaTJg2RMSrIbWgvpC
 3iHVAQtCOiND+WXOqNqjAwGt4qQsXSe/P0EYzlIb2M+HDt/lrHj4VzKNRsn7VyLQUoD32UrxG5
 92Y=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:38:07 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:37:43 -0700
Message-Id: <64f8ac179cc54aa316c75aaadd71e107ba12917d.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview: The swap code only adds a single page to a newly created bio.
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
X-Headers-End: 1q4K9f-007Ph0-Mf
Subject: [Jfs-discussion] [PATCH v6 01/20] swap: use __bio_add_page to add
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
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
