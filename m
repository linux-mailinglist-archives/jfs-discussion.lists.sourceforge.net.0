Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A591693B191
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 Jul 2024 15:25:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sWbzp-0001Rb-4G;
	Wed, 24 Jul 2024 13:25:33 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Lf6gZgkbAOgcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sWbp5-0007XN-M6 for jfs-discussion@lists.sourceforge.net;
 Wed, 24 Jul 2024 13:14:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T2gccljokEIWYvf68SwAhWPSJuCBs56qP6EOy/DnBtg=; b=Ru+dgOEJpy4qZw07Q77wsf13FT
 7Vea3AO1QbOFVM0DA0K3H1E+z70OWl9dQiY1pIeFDGdpMahu84cT7VQ1so8LwTr4HfScWc6Y5IfyW
 H7sF01XzGRO2na+dOGDmLvWJ1j6rkM0K3iwa72inRAJbFD2GXQv21taL9ggQ4+FxImIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=T2gccljokEIWYvf68SwAhWPSJuCBs56qP6EOy/DnBtg=; b=G
 fdQ00J3wFc/ze1c8X20hpIyRDVUXNsHByJDJM4Hoz85tgz7hJr27pEO2rRgxLn5SxkUksO1ClVqZ4
 viB6z+C5hGmrdyaGSfYJMJFFlQCQYxAljJjDBVVdTALRcR+qTqY/BjDcKkRmQbVaTPGs+wfdMjcYW
 vaYkeoEJzfhfZEX0=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sWbp4-0008Lg-RP for jfs-discussion@lists.sourceforge.net;
 Wed, 24 Jul 2024 13:14:27 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-3962d4671c7so104682645ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 24 Jul 2024 06:14:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721826861; x=1722431661;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=T2gccljokEIWYvf68SwAhWPSJuCBs56qP6EOy/DnBtg=;
 b=dlecqXzPpM5chM05u9V66lm/iLU25Jp1rjcGY1k++RNuOqDAwhIskI4tIVQsZ2n2LG
 lROF6rzid2JYQsoLG7YS7G/Yv3vfnyG45B6XPSHqkWYLWGTX9P2sN5Z6vvIGvfWsqR4D
 5QGGwOV/PtMIFKCAXnHhWi7oJzssQxu+BOo+XjTaLMm3UblbSWODF2QKzS2FIo+Z+iGi
 KaUirgAVtgQy88+hNFGdLmPlX32LjspmJpfOEfPvoj5uYJz3HDPWtZIHbap9npQVf/p6
 VRvbyzpw6XPES2sQuDgT3Xjh0nEfyWFdaNrPg569uBlDJBzWmwo4DIu0jnbny2YGMxWW
 yPAg==
X-Gm-Message-State: AOJu0Yy47rjC6YpXWCWTG1eMUxd2ItNCNmGutzJphaY/i6gczS9ByoxM
 QuWnIpimkPerqZQ410j584A7DfcPNnYUNRcr/0tLTJyokMptHwpC4txwFVmaTENQCrbUy26nwBC
 Wg7OHpHLp96LQvXVJLv3a7WbHfiSdHheOkhijPma9VfFTXw7GbuJxouc=
X-Google-Smtp-Source: AGHT+IEWzJeBz5WQC2ZMfw7s8+dd/ZOqNQLDKOEYsJul7ykX+pcgecdHHRlLh7rfUDpouoo+AXZpzqdjU0k3i0/1YEMLyiL/DGJ1
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:174a:b0:375:a55e:f5fc with SMTP id
 e9e14a558f8ab-398e430f50cmr10840565ab.1.1721826861102; Wed, 24 Jul 2024
 06:14:21 -0700 (PDT)
Date: Wed, 24 Jul 2024 06:14:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006bd089061dfe0e2c@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 7846b618e0a4
 Merge tag 'rtc-6.11' of git://git.kernel.org/.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=127ff749980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.199 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.199 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1sWbp4-0008Lg-RP
