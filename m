Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6827E8A8AA5
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9X7-00012K-7r;
	Wed, 17 Apr 2024 17:57:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9Wz-00011j-0j
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1hiBfCsxHjQnrQb499TeqPNt73gL1h2Ah7TqxU7+CxY=; b=ShU8pASgmBnfRGarAafLJhxmTo
 pkCK/GVr/FPbPOObITAph+QRYyTHSgd6yqhZZdDJww5lQRoUE9uBNXEZCb4cELUdBblWvIjSsLJJI
 ZD5zEvwS5jhPyn/3gc36kk0qmg6uj0vnxO5qt9E5iHzyd3Q0cyURXtJ6GeXw+jNgSR5w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1hiBfCsxHjQnrQb499TeqPNt73gL1h2Ah7TqxU7+CxY=; b=HYeCbDAQnrPxnLctz66rv+f/Qf
 NmofnoLSVrUqO980uRbxd/ssd84I01nsLmhmWy0N8dRvzKbUWRr3obMIrqT7nRYQHR3DO4V3QlHOb
 S+s6zqru68HLYYm9WSkdzG2rJTNfOll31C5tlN5iLJxC6/aTNZrXT6KuGM3ZoXn8RkN0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9Wy-0000lM-Kp for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=1hiBfCsxHjQnrQb499TeqPNt73gL1h2Ah7TqxU7+CxY=; b=CEdoqhRIG3rbUmX+HBTnIVn6li
 SK0HQpAFyLD3gWNDbBu3VHF2GOotjGc7JTjX4B9vBZDkXMPLM4Hai40Ru4xJmCHiuIxnPcvSFtHhH
 D2sfCYPTglSO8QjvAYW5B8LVTXpgLH/y/3NUrlM3ZYydB30wu+ESEZqW9PVe35iGxMzPEfS7LsyQh
 Ax/RQqqIK//JwknJ6AiRVif6dMuinatvQl9t2v4h+ds/dSFAaI8Z9YWN8CME54fCA45xulWj3hD0j
 SeJ5Xe35fZOuZ1tl9XbII2VwxBpSWLCLfH3GD2wZhxBP5pOJBRMNiinnKGSlfHMtbi5+3t8kyNaXG
 kkLnII7Q==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wn-00000003Qss-0eVL;
 Wed, 17 Apr 2024 17:57:01 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:47 +0100
Message-ID: <20240417175659.818299-4-willy@infradead.org>
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
 Content preview: Remove four hidden calls to compound_head(). Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/jfs/jfs_metapage.c |
 28 ++++++++++++++ 1 file changed, 14 insertions(+), 14 deletions(-) 
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1rx9Wy-0000lM-Kp
Subject: [Jfs-discussion] [PATCH v2 03/13] jfs: Convert __get_metapage to
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

Remove four hidden calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index beecc9ad656e..4ef85e264f51 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -577,7 +577,7 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
 	int l2bsize;
 	struct address_space *mapping;
 	struct metapage *mp = NULL;
-	struct page *page;
+	struct folio *folio;
 	unsigned long page_index;
 	unsigned long page_offset;
 
@@ -608,22 +608,22 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
 	}
 
 	if (new && (PSIZE == PAGE_SIZE)) {
-		page = grab_cache_page(mapping, page_index);
-		if (!page) {
-			jfs_err("grab_cache_page failed!");
+		folio = filemap_grab_folio(mapping, page_index);
+		if (IS_ERR(folio)) {
+			jfs_err("filemap_grab_folio failed!");
 			return NULL;
 		}
-		SetPageUptodate(page);
+		folio_mark_uptodate(folio);
 	} else {
-		page = read_mapping_page(mapping, page_index, NULL);
-		if (IS_ERR(page)) {
+		folio = read_mapping_folio(mapping, page_index, NULL);
+		if (IS_ERR(folio)) {
 			jfs_err("read_mapping_page failed!");
 			return NULL;
 		}
-		lock_page(page);
+		folio_lock(folio);
 	}
 
-	mp = page_to_mp(page, page_offset);
+	mp = page_to_mp(&folio->page, page_offset);
 	if (mp) {
 		if (mp->logical_size != size) {
 			jfs_error(inode->i_sb,
@@ -649,16 +649,16 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
 		mp = alloc_metapage(GFP_NOFS);
 		if (!mp)
 			goto unlock;
-		mp->page = page;
+		mp->page = &folio->page;
 		mp->sb = inode->i_sb;
 		mp->flag = 0;
 		mp->xflag = COMMIT_PAGE;
 		mp->count = 1;
 		mp->nohomeok = 0;
 		mp->logical_size = size;
-		mp->data = page_address(page) + page_offset;
+		mp->data = folio_address(folio) + page_offset;
 		mp->index = lblock;
-		if (unlikely(insert_metapage(page, mp))) {
+		if (unlikely(insert_metapage(&folio->page, mp))) {
 			free_metapage(mp);
 			goto unlock;
 		}
@@ -670,12 +670,12 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
 		memset(mp->data, 0, PSIZE);
 	}
 
-	unlock_page(page);
+	folio_unlock(folio);
 	jfs_info("__get_metapage: returning = 0x%p data = 0x%p", mp, mp->data);
 	return mp;
 
 unlock:
-	unlock_page(page);
+	folio_unlock(folio);
 	return NULL;
 }
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
