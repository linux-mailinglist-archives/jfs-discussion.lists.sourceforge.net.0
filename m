Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0A96F413E
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:21:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn8i-0003xR-F8;
	Tue, 02 May 2023 10:21:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn8g-0003x1-Li for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mLz58nOU27a6t/084l1Lf6vRkGjs+YDPAFvRSQ2t0Y8=; b=GB5iiG5/DOY1zhvsh+Vtlq276O
 tV/2OVCq8VLjZe/T2n04C3gPa1zMFaOKOHZjd8ohwvKrbMXDapZ7/nt4R09wpRioxw+GROYHI4xBj
 h7IyNTWcJs0ide2aBnW9PJ216PzOC/IKhHhvKYrJmSk6z48fd747WwUwyMexp1AaDi7o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mLz58nOU27a6t/084l1Lf6vRkGjs+YDPAFvRSQ2t0Y8=; b=iRf5yLRMa3TAT/TjhVa4pIghjU
 VIn4E/rveimdD42qUdJs/S9ND+52nBDjedkwRfS3MClayBhnncswHwQgN+65ONrwnvfeuYdXXxpFQ
 +c1NepCqVHZOVwZP7I+zWOzvMqjjzR151cXS8EMTJQXSDP5PD8sZiNuMlAKJrJWe50EA=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn8g-00BQe2-B2 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022902; x=1714558902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DzvJ6wZ3Sui4RZ9TAlD4OlMyP4gDTchzDlmODiRTaA8=;
 b=ZT+zUZMKUrR05udz3OmpHo3o2KEP8zJAcuySg55v1oW1rjSGTM5RCf0g
 vPVEmlzh6Q+HfDKuzAkzLq6USAqlNYDXAXb5qUn+DwwIRqud41UlCfizM
 qcKYvHc+285xsAm24hGRMMwOeAsELwcKK3wSR89h2otLb8mybfwzDUjIY
 /4Bf8INAh90C5WSEnweOfAT7wJTxZk55A3yu46cmrHsbUibjEdOgOby4V
 +WObk2FDRjjFpNOtLV+lyXicMLvxIEH2lPzpQj+zYWwb7cTxBojTOtcMM
 FMack71evE+nS8iV3bb0dW9ArPwS3WFB79cVe0OqxyDXytjfexDZuScOr w==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="227916297"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:36 +0800
IronPort-SDR: IMW05mBSxpbqZmu1tx4CtGE/iTZ8ka5yux1eiYEIJJN3kgAaxDKPOTHkOrEdwgzog5mLzkqJPY
 DJpp2y+EHvf+ei+LfRvNqtDLsd4padP3APaSev2R1AuPZR7tm1XyRWrmFa5TiBBXq/AHOTjQG7
 pAoxkhEHmcDzNzTHraWSLjzysT/dwD3inO2vcNuVnwbcqWgNsQk2UDCTwnizaA+GronZDxEH5v
 Rrd2rMqBMkpaQl4VlF24f/5jaNnHAW7H3WbQ+ShUSJw82GCWcYUEGyRxlkMfNo1nqwNbeORXU2
 Gxw=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:37:04 -0700
IronPort-SDR: uGIw254wyz5xW63y6mKPruYBxsDCJBiWJn5HyxXEKlHH3a6WQB95MJD2gL1U37MsE73pDlkDfH
 XrAQKE0o1trWaMuwmkCjZxReOE6bQKTuwcjttjZub9Fo2NWOrlg+l+x9Li4fpCvU8smOVgdBJe
 iX9LTVSMXZH6O+ImhKiOGTSlNSVog/dyr5RquJMBmwgwChPCFkHcE06ByPGE2sBKs5rW/DQtzK
 T5Xxpb54D4Yuz40YIDXaPoJ+wQXNcche+tu3/6iWe/RHtJ7xSAUbzgyNSPsRVFjywOIFjhKDZt
 2iU=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:32 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:27 +0200
Message-Id: <20230502101934.24901-14-johannes.thumshirn@wdc.com>
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
 Content preview:  alloc_behind_master_bio() can possibly add multiple pages
 to a bio, but it is not checking for the return value of bio_add_page() if
 adding really succeeded. Check if the page adding succeeded and if not bail
 out. Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
X-Headers-End: 1ptn8g-00BQe2-B2
Subject: [Jfs-discussion] [PATCH v5 13/20] md: check for failure when adding
 pages in alloc_behind_master_bio
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

alloc_behind_master_bio() can possibly add multiple pages to a bio, but it
is not checking for the return value of bio_add_page() if adding really
succeeded.

Check if the page adding succeeded and if not bail out.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid1.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/md/raid1.c b/drivers/md/raid1.c
index 68a9e2d9985b..8283ef177f6c 100644
--- a/drivers/md/raid1.c
+++ b/drivers/md/raid1.c
@@ -1147,7 +1147,10 @@ static void alloc_behind_master_bio(struct r1bio *r1_bio,
 		if (unlikely(!page))
 			goto free_pages;
 
-		bio_add_page(behind_bio, page, len, 0);
+		if (!bio_add_page(behind_bio, page, len, 0)) {
+			free_page(page);
+			goto free_pages;
+		}
 
 		size -= len;
 		i++;
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
