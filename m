Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B107B8B7C
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Oct 2023 20:55:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qo71H-0002yj-BE;
	Wed, 04 Oct 2023 18:54:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1qo71F-0002yY-Bn
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Oct 2023 18:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5QxOloj6BArMCi4yFIow5/z8rSDYBuGO+2o+/PRK4R8=; b=joOJ+NOhNX1yx/yTRnKjSM/XKd
 fr2pt2UCXiaAQShx8/B5KWwVYamn3WBpNNR/BUtIcQf+H08DpnIiDvEkOGHnh3pVjzUuK8A6Rf3Z7
 +eY0fe0IB/SubzRG6DDYFLZmqTeAOOtD3lOmwEitz4sXRWN6Ae3G67ULQLzVXfvtjXxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5QxOloj6BArMCi4yFIow5/z8rSDYBuGO+2o+/PRK4R8=; b=jHGvmtPmPe7ux72F+LJpbmAj8S
 6Nz34e1omFNQ4jT6caBR39sg1brMhiVxKbV4ye/qVEKaY/+AG8bUGq9qJXstrFgsWRkQmInfHvrL1
 rM6D3ZY/G5JD7vkPPTvKmgrYV3A+4Qm923PXMjqdv4DKFVk8PWl841V7LhAVXXaViqSU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qo71E-00057e-GQ for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Oct 2023 18:54:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4FC8B616A3;
 Wed,  4 Oct 2023 18:54:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81EBAC433C8;
 Wed,  4 Oct 2023 18:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696445683;
 bh=SZ6GtxYWFG+m2uoVVjthnxknAjsmUPNY0GAnxe0VeKA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KKugYXnikd3HwfhR6ajopt70yBFBNSfQlCCIN3HLz2BN3rTEAOBJXCh9w6FU8EukJ
 000cFbpFkl7BL0P63siq51N1YXXWrgyFul+D1l8VC2Km/qNTRPZRhLenka4PtFyl5M
 K8cko9eH8fIA2B3xrrSRs2nOJvHY9wwsIc+GNPlzs83mljqVaLvJ9EGJpc5sC0++8O
 YiWpzpBlNxqWygDdKVF+FW03ePk/fAeiN1wmtoKktIKYu3hU34yEsVDKQoVtZlMIKt
 twRTi5+WAaeGDL8gd8rmY/RwBEpMlJAACZ/RG36Gt7iwJLca+awDhwC+0zrj4Fy+DW
 zzdzA81Z6s6/Q==
To: Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed,  4 Oct 2023 14:52:33 -0400
Message-ID: <20231004185347.80880-46-jlayton@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004185347.80880-1-jlayton@kernel.org>
References: <20231004185221.80802-1-jlayton@kernel.org>
 <20231004185347.80880-1-jlayton@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Convert to using the new inode timestamp accessor functions.
 Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com> Signed-off-by: Jeff Layton
 <jlayton@kernel.org> --- fs/jfs/inode.c | 2 +- fs/jfs/jfs_imap.c | 20
 ++++++++++ fs/jfs/jfs_inode.c | 4 ++-- fs/ [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qo71E-00057e-GQ
Subject: [Jfs-discussion] [PATCH v2 48/89] jfs: convert to new timestamp
 accessors
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
From: Jeff Layton via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jeff Layton <jlayton@kernel.org>
Cc: jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Convert to using the new inode timestamp accessor functions.

Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/jfs/inode.c     |  2 +-
 fs/jfs/jfs_imap.c  | 20 ++++++++++----------
 fs/jfs/jfs_inode.c |  4 ++--
 fs/jfs/namei.c     | 20 +++++++++++---------
 fs/jfs/super.c     |  2 +-
 5 files changed, 25 insertions(+), 23 deletions(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 920d58a1566b..1a6b5921d17a 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -393,7 +393,7 @@ void jfs_truncate_nolock(struct inode *ip, loff_t length)
 			break;
 		}
 
-		ip->i_mtime = inode_set_ctime_current(ip);
+		inode_set_mtime_to_ts(ip, inode_set_ctime_current(ip));
 		mark_inode_dirty(ip);
 
 		txCommit(tid, 1, &ip, 0);
diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 923a58422c46..8e87264e56ce 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -3061,10 +3061,10 @@ static int copy_from_dinode(struct dinode * dip, struct inode *ip)
 	}
 
 	ip->i_size = le64_to_cpu(dip->di_size);
