Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77420C81339
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Nov 2025 15:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fRbfPykgDeYhmA5PU7htOn3T+XiIUPLlFpVWiTNET1I=; b=SZpfNK6bd32nZOMPBYT9yAFbSN
	UZs96R9WipYU3gdhGL3CFccNSXOGqhA/ac8FI1RqcaGM+vCdx3PCGn2nZp7Gs6MVCnqiUs3dNLE75
	wJdYYq3OlSYrlFCLC/bTawIonbk66oSuxq2NVDVcNUpjyJRQZR11P2pnBxqudY5nZ76E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vNY1s-0000vR-L6;
	Mon, 24 Nov 2025 14:59:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3OA8kaQkbADclrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vNRPD-0000Jk-RN for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Nov 2025 07:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eMbNeHAseiAhCMvw7xh31rPhlt7ttZIGFZZf0bzj6gM=; b=ET9h6AXoHRxGHIMW7dhEPvmAz0
 7d7xh5nNWbQtaKGDjSO//z2bWF75hzB1gzw2yxjUfyj8HY6qpQ6CJcnrl5lqdUuyi9Zf5ePAyHVF9
 R0c6eBNuBx3HSniOVIPiHfzniA9CKymQmyNVzfnm+FwA3ZuVnz1hEu1mL3T2FzT2g91g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eMbNeHAseiAhCMvw7xh31rPhlt7ttZIGFZZf0bzj6gM=; b=G
 cI5WQ1QtAa1v5tFCU4NXxjS49Yfd5scGJePSe6oPzxYCRIZPb0IUtm8/bUMhB2Y49uCivsGxO7p07
 ADZ7/r1DH8Mnaz92Ma775dfi7GQYKgNjc28mjJFALMtPl2WlJeXCJ156p7Z4vCjfN3/XmCXkW3a3T
 91ARprSbnxGWvmYI=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vNRPC-0004yq-Ng for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Nov 2025 07:54:39 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-43300f41682so29016515ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 23 Nov 2025 23:54:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763970873; x=1764575673;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eMbNeHAseiAhCMvw7xh31rPhlt7ttZIGFZZf0bzj6gM=;
 b=wXUZ+MXLUu9N+kllDw6ewgwzdXFJOWHReKzZ3//7731IiDsIidpHmtm67XBGB8T/m3
 Dxtn+OZoQvrR1S2WHXHkw3FrRp8ipZlsJ1sFPI8BujUO0WLLBGIqesFwg2ImQGNrR/qx
 noqG/x2hYtpFGPwHVlNy8A9KmltmRUBqoyWcmi9qhXm2aXU3gU25pZtS/9Err8fKWLBb
 z3l1WJ7T9vJHqKs3Bk5tpp0W6FD5gOR9ex/dcc3Ix+GhBhkVjfVEadwITduOi59kgIHo
 8LgDsRKBF1+sL56OSig0Ze/h5+my1HjcAhZe0GmQuIKqwQl81S9FqHDK106PGYfXFnrB
 zvjQ==
X-Gm-Message-State: AOJu0Ywwss/tIQ84S32Y6a+VAtAqwY0ckYm1cTSSRdSxabpQrwsnaDGO
 3GBmOs61uNI25sPx2NcGuLFOPK+7ZGkh8qzvrDldoD0o8gWDvHDjPNN9r1LqSSutac8ZvjSII7g
 p5bl/qgNTtagJjxgckNrTkTZGdeFz6T0Bit3N2fiKDzR/NTlB2w5LDVN094Nu4w==
X-Google-Smtp-Source: AGHT+IFD/zBjUQHAYGB4pva/c6ikgL8Wim3MOqfQ70pt53wiBlVIgYSWfXIXuOoQoHEQGEjsKwuThhR8KqmhTLCAfJ4spkM7niFo
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3f02:b0:433:3505:51c2 with SMTP id
 e9e14a558f8ab-435b9851ec1mr100789745ab.9.1763970872931; Sun, 23 Nov 2025
 23:54:32 -0800 (PST)
Date: Sun, 23 Nov 2025 23:54:32 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69240f38.a70a0220.2ea503.0079.GAE@google.com>
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
 syzbot found the following issue on: HEAD commit: 23cb64fb7625
 Merge tag 'soc-fixes-6.18-3' of git://git.ker.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=106eba12580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.208 listed in wl.mailspike.net]
