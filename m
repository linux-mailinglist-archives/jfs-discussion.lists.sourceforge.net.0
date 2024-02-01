Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F2A8463B6
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Feb 2024 23:46:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rVfpA-0001xF-Sq;
	Thu, 01 Feb 2024 22:46:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rVfp7-0001wx-OV
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OML5TsEvwXZSkzwoDqzVRJxgBN9HbIljp99tCJ6zNuY=; b=CGRrZy45qCQwmj/nb+SAuHOapG
 uNiSkxmkGyWwgQ4kXgGmXL8Hj0TQl5z24DfhoBQaLfnogcBrm+8xEkXvnBxoKREdWpwfbjjpV6sKv
 4QX7W3OCjT1vooCNADO91nRImTftzCrlkUBIIsg+KSRHtUmjtichHTdLE4x4heu3QLYo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OML5TsEvwXZSkzwoDqzVRJxgBN9HbIljp99tCJ6zNuY=; b=l6uHb8igtZeDFnx85WhcTFpJTL
 d2x8lIwJrfUzlxvl4lVbg7RSrnwAC8mP7ViTB4PN3jPajX2ARr5sJmCEoV0iwHf+EQaSbi0DmcAhi
 vnQtiksIZJL1whGtr4IOnOIs0IKMCgwWhci9NqZVVUiQnALMubENvs+xidrGUSrrDE2o=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVfp4-0001Qn-Ol for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=OML5TsEvwXZSkzwoDqzVRJxgBN9HbIljp99tCJ6zNuY=; b=AuLYAqHHohrWlddGwzulHeIkod
 rsUSrMtsA05ay8ScxkHnSq6J3M0iZaVpsxLIFP3iPFmvyB0Eq/4z0rueqcT/UutG7pXgzLUokEnyG
 o8z0HvtALHO+pBLBIcurdJde0chmSYFjM8QGYhKltK7EV9lnxCA4T2fDBbSbj1ZR/nLwU1PwEmBRt
 kLy8g2htvrz0rZzkN4n4iMcvhbQiSS+XbVFhM6m/ADD7CNP5F5n9ZygupBkPSPO1Wohp758prmqa4
 teULjD0tYghDzR5BtcJOlmdqlb/7Ty2HoGvn6QMatOkCY9SViqnLsiM69qqJAaxVp270AYdBztr8+
 fmBIM3tA==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rVfou-0000000H18u-0XJQ;
 Thu, 01 Feb 2024 22:46:08 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu,  1 Feb 2024 22:45:59 +0000
Message-ID: <20240201224605.4055895-11-willy@infradead.org>
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
 Content preview:  All their callers now have a folio, so pass it in. No savings
 here, just cleaning up some remnants. Signed-off-by: Matthew Wilcox (Oracle)
 <willy@infradead.org> --- fs/jfs/jfs_metapage.c | 16 ++++++++-------- 1 file
 changed, 8 insertions(+), 8 deletions(-) 
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
X-Headers-End: 1rVfp4-0001Qn-Ol
Subject: [Jfs-discussion] [PATCH 10/13] jfs: Convert inc_io and mp_anchor to
 take a folio
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

All their callers now have a folio, so pass it in.  No savings here,
just cleaning up some remnants.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 59729b9dd76f..bc62d4bb4712 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -78,7 +78,7 @@ struct meta_anchor {
 	atomic_t io_count;
 	struct metapage *mp[MPS_PER_PAGE];
 };
-#define mp_anchor(page) ((struct meta_anchor *)page_private(page))
+#define mp_anchor(folio) (folio->private)
 
 static inline struct metapage *folio_to_mp(struct folio *folio, int offset)
 {
@@ -116,7 +116,7 @@ static inline int insert_metapage(struct folio *folio, struct metapage *mp)
 
 static inline void remove_metapage(struct folio *folio, struct metapage *mp)
 {
-	struct meta_anchor *a = mp_anchor(&folio->page);
+	struct meta_anchor *a = mp_anchor(folio);
 	int l2mp_blocks = L2PSIZE - folio->mapping->host->i_blkbits;
 	int index;
 
@@ -132,9 +132,9 @@ static inline void remove_metapage(struct folio *folio, struct metapage *mp)
 	}
 }
 
-static inline void inc_io(struct page *page)
+static inline void inc_io(struct folio *folio)
 {
-	atomic_inc(&mp_anchor(page)->io_count);
+	atomic_inc(&mp_anchor(folio)->io_count);
 }
 
 static inline void dec_io(struct folio *folio, void (*handler) (struct folio *))
@@ -166,7 +166,7 @@ static inline void remove_metapage(struct folio *folio, struct metapage *mp)
 	kunmap(&folio->page);
 }
 
-#define inc_io(page) do {} while(0)
+#define inc_io(folio) do {} while(0)
 #define dec_io(folio, handler) handler(folio)
 
 #endif
@@ -395,14 +395,14 @@ static int metapage_write_folio(struct folio *folio,
 			 * Increment counter before submitting i/o to keep
 			 * count from hitting zero before we're through
 			 */
-			inc_io(&folio->page);
+			inc_io(folio);
 			if (!bio->bi_iter.bi_size)
 				goto dump_bio;
 			submit_bio(bio);
 			nr_underway++;
 			bio = NULL;
 		} else
-			inc_io(&folio->page);
+			inc_io(folio);
 		xlen = (folio_size(folio) - offset) >> inode->i_blkbits;
 		pblock = metapage_get_blocks(inode, lblock, &xlen);
 		if (!pblock) {
@@ -496,7 +496,7 @@ static int metapage_read_folio(struct file *fp, struct folio *folio)
 		if (pblock) {
 			if (!folio->private)
 				insert_metapage(folio, NULL);
-			inc_io(&folio->page);
+			inc_io(folio);
 			if (bio)
 				submit_bio(bio);
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
