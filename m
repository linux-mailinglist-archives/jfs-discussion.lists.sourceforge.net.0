Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 288D278CD98
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Aug 2023 22:38:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qb5Ty-0006cY-4S;
	Tue, 29 Aug 2023 20:38:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Sk3uZAkbAMs9FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qb5Ie-0006Hu-4G for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Aug 2023 20:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HC84qNqQEMgT1ZfsoGAGwcyJ1K/TCL9FUPOwtG8+cAA=; b=Z1vHz+Hecx1Qg51E8tzIIN16nM
 5lXrlkpBYSUIh4pOYzJhBESP2obTeleJBtOqPflKHnHMGJDJg2mirdfUz5//ULSFBvNgzdQvmLGr1
 xxKigWszFQOgbMSl+/J17U5VqZ6/FrdRE7Zy75Cg5g2JTdyphSWoeLmt6UF1sc9sGip4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HC84qNqQEMgT1ZfsoGAGwcyJ1K/TCL9FUPOwtG8+cAA=; b=g
 8RYGe3iF2UFRTti8gU5x5sR2bCaOlzjc6F0VElmLGuDd12JfBejcejQk7w8AXRfnSEuSqJSSo3/2O
 pQxE0tMG73URjiRZt7AiQfUp1gkqujFEYF3V9tGGQGoZVOhk0vC5RIaKZ6mU72XtN6QUycOx4YMoX
 4C+G07qu4xR27MTM=;
