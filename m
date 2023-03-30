Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DDA6D024C
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0V-0001kK-KD;
	Thu, 30 Mar 2023 10:59:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0T-0001ju-VU for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AUXGgNT6cs6FilIOLXof8jwittuzkqjgm4UW4TirO18=; b=W+aPV7NJ5iS559DlAJio3BkKKZ
 CImJI//dGy5gSbtescME+jnkVkqMsltEPa9ac3NdYuECPFN0Af1wcViJPxwxoQB+giFd0ZQSC59d2
 ZiAokjA+0Fq0aYBmGXA0yhzKgS97Bo5rT63STT3esKU7pJKkkc0ZSqsvUnChgGGWjqdM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AUXGgNT6cs6FilIOLXof8jwittuzkqjgm4UW4TirO18=; b=a2Iv5nKKAsMd+FnPtkpTjgRokJ
 VJZqYiuvbuuMKDzIFRJPqICdZ8ItfadsNYsBVP3AOIUf5nZ43pke50EOjaDishkS7i8Xguy2U6BQN
 pCH1/U8xdKl/IIuZh5slQrdHCya9eEH1OAZwPXv+VC+t9TDmoYBRZQoNsssHyx6Owk/s=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0T-009UvH-Jr for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680173989; x=1711709989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BUmURHFdu9KejVTyXSm50CHGFvGjlqfpSblNCpyXxd0=;
 b=DfUAFyrxrN4XOXvNd7rpnCmmqRY6g3ZzWeRPYq62Byt8Zw/0tiX0NjyS
 LfjIeRfE2VDwu4nRzLE8cVooLLZ21gnqfzgOzeF8+oFiWP5tbca191Jty
 /92tMrnZsSyP4ZZHaP+QxWO5dR+/YKb+LrbZ7bPziM7TfKbYlE8iD4taS
 Reu8GHy3uQsR/dB5NKtmXChMQstwU3pr4xYKPyMcgac+970MG23TMZX/n
 nmbrWMaHLPTu7brHMfGtQdmJbqirINW6hCKwBjp6zmlT6CGkZQwLby9xg
 e56exngHgqf1cq3+9hiU3VkPwM4LOqy5zPiPNJGoi9xkrohZrAvuZZlLf Q==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948080"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:14 +0800
IronPort-SDR: OIts/CKr1yUgvMVTgfCDLoNi/ecd1nkzAu9eFjmL+zmcmQRVt5Hs2Q9hEp9R5eAGjGFsGnGOb7
 0q3hhz/KHBC+mstX4Ou8CP9NTJP3z0R7GPDnu7M13FcFK42AWratA+sJXvcDZBpWZj7Bd2fV4r
 zGqYCOs7lJQpip6YDULWiqXUc1e4BB5mlexuzXQSTNCXgzqStTEaJPxPQdrdkDx57anu7I9C0e
 Xz2aWVCLVHJN+6jX4awHFGXVHXFHMs8xTYCiGPzjOJuSi/tgnHgvE0wyz6HDOtuc15LUq1Qd23
 kKs=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:23 -0700
IronPort-SDR: zqJUuuEWGvtk5ynuIvdoGSTcK/Y7DxRZqa2AqDl93PHBq8zvX3+RgmnnfgDIeH88tY2GRigaWC
 ksCV/5j5AZp1gugBzl1vz+fSlxsewSxY1IwvAF8Z1UQmeURLZPv6rUrbXBVcc6ZKqszwyeJr9U
 LQsK3/q3aYuyJzksTzLRhNklEISxCuzFF/G4VTc5KVfAu43VSgYzFZoy1iZQGI8hm4vbdG/U+b
 a9LQ6+vlvJUUlbReY3s1WU5G9fOKBxzpyEUyM461G23b/3bmRf1IU3OFcf2/9bo9XK1+73YPu+
 eEA=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:12 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:45 -0700
Message-Id: <0b8d78cb8d38e4d4e3c5b1c187c81194b6403251.1680172791.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680172791.git.johannes.thumshirn@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
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
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phq0T-009UvH-Jr
Subject: [Jfs-discussion] [PATCH v2 03/19] dm: dm-zoned: use __bio_add_page
 for adding single metadata page
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

dm-zoned uses bio_add_page() for adding a single page to a freshly created
metadata bio.

Use __bio_add_page() instead as adding a single page to a new bio is
always guaranteed to succeed.

This brings us a step closer to marking bio_add_page() __must_check

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
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
