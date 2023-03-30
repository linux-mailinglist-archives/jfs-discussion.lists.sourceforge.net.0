Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FF96D0250
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0V-0004Sq-IA;
	Thu, 30 Mar 2023 10:59:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0U-0004Sa-G2 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qg/Z4HsvCeaPa6Cba5WAwCsrSCFAhIpWvpzK/p/YtJo=; b=ic0rDO3BUoYAVR6/QjuqT/hsZf
 27q1eUWvXXe2NjAZyKi5XwvLqh4KxRzmqAJbyToasXs/MGTofj7DWund7dOjBtxhnC47RdFQ6XGqK
 FzrhPRjKvKgjVSVdlU78TjcmGaLnkh/A8R6fqiL+KEeigOyZ53CwqoJ1cqaLVwCBIjk8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qg/Z4HsvCeaPa6Cba5WAwCsrSCFAhIpWvpzK/p/YtJo=; b=R2TOhZyjrK/gDJfLsPJ1HiAvyQ
 qilsOIH5DET4uyw5sBX1Xa23T6V+JfR+zATx6v2d4VVH1++vWHX/MUBEG/Q46uaNgPdufycvpyl9g
 uPYmXrz4cbdnqSoL1nvTwDdYw4eWqWTm/37oy9kx6jBUzni4iu8Z7XC8gSp2CKUfRyQw=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0T-009UvH-1T for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680173988; x=1711709988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L3cfRA2wikfkIsf3C8GxTLr6ByhKgTx7ps7OwYMzkj4=;
 b=Itnt4GUdFxVEdesmM9makV9sUYNZbhdlbqDOZNocn5Qlw6dchQE4RhPE
 uYJ4514kIgX2hQBNYyGd1e98XdDmvMiFRMcOGEYH9LiapdC/6WDd3oYNv
 2WzZvcLOmVFwUaxtN03HncUWjTTqSvaF75v6yTVibilRyhI7sayEilc1k
 W9b+NUQtHx8j3ZM3MboBQCRIvIB/PAqBmRnx6N86srG6Oz1wRkRX7GFHI
 EYQi772sRiCfB/TenQaq68XXTOf5ex1Xji5JG5cRaD3gL6bzwnrQQ6ybD
 VZM12LqIMtenmHqUr2LQG78wYx8ipg7+16yljp4Pw84z7dtSVwek6iXY0 g==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948076"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:12 +0800
IronPort-SDR: lZx4z8LaDtQtvv1iVV+gvSjx+OVCpoXpJul7ZaaF611MhF7DI5wEohxJhxSExZpYfkBpACFfAG
 bR9wwMF05L6VPY/yMAFG9yQ4FC+IPkIqG3LrPBYPJRVTbbbNH5pQvcPhKio9rVfBPG/j2BjLaC
 WqxRsUOGCA0mJwjskoX/uBcAdiD31S8eyZPd/Ri/ud/drbkFsBdgUR9pMhb9b3UUnDVqSFYjjQ
 G+eox1G+SrbQqkm3NgGJEE4/SisfGDRqYm1EGZgtD6AROMXoZ57a2ENV6VmbNat6rXiLe/fcR+
 mCE=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:20 -0700
IronPort-SDR: RehRzaThR0hc37wNjqkltJ+dfO/hlRGJetFrnAX1UOANVz9k5ZIJ+kSDt8opKJGJOwIrFyEeZk
 TwtDv9Huypg0wYz4dm/8NDnvwLaqh3eVfRvAkWkT6VvIVHouxmJ9cojW5aiBrZ2cuUyar8GmxH
 pM7pZBufBx/ouszcaAOPMBaDxfOwlbo6DAOIZUQEsZdRgiXOJyXcbpTXXM52G8GbwuePmG9tD7
 6CT3hnKgyfR15tAPquXFKRiXeuWuTEb6OxiN0Sdo2XMa4aDdkQ/G6vt9d7MC/I6z4RZ/z+UW9i
 T4A=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:09 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:44 -0700
Message-Id: <01716d15d92c2dc01607b0491199d7a4ad3fced9.1680172791.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680172791.git.johannes.thumshirn@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
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
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1phq0T-009UvH-1T
Subject: [Jfs-discussion] [PATCH v2 02/19] drbd: use __bio_add_page to add
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
 Bob Peterson <rpeterso@redhat.com>, Hannes Reinecke <hare@suse.de>,
 David Sterba <dsterba@suse.com>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The drbd code only adds a single page to a newly created bio. So use
__bio_add_page() to add the page which is guaranteed to succeed in this
case.

This brings us closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/block/drbd/drbd_bitmap.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/block/drbd/drbd_bitmap.c b/drivers/block/drbd/drbd_bitmap.c
index 289876ffbc31..050154eb963d 100644
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
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
