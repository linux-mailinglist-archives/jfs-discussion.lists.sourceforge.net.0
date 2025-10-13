Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB6ABD15BE
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 06:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=41f3gW111J8mNo6LjS2QqG9G120m/lT2Pfpcq6eIgjM=; b=WWlUybeDAqswOMS4FOEJXprazT
	AmGSb/mM58UTMObU+TCXFqwsqOufPre93VM9KDp1aEE9BRwXPGiYnTsEY3so0xF9rw6ic2kJrawtg
	/p694T0Q65dmhR0TNrkwSGqgbfg1znJCCXSsKyMOQF3Z9ksqF3q1hwx9C7nALmsDONFk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v89vx-0008Pn-Mi;
	Mon, 13 Oct 2025 04:13:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+429c5dd7f65f3a144064+8086+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1v89vv-0008Pg-PV for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:13:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HdnyQGqrNCayWqrk6FmNGitJaDaql2Ia+2Cy7TiImxs=; b=f+fel63ZDOV8th7SGFTn1gOZQQ
 5MNBbbe3flFA++lxcy6SFrTvIwdETT3VtUrgr6FXfnWW94qWa/DzCbZhlvFnrekv5g8PW8DI5K6xj
 7lydY3aFU8J2wWE6Qtqt2C2fJ1VHSNrbzu/IE8fWbkRE/lKXTfO1NjBobSJemySY9O1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HdnyQGqrNCayWqrk6FmNGitJaDaql2Ia+2Cy7TiImxs=; b=gzMczZTOnqkFoG500/ypNW8S1B
 qlUwucAQxE8rytFx0Rice77sQ1XpmmF8YqY+084Ky7FdZMbP7W7ZAQW2SpA7aPhoLZiWrNMMCRCR9
 YPjUsv0qoWlskZJFlTA4rd7Z9rC2vnPhZ7hZ4EacYTjbiOqJLZ0HIi7NpHAnGeCLGJ+Y=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v89vv-000606-1z for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:13:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=HdnyQGqrNCayWqrk6FmNGitJaDaql2Ia+2Cy7TiImxs=; b=IaTnSPQF1Yn6B4lp14WfnvVTFo
 7MHe/bnlcZDqhOwu2i+/VZeNdamAtyIbCtnKoiyu4PAeAvz+wWZyCBW+qsOBXAl95Tn3OrM5TH7ln
 BWkp9Ksp9vLnC4dgzzYhfQ4XE8FEWdayjc504eXPuG2BImWR8Dri0wsenaaT1ORZVtx8100PbkrBv
 oa0+qtWQj+8MLdEDawVjUOdDwft+/cmgomFWNM/y5bprbUjaq2zDtWjIb5LatVIoHkLdOzcEfjBtO
 chNK5tiFJvo3g1quERws/1j0h1+IvldPD6Zc1sIqOUdgO6HOgVT4o7Ghdz74w9RlccJUzUNcGQAe7
 E5j+WuCA==;
