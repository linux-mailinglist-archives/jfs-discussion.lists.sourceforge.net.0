Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E29B38A8A98
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9X2-0000NY-18;
	Wed, 17 Apr 2024 17:57:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9Wy-0000MW-JT
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D9EBnQ6ShJLhbDLeJCMWhwk0es97hySDrklC2B03Dko=; b=OeaxQU+41LUfbA+mmysDeKMUJT
 XmfbRqApE2BInjs4epPgWf0PtkPL52+Y04vYSQggI1l6J6p7XM0gr35vvDt+FElsoqwTNZqy0eTyv
 Rd9BEVxkbhc3O8NgtGM1Ysb4sW/OqQ5qyiywWjvv1aMmCYSHnf+IPq12aVRvyrCoQlKA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D9EBnQ6ShJLhbDLeJCMWhwk0es97hySDrklC2B03Dko=; b=AxHgmQ+Xmo9OylN1fRGX3TN80X
 9mCWciLA4piq+Nq/aZP8GGaOpxuPnG+1fUXZ0lHHouJks+/dcYNchw4scdryCGLkQqAISgH2zzYEg
 ycQrmhoRra1B/TsmnRxul9IUc2ami31yAMgGeesghGATmZA5JJmWmKDhqlEVte4uhPP4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9Wy-0000lN-Ta for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=D9EBnQ6ShJLhbDLeJCMWhwk0es97hySDrklC2B03Dko=; b=Vbb8N/E/w2OUUpjUMCnyL+buO3
 azy9Bs3jGF+2O/I001Mr2gugZLIOLqwijoEj8nWhR5anZBgrSZaRRemn9ITIgoKpXDF1kBTkzR1UJ
 ZyOJHYsmpi4bgRIo2N6rZvIcWKpCeCDBqgamTcAk+n1gXJPu7fZTHHeFxAOMHiAWqo9K8MWQ19aRX
 ejtiCwZy57v2nQm1Y7EQXMwySm183oWu319JXi7uX2CpXRsAMzBzx2fBeLcamoxfLsQnN/JebJEAL
 Hn9p5vYgiG+Z5/tja2OSzYkUa8Oz4kN6owy7EJHL6HXGy+Gi96DtYdEVuAmciRWNI95yNYnBzYNNf
 6SLbxC9g==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wn-00000003Qt7-1nxp;
 Wed, 17 Apr 2024 17:57:01 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:49 +0100
Message-ID: <20240417175659.818299-6-willy@infradead.org>
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
 Content preview: Convert mp->page to a folio and remove 7 hidden calls to
 compound_head().
 Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> ---
 fs/jfs/jfs_metapage.c
 | 22 ++++++++++ 1 file changed, 10 insertions(+), 12 deletions(-) 
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
X-Headers-End: 1rx9Wy-0000lN-Ta
Subject: [Jfs-discussion] [PATCH v2 05/13] jfs;
 Convert release_metapage to use a folio
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

Convert mp->page to a folio and remove 7 hidden calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 6fa7023f5bc9..4515dc1ac40e 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -749,37 +749,35 @@ void put_metapage(struct metapage *mp)
 
 void release_metapage(struct metapage * mp)
 {
-	struct page *page = mp->page;
+	struct folio *folio = page_folio(mp->page);
 	jfs_info("release_metapage: mp = 0x%p, flag = 0x%lx", mp, mp->flag);
 
-	BUG_ON(!page);
-
-	lock_page(page);
+	folio_lock(folio);
 	unlock_metapage(mp);
 
 	assert(mp->count);
 	if (--mp->count || mp->nohomeok) {
-		unlock_page(page);
-		put_page(page);
+		folio_unlock(folio);
+		folio_put(folio);
 		return;
 	}
 
 	if (test_bit(META_dirty, &mp->flag)) {
-		set_page_dirty(page);
+		folio_mark_dirty(folio);
 		if (test_bit(META_sync, &mp->flag)) {
 			clear_bit(META_sync, &mp->flag);
-			if (metapage_write_one(page))
+			if (metapage_write_one(&folio->page))
 				jfs_error(mp->sb, "metapage_write_one() failed\n");
-			lock_page(page);
+			folio_lock(folio);
 		}
 	} else if (mp->lsn)	/* discard_metapage doesn't remove it */
 		remove_from_logsync(mp);
 
 	/* Try to keep metapages from using up too much memory */
-	drop_metapage(page, mp);
+	drop_metapage(&folio->page, mp);
 
-	unlock_page(page);
-	put_page(page);
+	folio_unlock(folio);
+	folio_put(folio);
 }
 
 void __invalidate_metapages(struct inode *ip, s64 addr, int len)
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
