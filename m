Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 692D45353FA
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 May 2022 21:30:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuJAx-0002ol-9q; Thu, 26 May 2022 19:29:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuJAw-0002oa-JW
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3UQWZ9VfT8moFh2go/5TMbp2l8w+ZhP6H2uGEylZkEk=; b=cbx1N3jcPKzchOKbiocCk011Px
 xIfKhU2luXFMTI0v5o7kznfuxXwLcrJQXi+qpqHXjdHEvpZkrkrx4+seNVUSSPN7Fx1kitppdg8BT
 Ie6mmXP7Iw8SZYFqLG7+H750WBv0Wgon9db6aSise9rORoVDo4M99q1E4nItUWlxcviw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3UQWZ9VfT8moFh2go/5TMbp2l8w+ZhP6H2uGEylZkEk=; b=AjPBAyBASChGsJ+8Kxk8g8W+78
 d1HGLEjPxsMrYgQu2Re/CYKb8ShL/WmomBUhn8SAKZnDxMsuwzYCjbMLdSXA7mLNNTRBUFPah06Kz
 xImgJfvd+/iLBG1EyBjjKR9Zsa97sN32GPkkRLJxnvq8aPq6o2wrQZRx0anW1/47MNvs=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuJAs-002uYh-1f
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=3UQWZ9VfT8moFh2go/5TMbp2l8w+ZhP6H2uGEylZkEk=; b=bSFA31ccRlijtlE++03QxP6je9
 wXRJOuZIufj6EsXkDexsbmsidWHkik8E493SR1XJkhOnUTIlJtqbTLmrka9dDWad23eaznjtzjxHL
 R6aun0fJu8VyK/Q589YQNQrL/NHD58ri+RrDLniKRam1IR7Odqhj7gsRhmGyYpCEkDyocLEYDQG2W
 ofy01H1D6DFVecCd4uAOwZvdTMq4nV3KTrLE+u2N2aRuCddlS+03nZZPEzrOutEAT0OjlIy4jffyJ
 chVqJCWGRRMeHHmAz1MKzrQpd8t2rIAKlCBJ/+j/BxuWrgKKBeHM2u85vY8vwCBB8uG4nbV33bXDf
 xndhEQ+g==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuJAb-001Uux-Gc; Thu, 26 May 2022 19:29:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net,
	linux-fsdevel@vger.kernel.org
