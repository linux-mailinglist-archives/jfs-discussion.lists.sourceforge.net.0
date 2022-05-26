Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAD65353FB
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 May 2022 21:30:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuJB1-0005tb-QO; Thu, 26 May 2022 19:29:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuJAy-0005su-Ep
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wSd+lbnlA77fblK457Iy6DahZ3A7HH6ZJjKfKRHg/4w=; b=LUhqJgDJG21wzTqv6NU8EtR7vB
 tBc11XEN6vQzAj0ltbmrT+8vjXHBBsVfVhjrQdtAG9fQRtanzejYNatfvWC5VuhGJXUcTHSIfXXiB
 fUNT1nzO8/9T/Z6sBOnAcqRwTz3Xy1Ti/woB1fSMO1lwg5ZdHDXjdG4lGdj6altMWFh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wSd+lbnlA77fblK457Iy6DahZ3A7HH6ZJjKfKRHg/4w=; b=kE84u4mz3YIGjJU3mPAF60OCWM
 ixlAvgLucMUEud6ItXgDDgIP7FwCxe2z5CpGH/Xp3wVVtEhHR6BVRHE79rNpZyYcp/xbbQRMyyO3z
 cdKFd/dOCDB/Y1VszRRRWQecWu/8FomR1ikS/E9JpSAgAlpKncQ3GYUtM5m7Gf4bbRik=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuJAr-002uYX-7s
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=wSd+lbnlA77fblK457Iy6DahZ3A7HH6ZJjKfKRHg/4w=; b=IMklrt3JsXu5P8PYMJ2VHj6iow
 2KCDqmdQX6lM7B64t6uefOpxbY40sh00H/XfxWj9ogi2Buh0umpyO8SZgftp8IPprO1hh8d1WtNEK
 vWuX6IVQVpbnWHYVoQ2le2F4baEn3XXgCJ5+/AY/NpMOUm1r0w0QsuZCUqeT65tQz1leeYbSNOY4l
 8BUWeTydaJsOnxGugC7jAcipHfMtx03CON/0xDwWXiYHHjbPC3DZoOB3Eqse34uWFmUJhY1ybKdxg
 GXO5JiCmXYpcCjNzcDyDSixYDWeqI+w37Rr6/OTCJHLBM15HhG+7KCBx041/dqn5PmuQyLgVjzrPF
 lF1HAJEw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuJAa-001UuN-Mt; Thu, 26 May 2022 19:29:16 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net,
	linux-fsdevel@vger.kernel.org
Date: Thu, 26 May 2022 20:29:04 +0100
Message-Id: <20220526192910.357055-4-willy@infradead.org>
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
 Content preview: Use the new iomap support to handle direct IO reads.
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/jfs/file.c | 20
 ++++++++++++++++++--
 fs/jfs/inode.c | 4 ++++ fs/jfs/jfs_inode.h | 1 + 3 files changed,
 23 insertions(+), 2 deletions [...] 
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
X-Headers-End: 1nuJAr-002uYX-7s
Subject: [Jfs-discussion] [RFC PATCH 3/9] jfs: Convert direct_IO read
 support to use iomap
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

Use the new iomap support to handle direct IO reads.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/file.c      | 20 ++++++++++++++++++--
 fs/jfs/inode.c     |  4 ++++
 fs/jfs/jfs_inode.h |  1 +
 3 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/file.c b/fs/jfs/file.c
index 1d732fd223d4..0d074a9e0f77 100644
--- a/fs/jfs/file.c
+++ b/fs/jfs/file.c
@@ -4,10 +4,12 @@
  *   Portions Copyright (C) Christoph Hellwig, 2001-2002
  */
 
-#include <linux/mm.h>
 #include <linux/fs.h>
+#include <linux/iomap.h>
+#include <linux/mm.h>
 #include <linux/posix_acl.h>
 #include <linux/quotaops.h>
+#include <linux/uio.h>
 #include "jfs_incore.h"
 #include "jfs_inode.h"
 #include "jfs_dmap.h"
@@ -70,6 +72,20 @@ static int jfs_open(struct inode *inode, struct file *file)
 
 	return 0;
 }
+
+static ssize_t jfs_read_iter(struct kiocb *iocb, struct iov_iter *to)
+{
+	if (!iov_iter_count(to))
+		return 0; /* skip atime */
+
+	if (iocb->ki_flags & IOCB_DIRECT) {
+		file_accessed(iocb->ki_filp);
+		return iomap_dio_rw(iocb, to, &jfs_iomap_ops, NULL, 0, NULL, 0);
+	}
+
+	return generic_file_read_iter(iocb, to);
+}
+
 static int jfs_release(struct inode *inode, struct file *file)
 {
 	struct jfs_inode_info *ji = JFS_IP(inode);
@@ -141,7 +157,7 @@ const struct inode_operations jfs_file_inode_operations = {
 const struct file_operations jfs_file_operations = {
 	.open		= jfs_open,
 	.llseek		= generic_file_llseek,
-	.read_iter	= generic_file_read_iter,
+	.read_iter	= jfs_read_iter,
 	.write_iter	= generic_file_write_iter,
 	.mmap		= generic_file_mmap,
 	.splice_read	= generic_file_splice_read,
diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 1a5bdaf35e9b..22e8a5612fdc 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -294,6 +294,10 @@ int jfs_iomap_begin(struct inode *ip, loff_t pos, loff_t length,
 	return rc;
 }
 
+const struct iomap_ops jfs_iomap_ops = {
+	.iomap_begin =  jfs_iomap_begin,
+};
+
 int jfs_get_block(struct inode *ip, sector_t lblock,
 		  struct buffer_head *bh_result, int create)
 {
diff --git a/fs/jfs/jfs_inode.h b/fs/jfs/jfs_inode.h
index 7de961a81862..afd12de3c341 100644
--- a/fs/jfs/jfs_inode.h
+++ b/fs/jfs/jfs_inode.h
@@ -30,6 +30,7 @@ extern void jfs_set_inode_flags(struct inode *);
 extern int jfs_get_block(struct inode *, sector_t, struct buffer_head *, int);
 extern int jfs_setattr(struct user_namespace *, struct dentry *, struct iattr *);
 
+extern const struct iomap_ops jfs_iomap_ops;
 extern const struct address_space_operations jfs_aops;
 extern const struct inode_operations jfs_dir_inode_operations;
 extern const struct file_operations jfs_dir_operations;
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
