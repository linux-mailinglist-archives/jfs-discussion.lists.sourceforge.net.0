Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCB060F909
	for <lists+jfs-discussion@lfdr.de>; Thu, 27 Oct 2022 15:30:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oo2xZ-0006Ta-CV;
	Thu, 27 Oct 2022 13:30:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3nrtZYwkbAJ0PVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1onpME-00012s-NS for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Oct 2022 22:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AptnPqhvl/RmbbRCiNAL+QuT41rFvT1BUdRpiTxff7s=; b=XJO2L1tfdy+6BjlmGxnFKyhO8w
 MHmLQDcp3waoYjBFHT5H+JVQKsfMQYYRIA7oIm5mCMANjdRvpyuUyI8d/q6AA+/mKVXJ3MCpsn5wj
 jxuy4Gil4A4n1St//TNPsR5rJqYbgGmQMQfQIstGwmSeTwStyJzhPfi22KZOl5NU7cxU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AptnPqhvl/RmbbRCiNAL+QuT41rFvT1BUdRpiTxff7s=; b=h
 C6sLfA9qzGehMxUVIKdycOz7aGiPdzfFWer7U4zQxw7zAE3LTgmShUtIgwHFT25ICEjEuFvQ0SaLA
 UwkflbUn8G23/v7OwuKJJyWz6d1sUQNDaz41TOiDZTP1lYLX0wJUjI7QXJstebiq3Rq5DIkreMaYW
 X1TL5eR0ah6o77hQ=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1onpMC-0002P6-HV for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Oct 2022 22:58:46 +0000
Received: by mail-io1-f70.google.com with SMTP id
 z5-20020a5e9245000000b006bd430ff7c0so8236437iop.7
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 26 Oct 2022 15:58:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AptnPqhvl/RmbbRCiNAL+QuT41rFvT1BUdRpiTxff7s=;
 b=Vi0Vm1Gp4v9t6KGtQqAXEPv8nWwAw9jWi44tMrCBgNjRzEXMAzd2NI0gUKB8fHvuJJ
 5tQ0q32rIz/r5TMupBK4WESc0qr7+KHfMzdycK+6FQpWs32p7RnwV0lrr0yHerxWPWqM
 Yb4TioJmDISFvPpvON11ygpNG8rzlOZE79wwfpvx7OL1CQcupcSBe6LhvwP9m5vvvMpv
 6hA38VsHwfl/nVDRDxhzeQAOLCTsWMPQBSiinacsdKlMb6xSytPz5W9JXyCY07IOD2Dk
 e+vHA0nooqXAEaUdZJAibvBCzieggNa16h06wLY51zn8iVY4IlYZ5JJkhYfFyhmeqT1t
 TimA==
X-Gm-Message-State: ACrzQf3DU4oXRAXyMHFS+HV4OOR44K/78F34+3VuO+Ie9PYRU8rik69u
 sho8q6RVITIwtjRscStVGZ/Fzns66z/LjWP1RxJd0IRVr5BT
X-Google-Smtp-Source: AMsMyM5PN9yi7mHZtsYMRFVhxnlgTt4s3V1oPQBxV81NOgKTL2VMYwMUN+FaG4X7IrlCSMPeSulYRfJSbgAyX56tZ+vVJTOPi0cg
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a41:b0:2fa:969d:fcd0 with SMTP id
 u1-20020a056e021a4100b002fa969dfcd0mr29670824ilv.6.1666825118981; Wed, 26 Oct
 2022 15:58:38 -0700 (PDT)
Date: Wed, 26 Oct 2022 15:58:38 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001ea37505ebf7f76f@google.com>
From: syzbot <syzbot+1d84a1682e4673d5c4fb@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 4da34b7d175d
 Merge tag 'thermal-6.1-rc2' of git://git.kern.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=16d8632c880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1onpMC-0002P6-HV
X-Mailman-Approved-At: Thu, 27 Oct 2022 13:30:11 +0000
Subject: [Jfs-discussion] [syzbot] INFO: task hung in lock_metapage
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

HEAD commit:    4da34b7d175d Merge tag 'thermal-6.1-rc2' of git://git.kern..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=16d8632c880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ea03ca45176080bc
dashboard link: https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16d34f76880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=140885ba880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/16383add8425/disk-4da34b7d.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/98ccd5b01b67/vmlinux-4da34b7d.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/b4f21acc14af/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1d84a1682e4673d5c4fb@syzkaller.appspotmail.com

