Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E69AC2382
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 May 2025 15:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dfzLeyWCGJS0f/TWNF7f0QIdJ7aJbi2NwzCGuh++Hzo=; b=Q6oI//LkNky282n3k60cpElAFb
	KDShYWJBY1tn0kWnYPQ4OcyxooTERqu9/8fxgLs3kgqLm7N9KqPe27UkRZf8dOcAmgL9cUfGg7KqB
	ECt5pbP/kGHOx8WJeeeGO5FSjv9STz0N6cFrUPqQhAjrFSco/vpTyH25hKktJAsCtANs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uISD6-0006TL-PE;
	Fri, 23 May 2025 13:13:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3qv0vaAkbAK0flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uIKIw-0003Xh-1N for jfs-discussion@lists.sourceforge.net;
 Fri, 23 May 2025 04:46:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xbWOPZAgkoPSb2bLTKcY8Iaj/okxhf05Cpg7L2qKMFs=; b=A2EXaeH+6RjCh9IXzxqiHfbn8I
 mo6Q8LpFzoaJZWdqwKYNHQ21tJw4A52Pg0YCINAkR3B5j4WaI/qBXtT9AYjZatCoKc7sZS10f1+aJ
 g5unkQps5atv85GiTl1umQim9qmq/8y2YqmEHYq21g9fuh/kd3S1j7AF9jco1ae1M+Jc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xbWOPZAgkoPSb2bLTKcY8Iaj/okxhf05Cpg7L2qKMFs=; b=T
 LEBWhdyD2p083lg4nirKVavuJ9yrhc6Ph8PKX0HEKbjHfKxTrO+DuLqd4fdXffc50aFUOhH5eOjH6
 GhOpthSOh4osWNXNTxdOk7Yv4CnFqnJXLf4OWylhzu/eB/c62mcvZSxu6GIWqUXjvL7OreZj/elsA
 iQv3i1o3/TgPJLzY=;
Received: from mail-il1-f206.google.com ([209.85.166.206])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uIKIv-0007m3-1t for jfs-discussion@lists.sourceforge.net;
 Fri, 23 May 2025 04:46:45 +0000
Received: by mail-il1-f206.google.com with SMTP id
 e9e14a558f8ab-3dc7bc950ceso41574665ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 22 May 2025 21:46:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747975594; x=1748580394;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xbWOPZAgkoPSb2bLTKcY8Iaj/okxhf05Cpg7L2qKMFs=;
 b=jK98EojGajmEp3v1kKky6K582H5/4YTzra0aLK0z8SDEp24LdmxTveOPAXYz/qlOdn
 9yqoksuhHEd7QzF9TfjAI5go4T+eqBE64vbteWEw7E/bkc+u+h/9+5orJAbWOrrKsgg1
 qtHxpSZLKv5ipd4m3l4KIZkvz1AIlb+o2yUahr+cRFe4xRJt7O5sJCRzTwYRnYAQrvW2
 xaxd6x6/hwPAqvd1udR+g4lVa66Sqv8/3HAjc3p2T+Lah1t4l2j4+WUFPPRptZXfdFbG
 qJ4GJHXzmY7/LyC9TVWh54OjPLiaS24suHSBztl65ZRkEX3dhYQyOSKgkc1/Pht2Qm71
 8tXg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXsw738v7iZjSG1yR8KMPIUMGutdpQbHCqldJnIlbvEQ0F40aScgr1oJy9RbKf+nStyLYbdxvW1e/W28n8cog==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz2fmTmXwWlBOv54ajtvXhLWVggJphPEuZHvBNIh/ttDIyxYN64
 yIogzrDse/BLspkb6b4REK+0d7Qnz7aWFydR/YynPAeBH72FgodkYHGI8bf6oUjKLJOIcuScb5u
 V/pWfwOS4JIjqYczuF9Yz9rjevmAqV9DAGz5tyUX5WGCjmbCJyT3HYUUcnio=
X-Google-Smtp-Source: AGHT+IGnYULwd6+EAnWNTWM0zxMUrJYcKL/b/3KprQheG4Ilx0uvk8CYbzsaxTdqbvfzzzJnXsbooSyMhwtja4j4AVeD293W+Nb3
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:174b:b0:3dc:7f3b:aca9 with SMTP id
 e9e14a558f8ab-3dc7f3bae28mr124342205ab.14.1747975594321; Thu, 22 May 2025
 21:46:34 -0700 (PDT)
Date: Thu, 22 May 2025 21:46:34 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <682ffdaa.a70a0220.253bc2.0061.GAE@google.com>
To: brauner@kernel.org, cem@kernel.org, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, kent.overstreet@linux.dev, 
 linux-bcachefs@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: a5806cd506af
 Linux 6.15-rc7 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=11923f68580000
 kernel config: https://syzkaller.appspot.com/x/.config?x=3340af1a88 [...]
 Content analysis details:   (2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: storage.googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.206 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.206 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.206 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.206 listed in wl.mailspike.net]
