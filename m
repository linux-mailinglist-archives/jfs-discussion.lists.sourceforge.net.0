Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA62C129E6
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Oct 2025 03:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nhbim92p3A04GIYreahnyDzmfOeYcj6xPokMsM0PWFE=; b=YkQAJvVaqPcTRib3+K/9/D319F
	hICDNhz8VMoIbGA4/T7qAGr5pXlGb7fKl+t5jLDVbLcHcr/asgjxMV+vGc/w2ocyYPaeCmQnabkb8
	bi4alkEd3MSlhCE9Yh3kzuyuZNel9ITgjdKSRKPqz3yMvUtXRkoBQYZEffZLLVUC6XMU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vDZ2E-0002wz-2B;
	Tue, 28 Oct 2025 02:02:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Xpz6aAkbAM8DJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vC2kj-0006mz-Pj for jfs-discussion@lists.sourceforge.net;
 Thu, 23 Oct 2025 21:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AOksONKvXlOJL0U+M1alTbSSRb56wH0mYv1Iv86tjks=; b=Y2Due53QWA77RNm+ZUH846FOMa
 LlB5xq+45BKImSlB6nQf0bwCQ9AVXNnB45cvacenX2wpXIKCAW8XYDasTWn3pvzy/O82dOH6TphOz
 rXMEb/i+AwaoIeNlF+7GqlkO6TpXb8GhIky+LAHHS2S05NkYImF747nG+GejDW2zaElI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AOksONKvXlOJL0U+M1alTbSSRb56wH0mYv1Iv86tjks=; b=d
 4oVsdW6H9NpmijSeOykBb5hiFPdzTDix3gXel5tcG0vqqgthAAJHgGRn9kG9gVMsJ9Qxe3ZQUmE7N
 JLyH8hzGsstXSWxa0yNqNlbYI9/hjRla/7qCmDvgVPF4CyAeoFmlXHTaMB5h+90PF1eba24OsJSDM
 G1OXGWt9ORPK+N94=;
Received: from mail-io1-f80.google.com ([209.85.166.80])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vC2kj-0008Cu-2g for jfs-discussion@lists.sourceforge.net;
 Thu, 23 Oct 2025 21:21:45 +0000
Received: by mail-io1-f80.google.com with SMTP id
 ca18e2360f4ac-94109728fadso94660639f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 23 Oct 2025 14:21:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761254494; x=1761859294;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AOksONKvXlOJL0U+M1alTbSSRb56wH0mYv1Iv86tjks=;
 b=kbmflMDy9qzEQoSAw0DHa3s7i44Wh4ovlcJfzBqBJiMnrOmCOI68ImM53CLo8W41XC
 pr5WWH42uYWKgovXx+6exkOnkB/a0Pdc7dTrWOLh7GU9Yf0iy0Ny5Q8efnLDM5muglbs
 BEu6iWmVVwCpxXCSKgF0d43cA/Am2ju1ypIUKnJbDhT3v8yxO9z58caA1auBqhCd3d+K
 FTuLF/FtRTrBN8ciPgFPro6tDof+9pTxW4CCoxRgbkN/ev1GhrxxB674oYrOz5BLo/4v
 SEmSwCZlZ8oBDS4s3k01auhS0C6G4z9AYzUqn9DS3ry9f3mvEB9x+QrH03iyBJPTYViK
 FVaQ==
X-Gm-Message-State: AOJu0YyRCd17o4/6g5RimAiec12Ce60tCBIZI6f6nFhtYadMJ8+thrdU
 Bab4kxPw0/Ua2SYd0Sew/QFVdiyBLBUF3F09hjtXzwhPFijyZi6+zOAh68RhCWil2s+qlmKYfJM
 lj0mZX5czvfL+wpjy4I4ZTKL8Z2W7TX4xv+gR5KRj2aQ+VA0duwIoGbsU1Ia0UA==
X-Google-Smtp-Source: AGHT+IGq1ziE4QfwS05WZeuA/5dvup9r6hn+2TI+K69/pAA9DbdRAJPUknKxKhaDL/jrXKeGM0ECOcEPMJODOWAYk0pG62ASvf/e
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:380f:b0:42e:72ee:cde6 with SMTP id
 e9e14a558f8ab-430c525f609mr412692255ab.12.1761254494372; Thu, 23 Oct 2025
 14:21:34 -0700 (PDT)
Date: Thu, 23 Oct 2025 14:21:34 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68fa9c5e.a70a0220.3bf6c6.00ca.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: aaa9c3550b60
 Add linux-next specific files for 20251022 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=16dd13e2580000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vC2kj-0008Cu-2g
X-Mailman-Approved-At: Tue, 28 Oct 2025 02:02:00 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in dbAlloc
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
Reply-To: syzbot <syzbot+a2bef7ebecf9cb8b880a@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    aaa9c3550b60 Add linux-next specific files for 20251022
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=16dd13e2580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c8b911aebadf6410
dashboard link: https://syzkaller.appspot.com/bug?extid=a2bef7ebecf9cb8b880a
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=120ecd2f980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13506d42580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/44f7af9b7ca1/disk-aaa9c355.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9d09b0a9994d/vmlinux-aaa9c355.xz
kernel image: https://storage.googleapis.com/syzbot-assets/ae729ccb2c5c/bzImage-aaa9c355.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/7922e49d0401/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=16cba3cd980000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a2bef7ebecf9cb8b880a@syzkaller.appspotmail.com