X-Headers-End: 1vNRPC-0004yq-Ng
X-Mailman-Approved-At: Mon, 24 Nov 2025 14:59:00 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in txUnlock
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
Reply-To: syzbot <syzbot+53c28c012d7d8835d4c6@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    23cb64fb7625 Merge tag 'soc-fixes-6.18-3' of git://git.ker..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=106eba12580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=38a0c4cddc846161
dashboard link: https://syzkaller.appspot.com/bug?extid=53c28c012d7d8835d4c6
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10edca12580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13ce0514580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/a14ebce6c664/disk-23cb64fb.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/7703c3032e2f/vmlinux-23cb64fb.xz
kernel image: https://storage.googleapis.com/syzbot-assets/a16c5b94924d/bzImage-23cb64fb.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/87a0ff26546c/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=176dca12580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+53c28c012d7d8835d4c6@syzkaller.appspotmail.com

INFO: task jfsCommit:123 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:jfsCommit       state:D stack:28232 pid:123   tgid:123   ppid:2      task_flags:0x200040 flags:0x00080000
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5325 [inline]
 __schedule+0x16f3/0x4c20 kernel/sched/core.c:6929
 __schedule_loop kernel/sched/core.c:7011 [inline]
 schedule+0x165/0x360 kernel/sched/core.c:7026
 io_schedule+0x81/0xe0 kernel/sched/core.c:7871
 folio_wait_bit_common+0x6b5/0xb90 mm/filemap.c:1330
 txUnlock+0x240/0xdc0 fs/jfs/jfs_txnmgr.c:930
 txLazyCommit fs/jfs/jfs_txnmgr.c:2683 [inline]
 jfs_lazycommit+0x52e/0xa10 fs/jfs/jfs_txnmgr.c:2734
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x4bc/0x870 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
INFO: task syz.0.17:6086 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.0.17        state:D stack:24904 pid:6086  tgid:6086  ppid:6002   task_flags:0x400140 flags:0x00080002
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5325 [inline]
 __schedule+0x16f3/0x4c20 kernel/sched/core.c:6929
 __schedule_loop kernel/sched/core.c:7011 [inline]
 schedule+0x165/0x360 kernel/sched/core.c:7026
 io_schedule+0x81/0xe0 kernel/sched/core.c:7871
 folio_wait_bit_common+0x6b5/0xb90 mm/filemap.c:1330
 folio_lock include/linux/pagemap.h:1141 [inline]
 release_metapage+0x103/0xab0 fs/jfs/jfs_metapage.c:870
 discard_metapage fs/jfs/jfs_metapage.h:88 [inline]
 __get_metapage+0x9a0/0xde0 fs/jfs/jfs_metapage.c:753
 dtSearch+0x591/0x21b0 fs/jfs/jfs_dtree.c:624
 jfs_lookup+0x155/0x380 fs/jfs/namei.c:1461
 lookup_open fs/namei.c:3774 [inline]
 open_last_lookups fs/namei.c:3895 [inline]
 path_openat+0x110d/0x3840 fs/namei.c:4131
 do_filp_open+0x1fa/0x410 fs/namei.c:4161
 do_sys_openat2+0x121/0x1c0 fs/open.c:1437
 do_sys_open fs/open.c:1452 [inline]
 __do_sys_openat fs/open.c:1468 [inline]
 __se_sys_openat fs/open.c:1463 [inline]
 __x64_sys_openat+0x138/0x170 fs/open.c:1463
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xfa0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f0c1638f749
RSP: 002b:00007ffcdb1cb188 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 00007f0c165e5fa0 RCX: 00007f0c1638f749
RDX: 000000000000275a RSI: 0000200000000140 RDI: ffffffffffffff9c
RBP: 00007f0c16413f91 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f0c165e5fa0 R14: 00007f0c165e5fa0 R15: 0000000000000004
 </TASK>

Showing all locks held in the system:
3 locks held by kworker/u8:0/12:
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3238 [inline]
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3346
 #1: ffffc90000117ba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3239 [inline]
 #1: ffffc90000117ba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3346
 #2: ffff8880551e80d0 (&type->s_umount_key#54){.+.+}-{4:4}, at: super_trylock_shared+0x20/0xf0 fs/super.c:562
