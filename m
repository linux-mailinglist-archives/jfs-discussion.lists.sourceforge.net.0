Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48214B8CBBB
	for <lists+jfs-discussion@lfdr.de>; Sat, 20 Sep 2025 17:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0SBaTVb/Xt6dBolt6jqDKp7UFnsUdDbC2m8WpN4l67U=; b=fJIA3EcTMKdjQt/rn6S6YBJaHM
	LJl8oKfpILNAN7hEt+bK6O/1LFm+QAHkWAPw2MUKw0rmUmKDUdoyPc7SRQUlMI+w7WwJJc5egbsBX
	nZnxWAD2/h0JNPML68TF4cJsxL3oy1gd5XHf9CwjwWuDxD0fBkop6BDvPAhmn/tqAiCU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uzzdf-0000XH-Or;
	Sat, 20 Sep 2025 15:36:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3wBXOaAkbAHEhnoZPaaTgPeeXS.VddVaTjhTgRdciTci.Rdb@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uzndU-00087s-EQ for jfs-discussion@lists.sourceforge.net;
 Sat, 20 Sep 2025 02:47:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mYTNKgtSR5NwGz7AS4oN6BHeHGGRh7wU+qf09srCYnw=; b=C/Ck6z64bEIlJza95bb/kyNEm1
 Rztrgdt3wrxOk55sq6R3j2LJ2ZEeBQ2ko20miRL6zjBSLB1npBWgnlzXWdLa9tYtAgIUEoUoenl1n
 MfOLiqvsGYXMT52pkU8SsFMTmmUPlCsUmUiQ8tIbEz2Z8NP7o9Dyl2ytO6EwwRy1sqrw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mYTNKgtSR5NwGz7AS4oN6BHeHGGRh7wU+qf09srCYnw=; b=N
 6p5E9pTZSUqdtIBvfTcNyEU6sr74yfTfCSOc08ZdOO2axBkcIqRsNR2niKgKMpyYJgxkl+EBifZt5
 1DFGFOu6Jc6LVA75/GaLiPZ64S3hCFxCry4ffkrm3jX8OW2qpjoobSX5b+XUFjwCWsmpbW6NMsRPP
 FD3pD5uSFK95Fe6o=;
Received: from mail-il1-f206.google.com ([209.85.166.206])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uzndT-0003Ot-Ac for jfs-discussion@lists.sourceforge.net;
 Sat, 20 Sep 2025 02:47:40 +0000
Received: by mail-il1-f206.google.com with SMTP id
 e9e14a558f8ab-42404e7bc94so68625195ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 19 Sep 2025 19:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758336448; x=1758941248;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mYTNKgtSR5NwGz7AS4oN6BHeHGGRh7wU+qf09srCYnw=;
 b=gfsujH+8tbcsOniQ9y0jqED01rig1tCn1B7xC6yeZMomOZtkRVSqLk3tXMJZL4Uktb
 3raHCZCizlVhCFUFNQ/0UUZioefnxQbVgeLChatG7nPXZjiQGTlgdzHUa+jY87yQTm5N
 tOcCNtd9qVqWeDGeN8o56xYKfvRVtLhXLupwkpkmCT1gae/B/9SLVub944+zo+JGRDBv
 ujflnrnh9Ai3zL7K9vI05i1R/CcL/zzomUPw2Fq6SuJ8gqAchz0Y3GZFNX1KnOPWaCAr
 HnU9OEW4glq2clVDnE9F4e0N11uzfyqgxMONx61MPJqrRJobMmMGdhKDyOiuUlMW6i0s
 INCg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWE/4KkwA6mN8O/u+h+d/0gDSQgBrjZptSek+Z4BAsJeV8TrOzuYWEUcojFAbpyEDELnj/foswaoCFq09b+sw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzunnnbcH7gCyAFQ9eVNkudT0aTuN1oOr2k1wa8gan+Mk/M8F9H
 Sn+gHmfafwWIfqgFKJ/PkkVn9fhAEZiBvMx4leZR89+haAnZG5O+6+gy7Vyglx8faE1j372g+yu
 oywEvro5GWJObmUUoBbNr2S/OCjuZXJ7OtPAW01s5gnJyq8dYr22Pw+Y84TI=
