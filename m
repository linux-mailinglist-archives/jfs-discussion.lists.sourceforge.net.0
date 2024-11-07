Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1CF9C2DF6
	for <lists+jfs-discussion@lfdr.de>; Sat,  9 Nov 2024 15:58:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t9muv-0005Zo-FI;
	Sat, 09 Nov 2024 14:58:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmantipov@yandex.ru>) id 1t8vIv-0003Ld-SW
 for jfs-discussion@lists.sourceforge.net;
 Thu, 07 Nov 2024 05:43:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L2fQdkvs5a/umPRjZls07uUvU2Csch2YyyP8Br7H+IA=; b=erWf04d01hdbyW50t1TdLA9Vrc
 68Aemic9KeEPYPkqMh8JkL2wuBSWrlmEbU1P5QNII+10C4UlV/6qg9Anx2d8lsvgpRONipDYfO3gm
 q/k7qcCW885AOoR0/cimLNOWMO+8DHFzetTB4lxoC94mYHRQPdY43qgKY2Tt5EZLbR+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=L2fQdkvs5a/umPRjZls07uUvU2Csch2YyyP8Br7H+IA=; b=f
 l7LYA+pkbqe6nLbTdwCIEtqy0q8KUfGoZnaS+d858XYauvLxosPrDqofXL/2FfKiu3bI4xaLvyemN
 FuWnIbuwyOy2c4qsYIlFWpr3GRn4eFl0/lbaYokZA/uDHpLZ2UBZJInDlCw5yccb4mFWCOHOsF826
 iVyuhnmYMcH2y/ro=;
