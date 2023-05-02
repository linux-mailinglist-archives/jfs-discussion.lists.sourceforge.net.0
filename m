Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C336F4130
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:21:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn8N-0006MW-VE;
	Tue, 02 May 2023 10:21:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn8M-0006MQ-8k for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sMfs9uGDZZcQx8RlHkkvHPT1eKV5wzaFCK+Ux7zjc7o=; b=iLMjnqCbkjQviCMt7GkUbHZUwp
 Sn185ZJum8dak1diNOfdoYkeTomsFLek1/LPTiJ0Rlv1BTkCJyaChh0zjnzQ0GAWI3OHALQuFuMny
 qt26rAU3Yysb54UOPp/QYEz4jci4ELHL2iSSOHXs6J2cBJSMybtT3mtRt4I4pjMedhd8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sMfs9uGDZZcQx8RlHkkvHPT1eKV5wzaFCK+Ux7zjc7o=; b=XIVaFtKeVF614xRm8LJPQ9SU42
 750UMM1eHAj2wocex76i325OX3A4iWbQCpDnt3wu8uwBuZnphKuvuaxWTbmlV1R7MEC/rdwq5VMtE
 ybJUNX//7j26yXcfvqwqDHs3Bsy3Uoqr4zQbYwnEbMCaJ7Olx197d2exH2bWT5hzBTNc=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn8M-0004ZU-Dx for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022882; x=1714558882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z23s94WSfkNDSGnkvvUzyIU5xJO/4E/eLJVJJaqm43E=;
 b=qwScY+j2fsPCoWL/2hYAnk89+hORFFmNi13e82upsiq5C5Hm/8d4kwiY
 EFxKUxqTumYXz7XwaNCF4naS7JTc4NxgZPnhY+JXdqzRUYWdB6C5dRQwk
 ZLiDyW5HfjwoARE1f8Z0u7ka4rnPK9LIsRgqxrYWXCNd/jU/AiiY7wFy0
 MxSxADDT448Rl2/o3ibWefKk/v2GWFfEBmBFALk8ZI91H/xzuyBnSi9Ow
 2lX8+TZQYvketlE+iRmRO9px5pVC8NlmlpF765wVrf1pEDigd6To63PFo
 dsJU5KVd+M0IaKwpEjb9qTj5hcyB6DrTHBFVlSNA+wMyYKFZ2SQd+O2BN A==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="227916261"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:16 +0800
IronPort-SDR: pp1jMcLPy6sj2qZqGXdF8KuSRVkJTZ3drURIfnnW2ayUNYb9azFMHRlfhJ+rVkXhvzRWHQcbPJ
 a4mFLLXmHFvanMa1JCYGJ/X3rs/xbIqOufCVT7fp3vAnHKd2yJfZ+Dun4D8/P2JeXHwZkhITXB
 09A5O0Ual8oNnHOX5r+Zkz9zcNQLItIxFO7cumwG6kbkOGxD1hycn6h2wuflKdkzkQPbSRYT0h
 /9Gi/f7LF25gVS0mVxowv82CJHEuOWhr0EzocLjuL08k63ZkXS2qCoJy7arIDZvzzSJwtAaZbw
 2qE=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:44 -0700
IronPort-SDR: 4QS0kxeAR11TAsjK3q6rHbu4+NZzJ/T6AbVXb55vKDbMM+oCblWAbUFs2YUG9KGIgOHq6CvJL6
 XUwNm6KOwnm57J4RnjJo/YsJf7KQxoqDGhV11a0uPsyKLzme4AtvTwC+ST9Bmtyv86ntqEq4hc
 s99tUUKJH1Y54xjx3kIzWz1UZPM/tbIrLj/KWTho9Mx5xM2253HnCZK5jP5kww+0Kbc2uMt5Et
 jTuZjzyn9MCje8+jDXXIghxbJZq3kwbYIlwQW8gMVAhOzG05xOEF+r5ej7Dqx979eenILJzMIN
 mEY=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:13 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:23 +0200
Message-Id: <20230502101934.24901-10-johannes.thumshirn@wdc.com>
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
 Content preview: The GFS2 superblock reading code uses bio_add_page() to add
 a page to a newly created bio. bio_add_page() can fail, but the return value
 is never checked. Use __bio_add_page() as adding a single page to a newly
 created bio is guaranteed to succeed. 
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
X-Headers-End: 1ptn8M-0004ZU-Dx
Subject: [Jfs-discussion] [PATCH v5 09/20] gfs2: use __bio_add_page for
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

The GFS2 superblock reading code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Reviewed-by: Andreas Gruenbacher <agruenba@redhat.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/gfs2/ops_fstype.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/gfs2/ops_fstype.c b/fs/gfs2/ops_fstype.c
index 9af9ddb61ca0..cd962985b058 100644
--- a/fs/gfs2/ops_fstype.c
+++ b/fs/gfs2/ops_fstype.c
@@ -254,7 +254,7 @@ static int gfs2_read_super(struct gfs2_sbd *sdp, sector_t sector, int silent)
 
 	bio = bio_alloc(sb->s_bdev, 1, REQ_OP_READ | REQ_META, GFP_NOFS);
 	bio->bi_iter.bi_sector = sector * (sb->s_blocksize >> 9);
-	bio_add_page(bio, page, PAGE_SIZE, 0);
+	__bio_add_page(bio, page, PAGE_SIZE, 0);
 
 	bio->bi_end_io = end_bio_io_page;
 	bio->bi_private = page;
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
