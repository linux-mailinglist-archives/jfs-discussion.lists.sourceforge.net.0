Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC87A3D847
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Feb 2025 12:20:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tl4az-0004Jv-Aq;
	Thu, 20 Feb 2025 11:19:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1tl4ax-0004Je-Is
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 11:19:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KF6uDAiNEy/NxbwADJhvETXLyW36Mj39HsyXIpVucTw=; b=Yh4l984eM7OODIxcTRVUL4Q1oZ
 Oj3qxu5UdTW9fzFDgtCA+SXCnxjM5C5bXWRy/O9jLg279siNP0VznMnXKmqLhAVDd5ryU6+LHwzM8
 yvJPbY36FNX4cYeYAuvOcQ5PZ3TJuniMG0wKoEqg0lu3/au+S7xvtMLlsz9qH//lT834=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KF6uDAiNEy/NxbwADJhvETXLyW36Mj39HsyXIpVucTw=; b=j65zuoITiEHR4Y3B7Nu45nBu9l
 h6vhsFdJRAdE9r66Xy3+rqJL5xEHTi6VKB81XICQ1LAF2hE6rTbbmyOOSoey9SfFcNM20KV3hH2KM
 cOTIsQlX+re5Rf01MKR/IK9VQmRFK663tCHfo75EQB5ViOzrSWpMLJUe0JKxb+TYEkko=;
