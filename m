Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B65D92DE3A
	for <lists+jfs-discussion@lfdr.de>; Thu, 11 Jul 2024 04:05:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sRjB6-0001k3-8V;
	Thu, 11 Jul 2024 02:05:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <31C-PZgkbAKsdjkVLWWPcLaaTO.RZZRWPfdPcNZYePYe.NZX@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sRiFb-0003AE-W8 for jfs-discussion@lists.sourceforge.net;
 Thu, 11 Jul 2024 01:05:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fg5VBGBGQdZQPpSowMtMTwufwdacosOLn+vpFIg8OVc=; b=JCy1oP020OcwVSE9KFQ+0574Ut
 tJVmBJikANItCUUE/jZYnsnTRzFc0oVI4uOBVzxEHLDKbhGumcy+J8iRYidfsRwXV3wq89Nk6aBW2
 wRIxRhaxyf+ZLW1+/liaio52IzS6bKeCTWYEV7OpJinmrMWibLut7ZknKTxgI2FMspTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fg5VBGBGQdZQPpSowMtMTwufwdacosOLn+vpFIg8OVc=; b=e
 Ct8CXGalaY8aUYYu4ry1+VVx2Gd2/jGWn69/yT1NIi5XwhDF/ATlySwme0MGsd4HrJy1yc8pJgGLI
 Xt58iIS3HrbGU4oD9TJhjw6jLtztnzjqkQXtqbje+5HVjEjK0FoQG0/+VNTotL2YqxuR5/SV7/U9W
 1EcTvYrh0RLXwYaE=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sRiFb-0002Fm-U2 for jfs-discussion@lists.sourceforge.net;
 Thu, 11 Jul 2024 01:05:36 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-389cc381cdfso3442215ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 10 Jul 2024 18:05:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720659924; x=1721264724;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fg5VBGBGQdZQPpSowMtMTwufwdacosOLn+vpFIg8OVc=;
 b=SAD8sMyK+zi8FgBWPNGc0K55EQKgTnTPP13hQm/7mgEcJDZHXBkUX5pDbNQ71gRFEV
 OmKnbwPGL9Njw/yH+kyIEB5bPcaCCCQ/aZXMMGhb33ohH7+gIS07/D2GHLu/8elsDFbJ
 nBilcdqoaIt39i1Apu2B1IxAVm/tHtrS8pGx7CainAlBR53amBLT+Dm9k9Xgz734H557
 XDDG8HROjWYdAlzuyG1Vr1EAi7dQshFQKENY7rRvmNtdqsHYhqjaviwRI+OMoxqwAe/f
 /1QboYYQNjy3CN2AMt2/o48yYJH7QP1aViZQJXyW+QGZPLV4SVTcBRiRFUvRbiDo49CZ
 CHFw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGBuk531rbbXFDlLpuysviCysFIqALO9DUYM4vYhcdoY9a0D9jRRlCxc9mVTEb+SAyvy7G3o/jaQr3SayQj5yuiZ8F/WDrrlHQLXAygdmGQ/sX4c0=
X-Gm-Message-State: AOJu0YwMTFCXU+kfN8666b7qh8D/saQ6F7yMlIS9P1Hu+cWusmM8UDHq
 w4iJQGGiSz//anIZIZqWNMZt7UjwOT+fSC+39RaIr4Scn5hF96WK8/5fgazuKscWrNvtimssGcB
 2ZZKMEWHki+r6hetEEQ5qIPVpHeULk9Sq8Y30ax6l+ACnzt/atiChPLQ=
X-Google-Smtp-Source: AGHT+IFVvEhAS8kyu8iHhjNSpYsahCzUB+XNAe7O1OewLV/A0qE5lGLrKLkw9AadISI52DE/8sT3E3RtElbkq1E4e1pVfNlikzlJ
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1f04:b0:380:e1e4:4ba3 with SMTP id
 e9e14a558f8ab-38d0b74ad7emr637805ab.2.1720659924340; Wed, 10 Jul 2024
 18:05:24 -0700 (PDT)
Date: Wed, 10 Jul 2024 18:05:24 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000091e466061cee5be7@google.com>
To: brauner@kernel.org, jack@suse.cz, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 34afb82a3c67
 Merge tag '6.10-rc6-smb3-server-fixes' of git.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1552e87e980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.197 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.197 listed in sa-trusted.bondedsender.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1sRiFb-0002Fm-U2
