Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2624C9180C
	for <lists+jfs-discussion@lfdr.de>; Sun, 18 Aug 2019 19:00:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hzOX3-0008Cs-LD; Sun, 18 Aug 2019 16:59:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <deepa.kernel@gmail.com>) id 1hzOX2-0008Cg-PK
 for jfs-discussion@lists.sourceforge.net; Sun, 18 Aug 2019 16:59:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hcDJouypjtfHakqyyqAP9XhBSp/6phxQjTvkkHXeS8Q=; b=V2PLbj1xuXr3P3lVYEtxo/drcM
 SmC6uRVrkhbXL90/6gSSSZmUPqVA49zp2Gi++WzbimKgYUbZfSo+g5zNcdIk0C9kt+0D57tkc4KtO
 hrVaGiAd5VZD/PtrbCgMxQOXDLyMNFtfNLzusecIGVWgsaQCf4j2cJa6IDach1B65rN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hcDJouypjtfHakqyyqAP9XhBSp/6phxQjTvkkHXeS8Q=; b=gM/+BqSp+fjRF1xM4K2SS7cSzi
 au8gC7YvbBH76hYAZK40hT8cDBDI/mJ9ti8cbeZFR23q8xyM6QYUVm0LSCSSaWvcpPodM2nK4uM8y
 uEUMhhnBXwL4GB+cx4g3JT1/3fxchgnzFExmQAuGlgp+g9rWMrtIqaU8hO341U3tX9lY=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hzOX0-00ApxQ-MX
 for jfs-discussion@lists.sourceforge.net; Sun, 18 Aug 2019 16:59:52 +0000
Received: by mail-pg1-f194.google.com with SMTP id w10so5508187pgj.7
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 18 Aug 2019 09:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hcDJouypjtfHakqyyqAP9XhBSp/6phxQjTvkkHXeS8Q=;
 b=ho/0ZAQ1HuBLAksSZugEnf6GEEUUwx2c7MSMuYwFEq19+6+nW6wgHJuJCYWYim53+c
 u7rSUABUkgvn2R22ED0deEqUbRE+FNspV4WzfNzRamxvI1UX6V/AjBvRoeUZyeJPkmaI
 HkQbe0hIHTJtii+Aib1Q5rGf7k7V+7yIp5pGqQbrX2B+d1apq92LrCGLJT1YlG1OBaf2
 Ih4gR4TLnn9SHFarM/5nVQzc54Agvl6UAxCVm4Ubx92SRAMD9FzmUggN0T6G7/8orJSk
 QgFDS3I4GLJpdyY5bFXh8qvaRIMJ4YKEmO3fbsPu4vzz2U97Qz9+l1ommUAS6hCW0Wzd
 /+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hcDJouypjtfHakqyyqAP9XhBSp/6phxQjTvkkHXeS8Q=;
 b=YjBTQZDClxWcmBT20GpaLZZraqw6ps9Z89qzwGqMR6Xazf0DgC0PwtH+T+h9G08A9r
 /ROB3xuUMlWl6G1O1QBqR9ij3paTXPgZ34PHdnm5yeJDBIlV52cMSDrMGF6HMTNfO7JL
 i6orNbK+AEW97s9dbqDcjeLtn3yRTV7i3ID/nC60Hvequ67sZDQRFv9PJJUAKOWToKI2
 df4tDiRC2MFnjI8pTnqWMGbKxEnrBNL5xfuhL6U2JGDbRAg/iQmh4pHTfqucavqCEoA9
 4Yu+/dnobFhi5qfJa1RTtYhut6LJrvyPY1WKFtbTiiiJJL3Jdk2tn25PfOUJpXZgpHfx
 b6Rw==
X-Gm-Message-State: APjAAAXVMLVFPzTOEeP9T7kKsbasM/QfQ4o6Wzx6P6CZtPolV9ZkRRvg
 sEthMy6WrQjoUbvjvaDHcSw=
