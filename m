Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAB06D025C
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0w-0001mf-0x;
	Thu, 30 Mar 2023 11:00:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0u-0001mY-S4 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fGRF54MLXE30iUocDfCg50WtLR0P+nrfwKigypL+nw8=; b=l4c4je7nU3H9znhqHSiqOqdxSD
 59kdXU4tXhmvsrxxGuPzlaCyXHaBG/lnjs9/BsudFN9dBVPAJiaDgYVd4vbb+J0v+hXulpLuc9A5m
 osYYYWeH8Xfs1SgE0jk1kvKA8jlXEu9lyLOWu7ve12fR6QWsmItEP+aikLhGkSrM4QhA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fGRF54MLXE30iUocDfCg50WtLR0P+nrfwKigypL+nw8=; b=b0WameHlIMyXfAQKp+nDQsqZq5
 shwX3RnGlzhwmZ12t6bqIg7rNmkH9q++A5GSRkGsqSgAnsYuSSahZzk1aBeivwy+twAjmkotSbmtx
 1qOtpMayX09wu8/xAe0hALzS/93vlnrPMb1Zo5X12nJ8dlfINDmkyR9xqaGHh1fvMxx4=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0u-0007Uu-5R for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680174015; x=1711710015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b77AEY+fFVaCfrBI9YuTDKawey5CeI/SslH0xXZFoZw=;
 b=gOAwVKlkq7hIIVXEUP9+wvyEcUowDRpF5qZ8nnREJkDj8sSrza2dOa5Z
 t56Ow5vYr6hd7fwE6EF9e/98zUr8JyRxAtP0QLv3TKTjxpC73DDWmZeoW
 B0ygls0bq8xTB0lrk2nMJkyYLXptfvFiT9t/mHBZ/wDR6JEBb0F/gLx6u
 AUFU53MKhRnX18VKuAwlqd7C3iu/qFJNcSKBsAmjWrybv2X7371iylNIv
 D3IqtpBdW1FeIYapXT3U1pvK+cEooDrPOpRZzbQE4BRdkca/EK8u/aOPp
 Qe0Do5BBlIde9KHOgS0WG0SAhhEjPioBQLSdcRKVOTquFZ7tItLRVhV0J g==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948170"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:47 +0800
IronPort-SDR: Bf4cvRZ/4Dz1uMZ8QwJF8RQ1pgAeQ0SzvcIbGa4FfVmFqX6TgcHXonW+dDBHid0vW6GKwBtM63
 +JZp1jotYFRpb3l0nIX8L6uh++rKGQR1xCcUrRv887ya6UhKm3SZBWd9NFy8g8C9s+eXaLsXcE
 +xqiIxpUgJgTu5mRQntgMDqz96/cIGFQkKXSt7qmNJY32JZgLUMkJK27LTIYcSJGVVFOoCEG2K
 nuFrGRWbTR227eRUn3fsI+dFhdvg82xdOU1766suas+2XPnQMkGE80wmXApFC7t6GeTZ66gd8t
 Qn0=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:55 -0700
IronPort-SDR: bPTbKVKtlEcHRrx/gshidhFG8cTmJ7BMiKZMBOrx7BvqKjv6JDBLA7DtLgnQ8cD5tBy5QB4Li8
 EChWA24CGnvJ2Bor2+MClUrPy+r+I5aXuZR5uVZa+29PcBU56ON0tvsmmOLEdtLGgyfwshq8on
 uLUa5y4KbY1OsCGTLPOq9tHpy9dt3I1YsfvmNS3+L0GgTwHGeuOWfftTPpLJxuguO4KUD7Csdp
 y4baPtiMCCJStynBrqY2vXX+RwLmiiCo6Jnox1p4aCnNgMOXQOiTLaht7Zdw65/ETNfesjB+DJ
 BFM=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:45 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:56 -0700
Message-Id: <35c82b6fbc054342cce6a2084707bf3866813f33.1680172791.git.johannes.thumshirn@wdc.com>
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
 Content preview: The floppy code uses bio_add_page() to add a page to a newly
 created bio. bio_add_page() can fail, but the return value is never checked.
 Use __bio_add_page() as adding a single page to a newly created bio is
 guaranteed to succeed. 
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
X-Headers-End: 1phq0u-0007Uu-5R
Subject: [Jfs-discussion] [PATCH v2 14/19] floppy: use __bio_add_page for
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

The floppy code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/block/floppy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/floppy.c b/drivers/block/floppy.c
index 487840e3564d..6f46a30f7c36 100644
--- a/drivers/block/floppy.c
+++ b/drivers/block/floppy.c
@@ -4147,7 +4147,7 @@ static int __floppy_read_block_0(struct block_device *bdev, int drive)
 	cbdata.drive = drive;
 
 	bio_init(&bio, bdev, &bio_vec, 1, REQ_OP_READ);
-	bio_add_page(&bio, page, block_size(bdev), 0);
+	__bio_add_page(&bio, page, block_size(bdev), 0);
 
 	bio.bi_iter.bi_sector = 0;
 	bio.bi_flags |= (1 << BIO_QUIET);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