Date: Thu, 26 May 2022 20:29:10 +0100
Message-Id: <20220526192910.357055-10-willy@infradead.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220526192910.357055-1-willy@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use the iomap helper functions and remove jfs_get_block().
 Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> ---
 fs/jfs/inode.c
 | 70 ++++++++ fs/jfs/jfs_inode.h | 1 - fs/jfs/jfs_logmgr.c | 1 -
 fs/jfs/jfs_metapage. [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1nuJAs-002uYh-1f
Subject: [Jfs-discussion] [RFC PATCH 9/9] jfs: Convert buffered IO paths to
 iomap
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
Cc: Christoph Hellwig <hch@infradead.org>,
 "Darrick J . Wong" <djwong@kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Use the iomap helper functions and remove jfs_get_block().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/inode.c        | 70 ++++++++-----------------------------------
 fs/jfs/jfs_inode.h    |  1 -
 fs/jfs/jfs_logmgr.c   |  1 -
 fs/jfs/jfs_metapage.c |  1 -
 4 files changed, 12 insertions(+), 61 deletions(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 19c091d9c20e..f1d4c308e047 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -7,7 +7,6 @@
 #include <linux/fs.h>
 #include <linux/iomap.h>
 #include <linux/mpage.h>
-#include <linux/buffer_head.h>
 #include <linux/pagemap.h>
 #include <linux/quotaops.h>
 #include <linux/uio.h>
@@ -298,69 +297,25 @@ const struct iomap_ops jfs_iomap_ops = {
 	.iomap_begin =  jfs_iomap_begin,
 };
 
-int jfs_get_block(struct inode *ip, sector_t lblock,
-		  struct buffer_head *bh_result, int create)
-{
-	struct iomap iomap = { };
-	int ret;
-
-	ret = jfs_iomap_begin(ip, lblock << ip->i_blkbits, bh_result->b_size,
-			create ? IOMAP_WRITE : 0, &iomap, NULL);
-	if (ret)
-		return ret;
-
-	bh_result->b_size = iomap.length;
-	if (iomap.type == IOMAP_HOLE)
-		return 0;
-
-	map_bh(bh_result, ip->i_sb, iomap.addr >> ip->i_blkbits);
-	if (iomap.flags & IOMAP_F_NEW)
-		set_buffer_new(bh_result);
-	return 0;
-}
-
-static int jfs_writepage(struct page *page, struct writeback_control *wbc)
-{
-	return block_write_full_page(page, jfs_get_block, wbc);
-}
+static const struct iomap_writeback_ops jfs_writeback_ops = {
+};
 
 static int jfs_writepages(struct address_space *mapping,
 			struct writeback_control *wbc)
 {
-	return mpage_writepages(mapping, wbc, jfs_get_block);
+	struct iomap_writepage_ctx wpc = { };
+
+	return iomap_writepages(mapping, wbc, &wpc, &jfs_writeback_ops);
 }
 
 static int jfs_read_folio(struct file *file, struct folio *folio)
 {
-	return mpage_read_folio(folio, jfs_get_block);
+	return iomap_read_folio(folio, &jfs_iomap_ops);
 }
 
 static void jfs_readahead(struct readahead_control *rac)
 {
-	mpage_readahead(rac, jfs_get_block);
-}
-
-static void jfs_write_failed(struct address_space *mapping, loff_t to)
-{
-	struct inode *inode = mapping->host;
-
-	if (to > inode->i_size) {
-		truncate_pagecache(inode, inode->i_size);
-		jfs_truncate(inode);
-	}
-}
-
-static int jfs_write_begin(struct file *file, struct address_space *mapping,
-				loff_t pos, unsigned len,
-				struct page **pagep, void **fsdata)
-{
-	int ret;
-
-	ret = nobh_write_begin(mapping, pos, len, pagep, fsdata, jfs_get_block);
-	if (unlikely(ret))
-		jfs_write_failed(mapping, pos + len);
-
-	return ret;
+	iomap_readahead(rac, &jfs_iomap_ops);
 }
 
 static sector_t jfs_bmap(struct address_space *mapping, sector_t block)
@@ -369,14 +324,11 @@ static sector_t jfs_bmap(struct address_space *mapping, sector_t block)
 }
 
 const struct address_space_operations jfs_aops = {
-	.dirty_folio	= block_dirty_folio,
-	.invalidate_folio = block_invalidate_folio,
+	.dirty_folio	= filemap_dirty_folio,
+	.invalidate_folio = iomap_invalidate_folio,
 	.read_folio	= jfs_read_folio,
 	.readahead	= jfs_readahead,
-	.writepage	= jfs_writepage,
 	.writepages	= jfs_writepages,
-	.write_begin	= jfs_write_begin,
-	.write_end	= nobh_write_end,
 	.bmap		= jfs_bmap,
 	.direct_IO	= noop_direct_IO,
 };
@@ -427,9 +379,11 @@ void jfs_truncate_nolock(struct inode *ip, loff_t length)
 
 void jfs_truncate(struct inode *ip)
 {
+	bool did_zero;
+
 	jfs_info("jfs_truncate: size = 0x%lx", (ulong) ip->i_size);
 
-	nobh_truncate_page(ip->i_mapping, ip->i_size, jfs_get_block);
+	iomap_truncate_page(ip, i_size_read(ip), &did_zero, &jfs_iomap_ops);
 
 	IWRITE_LOCK(ip, RDWRLOCK_NORMAL);
 	jfs_truncate_nolock(ip, ip->i_size);
diff --git a/fs/jfs/jfs_inode.h b/fs/jfs/jfs_inode.h
index afd12de3c341..b1d3816a1a5c 100644
--- a/fs/jfs/jfs_inode.h
+++ b/fs/jfs/jfs_inode.h
@@ -27,7 +27,6 @@ extern struct dentry *jfs_fh_to_dentry(struct super_block *sb, struct fid *fid,
 extern struct dentry *jfs_fh_to_parent(struct super_block *sb, struct fid *fid,
 	int fh_len, int fh_type);
 extern void jfs_set_inode_flags(struct inode *);
-extern int jfs_get_block(struct inode *, sector_t, struct buffer_head *, int);
 extern int jfs_setattr(struct user_namespace *, struct dentry *, struct iattr *);
 
 extern const struct iomap_ops jfs_iomap_ops;
diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 997c81fcea34..466105331735 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -51,7 +51,6 @@
 #include <linux/interrupt.h>
 #include <linux/completion.h>
 #include <linux/kthread.h>
-#include <linux/buffer_head.h>		/* for sync_blockdev() */
 #include <linux/bio.h>
 #include <linux/freezer.h>
 #include <linux/export.h>
diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 5b4f0cd8d276..dd9b855092fd 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -10,7 +10,6 @@
 #include <linux/bio.h>
 #include <linux/slab.h>
 #include <linux/init.h>
-#include <linux/buffer_head.h>
 #include <linux/mempool.h>
 #include <linux/seq_file.h>
 #include <linux/writeback.h>
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
