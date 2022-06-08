Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B3E543608
	for <lists+jfs-discussion@lfdr.de>; Wed,  8 Jun 2022 17:05:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nyxFG-0006Nd-Su; Wed, 08 Jun 2022 15:05:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+ba9ae8ab3d8ecaf97ba4+6863+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nyxFG-0006NU-6M
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 15:05:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VckHwaxWau1bXlfmn69vahAhgKWQ7bpHh8b/j8r0bkk=; b=O2fPTNa95J9VtdXwlwrU7QwWh2
 B/fNBTA22RcXm5tOyUINa1iyLwgOUw1btG692wi5eK0igGl+WAS0syacWMkT2hzVTEz6tCte7WBhx
 o3p4q9wcifKDo0WHNxZiWiQ9ar4hdbMQsIML1tCi0jn2ADyLM6LogBmyG11vpF9zWBZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VckHwaxWau1bXlfmn69vahAhgKWQ7bpHh8b/j8r0bkk=; b=WflCZj2hHAhx/ogqi6k3STQUqk
 RCRATA9bHgN9S0AqCwf5pYbbH1o6ZVO4h1JRX3psbfqDcf+aT2g9ahjmgJQMXcO2vIRI+QnT3J/SA
 jspCRM2xfRUufwJmY5JwlzdDooDHO03nvF9ARg/ugS0OWQiZqTcU3z7nDl0GAIed7BfE=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyxFB-009y6u-Tw
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 15:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=VckHwaxWau1bXlfmn69vahAhgKWQ7bpHh8b/j8r0bkk=; b=q0s9rSo6mjvQIDo8Buo2olQ1YI
 433d3tCJfcd54Sz1EbVPUAPl4XCROQ7I7TlLJovOLZxQz28OPnTnIZjugMtvUcZh/+u34UJ6rNCFd
 hxhuVjBBuxx9xGvVHL4mTSJoj912cAnEAXD250LMv7WSh07/K7Q4JzHXeoA+NE1p+Wtlin+z4SmuO
 BEGsF4i1LS0HSZdpHHiI56iti4xY8jvjmZJK/W7g1su0v8vApG7GDW7n8MoeiHtayGyfmozJPEPkM
 ivpkWxSoGfik6mPikWCzRsMlzOcj4OQ/6SRVVTRelo6l3X7Qp2GnoKV/q/I4Mu0CGshBa2VkSMrOh
 /WwZZjLA==;
Received: from [2001:4bb8:190:726c:66c4:f635:4b37:bdda] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nyxF1-00DtJW-Ic; Wed, 08 Jun 2022 15:05:04 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ext4@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Date: Wed,  8 Jun 2022 17:04:49 +0200
Message-Id: <20220608150451.1432388-4-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220608150451.1432388-1-hch@lst.de>
References: <20220608150451.1432388-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  All callers are gone,
 so remove the now dead code. Signed-off-by:
 Christoph Hellwig <hch@lst.de> --- fs/buffer.c | 324 fs/mpage.c | 25 +--
 include/linux/buffer_head.h | 8 - include/linux/mpage.h | 2 - 4 files chang
 [...] Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1nyxFB-009y6u-Tw
Subject: [Jfs-discussion] [PATCH 3/5] fs: remove the nobh helpers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

All callers are gone, so remove the now dead code.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/buffer.c                 | 324 ------------------------------------
 fs/mpage.c                  |  25 +--
 include/linux/buffer_head.h |   8 -
 include/linux/mpage.h       |   2 -
 4 files changed, 1 insertion(+), 358 deletions(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index ce9844d7c10fa..5717d1881d2fa 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2537,330 +2537,6 @@ int block_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf,
 }
 EXPORT_SYMBOL(block_page_mkwrite);
 
