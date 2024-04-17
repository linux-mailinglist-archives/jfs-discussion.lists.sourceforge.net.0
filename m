Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ACE8A8A9F
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9X5-0003OU-0I;
	Wed, 17 Apr 2024 17:57:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9X0-0003Nj-H7
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+9qhI/cuhF7jFIDgVYs7N51KHwVBIUw5Dj+/SbDEonk=; b=WttCSNQZgXzMOyUHWNH4M3vn7B
 i4sEcHdVJrNdnLtOEruYJO8k+7uxoiYlfLxt55iwr3lKaCphK6FhlMqRQoCrlEd8LRXZ1hNnIKMNg
 4Zkg7sabiACKofq2ZiC6N+v59w/oF8W2WTHdUqJDHjQYV1QncDcZPTiB4aeSASNcLj/c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+9qhI/cuhF7jFIDgVYs7N51KHwVBIUw5Dj+/SbDEonk=; b=ei0rvdr8GuPciiBaiTUoKBSed5
 BaVztExLhpJIxQty50EFet4hjo8PckpvDcgaiQsQYutlFKfjmvYskCu4XaC9t/Dhz/6CTzMdKD9Rg
 HugLxRPAGvditul76GDw7mD59g+5Wgd+AMupgirkNZAHmriv+Pbk/scDjk83G5lMjGEM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9X0-0000la-ES for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=+9qhI/cuhF7jFIDgVYs7N51KHwVBIUw5Dj+/SbDEonk=; b=SYCsBaamlioo00YrViUMIHeMtV
 l0+z62qaHrxEFLHjJpQS+kN/wk5URT0VB0VVFKnMM6E/HSpzi37DWHMDJwh+cRP4QkDk43qNU1NkE
 fi1SBSq+b07tmRc/72zx86gEVgqSRdy4/9vLSfi6t9QkdknAYxmquSrsCY+CuUumKOsSFkqLG7D2H
 aTVXiLzEWuCslmlakgFL//esk89IGRnF4GBeab18nRKt5mvLY2Kj9wS3nm6D/bd3af7cDjzVxbpxu
 AzBhvV8WSFBRhdbi3u8EBt00Hllk4GS9gfuyyswugYZ7HpeiWiZ4h+AXTEtkN5r2sNRUWWcObyE7c
 OI9F6QKw==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wp-00000003Qu5-06QH;
 Wed, 17 Apr 2024 17:57:03 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:57 +0100
Message-ID: <20240417175659.818299-14-willy@infradead.org>
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
 Content preview:  The last caller has been converted to i_blocks_per_folio()
 so we can remove this wrapper. Signed-off-by: Matthew Wilcox (Oracle)
 <willy@infradead.org>
 --- include/linux/pagemap.h | 6 ------ 1 file changed, 6 deletions(-) 
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
X-Headers-End: 1rx9X0-0000la-ES
Subject: [Jfs-discussion] [PATCH v2 13/13] fs: Remove i_blocks_per_page
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

The last caller has been converted to i_blocks_per_folio() so we
can remove this wrapper.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 include/linux/pagemap.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index e7222433a537..6b2bdaf27bbc 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -1540,10 +1540,4 @@ unsigned int i_blocks_per_folio(struct inode *inode, struct folio *folio)
 {
 	return folio_size(folio) >> inode->i_blkbits;
 }
-
-static inline
-unsigned int i_blocks_per_page(struct inode *inode, struct page *page)
-{
-	return i_blocks_per_folio(inode, page_folio(page));
-}
 #endif /* _LINUX_PAGEMAP_H */
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
