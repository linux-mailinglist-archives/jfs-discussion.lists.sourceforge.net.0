Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE827C85F0
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Oct 2023 14:39:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qrHRy-0007As-R1;
	Fri, 13 Oct 2023 12:39:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3SyklZQkbAGISYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qqA6x-0006rf-3L for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Oct 2023 10:37:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0F1Pv6GO/TmZHvoMO6mcODtZLDhuap16XylfHcDc8yo=; b=T7DYQ8TlMx6Plf0W4WSnBmaYdl
 Ny9dpGbO6gJ2Ai5X4v2yhrWlJhv99emBjMyDoPN9XxOKzdmoRtJ1DW/CqfaRyuqDcsKG7SEqOXlIz
 /fPRC57QPJIun26I6OJMFJnMqtgq35WrkWOoEPw5ZCQe7FTJlScZCV53b4Jj9RFLi3GQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0F1Pv6GO/TmZHvoMO6mcODtZLDhuap16XylfHcDc8yo=; b=N
 HoHY0PtAR2y664RJAK+lKzEEgpcg/oDE2K7dH5X8enL3pyhHBmXYRFHvFxzwmxILjaQeQaWKXKU6d
 cGXKtzYH8mv6lUeq52zudBjFW91nZpvwJXZMy/Le1jXQLN438wuHl7I9klqsFRGQptP7uTSrpVJvp
 alVDhnD+5XlWyZmk=;
Received: from mail-ot1-f80.google.com ([209.85.210.80])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqA6r-00AR3h-Bn for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Oct 2023 10:37:09 +0000
Received: by mail-ot1-f80.google.com with SMTP id
 46e09a7af769-6c4ededcba7so6370363a34.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 10 Oct 2023 03:37:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696934219; x=1697539019;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0F1Pv6GO/TmZHvoMO6mcODtZLDhuap16XylfHcDc8yo=;
 b=M6Alwh/mVI3EJb/aZyplcylNkxk16skcIyiNMCW5Psr40FZk0IgigLrJU+yevZ2yNs
 hy9mg6orEvFNcxO3I0VY9KJEpIN+smzAqSVLKwp1XeFW27GUdZ/TT9BxHK0uZc8wGOXd
 lZp9CEmhkLZq+el2HM/2Px1TsuhiyeTuK+Taa7NptJZDIIcsJVKnV2WKg6XDgKtq7GR4
 QgEUtVnLXo6790kEFNRu4LQKbVAleheC6gaJEAlyr9+YL4h06peR9bQglUPvayrFkSF6
 +64clSzappNQwkvpt5i8L9s23wQDlZZIUF6d+tZjg11qW71b+j//EgKZEREv6hnZSuUW
 uGBg==
X-Gm-Message-State: AOJu0YwhAE+ARN3KaVVm5qfzAL94PiQQgRtN1Cn/mhsclLPPsEsstLuA
 Vl7qGfVj/EvuKjjbdYB0p9asKSVuaLIJ2LJc6PY1yNk8Rrz+ec8v/w==
X-Google-Smtp-Source: AGHT+IHBmFer2u0U5ow4Jd4jLlzxKe+ZWG8A0KqXZhR6hCMg8HiS087qInDNSpPRkm+kqaOSYVnPSFlwamNms0GyY4ZrPAjzRLRh
MIME-Version: 1.0
X-Received: by 2002:a9d:69ca:0:b0:6bd:909:eb1a with SMTP id
 v10-20020a9d69ca000000b006bd0909eb1amr5842671oto.3.1696934219710; Tue, 10 Oct
 2023 03:36:59 -0700 (PDT)
Date: Tue, 10 Oct 2023 03:36:59 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005f876b06075a4936@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: b78b18fb8ee1
 Merge tag 'erofs-for-6.6-rc5-fixes' of git://.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=122fb2c9680000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.80 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.80 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qqA6r-00AR3h-Bn
