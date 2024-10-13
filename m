Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7712099F46E
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Oct 2024 19:53:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t0ljW-0002gl-LD;
	Tue, 15 Oct 2024 17:53:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qianqiang.liu@163.com>) id 1szrk7-0000AD-Dj
 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Oct 2024 06:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wkk6DJRhizZPLhSQxX5dUpPZTlU/n6LDIhPssTWtIR4=; b=iRvjO94QlioJJ577gH9GXwNkgv
 wBrLQ+BiEAF6YI3eDABSzxz26hiJIyRJANPeltTcGtZutSiqLotBojuTlrV8QFeuRqJpe7+v2URlh
 YemOmkudjFR+fLD0pmQknPlOhFx8YqrTsq4N82Kix89qgUbG2FiSwIgOKcAj0R5Q4CS0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wkk6DJRhizZPLhSQxX5dUpPZTlU/n6LDIhPssTWtIR4=; b=IPuWJ9ZELFqL8dToVcYXE6c6uP
 ByUF33HlCyLhzyZnh1KBMdrJEuIyN974/z/wrQ7RmkPIibvDtjMsHJzfjsn3NokqorM1yNtg0WTrm
 2UYRt9ZYkrEmuQmJ8OtWuOf+m0usrxULfyuWuRU2lyn5noOCEUirXLiuLNvRpiqjb84Q=;
