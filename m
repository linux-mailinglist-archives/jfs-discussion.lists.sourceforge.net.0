Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 654985353F9
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 May 2022 21:30:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuJAz-0002pY-CD; Thu, 26 May 2022 19:29:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuJAx-0002ov-Pn
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tw57enbumz2FqWsQdoAMcuYQfaSu50lDHkdYyxdjVvc=; b=KoMJoewC8XSAOs8EKC/YPwPNoj
 uUT2V7FZFrYj6CdtWSWffRNKKEYnnFTB6lyvqYS7GHj+rsCKwFcwr8LXq8Iv1eIO665pg9NSpb1nb
 B/UwQteMsW5zgvsMeEgxWYZM1BFbcMbWz7A9lEXxG7MTqWZJbFpe9X3hfQ3TMZp+3f84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tw57enbumz2FqWsQdoAMcuYQfaSu50lDHkdYyxdjVvc=; b=TIdEPGwmt2jUZ2NPcgj78zwHU0
 BW5ZRz8icS6hpvAbWAvM7vA/Pww0qcEqzbEr81kUU1lpI+DvgLhYkfu28u8U1coTpNJcAfAQAj8Eo
 E5bSZolWUGkuLfb1vJ8c4UtQjVCi6a67R5flDpVwW8yqKRrzLRhVpEUwTdRwfJQwPcww=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuJAr-0000tE-Ep
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Tw57enbumz2FqWsQdoAMcuYQfaSu50lDHkdYyxdjVvc=; b=mZkwFP1W1F/ieBE7sEmtWtJ3C0
 w0nJNDnxeKp2HzI7Cv/e9gK23H5h4BVxnlb6+CRgTp8RKSjE6qF88TJURwhiGIBYn01Rg18XZOjn8
 HOb/n3k/1+r/wfjIyVfrvnX/HIJmihq/ptYU2hsIQyn7TReD7H54NP42N4nVcsPexzrIX5j8hh10u
 gaXgWBiO3gKgx6w2439KRi/2wZQ8hwh54cEidhA0Yec11/1oZit/P7aBhfYBRkhwqWzdCwMU2KdHF
 3rQ9drTfCA+T4VdntjuGv2gUml9uGFdEa7fBc4XPx3uvV6fkvXophgxNlDGuuFu6s4VVOl2TUQfZ8
 yl9L8JpQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuJAb-001Uur-C0; Thu, 26 May 2022 19:29:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net,
	linux-fsdevel@vger.kernel.org
Date: Thu, 26 May 2022 20:29:09 +0100
Message-Id: <20220526192910.357055-9-willy@infradead.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220526192910.357055-1-willy@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Remove call to jfs_get_block() and use the page cache
 directly
 instead of wrapping it in a buffer_head. Signed-off-by: Matthew Wilcox
 (Oracle)
 <willy@infradead.org> --- fs/jfs/super.c | 71 ++++++++++++++++++++++++++
 1 file changed, 37 insertions(+), 34 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1nuJAr-0000tE-Ep
Subject: [Jfs-discussion] [RFC PATCH 8/9] jfs: Write quota through the page
 cache
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

Remove call to jfs_get_block() and use the page cache directly instead
of wrapping it in a buffer_head.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/super.c | 71 ++++++++++++++++++++++++++------------------------
 1 file changed, 37 insertions(+), 34 deletions(-)

diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index 1e7d117b555d..151c62e2a08f 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -14,7 +14,6 @@
 #include <linux/moduleparam.h>
 #include <linux/kthread.h>
 #include <linux/posix_acl.h>
-#include <linux/buffer_head.h>
 #include <linux/exportfs.h>
 #include <linux/crc32.h>
 #include <linux/slab.h>
@@ -760,54 +759,58 @@ static ssize_t jfs_quota_read(struct super_block *sb, int type, char *data,
 
 /* Write to quotafile */
 static ssize_t jfs_quota_write(struct super_block *sb, int type,
-			       const char *data, size_t len, loff_t off)
+			       const char *data, size_t len, loff_t pos)
 {
 	struct inode *inode = sb_dqopt(sb)->files[type];
-	sector_t blk = off >> sb->s_blocksize_bits;
+	struct address_space *mapping = inode->i_mapping;
 	int err = 0;
-	int offset = off & (sb->s_blocksize - 1);
-	int tocopy;
 	size_t towrite = len;
-	struct buffer_head tmp_bh;
-	struct buffer_head *bh;
 
 	inode_lock(inode);
 	while (towrite > 0) {
-		tocopy = sb->s_blocksize - offset < towrite ?
-				sb->s_blocksize - offset : towrite;
-
-		tmp_bh.b_state = 0;
-		tmp_bh.b_size = i_blocksize(inode);
-		err = jfs_get_block(inode, blk, &tmp_bh, 1);
-		if (err)
-			goto out;
-		if (offset || tocopy != sb->s_blocksize)
-			bh = sb_bread(sb, tmp_bh.b_blocknr);
-		else
-			bh = sb_getblk(sb, tmp_bh.b_blocknr);
-		if (!bh) {
-			err = -EIO;
-			goto out;
+		pgoff_t index = pos / PAGE_SIZE;
+		size_t tocopy = min(PAGE_SIZE - offset_in_page(pos), towrite);
+		struct folio *folio;
+		void *dst;
+
+		if (offset_in_page(pos) ||
+		    (towrite < PAGE_SIZE && (pos + towrite < inode->i_size))) {
+			folio = read_mapping_folio(mapping, index, NULL);
+			if (IS_ERR(folio)) {
+				err = PTR_ERR(folio);
+				break;
+			}
+		} else {
+			folio = __filemap_get_folio(mapping, index,
+					FGP_CREAT|FGP_WRITE, GFP_KERNEL);
+			if (!folio) {
+				err = -ENOMEM;
+				break;
+			}
 		}
-		lock_buffer(bh);
-		memcpy(bh->b_data+offset, data, tocopy);
-		flush_dcache_page(bh->b_page);
-		set_buffer_uptodate(bh);
-		mark_buffer_dirty(bh);
-		unlock_buffer(bh);
-		brelse(bh);
-		offset = 0;
+
+		folio_lock(folio);
+		dst = kmap_local_folio(folio, offset_in_folio(folio, pos));
+		memcpy(dst, data, tocopy);
 		towrite -= tocopy;
 		data += tocopy;
-		blk++;
+		pos += tocopy;
+		if (!towrite && pos >= inode->i_size)
+			memset(dst + tocopy, 0, PAGE_SIZE - tocopy);
+		kunmap_local(dst);
+
+		folio_mark_uptodate(folio);
+		folio_mark_dirty(folio);
+		folio_unlock(folio);
+		folio_put(folio);
 	}
-out:
+
 	if (len == towrite) {
 		inode_unlock(inode);
 		return err;
 	}
-	if (inode->i_size < off+len-towrite)
-		i_size_write(inode, off+len-towrite);
+	if (inode->i_size < pos + len - towrite)
+		i_size_write(inode, pos + len - towrite);
 	inode->i_mtime = inode->i_ctime = current_time(inode);
 	mark_inode_dirty(inode);
 	inode_unlock(inode);
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
