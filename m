Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EE39D206A
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Nov 2024 07:46:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tDI0X-0007dr-PP;
	Tue, 19 Nov 2024 06:46:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmantipov@yandex.ru>) id 1tDI0V-0007dW-2h
 for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Nov 2024 06:46:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MY49H5tl2my7uKCTDXg3I4UKxQHbPZ7VGZxHJNFqPHw=; b=c8bH9dTUGbFViLd53tP8YXtzZn
 b3VobGaKVmzXzqKE9IyIMl9246EAxcj6WymXmKg65swFutEP/T8LyDftX9KCDl+0Ex2kH4bHHxN5Y
 QiDYpc+j9d5RaUoix6V37lA9EYyKx6fr5zzJe/uLzRvAsNT2Ot6EpBsKwyFyjjaXBHpU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MY49H5tl2my7uKCTDXg3I4UKxQHbPZ7VGZxHJNFqPHw=; b=W
 J+ZzagThgwrPjVlPuGYDabkkqS01uNzRN6Qt5ESW4S5VZwq72unSr0L7GbgpxMW8a4zwIzBSXyiJq
 HuAqcSitfFI9isexOOLgLGN+FtW7BLCJY5qIW1xoJuObJ04B9ZLo+AwIo+FF0U11d4MxRLr1lLI46
 M3g15qMdavkbgeAs=;