X-Google-Smtp-Source: APXvYqxbzXhppEsQPWOFxWOWxonZW01Tf6ODgmsFYoPy528tWmObH2OS0FTzK14N9zOjR2ueP6B+qw==
X-Received: by 2002:a17:90a:5288:: with SMTP id
 w8mr17181277pjh.61.1566147584902; 
 Sun, 18 Aug 2019 09:59:44 -0700 (PDT)
Received: from deepa-ubuntu.lan (c-98-234-52-230.hsd1.ca.comcast.net.
 [98.234.52.230])
 by smtp.gmail.com with ESMTPSA id b136sm15732831pfb.73.2019.08.18.09.59.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 09:59:44 -0700 (PDT)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: viro@zeniv.linux.org.uk,
	linux-kernel@vger.kernel.org
Date: Sun, 18 Aug 2019 09:58:03 -0700
Message-Id: <20190818165817.32634-7-deepa.kernel@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190818165817.32634-1-deepa.kernel@gmail.com>
References: <20190818165817.32634-1-deepa.kernel@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squashfs.org.uk]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (deepa.kernel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hzOX0-00ApxQ-MX
Subject: [Jfs-discussion] [PATCH v8 06/20] fs: Fill in max and min
 timestamps in superblock
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, al@alarsen.net,
 linux-mtd@lists.infradead.org, darrick.wong@oracle.com, y2038@lists.linaro.org,
 richard@nod.at, codalist@coda.cs.cmu.edu, hch@infradead.org, coda@cs.cmu.edu,
 linux-ext4@vger.kernel.org, salah.triki@gmail.com, dushistov@mail.ru,
 arnd@arndb.de, reiserfs-devel@vger.kernel.org, aivazian.tigran@gmail.com,
 jaharkes@cs.cmu.edu, luisbg@kernel.org, nico@fluxnic.net,
 linux-xfs@vger.kernel.org, jack@suse.com, linux-fsdevel@vger.kernel.org,
 phillip@squashfs.org.uk, dwmw2@infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Fill in the appropriate limits to avoid inconsistencies
in the vfs cached inode times when timestamps are
outside the permitted range.

Even though some filesystems are read-only, fill in the
timestamps to reflect the on-disk representation.

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
Reviewed-by: Darrick J. Wong <darrick.wong@oracle.com>
Cc: aivazian.tigran@gmail.com
Cc: al@alarsen.net
Cc: coda@cs.cmu.edu
Cc: darrick.wong@oracle.com
Cc: dushistov@mail.ru
Cc: dwmw2@infradead.org
Cc: hch@infradead.org
Cc: jack@suse.com
Cc: jaharkes@cs.cmu.edu
Cc: luisbg@kernel.org
Cc: nico@fluxnic.net
Cc: phillip@squashfs.org.uk
Cc: richard@nod.at
Cc: salah.triki@gmail.com
Cc: shaggy@kernel.org
Cc: linux-xfs@vger.kernel.org
Cc: codalist@coda.cs.cmu.edu
Cc: linux-ext4@vger.kernel.org
Cc: linux-mtd@lists.infradead.org
Cc: jfs-discussion@lists.sourceforge.net
Cc: reiserfs-devel@vger.kernel.org
---
 fs/befs/linuxvfs.c       | 2 ++
 fs/bfs/inode.c           | 2 ++
 fs/coda/inode.c          | 3 +++
 fs/cramfs/inode.c        | 2 ++
 fs/efs/super.c           | 2 ++
 fs/ext2/super.c          | 2 ++
 fs/freevxfs/vxfs_super.c | 2 ++
 fs/jffs2/fs.c            | 3 +++
 fs/jfs/super.c           | 2 ++
 fs/minix/inode.c         | 2 ++
 fs/qnx4/inode.c          | 2 ++
 fs/qnx6/inode.c          | 2 ++
 fs/reiserfs/super.c      | 3 +++
 fs/romfs/super.c         | 2 ++
 fs/squashfs/super.c      | 2 ++
 fs/ufs/super.c           | 7 +++++++
 fs/xfs/xfs_super.c       | 2 ++
 17 files changed, 42 insertions(+)

diff --git a/fs/befs/linuxvfs.c b/fs/befs/linuxvfs.c
index 462d096ff3e9..64cdf4d8e424 100644
--- a/fs/befs/linuxvfs.c
+++ b/fs/befs/linuxvfs.c
@@ -893,6 +893,8 @@ befs_fill_super(struct super_block *sb, void *data, int silent)
 	sb_set_blocksize(sb, (ulong) befs_sb->block_size);
 	sb->s_op = &befs_sops;
 	sb->s_export_op = &befs_export_operations;
+	sb->s_time_min = 0;
+	sb->s_time_max = 0xffffffffffffll;
 	root = befs_iget(sb, iaddr2blockno(sb, &(befs_sb->root_dir)));
 	if (IS_ERR(root)) {
 		ret = PTR_ERR(root);
diff --git a/fs/bfs/inode.c b/fs/bfs/inode.c
index 5e97bed073d7..f8ce1368218b 100644
--- a/fs/bfs/inode.c
+++ b/fs/bfs/inode.c
@@ -324,6 +324,8 @@ static int bfs_fill_super(struct super_block *s, void *data, int silent)
 		return -ENOMEM;
 	mutex_init(&info->bfs_lock);
 	s->s_fs_info = info;
+	s->s_time_min = 0;
+	s->s_time_max = U32_MAX;
 
 	sb_set_blocksize(s, BFS_BSIZE);
 
diff --git a/fs/coda/inode.c b/fs/coda/inode.c
index 59a9a29ade0a..e07b5f2ceccc 100644
--- a/fs/coda/inode.c
+++ b/fs/coda/inode.c
@@ -223,6 +223,9 @@ static int coda_fill_super(struct super_block *sb, struct fs_context *fc)
 	sb->s_magic = CODA_SUPER_MAGIC;
 	sb->s_op = &coda_super_operations;
 	sb->s_d_op = &coda_dentry_operations;
+	sb->s_time_gran = 1;
+	sb->s_time_min = S64_MIN;
+	sb->s_time_max = S64_MAX;
 
 	error = super_setup_bdi(sb);
 	if (error)
diff --git a/fs/cramfs/inode.c b/fs/cramfs/inode.c
index 2ee89a353d64..c304ae8357ef 100644
--- a/fs/cramfs/inode.c
+++ b/fs/cramfs/inode.c
@@ -599,6 +599,8 @@ static int cramfs_finalize_super(struct super_block *sb,
 
 	/* Set it all up.. */
 	sb->s_flags |= SB_RDONLY;
+	sb->s_time_min = 0;
+	sb->s_time_max = 0;
 	sb->s_op = &cramfs_ops;
 	root = get_cramfs_inode(sb, cramfs_root, 0);
 	if (IS_ERR(root))
diff --git a/fs/efs/super.c b/fs/efs/super.c
index 867fc24dee20..4a6ebff2af76 100644
--- a/fs/efs/super.c
+++ b/fs/efs/super.c
@@ -257,6 +257,8 @@ static int efs_fill_super(struct super_block *s, void *d, int silent)
 	if (!sb)
 		return -ENOMEM;
 	s->s_fs_info = sb;
+	s->s_time_min = 0;
+	s->s_time_max = U32_MAX;
  
 	s->s_magic		= EFS_SUPER_MAGIC;
 	if (!sb_set_blocksize(s, EFS_BLOCKSIZE)) {
diff --git a/fs/ext2/super.c b/fs/ext2/super.c
index 44eb6e7eb492..baa36c6fb71e 100644
--- a/fs/ext2/super.c
+++ b/fs/ext2/super.c
@@ -1002,6 +1002,8 @@ static int ext2_fill_super(struct super_block *sb, void *data, int silent)
 
 	sb->s_maxbytes = ext2_max_size(sb->s_blocksize_bits);
 	sb->s_max_links = EXT2_LINK_MAX;
+	sb->s_time_min = S32_MIN;
+	sb->s_time_max = S32_MAX;
 
 	if (le32_to_cpu(es->s_rev_level) == EXT2_GOOD_OLD_REV) {
 		sbi->s_inode_size = EXT2_GOOD_OLD_INODE_SIZE;
diff --git a/fs/freevxfs/vxfs_super.c b/fs/freevxfs/vxfs_super.c
index a89f68c3cbed..578a5062706e 100644
--- a/fs/freevxfs/vxfs_super.c
+++ b/fs/freevxfs/vxfs_super.c
@@ -229,6 +229,8 @@ static int vxfs_fill_super(struct super_block *sbp, void *dp, int silent)
 
 	sbp->s_op = &vxfs_super_ops;
 	sbp->s_fs_info = infp;
+	sbp->s_time_min = 0;
+	sbp->s_time_max = U32_MAX;
 
 	if (!vxfs_try_sb_magic(sbp, silent, 1,
 			(__force __fs32)cpu_to_le32(VXFS_SUPER_MAGIC))) {
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 25736676a456..05fe6cf5f1ac 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -591,6 +591,9 @@ int jffs2_do_fill_super(struct super_block *sb, struct fs_context *fc)
 	sb->s_blocksize = PAGE_SIZE;
 	sb->s_blocksize_bits = PAGE_SHIFT;
 	sb->s_magic = JFFS2_SUPER_MAGIC;
+	sb->s_time_min = 0;
+	sb->s_time_max = U32_MAX;
+
 	if (!sb_rdonly(sb))
 		jffs2_start_garbage_collect_thread(c);
 	return 0;
diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index f4e10cb9f734..b2dc4d1f9dcc 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -503,6 +503,8 @@ static int jfs_fill_super(struct super_block *sb, void *data, int silent)
 
 	sb->s_fs_info = sbi;
 	sb->s_max_links = JFS_LINK_MAX;
+	sb->s_time_min = 0;
+	sb->s_time_max = U32_MAX;
 	sbi->sb = sb;
 	sbi->uid = INVALID_UID;
 	sbi->gid = INVALID_GID;
diff --git a/fs/minix/inode.c b/fs/minix/inode.c
index f96073f25432..7cb5fd38eb14 100644
--- a/fs/minix/inode.c
+++ b/fs/minix/inode.c
@@ -277,6 +277,8 @@ static int minix_fill_super(struct super_block *s, void *data, int silent)
 
 	/* set up enough so that it can read an inode */
 	s->s_op = &minix_sops;
+	s->s_time_min = 0;
+	s->s_time_max = U32_MAX;
 	root_inode = minix_iget(s, MINIX_ROOT_INO);
 	if (IS_ERR(root_inode)) {
 		ret = PTR_ERR(root_inode);
diff --git a/fs/qnx4/inode.c b/fs/qnx4/inode.c
index 922d083bbc7c..e8da1cde87b9 100644
--- a/fs/qnx4/inode.c
+++ b/fs/qnx4/inode.c
@@ -201,6 +201,8 @@ static int qnx4_fill_super(struct super_block *s, void *data, int silent)
 	s->s_op = &qnx4_sops;
 	s->s_magic = QNX4_SUPER_MAGIC;
 	s->s_flags |= SB_RDONLY;	/* Yup, read-only yet */
+	s->s_time_min = 0;
+	s->s_time_max = U32_MAX;
 
 	/* Check the superblock signature. Since the qnx4 code is
 	   dangerous, we should leave as quickly as possible
diff --git a/fs/qnx6/inode.c b/fs/qnx6/inode.c
index 0f8b0ff1ba43..345db56c98fd 100644
--- a/fs/qnx6/inode.c
+++ b/fs/qnx6/inode.c
@@ -429,6 +429,8 @@ static int qnx6_fill_super(struct super_block *s, void *data, int silent)
 	s->s_op = &qnx6_sops;
 	s->s_magic = QNX6_SUPER_MAGIC;
 	s->s_flags |= SB_RDONLY;        /* Yup, read-only yet */
+	s->s_time_min = 0;
+	s->s_time_max = U32_MAX;
 
 	/* ease the later tree level calculations */
 	sbi = QNX6_SB(s);
diff --git a/fs/reiserfs/super.c b/fs/reiserfs/super.c
index ab028ea0e561..d69b4ac0ae2f 100644
--- a/fs/reiserfs/super.c
+++ b/fs/reiserfs/super.c
@@ -1976,6 +1976,9 @@ static int reiserfs_fill_super(struct super_block *s, void *data, int silent)
 		goto error_unlocked;
 	}
 
+	s->s_time_min = 0;
+	s->s_time_max = U32_MAX;
+
 	rs = SB_DISK_SUPER_BLOCK(s);
 	/*
 	 * Let's do basic sanity check to verify that underlying device is not
diff --git a/fs/romfs/super.c b/fs/romfs/super.c
index 4636f867b9e8..338ac8521e65 100644
--- a/fs/romfs/super.c
+++ b/fs/romfs/super.c
@@ -477,6 +477,8 @@ static int romfs_fill_super(struct super_block *sb, struct fs_context *fc)
 	sb->s_maxbytes = 0xFFFFFFFF;
 	sb->s_magic = ROMFS_MAGIC;
 	sb->s_flags |= SB_RDONLY | SB_NOATIME;
+	sb->s_time_min = 0;
+	sb->s_time_max = 0;
 	sb->s_op = &romfs_super_ops;
 
 #ifdef CONFIG_ROMFS_ON_MTD
diff --git a/fs/squashfs/super.c b/fs/squashfs/super.c
index 0311171af72d..e2d6566371ec 100644
--- a/fs/squashfs/super.c
+++ b/fs/squashfs/super.c
@@ -186,6 +186,8 @@ static int squashfs_fill_super(struct super_block *sb, struct fs_context *fc)
 		(u64) le64_to_cpu(sblk->id_table_start));
 
 	sb->s_maxbytes = MAX_LFS_FILESIZE;
+	sb->s_time_min = 0;
+	sb->s_time_max = U32_MAX;
 	sb->s_flags |= SB_RDONLY;
 	sb->s_op = &squashfs_super_ops;
 
diff --git a/fs/ufs/super.c b/fs/ufs/super.c
index 4ed0dca52ec8..1da0be667409 100644
--- a/fs/ufs/super.c
+++ b/fs/ufs/super.c
@@ -843,6 +843,10 @@ static int ufs_fill_super(struct super_block *sb, void *data, int silent)
 
 	sb->s_maxbytes = MAX_LFS_FILESIZE;
 
+	sb->s_time_gran = NSEC_PER_SEC;
+	sb->s_time_min = S32_MIN;
+	sb->s_time_max = S32_MAX;
+
 	switch (sbi->s_mount_opt & UFS_MOUNT_UFSTYPE) {
 	case UFS_MOUNT_UFSTYPE_44BSD:
 		UFSD("ufstype=44bsd\n");
@@ -861,6 +865,9 @@ static int ufs_fill_super(struct super_block *sb, void *data, int silent)
 		uspi->s_fshift = 9;
 		uspi->s_sbsize = super_block_size = 1536;
 		uspi->s_sbbase =  0;
+		sb->s_time_gran = 1;
+		sb->s_time_min = S64_MIN;
+		sb->s_time_max = S64_MAX;
 		flags |= UFS_TYPE_UFS2 | UFS_DE_44BSD | UFS_UID_44BSD | UFS_ST_44BSD | UFS_CG_44BSD;
 		break;
 		
diff --git a/fs/xfs/xfs_super.c b/fs/xfs/xfs_super.c
index f9450235533c..d3b10900fc24 100644
--- a/fs/xfs/xfs_super.c
+++ b/fs/xfs/xfs_super.c
@@ -1663,6 +1663,8 @@ xfs_fs_fill_super(
 	sb->s_maxbytes = xfs_max_file_offset(sb->s_blocksize_bits);
 	sb->s_max_links = XFS_MAXLINK;
 	sb->s_time_gran = 1;
+	sb->s_time_min = S32_MIN;
+	sb->s_time_max = S32_MAX;
 	sb->s_iflags |= SB_I_CGROUPWB;
 
 	set_posix_acl_flag(sb);
-- 
2.17.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
