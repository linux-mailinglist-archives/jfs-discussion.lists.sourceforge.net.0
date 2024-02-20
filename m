Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CAB85B1BE
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Feb 2024 04:56:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rcHEV-0001zG-RG;
	Tue, 20 Feb 2024 03:55:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1rcHEU-0001zA-7v
 for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Feb 2024 03:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3jTd95gK70X2nBcjTwzGRdH17uQgMXk8jURH3DqzqBg=; b=g3vPLwJElr6ISkOcNkjwx76547
 lkeKObGCNd9Dni+/Qn4Loo8LuDKA9Qklz0VbB1jLSp+Ls8P7NXc1nxlXI0POJtldA8O3TgY7NMurN
 seFfrCQxRg6LJiywKPNPYO5//c3Pe9N1JB9Wr5TIA19GGQ5iSmGEVmRo0oKVGmxmNLpg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3jTd95gK70X2nBcjTwzGRdH17uQgMXk8jURH3DqzqBg=; b=M17DDFN1GI0dZ2Ncn8mTMcI+nx
 DLs41DhMbjoSloDlgK3oUaBr3K6KycxB0VC3fhPHBuxq6OBcTmiyYoXJGJa8RrVkuqkpWsbJKLUYg
 /sAqqAtr2T4bGRARFplrSCuqTTzZvUQheXpsW5xARzoWpr+J3b6usNFpXXCYNLfDX6YY=;
Received: from out203-205-221-236.mail.qq.com ([203.205.221.236])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rcHER-0001We-Es for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Feb 2024 03:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1708401320; bh=3jTd95gK70X2nBcjTwzGRdH17uQgMXk8jURH3DqzqBg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ds40mMzWs5S7CQnjZvv+wz/M/2ornf/6xiPjbpJv2S2K+Usf+gIXyhR9hSi7jFHey
 m1E4rABPFK9o9ftbJhJfeb/EfAhkX/7m7VMdpNlk4vmSlL7v7RYcgHhaaCCg3jJLgB
 8CmOs7PUS5/fS8U5WU2q4oCCWRLQGCnmbLS8TnAI=
Received: from pek-lxu-l1.wrs.com ([111.198.228.140])
 by newxmesmtplogicsvrsza10-0.qq.com (NewEsmtp) with SMTP
 id DD198E4D; Tue, 20 Feb 2024 11:55:17 +0800
X-QQ-mid: xmsmtpt1708401317t2ce8lavy
Message-ID: <tencent_E860EA86EF0ECC0079FA6D3C2D496D30940A@qq.com>
X-QQ-XMAILINFO: N7h1OCCDntujaWSH7ZPN/fW7iDszXhnNNTb4Zx30q9IYTmSszZI/yKqW8bTsww
 T6SBI4F+U11e1E9IceIVvzmtwGalk9Db3cOzrs24uSJ2kFV/JaJReUl/N53YvWmDm5LkHPFLfcmy
 qb8EVpFKFnVA323lvRH3lBdWOEmsQSf2cBzK/GtmYoSuABPsIVX6mUQn/0ya1IWl1i16imYyGiKR
 f95nA0ILysOM09HQ/zOwavFCVHTpTeCj3lN4VEXLQv47HSoZJY3LHVz41c13/6zyLIWiW64ys+v6
 8bsr99bFuw7kPiw19ouP2sznwDyZkeW5tjGYpNTxCSMEJFnlR3h/eMMmpDvFUYIVfFYFC+2HmeDD
 kvhb5yEMRCTcqX2wFxFq7MgMk8gWCZbyyH8etArx75dt0IJjlPViH7E2T9V7FznLZ2tsg4/LzdTG
 vgtBoRmuE0KpdZAzxFuNFQcf84GGeszTB4gmzmb3lNJ+Q06co9n5wjl8fb6g49IN5OpSUeBajy6X
 e0mP5jTQf+zQiQWFA5X999GX9k8KkSrXdUqdvQcy1OlU8LFLwyXkKWbpWqSyvT1F0SLVJtQosIam
 z8vHy3r4HvRZfiC3LLX7wqEead4BCgcc5RHIYWep4A6Q3xvGwTJMZqH9UO3ngjCwnk4PcLkHuv5v
 GTfdCfyi0/Y6zrJ2ClRmKeuop0iZ3ySsQC2w94i5d5q9hwBH9tdkGTw67duE3aIqXcIu3M0L5t/l
 ap1zMzu41lQMAfLLZv/6NVknTBGzhsqKa612+Cro7uxjy5UruNacG1CTNQdhBQ1ZtVVON3lSW7tH
 wkmHRYfA2SJ6P0ZyCUZJewPk5POkYs2eAWJ1Ax+7S5xE+QocA7xjNjD9Yu+AIeOpDw0kIRD4NkGS
 zH5Qa72+T2VJD9LQ3u2EHN72tg8XRNCMo+g54ugNYZ3Kk4eKsJlH2Qtl/xlGsRng==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
