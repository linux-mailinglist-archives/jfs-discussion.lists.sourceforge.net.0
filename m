Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E43C8463B5
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Feb 2024 23:46:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rVfpA-0001cr-0A;
	Thu, 01 Feb 2024 22:46:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rVfp8-0001cW-Az
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6SLAbvmsJojxx3vTYw3U/xZYbOr7sG7SZmWvTEYqw5I=; b=l9zo9pLAkI62u6Fez8iXrcTj/Q
 8Em+UbVXwv5o+Yw6hwdNOjXGWHMRDmfz7M0iBSM/9HQfq1hftgfoHu7KBrQjnKQj9aztFuV6y7Qg/
 FIyr6OmhGz04PQqAmRb73DADylyIsyeTdvbMcDXwxeNFu24PwArP/1dzPscyACfnVsac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6SLAbvmsJojxx3vTYw3U/xZYbOr7sG7SZmWvTEYqw5I=; b=BY3YGp3nAC/rtJysKzRkqwcGIM
 PcMgZc5BaxXt7bWXWNX3S0X4Xa0+FX9aFXDmAGn+5YGv5yrt+byvOobYTt0QGNC+vjlL0IguGWxc/
 VFWdyzF9LBp5pBpIxImvg/YyeaBze9RcpoIc8UhZ2AQIGI8rEpNW/WygWITTzgum3xJ8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVfp3-0001Qh-Pu for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=6SLAbvmsJojxx3vTYw3U/xZYbOr7sG7SZmWvTEYqw5I=; b=I0KMcAuw7Cb0GRzNwfTPSgu1EI
 yPKz7YDuHNv5W/N+WH1i6yh0DfvZ20yShoUfclzKT4j5GZ8fIavHxAxSTpwe4A7ycYoHTF4vqmAZn
 pRnO5VvL6AvXoX3LRQq8fMPbXA6tiWtFMpzI3ZW5Wno666ZLcgjXup8qcw6v7c8J/Wfg7zNrqyRY2
 G7FukhoT3tcOyb6PuBijn9HSY+06CSknJoh2p3iyy/0qklenhsl1jOLNnlj0WZ2yNlGVCLZGePPMI
 3beQBhzG61i2VY7YtS+ZQvQc2dn5Upp2wJRuJD5b/0nlIhg3Svhs76A844UD6ck36ohetlZJVNcLe
 S4Sl5dIA==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rVfot-0000000H17z-0hMY;
 Thu, 01 Feb 2024 22:46:07 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu,  1 Feb 2024 22:45:51 +0000
Message-ID: <20240201224605.4055895-3-willy@infradead.org>
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
 Content preview: Implement writepages rather than writepage by using
 write_cache_pages()
 to call metapage_write_folio(). Use bio_add_folio_nofail() as we know we
 just allocated the bio. Replace the call to SetPageErro [...] 
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
X-Headers-End: 1rVfp3-0001Qh-Pu
Subject: [Jfs-discussion] [PATCH 02/13] jfs: Convert metapage_writepage to
 metapage_write_folio
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

Implement writepages rather than writepage by using write_cache_pages()
to call metapage_write_folio().  Use bio_add_folio_nofail() as we know
we just allocated the bio.  Replace the call to SetPageError (which
is never checked) with a call to mapping_set_error (which ... might be
checked somewhere?)

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 75 +++++++++++++++++++++++--------------------
 1 file changed, 41 insertions(+), 34 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 8266c43ec728..beecc9ad656e 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -4,6 +4,7 @@
  *   Portions Copyright (C) Christoph Hellwig, 2001-2002
  */
 
+#include <linux/blkdev.h>
 #include <linux/fs.h>
 #include <linux/mm.h>
 #include <linux/module.h>
@@ -321,23 +322,25 @@ static void last_write_complete(struct page *page)
 
 static void metapage_write_end_io(struct bio *bio)
 {
-	struct page *page = bio->bi_private;
+	struct folio *folio = bio->bi_private;
 
-	BUG_ON(!PagePrivate(page));
+	BUG_ON(!folio->private);
 
 	if (bio->bi_status) {
+		int err = blk_status_to_errno(bio->bi_status);
 		printk(KERN_ERR "metapage_write_end_io: I/O error\n");
-		SetPageError(page);
+		mapping_set_error(folio->mapping, err);
 	}
-	dec_io(page, last_write_complete);
+	dec_io(&folio->page, last_write_complete);
 	bio_put(bio);
 }
 
-static int metapage_writepage(struct page *page, struct writeback_control *wbc)
+static int metapage_write_folio(struct folio *folio,
+		struct writeback_control *wbc, void *unused)
 {
 	struct bio *bio = NULL;
 	int block_offset;	/* block offset of mp within page */
-	struct inode *inode = page->mapping->host;
+	struct inode *inode = folio->mapping->host;
 	int blocks_per_mp = JFS_SBI(inode->i_sb)->nbperpage;
 	int len;
 	int xlen;
@@ -353,14 +356,13 @@ static int metapage_writepage(struct page *page, struct writeback_control *wbc)
 	int offset;
 	int bad_blocks = 0;
 
-	page_start = (sector_t)page->index <<
-		     (PAGE_SHIFT - inode->i_blkbits);
-	BUG_ON(!PageLocked(page));
-	BUG_ON(PageWriteback(page));
-	set_page_writeback(page);
+	page_start = folio_pos(folio) >> inode->i_blkbits;
+	BUG_ON(!folio_test_locked(folio));
+	BUG_ON(folio_test_writeback(folio));
+	folio_start_writeback(folio);
 
 	for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
-		mp = page_to_mp(page, offset);
+		mp = page_to_mp(&folio->page, offset);
 
 		if (!mp || !test_bit(META_dirty, &mp->flag))
 			continue;
@@ -389,22 +391,20 @@ static int metapage_writepage(struct page *page, struct writeback_control *wbc)
 				continue;
 			}
 			/* Not contiguous */