-	ip->i_atime.tv_sec = le32_to_cpu(dip->di_atime.tv_sec);
-	ip->i_atime.tv_nsec = le32_to_cpu(dip->di_atime.tv_nsec);
-	ip->i_mtime.tv_sec = le32_to_cpu(dip->di_mtime.tv_sec);
-	ip->i_mtime.tv_nsec = le32_to_cpu(dip->di_mtime.tv_nsec);
+	inode_set_atime(ip, le32_to_cpu(dip->di_atime.tv_sec),
+			le32_to_cpu(dip->di_atime.tv_nsec));
+	inode_set_mtime(ip, le32_to_cpu(dip->di_mtime.tv_sec),
+			le32_to_cpu(dip->di_mtime.tv_nsec));
 	inode_set_ctime(ip, le32_to_cpu(dip->di_ctime.tv_sec),
 			le32_to_cpu(dip->di_ctime.tv_nsec));
 	ip->i_blocks = LBLK2PBLK(ip->i_sb, le64_to_cpu(dip->di_nblocks));
@@ -3138,12 +3138,12 @@ static void copy_to_dinode(struct dinode * dip, struct inode *ip)
 	else /* Leave the original permissions alone */
 		dip->di_mode = cpu_to_le32(jfs_ip->mode2);
 
-	dip->di_atime.tv_sec = cpu_to_le32(ip->i_atime.tv_sec);
-	dip->di_atime.tv_nsec = cpu_to_le32(ip->i_atime.tv_nsec);
-	dip->di_ctime.tv_sec = cpu_to_le32(inode_get_ctime(ip).tv_sec);
-	dip->di_ctime.tv_nsec = cpu_to_le32(inode_get_ctime(ip).tv_nsec);
-	dip->di_mtime.tv_sec = cpu_to_le32(ip->i_mtime.tv_sec);
-	dip->di_mtime.tv_nsec = cpu_to_le32(ip->i_mtime.tv_nsec);
+	dip->di_atime.tv_sec = cpu_to_le32(inode_get_atime_sec(ip));
+	dip->di_atime.tv_nsec = cpu_to_le32(inode_get_atime_nsec(ip));
+	dip->di_ctime.tv_sec = cpu_to_le32(inode_get_ctime_sec(ip));
+	dip->di_ctime.tv_nsec = cpu_to_le32(inode_get_ctime_nsec(ip));
+	dip->di_mtime.tv_sec = cpu_to_le32(inode_get_mtime_sec(ip));
+	dip->di_mtime.tv_nsec = cpu_to_le32(inode_get_mtime_nsec(ip));
 	dip->di_ixpxd = jfs_ip->ixpxd;	/* in-memory pxd's are little-endian */
 	dip->di_acl = jfs_ip->acl;	/* as are dxd's */
 	dip->di_ea = jfs_ip->ea;
diff --git a/fs/jfs/jfs_inode.c b/fs/jfs/jfs_inode.c
index 87594efa7f7c..f10f295d1502 100644
--- a/fs/jfs/jfs_inode.c
+++ b/fs/jfs/jfs_inode.c
@@ -97,8 +97,8 @@ struct inode *ialloc(struct inode *parent, umode_t mode)
 	jfs_inode->mode2 |= inode->i_mode;
 
 	inode->i_blocks = 0;
-	inode->i_mtime = inode->i_atime = inode_set_ctime_current(inode);
-	jfs_inode->otime = inode_get_ctime(inode).tv_sec;
+	simple_inode_init_ts(inode);
+	jfs_inode->otime = inode_get_ctime_sec(inode);
 	inode->i_generation = JFS_SBI(sb)->gengen++;
 
 	jfs_inode->cflag = 0;
diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index 57d7a4300210..d68a4e6ac345 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -149,7 +149,7 @@ static int jfs_create(struct mnt_idmap *idmap, struct inode *dip,
 
 	mark_inode_dirty(ip);
 
-	dip->i_mtime = inode_set_ctime_current(dip);
+	inode_set_mtime_to_ts(dip, inode_set_ctime_current(dip));
 
 	mark_inode_dirty(dip);
 
@@ -284,7 +284,7 @@ static int jfs_mkdir(struct mnt_idmap *idmap, struct inode *dip,
 
 	/* update parent directory inode */
 	inc_nlink(dip);		/* for '..' from child directory */
-	dip->i_mtime = inode_set_ctime_current(dip);
+	inode_set_mtime_to_ts(dip, inode_set_ctime_current(dip));
 	mark_inode_dirty(dip);
 
 	rc = txCommit(tid, 2, &iplist[0], 0);
@@ -390,7 +390,7 @@ static int jfs_rmdir(struct inode *dip, struct dentry *dentry)
 	/* update parent directory's link count corresponding
 	 * to ".." entry of the target directory deleted
 	 */
-	dip->i_mtime = inode_set_ctime_current(dip);
+	inode_set_mtime_to_ts(dip, inode_set_ctime_current(dip));
 	inode_dec_link_count(dip);
 
 	/*
@@ -512,7 +512,8 @@ static int jfs_unlink(struct inode *dip, struct dentry *dentry)
 
 	ASSERT(ip->i_nlink);
 
-	dip->i_mtime = inode_set_ctime_to_ts(dip, inode_set_ctime_current(ip));
+	inode_set_mtime_to_ts(dip,
+			      inode_set_ctime_to_ts(dip, inode_set_ctime_current(ip)));
 	mark_inode_dirty(dip);
 
 	/* update target's inode */
@@ -828,7 +829,7 @@ static int jfs_link(struct dentry *old_dentry,
 	/* update object inode */
 	inc_nlink(ip);		/* for new link */
 	inode_set_ctime_current(ip);
-	dir->i_mtime = inode_set_ctime_current(dir);
+	inode_set_mtime_to_ts(dir, inode_set_ctime_current(dir));
 	mark_inode_dirty(dir);
 	ihold(ip);
 
@@ -1028,7 +1029,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
 
 	mark_inode_dirty(ip);
 
-	dip->i_mtime = inode_set_ctime_current(dip);
+	inode_set_mtime_to_ts(dip, inode_set_ctime_current(dip));
 	mark_inode_dirty(dip);
 	/*
 	 * commit update of parent directory and link object
@@ -1271,7 +1272,7 @@ static int jfs_rename(struct mnt_idmap *idmap, struct inode *old_dir,
 	inode_set_ctime_current(old_ip);
 	mark_inode_dirty(old_ip);
 
-	new_dir->i_mtime = inode_set_ctime_current(new_dir);
+	inode_set_mtime_to_ts(new_dir, inode_set_ctime_current(new_dir));
 	mark_inode_dirty(new_dir);
 
 	/* Build list of inodes modified by this transaction */
@@ -1283,7 +1284,8 @@ static int jfs_rename(struct mnt_idmap *idmap, struct inode *old_dir,
 
 	if (old_dir != new_dir) {
 		iplist[ipcount++] = new_dir;
-		old_dir->i_mtime = inode_set_ctime_current(old_dir);
+		inode_set_mtime_to_ts(old_dir,
+				      inode_set_ctime_current(old_dir));
 		mark_inode_dirty(old_dir);
 	}
 
@@ -1416,7 +1418,7 @@ static int jfs_mknod(struct mnt_idmap *idmap, struct inode *dir,
 
 	mark_inode_dirty(ip);
 
-	dir->i_mtime = inode_set_ctime_current(dir);
+	inode_set_mtime_to_ts(dir, inode_set_ctime_current(dir));
 
 	mark_inode_dirty(dir);
 
diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index 2e2f7f6d36a0..966826c394ee 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -818,7 +818,7 @@ static ssize_t jfs_quota_write(struct super_block *sb, int type,
 	}
 	if (inode->i_size < off+len-towrite)
 		i_size_write(inode, off+len-towrite);
-	inode->i_mtime = inode_set_ctime_current(inode);
+	inode_set_mtime_to_ts(inode, inode_set_ctime_current(inode));
 	mark_inode_dirty(inode);
 	inode_unlock(inode);
 	return len - towrite;
-- 
2.41.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
