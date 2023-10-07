Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E677C85F1
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Oct 2023 14:39:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qrHRy-0007Ak-B1;
	Fri, 13 Oct 2023 12:39:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3stohZQkbAB8NTUF5GG9M5KKD8.BJJBG9PN9M7JIO9IO.7JH@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qpGEl-000322-So for jfs-discussion@lists.sourceforge.net;
 Sat, 07 Oct 2023 22:57:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/FuzX2nPNuMQVSQDYDe7//3H5al9fCwsTjHKS2cCyXk=; b=fLuxOnRsyNpaGm5cpsci95WJ1n
 CO1Gj3tuE/L0H6YCRzDq6NO/VFJ60DB04ps/fOfYGRyWns4pYw/aWBNTUYd2HqS0GltIe4A4LfsE2
 4R47Y2c8a+Ruc75a2h4FGnBwhIJP6RfHFHaFuxnk2yfb63A1qTjwbOelPiK+mAQsyiwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/FuzX2nPNuMQVSQDYDe7//3H5al9fCwsTjHKS2cCyXk=; b=M
 kVbC4UB6pfgbQNRjuOplx09h6l0tGUDYHcNCEQSGTH2i1uKzrDhjouf/MwzqdIPP/0GL/okZRV5MN
 JM96MBgkbUn/BfEsPxw+QfFmmLEZk0wp5QCseMGnOwcmyYfMrENYeR6Av8DHTMnBcU3vPNtNOZGeI
 jIPGNfiGAKYjRU8Q=;
Received: from mail-qk1-f208.google.com ([209.85.222.208])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qpGEi-006CLI-Ta for jfs-discussion@lists.sourceforge.net;
 Sat, 07 Oct 2023 22:57:32 +0000
Received: by mail-qk1-f208.google.com with SMTP id
 af79cd13be357-774105e8c7fso367542985a.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 07 Oct 2023 15:57:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696719443; x=1697324243;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/FuzX2nPNuMQVSQDYDe7//3H5al9fCwsTjHKS2cCyXk=;
 b=spYDTbjI/0tdS0YBzzVH9JzQxn0Jh1EDKtFxAHcxz6v6ybupelvo7C9rQ594zb3V8t
 IVHrSYdiRlJtPN/bqzC4BjS7bcToVqUhSps3IQH2bbOhJU1xxpaM3J3EE3r/CcjTWHNG
 QtyOaD4XhFCH5va73oaWo4StDeX/Kx8WsXrsUmO2KvP3p3eyjjEYU0F7tF6gdlrITNUY
 JEqWcAUj2128ib8YMqUOKBKAij4SZ44yjR//4m2F64sE88WYCxw01uvImLm/oDVcM+ga
 boZlHDYVgF5T2D3+GI/5izc4Q+YVH97ygRIRZO68K2uLrcMisT8mYdWdVBQqvWeGHziG
 otHw==
X-Gm-Message-State: AOJu0YwGtyindLEPmfWesi8zQ+UMlZTv5ZvhBcK6HOsg8OmuOl2E1QNh
 FkHwMGoytuU0M4m2Olv4rvzJB0QdmjFZGltkpyPM08ZZhpQW
X-Google-Smtp-Source: AGHT+IHF3ARZYWBMEZgnBiPSQaqjV1Gi6TB9lrtov3Lnd06O5NqUQK8jIrbRWFtRJWoStLDz3OmYSnBrbmLaFMvoZ/JVnzkNkk3T
MIME-Version: 1.0
X-Received: by 2002:a05:6808:14c7:b0:3a7:b55e:a54 with SMTP id
 f7-20020a05680814c700b003a7b55e0a54mr6066189oiw.1.1696717490762; Sat, 07 Oct
 2023 15:24:50 -0700 (PDT)
Date: Sat, 07 Oct 2023 15:24:50 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005239cf060727d3f6@google.com>
To: axboe@kernel.dk, brauner@kernel.org, dave.kleikamp@oracle.com, 
 hare@suse.de, hch@lst.de, jack@suse.cz, jfs-discussion@lists.sourceforge.net, 
 johannes.thumshirn@wdc.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 2.7 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: c9f2baaa18b5
 Add linux-next specific files for 20231003 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1319f981680000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.208 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.208 listed in wl.mailspike.net]
X-Headers-End: 1qpGEi-006CLI-Ta
X-Mailman-Approved-At: Fri, 13 Oct 2023 12:39:27 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] general protection fault in
 lbmStartIO
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
Reply-To: syzbot <syzbot+23bc20037854bb335d59@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    c9f2baaa18b5 Add linux-next specific files for 20231003
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1319f981680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3fe9c462fee1649f
dashboard link: https://syzkaller.appspot.com/bug?extid=23bc20037854bb335d59
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16204836680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12b62ee6680000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/5361e41384fe/disk-c9f2baaa.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/7028b209124d/vmlinux-c9f2baaa.xz
kernel image: https://storage.googleapis.com/syzbot-assets/a167dc667ee5/bzImage-c9f2baaa.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/ef5dd9fc6a1b/mount_0.gz

The issue was bisected to:

commit bacfceeda53ea9ee9af714245e6c67aa70632b63
Author: Jan Kara <jack@suse.cz>
Date:   Wed Sep 27 09:34:30 2023 +0000

    jfs: Convert to bdev_open_by_dev()

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13a06d8a680000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=10606d8a680000
console output: https://syzkaller.appspot.com/x/log.txt?x=17a06d8a680000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+23bc20037854bb335d59@syzkaller.appspotmail.com
Fixes: bacfceeda53e ("jfs: Convert to bdev_open_by_dev()")

