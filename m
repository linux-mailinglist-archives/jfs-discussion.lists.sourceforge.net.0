Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ACA547F0A
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Jun 2022 07:38:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1o0clr-0001ZC-W2; Mon, 13 Jun 2022 05:37:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+6ef1cfbcd5439e194ca7+6868+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1o0clq-0001Yw-V8
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 05:37:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CLA3sGNXlgyLMg7MIwf9+GfWzvmPKDOQaSo1VOl4s4U=; b=h9gfjls1jmCRn2TA25B5wm9XHI
 6pzO7WRU61O34pB7pj1fO5tpNdUQOhrdxC7dVZbS9fOK72CPWBlLEO4y8Chz5HlBa1xdhSUayk2vR
 52+/KXJRq3LLk6q9t5uXFEcE99Ve0YLzaHQebWJEz8cJqn5SWfChwYRbEHm0APhBuOvA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CLA3sGNXlgyLMg7MIwf9+GfWzvmPKDOQaSo1VOl4s4U=; b=DM5mf9vir6sv/dcN/0vesfyIoz
 L/aFpTaHQ6FMBDJV8Oy09gx49FQ1NoJ09WBoS5fO68Y6VuulCPZEPgDx0rDcChzgMxprSAFMyD0Ew
 GWUKiWxLp/5H4iN2scBpArY2Kr8tOYgyogiz1NQWQyRkM2FeNgNQGvPVzLZD0lmbq+IA=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0cld-00026d-SU
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 05:37:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=CLA3sGNXlgyLMg7MIwf9+GfWzvmPKDOQaSo1VOl4s4U=; b=MWZf8oilMV43pwthuLM897u65h
 +P85CVIc8ITZBoxAbou+fHoRYkagriXP+CF+d5/luNWeVSmDbrY1Wp7ze+tBpgSB/k2cq4+y7xT8Y
 2pT4k+z5PxasjDW2zxrZSkPXNXvbOpK1JAJ9WccTarRyAiUDlyRUjq+FzGWph+ijT2trEtAuOO4ks
 aO6eI+pco7ypXRiWzKtSZ0otecYXwQUjfJ0j0vTiAS74OTY/b2wADN1Li4fV39mRjtBf7I/JsaNKk
 KDn4AHnrfigeC/su6parwBpX8+VHdRJjTxc8RrJKgVKAOehpvuw6gwfj66uZOZsZoiehQ/W/zT6HK
 IBdwXy4A==;
