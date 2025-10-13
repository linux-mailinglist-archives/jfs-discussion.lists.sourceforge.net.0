Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB58BD15B5
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 06:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J3m2C7OoKBrku7KCWFlhd7YzNasKV/bAA7EXogU7Qfo=; b=LAaFMKCGzQibNEcTt+sxb+ZIKf
	qct09AvVDtyORIjXmqP1K44PnWUyn/LBpGbH5Q8ElhwrgNx/Xfrvq1xb5q1iO88fSb+qAdvkvp4cc
	f7tNswd04N0GLu/Tj64OSeZ16FX6oqJLV81ENRffqceWv0k2ZCMho8jSaYAWNpOxR14k=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v89v6-0008OA-As;
	Mon, 13 Oct 2025 04:12:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+429c5dd7f65f3a144064+8086+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1v89v2-0008O0-FP for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:12:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MI0vHZhtJ1k9QEFLwQMKaIXmWsfgPbtlLeEIYHV3Ov4=; b=OGQnI9FAWwAi5/K8qTEHnQS4mQ
 2M16Hy/eK4wc4qnV+I+hjodPPaWeeHE4U7XjziYPaJNCsjhIHoxOFirxTi8zYFb/D+8xphQK1lULc
 cHj+6HyyPwaJqN5onaY6tFBtsW08Na7HFPq7/+FHwY9K8NK2Vf2nfu9U09EFtkvtpgjM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MI0vHZhtJ1k9QEFLwQMKaIXmWsfgPbtlLeEIYHV3Ov4=; b=ZFRNVhcT2nFH0mRiJ2dNVzxxns
 6dJrMNhGhd3H2k78URjf42qIyeYSJXP2xSnz7ZTvR07sGzaduHEmHOy60pOci9cRuEglwslh/E9Ze
 pjyq2Ydfl+R1Ey2oJgREWD4qWvVUsi1W78cnXBffrrV+7z6DjhsKvFFibb17TfCxEGxw=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v89v1-0005vs-AV for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=MI0vHZhtJ1k9QEFLwQMKaIXmWsfgPbtlLeEIYHV3Ov4=; b=RKhYVfWS0EBFO0UM80v8hmdBKl
 ns8TwelL0DUYkZ0VBMaapzQENCJI2kHbtG+DjRkof8h4NJr9WSA+QCcmAbPr4mW3dmx+vueab6G2H
 mZV5g3rbo1tspoHLUCyUmxiOI3NVvsu7oJY9FPQZm3tYn4vR2Rt8Gb5HWYGSth0+5KyYIYr3Pf4vg
 kI590qr0NMriRzuTJBxKtLPxkdVlw4VRgV6PiFIZiHP1sDutUc4V273JL5CylFxsOdPl4/CcihQB+
 X1GxQSe6FFBfj+RQXF2KvIufIejJtnkYax8vKi7lf1gplPU8+tYEuw3LoX38gWSLgkhBt0pJWRKPs
 PP4yuq1A==;