X-Mailman-Approved-At: Thu, 11 Jul 2024 02:04:59 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in
 deactivate_super (3)
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
Reply-To: syzbot <syzbot+cba6270878c89ed64a2d@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    34afb82a3c67 Merge tag '6.10-rc6-smb3-server-fixes' of git..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1552e87e980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b63b35269462a0e0
dashboard link: https://syzkaller.appspot.com/bug?extid=cba6270878c89ed64a2d
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/7152efb66a56/disk-34afb82a.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/48c109ca6782/vmlinux-34afb82a.xz
kernel image: https://storage.googleapis.com/syzbot-assets/2b91e0cb5d11/bzImage-34afb82a.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cba6270878c89ed64a2d@syzkaller.appspotmail.com

INFO: task syz-executor:5090 blocked for more than 143 seconds.
      Not tainted 6.10.0-rc7-syzkaller-00012-g34afb82a3c67 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor    state:D stack:20240 pid:5090  tgid:5090  ppid:1      flags:0x00004004
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5408 [inline]
 __schedule+0x17e8/0x4a20 kernel/sched/core.c:6745
 __schedule_loop kernel/sched/core.c:6822 [inline]
 schedule+0x14b/0x320 kernel/sched/core.c:6837
 schedule_preempt_disabled+0x13/0x30 kernel/sched/core.c:6894
 rwsem_down_write_slowpath+0xeeb/0x13b0 kernel/locking/rwsem.c:1178
 __down_write_common+0x1af/0x200 kernel/locking/rwsem.c:1306
 __super_lock fs/super.c:56 [inline]
 __super_lock_excl fs/super.c:71 [inline]
 deactivate_super+0xb5/0xf0 fs/super.c:505
 cleanup_mnt+0x41f/0x4b0 fs/namespace.c:1267
 task_work_run+0x251/0x310 kernel/task_work.c:180
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:114 [inline]
 exit_to_user_mode_prepare include/linux/entry-common.h:328 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:207 [inline]
 syscall_exit_to_user_mode+0x168/0x360 kernel/entry/common.c:218
 do_syscall_64+0x100/0x230 arch/x86/entry/common.c:89
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7efcf0176f07
RSP: 002b:00007ffc47cc5df8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007efcf0176f07
RDX: 0000000000000000 RSI: 0000000000000009 RDI: 00007ffc47cc5eb0
RBP: 00007ffc47cc5eb0 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000246 R12: 00007ffc47cc6f70
R13: 00007efcf01e3515 R14: 0000555565e00590 R15: 000000000001a596
 </TASK>

Showing all locks held in the system:
1 lock held by pool_workqueue_/3:
 #0: ffffffff8e3392f8 (rcu_state.exp_mutex){+.+.}-{3:3}, at: exp_funnel_lock kernel/rcu/tree_exp.h:323 [inline]
 #0: ffffffff8e3392f8 (rcu_state.exp_mutex){+.+.}-{3:3}, at: synchronize_rcu_expedited+0x451/0x830 kernel/rcu/tree_exp.h:939
2 locks held by kworker/0:0/8:
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3223 [inline]
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_scheduled_works+0x90a/0x1830 kernel/workqueue.c:3329
 #1: ffffc900000d7d00 ((work_completion)(&data->fib_event_work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3224 [inline]
 #1: ffffc900000d7d00 ((work_completion)(&data->fib_event_work)){+.+.}-{0:0}, at: process_scheduled_works+0x945/0x1830 kernel/workqueue.c:3329
1 lock held by khungtaskd/30:
 #0: ffffffff8e333f20 (rcu_read_lock){....}-{1:2}, at: rcu_lock_acquire include/linux/rcupdate.h:329 [inline]
 #0: ffffffff8e333f20 (rcu_read_lock){....}-{1:2}, at: rcu_read_lock include/linux/rcupdate.h:781 [inline]
 #0: ffffffff8e333f20 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x55/0x2a0 kernel/locking/lockdep.c:6614
3 locks held by kworker/u8:2/35:
 #0: ffff8880182ec148 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3223 [inline]
 #0: ffff8880182ec148 ((wq_completion)writeback){+.+.}-{0:0}, at: process_scheduled_works+0x90a/0x1830 kernel/workqueue.c:3329
 #1: ffffc90000ab7d00 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3224 [inline]
 #1: ffffc90000ab7d00 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_scheduled_works+0x945/0x1830 kernel/workqueue.c:3329
 #2: ffff88805d3a60e0 (&type->s_umount_key#53){++++}-{3:3}, at: super_trylock_shared+0x22/0xf0 fs/super.c:562
3 locks held by kworker/0:2/779:
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3223 [inline]
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_scheduled_works+0x90a/0x1830 kernel/workqueue.c:3329
 #1: ffffc90003a0fd00 ((work_completion)(&data->fib_event_work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3224 [inline]
 #1: ffffc90003a0fd00 ((work_completion)(&data->fib_event_work)){+.+.}-{0:0}, at: process_scheduled_works+0x945/0x1830 kernel/workqueue.c:3329
 #2: ffff888079706240 (&data->fib_lock){+.+.}-{3:3}, at: nsim_fib_event_work+0x2d1/0x4130 drivers/net/netdevsim/fib.c:1489
