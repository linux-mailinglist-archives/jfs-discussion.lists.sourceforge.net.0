Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4D36F4150
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:22:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn91-0003wX-9p;
	Tue, 02 May 2023 10:22:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn90-0003w7-Jg for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MYBDhVOwI/2b3PaBKbTYoIa/G/0NeynYVC65r/J9gLE=; b=gNsbqN5rmJ+k8hQte+RpGU41y1
 F3ly7duQZdE93ouMpnpQjPfVo4Z7cla8vH40q+IF2ekfHamUGlizogo9W6BFHkvWdnB3umrL3vSuW
 Y4aoby4gjkO8aOr5MMXNpSOuiSjeG1vBrnZKNePLoOZ3BUWLc8y36Cy7aE/ojq378Ru8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MYBDhVOwI/2b3PaBKbTYoIa/G/0NeynYVC65r/J9gLE=; b=HyJMPjmZoTSLIHgWUWamOYJ2Tb
 zGYmxpya+zYgEeKs1n+iXIAjZup22w2WnFb6HrWYfMP+L+N8Y3LeIcyK0UWmYymhcgQ24zJdSz6lG
 8y2SVg1Sp/731f9xUGjl/6w6+eXpEunNOw1XaateIgMVO8AnowBPNejfg/e7cHWe5tMU=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn8y-00BQek-SI for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022921; x=1714558921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MB8IrW3XRF0b8tjpVHZZO4VEKTGu+LfkwhaA4xbI4qQ=;
 b=GrpYce88lE3klqXHwd83aXg0X4Y2XTB3xJkPtvdJZfTyldpASSnqC8YS
 auKnr01sZCyfX2l4xJnqDVYZIiOExnouIa7em/bzgqsHJhOIgDQBVOaVC
 /RceI1Y1OlJgKyI9S60sl5gxY0biZ2/czcu5ticwq8LdnCYwTZnihgEXi
 O3HeLPe3H2mjuG1DZBDoQoyqmLHCRZWyQFP3SI4SxDhxN6NgZkS8fWc7B
 Qd3o+hCMNbzknlPp7Y6BWI+NSCEb8gfXSyhCggyX7Q40srPbwCH07qQId
 Enso/WQ5Q6GqhHp5qkmknIfmI5Ct+31HDHYV+UUjlEIb/TPeUokvwTM2U g==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="229597983"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:59 +0800
IronPort-SDR: mibagBhEgi/RZ7rSyRFbRv91OUGh5iI6nPvHRj2eNO06DfXc8iEOxc0raZhtBN4uJXMhCanQvV
 ZAbxi1ItPWYHAq0r4+hDtos8PlwgeN5zayj0BlGqO/11QqC+qGGaTshYdUybWVq5iaQ7QjMwZz
 4dYRKOzk8keCO4CyKdm+iLqyTC2ZXuqXwREGBYzW2fyi+qf4nwnrMSWbI5kWbv8qs5EwsR/1mZ
 zLep3UkbspMbi0Ps6Pljpo8ub15S9D81777CF/ZE99ePws37f/Pw7lREkBHt9IGhWl9pcyLx9T
 HwM=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:37:26 -0700
IronPort-SDR: dt0ORTo7y2OvtYPVqxqZKcSlk8TEG/M5IxYJloXDNMtpbFDpduCookvi33MCWWG4kgtbDfnjoU
 qNWcylSMPeGsO0kq0NXDl4G2C7gt3I+rFtkistntPpO5mSXx+HBp1mYREWSzEfGneChk6WparM
 /i8YU9a9mKVsFFGu/e5aSvIr5Y8Ea9LImoNB16+9AysmzPJOxOBZEoak3fvRhFlXukbVn/nkDx
 drQrakT6xd36x6OU6prDHLUpKa5+rnrr2e8A/8Ynql1R4XRsK2thU0KyPWPdS53E7jOulhZ7Dk
 rYQ=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:55 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:32 +0200
Message-Id: <20230502101934.24901-19-johannes.thumshirn@wdc.com>
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
 Content preview: Just like for bio_add_pages() add a no-fail variant for
 bio_add_folio().
 Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com> --- block/bio.c
 | 8 ++++++++ include/linux/bio.h | 1 + 2 files changed, 9 insertions(+) 
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
X-Headers-End: 1ptn8y-00BQek-SI
Subject: [Jfs-discussion] [PATCH v5 18/20] block: add __bio_add_folio
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

Just like for bio_add_pages() add a no-fail variant for bio_add_folio().

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 block/bio.c         | 8 ++++++++
 include/linux/bio.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/block/bio.c b/block/bio.c
index 043944fd46eb..350c653d4a57 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -1138,6 +1138,14 @@ int bio_add_page(struct bio *bio, struct page *page,
 }
 EXPORT_SYMBOL(bio_add_page);
 
+void __bio_add_folio(struct bio *bio, struct folio *folio, size_t len,
+		     size_t off)
+{
+	WARN_ON_ONCE(len > UINT_MAX);
+	WARN_ON_ONCE(off > UINT_MAX);
+	__bio_add_page(bio, &folio->page, len, off);
+}
+
 /**
  * bio_add_folio - Attempt to add part of a folio to a bio.
  * @bio: BIO to add to.
diff --git a/include/linux/bio.h b/include/linux/bio.h
index 5d5b081ee062..4232a17e6b10 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -473,6 +473,7 @@ int bio_add_zone_append_page(struct bio *bio, struct page *page,
 			     unsigned int len, unsigned int offset);
 void __bio_add_page(struct bio *bio, struct page *page,
 		unsigned int len, unsigned int off);
+void __bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
 int bio_iov_iter_get_pages(struct bio *bio, struct iov_iter *iter);
 void bio_iov_bvec_set(struct bio *bio, struct iov_iter *iter);
 void __bio_release_pages(struct bio *bio, bool mark_dirty);
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
