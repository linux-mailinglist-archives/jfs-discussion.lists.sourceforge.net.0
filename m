Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B284C129EE
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Oct 2025 03:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S/Sgao32RE9YyqyqAAYlHsc49jkmXGFZ71rLdpCusMQ=; b=mlmSicDJwzBGU6Zl0P+YHIvJwP
	+GripzDG1+0TKXtQQPChIzI0YMtkoAbcR0/BP8DDRquywJ3Xr6dgVr6ZsvirJ+aBjFn5t+k+eYCgR
	di0l7d8FdltQdbELOaSOgStk7vPuTrXiAA4cPfMywS6lg3RCr5PkokK/0lXXSEj4WJJA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vDZ2B-0002vv-U4;
	Tue, 28 Oct 2025 02:02:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3oAf8aAkbAO0hnoZPaaTgPeeXS.VddVaTjhTgRdciTci.Rdb@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vCQwd-00064O-TN for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 23:11:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XqBBgxVBsFH4u7N5X46wOvLNJ7mwegv88sf3EJg/LxA=; b=DVEH23dZqs8ja5mZ1q64dtDcY9
 F41MSfVVcmALC3/h00+YzWqW5poP7IJ1yaQ66BCywkpICn+hVkVfnqh7k8F83Erqv+PNuvWvhDE35
 7iBfoyJxSERCYtqOvQuY1+0l8SgLZfEgl0VmNOVp+e2yhH/rueXMleNW5Nmw4Busbnzg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XqBBgxVBsFH4u7N5X46wOvLNJ7mwegv88sf3EJg/LxA=; b=J
 zFUn6/9RuYhvZr5lhF/3uYMHzfJ5ewmNCZsIAKcUm1mS4LU+a+obQXsi4cKPYU9opcvnFiT/b95kc
 xbspAGoDPe7A1S9ycJdaXi0eWKJcGpY18ffHh4fQnNBEtPdly4ox7mMRzW/5V/XjEWWxd0q18c7CF
 TvSgLshDhE4tAM6c=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vCQwd-0003bW-MX for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 23:11:40 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-430ced58cd2so83146805ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 24 Oct 2025 16:11:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761347489; x=1761952289;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XqBBgxVBsFH4u7N5X46wOvLNJ7mwegv88sf3EJg/LxA=;
 b=swAwK+Wj6KMCZvTs/FZVCqUDcEpM8JSvlJxlpOAOEOWtPU6Kb0CzOiqDy/AarmVO5J
 AIPUCxshHt8AqWiCFB9VRxzNPiglqcA+jrhUgEEr6fDZ51LiLXB2+d8ZZJnzrk69zZOp
 Cv/7S55CIeORstx7rVhoLrwBvBjkvA5YgfL9ALkQlCesYh+IQRvtJtULAM7+3RGjG6/d
 spb7KaQwP86pV+6HjH9C2BKtTGD/JTQh9Kc2s+ko1K0Fm5XUQJ7OgZpXAot2xztIIKuE
 sBdiQDvYNOOxvDICOoHBHyRIilSuhc4oaEKFoBDgFsgHKVbxarvunVk4fqZhtQQ54oqx
 DPAQ==
X-Gm-Message-State: AOJu0Yw4kCiQNw6l3PjrLsGWvPTfwET+G3W9s6JEA58ol5ZnaTffYcPA
 ji3YI42m+uTKgzuK1VyjAWE7pKzdv9W6vS/I9CNRem58/G5sn2jXZK9+fG+fENDccVtQ95pOlMk
 1MIBQKoMJDF8iVgOAhGMH5gTI0q5kZBX0RwHg9x0Dy8696Z7yh2Zumz2QeeFvIg==
X-Google-Smtp-Source: AGHT+IFjKUKwUjlZowPyjQpjxNFd2FO6cEPJm8HOaTb4Xb7i8to9enS9HgElHQN2d6snsaXybh1+b2QLlqHwYfo6sY/7dS+IEuCO
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a2b:b0:42f:95af:9594 with SMTP id
 e9e14a558f8ab-430c527e5bbmr429245885ab.23.1761347488944; Fri, 24 Oct 2025
 16:11:28 -0700 (PDT)
Date: Fri, 24 Oct 2025 16:11:28 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68fc07a0.a70a0220.3bf6c6.01ac.GAE@google.com>
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
 https://syzkaller.appspot.com/x/log.txt?x=17ebcd2f980000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.208 listed in wl.mailspike.net]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vCQwd-0003bW-MX
X-Mailman-Approved-At: Tue, 28 Oct 2025 02:02:00 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in diNewExt
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
Reply-To: syzbot <syzbot+b367cace420c21becba6@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    aaa9c3550b60 Add linux-next specific files for 20251022
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=17ebcd2f980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c8b911aebadf6410
dashboard link: https://syzkaller.appspot.com/bug?extid=b367cace420c21becba6
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=161adb04580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=123c9be2580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/44f7af9b7ca1/disk-aaa9c355.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9d09b0a9994d/vmlinux-aaa9c355.xz
kernel image: https://storage.googleapis.com/syzbot-assets/ae729ccb2c5c/bzImage-aaa9c355.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/41800c75cd89/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=156e6d42580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b367cace420c21becba6@syzkaller.appspotmail.com

INFO: task syz.2.19:6098 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.2.19        state:D stack:24120 pid:6098  tgid:6097  ppid:5976   task_flags:0x400140 flags:0x00080003
Call Trace:
 context_switch kernel/sched/core.c:5254 [inline]
 __schedule+0x17c4/0x4d60 kernel/sched/core.c:6862
 __schedule_loop kernel/sched/core.c:6944 [inline]
 schedule+0x165/0x360 kernel/sched/core.c:6959
 schedule_preempt_disabled+0x13/0x30 kernel/sched/core.c:7016
 rwsem_down_read_slowpath+0x5fd/0x8f0 kernel/locking/rwsem.c:1086
 __down_read_common kernel/locking/rwsem.c:1261 [inline]
 __down_read kernel/locking/rwsem.c:1274 [inline]
 down_read_nested+0x9a/0x2f0 kernel/locking/rwsem.c:1663
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
RIP: 0033:0x7fa19698efc9
RSP: 002b:00007fa197895038 EFLAGS: 00000246
RBP: 00007fa196a11f91 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
INFO: task syz.0.17:6103 blocked for more than 148 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.0.17        state:D
 stack:25592 pid:6103  tgid:6102  ppid:5971   task_flags:0x400140 flags:0x00080003
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
