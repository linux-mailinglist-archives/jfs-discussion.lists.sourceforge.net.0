Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E00956F4141
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:22:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn8o-0003uD-0y;
	Tue, 02 May 2023 10:21:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn8l-0003tk-0V for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NgNLaHU9QWlESCBVKUtXudFIcgaF0fvH8qy0QANXYag=; b=D+PO7YQQZPvXWUmOADr7DaLuql
 IO2pEL+zAFrXTVAGp2Ood+izCNvUuZ8/4mAOBa4uoX6E3l4OYrzngAK9EZsobZk/xFVekp95ybaQQ
 KwXKoUbYgqhc4DhvAstoOMODbeDXbdFTEmV/USn8VXSpNVIVeXtQ0Gc9wQVGNziW1lSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NgNLaHU9QWlESCBVKUtXudFIcgaF0fvH8qy0QANXYag=; b=iV8dqa75Lu4IIic5iJiY9ppQ2p
 lNMwFQIxHywbmQeCyhDLjmWzxTDl/q4N+IAjKAHUPK0awVUD2WnWNNvmtZE9Ny0UaiZUx9LcN2krI
 fvyuArXAjjPNRyhkGL64T+korlAifFp07052nX3hApsiHaXV2yqHlyJfryBgkB7zSA14=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn8j-00BQe2-FH for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022905; x=1714558905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sbko2e75SNzKYCeOJLmxzwzkVRoxsgBH9ZlWCz9oYps=;
 b=VMxhS/OnmeqiNtyMKcKneg8jSmtsHL/6YyWwclEI11OQnjH74mr2Xx17
 WVDQlDKT4X+Oq1TieSz0gy/BH93JMtnqKF7SeJudM7+6YB+xuHYfMvMaH
 k85NGtSvYRFEJlsQS1v7RemxBoV7wMxJCw+osn13UoP9vaYSlxckcQ275
 l88JYS8bOeMu7lxKKewVQzZ1gqqt6eoZSyTwUPmNQl1Niuc4zHkBVh9iG
 Wj+69fjwh2U6oCzuBxue+lR7HyqWFtWgYrfW5DANPccfvz4u5wht0BtMh
 JMUjEX+tO5xemkCYJawH65Q/QisbLoZSetO8ZImcJ2rh0O0p2op/k8qDw Q==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="227916309"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:45 +0800
IronPort-SDR: Vk/qYfbT4f8+jVXq8ZZ0625wBE29fU5Q8tlHCJAS3eXobb605kszqLp0ycC3ZynzTZq/d5iCSY
 GUSJO3JQo5YUMINJVfd28KhIxSPsU3SkF5Ba/l+SPSnldoCi8WZsfJLclAIpgIim98+InxZGgx
 LnY9wOOCpQrqMVczf9iJ9uE7bjqP3EEBanKflz/KYh2xsCaX/RRHbw0AbIoztMRcSVCg3CExn1
 9b9NvVU9PzHu54DSDcmEcofMaLs8oFdc9VfpkFevF00XGmUZbHCQ0rBQoMia/vEbGqiqZP3VHE
 bWg=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:37:12 -0700
IronPort-SDR: ZWr6Qm7aWZaY8bdOiwef1PvSCYtgS9U9pquupOCJUQGWN9visATuWUPqvCvOMfvdDLIKZAhW8J
 8PvGJ51TwreVCGTmty9sPSqI6NH5c9sZK7RjKgSCX/HDyjXRo/PbJcwapaM/ecHhWIXqz7Kl8U
 jgHztRbeeu58xdyiqpFqsVBRJgUjSHLJlzeswv16TnR3VZpldJyULjW+gWhIkfd2QZoJCL1ndd
 3CxfOoIKDBYHgQDbb+Rc/apQ3FCRJszz/CpBb5cAqd5m4klOwv27bN++AJvOZeHo32NNrFKhtY
 YR4=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:41 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:29 +0200
Message-Id: <20230502101934.24901-16-johannes.thumshirn@wdc.com>
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
 Content preview:  Check if adding pages to resync bio fails and if bail out.
 As the comment above suggests this cannot happen, WARN if it actually happens.
 This way we can mark bio_add_pages as __must_check. 
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
X-Headers-End: 1ptn8j-00BQe2-FH
Subject: [Jfs-discussion] [PATCH v5 15/20] md: raid1: check if adding pages
 to resync bio fails
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

Check if adding pages to resync bio fails and if bail out.

As the comment above suggests this cannot happen, WARN if it actually
happens.

This way we can mark bio_add_pages as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid1-10.c | 11 ++++++-----
 drivers/md/raid10.c   | 20 ++++++++++----------
 2 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/md/raid1-10.c b/drivers/md/raid1-10.c
index e61f6cad4e08..cd349e69ed77 100644
--- a/drivers/md/raid1-10.c
+++ b/drivers/md/raid1-10.c
@@ -101,11 +101,12 @@ static void md_bio_reset_resync_pages(struct bio *bio, struct resync_pages *rp,
 		struct page *page = resync_fetch_page(rp, idx);
 		int len = min_t(int, size, PAGE_SIZE);
 
-		/*
-		 * won't fail because the vec table is big
-		 * enough to hold all these pages
-		 */
-		bio_add_page(bio, page, len, 0);
+		if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
+			bio->bi_status = BLK_STS_RESOURCE;
+			bio_endio(bio);
+			return;
+		}
+
 		size -= len;
 	} while (idx++ < RESYNC_PAGES && size > 0);
 }
diff --git a/drivers/md/raid10.c b/drivers/md/raid10.c
index 4fcfcb350d2b..381c21f7fb06 100644
--- a/drivers/md/raid10.c
+++ b/drivers/md/raid10.c
@@ -3819,11 +3819,11 @@ static sector_t raid10_sync_request(struct mddev *mddev, sector_t sector_nr,
 		for (bio= biolist ; bio ; bio=bio->bi_next) {
 			struct resync_pages *rp = get_resync_pages(bio);
 			page = resync_fetch_page(rp, page_idx);
-			/*
-			 * won't fail because the vec table is big enough
-			 * to hold all these pages
-			 */
-			bio_add_page(bio, page, len, 0);
+			if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
+				bio->bi_status = BLK_STS_RESOURCE;
+				bio_endio(bio);
+				goto giveup;
+			}
 		}
 		nr_sectors += len>>9;
 		sector_nr += len>>9;
@@ -4997,11 +4997,11 @@ static sector_t reshape_request(struct mddev *mddev, sector_t sector_nr,
 		if (len > PAGE_SIZE)
 			len = PAGE_SIZE;
 		for (bio = blist; bio ; bio = bio->bi_next) {
-			/*
-			 * won't fail because the vec table is big enough
-			 * to hold all these pages
-			 */
-			bio_add_page(bio, page, len, 0);
+			if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
+				bio->bi_status = BLK_STS_RESOURCE;
+				bio_endio(bio);
+				return sectors_done;
+			}
 		}
 		sector_nr += len >> 9;
 		nr_sectors += len >> 9;
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
