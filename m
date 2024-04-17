Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EE88A8AA0
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9X8-0000yb-Ly;
	Wed, 17 Apr 2024 17:57:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9Wv-0000y5-8l
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xdctCk7WpjDOZwE/Xja38nor8XSItWxpytbQ6MyEJpI=; b=CG6ZLwD+3m9oBKdw2/559vU+U5
 A0sqo5Wlvt18TNagTEBkUOXXRNLPodsaepfii4X7s99kRtslyissdiFUaj3HfLogJ//AIvLK1DSEo
 9Psh+YADVT7bSRg2fLzd+mgyciM3oIfgPRus8txsmuk5Y4KKDSJ+8KD25WWeIbywsV68=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xdctCk7WpjDOZwE/Xja38nor8XSItWxpytbQ6MyEJpI=; b=AZ0jZW8y3EQvYAwNO0SbhqFNiG
 Gwk2JQzp2dGhsFQ9QR4BkJngUQWLoA41bexDygZm8cGRko/vShWtQajQQUdNBdidrnAPlR8Lx//W1
 6vHr+ZkNpde55VG1EVWyhX/H7Ls3yC4L0b75D6WYVRvOrMIk+zFgktNiUCrLw8LsMJ+c=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9Wu-0000l2-Po for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=xdctCk7WpjDOZwE/Xja38nor8XSItWxpytbQ6MyEJpI=; b=rAz1G4SXWFTkPW5I2H5XmxO/my
 kJAGcuZxfJt9Oj0yGvJMzMle+wS0iUJwLTPpEuQ06C/IbbxyRaGZtUso5w+gxYSMeSjk10qqgWck5
 y0/znq6tNrBZ/6V36MOSgjTC0UySBaTcunB65i23bOXwBuGnbzRia8Q0hJ5X9Szf4EFaAq/LQYJqV
 2hqHAGvg2qNUydZZigkmE4qndPWzm4Dg50tVJa+idhaTBE4PBWAvE/EG+Dfm+2/VdqjyE+7TOn7eW
 mVPTWANzF0KLbilSZ6R3HC0EF5Y7rme+HXQhLbmLIgslO3nKfv5LKlHSXp0jhgMM0WT8T2EHzOioK
 1zriOjtA==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wo-00000003QtT-0P1s;
 Wed, 17 Apr 2024 17:57:02 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:52 +0100
Message-ID: <20240417175659.818299-9-willy@infradead.org>
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
 Content preview: Retrieve a folio from the page cache instead of a page. Saves
 a couple of calls to compound_head(). Signed-off-by: Matthew Wilcox (Oracle)
 <willy@infradead.org> --- fs/jfs/jfs_metapage.c | 12 ++++++------ 1 file
 changed, 6 insertions(+), 6 deletions(-) 
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
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [90.155.50.34 listed in list.dnswl.org]
X-Headers-End: 1rx9Wu-0000l2-Po
Subject: [Jfs-discussion] [PATCH v2 08/13] jfs;
 Convert __invalidate_metapages to use a folio
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

Retrieve a folio from the page cache instead of a page.  Saves a
couple of calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index dd540df0a617..90a284d3bef7 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -791,7 +791,6 @@ void __invalidate_metapages(struct inode *ip, s64 addr, int len)
 	struct address_space *mapping =
 		JFS_SBI(ip->i_sb)->direct_inode->i_mapping;
 	struct metapage *mp;
-	struct page *page;
 	unsigned int offset;
 
 	/*
@@ -800,11 +799,12 @@ void __invalidate_metapages(struct inode *ip, s64 addr, int len)
 	 */
 	for (lblock = addr & ~(BlocksPerPage - 1); lblock < addr + len;
 	     lblock += BlocksPerPage) {
-		page = find_lock_page(mapping, lblock >> l2BlocksPerPage);
-		if (!page)
+		struct folio *folio = filemap_lock_folio(mapping,
+				lblock >> l2BlocksPerPage);
+		if (IS_ERR(folio))
 			continue;
 		for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
-			mp = page_to_mp(page, offset);
+			mp = page_to_mp(&folio->page, offset);
 			if (!mp)
 				continue;
 			if (mp->index < addr)
@@ -817,8 +817,8 @@ void __invalidate_metapages(struct inode *ip, s64 addr, int len)
 			if (mp->lsn)
 				remove_from_logsync(mp);
 		}
-		unlock_page(page);
-		put_page(page);
+		folio_unlock(folio);
+		folio_put(folio);
 	}
 }
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
