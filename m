Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D49AC8A8A9E
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9X7-00012W-H2;
	Wed, 17 Apr 2024 17:57:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9X0-00011q-8M
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VUQI/4UJNr/4nPHTlNprImSpOiOHO1pGt7lumGnWtUA=; b=A85W2HNKMAPlB9lXIPJUN9Ttil
 e/y+3jlud+JcpeSjHNtt/QwIiTxVeLgZC/ixqzO9grvpt5Y2bB0UwaLtJrxbtmWhG/YtliE4xbl0u
 zCNbB2aO7r6jkiBGj20M0lAKnaV+BMRZKXFfdh0iv6/Oqs6vD96NBw3CH16Kam3oNZ1Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VUQI/4UJNr/4nPHTlNprImSpOiOHO1pGt7lumGnWtUA=; b=avO6TjuHFSyCuHVLo6/TI3/FaC
 T+18+54/doVnP/WhyJpp9ZHTagvh028xsgO1VlKRYAmbXo+t3/eymNhq7PXwkUtX5p7lb7xUWens0
 K88e5YgG3KiO3u3/0QYSA8pQhaJPEXvGSfk8a8/FzcBZinq13p0unKwYaicgyQ781GII=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9Wz-0000lU-U0 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=VUQI/4UJNr/4nPHTlNprImSpOiOHO1pGt7lumGnWtUA=; b=FR9aHjN7EmWmmMtZZpyyFi3+ep
 Vz0eiJu84/tNYty31gHXdgxsqSTEeNIkSbdBJJlBsHhYguiF8JYpZid7bBCC6alLp/iwG1lQhb3Ni
 g1hu1hPLBBonA1Coz4vXsaHeR/R6eZe6KvnHStLcnD87cumnFwkdL58wc3KX9DeA3cOP9JTxfpGa/
 eXBFYoHnwUJJK/FdOtMcy3Nlm9mDL3Cc3oHVxtsfi5DeSjothkpJ2Hj1CWSq6zVu+hN7uM3PVz/8x
 RosDhCZyhRJ5bkJQcTZW2ghsbSsQMtsFb4qZpZkio5xLBZ/ZpJcNHh+/fRRtJTyGhXj0PLIcHw1zB
 VOQZYk0A==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wo-00000003Qtb-1ItG;
 Wed, 17 Apr 2024 17:57:02 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:53 +0100
Message-ID: <20240417175659.818299-10-willy@infradead.org>
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
 Content preview:  Access folio->private directly instead of testing the page
 private flag. Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
 --- fs/jfs/jfs_metapage.c | 22 ++++++++++++ 1 file changed, 12 insertions(+), 
 10 deletions(-) 
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
X-Headers-End: 1rx9Wz-0000lU-U0
Subject: [Jfs-discussion] [PATCH v2 09/13] jfs: Convert page_to_mp to
 folio_to_mp
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

Access folio->private directly instead of testing the page private flag.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 90a284d3bef7..67d5d417fe01 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -80,11 +80,13 @@ struct meta_anchor {
 };
 #define mp_anchor(page) ((struct meta_anchor *)page_private(page))
 
-static inline struct metapage *page_to_mp(struct page *page, int offset)
+static inline struct metapage *folio_to_mp(struct folio *folio, int offset)
 {
-	if (!PagePrivate(page))
+	struct meta_anchor *anchor = folio->private;
+
+	if (!anchor)
 		return NULL;
-	return mp_anchor(page)->mp[offset >> L2PSIZE];
+	return anchor->mp[offset >> L2PSIZE];
 }
 
 static inline int insert_metapage(struct folio *folio, struct metapage *mp)
@@ -144,9 +146,9 @@ static inline void dec_io(struct folio *folio, void (*handler) (struct folio *))
 }
 
 #else
-static inline struct metapage *page_to_mp(struct page *page, int offset)
+static inline struct metapage *folio_to_mp(struct folio *folio, int offset)
 {
-	return PagePrivate(page) ? (struct metapage *)page_private(page) : NULL;
+	return folio->private;
 }
 
 static inline int insert_metapage(struct folio *folio, struct metapage *mp)
@@ -303,7 +305,7 @@ static void last_write_complete(struct folio *folio)
 	unsigned int offset;
 
 	for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
-		mp = page_to_mp(&folio->page, offset);
+		mp = folio_to_mp(folio, offset);
 		if (mp && test_bit(META_io, &mp->flag)) {
 			if (mp->lsn)
 				remove_from_logsync(mp);
@@ -359,7 +361,7 @@ static int metapage_write_folio(struct folio *folio,
 	folio_start_writeback(folio);
 
 	for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
-		mp = page_to_mp(&folio->page, offset);
+		mp = folio_to_mp(folio, offset);
 
 		if (!mp || !test_bit(META_dirty, &mp->flag))
 			continue;
@@ -526,7 +528,7 @@ static bool metapage_release_folio(struct folio *folio, gfp_t gfp_mask)
 	int offset;
 
 	for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
-		mp = page_to_mp(&folio->page, offset);
+		mp = folio_to_mp(folio, offset);
 
 		if (!mp)
 			continue;
@@ -620,7 +622,7 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
 		folio_lock(folio);
 	}
 
-	mp = page_to_mp(&folio->page, page_offset);
+	mp = folio_to_mp(folio, page_offset);
 	if (mp) {
 		if (mp->logical_size != size) {
 			jfs_error(inode->i_sb,
@@ -804,7 +806,7 @@ void __invalidate_metapages(struct inode *ip, s64 addr, int len)
 		if (IS_ERR(folio))
 			continue;
 		for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
-			mp = page_to_mp(&folio->page, offset);
+			mp = folio_to_mp(folio, offset);
 			if (!mp)
 				continue;
 			if (mp->index < addr)
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
