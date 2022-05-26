Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71823535400
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 May 2022 21:30:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuJB1-0005tR-Mk; Thu, 26 May 2022 19:29:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuJAy-0005st-Ek
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x+uWnv9eHPm+ndPDGZ6NXBV5ZLTnCGexee2oZ9N0PrI=; b=eWG4CcN4qvQhrJLYaQHSldakHf
 iKuPj6PaJal1LvgH4oz2iL4N6d3R3r4zjgXPHyO4XMX7kAAlg3rvmJiZW14qKM74LIBfyITN9e2J5
 fFFhPZ+KA7uABEGvIfW9XVhJ+WooZkbnJx5fPzhro316uiiHh0j5Q6zwmfbZFZSmhKVk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x+uWnv9eHPm+ndPDGZ6NXBV5ZLTnCGexee2oZ9N0PrI=; b=baToXTLzy3+3FFtoaNQp8oS9id
 EuZL3ytVJwW63eUGF/yzHkCUQNp1/DO4BIxHq3ISFwo6OzQiktSv4XklkxlMmpyg23apIewGwrn4s
 rQ6j8yg43P7e5hQXu3j6iNImomGC0bgZlSJ1WnIsLUqWz3Y8Vc58s9Fd/cdl/2+5BTzA=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuJAr-002uYW-4f
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=x+uWnv9eHPm+ndPDGZ6NXBV5ZLTnCGexee2oZ9N0PrI=; b=QNr+rf7eqh/VvcxHMxywyXQix2
 duGO7r5M5FEMCOy1SknG1fFeKYkML5/kTWw1/rGOQyzJ228MMiOE241BvT5tj1fdp9jfqoRlUnA1H
 omWibmX2FUg+JBRCXLN/1wNa89AUM48ST82lX8BEA81R9PDo3NrDIPRJjDI5lAZM7NRHDqPGmP4Im
 WKq+cL97wCbZefSGfH7VPNNwSvDC3IviDakdf/8MG88RD1LSMhjKD7nGnoS1wFBhoJOBlRM8FL3hY
 NmiMEosyUkrfu0rnVym/I8tJM7UbzaGMesiGdPxZeC+0MBdixSVfgTvvqaR018FxOJ7fo0tNBorbK
 EWvt1CIA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuJAa-001UuE-Il; Thu, 26 May 2022 19:29:16 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net,
	linux-fsdevel@vger.kernel.org
Date: Thu, 26 May 2022 20:29:03 +0100
Message-Id: <20220526192910.357055-3-willy@infradead.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220526192910.357055-1-willy@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Turn jfs_get_block() into a wrapper around jfs_iomap_begin().
 This fixes a latent bug where JFS was not setting b_size when it encountered
 a hole. At least mpage_readahead() does not look at b_size wh [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1nuJAr-002uYW-4f
Subject: [Jfs-discussion] [RFC PATCH 2/9] jfs: Add jfs_iomap_begin()
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

Turn jfs_get_block() into a wrapper around jfs_iomap_begin().  This fixes
a latent bug where JFS was not setting b_size when it encountered a hole.
At least mpage_readahead() does not look at b_size when the buffer is
unmapped, but iomap will care whether iomap->length is set correctly,
and so we may as well set b_size correctly as well.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/inode.c | 67 +++++++++++++++++++++++++++++++++++++-------------
 1 file changed, 50 insertions(+), 17 deletions(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index a5dd7e53754a..1a5bdaf35e9b 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/fs.h>
+#include <linux/iomap.h>
 #include <linux/mpage.h>
 #include <linux/buffer_head.h>
 #include <linux/pagemap.h>
@@ -196,15 +197,21 @@ void jfs_dirty_inode(struct inode *inode, int flags)
 	set_cflag(COMMIT_Dirty, inode);
 }
 
-int jfs_get_block(struct inode *ip, sector_t lblock,
-		  struct buffer_head *bh_result, int create)
+int jfs_iomap_begin(struct inode *ip, loff_t pos, loff_t length,
+		unsigned flags, struct iomap *iomap, struct iomap *srcmap)
 {
-	s64 lblock64 = lblock;
+	s64 lblock64 = pos >> ip->i_blkbits;
+	int create = flags & IOMAP_WRITE;
 	int rc = 0;
 	xad_t xad;
 	s64 xaddr;
 	int xflag;
-	s32 xlen = bh_result->b_size >> ip->i_blkbits;
+	s32 xlen;
+
+	xlen = DIV_ROUND_UP(pos + length - (lblock64 << ip->i_blkbits),
+			    i_blocksize(ip));
+	if (xlen < 0)
+		xlen = INT_MAX;
 
 	/*
 	 * Take appropriate lock on inode
@@ -214,8 +221,8 @@ int jfs_get_block(struct inode *ip, sector_t lblock,
 	else
 		IREAD_LOCK(ip, RDWRLOCK_NORMAL);
 
-	if (((lblock64 << ip->i_sb->s_blocksize_bits) < ip->i_size) &&
-	    (!xtLookup(ip, lblock64, xlen, &xflag, &xaddr, &xlen, 0)) &&
+	if (pos < ip->i_size &&
+	    !xtLookup(ip, lblock64, xlen, &xflag, &xaddr, &xlen, 0) &&
 	    xaddr) {
 		if (xflag & XAD_NOTRECORDED) {
 			if (!create)
@@ -238,13 +245,11 @@ int jfs_get_block(struct inode *ip, sector_t lblock,
 #endif				/* _JFS_4K */
 			rc = extRecord(ip, &xad);
 			if (rc)
-				goto unlock;
-			set_buffer_new(bh_result);
+				goto err;
+			iomap->flags |= IOMAP_F_NEW;
 		}
 
-		map_bh(bh_result, ip->i_sb, xaddr);
-		bh_result->b_size = xlen << ip->i_blkbits;
-		goto unlock;
+		goto map;
 	}
 	if (!create)
 		goto unlock;
