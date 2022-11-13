Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8973F627149
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Nov 2022 18:40:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouGxq-00079n-7K;
	Sun, 13 Nov 2022 17:40:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+5e9d9a7f9455f7bb8c66+7021+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ouGxn-00079a-Bo; Sun, 13 Nov 2022 17:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JwXtoXGkop9hD0FEm0hcYM7qnY+377I44KCoQqxQtJQ=; b=akbOsW+xIDyHyjhHwVNRKQcD/v
 WjIdrlrs8TQ1FZ0ZcJSnvRjBVhW4EhgS2eSrEEIdBnU5PAlw8edGe7Msi6rA95DgCdwQtRdZG3va+
 6sv74Pl6prPI8RGrucgHP7nHMfKxC/w1YTanLI813HSJ07DPqln+dJX6pLpy/366V4Pg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JwXtoXGkop9hD0FEm0hcYM7qnY+377I44KCoQqxQtJQ=; b=GoPQOIO5N79uHngRs59ML+mVY1
 bj3BhQ6Ldk3Yr5XCkVH4Wd6vxvHuNzwlBrcps7VyRnEe/S1xTB4X1GjA7YSsgZXr4vWBwAMpkEll6
 5ja4U80Z0f0Fc8dhqKqSDXOM2Swv2dxFa2S1vVN0ddXZA59MOpUI0upjEeed0EySlAoA=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouGxj-0006xm-Pp; Sun, 13 Nov 2022 17:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=JwXtoXGkop9hD0FEm0hcYM7qnY+377I44KCoQqxQtJQ=; b=wUYRXq26nhv9xpe10rc5HsZITE
 lyn4MpFMto7QmgQTl2vzV7N0OM3s3fH/vVK2gc5+nQAg7RUdFqAQIHC9tXpykqfwdb/4vzmPQh+lH
 2t+TwS1cXGwjpc8wmOruGdig1C1L6zUH3SJ6XYsmuv5SWrNO1SMwly55DS7CPWsvX0ZmHGGzQ+89Z
 O6uLnzEwgb9YwWHpR4qlN46nYLU9yI9eGZneYZOVFIVUHbMKNmX+cpGz/I3PZP1/4xb+KrGPBkfEY
 nzGNfI87UnslNJ6EK4QHPF6dLHI30feek9fYrI1OIbxl3VX/SF5ap3Hw14YmVPSAqOAuXL/6kRnxF
 jvSsVVYg==;
Received: from 213-225-8-167.nat.highway.a1.net ([213.225.8.167]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ouFrZ-00CK21-8R; Sun, 13 Nov 2022 16:29:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Sun, 13 Nov 2022 17:29:01 +0100
Message-Id: <20221113162902.883850-9-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221113162902.883850-1-hch@lst.de>
References: <20221113162902.883850-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  ->writepage is a very inefficient method to write back data, 
 and only used through write_cache_pages or a a fallback when no
 ->migrate_folio
 method is present. Set ->migrate_folio to the generic buffer_head based helper,
 and remove the ->writepage implementation. 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ouGxj-0006xm-Pp
Subject: [Jfs-discussion] [PATCH 8/9] omfs: remove ->writepage
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
Cc: linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
 jfs-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

->writepage is a very inefficient method to write back data, and only
used through write_cache_pages or a a fallback when no ->migrate_folio
method is present.

Set ->migrate_folio to the generic buffer_head based helper, and remove
the ->writepage implementation.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/omfs/file.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/fs/omfs/file.c b/fs/omfs/file.c
index fa7fe2393ff68..3a5b4b88a5838 100644
--- a/fs/omfs/file.c
+++ b/fs/omfs/file.c
@@ -294,11 +294,6 @@ static void omfs_readahead(struct readahead_control *rac)
 	mpage_readahead(rac, omfs_get_block);
 }
 
-static int omfs_writepage(struct page *page, struct writeback_control *wbc)
-{
-	return block_write_full_page(page, omfs_get_block, wbc);
-}
-
 static int
 omfs_writepages(struct address_space *mapping, struct writeback_control *wbc)
 {
@@ -375,10 +370,10 @@ const struct address_space_operations omfs_aops = {
 	.invalidate_folio = block_invalidate_folio,
 	.read_folio = omfs_read_folio,
 	.readahead = omfs_readahead,
-	.writepage = omfs_writepage,
 	.writepages = omfs_writepages,
 	.write_begin = omfs_write_begin,
 	.write_end = generic_write_end,
 	.bmap = omfs_bmap,
+	.migrate_folio = buffer_migrate_folio,
 };
 
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