Received: from forward100b.mail.yandex.net ([178.154.239.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tDI0Q-0004jZ-C4 for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Nov 2024 06:46:38 +0000
Received: from mail-nwsmtp-smtp-production-main-44.sas.yp-c.yandex.net
 (mail-nwsmtp-smtp-production-main-44.sas.yp-c.yandex.net
 [IPv6:2a02:6b8:c08:df8e:0:640:17d3:0])
 by forward100b.mail.yandex.net (Yandex) with ESMTPS id E0EDD60AFE;
 Tue, 19 Nov 2024 09:46:21 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-44.sas.yp-c.yandex.net
 (smtp/Yandex) with ESMTPSA id KkKE7YnOrGk0-TvD7Tar7; 
 Tue, 19 Nov 2024 09:46:21 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1731998781; bh=MY49H5tl2my7uKCTDXg3I4UKxQHbPZ7VGZxHJNFqPHw=;
 h=Message-ID:Date:Cc:Subject:To:From;
 b=qBbjajtLksroh4RFwDJHgnOpzgKYxeSQNHZAU/u4BPpNvPB5fmSxMCN0E9X0OzoY2
 nQlHd9StYnoJpVCyV04nguepzVZEnNLzR2QnMbRvsNmhJLA+7zMjA52EdZHmm165gG
 Givc2Sp34xjpZobNeIK2DjQEqSrLcTqYw/RhZm60=
Authentication-Results: mail-nwsmtp-smtp-production-main-44.sas.yp-c.yandex.net;
 dkim=pass header.i=@yandex.ru
To: Dave Kleikamp <shaggy@kernel.org>
Date: Tue, 19 Nov 2024 09:46:18 +0300
Message-ID: <20241119064618.150005-1-dmantipov@yandex.ru>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzbot has reported the following crash: ERROR: (device
 loop0):
 txBegin: read-only filesystem ERROR: (device loop0): remounting filesystem
 as read-only ERROR: (device loop0): dbFindCtl: Corrupt dmapctl page
 jfs_create: dtInsert returned -EIO [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.154.239.147 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [178.154.239.147 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [178.154.239.147 listed in bl.score.senderscore.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmantipov[at]yandex.ru]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tDI0Q-0004jZ-C4
Subject: [Jfs-discussion] [PATCH] jfs: add extra superblock validation
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
From: Dmitry Antipov via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dmitry Antipov <dmantipov@yandex.ru>
Cc: linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Dmitry Antipov <dmantipov@yandex.ru>,
 syzbot+5f0d7af0e45fae10edd1@syzkaller.appspotmail.com,
 lvc-project@linuxtesting.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzbot has reported the following crash:

ERROR: (device loop0): txBegin: read-only filesystem
ERROR: (device loop0): remounting filesystem as read-only
ERROR: (device loop0): dbFindCtl: Corrupt dmapctl page
jfs_create: dtInsert returned -EIO
ERROR: (device (efault)): txAbort:
Oops: general protection fault, probably for non-canonical address <...>
KASAN: null-ptr-deref in range [0x0000000000000050-0x0000000000000057]
...
Call Trace:
 <TASK>
 ? die_addr.cold+0x8/0xd
 ? exc_general_protection+0x147/0x240
 ? asm_exc_general_protection+0x26/0x30
 ? vprintk+0x86/0xa0
 ? jfs_error+0x10a/0x2a0
 ? dtInsert+0x72f/0xb10
 ? __pfx_jfs_error+0x10/0x10
 ? vprintk+0x86/0xa0
 ? _printk+0xd0/0x108
 ? __pfx__printk+0x10/0x10
 ? txAbort+0x332/0x540
 txAbort+0x382/0x540
 jfs_create+0x48e/0xb00
 ? __pfx_jfs_create+0x10/0x10
 ? generic_permission+0x230/0x690
 ? bpf_lsm_inode_permission+0x9/0x10
 ? security_inode_permission+0xbf/0x250
 ? inode_permission+0xba/0x5d0
 vfs_create+0x4e6/0x7a0
 do_mknodat+0x2f7/0x5d0
 ? __pfx_do_mknodat+0x10/0x10
 ? getname_flags.part.0+0x1c5/0x550
 __x64_sys_mknod+0x118/0x170
 do_syscall_64+0xc7/0x250
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
...
 </TASK>

This happens during the mid-air condition when superblock is artificially
damaged before remount issued after superblock touch via 'fspick()' and
'fsconfig()'. So add basic superblock validation in 'readSuper()' and
do not go further if 'updateSuper()' returns non-zero error code.

Reported-by: syzbot+5f0d7af0e45fae10edd1@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=5f0d7af0e45fae10edd1
Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Dmitry Antipov <dmantipov@yandex.ru>
---
 fs/jfs/jfs_mount.c  | 28 +++++++++++++++++-----------
 fs/jfs/jfs_umount.c | 22 ++++++++++++----------
 2 files changed, 29 insertions(+), 21 deletions(-)

diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
index 98f9a432c336..c0a51defc5b7 100644
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -303,12 +303,6 @@ static int chkSuper(struct super_block *sb)
 	/*
 	 * validate superblock
 	 */
-	/* validate fs signature */
-	if (strncmp(j_sb->s_magic, JFS_MAGIC, 4) ||
-	    le32_to_cpu(j_sb->s_version) > JFS_VERSION) {
-		rc = -EINVAL;
-		goto out;
-	}
 
 	bsize = le32_to_cpu(j_sb->s_bsize);
 	if (bsize != PSIZE) {
@@ -449,6 +443,18 @@ int updateSuper(struct super_block *sb, uint state)
 	return 0;
 }
 
+static int validateSuper(struct buffer_head *bh)
+{
+	struct jfs_superblock *j_sb;
+
+	if (!bh)
+		return -EIO;
+
+	j_sb = (struct jfs_superblock *)bh->b_data;
+
+	return (strncmp(j_sb->s_magic, JFS_MAGIC, 4) == 0 &&
+		le32_to_cpu(j_sb->s_version) <= JFS_VERSION) ? 0 : -EINVAL;
+}
 
 /*
  *	readSuper()
@@ -457,17 +463,17 @@ int updateSuper(struct super_block *sb, uint state)
  */
 int readSuper(struct super_block *sb, struct buffer_head **bpp)
 {
-	/* read in primary superblock */
+	/* read in and validate primary superblock */
 	*bpp = sb_bread(sb, SUPER1_OFF >> sb->s_blocksize_bits);
-	if (*bpp)
+	if (!validateSuper(*bpp))
 		return 0;
 
-	/* read in secondary/replicated superblock */
+	/* read in and validate secondary/replicated superblock */
 	*bpp = sb_bread(sb, SUPER2_OFF >> sb->s_blocksize_bits);
-	if (*bpp)
+	if (!validateSuper(*bpp))
 		return 0;
 
-	return -EIO;
+	return -EINVAL;
 }
 
 
diff --git a/fs/jfs/jfs_umount.c b/fs/jfs/jfs_umount.c
index 8ec43f53f686..5f01f767bc0a 100644
--- a/fs/jfs/jfs_umount.c
+++ b/fs/jfs/jfs_umount.c
@@ -104,14 +104,15 @@ int jfs_umount(struct super_block *sb)
 	 * list (to signify skip logredo()).
 	 */
 	if (log) {		/* log = NULL if read-only mount */
-		updateSuper(sb, FM_CLEAN);
-
-		/*
-		 * close log:
-		 *
-		 * remove file system from log active file system list.
-		 */
-		rc = lmLogClose(sb);
+		rc = updateSuper(sb, FM_CLEAN);
+		if (!rc) {
+			/*
+			 * close log:
+			 *
+			 * remove file system from log active file system list.
+			 */
+			rc = lmLogClose(sb);
+		}
 	}
 	jfs_info("UnMount JFS Complete: rc = %d", rc);
 	return rc;
@@ -122,6 +123,7 @@ int jfs_umount_rw(struct super_block *sb)
 {
 	struct jfs_sb_info *sbi = JFS_SBI(sb);
 	struct jfs_log *log = sbi->log;
+	int rc;
 
 	if (!log)
 		return 0;
@@ -147,7 +149,7 @@ int jfs_umount_rw(struct super_block *sb)
 	 */
 	filemap_write_and_wait(sbi->direct_inode->i_mapping);
 
-	updateSuper(sb, FM_CLEAN);
+	rc = updateSuper(sb, FM_CLEAN);
 
-	return lmLogClose(sb);
+	return rc ? rc : lmLogClose(sb);
 }
-- 
2.47.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
