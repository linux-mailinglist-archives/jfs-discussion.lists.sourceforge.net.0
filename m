Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 049389FBA73
	for <lists+jfs-discussion@lfdr.de>; Tue, 24 Dec 2024 09:22:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tQ0Aj-0003yR-US;
	Tue, 24 Dec 2024 08:21:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1tQ0Ai-0003y2-VC
 for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Dec 2024 08:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OENROdS91U3MaRFQWf1vp2tgnQhTDtvIlRV417kF+l4=; b=gCpeB5z5Sm0XDi1vOhF1Vb5/vo
 57GNik4aPQo3Kj/4eZwjEFORUhpFaahk0cRs316U/D3fVrIPrYGVFMd3SPsGAOVAg+IaLxZ61KgAv
 +jhxQz1Lp5PE8K1eIU6k6YOyy0YIJaU4WCOwtd/pNO/MJp673NKOXcSEoj3h/H7Q4Bqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OENROdS91U3MaRFQWf1vp2tgnQhTDtvIlRV417kF+l4=; b=JzDrcB0gy2pw8phb2ThbbwmYTQ
 gOVlG46dBqEfVdq7rKE6i8B7coLdZZOQqjMLSdKegZYg0mPlrZQZGZ6FikFlgIIS9XDFtMfQEr0Mx
 acCUNSecrsdQdiYD2zhHIga6zV/ThKIG0uEvf/2pplA9GEYkl14w6QYN/lKVBs1aa5SI=;
Received: from out203-205-221-235.mail.qq.com ([203.205.221.235])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tQ0Ah-0003Fg-2J for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Dec 2024 08:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1735028485; bh=OENROdS91U3MaRFQWf1vp2tgnQhTDtvIlRV417kF+l4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=pfhwCSjq1N5Avly7dgUPL6J1VonkLGN9UBDMcjgKGfopZ4g3E58Ej1U1rtWU5YPtc
 SYgJGS0Yxdyod2JjEf4HL0t7SHbzYJjtflJHVuPtBSvmiEUqtELAfXEUH5cUj699un
 AA8Z32VYFUgvM3SDT6EToxRzRfxXRBWtx0Ilxm7g=
Received: from pek-lxu-l1.wrs.com ([114.244.57.34])
 by newxmesmtplogicsvrszb21-0.qq.com (NewEsmtp) with SMTP
 id 4540BCBE; Tue, 24 Dec 2024 16:17:20 +0800
X-QQ-mid: xmsmtpt1735028240tsfvcsy7k
Message-ID: <tencent_2E3A9E9B1B664BE21BCD2541BA63BB6E3308@qq.com>
X-QQ-XMAILINFO: NyTsQ4JOu2J2O9KT6n6/13avCetYvEZm+8BUOXnOIHaZ6NcvBzHZ8butcen3Rx
 8kIZTqnK7/vraUzv6/kCu3aHnb30WU+SWe9PZdtVB6tuOGLT/HrbgLf+TTg+BIf/JoDz1R+h5d66
 HO5n4S+C1tJXIi0TNDh4gquT7weGq7WeBznoO6Oa9BdVXIUNFmEAZo+pjGgEcBbKMpSAta62VU8P
 VRIKUZoiHiaxhGcCbMVQlswt9SJsLKetIeykdffXNk9H7+Kk/KgTUtZjvUoe/k9teG3wH/fqN1l1
 LPJP5aha/wzOkH0gd8vqI4kwhPs3NiHuIEowD0Cku9P3uYDrdsOmeeLMml2JTDOTHzMAQDOoNsVw
 ELpP+aZZXdbHL2XVMWstJusLZl4BxRGjvB+bPhr0kIJ+838hS+7EcVfV/ARrskxg64RIuJ4DFMDe
 VNNTQc1bSE83ReeBLOwEii6dx1C2FiE9a2eMSd87cSawTpZ+Y6ICKI3+q9qkFtfnBGqxTyRMGdip
 rm3QeWNRmoMdZL0Fx24xTnzEa3jWHWYai3q3erqOQUsqtFnOvib73Nv2WJL/Rprw7kL/BGt962Ip
 7K+DF6Fd9kbucZ9Q5SVpfkTqyU7OFJba7omPpTesCavo+2YabE52bOLf1XymZWnlvQWO69G+AHsi
 y50cd17w9oQrHpJXpzuNYFBX1qDF/JzA60oYjMlBhHKFbvlnNCTZ/CJf2yQQEfURWcvCkS9hjBDr
 4fNipxI4oYtM9q4IhnISP14zSXNuWTvpqpCMwXoBfweHeCehYTFUjPPRAr0x9w21w8ZBc6+RSk/1
 qAvJ+uQ8ONGBWybyP0iOPrGlsamVnMVA6poDQq/kQUovQaSNKPKd/ayfW4nCKLJR47R3B4zUseV6
 iMwClFK981o7a7qe8T6vkC0CUGVMNdaTsRBjjcBWd/IDYzb8IQRyn5E68XXGeJJuDoqvcGUlFh
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
To: eadavis@qq.com
Date: Tue, 24 Dec 2024 16:17:20 +0800
X-OQ-MSGID: <20241224081719.2610500-2-eadavis@qq.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <tencent_9D234F848D9AA5F68DB912075DB4DDDC1907@qq.com>
References: <tencent_9D234F848D9AA5F68DB912075DB4DDDC1907@qq.com>
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
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.235 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.235 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.235 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [203.205.221.235 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1tQ0Ah-0003Fg-2J
Subject: [Jfs-discussion] [PATCH V2] jfs: Prevent copying of nlink with
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

 fs/jfs/jfs_imap.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index a360b24ed320..b3146e335782 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -3035,6 +3035,7 @@ static int copy_from_dinode(struct dinode * dip, struct inode *ip)
 {
 	struct jfs_inode_info *jfs_ip = JFS_IP(ip);
 	struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
+	u32 di_nlink;
 
 	jfs_ip->fileset = le32_to_cpu(dip->di_fileset);
 	jfs_ip->mode2 = le32_to_cpu(dip->di_mode);
@@ -3053,7 +3054,12 @@ static int copy_from_dinode(struct dinode * dip, struct inode *ip)
 				ip->i_mode |= 0001;
 		}
 	}
-	set_nlink(ip, le32_to_cpu(dip->di_nlink));
+
+	di_nlink = le32_to_cpu(dip->di_nlink);
+	if (!di_nlink)
+		return -EIO;
+
+	set_nlink(ip, di_nlink);
 
 	jfs_ip->saved_uid = make_kuid(&init_user_ns, le32_to_cpu(dip->di_uid));
 	if (!uid_valid(sbi->uid))
-- 
2.47.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
