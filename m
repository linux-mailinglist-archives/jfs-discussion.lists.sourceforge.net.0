Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7068A8A97
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9Wz-0000Mh-0d;
	Wed, 17 Apr 2024 17:57:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9Wv-0000M7-6g
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yJvA2xiVaXaAWuVDhUJWcuurFOmXe1XpmHEJxpnBpFs=; b=KwhdIxO8RAk3EMou1Gloai5oTV
 YVhvJg7KbuvgN5wKo5GLmRCYjFaFdtFzLUfSxJyI2/fgDkt77qN0TY9T8HE0pHCaUDCX7Ck5bz4LN
 mdhLfO+z181rjnqgBaQcJOcmdmp15K8oGOARw7u/hQQGfo0GeV5nsJ3PGCqPGOJ7K9rY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yJvA2xiVaXaAWuVDhUJWcuurFOmXe1XpmHEJxpnBpFs=; b=eSiKwWUpQcBkI4ccIJdMO0oXMk
 CFqntBDDBgDcU+j5WBCwDt1kKIaaB7MListqfL7X8Lm0KSvFQVZS7VMDzpnnhXHZrtGtiQ2UP4VWs
 uwh33tzTvwNwG6kYk4bkXmp9G7N2dM5IThM9U438mqCK7t8MynwoT/qcddYRidd4vmEM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9Wv-0000l6-Br for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=yJvA2xiVaXaAWuVDhUJWcuurFOmXe1XpmHEJxpnBpFs=; b=wQQ90zw5gCxgjOcfC0NTK0TSeO
 8bm6W0yyJHKUXy0c7fc7D1+PXw6WNS2rwTxadtc34+xG69R5Z1ueQrBesG9TIwk47AYxGzaFxclFa
 /u/cHLT2wJio1vyBr74ti2ArQwxybJRWJ0RiRqnVIZyPCz8rXiOOCoFA4MaJD89bMmMrW1sLNssPK
 U/kkYKUtdygZ9/TXvRSrIWUBmrikV0y2KyzXfGf7dCxi2rPgehkTDueD3Yax/p28cqj58IvFQ0OWN
 s6+vR1Htby4+oOO5wyl/Uhcc8JPCpvxoHU/k3kLgCDJ42cEYiUN69jraRm5vwW0/Dgxzov6eyIzXR
 VeTiVCKQ==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wo-00000003Qty-3fNE;
 Wed, 17 Apr 2024 17:57:02 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:56 +0100
Message-ID: <20240417175659.818299-13-willy@infradead.org>
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
 Content preview:  Convert all the users to operate on a folio. Saves sixteen
 calls to compound_head(). We still use sizeof(struct page) in print_hex_dump, 
 otherwise it will go into the second and third pages of the fol [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [90.155.50.34 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rx9Wv-0000l6-Br
Subject: [Jfs-discussion] [PATCH v2 12/13] jfs: Change metapage->page to
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
index 9609349e92e5..270808b6219b 100644
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
index c88a7bc3f736..19854bd8dfea 100644
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
@@ -649,7 +649,7 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
 		mp = alloc_metapage(GFP_NOFS);
 		if (!mp)
 			goto unlock;
-		mp->page = &folio->page;
+		mp->folio = folio;
 		mp->sb = inode->i_sb;
 		mp->flag = 0;
 		mp->xflag = COMMIT_PAGE;
@@ -682,11 +682,11 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
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
@@ -719,7 +719,7 @@ static int metapage_write_one(struct folio *folio)
 
 void force_metapage(struct metapage *mp)
 {
-	struct folio *folio = page_folio(mp->page);
+	struct folio *folio = mp->folio;
 	jfs_info("force_metapage: mp = 0x%p", mp);
 	set_bit(META_forcewrite, &mp->flag);
 	clear_bit(META_sync, &mp->flag);
@@ -734,26 +734,26 @@ void force_metapage(struct metapage *mp)
 
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