2 locks held by getty/4844:
 #0: ffff88802aa8f0a0 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x25/0x70 drivers/tty/tty_ldisc.c:243
 #1: ffffc900031332f0 (&ldata->atomic_read_lock){+.+.}-{3:3}, at: n_tty_read+0x6b5/0x1e10 drivers/tty/n_tty.c:2211
1 lock held by syz-executor/5090:
 #0: ffff88805d3a60e0 (&type->s_umount_key#53){++++}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff88805d3a60e0 (&type->s_umount_key#53){++++}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff88805d3a60e0 (&type->s_umount_key#53){++++}-{3:3}, at: deactivate_super+0xb5/0xf0 fs/super.c:505
3 locks held by kworker/1:4/5099:
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3223 [inline]
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_scheduled_works+0x90a/0x1830 kernel/workqueue.c:3329
 #1: ffff8880b9528948 (&per_cpu_ptr(group->pcpu, cpu)->seq){-.-.}-{0:0}, at: psi_task_switch+0x441/0x770 kernel/sched/psi.c:988
 #2: ffff888060b71240 (&data->fib_lock){+.+.}-{3:3}, at: nsim_fib_event_work+0x2d1/0x4130 drivers/net/netdevsim/fib.c:1489
2 locks held by kworker/0:3/5153:
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3223 [inline]
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_scheduled_works+0x90a/0x1830 kernel/workqueue.c:3329
 #1: ffffc9000308fd00 (free_ipc_work){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3224 [inline]
 #1: ffffc9000308fd00 (free_ipc_work){+.+.}-{0:0}, at: process_scheduled_works+0x945/0x1830 kernel/workqueue.c:3329
3 locks held by kworker/1:7/5158:
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3223 [inline]
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_scheduled_works+0x90a/0x1830 kernel/workqueue.c:3329
 #1: ffffc90004d17d00 ((work_completion)(&data->fib_event_work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3224 [inline]
 #1: ffffc90004d17d00 ((work_completion)(&data->fib_event_work)){+.+.}-{0:0}, at: process_scheduled_works+0x945/0x1830 kernel/workqueue.c:3329
 #2: ffff88807978b240 (&data->fib_lock){+.+.}-{3:3}, at: nsim_fib_event_work+0x2d1/0x4130 drivers/net/netdevsim/fib.c:1489
2 locks held by syz.0.142/6159:
3 locks held by syz-executor/6235:
 #0: ffff88807b10cd88 (&hdev->req_lock){+.+.}-{3:3}, at: hci_dev_do_close net/bluetooth/hci_core.c:510 [inline]
 #0: ffff88807b10cd88 (&hdev->req_lock){+.+.}-{3:3}, at: hci_unregister_dev+0x203/0x510 net/bluetooth/hci_core.c:2728
 #1: ffff88807b10c078 (&hdev->lock){+.+.}-{3:3}, at: hci_dev_close_sync+0x494/0xf60 net/bluetooth/hci_sync.c:5063
 #2: ffffffff8f7514c8 (hci_cb_list_lock){+.+.}-{3:3}, at: hci_disconn_cfm include/net/bluetooth/hci_core.h:1982 [inline]
 #2: ffffffff8f7514c8 (hci_cb_list_lock){+.+.}-{3:3}, at: hci_conn_hash_flush+0xa6/0x240 net/bluetooth/hci_conn.c:2593
4 locks held by syz-executor/6238:
 #0: ffff888061e64d88 (&hdev->req_lock){+.+.}-{3:3}, at: hci_dev_do_close net/bluetooth/hci_core.c:510 [inline]
 #0: ffff888061e64d88 (&hdev->req_lock){+.+.}-{3:3}, at: hci_unregister_dev+0x203/0x510 net/bluetooth/hci_core.c:2728
 #1: ffff888061e64078 (&hdev->lock){+.+.}-{3:3}, at: hci_dev_close_sync+0x494/0xf60 net/bluetooth/hci_sync.c:5063
 #2: ffffffff8f7514c8 (hci_cb_list_lock){+.+.}-{3:3}, at: hci_disconn_cfm include/net/bluetooth/hci_core.h:1982 [inline]
 #2: ffffffff8f7514c8 (hci_cb_list_lock){+.+.}-{3:3}, at: hci_conn_hash_flush+0xa6/0x240 net/bluetooth/hci_conn.c:2593
 #3: ffffffff8e3392f8 (rcu_state.exp_mutex){+.+.}-{3:3}, at: exp_funnel_lock kernel/rcu/tree_exp.h:323 [inline]
 #3: ffffffff8e3392f8 (rcu_state.exp_mutex){+.+.}-{3:3}, at: synchronize_rcu_expedited+0x451/0x830 kernel/rcu/tree_exp.h:939