X-Google-Smtp-Source: AGHT+IFC6YXfMvhgvE4XLaSDILix9HMtHmS3qT3tNCNQ7n7CenokpbFG+T7c4+hBgbBfVoPskNoWGKXCw0ULBnO8MU84OZdZDLVd
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:b48:b0:41f:8265:4100 with SMTP id
 e9e14a558f8ab-4248199c677mr93679195ab.18.1758336448572; Fri, 19 Sep 2025
 19:47:28 -0700 (PDT)
Date: Fri, 19 Sep 2025 19:47:28 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68ce15c0.050a0220.13cd81.000e.GAE@google.com>
To: jack@suse.com, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 097a6c336d00
 Merge tag 'trace-rv-v6.17-rc5' of git://git.k.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=110ea0e2580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.206 listed in wl.mailspike.net]
X-Headers-End: 1uzndT-0003Ot-Ac
X-Mailman-Approved-At: Sat, 20 Sep 2025 15:36:39 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in __bread_gfp (7)
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
Reply-To: syzbot <syzbot+4b12286339fe4c2700c1@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    097a6c336d00 Merge tag 'trace-rv-v6.17-rc5' of git://git.k..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=110ea0e2580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4d8792ecb6308d0f
dashboard link: https://syzkaller.appspot.com/bug?extid=4b12286339fe4c2700c1
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=116310e2580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1430b0e2580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ed90fccb6f72/disk-097a6c33.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9dee7391f10f/vmlinux-097a6c33.xz
kernel image: https://storage.googleapis.com/syzbot-assets/02f4e5b217b2/bzImage-097a6c33.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4b12286339fe4c2700c1@syzkaller.appspotmail.com

INFO: task syz.0.17:6046 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.0.17        state:D stack:23464 pid:6046  tgid:6046  ppid:5987   task_flags:0x400140 flags:0x00004004
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5357 [inline]
 __schedule+0x1798/0x4cc0 kernel/sched/core.c:6961
 __schedule_loop kernel/sched/core.c:7043 [inline]
 schedule+0x165/0x360 kernel/sched/core.c:7058
 io_schedule+0x80/0xd0 kernel/sched/core.c:7903
 bit_wait_io+0x11/0xd0 kernel/sched/wait_bit.c:250
 __wait_on_bit+0xb9/0x310 kernel/sched/wait_bit.c:52
 out_of_line_wait_on_bit+0x123/0x170 kernel/sched/wait_bit.c:67
 wait_on_bit_io include/linux/wait_bit.h:105 [inline]
 __wait_on_buffer fs/buffer.c:123 [inline]
 wait_on_buffer include/linux/buffer_head.h:420 [inline]
 __bread_slow fs/buffer.c:1273 [inline]
 __bread_gfp+0x2ca/0x3c0 fs/buffer.c:1518
 sb_bread include/linux/buffer_head.h:346 [inline]
 udf_check_vsd fs/udf/super.c:772 [inline]
 udf_load_vrs+0x365/0xf20 fs/udf/super.c:2015
 udf_fill_super+0x5ad/0x17a0 fs/udf/super.c:2201
 get_tree_bdev_flags+0x40e/0x4d0 fs/super.c:1692
 vfs_get_tree+0x92/0x2b0 fs/super.c:1815
 do_new_mount+0x2a2/0x9e0 fs/namespace.c:3808
 do_mount fs/namespace.c:4136 [inline]
 __do_sys_mount fs/namespace.c:4347 [inline]
 __se_sys_mount+0x317/0x410 fs/namespace.c:4324
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0x3b0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f8344f8ec29
RSP: 002b:00007ffe1ea08ec8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007f83451d5fa0 RCX: 00007f8344f8ec29
RDX: 0000200000000040 RSI: 0000200000004a00 RDI: 00002000000003c0
RBP: 00007f8345011e41 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000008007 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f83451d5fa0 R14: 00007f83451d5fa0 R15: 0000000000000005
 </TASK>