X-Mailman-Approved-At: Fri, 13 Oct 2023 12:39:27 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in lmLogClose (2)
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
Reply-To: syzbot <syzbot+cf96fe0f87933d5cd68a@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    b78b18fb8ee1 Merge tag 'erofs-for-6.6-rc5-fixes' of git://..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=122fb2c9680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7a5682d32a74b423
dashboard link: https://syzkaller.appspot.com/bug?extid=cf96fe0f87933d5cd68a
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=120a1c45680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1230440e680000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f88dc91eda37/disk-b78b18fb.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/44466bc55ac9/vmlinux-b78b18fb.xz
kernel image: https://storage.googleapis.com/syzbot-assets/3dbfc0fc8b16/bzImage-b78b18fb.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/18dd05ef2068/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14a27dc9680000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=16a27dc9680000
console output: https://syzkaller.appspot.com/x/log.txt?x=12a27dc9680000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cf96fe0f87933d5cd68a@syzkaller.appspotmail.com

INFO: task syz-executor137:5040 blocked for more than 143 seconds.
      Not tainted 6.6.0-rc4-syzkaller-00176-gb78b18fb8ee1 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor137 state:D stack:25704 pid:5040  ppid:5037   flags:0x00004002
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5382 [inline]
 __schedule+0x196c/0x4af0 kernel/sched/core.c:6695
 schedule+0xc3/0x180 kernel/sched/core.c:6771
 schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:6830
 __mutex_lock_common kernel/locking/mutex.c:679 [inline]
 __mutex_lock+0x6a3/0xd60 kernel/locking/mutex.c:747
 lmLogClose+0xb2/0x530 fs/jfs/jfs_logmgr.c:1444
 jfs_umount+0x2ce/0x3a0 fs/jfs/jfs_umount.c:114
 jfs_put_super+0x8a/0x190 fs/jfs/super.c:194
 generic_shutdown_super+0x13a/0x2c0 fs/super.c:693
 kill_block_super+0x41/0x70 fs/super.c:1646
 deactivate_locked_super+0xa4/0x110 fs/super.c:481
 cleanup_mnt+0x426/0x4c0 fs/namespace.c:1254
 task_work_run+0x24a/0x300 kernel/task_work.c:180
 ptrace_notify+0x2cd/0x380 kernel/signal.c:2387
 ptrace_report_syscall include/linux/ptrace.h:411 [inline]
 ptrace_report_syscall_exit include/linux/ptrace.h:473 [inline]
 syscall_exit_work kernel/entry/common.c:251 [inline]
 syscall_exit_to_user_mode_prepare kernel/entry/common.c:278 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:283 [inline]
 syscall_exit_to_user_mode+0x15c/0x280 kernel/entry/common.c:296
 do_syscall_64+0x4d/0xc0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f51106f42e7
RSP: 002b:00007ffe52a783c8 EFLAGS: 00000202 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007f51106f42e7
RDX: 0000000000000000 RSI: 000000000000000a RDI: 00007ffe52a78480
RBP: 00007ffe52a78480 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000202 R12: 00007ffe52a794f0
R13: 0000555555b7b6c0 R14: 431bde82d7b634db R15: 00007ffe52a79510
 </TASK>
INFO: task syz-executor137:5041 blocked for more than 143 seconds.
      Not tainted 6.6.0-rc4-syzkaller-00176-gb78b18fb8ee1 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor137 state:D stack:26024 pid:5041  ppid:5037   flags:0x00004002
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5382 [inline]
 __schedule+0x196c/0x4af0 kernel/sched/core.c:6695
 schedule+0xc3/0x180 kernel/sched/core.c:6771
 schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:6830
 __mutex_lock_common kernel/locking/mutex.c:679 [inline]
 __mutex_lock+0x6a3/0xd60 kernel/locking/mutex.c:747
 lmLogClose+0xb2/0x530 fs/jfs/jfs_logmgr.c:1444
 jfs_umount+0x2ce/0x3a0 fs/jfs/jfs_umount.c:114
 jfs_put_super+0x8a/0x190 fs/jfs/super.c:194
 generic_shutdown_super+0x13a/0x2c0 fs/super.c:693
 kill_block_super+0x41/0x70 fs/super.c:1646
 deactivate_locked_super+0xa4/0x110 fs/super.c:481
 cleanup_mnt+0x426/0x4c0 fs/namespace.c:1254
 task_work_run+0x24a/0x300 kernel/task_work.c:180
 ptrace_notify+0x2cd/0x380 kernel/signal.c:2387
 ptrace_report_syscall include/linux/ptrace.h:411 [inline]
 ptrace_report_syscall_exit include/linux/ptrace.h:473 [inline]
 syscall_exit_work kernel/entry/common.c:251 [inline]
 syscall_exit_to_user_mode_prepare kernel/entry/common.c:278 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:283 [inline]
 syscall_exit_to_user_mode+0x15c/0x280 kernel/entry/common.c:296
 do_syscall_64+0x4d/0xc0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f51106f42e7