Received: from m16.mail.163.com ([117.135.210.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1szrk4-0008KU-RP for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Oct 2024 06:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
 Content-Type; bh=wkk6DJRhizZPLhSQxX5dUpPZTlU/n6LDIhPssTWtIR4=;
 b=KLfr8CELtuA9jQPn08TLcTH2vaxhCskVuJsljmtsLvfr3REaxRj4OO2KGPq42U
 tMq+sKUFcnXub8pu62nw289SXIVZ4h0sL8bfjQw+6JUYYKBadC0uyn7OBwVg52gP
 NbAg1JoZvPU7PGhea1wT6D3rzm5OCIDJVeS25bBkHYess=
Received: from localhost (unknown [58.243.42.186])
 by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id
 _____wBX3441YwtnuRtYAw--.22898S2; 
 Sun, 13 Oct 2024 14:05:42 +0800 (CST)
Date: Sun, 13 Oct 2024 14:05:41 +0800
To: dave.kleikamp@oracle.com
Message-ID: <ZwtjNd_koDuU_MT_@fedora>
References: <Zws-so-6TnY_FUFH@fedora>
 <670b513e.050a0220.3e960.0033.GAE@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <670b513e.050a0220.3e960.0033.GAE@google.com>
X-CM-TRANSID: _____wBX3441YwtnuRtYAw--.22898S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxXFy7GF1DAr1UXF45XFyfCrg_yoWrXrW7pa
 95AF47G3yDJr1UWF97J3y8Wa4rK3sYkayUWrW8tw1av3Wqqr1fCrsrt3WSyr1UXrZ2q34U
 XF90y34DXr4Ik3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jwzVbUUUUU=
X-Originating-IP: [58.243.42.186]
X-CM-SenderInfo: xtld01pldqwhxolxqiywtou0bp/1tbiRRx3amcLUmTmQgAAs6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The jfsCommit kernel thread uses the sbi->commit_state flag, 
 and sbi may be freed in jfs_put_super() by another thread. To prevent this,
 move commit_state to struct tblock, eliminating the need to access the sbi
 variable. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qianqiang.liu[at]163.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [117.135.210.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1szrk4-0008KU-RP
X-Mailman-Approved-At: Tue, 15 Oct 2024 17:53:20 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Fix use-after-free read issue in
 jfs_lazycommit
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
From: Qianqiang Liu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Qianqiang Liu <qianqiang.liu@163.com>
Cc: syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The jfsCommit kernel thread uses the sbi->commit_state flag,
and sbi may be freed in jfs_put_super() by another thread.

To prevent this, move commit_state to struct tblock,
eliminating the need to access the sbi variable.

Reported-by: syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=885a4f3281b8d99c48d8
Tested-by: syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com
Signed-off-by: Qianqiang Liu <qianqiang.liu@163.com>
---
 fs/jfs/jfs_incore.h |  8 --------
 fs/jfs/jfs_txnmgr.c | 10 ++++------
 fs/jfs/jfs_txnmgr.h |  8 ++++++++
 3 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/fs/jfs/jfs_incore.h b/fs/jfs/jfs_incore.h
index 10934f9a11be..7b75c801b239 100644
--- a/fs/jfs/jfs_incore.h
+++ b/fs/jfs/jfs_incore.h
@@ -177,11 +177,6 @@ struct jfs_sb_info {
 	pxd_t		ait2;		/* pxd describing AIT copy	*/
 	uuid_t		uuid;		/* 128-bit uuid for volume	*/
 	uuid_t		loguuid;	/* 128-bit uuid for log	*/
-	/*
-	 * commit_state is used for synchronization of the jfs_commit
-	 * threads.  It is protected by LAZY_LOCK().
-	 */
-	int		commit_state;	/* commit state */
 	/* Formerly in ipimap */
 	uint		gengen;		/* inode generation generator*/
 	uint		inostamp;	/* shows inode belongs to fileset*/
@@ -199,9 +194,6 @@ struct jfs_sb_info {
 	uint		minblks_trim;	/* minimum blocks, for online trim */
 };
 
-/* jfs_sb_info commit_state */
-#define IN_LAZYCOMMIT 1
-
 static inline struct jfs_inode_info *JFS_IP(struct inode *inode)
 {
 	return container_of(inode, struct jfs_inode_info, vfs_inode);
diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index be17e3c43582..a4817229d573 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -2700,7 +2700,6 @@ int jfs_lazycommit(void *arg)
 	int WorkDone;
 	struct tblock *tblk;
 	unsigned long flags;
-	struct jfs_sb_info *sbi;
 
 	set_freezable();
 	do {
@@ -2711,17 +2710,16 @@ int jfs_lazycommit(void *arg)
 			list_for_each_entry(tblk, &TxAnchor.unlock_queue,
 					    cqueue) {
 
-				sbi = JFS_SBI(tblk->sb);
 				/*
 				 * For each volume, the transactions must be
 				 * handled in order.  If another commit thread
 				 * is handling a tblk for this superblock,
 				 * skip it
 				 */
-				if (sbi->commit_state & IN_LAZYCOMMIT)
+				if (tblk->commit_state & IN_LAZYCOMMIT)
 					continue;
 
-				sbi->commit_state |= IN_LAZYCOMMIT;
+				tblk->commit_state |= IN_LAZYCOMMIT;
 				WorkDone = 1;
 
 				/*
@@ -2733,7 +2731,7 @@ int jfs_lazycommit(void *arg)
 				txLazyCommit(tblk);
 				LAZY_LOCK(flags);
 
-				sbi->commit_state &= ~IN_LAZYCOMMIT;
+				tblk->commit_state &= ~IN_LAZYCOMMIT;
 				/*
 				 * Don't continue in the for loop.  (We can't
 				 * anyway, it's unsafe!)  We want to go back to
@@ -2781,7 +2779,7 @@ void txLazyUnlock(struct tblock * tblk)
 	 * Don't wake up a commit thread if there is already one servicing
 	 * this superblock, or if the last one we woke up hasn't started yet.
 	 */
-	if (!(JFS_SBI(tblk->sb)->commit_state & IN_LAZYCOMMIT) &&
+	if (!(tblk->commit_state & IN_LAZYCOMMIT) &&
 	    !jfs_commit_thread_waking) {
 		jfs_commit_thread_waking = 1;
 		wake_up(&jfs_commit_thread_wait);
diff --git a/fs/jfs/jfs_txnmgr.h b/fs/jfs/jfs_txnmgr.h
index ba71eb5ced56..3a0ee53f17cb 100644
--- a/fs/jfs/jfs_txnmgr.h
+++ b/fs/jfs/jfs_txnmgr.h
@@ -32,6 +32,11 @@ struct tblock {
 
 	/* lock management */
 	struct super_block *sb;	/* super block */
+	/*
+	 * commit_state is used for synchronization of the jfs_commit
+	 * threads.  It is protected by LAZY_LOCK().
+	 */
+	int commit_state;	/* commit state */
 	lid_t next;		/* index of first tlock of tid */
 	lid_t last;		/* index of last tlock of tid */
 	wait_queue_head_t waitor;	/* tids waiting on this tid */
@@ -56,6 +61,9 @@ struct tblock {
 	u32 ino;		/* inode number being created */
 };
 
+/* tblock commit_state */
+#define IN_LAZYCOMMIT 1
+
 extern struct tblock *TxBlock;	/* transaction block table */
 
 /* commit flags: tblk->xflag */
-- 
2.47.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
