Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 708AD8463B3
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Feb 2024 23:46:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rVfpA-00040J-PJ;
	Thu, 01 Feb 2024 22:46:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rVfp8-0003zl-FX
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LToxImH7Ggtjf8LnUXIYlXIE9yIbwLP7ppNPw0lx91E=; b=WF0Szjs6s7iVm6z/lf+aB/V7JE
 HKocWPydh33QII/BwIhJBGvtq625VjBAfFkX3iUTghu+6gk0+gcPK62vpTeD5g0VMraeaF6FPoi0Y
 mqvtIEehIU4g1fmQnnDLx/M9sZFBPkRUJJIDCaouwvQCShNfxJ0JtN+eB0TtaRmGVoi4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LToxImH7Ggtjf8LnUXIYlXIE9yIbwLP7ppNPw0lx91E=; b=aY1OuoiFbQMczdhK8+6ZX5EkB+
 mfRV4FTaa3eSlw8zqzW3OQDd6FD3XhT0M1BBAx6hZvmi4e+Lh8z5R/S6JvdQZqjiaecq9T3e01Su5
 OPfX0W5FyaAcWGmzuF1AyeOnES+557Roelg4Or22fzoK3AP0qqT7fUuUu2HMwLISDWS8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVfp4-0001Qm-GS for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=LToxImH7Ggtjf8LnUXIYlXIE9yIbwLP7ppNPw0lx91E=; b=qfnHg624No/qd5VmwS6PL8PMQs
 0TwpPi/IAjClOPJSeqjHcwm3JKYrXfQO2suiDu/AEnAdeXNOonwTM7NMZtuuAVd1P6OBnGEvTSEJ/
 myx1Z0plxW0QxVPVXYyyQzGGhc8LWfIINcKKqqe0wIA20UuuR1FHBp/cuQ4Iga18Ttcy+YECX7aHU
 zucWkEAYJ9E5NslQYYeOYRV/+K9gtYH8e1BLUC+9/KqMu2tE9iHvp0kBj5tQ0aN9xN9eoSu3NOKt1
 3RpWGdk1PexYY6ONm3I9a65rrleLLFDAgzAijZcZH68J3EogBktep4t5T+IoExuDyxpWozRHbNwn7
 k05HmS2w==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rVfot-0000000H18g-3hdA;
 Thu, 01 Feb 2024 22:46:07 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu,  1 Feb 2024 22:45:57 +0000
Message-ID: <20240201224605.4055895-9-willy@infradead.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201224605.4055895-1-willy@infradead.org>
References: <20240201224605.4055895-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Retrieve a folio from the page cache instead of a page. Saves
 a couple of calls to compound_head(). Signed-off-by: Matthew Wilcox (Oracle)
 <willy@infradead.org> --- fs/jfs/jfs_metapage.c | 12 ++++++------ 1 file
 changed, 6 insertions(+), 6 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rVfp4-0001Qm-GS
Subject: [Jfs-discussion] [PATCH 08/13] jfs;
 Convert __invalidate_metapages to use a folio
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
Cc: linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Retrieve a folio from the page cache instead of a page.  Saves a
couple of calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 552e6e97537c..2eb9db0184c1 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -791,7 +791,6 @@ void __invalidate_metapages(struct inode *ip, s64 addr, int len)
 	struct address_space *mapping =
 		JFS_SBI(ip->i_sb)->direct_inode->i_mapping;
 	struct metapage *mp;
-	struct page *page;
 	unsigned int offset;
 
 	/*
@@ -800,11 +799,12 @@ void __invalidate_metapages(struct inode *ip, s64 addr, int len)
 	 */
 	for (lblock = addr & ~(BlocksPerPage - 1); lblock < addr + len;
 	     lblock += BlocksPerPage) {
-		page = find_lock_page(mapping, lblock >> l2BlocksPerPage);
-		if (!page)
+		struct folio *folio = filemap_lock_folio(mapping,
+				lblock >> l2BlocksPerPage);
+		if (IS_ERR(folio))
 			continue;
 		for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
-			mp = page_to_mp(page, offset);
+			mp = page_to_mp(&folio->page, offset);
 			if (!mp)
 				continue;
 			if (mp->index < addr)
@@ -817,8 +817,8 @@ void __invalidate_metapages(struct inode *ip, s64 addr, int len)
 			if (mp->lsn)
 				remove_from_logsync(mp);
 		}
-		unlock_page(page);
-		put_page(page);
+		folio_unlock(folio);
+		folio_put(folio);
 	}
 }
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
