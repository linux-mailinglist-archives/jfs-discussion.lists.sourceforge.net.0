Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 552B76CF03A
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:06:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZFv-0008MF-Hv;
	Wed, 29 Mar 2023 17:06:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZFu-0008M7-M2 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gmg/nEFoDT2KcvdVtETEfPsUn5bcYaHKrbnC5/isn6o=; b=GdYZsqzMPzkRh0XDlpDuE2fkco
 D+AaSiM3jDU3MOx7a2cq+lPKRexRJY+OW7shuJkh8goL2GQrLpzDAlFrrpYL+tgljer9hKngv8oTO
 22IRbvTgHS4W7LSFaAesLgwBcsuLU3ak1UhV9+AQL92jAP+HTX2eDaJs0DN//4jsiRz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gmg/nEFoDT2KcvdVtETEfPsUn5bcYaHKrbnC5/isn6o=; b=c1V1nQi9gAJTPiz4jpIeCgkmw0
 FDrkWI6zWwdeahPfVUsOdRbx/UBkjBCNRLaNnz0o98MbVogUm0gvyxYkv0SorTN/Csh3cDZZW7OmY
 L6YLcTTTd/NkwElnEk1L9WnD9lXkgMfPzo560g29E1GG/vrCIyVsMZ7WCB/PjGWpt2bk=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZFu-008aXc-CM for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109598; x=1711645598;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tehGgAgqd6Ug1q0ulEduzG6BKUhY0WsPTR6+2QwYTdw=;
 b=GEYxYKyvrWiwTG/EQHkW409uZx5P1VP8TnxJRwRD0DOXr3ES9Qnwu2WD
 W4WYCrKVoSMyArm+SN8gSeKWTvre43iNR7vLX/JoP0jbI5rbXHE0z70gR
 qz6e4Hgg34iFpqlt0Cst7M1mm20+TqDmDKi64ziLyiUUAb6v9UUxWEgBO
 X129GPRGlOFuiKoEYBzgD0xktRoFT0a5ez5uQI0HMagbb949Z8+f1kepA
 EK9qXwW/cWeaNhuSNmQgPrSKkU4/Ata+OVtfrVG662d4XmBFgRpGMcptB
 Purb8Qt8X8r3JTGSX6XdL7emAeev1YLG6pBlScL4WdENno8pEClE2Hs/5 g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807039"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:38 +0800
IronPort-SDR: NWHaTAZk8MquvgBvyjAK96Diw48BZYwaBjiBegSoe6A5wfUjEC/4WDOziBrxhEqNITBXaloBtj
 e3zDEsX/oI+gGnl4i9d2YJmZvd5H9Us8KE3Vr4gD2vjlU2LcJg/5KsfI0SIKCnyZ1VDAMHAMvg
 ZQljELlYcAhlmi3bnfMayYnU687M35e61/DfQWo/YitJBiTzSaxDPcTVPlhf6loV4m0oNxQb7V
 0nozOvp/w+cK/1HQhjQaMgZ8Jl0nlSJUt9To0zj3XeX2ol3Tw/UT1eToauMEhF9OZJfq4xa0ky
 nmk=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:22:47 -0700
IronPort-SDR: 6+prpYoraSp9aFA1hXlXHyHu40E7L/eCAIlzO1/as7m+QuTtwlfLU6oRqm+u0ktT4yW4nPXxtO
 EVWWCSi0KFouza9iXBVKHiWfRjRCi3K8NXAjcFmNFaydHoskQ0l37e1TsmHPRtc6H6IjsIJnWc
 qpv27cTnKw5/oXlPKjLCcoz7fE/btbZpL05CDoXEXYjFbavUThVFCHI6KRsWesZV0+mBsx4ofC
 KwsVDJikGzCScu3CFwSWTYXEDPvbMWFR+EaLM1F8AZskQ1sONkyddBy6iSLZ2oemLVljH3RxOv
 qao=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:37 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:52 -0700
Message-Id: <492cbaf4225065838d25e04f8488528e50a52e3e.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680108414.git.johannes.thumshirn@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phZFu-008aXc-CM
Subject: [Jfs-discussion] [PATCH 06/19] md: raid5-log: use __bio_add_page to
 add single page
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

The raid5 log metadata submission code uses bio_add_page() to add a page
to a newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

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
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
