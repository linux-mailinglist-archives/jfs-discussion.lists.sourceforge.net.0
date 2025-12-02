Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC22C9BEC8
	for <lists+jfs-discussion@lfdr.de>; Tue, 02 Dec 2025 16:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9MMQEnGQ/yjtPTKP3rh+4cq7ozZeJvXxX8n+VZ6s0Rg=; b=XyDb2JEjKTqqrQh31MVT5YewXB
	vhNngMDVjTQV+TBjTfmZOX49l6OIADoTlcDa57ylvDupiMnbbglzFEUSE6009JkJOpJ81PrhYxxLt
	Rma2X+UST8lddfGFfUStTCrs8KJNMJHgJYnwMPxIggYFI8v6Q849fv7vr4mZKHmIKYxY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vQSAh-0004nX-Gq;
	Tue, 02 Dec 2025 15:20:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <junjie.cao@intel.com>) id 1vQSAf-0004nP-AW
 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Dec 2025 15:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bAh43m4oI/vDDqR8YV6XjEr3b8rW2eZ5DumWa37TFww=; b=Ny1W20ejpXGUlSHM0cPmngxohF
 3UsW4+sjQyz3g0ZbtcNMWaR7khMPsDwlds8+dlocurU6vjubeO202sH5R8cN/l/2RFGZhGc9EAnfN
 w25dTVe6ibx8MRijvSZDE+hdZkNZbaKlz2H5IhoF9tTkCiL8brANgb3LK43LtFYCx2p8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bAh43m4oI/vDDqR8YV6XjEr3b8rW2eZ5DumWa37TFww=; b=R
 zB6qwmQwy8qDd6x6aeNitfqwSUX2YsxGLronJpS/QFdmExlW15Uc2NfcuVoVp9wOantUM/0noy0MF
 OqOxDINIeOyH5dN/toL+daauq+634j+reu6WksTmsGK6ZHCoi1BhBYuSdYUKjhG6ZfdDvJIFlntHp
 YS1LKgs9YU11R0ps=;
Received: from mgamail.intel.com ([192.198.163.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vQSAe-0003he-Mz for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Dec 2025 15:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764688805; x=1796224805;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NpLOLz+2MQDtaTLOmSyTPcotuq9gDLQyC/lm2mXA7Fg=;
 b=EFp3wwM4TLifgbTsvU8zfs3MSD0coFISFWaX6Y4tUwj4++7pPF6xKBm3
 jX/8AzH6eIzyySmljFdyCZe4UdsqWyeiwVe86a5OZ3zJzGYRKGoLYmqLC
 3Afp9Y9RpNuwc1DWX5Tv5GhRK+rfNgUdyAvQeJruuZ+bx3gV6f6hvNfal
 FgOe+F1RsmyGYUE9owN3X6Gb1fGbZfofvHUiDcia14F0BpqxeBQPvsz2H
 wsDtmMoQ+7LSWLL14g/Ezam6bIy1luTi/7boVa4qxy/I/d9QUrItYarTI
 At/P1bi6VHyHpSH9HLc8zUAKpEnxHwiTkTFXnalS99M3yLT8xNVEnb8RD A==;
X-CSE-ConnectionGUID: XCy+Qj0uQpmV0WPmFUwfiA==
X-CSE-MsgGUID: yVieejEGQmeFTd8FNKP96w==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="66546852"
X-IronPort-AV: E=Sophos;i="6.20,243,1758610800"; d="scan'208";a="66546852"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 07:19:54 -0800
X-CSE-ConnectionGUID: /SRCuPbWS/urFN+TFj33OA==
X-CSE-MsgGUID: 7muoy+ghRrmkqGKTnyaZ8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,243,1758610800"; d="scan'208";a="195205299"
Received: from junjie-nuc14rvs.bj.intel.com ([10.238.152.23])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 07:19:51 -0800
To: jfs-discussion@lists.sourceforge.net,
	shaggy@kernel.org
Date: Tue,  2 Dec 2025 23:20:00 +0800
Message-ID: <20251202152000.176731-1-junjie.cao@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot reported a kernel BUG in jfs_evict_inode() triggered
 by the following check: BUG_ON(!list_empty(&JFS_IP(inode)->anon_inode_list)); 
 When an inode reaches jfs_evict_inode() with outstanding anonymous
 transactions, 
 the filesystem state is already inconsistent. However, crashing the whole
 kernel in this situation is too heavy-handed [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: intel.com]
 [URI: syzkaller.appspot.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vQSAe-0003he-Mz
Subject: [Jfs-discussion] [PATCH] jfs: fix kernel BUG in jfs_evict_inode
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
From: Junjie Cao via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Junjie Cao <junjie.cao@intel.com>
Cc: syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 junjie.cao@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot reported a kernel BUG in jfs_evict_inode() triggered by the
following check:

    BUG_ON(!list_empty(&JFS_IP(inode)->anon_inode_list));

When an inode reaches jfs_evict_inode() with outstanding anonymous
transactions, the filesystem state is already inconsistent.  However,
crashing the whole kernel in this situation is too heavy-handed and
can be triggered by a corrupted or fuzzed filesystem image.

The transaction manager uses anon_inode_list to track inodes that
have anonymous tlocks attached.  Leaving an evicted inode on this
list is wrong as it leaves a dangling pointer behind and risks a
use-after-free when the list is walked later.

Instead of panicking, log the condition and remove the inode from
anon_inode_list under TXN_LOCK using a new helper, jfs_free_anon_inode().
This keeps the internal list consistent while avoiding a user-triggerable
kernel BUG.

Reported-by: syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
Tested-by: syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com
Signed-off-by: Junjie Cao <junjie.cao@intel.com>
---
 fs/jfs/inode.c      |  2 +-
 fs/jfs/jfs_txnmgr.c | 14 ++++++++++++++
 fs/jfs/jfs_txnmgr.h |  1 +
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 4709762713ef..88c046c3c3e3 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -172,7 +172,7 @@ void jfs_evict_inode(struct inode *inode)
 	clear_inode(inode);
 	dquot_drop(inode);
 
-	BUG_ON(!list_empty(&ji->anon_inode_list));
+	jfs_free_anon_inode(inode);
 
 	spin_lock_irq(&ji->ag_lock);
 	if (ji->active_ag != -1) {
diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index c16578af3a77..00e69f3ab22d 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -3018,3 +3018,17 @@ int jfs_txstats_proc_show(struct seq_file *m, void *v)
 	return 0;
 }
 #endif
+
+void jfs_free_anon_inode(struct inode *inode)
+{
+	struct jfs_inode_info *ji = JFS_IP(inode);
+
+	TXN_LOCK();
+	if (!list_empty(&ji->anon_inode_list)) {
+		jfs_err("inode %lu evicted with anonymous tlocks",
+			inode->i_ino);
+		list_del_init(&ji->anon_inode_list);
+	}
+	TXN_UNLOCK();
+}
+
diff --git a/fs/jfs/jfs_txnmgr.h b/fs/jfs/jfs_txnmgr.h
index ba71eb5ced56..64d917ccc4b0 100644
--- a/fs/jfs/jfs_txnmgr.h
+++ b/fs/jfs/jfs_txnmgr.h
@@ -295,4 +295,5 @@ extern void txResume(struct super_block *);
 extern void txLazyUnlock(struct tblock *);
 extern int jfs_lazycommit(void *);
 extern int jfs_sync(void *);
+extern void jfs_free_anon_inode(struct inode *);
 #endif				/* _H_JFS_TXNMGR */
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