Received: from forward101a.mail.yandex.net ([178.154.239.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t8vIu-0005wm-BE for jfs-discussion@lists.sourceforge.net;
 Thu, 07 Nov 2024 05:43:38 +0000
Received: from mail-nwsmtp-smtp-production-main-81.vla.yp-c.yandex.net
 (mail-nwsmtp-smtp-production-main-81.vla.yp-c.yandex.net
 [IPv6:2a02:6b8:c15:339a:0:640:a002:0])
 by forward101a.mail.yandex.net (Yandex) with ESMTPS id 035D260E1D;
 Thu,  7 Nov 2024 08:43:24 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-81.vla.yp-c.yandex.net
 (smtp/Yandex) with ESMTPSA id MhaifHCPlW20-q791fCj9; 
 Thu, 07 Nov 2024 08:43:23 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1730958203; bh=L2fQdkvs5a/umPRjZls07uUvU2Csch2YyyP8Br7H+IA=;
 h=Message-ID:Date:Cc:Subject:To:From;
 b=tUvtg6WOVPJwBC9R4+4ih86J1xAPL9X5M7Veiz5kRZYQi67BWYQ81uEtAcsqE7Nnk
 vZpyBOINyHeJVZ4i9KOdON1v2iCM7Gu6npoA39PJeXmHVea1pOqzoxqjLzd4MsgUEi
 bDewp8ahClR0hzCQMRlDhcdm9PVjbOvdpZIvKQmk=
Authentication-Results: mail-nwsmtp-smtp-production-main-81.vla.yp-c.yandex.net;
 dkim=pass header.i=@yandex.ru
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu,  7 Nov 2024 08:42:28 +0300
Message-ID: <20241107054228.26540-1-dmantipov@yandex.ru>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzbot has reported the following BUG: kernel BUG at
 fs/inode.c:668!
 Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI CPU: 3 UID: 0 PID:
 139 Comm: jfsCommit Not tainted 6.12.0-rc4-syzkaller-00085-g4e46774408d9 #0
 Hardware name: QEMU S [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [178.154.239.84 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.154.239.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmantipov[at]yandex.ru]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t8vIu-0005wm-BE
X-Mailman-Approved-At: Sat, 09 Nov 2024 14:58:24 +0000
Subject: [Jfs-discussion] [PATCH] jfs: reject on-disk inodes of an
 unsupported type
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
 syzbot+ac2116e48989e84a2893@syzkaller.appspotmail.com,
 lvc-project@linuxtesting.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzbot has reported the following BUG:

kernel BUG at fs/inode.c:668!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI
CPU: 3 UID: 0 PID: 139 Comm: jfsCommit Not tainted 6.12.0-rc4-syzkaller-00085-g4e46774408d9 #0
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.16.3-3.fc41 04/01/2014
RIP: 0010:clear_inode+0x168/0x190
Code: 4c 89 f7 e8 ba fe e5 ff e9 61 ff ff ff 44 89 f1 80 e1 07 80 c1 03 38 c1 7c c1 4c 89 f7 e8 90 ff e5 ff eb b7
 0b e8 01 5d 7f ff 90 0f 0b e8 f9 5c 7f ff 90 0f 0b e8 f1 5c 7f
RSP: 0018:ffffc900027dfae8 EFLAGS: 00010093
RAX: ffffffff82157a87 RBX: 0000000000000001 RCX: ffff888104d4b980
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: ffffc900027dfc90 R08: ffffffff82157977 R09: fffff520004fbf38
R10: dffffc0000000000 R11: fffff520004fbf38 R12: dffffc0000000000
R13: ffff88811315bc00 R14: ffff88811315bda8 R15: ffff88811315bb80
FS:  0000000000000000(0000) GS:ffff888135f00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005565222e0578 CR3: 0000000026ef0000 CR4: 00000000000006f0
Call Trace:
 <TASK>
 ? __die_body+0x5f/0xb0
 ? die+0x9e/0xc0
 ? do_trap+0x15a/0x3a0
 ? clear_inode+0x168/0x190
 ? do_error_trap+0x1dc/0x2c0
 ? clear_inode+0x168/0x190
 ? __pfx_do_error_trap+0x10/0x10
 ? report_bug+0x3cd/0x500
 ? handle_invalid_op+0x34/0x40
 ? clear_inode+0x168/0x190
 ? exc_invalid_op+0x38/0x50
 ? asm_exc_invalid_op+0x1a/0x20
 ? clear_inode+0x57/0x190
 ? clear_inode+0x167/0x190
 ? clear_inode+0x168/0x190
 ? clear_inode+0x167/0x190
 jfs_evict_inode+0xb5/0x440
 ? __pfx_jfs_evict_inode+0x10/0x10
 evict+0x4ea/0x9b0
 ? __pfx_evict+0x10/0x10
 ? iput+0x713/0xa50
 txUpdateMap+0x931/0xb10
 ? __pfx_txUpdateMap+0x10/0x10
 jfs_lazycommit+0x49a/0xb80
 ? _raw_spin_unlock_irqrestore+0x8f/0x140
 ? lockdep_hardirqs_on+0x99/0x150
 ? __pfx_jfs_lazycommit+0x10/0x10
 ? __pfx_default_wake_function+0x10/0x10
 ? __kthread_parkme+0x169/0x1d0
 ? __pfx_jfs_lazycommit+0x10/0x10
 kthread+0x2f2/0x390
 ? __pfx_jfs_lazycommit+0x10/0x10
 ? __pfx_kthread+0x10/0x10
 ret_from_fork+0x4d/0x80
 ? __pfx_kthread+0x10/0x10
 ret_from_fork_asm+0x1a/0x30
 </TASK>

This happens when 'clear_inode()' makes an attempt to finalize an underlying
JFS inode of unknown type. According to JFS layout description from
https://jfs.sourceforge.net/project/pub/jfslayout.pdf, inode types from 5 to
15 are reserved for future extensions and should not be encountered on a valid
filesystem. So add an extra check for valid inode type in 'copy_from_dinode()'
and fix 'jfs_lookup()' to handle possible -EINVAL.

Reported-by: syzbot+ac2116e48989e84a2893@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=ac2116e48989e84a2893
Fixes: 79ac5a46c5c1 ("jfs_lookup(): don't bother with . or ..")
Signed-off-by: Dmitry Antipov <dmantipov@yandex.ru>
---
 fs/jfs/jfs_imap.c | 13 +++++++++++--
 fs/jfs/namei.c    | 10 ++++++++--
 2 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index a360b24ed320..debfc1389cb3 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -3029,14 +3029,23 @@ static void duplicateIXtree(struct super_block *sb, s64 blkno,
  *
  * RETURN VALUES:
  *	0	- success
- *	-ENOMEM	- insufficient memory
+ *	-EINVAL	- unexpected inode type
  */
 static int copy_from_dinode(struct dinode * dip, struct inode *ip)
 {
 	struct jfs_inode_info *jfs_ip = JFS_IP(ip);
 	struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
+	int fileset = le32_to_cpu(dip->di_fileset);
+
+	switch (fileset) {
+	case AGGR_RESERVED_I: case AGGREGATE_I: case BMAP_I:
+	case LOG_I: case BADBLOCK_I: case FILESYSTEM_I:
+		break;
+	default:
+		return -EINVAL;
+	}
 
-	jfs_ip->fileset = le32_to_cpu(dip->di_fileset);
+	jfs_ip->fileset = fileset;
 	jfs_ip->mode2 = le32_to_cpu(dip->di_mode);
 	jfs_set_inode_flags(ip);
 
diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index d68a4e6ac345..845abc598334 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -1467,8 +1467,14 @@ static struct dentry *jfs_lookup(struct inode *dip, struct dentry *dentry, unsig
 		ip = ERR_PTR(rc);
 	} else {
 		ip = jfs_iget(dip->i_sb, inum);
-		if (IS_ERR(ip))
-			jfs_err("jfs_lookup: iget failed on inum %d", (uint)inum);
+		if (IS_ERR(ip)) {
+			long err = PTR_ERR(ip);
+
+			jfs_err("%s: iget failed on inum %d with error"
+				" %ld, consider running 'jfs_fsck -f /dev/%s'",
+				__func__, (uint)inum, err, dip->i_sb->s_id);
+			return ERR_PTR(err);
+		}
 	}
 
 	return d_splice_alias(ip, dentry);
-- 
2.47.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
