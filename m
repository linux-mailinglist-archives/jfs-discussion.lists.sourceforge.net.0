Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F5F8463AA
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Feb 2024 23:46:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rVfp6-0001wq-JK;
	Thu, 01 Feb 2024 22:46:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rVfp4-0001wk-NH
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OTufa8taMJlZYmWBs6HvMsiwrkZelXub51uPI5R94M4=; b=BpAF0nVTLaaSGgbnFFgW8tAztR
 2x/aQzMhp1g2ioeu788f9ca0UYoJ0fcYHGZAKop1d4L6A+ndvb+1GpGh6qShHi4H0rq3M2DtYLp+n
 kyPmDZu2hI5LGepXR+8RR4O/0u568xSdt4dfvzgLqF68yeeEA7KHr5AEPIi+zJ+E6iUk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OTufa8taMJlZYmWBs6HvMsiwrkZelXub51uPI5R94M4=; b=e8VaHYexAScvxhoDg7W76RbrWx
 59krmf+ibCbJvtJcO29nZsPYuZvSywxTCZtHiyeb06pmdNArvx9STCjh6ttOml54W92H27IODJLim
 yWdpUIJHmSj2v9J4nfZJXWGHom/BM+hNh1eiz0Vi6qSgQ1R5pm+dSCK3BuZLjU8/wO1E=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVfp0-0001Q9-CT for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=OTufa8taMJlZYmWBs6HvMsiwrkZelXub51uPI5R94M4=; b=T6Cz7rsxNF0Zrez6iJziDt4OwS
 SMMCR59woXJ6MGYGSYtJXYyixcQKIkeoDQPVS/H8ifPWmIc3zbks4jQpfiWk4UqpthLHS4L6ogKR0
 jXj30yjrojdgX9u5pZi82+P1JyuaVavThYO6kCD6nV0K1EvIhjgAwL8nPdcCn7VYIJk6j7XdSk0qa
 sbnSaWSj9f7fgAxkHRYiBKyGeze/XG79dq8oKUklw0EcAEKs8k7erlOrX/ebMUTWF9Q3CSfINpVOq
 DtlcMduDp+Q4fgJ8qrjQws0CMV29ZxfEQPvpNLwb5h4eEGaryeVyQxjd9P9W11dxWvcTDIktl+eHL
 zUj9l9oA==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rVfou-0000000H191-12DU;
 Thu, 01 Feb 2024 22:46:08 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu,  1 Feb 2024 22:46:00 +0000
Message-ID: <20240201224605.4055895-12-willy@infradead.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201224605.4055895-1-willy@infradead.org>
References: <20240201224605.4055895-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Convert the mp->page to a folio and operate on it. That lets
 us convert metapage_write_one() to take a folio. Replaces five calls to
 compound_head()
 with one. Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> ---
 fs/jfs/jfs_metapage.c | 17 ++++++++--------- 1 file changed, 8 insertions(+), 
 9 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1rVfp0-0001Q9-CT
Subject: [Jfs-discussion] [PATCH 11/13] jfs: Convert force_metapage to use a
 folio
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

Convert the mp->page to a folio and operate on it.  That lets us
convert metapage_write_one() to take a folio.  Replaces five calls to
compound_head() with one.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index bc62d4bb4712..23e81d713c62 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -688,9 +688,8 @@ void grab_metapage(struct metapage * mp)
 	unlock_page(mp->page);
 }
 
-static int metapage_write_one(struct page *page)
+static int metapage_write_one(struct folio *folio)
 {
-	struct folio *folio = page_folio(page);
 	struct address_space *mapping = folio->mapping;
 	struct writeback_control wbc = {
 		.sync_mode = WB_SYNC_ALL,
@@ -719,17 +718,17 @@ static int metapage_write_one(struct page *page)
 
 void force_metapage(struct metapage *mp)
 {
-	struct page *page = mp->page;
+	struct folio *folio = page_folio(mp->page);
 	jfs_info("force_metapage: mp = 0x%p", mp);
 	set_bit(META_forcewrite, &mp->flag);
 	clear_bit(META_sync, &mp->flag);
-	get_page(page);
-	lock_page(page);
-	set_page_dirty(page);
-	if (metapage_write_one(page))
+	folio_get(folio);
+	folio_lock(folio);
+	folio_mark_dirty(folio);
+	if (metapage_write_one(folio))
 		jfs_error(mp->sb, "metapage_write_one() failed\n");
 	clear_bit(META_forcewrite, &mp->flag);
-	put_page(page);
+	folio_put(folio);
 }
 
 void hold_metapage(struct metapage *mp)
@@ -770,7 +769,7 @@ void release_metapage(struct metapage * mp)
 		folio_mark_dirty(folio);
 		if (test_bit(META_sync, &mp->flag)) {
 			clear_bit(META_sync, &mp->flag);
-			if (metapage_write_one(&folio->page))
+			if (metapage_write_one(folio))
 				jfs_error(mp->sb, "metapage_write_one() failed\n");
 			folio_lock(folio);
 		}
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
