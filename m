Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 751818463A8
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Feb 2024 23:46:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rVfp6-0001Rs-6q;
	Thu, 01 Feb 2024 22:46:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rVfp4-0001Rm-AL
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W4VqD8jq2dSVicm/surzXwnOz2JGwjwbYjUpLghwCiE=; b=ZDi1cQRoMPKhZ9vvMFS64fLhqE
 Zwt3V9hkMDFrn67j4p8J+8Vu/z/JRer4Rq/lzvVPEpy8PfNZqWXRjo1gZ9x6EODLm6NKJSYR6aWrx
 UFIpyeDYUckSt2RKZTgVag42mcAP/HNvJdYq6JzraKY+uRTlOEwNz4htvGghWH8TnQis=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W4VqD8jq2dSVicm/surzXwnOz2JGwjwbYjUpLghwCiE=; b=AkFJDaZvrZItMIrdX817PiSB67
 66S14M9AUEQUMhDnmm8fbYhfuzWGSylxWIxRgp8bxMEvlibdpY+cDyEQJmw1HHfXiwrckQLZU+GaS
 iDOMSkDijpOGsJf4NuUwP0ka0wYrA/ymZKQHY1QBivh8B/F63LJ9fS0DYZjeWEnNKgi0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVfp0-0001QF-Cd for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=W4VqD8jq2dSVicm/surzXwnOz2JGwjwbYjUpLghwCiE=; b=vS/jQ5T+YNnpZm+KPgzE7k0M4g
 8A2BoR3mAssqfH3JJ9AmKaIB2RCq1D7A3KNc18V1MVoiJXElM1VNAoKXC3MdHnj9MdovbPfo8D8Lf
 9PjiLFWeW9qD/1cbovDMK2U/qvB7lD35tLajc7MM77eZ9jejcrrpw8PnqPzZjI6AGngDKiPLTps9e
 D45+VcLZjWJ+OlML3z3RcAwJ4mY03UnEytHfpE8kX4vT7/L9lsgLSN44OFKBxpXe/vHUkX6PL6m/p
 2iVFOJpiF+mb35oPYOkWASi+5ARulQ4VWFgy68DahpCJZY9+EcP/sKc38vszWgVGzDT8kck8xU78k
 R7f5UwcQ==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rVfou-0000000H19F-20f0;
 Thu, 01 Feb 2024 22:46:08 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu,  1 Feb 2024 22:46:02 +0000
Message-ID: <20240201224605.4055895-14-willy@infradead.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201224605.4055895-1-willy@infradead.org>
References: <20240201224605.4055895-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rVfp0-0001QF-Cd
Subject: [Jfs-discussion] [PATCH 13/13] fs: Remove i_blocks_per_page
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
index 431b12a23299..66fb5924dc53 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -1556,10 +1556,4 @@ unsigned int i_blocks_per_folio(struct inode *inode, struct folio *folio)
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