INFO: task syz.2.19:6102 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.2.19        state:D
 stack:24744 pid:6102  tgid:6101  ppid:5966   task_flags:0x400140 flags:0x00080003
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5254 [inline]
 __schedule+0x17c4/0x4d60 kernel/sched/core.c:6862
 __down_read_common kernel/locking/rwsem.c:1261 [inline]
 __down_read kernel/locking/rwsem.c:1274 [inline]
 down_read_nested+0x9a/0x2f0 kernel/locking/rwsem.c:1663
 dbAlloc+0x3a7/0xba0 fs/jfs/jfs_dmap.c:790
 diNewExt+0x9af/0x3150 fs/jfs/jfs_imap.c:2261
 diAllocExt fs/jfs/jfs_imap.c:1952 [inline]
 diAllocAG+0xe86/0x1df0 fs/jfs/jfs_imap.c:1669
 diAlloc+0x1d5/0x1680 fs/jfs/jfs_imap.c:1590
 ialloc+0x8c/0x8f0 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x193/0xa70 fs/jfs/namei.c:225
 vfs_mkdir+0x306/0x510 fs/namei.c:4453
 do_mkdirat+0x247/0x590 fs/namei.c:4486
 __do_sys_mkdirat fs/namei.c:4503 [inline]
 __se_sys_mkdirat fs/namei.c:4501 [inline]
 __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:4501
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xfa0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f8089b8efc9
RSP: 002b:00007f808aa1e038 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 00007f8089de5fa0 RCX: 00007f8089b8efc9
RDX: 0000000000000408 RSI: 0000200000000300 RDI: 0000000000000004
RBP: 00007f8089c11f91 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f8089de6038 R14: 00007f8089de5fa0 R15: 00007ffd7baf80e8
 </TASK>
INFO: task syz.0.17:6104 blocked for more than 149 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.0.17        state:D stack:24584 pid:6104  tgid:6103  ppid:5962   task_flags:0x400140 flags:0x00080003
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5254 [inline]
 __schedule+0x17c4/0x4d60 kernel/sched/core.c:6862
 __schedule_loop kernel/sched/core.c:6944 [inline]
 schedule+0x165/0x360 kernel/sched/core.c:6959
 schedule_preempt_disabled+0x13/0x30 kernel/sched/core.c:7016
 rwsem_down_read_slowpath+0x5fd/0x8f0 kernel/locking/rwsem.c:1086
 __down_read_common kernel/locking/rwsem.c:1261 [inline]
 __down_read kernel/locking/rwsem.c:1274 [inline]
 down_read_nested+0x9a/0x2f0 kernel/locking/rwsem.c:1663
 dbAlloc+0x3a7/0xba0 fs/jfs/jfs_dmap.c:790
 diNewExt+0x9af/0x3150 fs/jfs/jfs_imap.c:2261
 diAllocExt fs/jfs/jfs_imap.c:1952 [inline]
 diAllocAG+0xe86/0x1df0 fs/jfs/jfs_imap.c:1669
 diAlloc+0x1d5/0x1680 fs/jfs/jfs_imap.c:1590
 ialloc+0x8c/0x8f0 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x193/0xa70 fs/jfs/namei.c:225
 vfs_mkdir+0x306/0x510 fs/namei.c:4453
 do_mkdirat+0x247/0x590 fs/namei.c:4486
 __do_sys_mkdirat fs/namei.c:4503 [inline]
 __se_sys_mkdirat fs/namei.c:4501 [inline]
 __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:4501
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xfa0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f54be18efc9
RSP: 002b:00007f54bf04c038 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 00007f54be3e5fa0 RCX: 00007f54be18efc9
RDX: 0000000000000408 RSI: 0000200000000300 RDI: 0000000000000004
RBP: 00007f54be211f91 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f54be3e6038 R14: 00007f54be3e5fa0 R15: 00007ffc81bd5328
 </TASK>
INFO: task syz.3.20:6107 blocked for more than 150 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.3.20        state:D stack:25064 pid:6107  tgid:6106  ppid:5970   task_flags:0x400140 flags:0x00080003
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5254 [inline]
 __schedule+0x17c4/0x4d60 kernel/sched/core.c:6862
 __schedule_loop kernel/sched/core.c:6944 [inline]
 schedule+0x165/0x360 kernel/sched/core.c:6959
 schedule_preempt_disabled+0x13/0x30 kernel/sched/core.c:7016
 rwsem_down_read_slowpath+0x5fd/0x8f0 kernel/locking/rwsem.c:1086
 __down_read_common kernel/locking/rwsem.c:1261 [inline]
 __down_read kernel/locking/rwsem.c:1274 [inline]
 down_read_nested+0x9a/0x2f0 kernel/locking/rwsem.c:1663
 dbAlloc+0x3a7/0xba0 fs/jfs/jfs_dmap.c:790
 diNewExt+0x9af/0x3150 fs/jfs/jfs_imap.c:2261
 diAllocExt fs/jfs/jfs_imap.c:1952 [inline]
 diAllocAG+0xe86/0x1df0 fs/jfs/jfs_imap.c:1669


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

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