Received: from [2001:4bb8:180:36f6:f125:c38b:d3d6:ae6c] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1o0clQ-001V4T-6M; Mon, 13 Jun 2022 05:37:24 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Date: Mon, 13 Jun 2022 07:37:11 +0200
Message-Id: <20220613053715.2394147-3-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220613053715.2394147-1-hch@lst.de>
References: <20220613053715.2394147-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The nobh mode is an obscure feature to save lowlevel for
 large
 memory 32-bit configurations while trading for much slower performance and
 has been long obsolete. Remove it. Signed-off-by: Christoph Hellwig
 <hch@lst.de>
 Reviewed-by: Jan Kara <jack@suse.cz> --- Documentation/filesystems/ext2.rst
 | 2 -- fs/ext2/ext2.h | 1 - fs/ext2/inode.c | 51 ++ [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0cld-00026d-SU
Subject: [Jfs-discussion] [PATCH 2/6] ext2: remove nobh support
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
Cc: jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev,
 Jan Kara <jack@suse.cz>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The nobh mode is an obscure feature to save lowlevel for large memory
32-bit configurations while trading for much slower performance and
has been long obsolete.  Remove it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Jan Kara <jack@suse.cz>
---
 Documentation/filesystems/ext2.rst |  2 --
 fs/ext2/ext2.h                     |  1 -
 fs/ext2/inode.c                    | 51 ++----------------------------
 fs/ext2/namei.c                    | 10 ++----
 fs/ext2/super.c                    |  6 ++--
 5 files changed, 7 insertions(+), 63 deletions(-)

diff --git a/Documentation/filesystems/ext2.rst b/Documentation/filesystems/ext2.rst
index 154101cf0e4f5..92aae683e16a7 100644
--- a/Documentation/filesystems/ext2.rst
+++ b/Documentation/filesystems/ext2.rst
@@ -59,8 +59,6 @@ acl				Enable POSIX Access Control Lists support
 				(requires CONFIG_EXT2_FS_POSIX_ACL).
 noacl				Don't support POSIX ACLs.
 
-nobh				Do not attach buffer_heads to file pagecache.
-
 quota, usrquota			Enable user disk quota support
 				(requires CONFIG_QUOTA).
 
diff --git a/fs/ext2/ext2.h b/fs/ext2/ext2.h
index d4f306aa5aceb..28de11a22e5f6 100644
--- a/fs/ext2/ext2.h
+++ b/fs/ext2/ext2.h
@@ -795,7 +795,6 @@ extern const struct file_operations ext2_file_operations;
 /* inode.c */
 extern void ext2_set_file_ops(struct inode *inode);
 extern const struct address_space_operations ext2_aops;
-extern const struct address_space_operations ext2_nobh_aops;
 extern const struct iomap_ops ext2_iomap_ops;
 
 /* namei.c */
diff --git a/fs/ext2/inode.c b/fs/ext2/inode.c
index 58a9d061f17d1..c5229033baf05 100644
--- a/fs/ext2/inode.c
+++ b/fs/ext2/inode.c
@@ -908,25 +908,6 @@ static int ext2_write_end(struct file *file, struct address_space *mapping,
 	return ret;
 }
 
-static int
-ext2_nobh_write_begin(struct file *file, struct address_space *mapping,
-		loff_t pos, unsigned len, struct page **pagep, void **fsdata)
-{
-	int ret;
-
-	ret = nobh_write_begin(mapping, pos, len, pagep, fsdata,
-			       ext2_get_block);
-	if (ret < 0)
-		ext2_write_failed(mapping, pos + len);
-	return ret;
-}
-
-static int ext2_nobh_writepage(struct page *page,
-			struct writeback_control *wbc)
-{
-	return nobh_writepage(page, ext2_get_block, wbc);
-}
-
 static sector_t ext2_bmap(struct address_space *mapping, sector_t block)
 {
 	return generic_block_bmap(mapping,block,ext2_get_block);
@@ -978,21 +959,6 @@ const struct address_space_operations ext2_aops = {
 	.error_remove_page	= generic_error_remove_page,
 };
 
-const struct address_space_operations ext2_nobh_aops = {
-	.dirty_folio		= block_dirty_folio,
-	.invalidate_folio	= block_invalidate_folio,
-	.read_folio		= ext2_read_folio,
-	.readahead		= ext2_readahead,
-	.writepage		= ext2_nobh_writepage,
-	.write_begin		= ext2_nobh_write_begin,
-	.write_end		= nobh_write_end,
-	.bmap			= ext2_bmap,
-	.direct_IO		= ext2_direct_IO,
-	.writepages		= ext2_writepages,
-	.migrate_folio		= buffer_migrate_folio,
-	.error_remove_page	= generic_error_remove_page,
-};
-
 static const struct address_space_operations ext2_dax_aops = {
 	.writepages		= ext2_dax_writepages,
 	.direct_IO		= noop_direct_IO,
@@ -1298,13 +1264,10 @@ static int ext2_setsize(struct inode *inode, loff_t newsize)
 
 	inode_dio_wait(inode);
 
-	if (IS_DAX(inode)) {
+	if (IS_DAX(inode))
 		error = dax_zero_range(inode, newsize,
 				       PAGE_ALIGN(newsize) - newsize, NULL,
 				       &ext2_iomap_ops);
-	} else if (test_opt(inode->i_sb, NOBH))
-		error = nobh_truncate_page(inode->i_mapping,
-				newsize, ext2_get_block);
 	else
 		error = block_truncate_page(inode->i_mapping,
 				newsize, ext2_get_block);
@@ -1396,8 +1359,6 @@ void ext2_set_file_ops(struct inode *inode)
 	inode->i_fop = &ext2_file_operations;
 	if (IS_DAX(inode))
 		inode->i_mapping->a_ops = &ext2_dax_aops;
-	else if (test_opt(inode->i_sb, NOBH))
-		inode->i_mapping->a_ops = &ext2_nobh_aops;
 	else
 		inode->i_mapping->a_ops = &ext2_aops;
 }
@@ -1497,10 +1458,7 @@ struct inode *ext2_iget (struct super_block *sb, unsigned long ino)
 	} else if (S_ISDIR(inode->i_mode)) {
 		inode->i_op = &ext2_dir_inode_operations;
 		inode->i_fop = &ext2_dir_operations;
-		if (test_opt(inode->i_sb, NOBH))
-			inode->i_mapping->a_ops = &ext2_nobh_aops;
-		else
-			inode->i_mapping->a_ops = &ext2_aops;
+		inode->i_mapping->a_ops = &ext2_aops;
 	} else if (S_ISLNK(inode->i_mode)) {
 		if (ext2_inode_is_fast_symlink(inode)) {
 			inode->i_link = (char *)ei->i_data;
@@ -1510,10 +1468,7 @@ struct inode *ext2_iget (struct super_block *sb, unsigned long ino)
 		} else {
 			inode->i_op = &ext2_symlink_inode_operations;
 			inode_nohighmem(inode);
-			if (test_opt(inode->i_sb, NOBH))
-				inode->i_mapping->a_ops = &ext2_nobh_aops;
-			else
-				inode->i_mapping->a_ops = &ext2_aops;
+			inode->i_mapping->a_ops = &ext2_aops;
 		}
 	} else {
 		inode->i_op = &ext2_special_inode_operations;
diff --git a/fs/ext2/namei.c b/fs/ext2/namei.c
index 5f6b7560eb3f3..5fd9a22d2b70c 100644
--- a/fs/ext2/namei.c
+++ b/fs/ext2/namei.c
@@ -178,10 +178,7 @@ static int ext2_symlink (struct user_namespace * mnt_userns, struct inode * dir,
 		/* slow symlink */
 		inode->i_op = &ext2_symlink_inode_operations;
 		inode_nohighmem(inode);
-		if (test_opt(inode->i_sb, NOBH))
-			inode->i_mapping->a_ops = &ext2_nobh_aops;
-		else
-			inode->i_mapping->a_ops = &ext2_aops;
+		inode->i_mapping->a_ops = &ext2_aops;
 		err = page_symlink(inode, symname, l);
 		if (err)
 			goto out_fail;
@@ -247,10 +244,7 @@ static int ext2_mkdir(struct user_namespace * mnt_userns,
 
 	inode->i_op = &ext2_dir_inode_operations;
 	inode->i_fop = &ext2_dir_operations;
-	if (test_opt(inode->i_sb, NOBH))
-		inode->i_mapping->a_ops = &ext2_nobh_aops;
-	else
-		inode->i_mapping->a_ops = &ext2_aops;
+	inode->i_mapping->a_ops = &ext2_aops;
 
 	inode_inc_link_count(inode);
 
diff --git a/fs/ext2/super.c b/fs/ext2/super.c
index f6a19f6d9f6d5..a1c1263c07ab3 100644
--- a/fs/ext2/super.c
+++ b/fs/ext2/super.c
@@ -296,9 +296,6 @@ static int ext2_show_options(struct seq_file *seq, struct dentry *root)
 		seq_puts(seq, ",noacl");
 #endif
 
-	if (test_opt(sb, NOBH))
-		seq_puts(seq, ",nobh");
-
 	if (test_opt(sb, USRQUOTA))
 		seq_puts(seq, ",usrquota");
 
@@ -551,7 +548,8 @@ static int parse_options(char *options, struct super_block *sb,
 			clear_opt (opts->s_mount_opt, OLDALLOC);
 			break;
 		case Opt_nobh:
-			set_opt (opts->s_mount_opt, NOBH);
+			ext2_msg(sb, KERN_INFO,
+				"nobh option not supported");
 			break;
 #ifdef CONFIG_EXT2_FS_XATTR
 		case Opt_user_xattr:
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