To: syzbot+c244f4a09ca85dd2ebc1@syzkaller.appspotmail.com
Date: Tue, 20 Feb 2024 11:55:18 +0800
X-OQ-MSGID: <20240220035517.2079019-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <0000000000003d021006119cbf46@google.com>
References: <0000000000003d021006119cbf46@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  During the execution of the jfs lazy commit, the jfs file
 system was unmounted, causing the sbi and jfs log objects to be released,
 triggering this issue. The solution is to add mutex to synchronize j [...]
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [203.205.221.236 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.236 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1rcHER-0001We-Es
Subject: [Jfs-discussion] [PATCH] jfs: fix uaf in jfs_syncpt
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: linux-fsdevel@vger.kernel.org, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

During the execution of the jfs lazy commit, the jfs file system was unmounted,
causing the sbi and jfs log objects to be released, triggering this issue.
The solution is to add mutex to synchronize jfs lazy commit and jfs unmount 
operations.

Reported-and-tested-by: syzbot+c244f4a09ca85dd2ebc1@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_incore.h | 1 +
 fs/jfs/jfs_txnmgr.c | 7 ++++++-
 fs/jfs/jfs_umount.c | 2 ++
 fs/jfs/super.c      | 1 +
 4 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_incore.h b/fs/jfs/jfs_incore.h
index dd4264aa9bed..15955dd86bfd 100644
--- a/fs/jfs/jfs_incore.h
+++ b/fs/jfs/jfs_incore.h
@@ -197,6 +197,7 @@ struct jfs_sb_info {
 	kgid_t		gid;		/* gid to override on-disk gid */
 	uint		umask;		/* umask to override on-disk umask */
 	uint		minblks_trim;	/* minimum blocks, for online trim */
+	struct mutex log_mutex;
 };
 
 /* jfs_sb_info commit_state */
diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index be17e3c43582..eb60862dc61b 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -2665,6 +2665,9 @@ static void txLazyCommit(struct tblock * tblk)
 
 	log = (struct jfs_log *) JFS_SBI(tblk->sb)->log;
 
+	if (!log)
+		return;
+
 	spin_lock_irq(&log->gclock);	// LOGGC_LOCK
 
 	tblk->flag |= tblkGC_COMMITTED;
@@ -2730,10 +2733,12 @@ int jfs_lazycommit(void *arg)
 				list_del(&tblk->cqueue);
 
 				LAZY_UNLOCK(flags);
+				mutex_lock(&sbi->log_mutex);
 				txLazyCommit(tblk);
+				sbi->commit_state &= ~IN_LAZYCOMMIT;
+				mutex_unlock(&sbi->log_mutex);
 				LAZY_LOCK(flags);
 
-				sbi->commit_state &= ~IN_LAZYCOMMIT;
 				/*
 				 * Don't continue in the for loop.  (We can't
 				 * anyway, it's unsafe!)  We want to go back to
diff --git a/fs/jfs/jfs_umount.c b/fs/jfs/jfs_umount.c
index 8ec43f53f686..04788cf3a471 100644
--- a/fs/jfs/jfs_umount.c
+++ b/fs/jfs/jfs_umount.c
@@ -51,6 +51,7 @@ int jfs_umount(struct super_block *sb)
 	 *
 	 * if mounted read-write and log based recovery was enabled
 	 */
+	mutex_lock(&sbi->log_mutex);
 	if ((log = sbi->log))
 		/*
 		 * Wait for outstanding transactions to be written to log:
@@ -113,6 +114,7 @@ int jfs_umount(struct super_block *sb)
 		 */
 		rc = lmLogClose(sb);
 	}
+	mutex_unlock(&sbi->log_mutex);
 	jfs_info("UnMount JFS Complete: rc = %d", rc);
 	return rc;
 }
diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index 8d8e556bd610..cf291bdd094f 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -504,6 +504,7 @@ static int jfs_fill_super(struct super_block *sb, void *data, int silent)
 	sbi->uid = INVALID_UID;
 	sbi->gid = INVALID_GID;
 	sbi->umask = -1;
+	mutex_init(&sbi->log_mutex);
 
 	/* initialize the mount flag and determine the default error handler */
 	flag = JFS_ERR_REMOUNT_RO;
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
