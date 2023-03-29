Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B52E76CF048
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZGH-0000fq-Qx;
	Wed, 29 Mar 2023 17:07:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZGF-0000fT-NY for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tXV1PUgRIrS3GQAiD+TC29vg3vg2nyy1N34usulwziI=; b=IuXhwm4f6Lar5mHdEHcukim1j1
 syEWFrgabpjHdo8RGUARxQrU283Nbg6uut7e/5VoCOh2oI5SIRWyGb7AKHsip63Lrl3trUYqHs0M/
 SSR+OHYvkkTQ0qOVRH4u+qpqUaaZU9hFihDZlKqUn9FpBgTvfaJK3pLno16xB6/PtYok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tXV1PUgRIrS3GQAiD+TC29vg3vg2nyy1N34usulwziI=; b=YKnwqN6rLTgh/dClIPkA/+yqqY
 blw3SGkmdf3uXEfCS4UIeR44BugH3m6c9n7CGhj92dKcaiYnSBn1OZga2nBo6XNzoCZApSoB0T6dN
 BCGcSmXz6xag/Feg6omvtrWBEA/TOZ9OGgoOMgk5w19PYeYzlnZGKNyumxvR65ooi4eQ=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZGE-008aXc-Al for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109618; x=1711645618;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OE8E56I6ppzvZpWL9ourgo+ma9SYticUs78Dn5RisJY=;
 b=XJmPUuOPabEiOHraauHB1lIOew/tARlVZPAD7+u9RluFUFKq4/6rfmqP
 LbRX4FohflpRfhX8omU+cZCtizYXGNfWvFsVP/J9235RTBV2p0JARtUCt
 WGXvedRAWaEYTMCo9v3l/DEFk494rcWiB09wzF5WIqhmr2JBsW9mAP7bL
 17lZPELzNQHoJJpc0LuTqnG+P1jvmSwgqEikzIAnYbjTKprP5pCm6m7dC
 3M8OCrmnyM+0UF1SG7YsnwU6HsepZWPgflq3cCQ+fyEmlObpjutKlwZsw
 59YbjPf8PQg3amRNdzKkzE57ml7jifcva75W9067trH0C2kA6fKtdXYCN Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807083"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:58 +0800
IronPort-SDR: ehpiep15jRPG3+f718sM7I7awMD7w7chOMnPWXRGlFGutNWIA0qCCvVT0DqJOpYy+8pK3s+RCN
 mnEBYAQBkOw/E0BIZ8Ytq8RNqKVI9ig7/N9wlcMl5po4Lrai8VOm5eL0qHLMjU0qGffONPT6+7
 9+egYX70GbzShPnt6HIoTlU3rcEuDMlreTlGI72kviHBpEfOals9iC9KtXma/DHi3p0lBiimB5
 cv2cup6NPlvlxCN/to7ehdjUIG8Jk0UGjPz3nTNRUnPQkS+rLMi+Ucrv6p8c4JhBmJ7GqH+A4W
 UBQ=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:23:07 -0700
IronPort-SDR: ciCGYrvEid1OWmTvYsKE9LmMoYXjBdNIDVHp7EEL3ugMQVAD8oiGyKQfXP4pYoV2q7+QBMlQDo
 1RsU5Av/PLFMD/vk6LCXNuUcQdAkJoBUKZWl3B3KaNdEDeDAYfT/Xuet1ErBvWVzn4ReZCi6WZ
 2tTbl4q+GT70HS8/O6AHUfSoleBf84i/l1JKzfYad7cBsXNtl7QFlQAHRj2CC4pi7SD6n4Katp
 jEWbuwgpWbRYo0gFrtFVkgDJiiBju+mZl9IO/VVqg+QMlS6vkxNs8qZeLGPjVwt4OicZWkznI4
 o+w=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:57 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:59 -0700
Message-Id: <339841b3b7ce6b2faf56bcaf9d92e298d878ef64.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680108414.git.johannes.thumshirn@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phZGE-008aXc-Al
Subject: [Jfs-discussion] [PATCH 13/19] zram: use __bio_add_page for adding
 single page to bio
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
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The zram writeback code uses bio_add_page() to add a page to a newly
created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/zram/zram_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/zram/zram_drv.c b/drivers/block/zram/zram_drv.c
index aa490da3cef2..9179bd0f248c 100644
--- a/drivers/block/zram/zram_drv.c
+++ b/drivers/block/zram/zram_drv.c
@@ -760,7 +760,7 @@ static ssize_t writeback_store(struct device *dev,
 			 REQ_OP_WRITE | REQ_SYNC);
 		bio.bi_iter.bi_sector = blk_idx * (PAGE_SIZE >> 9);
 
-		bio_add_page(&bio, bvec.bv_page, bvec.bv_len,
+		__bio_add_page(&bio, bvec.bv_page, bvec.bv_len,
 				bvec.bv_offset);
 		/*
 		 * XXX: A single page IO would be inefficient for write
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
