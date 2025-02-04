Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00490A2754D
	for <lists+jfs-discussion@lfdr.de>; Tue,  4 Feb 2025 16:05:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tfKUF-0003gm-8D;
	Tue, 04 Feb 2025 15:05:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3JheiZwkbACEPVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tfJ3Z-0005hY-3C for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Feb 2025 13:33:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xBMN3v0QSb1M9fG3VF51+J22tUz0LN3Njl/luNN+/JE=; b=d5okfrCYs5aDkBKitjnB84Vycc
 gHtwIDdoroQBRoYl5nw4dJ4GL6JJQuCoFKsRoLXUpYaXrPhE1wyalQcXWbxNFJMB1I5FA8p12wZvF
 Vhg7h45GMeRLNrQiKCZ6ivuyyYVWLvnJVWUnu8eFM7pCu/l7wUg5d9Ng3m48sf5/N100=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xBMN3v0QSb1M9fG3VF51+J22tUz0LN3Njl/luNN+/JE=; b=F
 lHWlC5oFvwdaSM9alo8ztCuP9TWYT4qMDDxBFAh+YHDE07YnxqN/5ejOtZtCZe11d6dqphs02XKmY
 O3ZO+DbM7jflMzoaLTH53zSWbgyQiy9xd9Vdi4CJaotHqBwTYJeedxbSspUc/XBe/pmHKaBtItn0X
 biE7NwYMydzrMmUc=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tfJ3Y-00042E-QR for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Feb 2025 13:33:37 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-3cde3591dbfso34787705ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 04 Feb 2025 05:33:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738676006; x=1739280806;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xBMN3v0QSb1M9fG3VF51+J22tUz0LN3Njl/luNN+/JE=;
 b=lgMMklbkLvU3znGz3i+t0evPfuCZz7jSByi+zpVAVBu+GGseOjxjDT5DQVCPTLKKsM
 1ShePDE2qiGhUNzoB4hGQdzp4b8VOuag+G56mj8+YZ1ffl0pHu3N+4kl1pcy57568rnL
 aE0cm2ZPU8xmJvf/F1keQIsJtqGsRb6a1Rsnd5n/E/6RQyiTyKEBREsxJoeOfmmSwuDL
 dPiU1DZzUZJSevchjuKLMQwTDDkIgs1xz/ZJlYexllxILcjSuHmVBlZ5g8WtOs4dlEJj
 9OxCimT4Mzy83Ua4eVx8KJgbWE/jdInixRlWZjffTELUyh9lycibFN5nM8kbw0oLN9W5
 sWmg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW+Ip0fzmqfDUKpwfVjBEoxyDEH88GGg+u19gY95A3arjetE/f393dZN4EOo3ISKzi1FwjiRqBs5lPzokba7A==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwSUbhkGA/xj4yvBNLWY1Pkqk0DP+Bg0+OeO2Pv7vE8j9uzN1Sn
 nyEi2n2phHOjnEGeb/31+GBRMkjm1dFyi1SXtHMMVqMBHg7jVdKK22+fvcfAcSB8q4kbYJsbzCQ
 j11NqVeRnwfS9T5in//ttUMvqxdErIpwXjW54vp0wBmrf4R94qvyNE5M=
X-Google-Smtp-Source: AGHT+IHWGIVMMXtVpLtkxCitYJOXHdAnaDAWZ9zRG75qvXixCU3RhtzlRa1/gRdo/PSOBbsJopRudeCEbK6W6Nm9CyYr1jB5716E
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:2218:b0:3cf:fd62:e39c with SMTP id
 e9e14a558f8ab-3d03f4dbc02mr27150245ab.5.1738676006121; Tue, 04 Feb 2025
 05:33:26 -0800 (PST)
Date: Tue, 04 Feb 2025 05:33:26 -0800
In-Reply-To: <00000000000064a9bf0617bf4ed8@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67a21726.050a0220.163cdc.0067.GAE@google.com>
To: brauner@kernel.org, gregkh@linuxfoundation.org, jack@suse.com, 
 jack@suse.cz, jfs-discussion@lists.sourceforge.net, kent.overstreet@linux.dev, 
 linux-bcachefs@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, tj@kernel.org, viro@zeniv.linux.org.uk
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 0de63bb7d919 Merge tag 'pull-fix' of git://git.kernel.org/..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1737b8a4580000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in sa-trusted.bondedsender.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.208 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1tfJ3Y-00042E-QR
X-Mailman-Approved-At: Tue, 04 Feb 2025 15:05:14 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in
 do_renameat2 (2)
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
Reply-To: syzbot <syzbot+39a12f7473ed8066d2ca@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    0de63bb7d919 Merge tag 'pull-fix' of git://git.kernel.org/..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1737b8a4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=147b7d49d83b8036
dashboard link: https://syzkaller.appspot.com/bug?extid=39a12f7473ed8066d2ca
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=170b4f64580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1638a3df980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/d96aac16c63b/disk-0de63bb7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/cec7aa6a6ed3/vmlinux-0de63bb7.xz
kernel image: https://storage.googleapis.com/syzbot-assets/8601bc76fa6b/bzImage-0de63bb7.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/706c93cf3b52/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+39a12f7473ed8066d2ca@syzkaller.appspotmail.com