Showing all locks held in the system:
3 locks held by kworker/u8:1/13:
 #0: ffff888032c23948 ((wq_completion)udp_tunnel_nic){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff888032c23948 ((wq_completion)udp_tunnel_nic){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc90000127bc0 ((work_completion)(&utn->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc90000127bc0 ((work_completion)(&utn->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
 #2: ffffffff8f53a088 (rtnl_mutex){+.+.}-{4:4}, at: udp_tunnel_nic_device_sync_work+0x29/0xa50 net/ipv4/udp_tunnel_nic.c:736
1 lock held by khungtaskd/31:
 #0: ffffffff8e13a0e0 (rcu_read_lock){....}-{1:3}, at: rcu_lock_acquire include/linux/rcupdate.h:331 [inline]
 #0: ffffffff8e13a0e0 (rcu_read_lock){....}-{1:3}, at: rcu_read_lock include/linux/rcupdate.h:841 [inline]
 #0: ffffffff8e13a0e0 (rcu_read_lock){....}-{1:3}, at: debug_show_all_locks+0x2e/0x180 kernel/locking/lockdep.c:6775
3 locks held by kworker/u8:2/36:
2 locks held by kworker/u9:0/51:
 #0: ffff88802580e148 ((wq_completion)nbd1-recv){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff88802580e148 ((wq_completion)nbd1-recv){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc90000bb7bc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc90000bb7bc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
3 locks held by kworker/u8:4/61:
 #0: ffff88814c1ee948 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff88814c1ee948 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc9000211fbc0 ((work_completion)(&(&ifa->dad_work)->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc9000211fbc0 ((work_completion)(&(&ifa->dad_work)->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
 #2: ffffffff8f53a088 (rtnl_mutex){+.+.}-{4:4}, at: rtnl_net_lock include/linux/rtnetlink.h:130 [inline]
 #2: ffffffff8f53a088 (rtnl_mutex){+.+.}-{4:4}, at: addrconf_dad_work+0x112/0x14b0 net/ipv6/addrconf.c:4194
3 locks held by kworker/1:2/916:
 #0: ffff88801a478d48 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff88801a478d48 ((wq_completion)events){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc900034a7bc0 ((work_completion)(&data->fib_event_work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc900034a7bc0 ((work_completion)(&data->fib_event_work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
 #2: ffff8880784e9240 (&data->fib_lock){+.+.}-{4:4}, at: nsim_fib_event_work+0x26b/0x3180 drivers/net/netdevsim/fib.c:1490
2 locks held by kworker/u8:7/1159:
2 locks held by kworker/u9:1/5180:
 #0: ffff888025855148 ((wq_completion)nbd0-recv){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff888025855148 ((wq_completion)nbd0-recv){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc9000e2ffbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc9000e2ffbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
1 lock held by klogd/5219:
 #0: ffff8880b8739f98 (&rq->__lock){-.-.}-{2:2}, at: raw_spin_rq_lock_nested+0x2a/0x140 kernel/sched/core.c:636
2 locks held by getty/5625:
 #0: ffff888033b050a0 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x25/0x70 drivers/tty/tty_ldisc.c:243
 #1: ffffc900036c32f0 (&ldata->atomic_read_lock){+.+.}-{4:4}, at: n_tty_read+0x43e/0x1400 drivers/tty/n_tty.c:2222
2 locks held by kworker/u9:2/5978:
 #0: ffff888025ad3148 ((wq_completion)nbd8-recv){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff888025ad3148 ((wq_completion)nbd8-recv){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc9000415fbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc9000415fbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