2 locks held by kworker/1:0/31:
1 lock held by khungtaskd/38:
 #0: ffffffff8d5aa880 (rcu_read_lock){....}-{1:3}, at: rcu_lock_acquire include/linux/rcupdate.h:331 [inline]
 #0: ffffffff8d5aa880 (rcu_read_lock){....}-{1:3}, at: rcu_read_lock include/linux/rcupdate.h:867 [inline]
 #0: ffffffff8d5aa880 (rcu_read_lock){....}-{1:3}, at: debug_show_all_locks+0x2e/0x180 kernel/locking/lockdep.c:6775
3 locks held by kworker/u8:3/58:
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3238 [inline]
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3346
 #1: ffffc9000124fba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3239 [inline]
 #1: ffffc9000124fba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3346
 #2: ffff88805e0800d0 (&type->s_umount_key#54){.+.+}-{4:4}, at: super_trylock_shared+0x20/0xf0 fs/super.c:562
3 locks held by kworker/u8:5/72:
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3238 [inline]
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3346
 #1: ffffc9000156fba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3239 [inline]
 #1: ffffc9000156fba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3346
 #2: ffff88805c9920d0 (&type->s_umount_key#54){.+.+}-{4:4}, at: super_trylock_shared+0x20/0xf0 fs/super.c:562
3 locks held by kworker/u8:7/999:
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3238 [inline]
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3346
 #1: ffffc9000453fba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3239 [inline]
 #1: ffffc9000453fba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3346
 #2: ffff88802e8500d0 (&type->s_umount_key#54){.+.+}-{4:4}, at: super_trylock_shared+0x20/0xf0 fs/super.c:562
3 locks held by kworker/u8:8/1013:
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3238 [inline]
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3346
 #1: ffffc9000462fba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3239 [inline]
 #1: ffffc9000462fba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3346
 #2: ffff88802380c0d0 (&type->s_umount_key#54){.+.+}-{4:4}, at: super_trylock_shared+0x20/0xf0 fs/super.c:562
3 locks held by kworker/u8:10/3105:
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3238 [inline]
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3346
 #1: ffffc9000d1bfba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3239 [inline]
 #1: ffffc9000d1bfba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3346
 #2: ffff888055f4c0d0 (&type->s_umount_key#54){.+.+}-{4:4}, at: super_trylock_shared+0x20/0xf0 fs/super.c:562
3 locks held by kworker/u8:12/3129:
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3238 [inline]
 #0: ffff88814045b138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3346
 #1: ffffc9000d36fba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3239 [inline]
 #1: ffffc9000d36fba0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3346
 #2: ffff88803827e0d0 (&type->s_umount_key#54){.+.+}-{4:4}, at: super_trylock_shared+0x20/0xf0 fs/super.c:562
5 locks held by kworker/u8:13/3190:
2 locks held by getty/5561:
 #0: ffff88823bf7c0a0 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x25/0x70 drivers/tty/tty_ldisc.c:243
 #1: ffffc90003e8b2e0 (&ldata->atomic_read_lock){+.+.}-{4:4}, at: n_tty_read+0x444/0x1400 drivers/tty/n_tty.c:2222
1 lock held by syz.0.17/6086:
 #0: ffff888057ebb678 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:980 [inline]
 #0: ffff888057ebb678 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: open_last_lookups fs/namei.c:3892 [inline]
 #0: ffff888057ebb678 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: path_openat+0x8e6/0x3840 fs/namei.c:4131
1 lock held by syz.1.18/6166:
 #0: ffff888040953678 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:980 [inline]
 #0: ffff888040953678 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: open_last_lookups fs/namei.c:3892 [inline]
 #0: ffff888040953678 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: path_openat+0x8e6/0x3840 fs/namei.c:4131
1 lock held by syz.2.19/6188:
 #0: ffff888040956738 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:980 [inline]
 #0: ffff888040956738 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: open_last_lookups fs/namei.c:3892 [inline]
 #0: ffff888040956738 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: path_openat+0x8e6/0x3840 fs/namei.c:4131
1 lock held by syz.3.20/6216:
 #0: ffff888057ef49f8 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:980 [inline]
 #0: ffff888057ef49f8 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: open_last_lookups fs/namei.c:3892 [inline]
 #0: ffff888057ef49f8 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: path_openat+0x8e6/0x3840 fs/namei.c:4131
1 lock held by syz.4.21/6244:
 #0: ffff888057f35d78 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:980 [inline]
 #0: ffff888057f35d78 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: open_last_lookups fs/namei.c:3892 [inline]
 #0: ffff888057f35d78 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: path_openat+0x8e6/0x3840 fs/namei.c:4131
