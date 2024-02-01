Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDAD8463B1
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Feb 2024 23:46:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rVfpA-0001dD-KY;
	Thu, 01 Feb 2024 22:46:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rVfp9-0001cl-4J
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SEpa6480I+pdiTlB5C3vLDzZUjMsrv32xMAaAlalAus=; b=DJOX5uyUFdGtkQywCwNq4ngrOr
 o1MIbjr/yDT7vtkxdOlN2ugr0J1ltxb4RN4mgpe2R/SAvHa4PAiEfGGKMSNSjVhiS/ptSXQvDKZGz
 HffjlM5D0VPj8S8tQC9Iaq93LF5myMad6EjAOtKkt+AIewwf6XrqX7wLRia9ZyqJiyog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SEpa6480I+pdiTlB5C3vLDzZUjMsrv32xMAaAlalAus=; b=D15TtkY4sgE+acCyFw4DfnlswM
 bwUAOzlwDkZnPPPHyjcDb6xkrlNfe+okcx8asdJkiYblKPdi3Q2VlpiB8dIW95flFBiAnAdn/2iEq
 cZMVDEId6cyHM63BXEnDO6tENF98fSYF2h33pHSBJt8o51LdkAZ0P9x2Z5F/yBiY99nM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVfp5-0001Qo-1K for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=SEpa6480I+pdiTlB5C3vLDzZUjMsrv32xMAaAlalAus=; b=bjawtGmGb34tM5sVRDqHL+w8q4
 TvczJWUJXrGM/KJMcNTq28RvhuxlhnSWTRSVIuxe7uu+/5PElWli9PuatNUxe6uYy5zqtUjyOfxJT
 PmXvc7a1w5pTg0ONF4f3V+eb+1yJjBX2Y/yNIAvbTaCUVe8+I6MFinY/u1UMt8nAvDInQl8GWj7O2
 d+fsxzIhZFDpR3HQ8GwxB57J4rZshhgFZEWKi4I+BZhNgDPYOkLZx5vlyy3podanMjlEt3s+FVJqM
 6UtjXXGkgMvSBIuuQKYFFbFBdpQK9ZVjPMZX4zGrckrX2C+u76LmtsiF1mcwPAnlabdoAu86fE4bR
 F8LQlgCg==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rVfou-0000000H198-1YSo;
 Thu, 01 Feb 2024 22:46:08 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu,  1 Feb 2024 22:46:01 +0000
Message-ID: <20240201224605.4055895-13-willy@infradead.org>
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
 Content preview:  Convert all the users to operate on a folio. Saves sixteen
 calls to compound_head(). We still use sizeof(struct page) in print_hex_dump, 
 otherwise it will go into the second and third pages of the fol [...] 
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
X-Headers-End: 1rVfp5-0001Qo-1K
Subject: [Jfs-discussion] [PATCH 12/13] jfs: Change metapage->page to
 metapage->folio
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