1 lock held by syz.0.17/6046:
 #0: ffff8880319580e0 (&type->s_umount_key#52/1){+.+.}-{4:4}, at: alloc_super+0x204/0x970 fs/super.c:345
2 locks held by kworker/u9:3/6056:
 #0: ffff88802586a148 ((wq_completion)nbd2-recv){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff88802586a148 ((wq_completion)nbd2-recv){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc900040cfbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc900040cfbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
1 lock held by syz.1.18/6075:
 #0: ffff88807f33e0e0 (&type->s_umount_key#52/1){+.+.}-{4:4}, at: alloc_super+0x204/0x970 fs/super.c:345
2 locks held by kworker/u9:4/6078:
 #0: ffff888025960948 ((wq_completion)nbd4-recv){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff888025960948 ((wq_completion)nbd4-recv){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc9000393fbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc9000393fbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
1 lock held by syz.2.19/6097:
 #0: ffff8880245660e0 (&type->s_umount_key#52/1){+.+.}-{4:4}, at: alloc_super+0x204/0x970 fs/super.c:345
2 locks held by kworker/u9:5/6102:
 #0: ffff8880258de148 ((wq_completion)nbd3-recv){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff8880258de148 ((wq_completion)nbd3-recv){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc90003eafbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc90003eafbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
1 lock held by syz.3.20/6120:
 #0: ffff888077e120e0 (&type->s_umount_key#52/1){+.+.}-{4:4}, at: alloc_super+0x204/0x970 fs/super.c:345
2 locks held by kworker/u9:6/6123:
 #0: ffff888025965948 ((wq_completion)nbd5-recv){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff888025965948 ((wq_completion)nbd5-recv){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc90003b8fbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc90003b8fbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
1 lock held by syz.4.21/6149:
 #0: ffff8880287ca0e0 (&type->s_umount_key#52/1){+.+.}-{4:4}, at: alloc_super+0x204/0x970 fs/super.c:345
1 lock held by syz.5.22/6183:
 #0: ffff8880652660e0 (&type->s_umount_key#52/1){+.+.}-{4:4}, at: alloc_super+0x204/0x970 fs/super.c:345
2 locks held by kworker/u9:8/6188:
 #0: ffff888025984148 ((wq_completion)nbd6-recv){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff888025984148 ((wq_completion)nbd6-recv){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc90002fb7bc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc90002fb7bc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
1 lock held by syz.6.23/6213:
 #0: ffff888032f3c0e0 (&type->s_umount_key#52/1){+.+.}-{4:4}, at: alloc_super+0x204/0x970 fs/super.c:345
2 locks held by kworker/u9:9/6218:
 #0: ffff888025a44948 ((wq_completion)nbd7-recv){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff888025a44948 ((wq_completion)nbd7-recv){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc9000367fbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc9000367fbc0 ((work_completion)(&args->work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
1 lock held by syz.7.24/6242:
 #0: ffff88805388a0e0 (&type->s_umount_key#52/1){+.+.}-{4:4}, at: alloc_super+0x204/0x970 fs/super.c:345
3 locks held by kworker/u9:10/6243:
 #0: ffff88805357e948 ((wq_completion)hci2){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3211 [inline]
 #0: ffff88805357e948 ((wq_completion)hci2){+.+.}-{0:0}, at: process_scheduled_works+0x9b4/0x17b0 kernel/workqueue.c:3319
 #1: ffffc90002ff7bc0 ((work_completion)(&hdev->cmd_sync_work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3212 [inline]
 #1: ffffc90002ff7bc0 ((work_completion)(&hdev->cmd_sync_work)){+.+.}-{0:0}, at: process_scheduled_works+0x9ef/0x17b0 kernel/workqueue.c:3319
 #2: ffff88805b6fcdc0 (&hdev->req_lock){+.+.}-{4:4}, at: hci_cmd_sync_work+0x1d4/0x3a0 net/bluetooth/hci_sync.c:331