RSP: 002b:00007ffe52a783c8 EFLAGS: 00000202 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007f51106f42e7
RDX: 0000000000000000 RSI: 000000000000000a RDI: 00007ffe52a78480
RBP: 00007ffe52a78480 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000202 R12: 00007ffe52a794f0
R13: 0000555555b7b6c0 R14: 431bde82d7b634db R15: 00007ffe52a79510
 </TASK>
INFO: task syz-executor137:5042 blocked for more than 143 seconds.
      Not tainted 6.6.0-rc4-syzkaller-00176-gb78b18fb8ee1 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor137 state:D stack:25840 pid:5042  ppid:5037   flags:0x00004002
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5382 [inline]
 __schedule+0x196c/0x4af0 kernel/sched/core.c:6695
 schedule+0xc3/0x180 kernel/sched/core.c:6771
 schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:6830
 __mutex_lock_common kernel/locking/mutex.c:679 [inline]
 __mutex_lock+0x6a3/0xd60 kernel/locking/mutex.c:747
 lmLogClose+0xb2/0x530 fs/jfs/jfs_logmgr.c:1444
 jfs_umount+0x2ce/0x3a0 fs/jfs/jfs_umount.c:114
 jfs_put_super+0x8a/0x190 fs/jfs/super.c:194
 generic_shutdown_super+0x13a/0x2c0 fs/super.c:693
 kill_block_super+0x41/0x70 fs/super.c:1646
 deactivate_locked_super+0xa4/0x110 fs/super.c:481
 cleanup_mnt+0x426/0x4c0 fs/namespace.c:1254
 task_work_run+0x24a/0x300 kernel/task_work.c:180
 ptrace_notify+0x2cd/0x380 kernel/signal.c:2387
 ptrace_report_syscall include/linux/ptrace.h:411 [inline]
 ptrace_report_syscall_exit include/linux/ptrace.h:473 [inline]
 syscall_exit_work kernel/entry/common.c:251 [inline]
 syscall_exit_to_user_mode_prepare kernel/entry/common.c:278 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:283 [inline]
 syscall_exit_to_user_mode+0x15c/0x280 kernel/entry/common.c:296
 do_syscall_64+0x4d/0xc0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f51106f42e7
RSP: 002b:00007ffe52a783c8 EFLAGS: 00000202 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007f51106f42e7
RDX: 0000000000000000 RSI: 000000000000000a RDI: 00007ffe52a78480
RBP: 00007ffe52a78480 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000202 R12: 00007ffe52a794f0
R13: 0000555555b7b6c0 R14: 431bde82d7b634db R15: 00007ffe52a79510
 </TASK>

Showing all locks held in the system:
1 lock held by khungtaskd/29:
 #0: ffffffff8d32c420 (rcu_read_lock){....}-{1:2}, at: rcu_lock_acquire include/linux/rcupdate.h:303 [inline]
 #0: ffffffff8d32c420 (rcu_read_lock){....}-{1:2}, at: rcu_read_lock include/linux/rcupdate.h:749 [inline]
 #0: ffffffff8d32c420 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x55/0x2a0 kernel/locking/lockdep.c:6613
2 locks held by getty/4789:
 #0: ffff88802ad5a0a0 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x25/0x70 drivers/tty/tty_ldisc.c:243
 #1: ffffc90002f062f0 (&ldata->atomic_read_lock){+.+.}-{3:3}, at: n_tty_read+0x6b1/0x1dc0 drivers/tty/n_tty.c:2206
2 locks held by syz-executor137/5038:
 #0: ffff8880218260e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff8880218260e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff8880218260e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: deactivate_super+0xad/0xf0 fs/super.c:513
 #1: ffffffff8d71f3e8 (jfs_log_mutex){+.+.}-{3:3}, at: lmLogClose+0xb2/0x530 fs/jfs/jfs_logmgr.c:1444
2 locks held by syz-executor137/5039:
 #0: ffff8880251140e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff8880251140e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff8880251140e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: deactivate_super+0xad/0xf0 fs/super.c:513
 #1: ffffffff8d71f3e8 (jfs_log_mutex){+.+.}-{3:3}, at: lmLogClose+0xb2/0x530 fs/jfs/jfs_logmgr.c:1444
