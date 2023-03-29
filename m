Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 116706CF038
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:06:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZFy-0002bg-PR;
	Wed, 29 Mar 2023 17:06:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZFw-0002ba-RU for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ffTON0Kh+3rXjuVpsfT7Vu3uoqtPOS/kkdvUs5WLrAY=; b=ZebcwX1UTDyCi+aycavBxDC6cQ
 u5+HhVsKqLWra2tuC9V8ugupnvI2/zSmdFPs3X63H9RXfLPMMssL9BFh63prPcsylf5wxVo6qkpdr
 XvjSZGaZSAfAlSf/ZecPXSupsZB2AmwKs8JN9/8rsIyG0ybH71a9g7iLqhk1KHZi63jg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ffTON0Kh+3rXjuVpsfT7Vu3uoqtPOS/kkdvUs5WLrAY=; b=GiLdCU+LyR1i4qd6sSyEGY3oB7
 GUy3Y/FYqtSNTLW+zLZs6QKbhyIPdKoqq8I191UnSIZLbDfAIcrX1wXTOEQynyzpmLuJFJZR4HQmh
 MxUMTibR64uFz4eKIpmSb+g7JjgZWQK90gVkJjOquXyUxcv/ChpLnpSBcUbZmkl0V5FA=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZFx-008aXc-79 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109601; x=1711645601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q/MP05JbL9vu4bkJls/w75JhMUACKtyWcGW84ceCR9w=;
 b=VXfIha9g01T508W8Yz0QixXmDqP/5MjDLtF0U1yi+QKYtftkpf2E/SPC
 /mUD8jjWLkSC63MPSUoHzITQDVStylx870mtx7dKowxZbOQH5ycWUSyNi
 O+NIP8VXhuftUShr/P1PknMi07Da46qQoMx8jIieKwzkYi0WAQEigNjBT
 uHRDD6UF3ABzqax4p99yrk8qojh7pkojZ7JiADEooKIOm4tpegmbZ1sFn
 PqWDznOeYHCntQJxilvRWUaX10FebmTh2USv8t/wY4xaVuBIahZZE6sD6
 9MewX0edjrcYTGWuyWwDEg95a7M4Ljhg9CIcm59Ik+ck4GT/h9B7+Dq2M g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807047"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:40 +0800
IronPort-SDR: EsmlB/x8BWcNd8a7Sxvrguz0m94cwG0VLyoO4AuyibXxZeMASRT3gR0sbNrLPDDxXVvLGULu0M
 zgbycBSOaHAolsv3EEWyns213O9sHYkUn68O63cGqqcnhRxawm04qFoL6NWRgAc2B10iaYCkzC
 KQ8iINjqYflK+7vhRpuSWR4i6l0duAdzuVjidEwI9Bgivw5PZkFkpLTlgYOBh0Q4tvn2yIerbS
 R5okCMd8KOwhPQFcNugAMJMA/BiDi/pisP0P+aZYq5LFdXmnJJsg//zmrnUdUkW5aPB/VC0XI1
 kok=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:22:50 -0700
IronPort-SDR: 0NfE3MwgkRGnbsEfrD3apWVDkRRWW7BpA7q/3BVNoCtKDaOSbe5GU28nZB2Z0Nd+ot/O74I4+M
 JfSMorqce3BJ99gveZBSA3tXb3rtCze2wGqglc96V0F4bjY5VAmksMNFrMU4tQ8Fio4zpCh3pF
 xACTb67zGAy8FiCgshGR/AfPrmuBbIYsQe+Z+dl2z3ZWIDuzh9xoVO70zJS6Sz3VA9bGxsm9+b
 US/RqUK/CXiZRj0Wy3gVSwcyo5L73qLzC9KscH/xn/Y+hWXc2XyYuRcML08nlwTplE7o58ytpj
 uSI=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:40 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:53 -0700
Message-Id: <7ba6247aa9f7a7d6f73361386cc7df5395436c33.1680108414.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The raid5-ppl submission code uses bio_add_page() to add a
 page to a newly created bio. bio_add_page() can fail, but the return value
 is never checked. For adding consecutive pages, the return is actu [...] 
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
X-Headers-End: 1phZFx-008aXc-79
Subject: [Jfs-discussion] [PATCH 07/19] md: raid5: use __bio_add_page to add
 single page to new bio
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

The raid5-ppl submission code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked. For adding consecutive pages, the return is actually checked and
a new bio is allocated if adding the page fails.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid5-ppl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/md/raid5-ppl.c b/drivers/md/raid5-ppl.c
index e495939bb3e0..eaea57aee602 100644
--- a/drivers/md/raid5-ppl.c
+++ b/drivers/md/raid5-ppl.c
@@ -465,7 +465,7 @@ static void ppl_submit_iounit(struct ppl_io_unit *io)
 
 	bio->bi_end_io = ppl_log_endio;
 	bio->bi_iter.bi_sector = log->next_io_sector;
-	bio_add_page(bio, io->header_page, PAGE_SIZE, 0);
+	__bio_add_page(bio, io->header_page, PAGE_SIZE, 0);
 
 	pr_debug("%s: log->current_io_sector: %llu\n", __func__,
 	    (unsigned long long)log->next_io_sector);
@@ -496,7 +496,7 @@ static void ppl_submit_iounit(struct ppl_io_unit *io)
 					       prev->bi_opf, GFP_NOIO,
 					       &ppl_conf->bs);
 			bio->bi_iter.bi_sector = bio_end_sector(prev);
-			bio_add_page(bio, sh->ppl_page, PAGE_SIZE, 0);
+			__bio_add_page(bio, sh->ppl_page, PAGE_SIZE, 0);
 
 			bio_chain(bio, prev);
 			ppl_submit_iounit_bio(io, prev);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
