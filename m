Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 918B66F413F
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:22:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn8i-0006NC-94;
	Tue, 02 May 2023 10:21:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn8g-0006N5-Nl for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KaSFDGkhunda3gtibHVAaJqYH3WkPsJ5w2IIJp7VLpo=; b=DSY5uAlA5m9a6cMRHx4PfipPU2
 M24YjmI6InJVXgTCd77XZ+fYtzQnDyeFFNpsLNOXe25zLmdhTS+VQknGQlG+wlKqPl2O8dSWyI8fy
 8SOakgXzd9FEnRj0EEvtnIP/48UUqkulg9hgPAx4M5wMEXHX6Ew72hFFN05Q0KbdfnO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KaSFDGkhunda3gtibHVAaJqYH3WkPsJ5w2IIJp7VLpo=; b=mSz8pm/hxlplFI5+KFx4vco2kR
 hiDsVmQMpReZtkScCuQ0iO8WvH4NpfO6Pf1gYh7SBzc8YeZ5ndffEAfca/REzUYKcZF7RNwJGEblh
 WnGJg2CeZWC5Pnd0KjNKegJj2w1yLx3jcBE80rzbH9CDV2FlGpBwWBTdQy7Esay6i1Hg=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn8h-00BQe2-0v for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022902; x=1714558902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Izz1m415iRpIH2KEmuCSasFE37owqNrtjCwL859ZmdU=;
 b=gNwxEOf7d+2MUz9Kgo5S+hyc+jbp/Na9z1Syh5FlkHDPB2zZee9yiphV
 jdkq1sGI2/kYzzf7CgRoWPowyTifIKFpppWMGg0dyc5nVmUVIT8uqetaB
 sRWJSSO+3txQTM6VSgOphTm1onPyTn8CegUhUoT8v4W+SyN34bx6oo6mz
 fmc47wFwp77Qnsh4HPeGdOhd6aimbVUgAaJgtZS+DafX240uwWLY4Qm6U
 3GnsJthRApMe52Bzi9DDoh76hTLkyiD2VzWy4a6dx4Qh0AgkvrN7hBlPl
 NJhI45d6m7S1PqiWZIz5sJ0BlGzPmgEEzWn7zfZAUytJ7ki12vUAqxGRW A==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="227916303"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:40 +0800
IronPort-SDR: eLvmhwlu800nIfC1EZaJoLZgtrJZQGoLOGK5BoME7YDLqpG7klT43mb0qIuRJ7acVJQqfh70W1
 oSIHRu6BjFP82BJcp7DhNBkiAh4KV4gg9rofV4mtnx0yLmRAOk3ah7HUpOUaXCWSstLvsvnNEc
 J7C+Sg2elIRML8eEGpU9EEbXKiJBKbit0NvHH1XiP9XOkfkRHB4A6GkKtlZQzkbLEAEPftVaKO
 KH4W8ES8zB3X2jmKNkC8vySaLw1GAL/xj8oS56XlLoPuyHvZypjAo8JbxEM0hZfG+Bdfo/W9o8
 Z2c=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:37:08 -0700
IronPort-SDR: 8hfezwIRYSWrrJUCjb8qjdEWmvQTAb8oREcSmYVL+8wk37Pg8Tp8roG1ZW+mjz9+6QAe4BsYpR
 EmWDRLcNeuJA92n5AIBbxiEh8eaf7kNTQoJEaoTjt7fYdn6r17LR46CVYDGJSihbaVMPma1L+u
 Irr0Z59+CdymlR+nAOTRZX3GKZJBGdjXU2UbPpLAYvOc4YKURimKOUi/xKoEJ7xmEC5Nk9TAiH
 owgOpkXcZgnwpHauY5btjBdZk+mI0uRcc4XS7SdsdzmLtvgoeCacNXPcdywNwlmur79/2ZnvYn
 +MY=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:37 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:28 +0200
Message-Id: <20230502101934.24901-15-johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The sync request code uses bio_add_page() to add a page to
 a newly created bio. bio_add_page() can fail, but the return value is never
 checked. Use __bio_add_page() as adding a single page to a newly created
 bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ptn8h-00BQe2-0v
Subject: [Jfs-discussion] [PATCH v5 14/20] md: raid1: use __bio_add_page for
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

The sync request code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/md/raid1.c b/drivers/md/raid1.c
index 8283ef177f6c..ff89839455ec 100644
--- a/drivers/md/raid1.c
+++ b/drivers/md/raid1.c
@@ -2917,7 +2917,7 @@ static sector_t raid1_sync_request(struct mddev *mddev, sector_t sector_nr,
 				 * won't fail because the vec table is big
 				 * enough to hold all these pages
 				 */
-				bio_add_page(bio, page, len, 0);
+				__bio_add_page(bio, page, len, 0);
 			}
 		}
 		nr_sectors += len>>9;
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
