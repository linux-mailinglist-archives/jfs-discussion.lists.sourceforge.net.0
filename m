Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6788463AD
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Feb 2024 23:46:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rVfp9-0001SM-Kt;
	Thu, 01 Feb 2024 22:46:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rVfp7-0001Rz-Bz
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0PCgY0pKLRJKEtVUcAJOm71vipyZh1XinEayZbDdllk=; b=bfGB2LLpfbkY5OPSfTrIIXfRNl
 D8Ox9wfaNULODkdzqMq/teVLkf0MXjG1gsdLhx27FkPRZH+0sDeHt2wJUldeMJZCZTYpUrof8kGPp
 jWAKzVVH6jHtibKdvmYjM0C2JqghSUXgyrIaILyi3H337+v2aqeobaWX8N9Dmc1zfBmQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0PCgY0pKLRJKEtVUcAJOm71vipyZh1XinEayZbDdllk=; b=hWfNqkt77UTiLZf6lWBn8twi7G
 dQEOK5aKFm2+UL56+vAzzOb83Wm4y4c4ZWCPR5q4TDEHJBkPMDG05NhrS3tiHiQ4WZqPOaaQBFEdM
 NdiFAkDkFkuLdSD9LkQLgSEF/Qrk7j92mHJBqrsSAIJ+jkVdcbeHks7rNDSSlye08OWg=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVfp4-0001Qi-2A for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=0PCgY0pKLRJKEtVUcAJOm71vipyZh1XinEayZbDdllk=; b=V7kqggJWTFobmagcdS+o+4XOKy
 t+Jaj1dMmUDxBHQJjWW6icjRRreB/Mw81Na/4njTF+pItVYvn04w817e4CyKKzVLU7tvvFJCs0vWo
 a5hZ4CVsT7szRfZMKDMWJq+/6tv+auUlQx+Sek3L1lDy//bt59b2CHBurLlVODSLzUtb9YpvgsaVn
 xC3UOHdvselrCjxm5yNOgtem/kQkcCTBEcVofTq295SjsfaZUAeL2Gix7fm12Bkn6U03uWiPGfp6q
 5lKyt7VuTdZAXJwHDseLApqiWTMvYnTdsmf8TlXOVmaajJ+m7RefDgMMPckgIAc4Kj7ZcJzUxPp83
 nwczSmJw==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rVfot-0000000H18E-1lCB;
 Thu, 01 Feb 2024 22:46:07 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu,  1 Feb 2024 22:45:53 +0000
Message-ID: <20240201224605.4055895-5-willy@infradead.org>
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
 Content preview:  Both of its callers now have a folio,
 so convert this function.
 Use folio_attach_private() instead of manually setting folio->private. This
 also gets the expected refcount of the folio correct. Signed-off-by: Matthew
 Wilcox (Oracle) <willy@infradead.org> --- fs/jfs/jfs_metapage.c | 31
 +++++++++++++ 1 file changed, 13 insertions(+), 18 deletions(-) 
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
X-Headers-End: 1rVfp4-0001Qi-2A
Subject: [Jfs-discussion] [PATCH 04/13] jfs: Convert insert_metapage() to
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

Both of its callers now have a folio, so convert this function.
Use folio_attach_private() instead of manually setting folio->private.
This also gets the expected refcount of the folio correct.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 31 +++++++++++++------------------
 1 file changed, 13 insertions(+), 18 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 4ef85e264f51..6fa7023f5bc9 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -87,25 +87,23 @@ static inline struct metapage *page_to_mp(struct page *page, int offset)
 	return mp_anchor(page)->mp[offset >> L2PSIZE];
 }
 
-static inline int insert_metapage(struct page *page, struct metapage *mp)
+static inline int insert_metapage(struct folio *folio, struct metapage *mp)
 {
 	struct meta_anchor *a;
 	int index;
 	int l2mp_blocks;	/* log2 blocks per metapage */
 
-	if (PagePrivate(page))
-		a = mp_anchor(page);
-	else {
+	a = folio->private;
+	if (!a) {
 		a = kzalloc(sizeof(struct meta_anchor), GFP_NOFS);
 		if (!a)
 			return -ENOMEM;
-		set_page_private(page, (unsigned long)a);
-		SetPagePrivate(page);
-		kmap(page);
+		folio_attach_private(folio, a);
+		kmap(&folio->page);
 	}
 
 	if (mp) {
-		l2mp_blocks = L2PSIZE - page->mapping->host->i_blkbits;
+		l2mp_blocks = L2PSIZE - folio->mapping->host->i_blkbits;
 		index = (mp->index >> l2mp_blocks) & (MPS_PER_PAGE - 1);
 		a->mp_count++;
 		a->mp[index] = mp;
@@ -127,8 +125,7 @@ static inline void remove_metapage(struct page *page, struct metapage *mp)
 	a->mp[index] = NULL;
 	if (--a->mp_count == 0) {
 		kfree(a);
-		set_page_private(page, 0);
-		ClearPagePrivate(page);
+		detach_page_private(page);
 		kunmap(page);
 	}
 }
@@ -150,20 +147,18 @@ static inline struct metapage *page_to_mp(struct page *page, int offset)
 	return PagePrivate(page) ? (struct metapage *)page_private(page) : NULL;
 }
 
-static inline int insert_metapage(struct page *page, struct metapage *mp)
+static inline int insert_metapage(struct folio *folio, struct metapage *mp)
 {
 	if (mp) {
-		set_page_private(page, (unsigned long)mp);
-		SetPagePrivate(page);
-		kmap(page);
+		folio_attach_private(folio, mp);
+		kmap(&folio->page);
 	}
 	return 0;
 }
 
 static inline void remove_metapage(struct page *page, struct metapage *mp)
 {
-	set_page_private(page, 0);
-	ClearPagePrivate(page);
+	detach_page_private(page);
 	kunmap(page);
 }
 
@@ -496,7 +491,7 @@ static int metapage_read_folio(struct file *fp, struct folio *folio)
 					     &xlen);
 		if (pblock) {
 			if (!folio->private)
-				insert_metapage(&folio->page, NULL);
+				insert_metapage(folio, NULL);
 			inc_io(&folio->page);
 			if (bio)
 				submit_bio(bio);
@@ -658,7 +653,7 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
 		mp->logical_size = size;
 		mp->data = folio_address(folio) + page_offset;
 		mp->index = lblock;
-		if (unlikely(insert_metapage(&folio->page, mp))) {
+		if (unlikely(insert_metapage(folio, mp))) {
 			free_metapage(mp);
 			goto unlock;
 		}
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
