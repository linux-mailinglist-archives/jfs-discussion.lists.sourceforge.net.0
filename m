Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A005C717EDF
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:51:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KM0-00070G-US;
	Wed, 31 May 2023 11:51:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KLz-00070A-Hi for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:50:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AKDiQc5c5mMUE+M48Yw66vq1cPaHt+34Qu81mFVf1Zw=; b=mgsCwTeiG7G4J5Jxl83A68UbxJ
 YWy94QbumtNmwl5IDNXlbsep7+KAPg4ho89TlbvLUB78IRjs1OrpyG9+mI2CiGW9o2v7ztGLCSl+q
 6ABhsv/1g2Cm3HnJkP2rSX7yRrRPDpB78lHf4zjD66LfBIBoziZVVCdRHlZGZwPTCsqM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AKDiQc5c5mMUE+M48Yw66vq1cPaHt+34Qu81mFVf1Zw=; b=U53gwlzrmCisfpGXIcX6MYYxR2
 9Hm64vIVKYB7Z2Afb+gGYdgNAqPly7x6TrpGIAYSHmlwd9iFHaaP2uC0p5N0USeO7I4Qz/AVD4XxB
 6BLHCiIXwmFktsTuhNBBud8+ANQUbaakMtLqeSmtfKvAn8ElHNVVyt5e8dvkFv3N3EbA=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KLz-007QMk-B2 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:50:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533859; x=1717069859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UUIQkUbEvB2cbvY4f/6uCB2pRFVtewbvTxuQqfjccj0=;
 b=CfblHkiBv+05q6Z1DE+fUsOocAU1IVBUcIrh04CXYoFAQMIW8CEpem2H
 PBsbjynil8DNS4p/ApObfW9OHAoEwaIixL+zB2MFGiMotBhbk/9tGi/9E
 zoJuQ5KHdBqr/0KFcJpwvS7nnH+/hFj+C+C/Ujm40OFhvpBvmVGnNrRc3
 TNV3Ns+FjMDIIZhPV36iDEPty+hsxeFOMWyz15lPBBm3d1rZzfdGpHdzK
 8ScDl2qq8WENGoyDyhOJrJjUWcVcPAeqcQwtk2fMmyCDM8cM8aGn2tiEx
 agixTgEoCTVXv7HPQduhKKApGM5U82TX9MddHhI9QKC0EV6QDYgEWRp0I g==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179881"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:50:58 +0800
IronPort-SDR: 2BtLwIzUVym9oF/FYrmb3A1z2WcGXWOCtjLO4gKJDt8XqTgzXDJn9WnJwyIxKTZCHFb1fwsN/Q
 9dwGbv2CkaNDeliTpw79DTR/3YoX8lGGSA5S5QKEDOYkMNpnhQxfqQx/6XZd3M+DDp4MX6FaQp
 oEY0VmELsJ8Nc3ieVtCJb2xW2qHpkFxh86/g35YhpCcZdnQtVRdg3/Ei+e7HdELYA+ZOnNEze1
 m3qFRHOHeBKA0vmt1oVUml4KocxoBe+bao7fN2l002EQTNRNoyqMA4PLXQ/LLWPX9nobdk/p3+
 qFM=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:05:51 -0700
IronPort-SDR: 5fbhaGDbiXGkg8+3UI34SjKA36qN8yxQFYrOzNfKBiGqGFKkpSit1Ju10bDfGDplQIS0ftPTpQ
 fD8oNw24RMWU4g7VvkH7fNvddvkm6er01jVyMTVNOtHvSwsR9XJm3ab5VfUwyO9fCxhY/DdOpJ
 rVRoCbjgJZYRe1k4mgWw9zPuHFpUZXB47XYvnY9pZ9QXi/jP1EZfI0KyE55eH/ZOvARZ0NI1B/
 I6tNjRTts0ONBuOq3LjKScjHSb4drUc9pfSOAP0cGx9F/5nOD0Px7pW/36RnXKCA79Pi9R6JLP
 x9c=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:50:56 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:25 -0700
Message-Id: <435007afac14f3766455559059d21843771fae53.1685532726.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685532726.git.johannes.thumshirn@wdc.com>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q4KLz-007QMk-B2
Subject: [Jfs-discussion] [PATCH v7 02/20] drbd: use __bio_add_page to add
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
 linux-fsdevel@vger.kernel.org
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
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