INFO: task syz-executor378:5844 blocked for more than 143 seconds.
      Not tainted 6.14.0-rc1-syzkaller-00020-g0de63bb7d919 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor378 state:D stack:27984 pid:5844  tgid:5838  ppid:5837   task_flags:0x400040 flags:0x00004006
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5377 [inline]
 __schedule+0x18bc/0x4c40 kernel/sched/core.c:6764
 __schedule_loop kernel/sched/core.c:6841 [inline]
 schedule+0x14b/0x320 kernel/sched/core.c:6856
 schedule_preempt_disabled+0x13/0x30 kernel/sched/core.c:6913
 rwsem_down_write_slowpath+0xeee/0x13b0 kernel/locking/rwsem.c:1176
 __down_write_common kernel/locking/rwsem.c:1304 [inline]
 __down_write kernel/locking/rwsem.c:1313 [inline]
 down_write_nested+0x1e0/0x220 kernel/locking/rwsem.c:1694
 inode_lock_nested include/linux/fs.h:900 [inline]
 lock_rename fs/namei.c:3217 [inline]
 do_renameat2+0x62c/0x13f0 fs/namei.c:5161
 __do_sys_rename fs/namei.c:5273 [inline]
 __se_sys_rename fs/namei.c:5271 [inline]
 __x64_sys_rename+0x82/0x90 fs/namei.c:5271
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f89cd60e549
RSP: 002b:00007f89cd5a4218 EFLAGS: 00000246 ORIG_RAX: 0000000000000052
RAX: ffffffffffffffda RBX: 00007f89cd695658 RCX: 00007f89cd60e549
RDX: 00007f89cd5e7cc6 RSI: 00000000200004c0 RDI: 0000000020000240
RBP: 00007f89cd695650 R08: 00007fffe46e3cc7 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f89cd662634
R13: 0030656c69662f2e R14: 00736e6f69746361 R15: 0031656c69662f2e
 </TASK>

Showing all locks held in the system:
1 lock held by khungtaskd/30:
 #0: ffffffff8e9387e0 (rcu_read_lock){....}-{1:3}, at: rcu_lock_acquire include/linux/rcupdate.h:337 [inline]
 #0: ffffffff8e9387e0 (rcu_read_lock){....}-{1:3}, at: rcu_read_lock include/linux/rcupdate.h:849 [inline]
 #0: ffffffff8e9387e0 (rcu_read_lock){....}-{1:3}, at: debug_show_all_locks+0x55/0x2a0 kernel/locking/lockdep.c:6746
2 locks held by getty/5578:
 #0: ffff88814ddb00a0 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x25/0x70 drivers/tty/tty_ldisc.c:243
 #1: ffffc90002fd62f0 (&ldata->atomic_read_lock){+.+.}-{4:4}, at: n_tty_read+0x6a6/0x1e00 drivers/tty/n_tty.c:2211
7 locks held by syz-executor378/5840:
2 locks held by syz-executor378/5844:
 #0: ffff88805a354420 (sb_writers#4){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:547
 #1: ffff88805ac8b580 (&type->i_mutex_dir_key#3/1){+.+.}-{4:4}, at: inode_lock_nested include/linux/fs.h:900 [inline]
 #1: ffff88805ac8b580 (&type->i_mutex_dir_key#3/1){+.+.}-{4:4}, at: lock_rename fs/namei.c:3217 [inline]
 #1: ffff88805ac8b580 (&type->i_mutex_dir_key#3/1){+.+.}-{4:4}, at: do_renameat2+0x62c/0x13f0 fs/namei.c:5161

=============================================