Convert all the users to operate on a folio.  Saves sixteen calls to
compound_head().  We still use sizeof(struct page) in print_hex_dump,
otherwise it will go into the second and third pages of the folio which
won't exist for jfs folios (since they are not large).  This needs a
better solution, but finding it can be postponed.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_logmgr.c   |  2 +-
 fs/jfs/jfs_metapage.c | 26 +++++++++++++-------------
 fs/jfs/jfs_metapage.h | 16 ++++++++--------
 3 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index cb6d1fda66a7..985486aa7abf 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1600,7 +1600,7 @@ void jfs_flush_journal(struct jfs_log *log, int wait)
 					       mp, sizeof(struct metapage), 0);
 				print_hex_dump(KERN_ERR, "page: ",
 					       DUMP_PREFIX_ADDRESS, 16,
-					       sizeof(long), mp->page,
+					       sizeof(long), mp->folio,
 					       sizeof(struct page), 0);
 			} else
 				print_hex_dump(KERN_ERR, "tblock:",
diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 23e81d713c62..d2578860b630 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -47,9 +47,9 @@ static inline void __lock_metapage(struct metapage *mp)
 	do {
 		set_current_state(TASK_UNINTERRUPTIBLE);
 		if (metapage_locked(mp)) {
-			unlock_page(mp->page);
+			folio_unlock(mp->folio);
 			io_schedule();
-			lock_page(mp->page);
+			folio_lock(mp->folio);
 		}
 	} while (trylock_metapage(mp));
 	__set_current_state(TASK_RUNNING);
@@ -57,7 +57,7 @@ static inline void __lock_metapage(struct metapage *mp)
 }
 
 /*
- * Must have mp->page locked
+ * Must have mp->folio locked
  */
 static inline void lock_metapage(struct metapage *mp)
 {
@@ -648,7 +648,7 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
 		mp = alloc_metapage(GFP_NOFS);
 		if (!mp)
 			goto unlock;
-		mp->page = &folio->page;
+		mp->folio = folio;
 		mp->sb = inode->i_sb;
 		mp->flag = 0;
 		mp->xflag = COMMIT_PAGE;
@@ -681,11 +681,11 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
 void grab_metapage(struct metapage * mp)
 {
 	jfs_info("grab_metapage: mp = 0x%p", mp);
-	get_page(mp->page);
-	lock_page(mp->page);
+	folio_get(mp->folio);
+	folio_lock(mp->folio);
 	mp->count++;
 	lock_metapage(mp);
-	unlock_page(mp->page);
+	folio_unlock(mp->folio);
 }
 
 static int metapage_write_one(struct folio *folio)
@@ -718,7 +718,7 @@ static int metapage_write_one(struct folio *folio)
 
 void force_metapage(struct metapage *mp)
 {
-	struct folio *folio = page_folio(mp->page);
+	struct folio *folio = mp->folio;
 	jfs_info("force_metapage: mp = 0x%p", mp);
 	set_bit(META_forcewrite, &mp->flag);
 	clear_bit(META_sync, &mp->flag);
@@ -733,26 +733,26 @@ void force_metapage(struct metapage *mp)
 
 void hold_metapage(struct metapage *mp)
 {
-	lock_page(mp->page);
+	folio_lock(mp->folio);
 }
 
 void put_metapage(struct metapage *mp)
 {
 	if (mp->count || mp->nohomeok) {
 		/* Someone else will release this */
-		unlock_page(mp->page);
+		folio_unlock(mp->folio);
 		return;
 	}
-	get_page(mp->page);
+	folio_get(mp->folio);
 	mp->count++;
 	lock_metapage(mp);
-	unlock_page(mp->page);
+	folio_unlock(mp->folio);
 	release_metapage(mp);
 }
 
 void release_metapage(struct metapage * mp)
 {
-	struct folio *folio = page_folio(mp->page);
+	struct folio *folio = mp->folio;
 	jfs_info("release_metapage: mp = 0x%p, flag = 0x%lx", mp, mp->flag);
 
 	folio_lock(folio);
diff --git a/fs/jfs/jfs_metapage.h b/fs/jfs/jfs_metapage.h
index 4179f9df4deb..2e5015c2705b 100644
--- a/fs/jfs/jfs_metapage.h
+++ b/fs/jfs/jfs_metapage.h
@@ -24,7 +24,7 @@ struct metapage {
 	wait_queue_head_t wait;
 
 	/* implementation */
-	struct page *page;
+	struct folio *folio;
 	struct super_block *sb;
 	unsigned int logical_size;
 
@@ -90,14 +90,14 @@ static inline void discard_metapage(struct metapage *mp)
 
 static inline void metapage_nohomeok(struct metapage *mp)
 {
-	struct page *page = mp->page;
-	lock_page(page);
+	struct folio *folio = mp->folio;
+	folio_lock(folio);
 	if (!mp->nohomeok++) {
 		mark_metapage_dirty(mp);
-		get_page(page);
-		wait_on_page_writeback(page);
+		folio_get(folio);
+		folio_wait_writeback(folio);
 	}
-	unlock_page(page);
+	folio_unlock(folio);
 }
 
 /*
@@ -107,7 +107,7 @@ static inline void metapage_nohomeok(struct metapage *mp)
 static inline void metapage_wait_for_io(struct metapage *mp)
 {
 	if (test_bit(META_io, &mp->flag))
-		wait_on_page_writeback(mp->page);
+		folio_wait_writeback(mp->folio);
 }
 
 /*
@@ -116,7 +116,7 @@ static inline void metapage_wait_for_io(struct metapage *mp)
 static inline void _metapage_homeok(struct metapage *mp)
 {
 	if (!--mp->nohomeok)
-		put_page(mp->page);
+		folio_put(mp->folio);
 }
 
 static inline void metapage_homeok(struct metapage *mp)
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
