Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F8863C4E1
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Nov 2022 17:14:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p03FF-0002sp-AJ;
	Tue, 29 Nov 2022 16:14:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3eB2GYwkbAO0hnoZPaaTgPeeXS.VddVaTjhTgRdciTci.Rdb@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1p021h-00089M-MR for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Nov 2022 14:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+DcIr2u3fVb4EbRzY/x09Zv8MrGMOclq+JXaOdB70xE=; b=NRgWDjHBVRQaN3P/Dp2QeIyTy2
 g4fMxIr1y+4/jh6VbLZAempTxfrwiiMBY+Z2/VYdbjpQdz2vTQ0fccQNtLP7+Q6XHsS2WF69dmxET
 lIUb7WiJslmDJmN+voU/SUe9V1c9YN6XgwYdSo9HEXc7jZaMQao3OL2duizqJlKcXJws=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+DcIr2u3fVb4EbRzY/x09Zv8MrGMOclq+JXaOdB70xE=; b=O
 fPZCKi7KO1pdnAE8SRkpelkEAT4Rn/n2qspksVAPwWD3a8aU0T3tg1dlLFkr5m22l10ZMeodkU7xh
 JzAf/N89du/OaODvoJgGqJSvOdUtwZbyV/Qk4Sd5M/WITIU6w7l6lACzl7AIOfnnfA6Vb1d1ce6kB
 kaYk5ptyPAzwpJLA=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p021e-0004ZL-2o for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Nov 2022 14:56:01 +0000
Received: by mail-io1-f70.google.com with SMTP id
 o15-20020a6bf80f000000b006de313e5cfeso8647801ioh.6
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 29 Nov 2022 06:55:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+DcIr2u3fVb4EbRzY/x09Zv8MrGMOclq+JXaOdB70xE=;
 b=1Tr+fkX/1lwx+u9bWvG0d7OEc0C7iDlyuoa0rPYyoxV22po4EYawW5oUajoiIaeaKB
 qzZgXV2ajGjZvdMdTmZ/uh23B0EAtHAY7rW3nuEGWOopU7MPog7PAPV1axEaO1WkpdJq
 W3rGfLPDlmlDR1TPmt4D/W8kqe4s4J0+9quu5xSn9lq6Kp+mYQYPrE4CB73cnoJ2zgUx
 teCwE5RQXjFQyzqR4JCts69K5DTUTgp3Z84/WlACDUxxDE1VhiY1RF1W+3frTZ8x/tn8
 mkuiOIFGbl7T7tnGPe1DIlmTSqxBK8tAT2/POpGzuBJafGHMtc1hWDBMdHw/NwThbBDz
 nhQw==
X-Gm-Message-State: ANoB5pmAG0XwMrk5y6gpJluntOI1aA9rje0IR+uKDFcqdr2Z9wi4qEN8
 Z+CCT7LUyfP3W1j1WuSlPo1FrvV33Ok24v4WpnfCCx2jaQhp
X-Google-Smtp-Source: AA0mqf6s63vQz1Jg0opGIKAG4oLGZ9Jd9c0cr5jBjPgq9VjRZkp+WRBMXYaJ5gwEWHXMFWRMwr1sqRdo59o6u+CNCi5UhWeEsGH3
MIME-Version: 1.0
X-Received: by 2002:a6b:d001:0:b0:6df:2c9f:f8fc with SMTP id
 x1-20020a6bd001000000b006df2c9ff8fcmr12849384ioa.4.1669733752541; Tue, 29 Nov
 2022 06:55:52 -0800 (PST)
Date: Tue, 29 Nov 2022 06:55:52 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000309b1705ee9d2f06@google.com>
From: syzbot <syzbot+90a11e6b1e810785c6ff@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: ca57f02295f1
 afs: Fix fileserver probe RTT handling git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=12618ead880000 kernel config:
 https://syzkaller.appspot.co [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1p021e-0004ZL-2o
X-Mailman-Approved-At: Tue, 29 Nov 2022 16:14:04 +0000
Subject: [Jfs-discussion] [syzbot] KASAN: invalid-free in diUnmount
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

HEAD commit:    ca57f02295f1 afs: Fix fileserver probe RTT handling
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=12618ead880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2325e409a9a893e1
dashboard link: https://syzkaller.appspot.com/bug?extid=90a11e6b1e810785c6ff
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=151e4717880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=162076e3880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/af66f1d3a389/disk-ca57f022.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c0c7ec393108/vmlinux-ca57f022.xz
kernel image: https://storage.googleapis.com/syzbot-assets/ea8871940eaa/bzImage-ca57f022.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/97e90990b0b6/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+90a11e6b1e810785c6ff@syzkaller.appspotmail.com

