Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6646F41BF
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:36:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptnMo-0006Vb-VD;
	Tue, 02 May 2023 10:36:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptnMm-0006VV-Dj for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=81EwZpBCztp6J7FD/30gYrZqKBNeq1AgUdYKJNXvIzA=; b=MFiPb8fxtObVa45euoVBXxmmIr
 u7L5M0BIqwUNdg8qXifMTaM0V2xyyHPU0pFJmlInJNV1BTbmec3PYKV0HgRHJ8fyYSOD6QhuIzXbJ
 8uXZ/AyEV0sP0E3wrr48zt5CGbwB2zkw+SVj6MRItn6abGvB9cBEOzk7qVP2kzoSNLdg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=81EwZpBCztp6J7FD/30gYrZqKBNeq1AgUdYKJNXvIzA=; b=EGQrp/+NH7Dk9S4OIjjoo7cPDP
 A8AGsRHYLOmWqP3bgHxblkc6vaI4OEjfnTVazyAOnKXIHp7NirBHnjcPz3A2QDIpleU140X/aF1G5
 Ey0VrTuJboPtisHLNoSFdEJXOzMMZwSwshjSqjwkPf7BUSBEwLgDGEeNA0UC9rk/6xtE=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptnMm-00056p-PA for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683023776; x=1714559776;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DAUXXvncb57Ca5Ysqy4K5WgFviHvSEfqduS77WKLrRc=;
 b=JmvFXtzxFBOSRZ/jkOz5kryN6REhhBdrp92no/9hpEeHtQfszmPi5p8w
 D8CvTelJez0Ap2s0fA5Odk2D/3uxslloPxCIEU/eIpVO54FJQGyVw8uDJ
 PfvpZ0K7sSezeeYcjHAoIN7hBYrzPQlJ/xUT5ErGWnmQTWA+OWu4xc7uH
 EB0pJli+z9jNzKQW8a54jzOLoDHemOlGpzyb5ogdZUHdFsdG777LmzUzu
 T4YjFg3I5YrCAFFdjrg362/rX5SNRslM3jzh3DDpqVaFHpIej3jHc9DlL
 QWtzswy+SdllLaZ70xPiZzpDM79sj9I9KzOZQFNKeysMoVEUqPZcpdN5c Q==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="334136136"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:20:44 +0800
IronPort-SDR: INdkLxZ7AkweNS6CQg5eYfJkQ3lv2lct40V/JiCvCJ4spWTJOtPdBS0S2g1GTSd+t6+kubN340
 sAGcNW/0JaEfGAjHAV+iWI0N/Ivh0rs9IKQZNYDCGua45gj1X6MIJ10IwP4gZ+9CnnehAGdYw+
 xMBzkgP/GYJrYnHHgxCCsfAcKmY5Kkg5B6zBJLeMNAgCRc6lKaJ+y+WhBe44LY29YP1YrapL/9
 ZC9YwVyQM+uS+1EG9i2SGLOaTMy8/jPRhKAF2swNittHYpSFQu6pnYunSe0G9b9bn5mUoQMHjq
 FYI=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:12 -0700
IronPort-SDR: 9dAoasd2kUMB9NDuUlrxf2LKGQXNbe7IcqE125G1znIBmvFKRi1+XoITUsIN9ND9OAtiPxTMbd
 hksUv+zcUrnVuAoUVGO2049xfknTS8aM5hmEWzvj8WhmmTEXP0n/lftv6HNELCgJiPz5gQczyl
 jSeLS39egvZ6QJ+taxzDgX4dDqXFI5XQUhVg1LiOWyxVbmVWvI6hTsCCj0zcHEW+RxhAj2/6P4
 4ouCUXL168ncCOMo7EVwzrHUnj7EWo9bkFcQfzMoq8SDN7OCFeSa+F3X1vyKgUhvKXTrNUP+wD
 2eM=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:20:41 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:16 +0200
Message-Id: <20230502101934.24901-3-johannes.thumshirn@wdc.com>
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
 Content preview: The drbd code only adds a single page to a newly created bio.
 So use __bio_add_page() to add the page which is guaranteed to succeed in
 this case. This brings us closer to marking bio_add_page() as __must_check.
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
X-Headers-End: 1ptnMm-00056p-PA
Subject: [Jfs-discussion] [PATCH v5 02/20] drbd: use __bio_add_page to add
 page to bio
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

The drbd code only adds a single page to a newly created bio. So use
__bio_add_page() to add the page which is guaranteed to succeed in this
case.

This brings us closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/drbd/drbd_bitmap.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/block/drbd/drbd_bitmap.c b/drivers/block/drbd/drbd_bitmap.c
index 6ac8c54b44c7..85ca000a0564 100644
--- a/drivers/block/drbd/drbd_bitmap.c
+++ b/drivers/block/drbd/drbd_bitmap.c
@@ -1043,9 +1043,7 @@ static void bm_page_io_async(struct drbd_bm_aio_ctx *ctx, int page_nr) __must_ho
 	bio = bio_alloc_bioset(device->ldev->md_bdev, 1, op, GFP_NOIO,
 			&drbd_md_io_bio_set);
 	bio->bi_iter.bi_sector = on_disk_sector;
-	/* bio_add_page of a single page to an empty bio will always succeed,
-	 * according to api.  Do we want to assert that? */
-	bio_add_page(bio, page, len, 0);
+	__bio_add_page(bio, page, len, 0);
 	bio->bi_private = ctx;
 	bio->bi_end_io = drbd_bm_endio;
 
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