Received: from mail-yw1-f205.google.com ([209.85.128.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qb5IV-0000tj-Aw for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Aug 2023 20:26:54 +0000
Received: by mail-yw1-f205.google.com with SMTP id
 00721157ae682-59501b014f4so40452417b3.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 29 Aug 2023 13:26:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693340801; x=1693945601;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HC84qNqQEMgT1ZfsoGAGwcyJ1K/TCL9FUPOwtG8+cAA=;
 b=Lmua1NSmS9oMddZHVNTPBD7cw11stdaaAaRz6nOFE9TMfVAWDQ4k9cnfL3Gf/m5Qpl
 9SAkAITQ2V16GGdDfZw7Gri3/3lrnC/9X2udHaB+iP3LSNytGJbOPX4OZl96Px2VjgUQ
 foe/D783lPIRWxyGJSjZbPI0kfX23CPA09Wrfcpk2tmLJJ902kjbNy+tdfhcY/TwnXXy
 eyrju2dlOD/XXo9PVMkadif7gP3PMmubfjvdQBKHgCRW/I6+/1zZzdiu839VEv4WuK2F
 G5bvZ8ipDwRWyQqleo3wgfpbMAQBkqsOUAarKxxFWIuxCX9X7w0RzT9di7lf3i22z7BU
 KAbw==
X-Gm-Message-State: AOJu0Yym2wEDBGbEyN+xeiCGIcT/mz3/gTKwVGukSYhebebn+js1G3Gr
 A2+1Cl0LU/Bf906hdbbaMu2jtr3yBuNlewcGBNphUUQXgsP/mGov8A==
X-Google-Smtp-Source: AGHT+IGARoy1wpkyocTBY4c8QJ5HKan+fm1Nl0+ArCAHt2Iqaxha8PdNQmIMx/K20FTd+cE++VXw2O+uTGX1M3Hn00DJOWCdU45E
MIME-Version: 1.0
X-Received: by 2002:a17:90b:1047:b0:26d:14f2:b4e1 with SMTP id
 gq7-20020a17090b104700b0026d14f2b4e1mr50210pjb.8.1693338954764; Tue, 29 Aug
 2023 12:55:54 -0700 (PDT)
Date: Tue, 29 Aug 2023 12:55:54 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e21aa80604153281@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 4f9e7fabf864
 Merge tag 'trace-v6.5-rc6' of git://git.kerne.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=14bfc5eba80000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.205 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.205 listed in wl.mailspike.net]
X-Headers-End: 1qb5IV-0000tj-Aw
X-Mailman-Approved-At: Tue, 29 Aug 2023 20:38:37 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in
 jfs_commit_inode (2)
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
Reply-To: syzbot <syzbot+9157524e62303fd7b21c@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    4f9e7fabf864 Merge tag 'trace-v6.5-rc6' of git://git.kerne..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=14bfc5eba80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1b32f62c755c3a9c
dashboard link: https://syzkaller.appspot.com/bug?extid=9157524e62303fd7b21c
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=101aff5ba80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14d78db0680000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/acffca8b8b8e/disk-4f9e7fab.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/456bbc08eede/vmlinux-4f9e7fab.xz
kernel image: https://storage.googleapis.com/syzbot-assets/c6ea47aa41f8/bzImage-4f9e7fab.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/08b2c3496eff/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17d2b870680000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1432b870680000
console output: https://syzkaller.appspot.com/x/log.txt?x=1032b870680000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9157524e62303fd7b21c@syzkaller.appspotmail.com

INFO: task kworker/u4:3:42 blocked for more than 143 seconds.
      Not tainted 6.5.0-rc7-syzkaller-00104-g4f9e7fabf864 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:kworker/u4:3    state:D stack:22416 pid:42    ppid:2      flags:0x00004000
Workqueue: writeback wb_workfn (flush-7:0)
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5381 [inline]
 __schedule+0x1873/0x48f0 kernel/sched/core.c:6710
 schedule+0xc3/0x180 kernel/sched/core.c:6786
 schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:6845
 __mutex_lock_common+0xe33/0x2530 kernel/locking/mutex.c:679
 __mutex_lock kernel/locking/mutex.c:747 [inline]
 mutex_lock_nested+0x1b/0x20 kernel/locking/mutex.c:799
 jfs_commit_inode+0x246/0x580 fs/jfs/inode.c:102
 jfs_write_inode+0x143/0x210 fs/jfs/inode.c:132
 write_inode fs/fs-writeback.c:1456 [inline]
 __writeback_single_inode+0x69b/0xfa0 fs/fs-writeback.c:1668
 writeback_sb_inodes+0x8e3/0x11d0 fs/fs-writeback.c:1894
 __writeback_inodes_wb+0x11b/0x260 fs/fs-writeback.c:1965
 wb_writeback+0x461/0xc60 fs/fs-writeback.c:2072
 wb_check_background_flush fs/fs-writeback.c:2142 [inline]
 wb_do_writeback fs/fs-writeback.c:2230 [inline]
 wb_workfn+0xc6f/0xff0 fs/fs-writeback.c:2257
 process_one_work+0x92c/0x12c0 kernel/workqueue.c:2600
 worker_thread+0xa63/0x1210 kernel/workqueue.c:2751
 kthread+0x2b8/0x350 kernel/kthread.c:389
 ret_from_fork+0x2e/0x60 arch/x86/kernel/process.c:145
 ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304
 </TASK>

Showing all locks held in the system:
1 lock held by rcu_tasks_kthre/13:
 #0: ffffffff8d3295f0 (rcu_tasks.tasks_gp_mutex){+.+.}-{3:3}, at: rcu_tasks_one_gp+0x29/0xd20 kernel/rcu/tasks.h:522
1 lock held by rcu_tasks_trace/14:
 #0: ffffffff8d3299b0 (rcu_tasks_trace.tasks_gp_mutex){+.+.}-{3:3}, at: rcu_tasks_one_gp+0x29/0xd20 kernel/rcu/tasks.h:522
1 lock held by khungtaskd/28:
 #0: ffffffff8d329420 (rcu_read_lock){....}-{1:2}, at: rcu_lock_acquire+0x0/0x30
4 locks held by kworker/u4:3/42:
 #0: ffff888019676938 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work+0x7e3/0x12c0 kernel/workqueue.c:2572
 #1: ffffc90000b37d00 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work+0x82b/0x12c0 kernel/workqueue.c:2574
 #2: ffff8880796080e0 (&type->s_umount_key#43){.+.+}-{3:3}, at: trylock_super+0x1f/0xf0 fs/super.c:413
 #3: ffff88807866b008 (&jfs_ip->commit_mutex){+.+.}-{3:3}, at: jfs_commit_inode+0x246/0x580 fs/jfs/inode.c:102
2 locks held by getty/4764:
 #0: ffff888029ad2098 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x25/0x70 drivers/tty/tty_ldisc.c:243
 #1: ffffc900015c02f0 (&ldata->atomic_read_lock){+.+.}-{3:3}, at: n_tty_read+0x6b1/0x1dc0 drivers/tty/n_tty.c:2187
4 locks held by syz-executor320/5013:

=============================================

NMI backtrace for cpu 1
CPU: 1 PID: 28 Comm: khungtaskd Not tainted 6.5.0-rc7-syzkaller-00104-g4f9e7fabf864 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/26/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 nmi_cpu_backtrace+0x498/0x4d0 lib/nmi_backtrace.c:113
 nmi_trigger_cpumask_backtrace+0x187/0x300 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:160 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:222 [inline]
 watchdog+0xec2/0xf00 kernel/hung_task.c:379
 kthread+0x2b8/0x350 kernel/kthread.c:389
 ret_from_fork+0x2e/0x60 arch/x86/kernel/process.c:145
 ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304
 </TASK>
Sending NMI from CPU 1 to CPUs 0:
NMI backtrace for cpu 0
CPU: 0 PID: 4457 Comm: klogd Not tainted 6.5.0-rc7-syzkaller-00104-g4f9e7fabf864 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/26/2023
RIP: 0010:lockdep_hardirqs_on_prepare+0x1a5/0x7a0 kernel/locking/lockdep.c:4363
Code: b1 97 7e 85 c0 0f 85 f4 03 00 00 65 48 8b 05 52 e1 98 7e 48 89 44 24 10 48 8d b8 b8 0a 00 00 48 89 f8 48 c1 e8 03 80 3c 10 00 <74> 0f e8 94 ba 79 00 48 ba 00 00 00 00 00 fc ff df 4c 89 7c 24 18
RSP: 0018:ffffc9000310f720 EFLAGS: 00000046
RAX: 1ffff1100fc4b8c7 RBX: 1ffff92000621eec RCX: ffffffff91fac203
RDX: dffffc0000000000 RSI: ffffffff8b58adc0 RDI: ffff88807e25c638
RBP: ffffc9000310f7d8 R08: ffffffff8e9878ef R09: 1ffffffff1d30f1d
R10: dffffc0000000000 R11: fffffbfff1d30f1e R12: dffffc0000000000
R13: 1ffff1101730799b R14: ffffc9000310f760 R15: 1ffff92000621ee8
FS:  00007f4bdb63b380(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055b621ad0780 CR3: 000000002c5b3000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <NMI>
 </NMI>
 <TASK>
 trace_hardirqs_on+0x28/0x40 kernel/trace/trace_preemptirq.c:61
 raw_spin_rq_unlock_irq kernel/sched/sched.h:1378 [inline]
 finish_lock_switch+0x93/0x110 kernel/sched/core.c:5133
 finish_task_switch+0x134/0x650 kernel/sched/core.c:5251
 context_switch kernel/sched/core.c:5384 [inline]
 __schedule+0x187b/0x48f0 kernel/sched/core.c:6710
 schedule+0xc3/0x180 kernel/sched/core.c:6786
 syslog_print+0x2a3/0x9b0 kernel/printk/printk.c:1579
 do_syslog+0x505/0x890 kernel/printk/printk.c:1732
 __do_sys_syslog kernel/printk/printk.c:1824 [inline]
 __se_sys_syslog kernel/printk/printk.c:1822 [inline]
 __x64_sys_syslog+0x7c/0x90 kernel/printk/printk.c:1822
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f4bdb79cfa7
Code: 73 01 c3 48 8b 0d 81 ce 0c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 b8 67 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 51 ce 0c 00 f7 d8 64 89 01 48
RSP: 002b:00007ffe34adaec8 EFLAGS: 00000206 ORIG_RAX: 0000000000000067
RAX: ffffffffffffffda RBX: 00007f4bdb93b4a0 RCX: 00007f4bdb79cfa7
RDX: 00000000000003ff RSI: 00007f4bdb93b4a0 RDI: 0000000000000002
RBP: 0000000000000000 R08: 0000000000000002 R09: 27b8e563ad625ccb
R10: 0000000000004000 R11: 0000000000000206 R12: 00007f4bdb93b4a0
R13: 00007f4bdb92b212 R14: 00007f4bdb93b503 R15: 00007f4bdb93b503
 </TASK>
INFO: NMI handler (nmi_cpu_backtrace_handler) took too long to run: 1.366 msecs


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
