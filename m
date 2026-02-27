Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Bz/CaAOoml9ygQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 Feb 2026 22:37:36 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED471BE36B
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 Feb 2026 22:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yuzdmDENZGGGnwP02Y0iMJaNv8UkAaWxZLni4c8+2FU=; b=kgj4YaBB2Xb+oh5lS4msQj2Jod
	S0v60VRZg73neXMCgMSJuxevvlS1ADtm0leeCTZtXfDiRseXBPIAgbGZulnGV8uceAEBMArUXDaL4
	jedYON74ohCe0j4SS7D+B9HziV/xf0guIQfAU1snjpA57/sAs90ZESHnHzyl6OuwM5B0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vw5W4-0002BU-Q0;
	Fri, 27 Feb 2026 21:36:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <koike@igalia.com>) id 1vw2nq-0003Ok-Ho
 for jfs-discussion@lists.sourceforge.net;
 Fri, 27 Feb 2026 18:43:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TXz5r/Smk/Jr8ClBPbDf+2+KCLgaYCb3Cg5DtS0mJz0=; b=acDjIWHNyd5IP+KXik5GnBmFE2
 6rOwaHHyeJoctLGpO4ehTgT6T7778hywigAzgEcvdmuoe2ko1lVj+jgcSQNQ3R8yTUIZf90D0ph8V
 +xGGN6ZPMdyb3Of+1XzKqnphYvvPF/pcT9/a4mS1PMaH9OoGwEYz/9pk/iwPNb1F53oc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TXz5r/Smk/Jr8ClBPbDf+2+KCLgaYCb3Cg5DtS0mJz0=; b=l
 xrzIKxlHfPA51IdNtkYYRbOOdVjLwjkLi7L9chZrkMV0sTr+G/zMl9JDXGT1pVkheJ2kJjLedo+ON
 4OjhDAGuowWFCN8vCwtGvEkBV9kgbXsN/J6hhkpcYAXytwwDR+uiGNEH+1CWVuNvdg/gJ7HGywD0z
 StZ6sT689BZRLo5M=;
Received: from fanzine2.igalia.com ([213.97.179.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vw2np-0004yZ-NV for jfs-discussion@lists.sourceforge.net;
 Fri, 27 Feb 2026 18:43:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TXz5r/Smk/Jr8ClBPbDf+2+KCLgaYCb3Cg5DtS0mJz0=; b=bpIh67kDNgkmSMFkSjd2PUtMay
 DwCi7vbetHQCZKE6KIf3tkY6rk4WuT/evRoDacYEgldVOz76skE895DpLOdgBFsbNe21LI7SFNxRl
 vOytEdaGPhmLE7Z+oGCb/LYd+jQxgSGOqZ6IKH0vaFg7qrv7n0IcuwPziGsK7+S9bCPQX/GwOGaMU
 plvS9beReydjGyOWfkEKy5kgZPE8Ik/9110//OOX7QnOEXEnmkTIRMcA0+OsFcNuDBzquRITC/GkE
 T3Zwh+LOSDtAiGuTJghVe7bUXBnlIJc+c7+NeWdCn/R80Lb5IUdA1cB0JkSwaJIv+OXdzDOrTLj3l
 ruMG3S2w==;
Received: from [191.54.27.153] (helo=toolbx)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1vw2K0-006dFM-Al; Fri, 27 Feb 2026 19:12:16 +0100
To: shaggy@kernel.org, koike@igalia.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 kernel-dev@igalia.com
Date: Fri, 27 Feb 2026 15:11:50 -0300
Message-ID: <20260227181150.736848-1-koike@igalia.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: write_special_inodes() function iterate through the
 log->sb_list
 and access the sbi fields, which can be set to NULL concurrently by umount.
 Fix concurrency issue by holding LOG_LOCK and checking for NULL. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vw2np-0004yZ-NV
X-Mailman-Approved-At: Fri, 27 Feb 2026 21:36:55 +0000
Subject: [Jfs-discussion] [PATCH] jfs: hold LOG_LOCK on umount to avoid
 null-ptr-deref
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
From: Helen Koike via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Helen Koike <koike@igalia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-8.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:koike@igalia.com,m:jfs-discussion@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:kernel-dev@igalia.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,igalia.com:s=20170329];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,igalia.com:-];
	TO_DN_NONE(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[jfs-discussion];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[koike@igalia.com]
X-Rspamd-Queue-Id: 4ED471BE36B
X-Rspamd-Action: no action

write_special_inodes() function iterate through the log->sb_list and
access the sbi fields, which can be set to NULL concurrently by umount.

Fix concurrency issue by holding LOG_LOCK and checking for NULL.

Reported-by: syzbot+e14b1036481911ae4d77@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
Signed-off-by: Helen Koike <koike@igalia.com>
---
 fs/jfs/jfs_logmgr.c | 16 +++++++---------
 fs/jfs/jfs_logmgr.h |  7 +++++++
 fs/jfs/jfs_umount.c | 10 ++++++++++
 3 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 5b1c5da04163..59f94c28007d 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -74,12 +74,6 @@ static struct lbuf *log_redrive_list;
 static DEFINE_SPINLOCK(log_redrive_lock);
 
 
-/*
- *	log read/write serialization (per log)
- */
-#define LOG_LOCK_INIT(log)	mutex_init(&(log)->loglock)
-#define LOG_LOCK(log)		mutex_lock(&((log)->loglock))
-#define LOG_UNLOCK(log)		mutex_unlock(&((log)->loglock))
 
 
 /*
@@ -204,9 +198,13 @@ static void write_special_inodes(struct jfs_log *log,
 	struct jfs_sb_info *sbi;
 
 	list_for_each_entry(sbi, &log->sb_list, log_list) {
-		writer(sbi->ipbmap->i_mapping);
-		writer(sbi->ipimap->i_mapping);
-		writer(sbi->direct_inode->i_mapping);
+		/* These pointers can be NULL before list_del during umount */
+		if (sbi->ipbmap)
+			writer(sbi->ipbmap->i_mapping);
+		if (sbi->ipimap)
+			writer(sbi->ipimap->i_mapping);
+		if (sbi->direct_inode)
+			writer(sbi->direct_inode->i_mapping);
 	}
 }
 
