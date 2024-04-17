Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B69388A8A9D
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9Wz-0003NG-3f;
	Wed, 17 Apr 2024 17:57:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9Wu-0003Mz-HS
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0PCgY0pKLRJKEtVUcAJOm71vipyZh1XinEayZbDdllk=; b=RHaC9VaanY5vx5jtcB8Z3HuwnA
 X6F1xKgUCVH7mA4wYZJh9oYHKkIIXFNOGk8xlP/59GionKQWkao+fNztqtvdvjwvk5hP0BNfggp73
 NZKW6HsrHnmTsoqZCbebLTT1WufyuTb8riM9LPUQoZ2YbFoRe9ev42Z/a4kG8Xljn09c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0PCgY0pKLRJKEtVUcAJOm71vipyZh1XinEayZbDdllk=; b=citf+5M76ixz7enVmtM0sz9qL5
 e/UldGegcgUX2oiOzpKBNB9AFUPKZJMsiuO0AxjTEMJqFR/CFm3hVUE88sIwqZYuYB5SWoHx9XPeL
 a6QQOZW7X3QHWkWYBY7Ngm5UQaCQw69Rf35apEldcNLwu5mOWxlYHKl2SfY8jVBuGqtY=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9Wu-0000ku-8K for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=0PCgY0pKLRJKEtVUcAJOm71vipyZh1XinEayZbDdllk=; b=wBRSrmZj7H5v53cuCpt7dhDGvF
 7dtIPP9HiqsHJlioKZugckk3kdpqdA6TmimP2JD7Bl+THXU4Lb42LjxEr11e/poxNoRQR004amI7P
 Vtmf0BJEn7hVRLwqWWMlXoB06lS4XIvfVGTah+QJeA6v8hp/KN5bS8tBwZlKRWcByvT9vIJPqkwfe
 ht7tFCFZA0/6omv0d0i10VsFGeXC3v5yM5Z0NeR1dtb8hn5q1+XGHSwzjEyMR8TRFLwmP+ED47hkk
 TqmFBpaPCR2DOPWTKxPiitnlj/oX4QOrSvMF5KdE9rRNS/vSljgbTYqgxTM0sljciBDbmpnMF1f+t
 jv0x63fQ==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wn-00000003Qsz-1DxV;
 Wed, 17 Apr 2024 17:57:01 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:48 +0100
Message-ID: <20240417175659.818299-5-willy@infradead.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240417175659.818299-1-willy@infradead.org>
References: <20240417175659.818299-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1rx9Wu-0000ku-8K
Subject: [Jfs-discussion] [PATCH v2 04/13] jfs: Convert insert_metapage() to
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
