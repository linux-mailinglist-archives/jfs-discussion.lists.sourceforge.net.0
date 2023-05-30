Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF10B716794
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41ba-00085O-Ky;
	Tue, 30 May 2023 15:49:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41bZ-000853-3Q for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lesC7ZHzHc7ah/ToJ8yOzNcL34jZPc+O7TdhQ2cqcu8=; b=POMXO093UHFZ0Y6OHFALJnhcsb
 zYv3Xn/m4SUVXq3f68lugbhWZXv2OsxmaDTvvJkDiwrC5XbsL7v+AIC6we6PkVBGJzepYXXbtvS9v
 FiorNH3LzSS8/boqlD4oiBLrvuHpcB84WUhU5AiQlTfHPaDm/H4AtiEqvr2uCHysyio8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lesC7ZHzHc7ah/ToJ8yOzNcL34jZPc+O7TdhQ2cqcu8=; b=a5H0Ac1iiVluMgYqwT/R4JGdpl
 Hj1e5tAF6Stx6fjDbOmMERD7P++UrPzueaRdk3SYEXiD12gdIeFOMeSnAWL4e3Bk5Lmj2AfB9WDMh
 f3RFtyw6ArRan7tAxz9RvTKeFBSUEWSpkX1p9AMWnDSWbjeiN66FASwTs33HP8cH3TCE=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41bZ-006ft6-Ey for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461789; x=1716997789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mEDf+2bPYBdApkRtQGcrKQLhlyK4U4yv8ooj5C9H9Fo=;
 b=o/WD03XlFctcGVjsLT9m16PVF8BATb/Ts5UmSbgzd+SgVUVfXMBYUlv4
 JdVsH746NE+eL3DU5peqbeaO37CQp8jbBK/85RVHkASTf8Q5Od4eCGD5g
 uxSyWoCLl6LD+Prc4Lzv8CMBorNq163QQ4CpyFHIgggvuWF97iI3Sam4w
 dAU/i1PVLRQ3ujZP8DyfoypP3olF6OL8q+XaejbK2nr8GsPH2n0LYv1+j
 0sPEs6EjJ8yWpyH19zmgYBsPFGrkzaYtWeSotMkoqei4Q/H2GRX6VMGPP
 W4UYOc/FMxMPrFIQMr3qhEjH/7XcG9uOgOtww9hYARxwbql7kKAAL5+7J A==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="231905698"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:49:47 +0800
IronPort-SDR: jLS42Kwsm9WesJiFS9UwqVFbSCd9daPvMCta22OB/OKhW5Ocof0hOKeqZi5eLpE70Q4CWimm1H
 fL6qDt7TBfgYy9sRRi1Alfxaymc1sDRQQ34AUiDddASwXrXlzaMIKBey/PKipt1DC9QaxUXBac
 9S+2MruUu//AYqUBj87I7vu5L2Mxp1FJNFhQ50bCvnKKTrntHBHqwL0FFn9JZZb56KUZAD5bUI
 O/+9AbhWnPh7V6BwI9q52u2zt+ZIPAkwyGlUd2tphEwMRdtuagEFyAcQWS5qX9oFw07rG0rONf
 fxs=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:04:41 -0700
IronPort-SDR: MKlOX/uF8wNEct5950xnnV315MLl9jdeWlyzj552Na9mJDZsmp05yot7aD76Oi4Xbupl3BrWor
 CH08la1ldQbZ9LbsD2PbKhD1eEz/Wv7IO4J88KwTSohJz4Tcq8kYJ5TJv5OIor4ThvImZ+P9EU
 dnuo5e3IdJkZtM6PymLdROP06o8OObtizuI8cob1Ebk7RJhUIOuDEY5ObLtCjGKqVpe5/yRxRA
 o0I5mrkdFpgizKWYnBAUJNxt+kr6dHKCyqjCW1az0geORLLKn3tAB7Qv9196t3xurORVn7mWMo
 rkk=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:49:45 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:09 -0700
Message-Id: <1ee0465c7b2634a4435e65a4d0b06019a73d8389.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The raid5 log metadata submission code uses bio_add_page()
 to add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
X-Headers-End: 1q41bZ-006ft6-Ey
Subject: [Jfs-discussion] [PATCH v6 06/20] md: raid5-log: use __bio_add_page
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
 Hannes Reinecke <hare@suse.de>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, gouhao@uniontech.com,
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