INFO: task jfsCommit:121 blocked for more than 143 seconds.
      Not tainted 6.1.0-rc1-syzkaller-00249-g4da34b7d175d #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:jfsCommit       state:D stack:28520 pid:121   ppid:2      flags:0x00004000
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5191 [inline]
 __schedule+0xae9/0x53f0 kernel/sched/core.c:6503
 schedule+0xda/0x1b0 kernel/sched/core.c:6579
 io_schedule+0xba/0x130 kernel/sched/core.c:8723
 __lock_metapage fs/jfs/jfs_metapage.c:50 [inline]
 lock_metapage+0x235/0x4d0 fs/jfs/jfs_metapage.c:64
 __get_metapage+0x3d8/0xef0 fs/jfs/jfs_metapage.c:639
 diIAGRead.isra.0+0xcd/0x140 fs/jfs/jfs_imap.c:2662
 diFree+0x9ed/0x2660 fs/jfs/jfs_imap.c:955
 jfs_evict_inode+0x3c1/0x4a0 fs/jfs/inode.c:156
 evict+0x2ed/0x6b0 fs/inode.c:664
 iput_final fs/inode.c:1747 [inline]
 iput.part.0+0x59b/0x880 fs/inode.c:1773
 iput+0x58/0x70 fs/inode.c:1763
 txUpdateMap+0x97c/0xc50 fs/jfs/jfs_txnmgr.c:2362
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x5bb/0xaa0 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x2e4/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
INFO: lockdep is turned off.
NMI backtrace for cpu 0
CPU: 0 PID: 28 Comm: khungtaskd Not tainted 6.1.0-rc1-syzkaller-00249-g4da34b7d175d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 nmi_cpu_backtrace.cold+0x24/0x18a lib/nmi_backtrace.c:111
 nmi_trigger_cpumask_backtrace+0x32f/0x3c0 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:148 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:220 [inline]
 watchdog+0xc71/0xfc0 kernel/hung_task.c:377
 kthread+0x2e4/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 PID: 4980 Comm: syz-executor309 Not tainted 6.1.0-rc1-syzkaller-00249-g4da34b7d175d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
RIP: 0010:migrate_disable_switch kernel/sched/core.c:2200 [inline]
RIP: 0010:__schedule+0x4a7/0x53f0 kernel/sched/core.c:6497
Code: 4d 89 a5 18 0a 00 00 48 b8 00 00 00 00 00 fc ff df 48 c1 ea 03 80 3c 02 00 0f 85 8f 41 00 00 48 8b 85 10 ff ff ff 48 83 00 01 <48> 8b 85 70 ff ff ff 48 8d b8 38 04 00 00 48 b8 00 00 00 00 00 fc
RSP: 0018:ffffc90004c4fc50 EFLAGS: 00000002
RAX: ffff88807ce28768 RBX: ffff88807ce28000 RCX: ffffffff898fb935
RDX: 1ffff1100f9c50ed RSI: 0000000000000008 RDI: ffff8880b9b3a190
RBP: ffffc90004c4fd90 R08: 0000000000000001 R09: ffff88807ce28007
R10: ffffed100f9c5000 R11: 0000000000000002 R12: ffff888020693a80
R13: ffff8880b9b3a100 R14: ffff88807ce28290 R15: ffffc90004c4fd28
FS:  0000555556466300(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f2c623c9b80 CR3: 0000000016fdd000 CR4: 0000000000350ee0
Call Trace:
 <TASK>
 schedule+0xda/0x1b0 kernel/sched/core.c:6579
 ptrace_stop.part.0+0x490/0x8c0 kernel/signal.c:2308
 ptrace_stop kernel/signal.c:2233 [inline]
 ptrace_do_notify+0x215/0x2b0 kernel/signal.c:2345
 ptrace_notify+0xc4/0x140 kernel/signal.c:2357
 ptrace_report_syscall include/linux/ptrace.h:420 [inline]
 ptrace_report_syscall_exit include/linux/ptrace.h:482 [inline]
 syscall_exit_work kernel/entry/common.c:251 [inline]
 syscall_exit_to_user_mode_prepare+0x129/0x280 kernel/entry/common.c:278
 __syscall_exit_to_user_mode_work kernel/entry/common.c:283 [inline]
 syscall_exit_to_user_mode+0x9/0x50 kernel/entry/common.c:296
 do_syscall_64+0x42/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f2c623582d6
Code: b8 ff ff ff ff eb b9 e8 28 34 04 00 0f 1f 84 00 00 00 00 00 49 89 ca 64 8b 04 25 18 00 00 00 85 c0 75 11 b8 12 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 5a c3 90 48 83 ec 28 48 89 54 24 10 48 89 74
RSP: 002b:00007ffd4d6194d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000012
RAX: 00000000000000a0 RBX: 0000000000000003 RCX: 00007f2c623582d6
RDX: 00000000000000a0 RSI: 0000000020031a60 RDI: 0000000000000003
RBP: 00007ffd4d6194f0 R08: 00007ffd4d619370 R09: 00005555564662c0
R10: 0000000000f7af80 R11: 0000000000000246 R12: 0000000000000322
R13: 0000000000000003 R14: 00000000000001b2 R15: 0000000020002ab0
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