X-Headers-End: 1uIKIv-0007m3-1t
X-Mailman-Approved-At: Fri, 23 May 2025 13:13:09 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] [xfs?] [bcachefs?] INFO: task hung
 in sb_start_write (2)
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
Reply-To: syzbot <syzbot+b3fba2e269970207b61d@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    a5806cd506af Linux 6.15-rc7
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11923f68580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3340af1a8845dd35
dashboard link: https://syzkaller.appspot.com/bug?extid=b3fba2e269970207b61d
compiler:       Debian clang version 20.1.2 (++20250402124445+58df0ef89dd6-1~exp1~20250402004600.97), Debian LLD 20.1.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/652000eacd92/disk-a5806cd5.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2b445a74e31e/vmlinux-a5806cd5.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0a4ef01f165f/bzImage-a5806cd5.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b3fba2e269970207b61d@syzkaller.appspotmail.com

INFO: task syz.9.533:10335 blocked for more than 143 seconds.
      Not tainted 6.15.0-rc7-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.9.533       state:D stack:24344 pid:10335 tgid:10334 ppid:7718   task_flags:0x400140 flags:0x00000004
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5382 [inline]
 __schedule+0x168f/0x4c70 kernel/sched/core.c:6767
 __schedule_loop kernel/sched/core.c:6845 [inline]
 schedule+0x165/0x360 kernel/sched/core.c:6860
 percpu_rwsem_wait+0x2ab/0x300 kernel/locking/percpu-rwsem.c:162
 __percpu_down_read+0xe3/0x120 kernel/locking/percpu-rwsem.c:177
 percpu_down_read include/linux/percpu-rwsem.h:66 [inline]
 __sb_start_write include/linux/fs.h:1783 [inline]
 sb_start_write+0x185/0x1c0 include/linux/fs.h:1919
 mnt_want_write+0x41/0x90 fs/namespace.c:556
 open_last_lookups fs/namei.c:3789 [inline]
 path_openat+0x85d/0x3830 fs/namei.c:4036
 do_filp_open+0x1fa/0x410 fs/namei.c:4066
 do_sys_openat2+0x121/0x1c0 fs/open.c:1429
 do_sys_open fs/open.c:1444 [inline]
 __do_sys_openat fs/open.c:1460 [inline]
 __se_sys_openat fs/open.c:1455 [inline]
 __x64_sys_openat+0x138/0x170 fs/open.c:1455
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xf6/0x210 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f8e2a18e969
RSP: 002b:00007f8e2b0be038 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 00007f8e2a3b5fa0 RCX: 00007f8e2a18e969
RDX: 000000000000275a RSI: 0000200000000100 RDI: ffffffffffffff9c
RBP: 00007f8e2a210ab1 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007f8e2a3b5fa0 R15: 00007fffe529a348
 </TASK>

Showing all locks held in the system:
1 lock held by khungtaskd/31:
 #0: ffffffff8df3dee0 (rcu_read_lock){....}-{1:3}, at: rcu_lock_acquire include/linux/rcupdate.h:331 [inline]
 #0: ffffffff8df3dee0 (rcu_read_lock){....}-{1:3}, at: rcu_read_lock include/linux/rcupdate.h:841 [inline]
 #0: ffffffff8df3dee0 (rcu_read_lock){....}-{1:3}, at: debug_show_all_locks+0x2e/0x180 kernel/locking/lockdep.c:6764
5 locks held by kworker/u8:2/36:
2 locks held by kworker/u8:6/1089:
2 locks held by getty/5583:
 #0: ffff88803055e0a0 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x25/0x70 drivers/tty/tty_ldisc.c:243
 #1: ffffc90002ffe2f0 (&ldata->atomic_read_lock){+.+.}-{4:4}, at: n_tty_read+0x43e/0x1400 drivers/tty/n_tty.c:2222
1 lock held by udevd/9862:
2 locks held by udevd/10189:
 #0: ffff888022a2e3a0 (&sb->s_type->i_mutex_key#7){++++}-{4:4}, at: inode_lock_shared include/linux/fs.h:877 [inline]
 #0: ffff888022a2e3a0 (&sb->s_type->i_mutex_key#7){++++}-{4:4}, at: blkdev_read_iter+0x2f8/0x440 block/fops.c:808
 #1: ffff8880b88399d8 (&rq->__lock){-.-.}-{2:2}, at: raw_spin_rq_lock_nested+0x2a/0x140 kernel/sched/core.c:605
1 lock held by syz.9.533/10335:
 #0: ffff88802f0e0420 (sb_writers#25){++++}-{0:0}, at: mnt_want_write+0x41/0x90 fs/namespace.c:556
