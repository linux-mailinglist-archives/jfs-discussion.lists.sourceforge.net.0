Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A004717E40
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:38:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KA6-0006rk-6D;
	Wed, 31 May 2023 11:38:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KA5-0006rc-6P for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VFstOFR9dzYVb1+kw7n2RDQsCPpdALjz5MVzELWluVI=; b=Xw+1WWsp/28D9RDfRczGL3EGdH
 Mvf9HPZrxAVOqAd9B6vLagWCpCc42Jz8zz2pqhBXSqoCPsXh9YLPFC6WZpnJ8AbsTaco85xqG/rrR
 WQpPW2/RTkWrhd8NmkVaHKQd4upM/X1QJJtiKGfuBAlf082BgfkKlTiALxutMMQEuIAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VFstOFR9dzYVb1+kw7n2RDQsCPpdALjz5MVzELWluVI=; b=KlYsRrzrJiaq0nzxkjh2B/j8hg
 uPOqVvvmJhYElY2pjAgAXGFcPsAQqHMKNkV3uQmMEKaNSaDVs1AdTHQL2SJrYImhsCSox9kL90IHr
 gmdW2DcQJ9Rh8MK7RPC/SO3UkZcPOlHF7Dy1lh0vwPoqhj8DWp7kHFVK6ToMis1bHwrg=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KA4-0006rs-T4 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533120; x=1717069120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eFPese9aJpJiKXeG5e/nRQTUpeUtTBckLQcuuv9Sgrs=;
 b=nqNwHmiRPwq64v5UbQvKERl6WsRR1ZuIscT4WOMtHENwkLU28kQZdrj8
 DWETOIUtD09MTtV40qu2OPqR5c4LcZX6m8VsSZa1cg9LOagshXK+39fRU
 R+EVxD4WQNgykmvgcTo4OGMNIbUrISiPBHOHIJf4uZk8q40PdComGmkgp
 f5QvBv+CpkI8DpUAfxxrUp9t4Nf1rkMi1LD38OUJyCZ21hztrBk3s5bsR
 zkWgrzXThAOxegsITTO+BGGi5gwp4JRvb1354lRAvc6KeNBQ2FVRTB/iE
 BdPGyhZ9Pybh2hMu0S6BqetaLK4ofT70YCeZdwvUIvNwPAigLwDZvdFnu w==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179089"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:38:40 +0800
IronPort-SDR: 1TO/vLztI47zboZbTeRC0ND+ceFkGFwh8/qrq26v6/W51vUKlZ+K/91BVAJ8RyeHxGfpqb7Vnm
 r8fyUXcfN6Zg0lPpcxoEXp8pZQcK6iTLfjTqLy14FWKPzu82+UKukVw9rjME7sbp1wJU+Q8Ncv
 /QsZr9WArfjD2UOuRSBFfKFgsN9GDP4tIcjmWiH+fmrXZ45Tgb4iLO+RHVEEwswoGY3dlhMg0k
 vNKL2yRaDQJOr4EfXazUyeuvISdOxw0cllQW2dPq7N3krZcYnqRJI48NLHgI31CzwSQy28G3rA
 FFg=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:47:52 -0700
IronPort-SDR: ujmc5KoLs2DdynhiOjmCBXuRbkAVlZaPLEkofuqzDp+6R/G/lfzWOIkJ4otd+Y/NwVPeJknlMa
 nqO0wauwh/h/LndRpEByTM63QCqInOoAtv9SPXGQUfOBk/R7A2Upc+PH8FkpQ3kOkBxabSx01n
 FxU/FSeRFYb5OQUIG1immw+PrJLj/4ofWGsdxlWSNgU6KcM+Jy0YyrdLhWY33+3QGX9WvZMDg2
 wGMO5YfHoS1LKUknGpUHGRw0ZtsrLt3flydd2oM7EKdd/f4za5a7A4H2ygIdgtB9hbWYzpsUVk
 0Fo=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:38:37 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:37:53 -0700
Message-Id: <b7dc01dc0523e3af5a3c50d0ac1f98cead699305.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The zram writeback code uses bio_add_page() to add a page
 to a newly created bio. bio_add_page() can fail, but the return value is never
 checked. Use __bio_add_page() as adding a single page to a newly created
 bio is guaranteed to succeed. 
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
X-Headers-End: 1q4KA4-0006rs-T4
Subject: [Jfs-discussion] [PATCH v6 11/20] zram: use __bio_add_page for
 adding single page to bio
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
 Sergey Senozhatsky <senozhatsky@chromium.org>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The zram writeback code uses bio_add_page() to add a page to a newly
created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/zram/zram_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/zram/zram_drv.c b/drivers/block/zram/zram_drv.c
index f6d90f1ba5cf..b86691d2133e 100644
--- a/drivers/block/zram/zram_drv.c
+++ b/drivers/block/zram/zram_drv.c
@@ -700,7 +700,7 @@ static ssize_t writeback_store(struct device *dev,
 		bio_init(&bio, zram->bdev, &bio_vec, 1,
 			 REQ_OP_WRITE | REQ_SYNC);
 		bio.bi_iter.bi_sector = blk_idx * (PAGE_SIZE >> 9);
-		bio_add_page(&bio, page, PAGE_SIZE, 0);
+		__bio_add_page(&bio, page, PAGE_SIZE, 0);
 
 		/*
 		 * XXX: A single page IO would be inefficient for write
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
