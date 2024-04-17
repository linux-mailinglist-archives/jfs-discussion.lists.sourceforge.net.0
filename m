Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FF08A8A9A
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9X3-0000Nw-Cw;
	Wed, 17 Apr 2024 17:57:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9X0-0000N6-0f
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3F2REPprGFU3NAO/d/I198nnDhbiMS319KeFMfWiBPg=; b=jDGxLkGA66LB0MafHCgt4L3BGq
 y5TfNE8jABrtAY41mXxo6Hmq8KBekM/E0xh3mo08A9X/9yiRj74rGbfZnKOsDv3bseWwmmaHJjfBe
 1xjFrrKgAQ+271vQWLY9olQbykdQZHkD9SlJlZRGJ0SzsPtSbN+QO0BwPsacq9WiYYPQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3F2REPprGFU3NAO/d/I198nnDhbiMS319KeFMfWiBPg=; b=lE+oy3BAa540VRgX9aK5OUvHWw
 xRIikZqthMuUYtX8DHw4f+3xnl5uj32o9ioZAM41/Wl0SYrFocSkUrWyAl1V+LVmHNdbiVK8vMs+M
 rTu+aixcurvC6liV0hAZxF2xY47gW07z3k5/rvkxslI8BA9s2jPeqsNlc79pgqA6G15c=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9X0-0000lZ-7P for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=3F2REPprGFU3NAO/d/I198nnDhbiMS319KeFMfWiBPg=; b=DkOHoJG3mlz7vONEam1pM4aTTe
 q2GT0LreR2yevYFYSlTL/V+tjIxSsC+nk7VjqD+8zXX5H36XjoUZzEXMI6rdrIXehMTjvM3KXEdeZ
 GGse1/srcJ/ECYGUpUfMkvj1qZuNNBfueSNXFJB+FfvNd6V80fJRzLLHW5Oc2NV+1DSUrlc5oBGaC
 p5p0EB70kFnyOJ4jC4LHRj2kpxaVJr6iWRRM4KULHsMWTGYG94B+WJ+cMqg8Sl1yesPrmg3q0ytjQ
 S9PGbQfxykyYgg7TLIOd6b0UuMRe8n6VYnrkgpie3BhDt3ULvzlJsstec7lQsXRFEdYRNLoq6wdVe
 8CiW2/Rg==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wo-00000003Qtq-31jc;
 Wed, 17 Apr 2024 17:57:02 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:55 +0100
Message-ID: <20240417175659.818299-12-willy@infradead.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240417175659.818299-1-willy@infradead.org>
References: <20240417175659.818299-1-willy@infradead.org>
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
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rx9X0-0000lZ-7P
Subject: [Jfs-discussion] [PATCH v2 11/13] jfs: Convert force_metapage to
 use a folio
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
index f03e217ec1cb..c88a7bc3f736 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -689,9 +689,8 @@ void grab_metapage(struct metapage * mp)
 	unlock_page(mp->page);
 }
 
-static int metapage_write_one(struct page *page)
+static int metapage_write_one(struct folio *folio)
 {
-	struct folio *folio = page_folio(page);
 	struct address_space *mapping = folio->mapping;
 	struct writeback_control wbc = {
 		.sync_mode = WB_SYNC_ALL,
@@ -720,17 +719,17 @@ static int metapage_write_one(struct page *page)
 
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
@@ -771,7 +770,7 @@ void release_metapage(struct metapage * mp)
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