NMI backtrace for cpu 0
CPU: 0 UID: 0 PID: 30 Comm: khungtaskd Not tainted 6.14.0-rc1-syzkaller-00020-g0de63bb7d919 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 12/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 nmi_cpu_backtrace+0x49c/0x4d0 lib/nmi_backtrace.c:113
 nmi_trigger_cpumask_backtrace+0x198/0x320 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:162 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:236 [inline]
 watchdog+0x1058/0x10a0 kernel/hung_task.c:399
 kthread+0x7a9/0x920 kernel/kthread.c:464
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:148
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 UID: 0 PID: 5840 Comm: syz-executor378 Not tainted 6.14.0-rc1-syzkaller-00020-g0de63bb7d919 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 12/27/2024
RIP: 0010:unwind_next_frame+0x315/0x22d0 arch/x86/kernel/unwind_orc.c:505
Code: 64 48 01 d2 48 01 f2 0f 84 42 01 00 00 48 8d 5a 04 4c 8d 72 05 48 89 d8 48 c1 e8 03 48 bd 00 00 00 00 00 fc ff df 0f b6 04 28 <84> c0 0f 85 58 18 00 00 4c 89 f0 48 c1 e8 03 0f b6 04 28 84 c0 0f
RSP: 0018:ffffc900041567b0 EFLAGS: 00000a07
RAX: 0000000000000000 RBX: ffffffff90b1ed4c RCX: ffffffff90366724
RDX: ffffffff90b1ed48 RSI: ffffffff90b1ed48 RDI: ffffffff816bb3f0
RBP: dffffc0000000000 R08: 0000000000000001 R09: ffffc90004156970
R10: ffffc900041568d0 R11: ffffffff81ab1d60 R12: 0000000000000000
R13: ffffc90004156880 R14: ffffffff90b1ed4d R15: ffffffff8238215b
FS:  00007f89cd5c56c0(0000) GS:ffff8880b8700000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000559892ce6600 CR3: 000000007b002000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <NMI>
 </NMI>
 <TASK>
 arch_stack_walk+0x11c/0x150 arch/x86/kernel/stacktrace.c:25
 stack_trace_save+0x118/0x1d0 kernel/stacktrace.c:122
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 poison_kmalloc_redzone mm/kasan/common.c:377 [inline]
 __kasan_kmalloc+0x98/0xb0 mm/kasan/common.c:394
 kasan_kmalloc include/linux/kasan.h:260 [inline]
 __do_kmalloc_node mm/slub.c:4294 [inline]
 __kmalloc_noprof+0x285/0x4c0 mm/slub.c:4306
 kmalloc_noprof include/linux/slab.h:905 [inline]
 qtree_write_dquot+0xf9/0x5b0 fs/quota/quota_tree.c:444
 v2_write_dquot+0x17a/0x270 fs/quota/quota_v2.c:372
 dquot_commit+0x399/0x490 fs/quota/dquot.c:512
 ext4_write_dquot+0x212/0x370 fs/ext4/super.c:6903
 mark_dquot_dirty fs/quota/dquot.c:370 [inline]
 mark_all_dquot_dirty+0x101/0x450 fs/quota/dquot.c:410
 __dquot_free_space+0x977/0xec0 fs/quota/dquot.c:1928
 dquot_free_space_nodirty include/linux/quotaops.h:374 [inline]
 dquot_free_space include/linux/quotaops.h:379 [inline]
 dquot_free_block include/linux/quotaops.h:390 [inline]
 ext4_xattr_block_set+0x145a/0x3160 fs/ext4/xattr.c:2081
 ext4_xattr_set_handle+0xce0/0x1580 fs/ext4/xattr.c:2458
 ext4_initxattrs+0xa3/0x120 fs/ext4/xattr_security.c:44
 security_inode_init_security+0x29c/0x480 security/security.c:1852
 __ext4_new_inode+0x388f/0x4630 fs/ext4/ialloc.c:1324
 ext4_create+0x279/0x550 fs/ext4/namei.c:2841
 lookup_open fs/namei.c:3651 [inline]
 open_last_lookups fs/namei.c:3750 [inline]
 path_openat+0x193c/0x3590 fs/namei.c:3986
 do_filp_open+0x27f/0x4e0 fs/namei.c:4016
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1427
 do_sys_open fs/open.c:1442 [inline]
 __do_sys_openat fs/open.c:1458 [inline]
 __se_sys_openat fs/open.c:1453 [inline]
 __x64_sys_openat+0x247/0x2a0 fs/open.c:1453
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f89cd60e549
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 81 18 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f89cd5c5218 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 00007f89cd695648 RCX: 00007f89cd60e549
RDX: 0000000000103042 RSI: 0000000020000100 RDI: 00000000ffffff9c
RBP: 00007f89cd695640 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f89cd662634
R13: 0030656c69662f2e R14: 00736e6f69746361 R15: 0031656c69662f2e
 </TASK>
INFO: NMI handler (nmi_cpu_backtrace_handler) took too long to run: 2.329 msecs


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
