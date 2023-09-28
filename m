Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B6B7B19AF
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Sep 2023 13:05:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qlopb-0007f7-Lj;
	Thu, 28 Sep 2023 11:05:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1qlopa-0007ez-DD
 for jfs-discussion@lists.sourceforge.net;
 Thu, 28 Sep 2023 11:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aOXdlO7zUNuPwvNdZjvrcIANVZNNRDakN4zQ10Wbmz8=; b=deKJ/ZxRQCX3nZCdy/ed2BxWt2
 MpsNO48WvRvOLeMmyPdfJuH6CkaVm+rlZglENcJddU+wB9omTnxx2XgSoI400p6vlW7DRgPeYDmC8
 Lmuodix+9ftgXOXK8OcISqSz2rwva3j2zfZNqQ/k5NmT3OH65ccXJxGTtBwwsMdEjP0w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aOXdlO7zUNuPwvNdZjvrcIANVZNNRDakN4zQ10Wbmz8=; b=QB2uQKl2RbQ5KLUHA0JC5jwUZz
 umHWxx2JOamHzyChjdmqXWpKSp7UPolv9R2EZEBiQOg0iyY+Knx24uO7In/41bPXGbr2O1/EC/+VF
 tCULr/sE4/txZGsqvicv6ocwe2ZAccHBXndXCPpgYWR1FFkWBw0BPwjVe9u7eRCz4goc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qlopW-0006Jn-8s for jfs-discussion@lists.sourceforge.net;
 Thu, 28 Sep 2023 11:05:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1678461344;
 Thu, 28 Sep 2023 11:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54AFFC433D9;
 Thu, 28 Sep 2023 11:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695899108;
 bh=AzqoCI0uYgwnl05IQC3qhfVNYEL6L82XH+DqJXqpg54=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l735/9y5uwND3gPWJ5Jp7cOd6ZX5BWE3kVQFltxeho/0caKZQMuMwnvK9sMKpfoXQ
 EmVwDBHaP8nRJ7gp1CZZ+nPiREemKJuiG+w9q8YJ60hf6LFbQuvCneCQQSYI6MbngL
 JdxbrQpm581NyNePilDhjqY7HoQTJHgyqSjE0YHz5YUhS0B4Q6wHpwwNGXwqcQ8k0o
 THp/s76N9+AjQdybzz9JyUUFoe0WcGjc7gsZSWecoG4oAhgRJlVfZa1HxxLQQ914cG
 UQyEQVifav/IuEZk9Pj+56cIzfKzEv5VIrsjftphwpOhEgNaCJMBIhth0haa3TwmZP
 RTL8/XCXHDGYg==
To: Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu, 28 Sep 2023 07:02:56 -0400
Message-ID: <20230928110413.33032-46-jlayton@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230928110413.33032-1-jlayton@kernel.org>
References: <20230928110300.32891-1-jlayton@kernel.org>
 <20230928110413.33032-1-jlayton@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Jeff Layton <jlayton@kernel.org> ---
 fs/jfs/inode.c
 | 2 +- fs/jfs/jfs_imap.c | 16 ++++++++-------- fs/jfs/jfs_inode.c | 2 +-
 fs/jfs/namei.c | 20 +++++++++++--------- fs/jfs/super.c | 2 [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qlopW-0006Jn-8s
Subject: [Jfs-discussion] [PATCH 47/87] fs/jfs: convert to new inode {a,
 m}time accessors
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

Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/jfs/inode.c     |  2 +-
 fs/jfs/jfs_imap.c  | 16 ++++++++--------
 fs/jfs/jfs_inode.c |  2 +-
 fs/jfs/namei.c     | 20 +++++++++++---------
 fs/jfs/super.c     |  2 +-
 5 files changed, 22 insertions(+), 20 deletions(-)

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
index 923a58422c46..57852a515660 100644
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
+	dip->di_atime.tv_sec = cpu_to_le32(inode_get_atime(ip).tv_sec);
+	dip->di_atime.tv_nsec = cpu_to_le32(inode_get_atime(ip).tv_nsec);
 	dip->di_ctime.tv_sec = cpu_to_le32(inode_get_ctime(ip).tv_sec);
 	dip->di_ctime.tv_nsec = cpu_to_le32(inode_get_ctime(ip).tv_nsec);
-	dip->di_mtime.tv_sec = cpu_to_le32(ip->i_mtime.tv_sec);
-	dip->di_mtime.tv_nsec = cpu_to_le32(ip->i_mtime.tv_nsec);
+	dip->di_mtime.tv_sec = cpu_to_le32(inode_get_mtime(ip).tv_sec);
+	dip->di_mtime.tv_nsec = cpu_to_le32(inode_get_mtime(ip).tv_nsec);
 	dip->di_ixpxd = jfs_ip->ixpxd;	/* in-memory pxd's are little-endian */
 	dip->di_acl = jfs_ip->acl;	/* as are dxd's */
 	dip->di_ea = jfs_ip->ea;
diff --git a/fs/jfs/jfs_inode.c b/fs/jfs/jfs_inode.c
index 87594efa7f7c..9137e5d96db8 100644
--- a/fs/jfs/jfs_inode.c
+++ b/fs/jfs/jfs_inode.c
@@ -97,7 +97,7 @@ struct inode *ialloc(struct inode *parent, umode_t mode)
 	jfs_inode->mode2 |= inode->i_mode;
 
 	inode->i_blocks = 0;
-	inode->i_mtime = inode->i_atime = inode_set_ctime_current(inode);
+	simple_inode_init_ts(inode);
 	jfs_inode->otime = inode_get_ctime(inode).tv_sec;
 	inode->i_generation = JFS_SBI(sb)->gengen++;
 
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