3 locks held by syz-executor/12892:
 #0: ffff8880b89399d8 (&rq->__lock){-.-.}-{2:2}, at: raw_spin_rq_lock_nested+0x2a/0x140 kernel/sched/core.c:605
 #1: ffff8880b8923b08 (&per_cpu_ptr(group->pcpu, cpu)->seq){-.-.}-{0:0}, at: psi_task_switch+0x39e/0x6d0 kernel/sched/psi.c:987
 #2: ffff88807a093758 (&sb->s_type->i_lock_key#9){+.+.}-{3:3}, at: spin_trylock include/linux/spinlock.h:361 [inline]
 #2: ffff88807a093758 (&sb->s_type->i_lock_key#9){+.+.}-{3:3}, at: lock_for_kill+0x84/0x210 fs/dcache.c:705
2 locks held by syz.2.1023/13285:
2 locks held by dhcpcd-run-hook/13307:
 #0: ffff8880b89399d8 (&rq->__lock){-.-.}-{2:2}, at: raw_spin_rq_lock_nested+0x2a/0x140 kernel/sched/core.c:605
 #1: ffff8880b8923b08 (&per_cpu_ptr(group->pcpu, cpu)->seq){-.-.}-{0:0}, at: psi_task_switch+0x39e/0x6d0 kernel/sched/psi.c:987

=============================================

NMI backtrace for cpu 0
CPU: 0 UID: 0 PID: 31 Comm: khungtaskd Not tainted 6.15.0-rc7-syzkaller #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/07/2025
Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 nmi_cpu_backtrace+0x39e/0x3d0 lib/nmi_backtrace.c:113
 nmi_trigger_cpumask_backtrace+0x17a/0x300 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:158 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:274 [inline]
 watchdog+0xfee/0x1030 kernel/hung_task.c:437
 kthread+0x711/0x8a0 kernel/kthread.c:464
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:153
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 UID: 0 PID: 13310 Comm: rm Not tainted 6.15.0-rc7-syzkaller #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/07/2025
RIP: 0010:file_ref_inc include/linux/file_ref.h:121 [inline]
RIP: 0010:get_file include/linux/fs.h:1133 [inline]
RIP: 0010:__mmap_new_file_vma mm/vma.c:2352 [inline]
RIP: 0010:__mmap_new_vma mm/vma.c:2417 [inline]
RIP: 0010:__mmap_region mm/vma.c:2519 [inline]
RIP: 0010:mmap_region+0xf23/0x1e50 mm/vma.c:2597
Code: 24 18 01 00 00 48 89 44 24 50 49 8d be 60 01 00 00 be 08 00 00 00 e8 1c 3f 0e 00 41 bf 01 00 00 00 f0 4d 0f c1 be 60 01 00 00 <31> ff 4c 89 fe e8 83 6c ae ff 4d 85 ff 78 74 e8 99 67 ae ff 4c 8b
RSP: 0018:ffffc9000418f2c0 EFLAGS: 00000202
RAX: ffffc9000418f301 RBX: ffff88806733f2a0 RCX: ffffffff82118924
RDX: 0000000000000001 RSI: 0000000000000008 RDI: ffff88807e407820
RBP: ffffc9000418f730 R08: ffff88807e407827 R09: 1ffff1100fc80f04
R10: dffffc0000000000 R11: ffffed100fc80f05 R12: ffff88806733f280
R13: ffffc9000418f3d0 R14: ffff88807e4076c0 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8881261f6000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055aa8d186008 CR3: 000000007f374000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 do_mmap+0xc68/0x1100 mm/mmap.c:561
 vm_mmap_pgoff+0x31b/0x4c0 mm/util.c:579
 elf_map fs/binfmt_elf.c:387 [inline]
 elf_load+0x140/0x6c0 fs/binfmt_elf.c:414
 load_elf_interp+0x469/0xaf0 fs/binfmt_elf.c:681
 load_elf_binary+0x19d2/0x27a0 fs/binfmt_elf.c:1246
 search_binary_handler fs/exec.c:1778 [inline]
 exec_binprm fs/exec.c:1810 [inline]
 bprm_execve+0x999/0x1440 fs/exec.c:1862
 do_execveat_common+0x510/0x6a0 fs/exec.c:1968
 do_execve fs/exec.c:2042 [inline]
 __do_sys_execve fs/exec.c:2118 [inline]
 __se_sys_execve fs/exec.c:2113 [inline]
 __x64_sys_execve+0x94/0xb0 fs/exec.c:2113
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xf6/0x210 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f6e5ef70107
Code: Unable to access opcode bytes at 0x7f6e5ef700dd.
RSP: 002b:00007fff92965db8 EFLAGS: 00000246 ORIG_RAX: 000000000000003b
RAX: ffffffffffffffda RBX: 00005577b8e42fe0 RCX: 00007f6e5ef70107
RDX: 00005577b8e43000 RSI: 00005577b8e42fe0 RDI: 00005577b8e43088
RBP: 00005577b8e43088 R08: 00007fff92968e28 R09: 0000000000000000
R10: 0000000000000008 R11: 0000000000000246 R12: 00005577b8e43000
R13: 00007f6e5f135e8b R14: 00005577b8e43000 R15: 0000000000000000
 </TASK>


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
