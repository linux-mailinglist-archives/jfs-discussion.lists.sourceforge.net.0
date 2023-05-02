Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 516876F4156
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:22:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn99-0001U4-Aq;
	Tue, 02 May 2023 10:22:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn97-0001Tv-TL for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:22:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BZzdN+FDD5A67JW581mjFgSFJVxAoXGUIweV/eGO6o8=; b=bmB2ySpH5dUDnevTa/pYX2WVHx
 /ft57CUjoLdXQLebJ2YfIdesKlOvr5EzoHTPpwiiR1tSmoWidiQEVCi43DEKulfzjhMwahWmf2OKY
 Gkn9gFVo6HF5PQWgXMkpwBF4YkBmtImypcaNBMDTRT9/ut2ZOB5NaqQZ0Vzub27gmgNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BZzdN+FDD5A67JW581mjFgSFJVxAoXGUIweV/eGO6o8=; b=YCpZBJvR3uz/j9/oFfeHNohKwf
 VQi9SkXOWyenkSnhrFgJdwyAwWdrUtHEtlnYSAFjTFzcEUSBoroFCJHz/hbX5nxRM0UGwEEdZ5X/B
 /qBn4Hq++i8fQbCYDM2AdFyL+AO3fbxWznaR9li70R5wOEI7jFwwQKlb9/+TMvQ5n+oA=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn96-00BQek-H9 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:22:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022929; x=1714558929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Td/xHpC7+cd6575Kox8h68Aq0j3mdhGpI0NO3tgGxpE=;
 b=nowtw/CxgK9HOvuuFSsV8cnCe0FMguEhttKIuSCAL1ZBkn2EX9JIYMM9
 vLmkOFkXuuHx7TFy5yGFjHMnb1YIip2FLgmD3JtoD3UXjahDEvSWKHpZ4
 nmOruAg2TvTnZVHua9u/AYcAO1ZZyqSfx7Hh3jjTutp/YYh0BxABIXKUy
 OA4h69fY0zb4Rkc0EeT0PVrHKNA23gQHvEo959s1Ld1KeXd2MevEG+Ueo
 6F+QuINrZhVixf3skDwQs6dqrnpKtf4qP6peru8IYpCJg6nv5JQWRqOlr
 cbGacMKQhFMHXxbvLsBXo2dDJP7QNOaHVvxXGk1+MIm0tLeLAVBVFErlO g==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="229598002"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:22:08 +0800
IronPort-SDR: 4PiW5DjeFQ+7zJnoj+S4s2A00zpMWlKI+woo4cx7BfPsQtW3pq8o0/hu1hEn7SQElnTQFLYAjI
 T0r+Wth6y2c7dHVbeBOz2d9GbO6+HpPI/EwwLngWnb1jzcyhm+O1k+oIQAE1VNZrnDGXjxtOuQ
 U8/CyPHPUs+WhEXOSdzd/3bh5/CGRrC4zjG8SEHo4FWO6B0yNipBrNDnIgRRHTJOMDOOzgD1l8
 JQEBBkeLyRUGupFzS6WqLicMtCUAOgYYT4gSGzYysZuIzK9oOxONZF2gA3cj2v3NNq8kE9Fxzj
 DZ0=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:37:35 -0700
IronPort-SDR: Vcxt7Z41NExxCvUESz1tELNOOoVAmCt8KMe9S2wfxXY5MtctxeNwByBgzDDJWsrhCsj1BHWV0Q
 ZGiNQRrLC1GqKKuIRpNOC2Vb5K9nW2DMjlmAKUuOtSKbHa7NR7aAFqUudcN/yAoLh311Vt4cBL
 y00A/34+CNpVnLGm46O2cceVC9lFxIP0NOPuIkoffYDZmLB2WN+NgV+aYC3+VTf4qWL5CbSVPK
 XjePJIBx125icTf/AqdLDhEFFImtpkj2dXIQOUMatT77zeeqXyuVF+60VJakWBDYsxQwY/CpIf
 OkY=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:22:04 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:34 +0200
Message-Id: <20230502101934.24901-21-johannes.thumshirn@wdc.com>
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
 Content preview: Now that all callers of bio_add_folio() check the return
 value, 
 mark it as __must_check. Signed-off-by: Johannes Thumshirn
 <johannes.thumshirn@wdc.com>
 --- include/linux/bio.h | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
X-Headers-End: 1ptn96-00BQek-H9
Subject: [Jfs-discussion] [PATCH v5 20/20] block: mark bio_add_folio as
 __must_check
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
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Now that all callers of bio_add_folio() check the return value, mark it as
__must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 include/linux/bio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index 4232a17e6b10..fef9f3085a02 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -466,7 +466,7 @@ void bio_reset(struct bio *bio, struct block_device *bdev, blk_opf_t opf);
 void bio_chain(struct bio *, struct bio *);
 
 int __must_check bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
-bool bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
+bool __must_check bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
 extern int bio_add_pc_page(struct request_queue *, struct bio *, struct page *,
 			   unsigned int, unsigned int);
 int bio_add_zone_append_page(struct bio *bio, struct page *page,
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
