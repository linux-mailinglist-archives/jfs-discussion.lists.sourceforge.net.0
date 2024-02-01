Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8728463AF
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Feb 2024 23:46:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rVfpA-000407-EY;
	Thu, 01 Feb 2024 22:46:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rVfp7-0003zT-QI
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sE/YQ5G34kCC0ntB4hwruHztmMrVkvB6/wZslSYOwFA=; b=DthzQacWbTPgw9uMiwTTarXuaq
 dHBo95Ac90UOvOZwijKMfg6gKh+HuYe7MqemyflQU09NtNh9QsRysKbJnT9IBcJ61GwIzeFhKBIoO
 iS4lC1A8wx7eZwmKvuEVgmoJNrj2qdA1/JafkndGgg0+KIhk14s4er4raVcxrYmqZEQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sE/YQ5G34kCC0ntB4hwruHztmMrVkvB6/wZslSYOwFA=; b=XUzeMdEewDfRrTxwFlmdAYd2ra
 N1kx3bJGerTYPkGHngKkX8nmT7rhaP4Xo7rFoM525tIuo15hUPHwLOX0S/ZjfyGw0FyOh4rKq7CMr
 l8BesVCqqlEL+ulftbC89lPqUrZ+SP3C582Fr96UU+Hz+xUsYNE6WxkTl2t1mUgf7sqA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVfp4-0001Qj-8a for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=sE/YQ5G34kCC0ntB4hwruHztmMrVkvB6/wZslSYOwFA=; b=rgaVwvnQo8pRztT4oviAFnMDdq
 njyPDWS/GlDj8yL86ODrgSAmQsa2ZwNde3ebCd+1DIlHOA0oki22/vpQ86xeNz2h1lPB+gworl2km
 R9iF8maNxq8Fai60JKgByrekYgBcZWT1MM2VBC7z2WCV8vQLaNtH1gZT85P1mQvzO4ZSLxXxQ5Z8X
 WdZL7IfG41wHrFg7eva9sDgg/4hiK7VhnB2gku0OWX8HHc7pvE7DR4HM1CQ44PyNJ5SVgHsgfa3h6
 8J+xJ+m/8c6SVTzFgV0e9MkmPc0m4PXRlkkYeDXPCs4dSIDhvP1ldE4kx58ViFi7EcrVVolQglWS5
 2OeG68PQ==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rVfot-0000000H18S-2dzi;
 Thu, 01 Feb 2024 22:46:07 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu,  1 Feb 2024 22:45:55 +0000
Message-ID: <20240201224605.4055895-7-willy@infradead.org>
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
 Content preview:  All callers now have a folio, so pass it in instead of the
 page. Removes a couple of calls to compound_head(). Signed-off-by: Matthew
 Wilcox (Oracle) <willy@infradead.org> --- fs/jfs/jfs_metapage.c | 24
 ++++++++++++ 1 file changed, 12 insertions(+), 12 deletions(-) 
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
X-Headers-End: 1rVfp4-0001Qj-8a
Subject: [Jfs-discussion] [PATCH 06/13] jfs: Convert drop_metapage and
 remove_metapage to take a folio
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

All callers now have a folio, so pass it in instead of the page.
Removes a couple of calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 4515dc1ac40e..56bd11f9ded5 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -112,10 +112,10 @@ static inline int insert_metapage(struct folio *folio, struct metapage *mp)
 	return 0;
 }
 
-static inline void remove_metapage(struct page *page, struct metapage *mp)
+static inline void remove_metapage(struct folio *folio, struct metapage *mp)
 {
-	struct meta_anchor *a = mp_anchor(page);
-	int l2mp_blocks = L2PSIZE - page->mapping->host->i_blkbits;
+	struct meta_anchor *a = mp_anchor(&folio->page);
+	int l2mp_blocks = L2PSIZE - folio->mapping->host->i_blkbits;
 	int index;
 
 	index = (mp->index >> l2mp_blocks) & (MPS_PER_PAGE - 1);
@@ -125,8 +125,8 @@ static inline void remove_metapage(struct page *page, struct metapage *mp)
 	a->mp[index] = NULL;
 	if (--a->mp_count == 0) {
 		kfree(a);
-		detach_page_private(page);
-		kunmap(page);
+		folio_detach_private(&folio->page);
+		kunmap(&folio->page);
 	}
 }
 
@@ -156,10 +156,10 @@ static inline int insert_metapage(struct folio *folio, struct metapage *mp)
 	return 0;
 }
 
-static inline void remove_metapage(struct page *page, struct metapage *mp)
+static inline void remove_metapage(struct folio *folio, struct metapage *mp)
 {
-	detach_page_private(page);
-	kunmap(page);
+	folio_detach_private(folio);
+	kunmap(&folio->page);
 }
 
 #define inc_io(page) do {} while(0)
@@ -214,12 +214,12 @@ void metapage_exit(void)
 	kmem_cache_destroy(metapage_cache);
 }
 
-static inline void drop_metapage(struct page *page, struct metapage *mp)
+static inline void drop_metapage(struct folio *folio, struct metapage *mp)
 {
 	if (mp->count || mp->nohomeok || test_bit(META_dirty, &mp->flag) ||
 	    test_bit(META_io, &mp->flag))
 		return;
-	remove_metapage(page, mp);
+	remove_metapage(folio, mp);
 	INCREMENT(mpStat.pagefree);
 	free_metapage(mp);
 }
@@ -539,7 +539,7 @@ static bool metapage_release_folio(struct folio *folio, gfp_t gfp_mask)
 		}
 		if (mp->lsn)
 			remove_from_logsync(mp);
-		remove_metapage(&folio->page, mp);
+		remove_metapage(folio, mp);
 		INCREMENT(mpStat.pagefree);
 		free_metapage(mp);
 	}
@@ -774,7 +774,7 @@ void release_metapage(struct metapage * mp)
 		remove_from_logsync(mp);
 
 	/* Try to keep metapages from using up too much memory */
-	drop_metapage(&folio->page, mp);
+	drop_metapage(folio, mp);
 
 	folio_unlock(folio);
 	folio_put(folio);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