Received: from [220.85.59.196] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1v88ma-0000000C8Rv-11QA; Mon, 13 Oct 2025 02:59:32 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Mon, 13 Oct 2025 11:58:05 +0900
Message-ID: <20251013025808.4111128-11-hch@lst.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251013025808.4111128-1-hch@lst.de>
References: <20251013025808.4111128-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Make the naming consistent with the other helpers and get
 away from the flush terminology that is way to overloaded. Signed-off-by:
 Christoph Hellwig <hch@lst.de> --- block/bdev.c | 2 +- fs/btrfs/defrag.c |
 4 ++-- fs/btrfs/extent_io.c | 3 ++- fs/btrfs/file.c | 2 +- fs/btrfs/inode.c
 | 6 +++--- fs/btrfs/reflink.c | 2 [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [198.137.202.133 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1v89vv-000606-1z
Subject: [Jfs-discussion] [PATCH 10/10] mm: rename filemap_flush to
 filemap_fdatawrite_kick
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
From: Christoph Hellwig via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christoph Hellwig <hch@lst.de>
Cc: linux-xfs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org, v9fs@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Make the naming consistent with the other helpers and get away from
the flush terminology that is way to overloaded.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/bdev.c            | 2 +-
 fs/btrfs/defrag.c       | 4 ++--
 fs/btrfs/extent_io.c    | 3 ++-
 fs/btrfs/file.c         | 2 +-
 fs/btrfs/inode.c        | 6 +++---
 fs/btrfs/reflink.c      | 2 +-
 fs/btrfs/super.c        | 2 +-
 fs/ext4/inline.c        | 2 +-
 fs/ext4/inode.c         | 6 +++---
 fs/fat/inode.c          | 2 +-
 fs/jfs/jfs_logmgr.c     | 2 +-
 fs/xfs/xfs_file.c       | 2 +-
 include/linux/pagemap.h | 2 +-
 mm/filemap.c            | 6 +++---
 mm/khugepaged.c         | 2 +-
 15 files changed, 23 insertions(+), 22 deletions(-)

diff --git a/block/bdev.c b/block/bdev.c
index 810707cca970..e8a564120ac7 100644
--- a/block/bdev.c
+++ b/block/bdev.c
@@ -245,7 +245,7 @@ int sync_blockdev_nowait(struct block_device *bdev)
 {
 	if (!bdev)
 		return 0;
-	return filemap_flush(bdev->bd_mapping);
+	return filemap_fdatawrite_kick(bdev->bd_mapping);
 }
 EXPORT_SYMBOL_GPL(sync_blockdev_nowait);
 
diff --git a/fs/btrfs/defrag.c b/fs/btrfs/defrag.c
index 7b277934f66f..e2f3027060db 100644
--- a/fs/btrfs/defrag.c
+++ b/fs/btrfs/defrag.c
@@ -1483,10 +1483,10 @@ int btrfs_defrag_file(struct btrfs_inode *inode, struct file_ra_state *ra,
 		 * need to be written back immediately.
 		 */
 		if (range->flags & BTRFS_DEFRAG_RANGE_START_IO) {
-			filemap_flush(inode->vfs_inode.i_mapping);
+			filemap_fdatawrite_kick(inode->vfs_inode.i_mapping);
 			if (test_bit(BTRFS_INODE_HAS_ASYNC_EXTENT,
 				     &inode->runtime_flags))
-				filemap_flush(inode->vfs_inode.i_mapping);
+				filemap_fdatawrite_kick(inode->vfs_inode.i_mapping);
 		}
 		if (range->compress_type == BTRFS_COMPRESS_LZO)
 			btrfs_set_fs_incompat(fs_info, COMPRESS_LZO);
diff --git a/fs/btrfs/extent_io.c b/fs/btrfs/extent_io.c
index c123a3ef154a..c86cb27876a4 100644
--- a/fs/btrfs/extent_io.c
+++ b/fs/btrfs/extent_io.c
@@ -2450,7 +2450,8 @@ static int extent_write_cache_pages(struct address_space *mapping,
 
 	/*
 	 * We do the tagged writepage as long as the snapshot flush bit is set
-	 * and we are the first one who do the filemap_flush() on this inode.
+	 * and we are the first one who do the filemap_fdatawrite_kick() on this
+	 * inode.
 	 *
 	 * The nr_to_write == LONG_MAX is needed to make sure other flushers do
 	 * not race in and drop the bit.
diff --git a/fs/btrfs/file.c b/fs/btrfs/file.c
index 7efd1f8a1912..9190488f1aae 100644
--- a/fs/btrfs/file.c
+++ b/fs/btrfs/file.c
@@ -1498,7 +1498,7 @@ int btrfs_release_file(struct inode *inode, struct file *filp)
 	 */
 	if (test_and_clear_bit(BTRFS_INODE_FLUSH_ON_CLOSE,
 			       &BTRFS_I(inode)->runtime_flags))
-			filemap_flush(inode->i_mapping);
+			filemap_fdatawrite_kick(inode->i_mapping);
 	return 0;
 }
 
diff --git a/fs/btrfs/inode.c b/fs/btrfs/inode.c
index b63d77154c45..4192056f4d42 100644
--- a/fs/btrfs/inode.c
+++ b/fs/btrfs/inode.c
@@ -8434,7 +8434,7 @@ static int btrfs_rename(struct mnt_idmap *idmap,
 	 * now so  we don't add too much work to the end of the transaction
 	 */
 	if (new_inode && S_ISREG(old_inode->i_mode) && new_inode->i_size)
-		filemap_flush(old_inode->i_mapping);
+		filemap_fdatawrite_kick(old_inode->i_mapping);
 
 	if (flags & RENAME_WHITEOUT) {
 		whiteout_args.inode = new_whiteout_inode(idmap, old_dir);
@@ -8680,10 +8680,10 @@ static void btrfs_run_delalloc_work(struct btrfs_work *work)
 	delalloc_work = container_of(work, struct btrfs_delalloc_work,
 				     work);
 	inode = delalloc_work->inode;
-	filemap_flush(inode->i_mapping);
+	filemap_fdatawrite_kick(inode->i_mapping);
 	if (test_bit(BTRFS_INODE_HAS_ASYNC_EXTENT,
 				&BTRFS_I(inode)->runtime_flags))
-		filemap_flush(inode->i_mapping);
+		filemap_fdatawrite_kick(inode->i_mapping);
 
 	iput(inode);
 	complete(&delalloc_work->completion);
diff --git a/fs/btrfs/reflink.c b/fs/btrfs/reflink.c
index 5465a5eae9b2..72f9b5faa2e8 100644
--- a/fs/btrfs/reflink.c
+++ b/fs/btrfs/reflink.c
@@ -834,7 +834,7 @@ static int btrfs_remap_file_range_prep(struct file *file_in, loff_t pos_in,
 	 * Also we don't need to check ASYNC_EXTENT, as async extent will be
 	 * CoWed anyway, not affecting nocow part.
 	 */
-	ret = filemap_flush(inode_in->vfs_inode.i_mapping);
+	ret = filemap_fdatawrite_kick(inode_in->vfs_inode.i_mapping);
 	if (ret < 0)
 		return ret;
 
diff --git a/fs/btrfs/super.c b/fs/btrfs/super.c
index d6e496436539..e634d93a908c 100644
--- a/fs/btrfs/super.c
+++ b/fs/btrfs/super.c
@@ -1022,7 +1022,7 @@ int btrfs_sync_fs(struct super_block *sb, int wait)
 	trace_btrfs_sync_fs(fs_info, wait);
 
 	if (!wait) {
-		filemap_flush(fs_info->btree_inode->i_mapping);
+		filemap_fdatawrite_kick(fs_info->btree_inode->i_mapping);
 		return 0;
 	}
 
diff --git a/fs/ext4/inline.c b/fs/ext4/inline.c
index 1b094a4f3866..692d28dbee64 100644
--- a/fs/ext4/inline.c
+++ b/fs/ext4/inline.c
@@ -1951,7 +1951,7 @@ int ext4_convert_inline_data(struct inode *inode)
 		 * inline data to delay allocated block. Just force writeout
 		 * here to finish conversion.
 		 */
-		error = filemap_flush(inode->i_mapping);
+		error = filemap_fdatawrite_kick(inode->i_mapping);
 		if (error)
 			return error;
 		if (!ext4_has_inline_data(inode))
diff --git a/fs/ext4/inode.c b/fs/ext4/inode.c
index f9e4ac87211e..f4bcbcfd4531 100644
--- a/fs/ext4/inode.c
+++ b/fs/ext4/inode.c
@@ -3302,7 +3302,7 @@ int ext4_alloc_da_blocks(struct inode *inode)
 		return 0;
 
 	/*
-	 * We do something simple for now.  The filemap_flush() will
+	 * We do something simple for now.  The filemap_fdatawrite_kick() will
 	 * also start triggering a write of the data blocks, which is
 	 * not strictly speaking necessary (and for users of
 	 * laptop_mode, not even desirable).  However, to do otherwise
@@ -3328,11 +3328,11 @@ int ext4_alloc_da_blocks(struct inode *inode)
 	 * logical block extents, call the multi-block allocator, and
 	 * then update the buffer heads with the block allocations.
 	 *
-	 * For now, though, we'll cheat by calling filemap_flush(),
+	 * For now, though, we'll cheat by calling filemap_fdatawrite_kick(),
 	 * which will map the blocks, and start the I/O, but not
 	 * actually wait for the I/O to complete.
 	 */
-	return filemap_flush(inode->i_mapping);
+	return filemap_fdatawrite_kick(inode->i_mapping);
 }
 
 /*
diff --git a/fs/fat/inode.c b/fs/fat/inode.c
index 9648ed097816..f1ecb4c211bc 100644
--- a/fs/fat/inode.c
+++ b/fs/fat/inode.c
@@ -1877,7 +1877,7 @@ static int writeback_inode(struct inode *inode)
  * write data and metadata corresponding to i1 and i2.  The io is
  * started but we do not wait for any of it to finish.
  *
- * filemap_flush is used for the block device, so if there is a dirty
+ * filemap_fdatawrite_kick is used for the block device, so if there is a dirty
  * page for a block already in flight, we will not wait and start the
  * io over again
  */
diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index b343c5ea1159..4cdb0bb6c921 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -934,7 +934,7 @@ static int lmLogSync(struct jfs_log * log, int hard_sync)
 	if (hard_sync)
 		write_special_inodes(log, filemap_fdatawrite);
 	else
-		write_special_inodes(log, filemap_flush);
+		write_special_inodes(log, filemap_fdatawrite_kick);
 
 	/*
 	 *	forward syncpt
diff --git a/fs/xfs/xfs_file.c b/fs/xfs/xfs_file.c
index 2702fef2c90c..bf39bfd4a8cd 100644
--- a/fs/xfs/xfs_file.c
+++ b/fs/xfs/xfs_file.c
@@ -1615,7 +1615,7 @@ xfs_file_release(
 	if (xfs_iflags_test_and_clear(ip, XFS_ITRUNCATED)) {
 		xfs_iflags_clear(ip, XFS_EOFBLOCKS_RELEASED);
 		if (ip->i_delayed_blks > 0)
-			filemap_flush(inode->i_mapping);
+			filemap_fdatawrite_kick(inode->i_mapping);
 	}
 
 	/*
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 664f23f2330a..e7c4d8bba952 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -37,7 +37,7 @@ int filemap_invalidate_pages(struct address_space *mapping,
 
 int write_inode_now(struct inode *, int sync);
 int filemap_fdatawrite(struct address_space *);
-int filemap_flush(struct address_space *);
+int filemap_fdatawrite_kick(struct address_space *);
 int filemap_fdatawrite_kick_nr(struct address_space *mapping,
 		long *nr_to_write);
 int filemap_fdatawait_keep_errors(struct address_space *mapping);
diff --git a/mm/filemap.c b/mm/filemap.c
index ec19ed127de2..3ad6698c39c9 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -437,7 +437,7 @@ int filemap_fdatawrite_range_kick(struct address_space *mapping, loff_t start,
 EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
 
 /**
- * filemap_flush - mostly a non-blocking flush
+ * filemap_fdatawrite_kick - mostly a non-blocking flush
  * @mapping:	target address_space
  *
  * This is a mostly non-blocking flush.  Not suitable for data-integrity
@@ -445,11 +445,11 @@ EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
  *
  * Return: %0 on success, negative error code otherwise.
  */
-int filemap_flush(struct address_space *mapping)
+int filemap_fdatawrite_kick(struct address_space *mapping)
 {
 	return filemap_fdatawrite_range_kick(mapping, 0, LLONG_MAX);
 }
-EXPORT_SYMBOL(filemap_flush);
+EXPORT_SYMBOL(filemap_fdatawrite_kick);
 
 /*
  * Start writeback on @nr_to_write pages from @mapping.  No one but the existing
diff --git a/mm/khugepaged.c b/mm/khugepaged.c
index abe54f0043c7..5a4a43e979c4 100644
--- a/mm/khugepaged.c
+++ b/mm/khugepaged.c
@@ -1949,7 +1949,7 @@ static int collapse_file(struct mm_struct *mm, unsigned long addr,
 				 * forcing writeback in loop.
 				 */
 				xas_unlock_irq(&xas);
-				filemap_flush(mapping);
+				filemap_fdatawrite_kick(mapping);
 				result = SCAN_FAIL;
 				goto xa_unlocked;
 			} else if (folio_test_writeback(folio)) {
-- 
2.47.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