1 lock held by syz.0.154/6438:
 #0: ffffffff8e3392f8 (rcu_state.exp_mutex){+.+.}-{3:3}, at: exp_funnel_lock kernel/rcu/tree_exp.h:323 [inline]
 #0: ffffffff8e3392f8 (rcu_state.exp_mutex){+.+.}-{3:3}, at: synchronize_rcu_expedited+0x451/0x830 kernel/rcu/tree_exp.h:939
2 locks held by cmp/6566:

=============================================

NMI backtrace for cpu 1
CPU: 1 PID: 30 Comm: khungtaskd Not tainted 6.10.0-rc7-syzkaller-00012-g34afb82a3c67 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/07/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 nmi_cpu_backtrace+0x49c/0x4d0 lib/nmi_backtrace.c:113
 nmi_trigger_cpumask_backtrace+0x198/0x320 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:162 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:223 [inline]
 watchdog+0xfde/0x1020 kernel/hung_task.c:379
 kthread+0x2f2/0x390 kernel/kthread.c:389
 ret_from_fork+0x4d/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
Sending NMI from CPU 1 to CPUs 0:
NMI backtrace for cpu 0
CPU: 0 PID: 6233 Comm: syz-executor Not tainted 6.10.0-rc7-syzkaller-00012-g34afb82a3c67 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/07/2024
RIP: 0010:__reset_page_owner+0x2c3/0x3f0 mm/page_owner.c:302
Code: 01 00 00 00 48 c7 c7 40 e0 45 8e 48 8b 54 24 18 e8 92 a2 e2 02 e9 53 fe ff ff 48 8b 7c 24 20 e8 13 a8 01 00 8b 1d ad cc 7a 12 <44> 8b 7c 24 0c 44 89 ff 89 de e8 ee 3b 90 ff 41 39 df 75 07 e8 24
RSP: 0018:ffffc90004ca7800 EFLAGS: 00000287
RAX: 0000000000000000 RBX: 0000000001480001 RCX: ffffc90004ca7703
RDX: 0000000000000000 RSI: ffffffff8bcaccc0 RDI: ffffffff8c1fe980
RBP: 0000000000000001 R08: ffffffff8fad492f R09: 1ffffffff1f5a925
R10: dffffc0000000000 R11: fffffbfff1f5a926 R12: ffff888026fc41cc
R13: dffffc0000000000 R14: ffff888017c78e04 R15: ffff888017c78e10
FS:  0000000000000000(0000) GS:ffff8880b9400000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffa012d8270 CR3: 000000000e132000 CR4: 0000000000350ef0
Call Trace:
 <NMI>
 </NMI>
 <TASK>
 reset_page_owner include/linux/page_owner.h:25 [inline]
 free_pages_prepare mm/page_alloc.c:1093 [inline]
 free_unref_page+0xd22/0xea0 mm/page_alloc.c:2588
 vfree+0x186/0x2e0 mm/vmalloc.c:3355
 kcov_put kernel/kcov.c:429 [inline]
 kcov_close+0x2b/0x50 kernel/kcov.c:525
 __fput+0x24c/0x8a0 fs/file_table.c:422
 task_work_run+0x251/0x310 kernel/task_work.c:180
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0xa27/0x27e0 kernel/exit.c:876
 do_group_exit+0x207/0x2c0 kernel/exit.c:1025
 get_signal+0x16a1/0x1740 kernel/signal.c:2909
 arch_do_signal_or_restart+0x96/0x860 arch/x86/kernel/signal.c:310
 exit_to_user_mode_loop kernel/entry/common.c:111 [inline]
 exit_to_user_mode_prepare include/linux/entry-common.h:328 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:207 [inline]
 syscall_exit_to_user_mode+0xc9/0x360 kernel/entry/common.c:218
 do_syscall_64+0x100/0x230 arch/x86/entry/common.c:89
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fd4e79757db
Code: Unable to access opcode bytes at 0x7fd4e79757b1.
RSP: 002b:00007fffc3575b70 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: 0000000000000000 RBX: 0000000000000003 RCX: 00007fd4e79757db
RDX: 0000000000000000 RSI: 0000000000004c01 RDI: 0000000000000003
RBP: 00007fffc3575c1c R08: 0000000000000000 R09: 00007fffc3575917
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fffc3575c90
R13: 0000000000000bb8 R14: 000000000003eb2f R15: 000000000003e65c
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
