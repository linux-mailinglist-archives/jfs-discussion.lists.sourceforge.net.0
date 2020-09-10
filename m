Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE97D2655B8
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Sep 2020 01:48:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kGWI9-0006J6-VH; Thu, 10 Sep 2020 23:47:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kGWHv-0006HV-CO
 for jfs-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 23:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ldPCHrf1j5mleYrfsHCzGqCm1zQB/iX5hoqH8XIbE8U=; b=dNFkB37Ef9nOwnNz1zoxCg5nzR
 N/qShkriID4VZBgEm9OTZN+KpcqUkyQZ6mes9j9DI5FCRhf02WLPnQl4HrRnfRoh2DuXiAr1YbxPB
 iLfNWPEZvWj7R0iVaKxKgcHI9XD1O8G7ih1QwM2XfzoR4pE7ZKNpA2uxkyFt24e9lZfE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ldPCHrf1j5mleYrfsHCzGqCm1zQB/iX5hoqH8XIbE8U=; b=aDZt1JmjSG1a0wGcsieWVCIWnT
 qJSzb5xyvvB+INN3IoVKLsRGUDFaRhSsIho0eyKsisLyVSfviQC2yxLmZ1eKFXp2+S5zL2he+bCMu
 l34dYPVIyrlSBnTDSH2/jxkSLb9EfoVBlwvTYhGjooU0RS54swjDz7xvFo+Wgz6eKw9U=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGWHp-0037H7-Hh
 for jfs-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 23:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ldPCHrf1j5mleYrfsHCzGqCm1zQB/iX5hoqH8XIbE8U=; b=IgXVRZE2DYIOQuzM9HNd431Z4E
 ZY/7B3nvSrPnIiW67vgG8bRk+caYifYshuqnW/zTEMcL8sTwU6dSyOtU2IctEI1Jf2mQu0LWItEDu
 i6BymYHp/YZcjuEH+QIZQTf8bfeAiMcYUyQYyy9JmPePYcO0NDy9LjuDyHQzjRG/a2gLJo31wBfqh
 hspM/mScCQNXwr/EYroURtlNv2wzwSMRmamePhn9UxOpHJcaozir0P//EQ1wnVtN6QQ+w/ckE8+cH
 4KMsRyY3Z02xE3uJh/AdIuCbLmzptYzZtlT2/tAJl4WZtBlFnus9UlCyCmx+NkaTIyhgnLnTtKY7i
 F6yTcn0Q==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kGWHW-0001S7-W2; Thu, 10 Sep 2020 23:47:11 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-xfs@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Date: Fri, 11 Sep 2020 00:47:03 +0100
Message-Id: <20200910234707.5504-6-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200910234707.5504-1-willy@infradead.org>
References: <20200910234707.5504-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kGWHp-0037H7-Hh
Subject: [Jfs-discussion] [PATCH v2 5/9] iomap: Support arbitrarily many
 blocks per page
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-nvdimm@lists.01.org, "Darrick J . Wong" <darrick.wong@oracle.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>, Dave Chinner <dchinner@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Size the uptodate array dynamically to support larger pages in the
page cache.  With a 64kB page, we're only saving 8 bytes per page today,
but with a 2MB maximum page size, we'd have to allocate more than 4kB
per page.  Add a few debugging assertions.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Reviewed-by: Dave Chinner <dchinner@redhat.com>
---
 fs/iomap/buffered-io.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
index 7fc0e02d27b0..9670c096b83e 100644
--- a/fs/iomap/buffered-io.c
+++ b/fs/iomap/buffered-io.c
@@ -22,18 +22,25 @@
 #include "../internal.h"
 
 /*
- * Structure allocated for each page when block size < PAGE_SIZE to track
- * sub-page uptodate status and I/O completions.
+ * Structure allocated for each page or THP when block size < page size
+ * to track sub-page uptodate status and I/O completions.
  */
 struct iomap_page {
 	atomic_t		read_count;
 	atomic_t		write_count;
 	spinlock_t		uptodate_lock;
-	DECLARE_BITMAP(uptodate, PAGE_SIZE / 512);
+	unsigned long		uptodate[];
 };
 
 static inline struct iomap_page *to_iomap_page(struct page *page)
 {
+	/*
+	 * per-block data is stored in the head page.  Callers should
+	 * not be dealing with tail pages (and if they are, they can
+	 * call thp_head() first.
+	 */
+	VM_BUG_ON_PGFLAGS(PageTail(page), page);
+
 	if (page_has_private(page))
 		return (struct iomap_page *)page_private(page);
 	return NULL;
@@ -45,11 +52,13 @@ static struct iomap_page *
 iomap_page_create(struct inode *inode, struct page *page)
 {
 	struct iomap_page *iop = to_iomap_page(page);
+	unsigned int nr_blocks = i_blocks_per_page(inode, page);
 
-	if (iop || i_blocks_per_page(inode, page) <= 1)
+	if (iop || nr_blocks <= 1)
 		return iop;
 
-	iop = kzalloc(sizeof(*iop), GFP_NOFS | __GFP_NOFAIL);
+	iop = kzalloc(struct_size(iop, uptodate, BITS_TO_LONGS(nr_blocks)),
+			GFP_NOFS | __GFP_NOFAIL);
 	spin_lock_init(&iop->uptodate_lock);
 	attach_page_private(page, iop);
 	return iop;
@@ -59,11 +68,14 @@ static void
 iomap_page_release(struct page *page)
 {
 	struct iomap_page *iop = detach_page_private(page);
+	unsigned int nr_blocks = i_blocks_per_page(page->mapping->host, page);
 
 	if (!iop)
 		return;
 	WARN_ON_ONCE(atomic_read(&iop->read_count));
 	WARN_ON_ONCE(atomic_read(&iop->write_count));
+	WARN_ON_ONCE(bitmap_full(iop->uptodate, nr_blocks) !=
+			PageUptodate(page));
 	kfree(iop);
 }
 
-- 
2.28.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
