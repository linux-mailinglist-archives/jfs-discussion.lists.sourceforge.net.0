Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 646B02655BF
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Sep 2020 01:48:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kGWIP-0001Re-K8; Thu, 10 Sep 2020 23:48:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kGWHv-0001Q3-AI
 for jfs-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 23:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=toDCz/l3SOhSBoupdSkLKgKXvEF68cxVtDee4X76Z9c=; b=iyv9Z8Y24fyHD4RNNGlG2REAb7
 Nj7dobzhQbNA6CbOxEE8AXKWGkWLchb8gjEO3MyDK/fVSWJDzNE6HB0ODn1mq/QK6V1EXTWaDNNQx
 aiXVVB+jVDierjtCjCAmqDTIZ4+2b3yaaGwc4/XDDpcNIFjLqjRW06LvQ3WEfLVglaI4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=toDCz/l3SOhSBoupdSkLKgKXvEF68cxVtDee4X76Z9c=; b=cCJO+pQGXQU+QxNQI3dxhmrq0Y
 JqAnJ/5KHUn5VF017aYYL/3j9bRJMXpmRCG/2TRRfAajtvBzAOAyy+MwyttP6kT06mc4CGRtIE15I
 DhY0GboCYJwrQmpHMb/lh7pIOhj90R6UC9bxuWT0e5qwcxRBqlDRczL21MlICeM4hDkA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGWHp-0037HB-Hg
 for jfs-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 23:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=toDCz/l3SOhSBoupdSkLKgKXvEF68cxVtDee4X76Z9c=; b=OlH9lbNA4yiWeUzny9lsfQuH1l
 ssaWKtnwNnGZ0V/EMvtGg3WkefT4zUtny7F3ViujFeMnZ6LR+GIIZngAQ8g22Ke7kCGScphc8tvKd
 WlobhHS4Pt8C5P0EIrzmVbII8Jw61GFSF634qo6Uli3BaX3gCyWV3v+ojhTxCWqkIqwj4/cDkVnfy
 VjErnsBNRmbm7u57Es7NEM0nZfjTKysQ1MOIFBsGym6rBgd6i/xGoW1oFmUYMGmPtBxfzkcqEy+e+
 /VlDhSefMf/8RkHoBPRh/BKUG9gpvpeGiaX4Qj5rdfK+giA8/sKzyJwX5ZGTKv0yZSRETCJxpZ9EJ
 I7LN8tUw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kGWHY-0001Sl-6l; Thu, 10 Sep 2020 23:47:12 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-xfs@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Date: Fri, 11 Sep 2020 00:47:06 +0100
Message-Id: <20200910234707.5504-9-willy@infradead.org>
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
 for more information. [URIs: lst.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kGWHp-0037HB-Hg
Subject: [Jfs-discussion] [PATCH v2 8/9] iomap: Convert iomap_write_end types
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
 Christoph Hellwig <hch@infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

iomap_write_end cannot return an error, so switch it to return
size_t instead of int and remove the error checking from the callers.
Also convert the arguments to size_t from unsigned int, in case anyone
ever wants to support a page size larger than 2GB.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 fs/iomap/buffered-io.c | 31 ++++++++++++-------------------
 1 file changed, 12 insertions(+), 19 deletions(-)

diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
index 64a5cb383f30..cb25a7b70401 100644
--- a/fs/iomap/buffered-io.c
+++ b/fs/iomap/buffered-io.c
@@ -663,9 +663,8 @@ iomap_set_page_dirty(struct page *page)
 }
 EXPORT_SYMBOL_GPL(iomap_set_page_dirty);
 
-static int
-__iomap_write_end(struct inode *inode, loff_t pos, unsigned len,
-		unsigned copied, struct page *page)
+static size_t __iomap_write_end(struct inode *inode, loff_t pos, size_t len,
+		size_t copied, struct page *page)
 {
 	flush_dcache_page(page);
 
@@ -687,9 +686,8 @@ __iomap_write_end(struct inode *inode, loff_t pos, unsigned len,
 	return copied;
 }
 
-static int
-iomap_write_end_inline(struct inode *inode, struct page *page,
-		struct iomap *iomap, loff_t pos, unsigned copied)
+static size_t iomap_write_end_inline(struct inode *inode, struct page *page,
+		struct iomap *iomap, loff_t pos, size_t copied)
 {
 	void *addr;
 
@@ -705,13 +703,14 @@ iomap_write_end_inline(struct inode *inode, struct page *page,
 	return copied;
 }
 
-static int
-iomap_write_end(struct inode *inode, loff_t pos, unsigned len, unsigned copied,
-		struct page *page, struct iomap *iomap, struct iomap *srcmap)
+/* Returns the number of bytes copied.  May be 0.  Cannot be an errno. */
+static size_t iomap_write_end(struct inode *inode, loff_t pos, size_t len,
+		size_t copied, struct page *page, struct iomap *iomap,
+		struct iomap *srcmap)
 {
 	const struct iomap_page_ops *page_ops = iomap->page_ops;
 	loff_t old_size = inode->i_size;
-	int ret;
+	size_t ret;
 
 	if (srcmap->type == IOMAP_INLINE) {
 		ret = iomap_write_end_inline(inode, page, iomap, pos, copied);
@@ -790,11 +789,8 @@ iomap_write_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
 
 		copied = iov_iter_copy_from_user_atomic(page, i, offset, bytes);
 
-		status = iomap_write_end(inode, pos, bytes, copied, page, iomap,
+		copied = iomap_write_end(inode, pos, bytes, copied, page, iomap,
 				srcmap);
-		if (unlikely(status < 0))
-			break;
-		copied = status;
 
 		cond_resched();
 
@@ -868,11 +864,8 @@ iomap_unshare_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
 
 		status = iomap_write_end(inode, pos, bytes, bytes, page, iomap,
 				srcmap);
-		if (unlikely(status <= 0)) {
-			if (WARN_ON_ONCE(status == 0))
-				return -EIO;
-			return status;
-		}
+		if (WARN_ON_ONCE(status == 0))
+			return -EIO;
 
 		cond_resched();
 
-- 
2.28.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