diff --git a/fs/jfs/jfs_logmgr.h b/fs/jfs/jfs_logmgr.h
index 8b8994e48cd0..09e0ef6aecce 100644
--- a/fs/jfs/jfs_logmgr.h
+++ b/fs/jfs/jfs_logmgr.h
@@ -402,6 +402,13 @@ struct jfs_log {
 	int no_integrity;	/* 3: flag to disable journaling to disk */
 };
 
+/*
+ * log read/write serialization (per log)
+ */
+#define LOG_LOCK_INIT(log)	mutex_init(&(log)->loglock)
+#define LOG_LOCK(log)		mutex_lock(&((log)->loglock))
+#define LOG_UNLOCK(log)		mutex_unlock(&((log)->loglock))
+
 /*
  * Log flag
  */
diff --git a/fs/jfs/jfs_umount.c b/fs/jfs/jfs_umount.c
index 8ec43f53f686..18569f1eaabd 100644
--- a/fs/jfs/jfs_umount.c
+++ b/fs/jfs/jfs_umount.c
@@ -20,6 +20,7 @@
 #include "jfs_superblock.h"
 #include "jfs_dmap.h"
 #include "jfs_imap.h"
+#include "jfs_logmgr.h"
 #include "jfs_metapage.h"
 #include "jfs_debug.h"
 
@@ -57,6 +58,12 @@ int jfs_umount(struct super_block *sb)
 		 */
 		jfs_flush_journal(log, 2);
 
+	/*
+	 * Hold log lock so write_special_inodes (lmLogSync) cannot see
+	 * this sbi with a NULL inode pointer while iterating log->sb_list.
+	 */
+	if (log)
+		LOG_LOCK(log);
 	/*
 	 * close fileset inode allocation map (aka fileset inode)
 	 */
@@ -95,6 +102,9 @@ int jfs_umount(struct super_block *sb)
 	 */
 	filemap_write_and_wait(sbi->direct_inode->i_mapping);
 
+	if (log)
+		LOG_UNLOCK(log);
+
 	/*
 	 * ensure all file system file pages are propagated to their
 	 * home blocks on disk (and their in-memory buffer pages are
-- 
2.53.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