1 lock held by syz.5.22/6271:
 #0: ffff888057edc038 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:980 [inline]
 #0: ffff888057edc038 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: open_last_lookups fs/namei.c:3892 [inline]
 #0: ffff888057edc038 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: path_openat+0x8e6/0x3840 fs/namei.c:4131
1 lock held by syz.6.23/6307:
 #0: ffff8880619505b8 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:980 [inline]
 #0: ffff8880619505b8 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: open_last_lookups fs/namei.c:3892 [inline]
 #0: ffff8880619505b8 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: path_openat+0x8e6/0x3840 fs/namei.c:4131
1 lock held by syz.7.24/6338:
 #0: ffff888061985d78 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:980 [inline]
 #0: ffff888061985d78 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: open_last_lookups fs/namei.c:3892 [inline]
 #0: ffff888061985d78 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: path_openat+0x8e6/0x3840 fs/namei.c:4131
1 lock held by syz.8.25/6368:
 #0: ffff888061983678 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:980 [inline]
 #0: ffff888061983678 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: open_last_lookups fs/namei.c:3892 [inline]
 #0: ffff888061983678 (&type->i_mutex_dir_key#8){+.+.}-{4:4}, at: path_openat+0x8e6/0x3840 fs/namei.c:4131

=============================================

NMI backtrace for cpu 0
CPU: 0 UID: 0 PID: 38 Comm: khungtaskd Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/25/2025
Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 nmi_cpu_backtrace+0x39e/0x3d0 lib/nmi_backtrace.c:113
 nmi_trigger_cpumask_backtrace+0x17a/0x300 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:160 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:332 [inline]
 watchdog+0xf60/0xfa0 kernel/hung_task.c:495
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x4bc/0x870 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 UID: 0 PID: 3190 Comm: kworker/u8:13 Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/25/2025
Workqueue: bat_events batadv_tt_purge
RIP: 0010:native_save_fl arch/x86/include/asm/irqflags.h:19 [inline]
RIP: 0010:arch_local_save_flags arch/x86/include/asm/irqflags.h:109 [inline]
RIP: 0010:arch_irqs_disabled arch/x86/include/asm/irqflags.h:151 [inline]
RIP: 0010:__raw_spin_unlock_irqrestore include/linux/spinlock_api_smp.h:151 [inline]
RIP: 0010:_raw_spin_unlock_irqrestore+0x85/0x110 kernel/locking/spinlock.c:194
Code: 00 fc ff df 4b 89 04 27 48 83 c7 18 48 8b 75 08 e8 b0 db d7 f6 4c 89 f7 e8 78 8a d8 f6 f7 c3 00 02 00 00 74 05 e8 8b 5c 02 f7 <48> c7 44 24 20 00 00 00 00 9c 8f 44 24 20 f6 44 24 21 02 75 4f f7
RSP: 0018:ffffc9000d45f860 EFLAGS: 00000086
RAX: 5614928b32b79500 RBX: 0000000000000a06 RCX: 5614928b32b79500
RDX: 0000000000000002 RSI: ffffffff8cd8e765 RDI: ffffffff8b3ddfe0
RBP: ffffc9000d45f8f0 R08: ffffffff8ed64277 R09: 1ffffffff1dac84e
R10: dffffc0000000000 R11: fffffbfff1dac84f R12: dffffc0000000000
R13: 0000000000000a06 R14: ffff8880521a4200 R15: 1ffff92001a8bf0c
FS:  0000000000000000(0000) GS:ffff888126ef7000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000556bab2dea38 CR3: 000000000d3a6000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 raw_spin_unlock_irqrestore_wake include/linux/sched/wake_q.h:94 [inline]
 rtlock_slowlock kernel/locking/rtmutex.c:1896 [inline]
 rtlock_lock kernel/locking/spinlock_rt.c:43 [inline]
 __rt_spin_lock kernel/locking/spinlock_rt.c:49 [inline]
 rt_spin_lock+0x16d/0x3e0 kernel/locking/spinlock_rt.c:57
 spin_lock_bh include/linux/spinlock_rt.h:88 [inline]
 batadv_tt_global_purge net/batman-adv/translation-table.c:2230 [inline]
 batadv_tt_purge+0x138/0xa10 net/batman-adv/translation-table.c:3510
 process_one_work kernel/workqueue.c:3263 [inline]
 process_scheduled_works+0xae1/0x17b0 kernel/workqueue.c:3346
 worker_thread+0x8a0/0xda0 kernel/workqueue.c:3427
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x4bc/0x870 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>


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
