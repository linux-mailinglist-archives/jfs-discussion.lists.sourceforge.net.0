Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B756CF031
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:06:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZFt-0001Wr-Mc;
	Wed, 29 Mar 2023 17:06:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZFo-0001WM-Az for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wr4TqYIoyZgSPEHCC6VAhbvy7XhcXyGwh96krkcqiG4=; b=PcjYwIuqKSvxNkFd9pqwVRLd/l
 ZzwVbTN2E/I1bc1rqjiObZ5MHmfHDychUVuUy6ElR9n8oo389ZmFaYbbKfOI8jJ41umOrQjvSopdo
 k+P8o4HtlnX5F/i1Aq7F7tUuWDF5RBBMs+BWzKtN2D0gLNME1nsWmEiz9SUFoKj/9U7U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wr4TqYIoyZgSPEHCC6VAhbvy7XhcXyGwh96krkcqiG4=; b=f9D969/4616XXw+50o9QyOAS9+
 fSfh7xhfzs74+KIKx7joa5+m5mCVKVKh8W3RCHANzeAN7bNzLXYPfJtXOfFii794MwvedOVPtmEaY
 DIMdOsOp47MkaWImlbXIBbDH0pfT6U0W0BzpS+PHszQinEYL6zxEvdT51zUmrZI7usfM=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZFl-008aXc-QV for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109589; x=1711645589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KyIfu3zY47yLy6bRdPbtwNMrj/lN6bI3KAvSZ3cykmU=;
 b=DhrCeAwlS5eOC/gU8LIw0jtUsxlzZgf5uP/H5FAY2HmOxEdv0uvGNl3X
 p6NKSTB9s/nXiM4nX9eJZpX2kbOtzJFQiohB72QlZ6ie/JVNLE/f+hPB7
 FOfCYBjOMsrgbMeKKl+IudKGpgvNmIg9O2Less4gjNlnGgil3yyGdBYqv
 vrAU5nzFQIZ/gk8HsEgeGUJtSg95jMcEAxa0DNWPezEeQVQnr779BKJ4N
 re8sN0QqTJdXMXtKo7bh24KpfYn00u1nynkfKnVeVVFZnnsq5bXDg8mrV
 LDS5tqNGAvBO3bPZAy1qtIVdMsvLHbaLxmtzG86ymbYDoHFlrCdECt3YR Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807020"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:29 +0800
IronPort-SDR: vCCEn9XvkxKD8JqMlArD6cILJawlUhGusknQBPoHa8j1oBbQnb1TMpwNT/ENHMGgEOvbynENB6
 EL5aEcJVJ94/VuBmhh9LFFUaI5KGFnwyrDhkIvhI2HLMdDIXozyAl49oT8UgwwFvtWAeSGDRGA
 Sk0+Q+l49PYWYVrAavxCz6Z3ZplvpMHNjRPDZSrrRDVOjMpIoGy7zZ65NVl+1D1mQ3ZDbvRyjY
 XO97aum5SDulLFRU/KbQKKzA/j4rE3J7URKPg936itMnL9fCR3hdoSHcdYVglLb6kqsEPStjY5
 UBw=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:22:39 -0700
IronPort-SDR: 1njdf8/CpG2wu7Qu8ihT3x7xLc8wy22vSSqYOwPugiiyw2WXLX0xfwIb3ruUPKyie2J2TxJ6mO
 +mzM95UW16s8gPzsDG1+pgyKiYXVlP9/tknr6cMK/tmdwWp7FCAsb3dZSwA6t2tkrLYbMDJ4dl
 bgA4utwx7/yRV+ji/32tVB37ULrzfKvgsiu8yqho+w5+nRwPLVEASsAGm4YRFVvD4TrkbhHNYK
 1UF/NdCIe6OXs5RI9Vq2tALxfVuzSQv5O5wnGhlKPenDTHlLVNZ37DGNgNgv7q9K0mL6gtkYkx
 JH4=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:28 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:49 -0700
Message-Id: <4a2c46dc0e217a9fb6b9f32d460498a5feb8b67b.1680108414.git.johannes.thumshirn@wdc.com>
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
 Content preview:  dm-zoned uses bio_add_page() for adding a single page to a
 freshly created metadata bio. Use __bio_add_page() instead as adding a single
 page to a new bio is always guaranteed to succeed. This brings us a step
 closer to marking bio_add_page() __must_check 
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
X-Headers-End: 1phZFl-008aXc-QV
Subject: [Jfs-discussion] [PATCH 03/19] dm: dm-zoned: use __bio_add_page for
 adding single metadata page
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

dm-zoned uses bio_add_page() for adding a single page to a freshly created
metadata bio.

Use __bio_add_page() instead as adding a single page to a new bio is
always guaranteed to succeed.

This brings us a step closer to marking bio_add_page() __must_check

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/dm-zoned-metadata.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/md/dm-zoned-metadata.c b/drivers/md/dm-zoned-metadata.c
index cf9402064aba..8dbe102ab271 100644
--- a/drivers/md/dm-zoned-metadata.c
+++ b/drivers/md/dm-zoned-metadata.c
@@ -577,7 +577,7 @@ static struct dmz_mblock *dmz_get_mblock_slow(struct dmz_metadata *zmd,
 	bio->bi_iter.bi_sector = dmz_blk2sect(block);
 	bio->bi_private = mblk;
 	bio->bi_end_io = dmz_mblock_bio_end_io;
-	bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
+	__bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
 	submit_bio(bio);
 
 	return mblk;
@@ -728,7 +728,7 @@ static int dmz_write_mblock(struct dmz_metadata *zmd, struct dmz_mblock *mblk,
 	bio->bi_iter.bi_sector = dmz_blk2sect(block);
 	bio->bi_private = mblk;
 	bio->bi_end_io = dmz_mblock_bio_end_io;
-	bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
+	__bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
 	submit_bio(bio);
 
 	return 0;
@@ -752,7 +752,7 @@ static int dmz_rdwr_block(struct dmz_dev *dev, enum req_op op,
 	bio = bio_alloc(dev->bdev, 1, op | REQ_SYNC | REQ_META | REQ_PRIO,
 			GFP_NOIO);
 	bio->bi_iter.bi_sector = dmz_blk2sect(block);
-	bio_add_page(bio, page, DMZ_BLOCK_SIZE, 0);
+	__bio_add_page(bio, page, DMZ_BLOCK_SIZE, 0);
 	ret = submit_bio_wait(bio);
 	bio_put(bio);
 
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
