Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EC05FB30E
	for <lists+jfs-discussion@lfdr.de>; Tue, 11 Oct 2022 15:15:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oiF6Q-0000Qj-9B;
	Tue, 11 Oct 2022 13:15:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3QDdFYwkbAOMXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oiBZ9-00024x-HU for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Oct 2022 09:28:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bBH9PAL7BQHFNEeUcKRoFLA6m358WuCZdb8vixqEZaA=; b=V/KHpVlXpPrmA8H3rDL3dmQCDy
 vaXauvAYz3eHRcDxJrVD0MIuHcQsUzB6q2nbd7vJ4sXhzszDcvh6XbTqdDBOnOovVDli5MMoHG1Mn
 Ls8OvIRY9PUwkW/FAHswPwvFgxGMMMcfHhPc3vyvlrEiECdM4RfIWAH2ZaqI3XzbKA0I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bBH9PAL7BQHFNEeUcKRoFLA6m358WuCZdb8vixqEZaA=; b=O
 659WIAMjSuy0Lf7aiS18sVgqkkwD6FWIjmAauw9vg2i9d8IFhFAGo4HIFzpC+wYoMLYSH6wHOWVIt
 ws2ZqxPokJYuMD5LB6uO2A2UtjhyNwpHh3DfAnSpaog+Q5DitfCNf9oNxD1kh623+7ZUq9e0Il/GC
 be0qIXvYC6knEKOY=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oiBYz-001vM0-PX for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Oct 2022 09:28:41 +0000
Received: by mail-io1-f69.google.com with SMTP id
 a15-20020a6b660f000000b006a0d0794ad1so8804764ioc.6
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 11 Oct 2022 02:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bBH9PAL7BQHFNEeUcKRoFLA6m358WuCZdb8vixqEZaA=;
 b=fWK8uyWazAkCmCc99YuWQhdqBZ4e29tXFwiOaKmY+aVojbj+qgQwLiIVSa0mgSx25f
 gtKsZe/hElbOU8IJK3BQ94IcSwhk2+N5pAAByDDQX76p7CHBtPhkP0KuJSASq+uvXNI3
 LXdp2V93LvPWIP3zcgsdPPS4906jloqMocvumWiKPTROuJ9xnB3GofREGxT8MByFopE7
 1XEqisa5Hs0JPU9R6JvT+EsDVzxDBid60iEfKKocuxw1ZjGV2Be0CnJR5DwAqWTWHIhg
 ewKm+l1D47jsKo8R82lIbok9333KGCjDHJkgQaVgMHCG4U5/9UJFFfltYTo1ZMU39To4
 qFBw==
X-Gm-Message-State: ACrzQf0g6j4JjjFh4yqvs53vYtfl2wYctI5Qq8krHLZR4+P5mZ56sGGj
 vX9gZ5LI1IX/lkznnVAjW7gtDjmAj2+sJkL2jhqpPl4spd35
X-Google-Smtp-Source: AMsMyM5EsfM+DWUUwqm4r9s7IBwgUU3MPv88gdEwV6gRVxsKY1pgmCDZWNrOpWgEE6vSqX0bAdEMDMoMyoL4rQRP/1g/IJeL5fUp
MIME-Version: 1.0
X-Received: by 2002:a05:6602:1595:b0:6a1:cfa8:bff5 with SMTP id
 e21-20020a056602159500b006a1cfa8bff5mr10285645iow.94.1665480512214; Tue, 11
 Oct 2022 02:28:32 -0700 (PDT)
Date: Tue, 11 Oct 2022 02:28:32 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004f9dd605eabee6dc@google.com>
From: syzbot <syzbot+84c274731411665e6c52@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 493ffd6605b2
 Merge tag 'ucount-rlimits-cleanups-for-v5.19'.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=104781dc880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
X-Headers-End: 1oiBYz-001vM0-PX
X-Mailman-Approved-At: Tue, 11 Oct 2022 13:15:19 +0000
Subject: [Jfs-discussion] [syzbot] INFO: task hung in __get_metapage
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=104781dc880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=84c274731411665e6c52
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1697c1a4880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=103e09dc880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f1ff6481e26f/disk-493ffd66.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/101bd3c7ae47/vmlinux-493ffd66.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/c56d1648ea0c/mount_2.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+84c274731411665e6c52@syzkaller.appspotmail.com