1 lock held by syz.8.25/6270:
 #0: ffff88802fe0e0e0 (&type->s_umount_key#52/1){+.+.}-{4:4}, at: alloc_super+0x204/0x970 fs/super.c:345
3 locks held by syz-executor/6281:
 #0: ffffffff8f53a088 (rtnl_mutex){+.+.}-{4:4}, at: rtnl_lock net/core/rtnetlink.c:80 [inline]
 #0: ffffffff8f53a088 (rtnl_mutex){+.+.}-{4:4}, at: rtnl_nets_lock net/core/rtnetlink.c:341 [inline]
 #0: ffffffff8f53a088 (rtnl_mutex){+.+.}-{4:4}, at: rtnl_newlink+0x8db/0x1c70 net/core/rtnetlink.c:4056
 #1: ffff88807bcd54e8 (&wg->device_update_lock){+.+.}-{4:4}, at: wg_open+0x227/0x420 drivers/net/wireguard/device.c:50
 #2: ffffffff8e13fb78 (rcu_state.exp_mutex){+.+.}-{4:4}, at: exp_funnel_lock kernel/rcu/tree_exp.h:311 [inline]
 #2: ffffffff8e13fb78 (rcu_state.exp_mutex){+.+.}-{4:4}, at: synchronize_rcu_expedited+0x2f6/0x730 kernel/rcu/tree_exp.h:957

=============================================

NMI backtrace for cpu 1
CPU: 1 UID: 0 PID: 31 Comm: khungtaskd Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/18/2025
Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 nmi_cpu_backtrace+0x39e/0x3d0 lib/nmi_backtrace.c:113
 nmi_trigger_cpumask_backtrace+0x17a/0x300 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:160 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:328 [inline]
 watchdog+0xf93/0xfe0 kernel/hung_task.c:491
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x439/0x7d0 arch/x86/kernel/process.c:148
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
Sending NMI from CPU 1 to CPUs 0:
NMI backtrace for cpu 0
CPU: 0 UID: 0 PID: 36 Comm: kworker/u8:2 Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/18/2025
Workqueue: bat_events batadv_nc_worker
RIP: 0010:__lock_acquire+0x6c9/0xd20 kernel/locking/lockdep.c:5207
Code: 08 00 00 00 e8 88 25 00 00 45 31 ff 85 c0 0f 84 f5 05 00 00 83 3d 36 bb 0e 18 00 75 13 48 63 44 24 20 48 0f a3 05 a7 2b 0b 12 <0f> 83 15 05 00 00 31 ed 48 8b 3c 24 4c 8b bf e0 0a 00 00 48 83 7c
RSP: 0018:ffffc90000ac7880 EFLAGS: 00000047
RAX: 0000000000000007 RBX: 0000000000000002 RCX: ffffffff93499888
RDX: 0000000000000008 RSI: ffff88801d6ec740 RDI: ffff88801d6ebc00
RBP: 0000000000000000 R08: 0000000000000000 R09: ffffffff8b4843ea
R10: dffffc0000000000 R11: fffffbfff1f474c7 R12: 00000000ffffff05
R13: 0000000000000001 R14: ffff88801d6ec740 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff888125c13000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fd5f9ceb000 CR3: 000000000df36000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 lock_acquire+0x120/0x360 kernel/locking/lockdep.c:5868
 rcu_lock_acquire include/linux/rcupdate.h:331 [inline]
 rcu_read_lock include/linux/rcupdate.h:841 [inline]
 batadv_nc_process_nc_paths+0xdb/0x3a0 net/batman-adv/network-coding.c:687
 batadv_nc_worker+0x429/0x610 net/batman-adv/network-coding.c:728
 process_one_work kernel/workqueue.c:3236 [inline]
 process_scheduled_works+0xae1/0x17b0 kernel/workqueue.c:3319
 worker_thread+0x8a0/0xda0 kernel/workqueue.c:3400
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x439/0x7d0 arch/x86/kernel/process.c:148
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