R10: 0000000000800020 R11: 0000000000000246 R12: 0000000000000004
R13: 00007ffc10bed8d0 R14: 00007f7db4bd0423 R15: 00007ffc10bed8b0
 </TASK>
jfs_mount_rw: diMount failed!
==================================================================
BUG: KASAN: double-free in slab_free mm/slub.c:3661 [inline]
BUG: KASAN: double-free in __kmem_cache_free+0x71/0x110 mm/slub.c:3674
Free of addr ffff88806f410000 by task syz-executor131/3632

CPU: 0 PID: 3632 Comm: syz-executor131 Not tainted 6.1.0-rc7-syzkaller-00012-gca57f02295f1 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 print_address_description+0x74/0x340 mm/kasan/report.c:284
 print_report+0x107/0x1f0 mm/kasan/report.c:395
 kasan_report_invalid_free+0xac/0xd0 mm/kasan/report.c:460
 ____kasan_slab_free+0xfb/0x120
 kasan_slab_free include/linux/kasan.h:177 [inline]
 slab_free_hook mm/slub.c:1724 [inline]
 slab_free_freelist_hook+0x12e/0x1a0 mm/slub.c:1750
 slab_free mm/slub.c:3661 [inline]
 __kmem_cache_free+0x71/0x110 mm/slub.c:3674
 diUnmount+0xef/0x100 fs/jfs/jfs_imap.c:195
 jfs_umount+0x108/0x370 fs/jfs/jfs_umount.c:63
 jfs_put_super+0x86/0x190 fs/jfs/super.c:194
 generic_shutdown_super+0x130/0x310 fs/super.c:492
 kill_block_super+0x79/0xd0 fs/super.c:1428
 deactivate_locked_super+0xa7/0xf0 fs/super.c:332
 cleanup_mnt+0x494/0x520 fs/namespace.c:1186
 task_work_run+0x243/0x300 kernel/task_work.c:179
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0x664/0x2070 kernel/exit.c:820
 do_group_exit+0x1fd/0x2b0 kernel/exit.c:950
 __do_sys_exit_group kernel/exit.c:961 [inline]
 __se_sys_exit_group kernel/exit.c:959 [inline]
 __x64_sys_exit_group+0x3b/0x40 kernel/exit.c:959
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f7db4b8fc89
Code: Unable to access opcode bytes at 0x7f7db4b8fc5f.
RSP: 002b:00007ffc10bed838 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
RAX: ffffffffffffffda RBX: 00007f7db4c073f0 RCX: 00007f7db4b8fc89
RDX: 000000000000003c RSI: 00000000000000e7 RDI: 0000000000000001
RBP: 0000000000000001 R08: ffffffffffffffc0 R09: 00007ffc10bed820
R10: 0000000000800020 R11: 0000000000000246 R12: 00007f7db4c073f0
R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
 </TASK>

Allocated by task 7:
 kasan_save_stack mm/kasan/common.c:45 [inline]
 kasan_set_track+0x3d/0x60 mm/kasan/common.c:52
 ____kasan_kmalloc mm/kasan/common.c:371 [inline]
 __kasan_kmalloc+0x97/0xb0 mm/kasan/common.c:380
 kasan_kmalloc include/linux/kasan.h:211 [inline]
 __do_kmalloc_node mm/slab_common.c:955 [inline]
 __kmalloc_node_track_caller+0xad/0x190 mm/slab_common.c:975
 kmalloc_reserve net/core/skbuff.c:437 [inline]
 __alloc_skb+0x112/0x2b0 net/core/skbuff.c:509
 alloc_skb include/linux/skbuff.h:1267 [inline]
 nsim_dev_trap_skb_build drivers/net/netdevsim/dev.c:751 [inline]
 nsim_dev_trap_report drivers/net/netdevsim/dev.c:808 [inline]
 nsim_dev_trap_report_work+0x268/0xaa0 drivers/net/netdevsim/dev.c:853
 process_one_work+0x877/0xdb0 kernel/workqueue.c:2289
 worker_thread+0xb14/0x1330 kernel/workqueue.c:2436
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306