@@ -254,14 +259,14 @@ int jfs_get_block(struct inode *ip, sector_t lblock,
 	 */
 #ifdef _JFS_4K
 	if ((rc = extHint(ip, lblock64 << ip->i_sb->s_blocksize_bits, &xad)))
-		goto unlock;
+		goto err;
 	rc = extAlloc(ip, xlen, lblock64, &xad, false);
 	if (rc)
-		goto unlock;
+		goto err;
 
-	set_buffer_new(bh_result);
-	map_bh(bh_result, ip->i_sb, addressXAD(&xad));
-	bh_result->b_size = lengthXAD(&xad) << ip->i_blkbits;
+	xaddr = addressXAD(&xad);
+	xlen = lengthXAD(&xad);
+	iomap->flags |= IOMAP_F_NEW;
 
 #else				/* _JFS_4K */
 	/*
@@ -271,7 +276,14 @@ int jfs_get_block(struct inode *ip, sector_t lblock,
 	BUG();
 #endif				/* _JFS_4K */
 
-      unlock:
+map:
+	iomap->addr = xaddr << ip->i_blkbits;
+	iomap->bdev = ip->i_sb->s_bdev;
+	iomap->type = IOMAP_MAPPED;
+unlock:
+	iomap->offset = lblock64 << ip->i_blkbits;
+	iomap->length = xlen << ip->i_blkbits;
+err:
 	/*
 	 * Release lock on inode
 	 */
@@ -282,6 +294,27 @@ int jfs_get_block(struct inode *ip, sector_t lblock,
 	return rc;
 }
 
+int jfs_get_block(struct inode *ip, sector_t lblock,
+		  struct buffer_head *bh_result, int create)
+{
+	struct iomap iomap = { };
+	int ret;
+
+	ret = jfs_iomap_begin(ip, lblock << ip->i_blkbits, bh_result->b_size,
+			create ? IOMAP_WRITE : 0, &iomap, NULL);
+	if (ret)
+		return ret;
+
+	bh_result->b_size = iomap.length;
+	if (iomap.type == IOMAP_HOLE)
+		return 0;
+
+	map_bh(bh_result, ip->i_sb, iomap.addr >> ip->i_blkbits);
+	if (iomap.flags & IOMAP_F_NEW)
+		set_buffer_new(bh_result);
+	return 0;
+}
+
 static int jfs_writepage(struct page *page, struct writeback_control *wbc)
 {
 	return block_write_full_page(page, jfs_get_block, wbc);
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
