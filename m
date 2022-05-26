Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FDE5353FD
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 May 2022 21:30:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuJB0-0006YQ-Ly; Thu, 26 May 2022 19:29:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuJAx-0006Xp-4s
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1fhVscOW1QMOtBJ4MYUro8V0mlGs9LMeYL9nu8qXYo8=; b=L90FLay0caw7IRGzWm7bFX7lA3
 4ZZD418SfdOy3fxHtSW3u/2YxoA8Lr1Q1+m5bq4uuAsLooHuJ8gRwvY4kLRwiSItuoA7N1kpboj6A
 77RD6OFwgALpJk0Fbbaz9jBxlf2q9rO5diOaOYGfcM6+3hD16512Sh/Ke499WU1sBPSE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1fhVscOW1QMOtBJ4MYUro8V0mlGs9LMeYL9nu8qXYo8=; b=WzYFBvAXHZpMDW+6l7+QMDXg8L
 sld/ud5AhRBTqFMVgbzqpFDKdgD8VCtd/qOQ8i7uK/rcmAdLyFdNGuJWPpVUmPNo69Zze7mVxEQ+o
 u7yDq8nEo7s/ViuiYMXdBspx/Lb7qOnH98Nt0HrReo7so7ar74Ktvg6smDhpng+CN20U=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuJAr-0000tB-F1
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=1fhVscOW1QMOtBJ4MYUro8V0mlGs9LMeYL9nu8qXYo8=; b=PlCc04kb97cOIq5Cf9I+WzLb4y
 oBWpTrQHbjyjGcJScgjtxGMTxxgLsd+cG0TmNOtyMiziU0Z5x8NqFu5LreDVeZrO5BpTmBrXXkRop
 L1kl8RI5YnNtRpxmZLYiT/DTy3jXniIlNauKk8dhcv0MEG6QzNYG4auWZI9u2gI89RFewJ7OwMiOX
 rvmIY25KUFXK8VMvu96zXGow2DIOyOMZtXCAjh2wnBfhm20oxH6eCYl/6ZBLHYAQ84awbOImpWHjr
 EKv2vZRC7lUbkYrGoj7aIYR5uBDKeE2Lfzr16i2+SiRLgMD21ze2QZQ2rPZPo9HY3m9H0wGMFYoEo
 xwTQL6tQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuJAb-001Uuf-4E; Thu, 26 May 2022 19:29:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net,
	linux-fsdevel@vger.kernel.org
Date: Thu, 26 May 2022 20:29:07 +0100
Message-Id: <20220526192910.357055-7-willy@infradead.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220526192910.357055-1-willy@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use the new iomap support to implement bmap. Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/jfs/inode.c | 2 +- 1
 file changed, 1 insertion(+),
 1 deletion(-) diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
 index 63690020cc46..19c091d9c20e 100644 --- a/fs/jfs/inode.c +++
 b/fs/jfs/inode.c
 @@ -365,7 +365,7 @@ static int jfs_write_begin(struct file *file, struct
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nuJAr-0000tB-F1
Subject: [Jfs-discussion] [RFC PATCH 6/9] jfs: Handle bmap with iomap
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
Cc: Christoph Hellwig <hch@infradead.org>,
 "Darrick J . Wong" <djwong@kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Use the new iomap support to implement bmap.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/inode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 63690020cc46..19c091d9c20e 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -365,7 +365,7 @@ static int jfs_write_begin(struct file *file, struct address_space *mapping,
 
 static sector_t jfs_bmap(struct address_space *mapping, sector_t block)
 {
-	return generic_block_bmap(mapping, block, jfs_get_block);
+	return iomap_bmap(mapping, block, &jfs_iomap_ops);
 }
 
 const struct address_space_operations jfs_aops = {
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
