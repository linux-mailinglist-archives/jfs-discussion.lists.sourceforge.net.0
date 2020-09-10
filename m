Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2372655B1
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Sep 2020 01:47:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kGWHx-0007BB-Mu; Thu, 10 Sep 2020 23:47:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kGWHv-0007Ao-AE
 for jfs-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 23:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yKigblpa2tyh1XESl254L9Rtb9cYGPhr3cjlXKAZqDM=; b=aQg9YgIDP27X2h3HTN7r4/EUWU
 LaGbZERa/U/a6pAyawcXZB015uNhj5od7mEKFJudp6y2kuXLOzO9w7G1v9JI3M7HJVPem+1F1Ho7D
 SCiPeUcJLgMjOYdPqfjNYcJT7089vTVauFE+t3O4DgI9SqwAZiMDk6DLQqwr4QjKklyE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yKigblpa2tyh1XESl254L9Rtb9cYGPhr3cjlXKAZqDM=; b=DybqYHjnMnxsh5JdxPYXw+hHwZ
 oE/I9lYZap7yywmhiPhjZjkHhEmKIyRWeOR3DFBur3aUAcW114b5rDFz5jTR+N9VS44ty32k2GS6v
 BeVM8sgOvGSJDZt5rFHBkkf5kZkeH6h0CCy42c/6LO8wS6f4AHIViAIOzsWjvHzDzkn0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGWHp-0037H9-IT
 for jfs-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 23:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=yKigblpa2tyh1XESl254L9Rtb9cYGPhr3cjlXKAZqDM=; b=WHRNrx/UBTKK/QG4MTHPirwoJL
 djjona+4O24Bf8m/PosZtRAUBGTVYSGbBr74yGFLOkFVHzJzYlZ9ZYrQuTsHFGVIritUlTGIOOQwu
 oGJLAjacaGUyoOXr8P/XUi5JgOfl50pzh4ASFzj4uMl3p9+owYJS+zG+ctEnuvAAt4GeP65RcJBt5
 7UKNsZp0JrEGyTZkNrQ0CSuvIeY9JPrtF2ZCpiG9c4z/2nKaCnztxET6tuwFRNjb5Dg4tt+QBevgM
 +INj4d1+CyvEwR3kzPm2FAXIkQh7Z+QMSM6tsyjpClail2bGpAY6bOJwkuwh7Uf2GhXshOHZbKYYX
 3fR37KLQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kGWHX-0001SN-C1; Thu, 10 Sep 2020 23:47:11 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-xfs@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Date: Fri, 11 Sep 2020 00:47:04 +0100
Message-Id: <20200910234707.5504-7-willy@infradead.org>
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
X-Headers-End: 1kGWHp-0037H9-IT
Subject: [Jfs-discussion] [PATCH v2 6/9] iomap: Convert read_count to
 read_bytes_pending
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
 Christoph Hellwig <hch@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Instead of counting bio segments, count the number of bytes submitted.
This insulates us from the block layer's definition of what a 'same page'
is, which is not necessarily clear once THPs are involved.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/iomap/buffered-io.c | 41 ++++++++++++-----------------------------
 1 file changed, 12 insertions(+), 29 deletions(-)

diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
index 9670c096b83e..1cf976a8e55c 100644
--- a/fs/iomap/buffered-io.c
+++ b/fs/iomap/buffered-io.c
@@ -26,7 +26,7 @@
  * to track sub-page uptodate status and I/O completions.
  */
 struct iomap_page {
-	atomic_t		read_count;
+	atomic_t		read_bytes_pending;
 	atomic_t		write_count;
 	spinlock_t		uptodate_lock;
 	unsigned long		uptodate[];
@@ -72,7 +72,7 @@ iomap_page_release(struct page *page)
 
 	if (!iop)
 		return;
-	WARN_ON_ONCE(atomic_read(&iop->read_count));
+	WARN_ON_ONCE(atomic_read(&iop->read_bytes_pending));
 	WARN_ON_ONCE(atomic_read(&iop->write_count));
 	WARN_ON_ONCE(bitmap_full(iop->uptodate, nr_blocks) !=
 			PageUptodate(page));
@@ -167,13 +167,6 @@ iomap_set_range_uptodate(struct page *page, unsigned off, unsigned len)
 		SetPageUptodate(page);
 }
 
-static void
-iomap_read_finish(struct iomap_page *iop, struct page *page)
-{
-	if (!iop || atomic_dec_and_test(&iop->read_count))
-		unlock_page(page);
-}
-
 static void
 iomap_read_page_end_io(struct bio_vec *bvec, int error)
 {
@@ -187,7 +180,8 @@ iomap_read_page_end_io(struct bio_vec *bvec, int error)
 		iomap_set_range_uptodate(page, bvec->bv_offset, bvec->bv_len);
 	}
 
-	iomap_read_finish(iop, page);
+	if (!iop || atomic_sub_and_test(bvec->bv_len, &iop->read_bytes_pending))
+		unlock_page(page);
 }
 
 static void
@@ -267,30 +261,19 @@ iomap_readpage_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
 	}
 
 	ctx->cur_page_in_bio = true;
+	if (iop)
+		atomic_add(plen, &iop->read_bytes_pending);
 
-	/*
-	 * Try to merge into a previous segment if we can.
-	 */
+	/* Try to merge into a previous segment if we can */
 	sector = iomap_sector(iomap, pos);
-	if (ctx->bio && bio_end_sector(ctx->bio) == sector)
+	if (ctx->bio && bio_end_sector(ctx->bio) == sector) {
+		if (__bio_try_merge_page(ctx->bio, page, plen, poff,
+				&same_page))
+			goto done;
 		is_contig = true;
-
-	if (is_contig &&
-	    __bio_try_merge_page(ctx->bio, page, plen, poff, &same_page)) {
-		if (!same_page && iop)
-			atomic_inc(&iop->read_count);
-		goto done;
 	}
 
-	/*
-	 * If we start a new segment we need to increase the read count, and we
-	 * need to do so before submitting any previous full bio to make sure
-	 * that we don't prematurely unlock the page.
-	 */
-	if (iop)
-		atomic_inc(&iop->read_count);
-
-	if (!ctx->bio || !is_contig || bio_full(ctx->bio, plen)) {
+	if (!is_contig || bio_full(ctx->bio, plen)) {
 		gfp_t gfp = mapping_gfp_constraint(page->mapping, GFP_KERNEL);
 		gfp_t orig_gfp = gfp;
 		int nr_vecs = (length + PAGE_SIZE - 1) >> PAGE_SHIFT;
-- 
2.28.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