2 locks held by syz-executor137/5040:
 #0: ffff88807eaa80e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff88807eaa80e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff88807eaa80e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: deactivate_super+0xad/0xf0 fs/super.c:513
 #1: ffffffff8d71f3e8 (jfs_log_mutex){+.+.}-{3:3}, at: lmLogClose+0xb2/0x530 fs/jfs/jfs_logmgr.c:1444
2 locks held by syz-executor137/5041:
 #0: ffff88807ae940e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff88807ae940e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff88807ae940e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: deactivate_super+0xad/0xf0 fs/super.c:513
 #1: ffffffff8d71f3e8 (jfs_log_mutex){+.+.}-{3:3}, at: lmLogClose+0xb2/0x530 fs/jfs/jfs_logmgr.c:1444
2 locks held by syz-executor137/5042:
 #0: ffff88802164a0e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff88802164a0e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff88802164a0e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: deactivate_super+0xad/0xf0 fs/super.c:513
 #1: ffffffff8d71f3e8 (jfs_log_mutex){+.+.}-{3:3}, at: lmLogClose+0xb2/0x530 fs/jfs/jfs_logmgr.c:1444
1 lock held by syz-executor137/5043:
 #0: ffff88807a8be0e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff88807a8be0e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff88807a8be0e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: deactivate_super+0xad/0xf0 fs/super.c:513

=============================================

NMI backtrace for cpu 0
CPU: 0 PID: 29 Comm: khungtaskd Not tainted 6.6.0-rc4-syzkaller-00176-gb78b18fb8ee1 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/06/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 nmi_cpu_backtrace+0x498/0x4d0 lib/nmi_backtrace.c:113
 nmi_trigger_cpumask_backtrace+0x198/0x310 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:160 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:222 [inline]
 watchdog+0xfa9/0xff0 kernel/hung_task.c:379
 kthread+0x2d3/0x370 kernel/kthread.c:388
 ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304
 </TASK>
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 PID: 2850 Comm: kworker/u4:12 Not tainted 6.6.0-rc4-syzkaller-00176-gb78b18fb8ee1 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/06/2023
Workqueue: events_unbound toggle_allocation_gate
RIP: 0010:update_min_vruntime kernel/sched/fair.c:782 [inline]
RIP: 0010:dequeue_entity+0xbaf/0x16d0 kernel/sched/fair.c:5157
Code: 00 48 29 5d 00 4d 89 ef 48 8b 6c 24 28 48 b8 00 00 00 00 00 fc ff df 48 8b 4c 24 50 80 3c 01 00 74 08 48 89 ef e8 c1 b2 82 00 <4c> 89 7d 00 48 8b 6c 24 30 48 b8 00 00 00 00 00 fc ff df 48 8b 4c
RSP: 0018:ffffc9000b58f698 EFLAGS: 00000046
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: 1ffff1101732787f
RDX: ffff88802795bc38 RSI: 0000000000000001 RDI: ffff88802795bc40
RBP: ffff8880b993c3f8 R08: ffffffff814047f3 R09: 1ffffffff1d34ff5
R10: dffffc0000000000 R11: fffffbfff1d34ff6 R12: 0000000000000000
R13: 00000006a746e4b9 R14: ffff8880b993c3c0 R15: 00000006a746e4b9
FS:  0000000000000000(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000056329bdad600 CR3: 000000000d130000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <NMI>
 </NMI>
 <TASK>
 dequeue_task_fair+0x27a/0x1400 kernel/sched/fair.c:6559
 deactivate_task kernel/sched/core.c:2141 [inline]
 __schedule+0x614/0x4af0 kernel/sched/core.c:6649
 schedule+0xc3/0x180 kernel/sched/core.c:6771
 toggle_allocation_gate+0x16a/0x250 mm/kfence/core.c:832
 process_one_work kernel/workqueue.c:2630 [inline]
 process_scheduled_works+0x90f/0x1400 kernel/workqueue.c:2703
 worker_thread+0xa5f/0xff0 kernel/workqueue.c:2784
 kthread+0x2d3/0x370 kernel/kthread.c:388
 ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304
 </TASK>


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
