Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DC78A8A9C
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9X4-0003OI-NE;
	Wed, 17 Apr 2024 17:57:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9Wz-0003NW-M5
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=70jxymNpw9Th1vyC07ZqXoHBqQpblwJUSywRcB4Q7KY=; b=jE7S5hYmBrwndQvOQRFHlBacTv
 O/GaNJEDir/XmizAEVGqapd6Q54AMe/Df3Eq+gDbi87yZgqMOTxRPOxlXVRgiEIzqm0acW7T0nvYq
 gfqSRxQXCJutJxJLtkGl6ZDckrB+XWQ0eYses3wV71yZSRLnzLcm5SN/4AacfYRhP49o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=70jxymNpw9Th1vyC07ZqXoHBqQpblwJUSywRcB4Q7KY=; b=XXpKriFJ/Et3lZgVx1MF1Sl/fz
 rnMh+kfQIxKF9xPCArj3jVzfJKBRjNMOIrdlj9sI6cDGapKGYEIZhu6NUcEw/QmTbb3dvauWCNJDB
 rEfOlPgY2wG96jZp6Dn6xxyWjYCdfum38guNfPYDlSDwlAbv9GANUYsjlWc/Rqml97kg=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9Wz-0000lS-IW for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=70jxymNpw9Th1vyC07ZqXoHBqQpblwJUSywRcB4Q7KY=; b=KPuJI7igms+Ot2DNxNt1uDBx7R
 PHvwZmpFfFs5yE/f70BlwDyOEKQN2UiXDdFWYWz3SwYGRNiXvqxw4uZXDfhbO92ckMHUicnGEz8rH
 JAnFj03oFVkGumqd08PnzuK+h0NHrEYGe0xu0DobStFr6ExZa3s4seBZqFuFwvLxtiutHZvU8VTsg
 stWUV3fEuR81FWHFpavScJ5//QHfyQKVNwzfg/rDg+wEp3z28dZ60xutOialFbdZn+bEfSKOGAQbk
 PmKbX+XWfap9dRXKmi6bXTeRExUJdivUTy6/j4Vo3sTdWnrHzdRjdoOKjzjHZH4FxFmlMJjG7uWZN
 CfenH9AA==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wn-00000003QtL-2wUa;
 Wed, 17 Apr 2024 17:57:01 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:51 +0100
Message-ID: <20240417175659.818299-8-willy@infradead.org>
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
 Content preview: This means also converting the two handlers to take a folio.
 Saves four calls to compound_head(). Signed-off-by: Matthew Wilcox (Oracle)
 <willy@infradead.org> --- fs/jfs/jfs_metapage.c | 32 +++++++++++++++++ 1
 file changed, 17 insertions(+), 15 deletions(-) 
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
X-Headers-End: 1rx9Wz-0000lS-IW
Subject: [Jfs-discussion] [PATCH v2 07/13] jfs: Convert dec_io to take a
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

This means also converting the two handlers to take a folio.
Saves four calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 32 +++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 9fc52c27b0ce..dd540df0a617 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -135,10 +135,12 @@ static inline void inc_io(struct page *page)
 	atomic_inc(&mp_anchor(page)->io_count);
 }
 
-static inline void dec_io(struct page *page, void (*handler) (struct page *))
+static inline void dec_io(struct folio *folio, void (*handler) (struct folio *))
 {
-	if (atomic_dec_and_test(&mp_anchor(page)->io_count))
-		handler(page);
+	struct meta_anchor *anchor = folio->private;
+
+	if (atomic_dec_and_test(&anchor->io_count))
+		handler(folio);
 }
 
 #else
@@ -163,7 +165,7 @@ static inline void remove_metapage(struct folio *folio, struct metapage *mp)
 }
 
 #define inc_io(page) do {} while(0)
-#define dec_io(page, handler) handler(page)
+#define dec_io(folio, handler) handler(folio)
 
 #endif
 
@@ -253,11 +255,11 @@ static sector_t metapage_get_blocks(struct inode *inode, sector_t lblock,
 	return lblock;
 }
 
-static void last_read_complete(struct page *page)
+static void last_read_complete(struct folio *folio)
 {
-	if (!PageError(page))
-		SetPageUptodate(page);
-	unlock_page(page);
+	if (!folio_test_error(folio))
+		folio_mark_uptodate(folio);
+	folio_unlock(folio);
 }
 
 static void metapage_read_end_io(struct bio *bio)
@@ -269,7 +271,7 @@ static void metapage_read_end_io(struct bio *bio)
 		folio_set_error(folio);
 	}
 
-	dec_io(&folio->page, last_read_complete);
+	dec_io(folio, last_read_complete);
 	bio_put(bio);
 }
 
@@ -295,13 +297,13 @@ static void remove_from_logsync(struct metapage *mp)
 	LOGSYNC_UNLOCK(log, flags);
 }
 
-static void last_write_complete(struct page *page)
+static void last_write_complete(struct folio *folio)
 {
 	struct metapage *mp;
 	unsigned int offset;
 
 	for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
-		mp = page_to_mp(page, offset);
+		mp = page_to_mp(&folio->page, offset);
 		if (mp && test_bit(META_io, &mp->flag)) {
 			if (mp->lsn)
 				remove_from_logsync(mp);
@@ -312,7 +314,7 @@ static void last_write_complete(struct page *page)
 		 * safe unless I have the page locked
 		 */
 	}
-	end_page_writeback(page);
+	folio_end_writeback(folio);
 }
 
 static void metapage_write_end_io(struct bio *bio)
@@ -326,7 +328,7 @@ static void metapage_write_end_io(struct bio *bio)
 		printk(KERN_ERR "metapage_write_end_io: I/O error\n");
 		mapping_set_error(folio->mapping, err);
 	}
-	dec_io(&folio->page, last_write_complete);
+	dec_io(folio, last_write_complete);
 	bio_put(bio);
 }
 
@@ -449,10 +451,10 @@ static int metapage_write_folio(struct folio *folio,
 		       4, bio, sizeof(*bio), 0);
 	bio_put(bio);
 	folio_unlock(folio);
-	dec_io(&folio->page, last_write_complete);
+	dec_io(folio, last_write_complete);
 err_out:
 	while (bad_blocks--)
-		dec_io(&folio->page, last_write_complete);
+		dec_io(folio, last_write_complete);
 	return -EIO;
 }
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