Received: from [220.85.59.196] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1v88mR-0000000C8QN-3xsq; Mon, 13 Oct 2025 02:59:24 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Mon, 13 Oct 2025 11:58:04 +0900
Message-ID: <20251013025808.4111128-10-hch@lst.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251013025808.4111128-1-hch@lst.de>
References: <20251013025808.4111128-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use filemap_fdatawrite_range and
 filemap_fdatawrite_range_kick
 instead of the low-level __filemap_fdatawrite_range that requires the caller
 to know the internals of the writeback_control structure and [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1v89v1-0005vs-AV
Subject: [Jfs-discussion] [PATCH 09/10] mm: remove __filemap_fdatawrite_range
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

Use filemap_fdatawrite_range and filemap_fdatawrite_range_kick instead
of the low-level __filemap_fdatawrite_range that requires the caller
to know the internals of the writeback_control structure and remove
__filemap_fdatawrite_range now that it is trivial and only two callers
would be left.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/fs-writeback.c       |  6 +++---
 fs/sync.c               | 11 +++++------
 include/linux/pagemap.h |  2 --
 mm/fadvise.c            |  3 +--
 mm/filemap.c            | 25 +++++++------------------
 5 files changed, 16 insertions(+), 31 deletions(-)

diff --git a/fs/fs-writeback.c b/fs/fs-writeback.c
index 2b35e80037fe..8b002ab18103 100644
--- a/fs/fs-writeback.c
+++ b/fs/fs-writeback.c
@@ -807,9 +807,9 @@ static void wbc_attach_and_unlock_inode(struct writeback_control *wbc,
  * @wbc: writeback_control of interest
  * @inode: target inode
  *
- * This function is to be used by __filemap_fdatawrite_range(), which is an
- * alternative entry point into writeback code, and first ensures @inode is
- * associated with a bdi_writeback and attaches it to @wbc.
+ * This function is to be used by filemap_fdatawrite*(), which write back data
+ * from arbitrary threads instead of the main writeback thread to ensure @inode
+ * is associated with a bdi_writeback and attached to @wbc.
  */
 void wbc_attach_fdatawrite_inode(struct writeback_control *wbc,
 		struct inode *inode)
diff --git a/fs/sync.c b/fs/sync.c
index 2955cd4c77a3..6d8b04e04c3c 100644
--- a/fs/sync.c
+++ b/fs/sync.c
@@ -280,14 +280,13 @@ int sync_file_range(struct file *file, loff_t offset, loff_t nbytes,
 	}
 
 	if (flags & SYNC_FILE_RANGE_WRITE) {
-		int sync_mode = WB_SYNC_NONE;
-
 		if ((flags & SYNC_FILE_RANGE_WRITE_AND_WAIT) ==
 			     SYNC_FILE_RANGE_WRITE_AND_WAIT)
-			sync_mode = WB_SYNC_ALL;
-
-		ret = __filemap_fdatawrite_range(mapping, offset, endbyte,
-						 sync_mode);
+			ret = filemap_fdatawrite_range(mapping, offset,
+					endbyte);
+		else
+			ret = filemap_fdatawrite_range_kick(mapping, offset,
+					endbyte);
 		if (ret < 0)
 			goto out;
 	}
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 742ba1dd3990..664f23f2330a 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -55,8 +55,6 @@ static inline int filemap_fdatawait(struct address_space *mapping)
 bool filemap_range_has_page(struct address_space *, loff_t lstart, loff_t lend);
 int filemap_write_and_wait_range(struct address_space *mapping,
 		loff_t lstart, loff_t lend);
-int __filemap_fdatawrite_range(struct address_space *mapping,
-		loff_t start, loff_t end, int sync_mode);
 int filemap_fdatawrite_range(struct address_space *mapping,
 		loff_t start, loff_t end);
 int filemap_check_errors(struct address_space *mapping);
diff --git a/mm/fadvise.c b/mm/fadvise.c
index 588fe76c5a14..f1be619f0e58 100644
--- a/mm/fadvise.c
+++ b/mm/fadvise.c
@@ -111,8 +111,7 @@ int generic_fadvise(struct file *file, loff_t offset, loff_t len, int advice)
 		spin_unlock(&file->f_lock);
 		break;
 	case POSIX_FADV_DONTNEED:
-		__filemap_fdatawrite_range(mapping, offset, endbyte,
-					   WB_SYNC_NONE);
+		filemap_fdatawrite_range_kick(mapping, offset, endbyte);
 
 		/*
 		 * First and last FULL page! Partial pages are deliberately
diff --git a/mm/filemap.c b/mm/filemap.c
index 26b692dbf091..ec19ed127de2 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -392,32 +392,23 @@ static int __filemap_fdatawrite(struct address_space *mapping, loff_t start,
 }
 
 /**
- * __filemap_fdatawrite_range - start writeback on mapping dirty pages in range
+ * filemap_fdatawrite_range - start writeback on mapping dirty pages in range
  * @mapping:	address space structure to write
  * @start:	offset in bytes where the range starts
  * @end:	offset in bytes where the range ends (inclusive)
- * @sync_mode:	enable synchronous operation
  *
  * Start writeback against all of a mapping's dirty pages that lie
  * within the byte offsets <start, end> inclusive.
  *
- * If sync_mode is WB_SYNC_ALL then this is a "data integrity" operation, as
- * opposed to a regular memory cleansing writeback.  The difference between
- * these two operations is that if a dirty page/buffer is encountered, it must
- * be waited upon, and not just skipped over.
+ * This is a data integrity operation that waits upon dirty or in writeback
+ * pages.
  *
  * Return: %0 on success, negative error code otherwise.
  */
-int __filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
-				loff_t end, int sync_mode)
-{
-	return __filemap_fdatawrite(mapping, start, end, sync_mode, NULL);
-}
-
 int filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
 		loff_t end)
 {
-	return __filemap_fdatawrite_range(mapping, start, end, WB_SYNC_ALL);
+	return __filemap_fdatawrite(mapping, start, end, WB_SYNC_ALL, NULL);
 }
 EXPORT_SYMBOL(filemap_fdatawrite_range);
 
@@ -441,7 +432,7 @@ EXPORT_SYMBOL(filemap_fdatawrite);
 int filemap_fdatawrite_range_kick(struct address_space *mapping, loff_t start,
 				  loff_t end)
 {
-	return __filemap_fdatawrite_range(mapping, start, end, WB_SYNC_NONE);
+	return __filemap_fdatawrite(mapping, start, end, WB_SYNC_NONE, NULL);
 }
 EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
 
@@ -689,8 +680,7 @@ int filemap_write_and_wait_range(struct address_space *mapping,
 		return 0;
 
 	if (mapping_needs_writeback(mapping)) {
-		err = __filemap_fdatawrite_range(mapping, lstart, lend,
-						 WB_SYNC_ALL);
+		err = filemap_fdatawrite_range(mapping, lstart, lend);
 		/*
 		 * Even if the above returned error, the pages may be
 		 * written partially (e.g. -ENOSPC), so we wait for it.
@@ -792,8 +782,7 @@ int file_write_and_wait_range(struct file *file, loff_t lstart, loff_t lend)
 		return 0;
 
 	if (mapping_needs_writeback(mapping)) {
-		err = __filemap_fdatawrite_range(mapping, lstart, lend,
-						 WB_SYNC_ALL);
+		err = filemap_fdatawrite_range(mapping, lstart, lend);
 		/* See comment of filemap_write_and_wait() */
 		if (err != -EIO)
 			__filemap_fdatawait_range(mapping, lstart, lend);
-- 
2.47.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
