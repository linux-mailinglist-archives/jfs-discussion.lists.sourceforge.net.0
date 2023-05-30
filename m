Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE237167C4
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41cB-0001lr-RV;
	Tue, 30 May 2023 15:50:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41cA-0001lf-Ta for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XqmW/pWhr1cgDEAd3F/aGuYlTwkOFNTZjCl2H81a0pc=; b=VUhK14UsC0++n4iv9OFrxCxD3h
 jip18mRgdBtUKt2SNZeDWQ6ZWXwvAKipZJktyJaTdGP3ATIyI6xtoFbzmmuOzm+0o23YjCAwtd4o0
 MoJJSxwxA7NnvvrUKo6PsCsRWk4L8Kn1NjAFMiVq9Yn1xg8uXUCz8+o1e/rRsphXRIXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XqmW/pWhr1cgDEAd3F/aGuYlTwkOFNTZjCl2H81a0pc=; b=SaKjiFLou/iTtoru9AV8h9DKxJ
 3ArEfXaO2TN/823qRwO8sqfyxQlgrxmKE4hDlMTeIDH6odLbX0D0hPxnuYpf8EQBkQJDcn7+f/0aN
 j7FslbO5T/2EqMU1vMJAG+kcxxyd6jriluzbXiGo4euizCit7RsidAGJJJVJRLzgAZ5A=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41cA-006fvv-O7 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461826; x=1716997826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wr+M2zDQXb1A/M8JUY7t1USwG0IIo/LDQXKOrkxoR08=;
 b=LvM/KNLo7NByUEjsNpaI/dcGBz7OIyzObTtX98mKQ8mY1kfzkljmuemU
 T4HehUFI46F69gJQwPuJ5d6sRgfTnBlLjYms+ZEE8NHbYDOJ2fDtN7aEB
 1mDKBnRoLpZpp6893ZgX8PWy1+Y16HkhXOQDLuFDAKhrAB2+Nu3KKlPgW
 nBvua1/VHjtRJuXIiaX46eTwW/LIV/ZAm0Yg6icajJudSh8wSbliZQWTM
 KHWRPA5NbodyE8squrxgelVzmcjMQ6g3IkWKK3hvzL6Wm7fnZM++LCe38
 RRvqXNlVNearxq6Z7vh3/aNt1Ftf+aY/3ZYkVZmMwAo+J31xRa5esDPax w==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="236922746"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:50:25 +0800
IronPort-SDR: agicOxYx6zJT8CH3cNkIjf/fx+mu+arxgQZRSZzj6ct5jNWKjyhWsoIkSEpsAK2ySdcPtLZbHD
 PE9zflqzawVITkk58fqJrJe3Gj+M4D9l1YCX4SJ1IwgV+F5CNn1mLxBxHNTzC2HKNiFk3L1RaF
 Nd8EsvkkBxZWSSTiUseo+j8PLRKHgXo9fUyjCBVKnYFhPJOLTE+lzsb3EITGHBiCBdLmr6SE13
 aTUEputPAQbh3WLDr9csG/ufjfQmsPM3btG1lE1h4hsIFUzg6JHyzndH7+qMtNLsJof/xr59Do
 YRU=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:05:19 -0700
IronPort-SDR: ZseWV5fWdzcZGsBvaK1MnzJbe6LJ/RDHXZo6rvQuZIvPrGhH7sOBfNMut82zppqTmYnoXKTB7z
 QrMk0hDekgJdL7i7w/cfcGZBQUO8WxGw7qvwaCfyj9g9v8vpCBL79fSHs9c7ocbmkyi+tKeTnl
 5yWwIot/krgGKEZrPU2K+W7DW94upy4aq9B0nKyn95xRamrF3GJ6KUciaCyMyK5wqC2s2vs9RF
 va9UVub6OltLs9qszN3A4HrAJxFVHZVWU6ZfU0MHB8DAntksi1VUcnPRTCZpwc76EDliVEcshA
 NQc=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:50:21 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:21 -0700
Message-Id: <5a142a7663a4beb2966d82f25708a9f22316117c.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview: Just like for bio_add_pages() add a no-fail variant for
 bio_add_folio().
 Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com> --- block/bio.c
 | 8 ++++++++ include/linux/bio.h | 1 + 2 files changed, 9 insertions(+) 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
X-Headers-End: 1q41cA-006fvv-O7
Subject: [Jfs-discussion] [PATCH v6 18/20] block: add __bio_add_folio
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
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, gouhao@uniontech.com,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Bob Peterson <rpeterso@redhat.com>
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
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