general protection fault, probably for non-canonical address 0xdffffc0000000000: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
CPU: 1 PID: 5058 Comm: syz-executor352 Not tainted 6.6.0-rc4-next-20231003-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/06/2023
RIP: 0010:lbmStartIO+0xb7/0x3a0 fs/jfs/jfs_logmgr.c:2116
Code: fc ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 cf 02 00 00 48 b8 00 00 00 00 00 fc ff df 49 8b 5c 24 20 48 89 da 48 c1 ea 03 <80> 3c 02 00 0f 85 86 02 00 00 48 8b 3b ba 01 08 00 00 b9 40 0c 00
RSP: 0018:ffffc90003a5fa90 EFLAGS: 00010246
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffffffff82fd8ed3
RDX: 0000000000000000 RSI: ffffffff82fd8ee1 RDI: ffff88807bb07020
RBP: ffff88801764d800 R08: 0000000000000005 R09: 0000000000000003
R10: 0000000000000002 R11: ffffffff910eb4a0 R12: ffff88807bb07000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000002
FS:  0000555555ed5380(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fffc6e0506c CR3: 000000007c5c6000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 lbmWrite+0x32e/0x470 fs/jfs/jfs_logmgr.c:2067
 lmNextPage.isra.0+0x278/0x700 fs/jfs/jfs_logmgr.c:616
 lmWriteRecord+0xb6d/0x12a0 fs/jfs/jfs_logmgr.c:529
 lmLogSync+0x182/0x820 fs/jfs/jfs_logmgr.c:969
 jfs_syncpt+0x89/0xa0 fs/jfs/jfs_logmgr.c:1041
 jfs_sync_fs+0x83/0xa0 fs/jfs/super.c:685
 sync_filesystem fs/sync.c:56 [inline]
 sync_filesystem+0x109/0x280 fs/sync.c:30
 generic_shutdown_super+0x7e/0x3c0 fs/super.c:669
 kill_block_super+0x3b/0x90 fs/super.c:1652
 deactivate_locked_super+0xbc/0x1a0 fs/super.c:484
 deactivate_super+0xde/0x100 fs/super.c:517
 cleanup_mnt+0x222/0x3d0 fs/namespace.c:1256
 task_work_run+0x14d/0x240 kernel/task_work.c:180
 ptrace_notify+0x10c/0x130 kernel/signal.c:2399
 ptrace_report_syscall include/linux/ptrace.h:411 [inline]
 ptrace_report_syscall_exit include/linux/ptrace.h:473 [inline]
 syscall_exit_work kernel/entry/common.c:251 [inline]
 syscall_exit_to_user_mode_prepare+0x120/0x220 kernel/entry/common.c:278
 __syscall_exit_to_user_mode_work kernel/entry/common.c:283 [inline]
 syscall_exit_to_user_mode+0xd/0x60 kernel/entry/common.c:296
 do_syscall_64+0x44/0xb0 arch/x86/entry/common.c:87
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7ff1e4cd5547
Code: 07 00 48 83 c4 08 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 b8 a6 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 01 c3 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8
RSP: 002b:00007fffc6e05058 EFLAGS: 00000202 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007ff1e4cd5547
RDX: 0000000000000000 RSI: 000000000000000a RDI: 00007fffc6e05110
RBP: 00007fffc6e05110 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000202 R12: 00007fffc6e06180
R13: 0000555555ed66c0 R14: 431bde82d7b634db R15: 00007fffc6e061a0
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:lbmStartIO+0xb7/0x3a0 fs/jfs/jfs_logmgr.c:2116
Code: fc ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 cf 02 00 00 48 b8 00 00 00 00 00 fc ff df 49 8b 5c 24 20 48 89 da 48 c1 ea 03 <80> 3c 02 00 0f 85 86 02 00 00 48 8b 3b ba 01 08 00 00 b9 40 0c 00
RSP: 0018:ffffc90003a5fa90 EFLAGS: 00010246
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffffffff82fd8ed3
RDX: 0000000000000000 RSI: ffffffff82fd8ee1 RDI: ffff88807bb07020
RBP: ffff88801764d800 R08: 0000000000000005 R09: 0000000000000003
R10: 0000000000000002 R11: ffffffff910eb4a0 R12: ffff88807bb07000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000002
FS:  0000555555ed5380(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555555ede6f8 CR3: 000000007c5c6000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess), 2 bytes skipped:
   0:	df 48 89             	fisttps -0x77(%rax)
   3:	fa                   	cli
   4:	48 c1 ea 03          	shr    $0x3,%rdx
   8:	80 3c 02 00          	cmpb   $0x0,(%rdx,%rax,1)
   c:	0f 85 cf 02 00 00    	jne    0x2e1
  12:	48 b8 00 00 00 00 00 	movabs $0xdffffc0000000000,%rax
  19:	fc ff df
  1c:	49 8b 5c 24 20       	mov    0x20(%r12),%rbx
  21:	48 89 da             	mov    %rbx,%rdx
  24:	48 c1 ea 03          	shr    $0x3,%rdx
* 28:	80 3c 02 00          	cmpb   $0x0,(%rdx,%rax,1) <-- trapping instruction
  2c:	0f 85 86 02 00 00    	jne    0x2b8
  32:	48 8b 3b             	mov    (%rbx),%rdi
  35:	ba 01 08 00 00       	mov    $0x801,%edx
  3a:	b9                   	.byte 0xb9
  3b:	40 0c 00             	rex or $0x0,%al


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