INFO: task jfsCommit:121 blocked for more than 143 seconds.
      Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:jfsCommit       state:D stack:24280 pid:  121 ppid:     2 flags:0x00004000
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5183 [inline]
 __schedule+0x91f/0xdf0 kernel/sched/core.c:6495
 schedule+0xcb/0x190 kernel/sched/core.c:6571
 io_schedule+0x83/0x100 kernel/sched/core.c:8715
 __lock_metapage+0x209/0x330 fs/jfs/jfs_metapage.c:50
 lock_metapage fs/jfs/jfs_metapage.c:64 [inline]
 __get_metapage+0x849/0xff0 fs/jfs/jfs_metapage.c:639
 diIAGRead+0xca/0x130 fs/jfs/jfs_imap.c:2662
 diFree+0x8fa/0x2c90 fs/jfs/jfs_imap.c:955
 jfs_evict_inode+0x323/0x440 fs/jfs/inode.c:156
 evict+0x2a4/0x620 fs/inode.c:664
 txUpdateMap+0x8eb/0xaa0 fs/jfs/jfs_txnmgr.c:2362
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x433/0xba0 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
INFO: lockdep is turned off.
NMI backtrace for cpu 0
CPU: 0 PID: 29 Comm: khungtaskd Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 nmi_cpu_backtrace+0x425/0x450 lib/nmi_backtrace.c:111
 nmi_trigger_cpumask_backtrace+0x169/0x280 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:148 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:212 [inline]
 watchdog+0xcd5/0xd20 kernel/hung_task.c:369
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 PID: 3611 Comm: strace-static-x Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
RIP: 0010:__might_fault+0x7d/0x110 mm/memory.c:5582
Code: c0 ff 5b 41 5c 41 5e 41 5f 5d c3 4c 89 ff 44 89 f6 e8 67 a1 96 ff 48 81 c3 28 05 00 00 48 89 dd 48 c1 ed 03 42 80 7c 25 00 00 <74> 08 48 89 df e8 39 2c 14 00 48 8b 3b 48 85 ff 74 58 48 81 c7 28
RSP: 0018:ffffc90003bcfc50 EFLAGS: 00000246
RAX: d231c7be326ee100 RBX: ffff88801c48dda8 RCX: 0000000000000000
RDX: ffff88801c48d880 RSI: ffff88801c48dcbc RDI: ffffc90003bcfbc0
RBP: 1ffff11003891bb5 R08: ffffffff81c5bf8c R09: ffffed1003c3a0dd
R10: ffffed1003c3a0dd R11: 1ffff11003c3a0dc R12: dffffc0000000000
R13: 1ffff92000779f94 R14: 00000000000006a5 R15: ffffffff8a8c3bf8
FS:  0000000000d12340(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f3f1d8b2c10 CR3: 000000001d844000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 kernel_wait4+0x2ca/0x3c0 kernel/exit.c:1701
 __do_sys_wait4 kernel/exit.c:1727 [inline]
 __se_sys_wait4 kernel/exit.c:1723 [inline]
 __x64_sys_wait4+0x117/0x1c0 kernel/exit.c:1723
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x4d49a6
Code: 00 00 00 90 31 c9 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 49 89 ca 64 8b 04 25 18 00 00 00 85 c0 75 11 b8 3d 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 5a c3 90 48 83 ec 28 89 54 24 14 48 89 74 24
RSP: 002b:00007ffd0333c588 EFLAGS: 00000246 ORIG_RAX: 000000000000003d
RAX: ffffffffffffffda RBX: 0000000000d122f8 RCX: 00000000004d49a6
RDX: 0000000040000000 RSI: 00007ffd0333c5ac RDI: 00000000ffffffff
RBP: 0000000000000000 R08: 0000000000000017 R09: 0000000000000004
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000d182b0
R13: 0000000000000000 R14: 00007ffd0333c5ac R15: 0000000000617180
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