X-Mailman-Approved-At: Wed, 24 Jul 2024 13:25:31 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] WARNING: bad unlock balance in
 clear_inode
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
From: syzbot via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot <syzbot+a3473a74b23ecf1ceb67@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7846b618e0a4 Merge tag 'rtc-6.11' of git://git.kernel.org/..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=127ff749980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f4925140c45a2a50
dashboard link: https://syzkaller.appspot.com/bug?extid=a3473a74b23ecf1ceb67
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/43e8dc30bfe7/disk-7846b618.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2563411f0b58/vmlinux-7846b618.xz
kernel image: https://storage.googleapis.com/syzbot-assets/19d3b69b2212/bzImage-7846b618.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a3473a74b23ecf1ceb67@syzkaller.appspotmail.com

=====================================
WARNING: bad unlock balance detected!
6.10.0-syzkaller-11323-g7846b618e0a4 #0 Not tainted
-------------------------------------
syz-executor/5089 is trying to release lock (&xa->xa_lock) at:
[<ffffffff820eab99>] spin_unlock_irq include/linux/spinlock.h:401 [inline]
[<ffffffff820eab99>] clear_inode+0x69/0x160 fs/inode.c:625
but there are no more locks to release!

other info that might help us debug this:
1 lock held by syz-executor/5089:
 #0: ffff88807a6160e0 (&type->s_umount_key#76){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff88807a6160e0 (&type->s_umount_key#76){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff88807a6160e0 (&type->s_umount_key#76){+.+.}-{3:3}, at: deactivate_super+0xb5/0xf0 fs/super.c:505

stack backtrace:
CPU: 1 PID: 5089 Comm: syz-executor Not tainted 6.10.0-syzkaller-11323-g7846b618e0a4 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 print_unlock_imbalance_bug+0x256/0x2c0 kernel/locking/lockdep.c:5199
 __lock_release kernel/locking/lockdep.c:5436 [inline]
 lock_release+0x5cb/0xa30 kernel/locking/lockdep.c:5780
 __raw_spin_unlock_irq include/linux/spinlock_api_smp.h:157 [inline]
 _raw_spin_unlock_irq+0x16/0x50 kernel/locking/spinlock.c:202
 spin_unlock_irq include/linux/spinlock.h:401 [inline]
 clear_inode+0x69/0x160 fs/inode.c:625
 jfs_evict_inode+0xb5/0x440 fs/jfs/inode.c:166
 evict+0x2a8/0x630 fs/inode.c:669
 dispose_list fs/inode.c:702 [inline]
 evict_inodes+0x5f9/0x690 fs/inode.c:752
 generic_shutdown_super+0x9d/0x2d0 fs/super.c:627
 kill_block_super+0x44/0x90 fs/super.c:1685
 deactivate_locked_super+0xc4/0x130 fs/super.c:473
 cleanup_mnt+0x41f/0x4b0 fs/namespace.c:1373
 task_work_run+0x24f/0x310 kernel/task_work.c:222
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:114 [inline]
 exit_to_user_mode_prepare include/linux/entry-common.h:328 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:207 [inline]
 syscall_exit_to_user_mode+0x168/0x370 kernel/entry/common.c:218
 do_syscall_64+0x100/0x230 arch/x86/entry/common.c:89
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7efd9e576e87
Code: a8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 01 c3 48 c7 c2 a8 ff ff ff f7 d8 64 89 02 b8
RSP: 002b:00007ffd624f0338 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007efd9e576e87
RDX: 0000000000000000 RSI: 0000000000000009 RDI: 00007ffd624f03f0
RBP: 00007ffd624f03f0 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000246 R12: 00007ffd624f14b0
R13: 00007efd9e5e344c R14: 000000000001bd13 R15: 000000000001ba3e
 </TASK>
EXT4-fs (loop2): unmounting filesystem 76b65be2-f6da-4727-8c75-0525a5b65a09.


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