Freed by task 7:
 kasan_save_stack mm/kasan/common.c:45 [inline]
 kasan_set_track+0x3d/0x60 mm/kasan/common.c:52
 kasan_save_free_info+0x27/0x40 mm/kasan/generic.c:511
 ____kasan_slab_free+0xd6/0x120 mm/kasan/common.c:236
 kasan_slab_free include/linux/kasan.h:177 [inline]
 slab_free_hook mm/slub.c:1724 [inline]
 slab_free_freelist_hook+0x12e/0x1a0 mm/slub.c:1750
 slab_free mm/slub.c:3661 [inline]
 __kmem_cache_free+0x71/0x110 mm/slub.c:3674
 skb_free_head net/core/skbuff.c:760 [inline]
 skb_release_data+0x536/0x6d0 net/core/skbuff.c:789
 skb_release_all net/core/skbuff.c:854 [inline]
 __kfree_skb+0x56/0x1d0 net/core/skbuff.c:868
 nsim_dev_trap_report drivers/net/netdevsim/dev.c:824 [inline]
 nsim_dev_trap_report_work+0x767/0xaa0 drivers/net/netdevsim/dev.c:853
 process_one_work+0x877/0xdb0 kernel/workqueue.c:2289
 worker_thread+0xb14/0x1330 kernel/workqueue.c:2436
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306

The buggy address belongs to the object at ffff88806f410000
 which belongs to the cache kmalloc-4k of size 4096
The buggy address is located 0 bytes inside of
 4096-byte region [ffff88806f410000, ffff88806f411000)

The buggy address belongs to the physical page:
page:ffffea0001bd0400 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x6f410
head:ffffea0001bd0400 order:3 compound_mapcount:0 compound_pincount:0
flags: 0xfff00000010200(slab|head|node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000010200 0000000000000000 dead000000000122 ffff888012842140
raw: 0000000000000000 0000000000040004 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask 0xd2a20(GFP_ATOMIC|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 7, tgid 7 (kworker/0:0), ts 59498816300, free_ts 59206909053
 prep_new_page mm/page_alloc.c:2539 [inline]
 get_page_from_freelist+0x742/0x7c0 mm/page_alloc.c:4291
 __alloc_pages+0x259/0x560 mm/page_alloc.c:5558
 alloc_slab_page+0x70/0xf0 mm/slub.c:1794
 allocate_slab+0x5e/0x4b0 mm/slub.c:1939
 new_slab mm/slub.c:1992 [inline]
 ___slab_alloc+0x782/0xe20 mm/slub.c:3180
 __slab_alloc mm/slub.c:3279 [inline]
 slab_alloc_node mm/slub.c:3364 [inline]
 __kmem_cache_alloc_node+0x252/0x310 mm/slub.c:3437
 __do_kmalloc_node mm/slab_common.c:954 [inline]
 __kmalloc_node_track_caller+0x9c/0x190 mm/slab_common.c:975
 kmalloc_reserve net/core/skbuff.c:437 [inline]
 __alloc_skb+0x112/0x2b0 net/core/skbuff.c:509
 alloc_skb include/linux/skbuff.h:1267 [inline]
 nsim_dev_trap_skb_build drivers/net/netdevsim/dev.c:751 [inline]
 nsim_dev_trap_report drivers/net/netdevsim/dev.c:808 [inline]
 nsim_dev_trap_report_work+0x268/0xaa0 drivers/net/netdevsim/dev.c:853
 process_one_work+0x877/0xdb0 kernel/workqueue.c:2289
 worker_thread+0xb14/0x1330 kernel/workqueue.c:2436
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1459 [inline]
 free_pcp_prepare+0x80c/0x8f0 mm/page_alloc.c:1509
 free_unref_page_prepare mm/page_alloc.c:3387 [inline]
 free_unref_page+0x7d/0x5f0 mm/page_alloc.c:3483
 free_large_kmalloc+0xfb/0x190 mm/slab_common.c:932
 diUnmount+0xef/0x100 fs/jfs/jfs_imap.c:195
 jfs_mount_rw+0x2f4/0x710 fs/jfs/jfs_mount.c:237
 jfs_remount+0x3db/0x710 fs/jfs/super.c:454
 reconfigure_super+0x3bc/0x7b0 fs/super.c:935
 do_remount fs/namespace.c:2702 [inline]
 path_mount+0xd20/0x10c0 fs/namespace.c:3362
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount+0x2d3/0x3c0 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Memory state around the buggy address:
 ffff88806f40ff00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88806f40ff80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff88806f410000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                   ^
 ffff88806f410080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff88806f410100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


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