Received: from out162-62-57-49.mail.qq.com ([162.62.57.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tl4aw-0006aC-Fo for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 11:19:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1740050385; bh=KF6uDAiNEy/NxbwADJhvETXLyW36Mj39HsyXIpVucTw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Z1GZAttor+GmKBQIHJj/+QhA12ZHqC8BboHbOiv4I0Sg6X14v1LmvycXK1KzGLD3P
 K+VJkf1k9ONEDPE3d9KBuUvwOHVz3xWOXAW7cj6scWrxG9reJMuqPtS5dRh6CnOHN5
 rGWpSa0fpIk+k0n77/f5Tag+Z/VzoG2xFO5GXCmA=
Received: from pek-lxu-l1.wrs.com ([114.244.57.157])
 by newxmesmtplogicsvrszb20-0.qq.com (NewEsmtp) with SMTP
 id 355052BA; Thu, 20 Feb 2025 19:13:21 +0800
X-QQ-mid: xmsmtpt1740050001tkyzp4wjv
Message-ID: <tencent_8C6B26DD7364836B096F23B1244E177F3705@qq.com>
X-QQ-XMAILINFO: OCYbvBDBNb9rKu1+SRd4LswjY1FvIowzqv9NhJI/sLepwMJKoeuwiLO/cFk10X
 CljWmON6jDDOSOHPj/qp75FfZ5Mtih8fgLt4mwhmMnK0qik6RkGF5MRJZHg3xl1Ao2bQdsDuRe7u
 +dRNxT9asOXBvq6hctYUQOcma90k2zKa9WdsPkQY3i4xKsgRKemu/Gr7a/G8uK0/HClO23BRyNpK
 JsogImOh0+j9UMqyryTvcwewRob3UDlPm28nXjB3wYTHJjSPEqdIqwvPAkOtdSO15PQTQOd2TEYv
 84O4RVUcWTLhYhkrADw1BHmFNDSa38sKWdjUqXe2jtAUiXVbkpRMr2dkt3K9Xvvudza9rbYhuaZu
 aA59lSnKu8zCWkYh14Z8dlXGzEh14R1Cl0aEEEgw8Sm2Nkv8ZCzWXGm6WAYRaIjKgCpdD7Z9sQGU
 QzRQ4k7vCnouvVLUzoEMbIVsnyafgHxGjEscZT62+3d161niUcHmgHcwUJMEVR/uzJ9QwZo3N0wi
 vISBFJtpGHRj/zOdKz8mQr5UaEMcwP2k5oqWGfjWW05BVDuGPUn64HSLlcfMNvrc4cDISYVtMnmn
 OntezZm/grgML5uZL4Lc9dzUKgiQyH0FVh8hwLZgiJIbCvV1Gzlv6XkfMYyS12s/eSZlBDsoSzK3
 AmAKdchz6ZcDoio2THbvWkM8g6MMYo9GmVqHcVhYLN5IijnHH8f4iGohQMDxsixS6k87bonS1CXb
 Qme0ll8/krCYwzQiFqJOCKNAgy5M6MPFMH546j+OlDlQHEb4sCG641By/+fvvbTaQi+dlRb3G/5w
 aPMt9Vn9NZKgQ6b+/ZFL7AgIF0qrChV3CPtRyukNSB/4wFVqXlUxw80kvJcJlnDT/JoF4KS4eCjz
 Z6L9gOoT3+41AnOntLzdBNBEETYGGGU7TqZJ0aMvjtefz2ReyRoVae8rPQ4w2N3g==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
To: dave.kleikamp@oracle.com
Date: Thu, 20 Feb 2025 19:13:21 +0800
X-OQ-MSGID: <20250220111321.2299005-2-eadavis@qq.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <b72fbe46-f910-4181-8d5b-fdc66d46700a@oracle.com>
References: <b72fbe46-f910-4181-8d5b-fdc66d46700a@oracle.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot report a deadlock in diFree. [1] When calling
 "ioctl$LOOP_SET_STATUS64", 
 the offset value passed in is 4, which does not match the mounted loop device, 
 causing the mapping of the mounted loop device to be invalidated. 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [162.62.57.49 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [162.62.57.49 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [162.62.57.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1tl4aw-0006aC-Fo
Subject: [Jfs-discussion] [PATCH V3] jfs: Prevent copying of nlink with
 value 0 from disk inode
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot report a deadlock in diFree. [1]

When calling "ioctl$LOOP_SET_STATUS64", the offset value passed in is 4,
which does not match the mounted loop device, causing the mapping of the
mounted loop device to be invalidated.

When creating the directory and creating the inode of iag in diReadSpecial(),
read the page of fixed disk inode (AIT) in raw mode in read_metapage(), the
metapage data it returns is corrupted, which causes the nlink value of 0 to be
assigned to the iag inode when executing copy_from_dinode(), which ultimately
causes a deadlock when entering diFree().

To avoid this, first check the nlink value of dinode before setting iag inode.

[1]
WARNING: possible recursive locking detected
6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0 Not tainted
--------------------------------------------
syz-executor301/5309 is trying to acquire lock:
ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889

but task is already holding lock:
ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630

other info that might help us debug this:
 Possible unsafe locking scenario:

       CPU0
       ----
  lock(&(imap->im_aglock[index]));
  lock(&(imap->im_aglock[index]));

 *** DEADLOCK ***

 May be due to missing lock nesting notation

5 locks held by syz-executor301/5309:
 #0: ffff8880422a4420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
 #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
 #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: filename_create+0x260/0x540 fs/namei.c:4026
 #2: ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
 #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2460 [inline]
 #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
 #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocAG+0x4b7/0x1e50 fs/jfs/jfs_imap.c:1669
 #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2477 [inline]
 #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
 #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocAG+0x869/0x1e50 fs/jfs/jfs_imap.c:1669

stack backtrace:
CPU: 0 UID: 0 PID: 5309 Comm: syz-executor301 Not tainted 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_deadlock_bug+0x483/0x620 kernel/locking/lockdep.c:3037
 check_deadlock kernel/locking/lockdep.c:3089 [inline]
 validate_chain+0x15e2/0x5920 kernel/locking/lockdep.c:3891
 __lock_acquire+0x1384/0x2050 kernel/locking/lockdep.c:5202
 lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5825
 __mutex_lock_common kernel/locking/mutex.c:608 [inline]
 __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
 diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
 jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
 evict+0x4e8/0x9b0 fs/inode.c:725
 diFreeSpecial fs/jfs/jfs_imap.c:552 [inline]
 duplicateIXtree+0x3c6/0x550 fs/jfs/jfs_imap.c:3022
 diNewIAG fs/jfs/jfs_imap.c:2597 [inline]
 diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
 diAllocAG+0x17dc/0x1e50 fs/jfs/jfs_imap.c:1669
 diAlloc+0x1d2/0x1630 fs/jfs/jfs_imap.c:1590
 ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x1c5/0xba0 fs/jfs/namei.c:225
 vfs_mkdir+0x2f9/0x4f0 fs/namei.c:4257
 do_mkdirat+0x264/0x3a0 fs/namei.c:4280
 __do_sys_mkdirat fs/namei.c:4295 [inline]
 __se_sys_mkdirat fs/namei.c:4293 [inline]
 __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:4293
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Reported-by: syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=355da3b3a74881008e8f
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
V1 -> V2: if the nlink of disk inode is 0 return -EIO
V2 -> V3: move the checking to diReadSpecial

---
 fs/jfs/jfs_imap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 0cedaccb7218..25bb3485da3b 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -460,7 +460,7 @@ struct inode *diReadSpecial(struct super_block *sb, ino_t inum, int secondary)
 	dp += inum % 8;		/* 8 inodes per 4K page */
 
 	/* copy on-disk inode to in-memory inode */
-	if ((copy_from_dinode(dp, ip)) != 0) {
+	if (!le32_to_cpu(dp->di_nlink) || (copy_from_dinode(dp, ip)) != 0) {
 		/* handle bad return by returning NULL for ip */
 		set_nlink(ip, 1);	/* Don't want iput() deleting it */
 		iput(ip);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