-			if (bio_add_page(bio, page, bio_bytes, bio_offset) <
-			    bio_bytes)
-				goto add_failed;
+			bio_add_folio_nofail(bio, folio, bio_bytes, bio_offset);
 			/*
 			 * Increment counter before submitting i/o to keep
 			 * count from hitting zero before we're through
 			 */
-			inc_io(page);
+			inc_io(&folio->page);
 			if (!bio->bi_iter.bi_size)
 				goto dump_bio;
 			submit_bio(bio);
 			nr_underway++;
 			bio = NULL;
 		} else
-			inc_io(page);
-		xlen = (PAGE_SIZE - offset) >> inode->i_blkbits;
+			inc_io(&folio->page);
+		xlen = (folio_size(folio) - offset) >> inode->i_blkbits;
 		pblock = metapage_get_blocks(inode, lblock, &xlen);
 		if (!pblock) {
 			printk(KERN_ERR "JFS: metapage_get_blocks failed\n");
@@ -420,7 +420,7 @@ static int metapage_writepage(struct page *page, struct writeback_control *wbc)
 		bio = bio_alloc(inode->i_sb->s_bdev, 1, REQ_OP_WRITE, GFP_NOFS);
 		bio->bi_iter.bi_sector = pblock << (inode->i_blkbits - 9);
 		bio->bi_end_io = metapage_write_end_io;
-		bio->bi_private = page;
+		bio->bi_private = folio;
 
 		/* Don't call bio_add_page yet, we may add to this vec */
 		bio_offset = offset;
@@ -430,8 +430,7 @@ static int metapage_writepage(struct page *page, struct writeback_control *wbc)
 		next_block = lblock + len;
 	}
 	if (bio) {
-		if (bio_add_page(bio, page, bio_bytes, bio_offset) < bio_bytes)
-				goto add_failed;
+		bio_add_folio_nofail(bio, folio, bio_bytes, bio_offset);
 		if (!bio->bi_iter.bi_size)
 			goto dump_bio;
 
@@ -439,34 +438,42 @@ static int metapage_writepage(struct page *page, struct writeback_control *wbc)
 		nr_underway++;
 	}
 	if (redirty)
-		redirty_page_for_writepage(wbc, page);
+		folio_redirty_for_writepage(wbc, folio);
 
-	unlock_page(page);
+	folio_unlock(folio);
 
 	if (bad_blocks)
 		goto err_out;
 
 	if (nr_underway == 0)
-		end_page_writeback(page);
+		folio_end_writeback(folio);
 
 	return 0;
-add_failed:
-	/* We should never reach here, since we're only adding one vec */
-	printk(KERN_ERR "JFS: bio_add_page failed unexpectedly\n");
-	goto skip;
 dump_bio:
 	print_hex_dump(KERN_ERR, "JFS: dump of bio: ", DUMP_PREFIX_ADDRESS, 16,
 		       4, bio, sizeof(*bio), 0);
-skip:
 	bio_put(bio);
-	unlock_page(page);
-	dec_io(page, last_write_complete);
+	folio_unlock(folio);
+	dec_io(&folio->page, last_write_complete);
 err_out:
 	while (bad_blocks--)
-		dec_io(page, last_write_complete);
+		dec_io(&folio->page, last_write_complete);
 	return -EIO;
 }
 
+static int metapage_writepages(struct address_space *mapping,
+		struct writeback_control *wbc)
+{
+	struct blk_plug plug;
+	int err;
+
+	blk_start_plug(&plug);
+	err = write_cache_pages(mapping, wbc, metapage_write_folio, NULL);
+	blk_finish_plug(&plug);
+
+	return err;
+}
+
 static int metapage_read_folio(struct file *fp, struct folio *folio)
 {
 	struct inode *inode = folio->mapping->host;
@@ -556,7 +563,7 @@ static void metapage_invalidate_folio(struct folio *folio, size_t offset,
 
 const struct address_space_operations jfs_metapage_aops = {
 	.read_folio	= metapage_read_folio,
-	.writepage	= metapage_writepage,
+	.writepages	= metapage_writepages,
 	.release_folio	= metapage_release_folio,
 	.invalidate_folio = metapage_invalidate_folio,
 	.dirty_folio	= filemap_dirty_folio,
@@ -698,7 +705,7 @@ static int metapage_write_one(struct page *page)
 
 	if (folio_clear_dirty_for_io(folio)) {
 		folio_get(folio);
-		ret = metapage_writepage(page, &wbc);
+		ret = metapage_write_folio(folio, &wbc, NULL);
 		if (ret == 0)
 			folio_wait_writeback(folio);
 		folio_put(folio);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