-/*
- * nobh_write_begin()'s prereads are special: the buffer_heads are freed
- * immediately, while under the page lock.  So it needs a special end_io
- * handler which does not touch the bh after unlocking it.
- */
-static void end_buffer_read_nobh(struct buffer_head *bh, int uptodate)
-{
-	__end_buffer_read_notouch(bh, uptodate);
-}
-
-/*
- * Attach the singly-linked list of buffers created by nobh_write_begin, to
- * the page (converting it to circular linked list and taking care of page
- * dirty races).
- */
-static void attach_nobh_buffers(struct page *page, struct buffer_head *head)
-{
-	struct buffer_head *bh;
-
-	BUG_ON(!PageLocked(page));
-
-	spin_lock(&page->mapping->private_lock);
-	bh = head;
-	do {
-		if (PageDirty(page))
-			set_buffer_dirty(bh);
-		if (!bh->b_this_page)
-			bh->b_this_page = head;
-		bh = bh->b_this_page;
-	} while (bh != head);
-	attach_page_private(page, head);
-	spin_unlock(&page->mapping->private_lock);
-}
-
-/*
- * On entry, the page is fully not uptodate.
- * On exit the page is fully uptodate in the areas outside (from,to)
- * The filesystem needs to handle block truncation upon failure.
- */
-int nobh_write_begin(struct address_space *mapping, loff_t pos, unsigned len,
-			struct page **pagep, void **fsdata,
-			get_block_t *get_block)
-{
-	struct inode *inode = mapping->host;
-	const unsigned blkbits = inode->i_blkbits;
-	const unsigned blocksize = 1 << blkbits;
-	struct buffer_head *head, *bh;
-	struct page *page;
-	pgoff_t index;
-	unsigned from, to;
-	unsigned block_in_page;
-	unsigned block_start, block_end;
-	sector_t block_in_file;
-	int nr_reads = 0;
-	int ret = 0;
-	int is_mapped_to_disk = 1;
-
-	index = pos >> PAGE_SHIFT;
-	from = pos & (PAGE_SIZE - 1);
-	to = from + len;
-
-	page = grab_cache_page_write_begin(mapping, index);
-	if (!page)
-		return -ENOMEM;
-	*pagep = page;
-	*fsdata = NULL;
-
-	if (page_has_buffers(page)) {
-		ret = __block_write_begin(page, pos, len, get_block);
-		if (unlikely(ret))
-			goto out_release;
-		return ret;
-	}
-
-	if (PageMappedToDisk(page))
-		return 0;
-
-	/*
-	 * Allocate buffers so that we can keep track of state, and potentially
-	 * attach them to the page if an error occurs. In the common case of
-	 * no error, they will just be freed again without ever being attached
-	 * to the page (which is all OK, because we're under the page lock).
-	 *
-	 * Be careful: the buffer linked list is a NULL terminated one, rather
-	 * than the circular one we're used to.
-	 */
-	head = alloc_page_buffers(page, blocksize, false);
-	if (!head) {
-		ret = -ENOMEM;
-		goto out_release;
-	}
-
-	block_in_file = (sector_t)page->index << (PAGE_SHIFT - blkbits);
-
-	/*
-	 * We loop across all blocks in the page, whether or not they are
-	 * part of the affected region.  This is so we can discover if the
-	 * page is fully mapped-to-disk.
-	 */
-	for (block_start = 0, block_in_page = 0, bh = head;
-		  block_start < PAGE_SIZE;
-		  block_in_page++, block_start += blocksize, bh = bh->b_this_page) {
-		int create;
-
-		block_end = block_start + blocksize;
-		bh->b_state = 0;
-		create = 1;
-		if (block_start >= to)
-			create = 0;
-		ret = get_block(inode, block_in_file + block_in_page,
-					bh, create);
-		if (ret)
-			goto failed;
-		if (!buffer_mapped(bh))
-			is_mapped_to_disk = 0;
-		if (buffer_new(bh))
-			clean_bdev_bh_alias(bh);
-		if (PageUptodate(page)) {
-			set_buffer_uptodate(bh);
-			continue;
-		}
-		if (buffer_new(bh) || !buffer_mapped(bh)) {
-			zero_user_segments(page, block_start, from,
-							to, block_end);
-			continue;
-		}
-		if (buffer_uptodate(bh))
-			continue;	/* reiserfs does this */
-		if (block_start < from || block_end > to) {
-			lock_buffer(bh);
-			bh->b_end_io = end_buffer_read_nobh;
-			submit_bh(REQ_OP_READ, 0, bh);
-			nr_reads++;
-		}
-	}
-
-	if (nr_reads) {
-		/*
-		 * The page is locked, so these buffers are protected from
-		 * any VM or truncate activity.  Hence we don't need to care
-		 * for the buffer_head refcounts.
-		 */
-		for (bh = head; bh; bh = bh->b_this_page) {
-			wait_on_buffer(bh);
-			if (!buffer_uptodate(bh))
-				ret = -EIO;
-		}
-		if (ret)
-			goto failed;
-	}
-
-	if (is_mapped_to_disk)
-		SetPageMappedToDisk(page);
-
-	*fsdata = head; /* to be released by nobh_write_end */
-
-	return 0;
-
-failed:
-	BUG_ON(!ret);
-	/*
-	 * Error recovery is a bit difficult. We need to zero out blocks that
-	 * were newly allocated, and dirty them to ensure they get written out.
-	 * Buffers need to be attached to the page at this point, otherwise
-	 * the handling of potential IO errors during writeout would be hard
-	 * (could try doing synchronous writeout, but what if that fails too?)
-	 */
-	attach_nobh_buffers(page, head);
-	page_zero_new_buffers(page, from, to);
-
-out_release:
-	unlock_page(page);
-	put_page(page);
-	*pagep = NULL;
-
-	return ret;
-}
-EXPORT_SYMBOL(nobh_write_begin);
-
-int nobh_write_end(struct file *file, struct address_space *mapping,
-			loff_t pos, unsigned len, unsigned copied,
-			struct page *page, void *fsdata)
-{
-	struct inode *inode = page->mapping->host;
-	struct buffer_head *head = fsdata;
-	struct buffer_head *bh;
-	BUG_ON(fsdata != NULL && page_has_buffers(page));
-
-	if (unlikely(copied < len) && head)
-		attach_nobh_buffers(page, head);
-	if (page_has_buffers(page))
-		return generic_write_end(file, mapping, pos, len,
-					copied, page, fsdata);
-
-	SetPageUptodate(page);
-	set_page_dirty(page);
-	if (pos+copied > inode->i_size) {
-		i_size_write(inode, pos+copied);
-		mark_inode_dirty(inode);
-	}
-
-	unlock_page(page);
-	put_page(page);
-
-	while (head) {
-		bh = head;
-		head = head->b_this_page;
-		free_buffer_head(bh);
-	}
-
-	return copied;
-}
-EXPORT_SYMBOL(nobh_write_end);
-
-/*
- * nobh_writepage() - based on block_full_write_page() except
- * that it tries to operate without attaching bufferheads to
- * the page.
- */
-int nobh_writepage(struct page *page, get_block_t *get_block,
-			struct writeback_control *wbc)
-{
-	struct inode * const inode = page->mapping->host;
-	loff_t i_size = i_size_read(inode);
-	const pgoff_t end_index = i_size >> PAGE_SHIFT;
-	unsigned offset;
-	int ret;
-
-	/* Is the page fully inside i_size? */
-	if (page->index < end_index)
-		goto out;
-
-	/* Is the page fully outside i_size? (truncate in progress) */
-	offset = i_size & (PAGE_SIZE-1);
-	if (page->index >= end_index+1 || !offset) {
-		unlock_page(page);
-		return 0; /* don't care */
-	}
-
-	/*
-	 * The page straddles i_size.  It must be zeroed out on each and every
-	 * writepage invocation because it may be mmapped.  "A file is mapped
-	 * in multiples of the page size.  For a file that is not a multiple of
-	 * the  page size, the remaining memory is zeroed when mapped, and
-	 * writes to that region are not written out to the file."
-	 */
-	zero_user_segment(page, offset, PAGE_SIZE);
-out:
-	ret = mpage_writepage(page, get_block, wbc);
-	if (ret == -EAGAIN)
-		ret = __block_write_full_page(inode, page, get_block, wbc,
-					      end_buffer_async_write);
-	return ret;
-}
-EXPORT_SYMBOL(nobh_writepage);
-
-int nobh_truncate_page(struct address_space *mapping,
-			loff_t from, get_block_t *get_block)
-{
-	pgoff_t index = from >> PAGE_SHIFT;
-	struct inode *inode = mapping->host;
-	unsigned blocksize = i_blocksize(inode);
-	struct folio *folio;
-	struct buffer_head map_bh;
-	size_t offset;
-	sector_t iblock;
-	int err;
-
-	/* Block boundary? Nothing to do */
-	if (!(from & (blocksize - 1)))
-		return 0;
-
-	folio = __filemap_get_folio(mapping, index, FGP_LOCK | FGP_CREAT,
-			mapping_gfp_mask(mapping));
-	err = -ENOMEM;
-	if (!folio)
-		goto out;
-
-	if (folio_buffers(folio))
-		goto has_buffers;
-
-	iblock = from >> inode->i_blkbits;
-	map_bh.b_size = blocksize;
-	map_bh.b_state = 0;
-	err = get_block(inode, iblock, &map_bh, 0);
-	if (err)
-		goto unlock;
-	/* unmapped? It's a hole - nothing to do */
-	if (!buffer_mapped(&map_bh))
-		goto unlock;
-
-	/* Ok, it's mapped. Make sure it's up-to-date */
-	if (!folio_test_uptodate(folio)) {
-		err = mapping->a_ops->read_folio(NULL, folio);
-		if (err) {
-			folio_put(folio);
-			goto out;
-		}
-		folio_lock(folio);
-		if (!folio_test_uptodate(folio)) {
-			err = -EIO;
-			goto unlock;
-		}
-		if (folio_buffers(folio))
-			goto has_buffers;
-	}
-	offset = offset_in_folio(folio, from);
-	folio_zero_segment(folio, offset, round_up(offset, blocksize));
-	folio_mark_dirty(folio);
-	err = 0;
-
-unlock:
-	folio_unlock(folio);
-	folio_put(folio);
-out:
-	return err;
-
-has_buffers:
-	folio_unlock(folio);
-	folio_put(folio);
-	return block_truncate_page(mapping, from, get_block);
-}
-EXPORT_SYMBOL(nobh_truncate_page);
-
 int block_truncate_page(struct address_space *mapping,
 			loff_t from, get_block_t *get_block)
 {
diff --git a/fs/mpage.c b/fs/mpage.c
index 0d25f44f5707c..31a97a0acf5f5 100644
--- a/fs/mpage.c
+++ b/fs/mpage.c
@@ -402,7 +402,6 @@ struct mpage_data {
 	struct bio *bio;
 	sector_t last_block_in_bio;
 	get_block_t *get_block;
-	unsigned use_writepage;
 };
 
 /*
@@ -622,15 +621,10 @@ static int __mpage_writepage(struct page *page, struct writeback_control *wbc,
 	if (bio)
 		bio = mpage_bio_submit(bio);
 
-	if (mpd->use_writepage) {
-		ret = mapping->a_ops->writepage(page, wbc);
-	} else {
-		ret = -EAGAIN;
-		goto out;
-	}
 	/*
 	 * The caller has a ref on the inode, so *mapping is stable
 	 */
+	ret = mapping->a_ops->writepage(page, wbc);
 	mapping_set_error(mapping, ret);
 out:
 	mpd->bio = bio;
@@ -672,7 +666,6 @@ mpage_writepages(struct address_space *mapping,
 			.bio = NULL,
 			.last_block_in_bio = 0,
 			.get_block = get_block,
-			.use_writepage = 1,
 		};
 
 		ret = write_cache_pages(mapping, wbc, __mpage_writepage, &mpd);
@@ -683,19 +676,3 @@ mpage_writepages(struct address_space *mapping,
 	return ret;
 }
 EXPORT_SYMBOL(mpage_writepages);
-
-int mpage_writepage(struct page *page, get_block_t get_block,
-	struct writeback_control *wbc)
-{
-	struct mpage_data mpd = {
-		.bio = NULL,
-		.last_block_in_bio = 0,
-		.get_block = get_block,
-		.use_writepage = 0,
-	};
-	int ret = __mpage_writepage(page, wbc, &mpd);
-	if (mpd.bio)
-		mpage_bio_submit(mpd.bio);
-	return ret;
-}
-EXPORT_SYMBOL(mpage_writepage);
diff --git a/include/linux/buffer_head.h b/include/linux/buffer_head.h
index b0366c89d6a4d..61afb81cfdaea 100644
--- a/include/linux/buffer_head.h
+++ b/include/linux/buffer_head.h
@@ -258,14 +258,6 @@ static inline vm_fault_t block_page_mkwrite_return(int err)
 }
 sector_t generic_block_bmap(struct address_space *, sector_t, get_block_t *);
 int block_truncate_page(struct address_space *, loff_t, get_block_t *);
-int nobh_write_begin(struct address_space *, loff_t, unsigned len,
-				struct page **, void **, get_block_t*);
-int nobh_write_end(struct file *, struct address_space *,
-				loff_t, unsigned, unsigned,
-				struct page *, void *);
-int nobh_truncate_page(struct address_space *, loff_t, get_block_t *);
-int nobh_writepage(struct page *page, get_block_t *get_block,
-                        struct writeback_control *wbc);
 
 #ifdef CONFIG_MIGRATION
 extern int buffer_migrate_folio(struct address_space *,
diff --git a/include/linux/mpage.h b/include/linux/mpage.h
index 43986f7ec4dd3..1bdc39daac0a3 100644
--- a/include/linux/mpage.h
+++ b/include/linux/mpage.h
@@ -19,7 +19,5 @@ void mpage_readahead(struct readahead_control *, get_block_t get_block);
 int mpage_read_folio(struct folio *folio, get_block_t get_block);
 int mpage_writepages(struct address_space *mapping,
 		struct writeback_control *wbc, get_block_t get_block);
-int mpage_writepage(struct page *page, get_block_t *get_block,
-		struct writeback_control *wbc);
 
 #endif
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
