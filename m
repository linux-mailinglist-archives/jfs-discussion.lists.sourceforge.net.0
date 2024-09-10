Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EAE973910
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Sep 2024 15:49:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1so1F7-0004Ai-AP;
	Tue, 10 Sep 2024 13:49:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3XgDgZgkbAB0LRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1snw3B-00052J-21 for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Sep 2024 08:16:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=42JD5WziOuN7ikzRHJ+dZmdv0PNBwn1E6k2F/qptTlE=; b=NkHwEVjNZWKG8c1RH8OldhmTHJ
 UOOZFQN/7ckeMWQMlLCArQwHoLYpHiL85x/pf1eU3UcRhU575ViQhH/0C8wRStCY/7dq/5Fy4vOCx
 BiwWILc6GUIEzWkgw31UpKsZHI/UkMrrOabs6vJbdLO1pvvxjTkZatnGp8cUwrken7I8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=42JD5WziOuN7ikzRHJ+dZmdv0PNBwn1E6k2F/qptTlE=; b=R
 S8JtLiZNhu2aQw3iooyGO0QD0Em/vD7GK3QTm1a6wjrdY7efHkfkoeLgBoLyIk+tsH7+xuxOPmvpB
 aPeAzpxxa2RLCRly8JD5xYWjVwbLAvWH6JNpwHfy5JopdqXFbdqdugAdWwbkTgNeX39o9uXJCOQFW
 gjKJl2KK0wmTC+FI=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1snw3A-0003Ae-3T for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Sep 2024 08:16:36 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3a045bf5779so87512475ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 10 Sep 2024 01:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725956190; x=1726560990;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=42JD5WziOuN7ikzRHJ+dZmdv0PNBwn1E6k2F/qptTlE=;
 b=O/jS2ghozvvHleSdMlHt6ewuh6NnCSt/H1u1EsDL8fsKWpO3MfnzEhzpwui2Zb4pnZ
 8SzulAugfSK5CXub8HUq8yH8eRjoOG9r1oI0+tV7dbrQEHyYmEEv3fWRC756ywl73kUA
 oJSdjtmPcdx+Wm1FCA7UgM8Br6oTurgPpxRWyFLN5XgaNBEXwA4m7/fB863iQ0OH+kbw
 HXifqA9QlPWulXQYbRvic53mJSdG3REjvjqgchI2Z4KbnOuXLi+eQ2ZkIBi+T6qMnfwu
 IEbeXVpYZpEplyAVY+7zr4SKiDDtL6PytaBiQIQdVmRHRLkovSHzZL2xEWdqEUrwqIu7
 BrGA==
X-Gm-Message-State: AOJu0YwCppCn5h7omxX2Zd1ki+nqOw0SxEqjuvzsRL6QNy2ZEb8zUIpw
 LuDTmM3bI+0kBNkWin3LU9dlHPbIQvaOL5QPTDxXu5/FyIGWdn2Zso3L/rptVZX19fyFVCiq9Q+
 Apcmkyx7iN+byE3q1nrOlhEGwC4diEF23K6va2GZOTx2sLNQuf/1uvhg=
X-Google-Smtp-Source: AGHT+IHE00dUQrBqSQo9MJT/KKretnYrbZJLHU0jhOEEtBhCF277xt08FlleXDY87fIxln15YN5OmyNn5CcDoKDMYgVxtt3dK3g5
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:20c9:b0:39b:20d8:601e with SMTP id
 e9e14a558f8ab-3a04f0671d8mr171097025ab.3.1725956190320; Tue, 10 Sep 2024
 01:16:30 -0700 (PDT)
Date: Tue, 10 Sep 2024 01:16:30 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000009f43cd0621bf7de4@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: da3ea35007d0
 Linux 6.11-rc7 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=14e3e877980000
 kernel config: https://syzkaller.appspot.com/x/.config?x=61d235cb8d [...]
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1snw3A-0003Ae-3T
X-Mailman-Approved-At: Tue, 10 Sep 2024 13:49:16 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] BUG: spinlock bad magic in
 release_metapage
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
Reply-To: syzbot <syzbot+e380443eaa59bfb75a84@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    da3ea35007d0 Linux 6.11-rc7
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14e3e877980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=61d235cb8d15001c
dashboard link: https://syzkaller.appspot.com/bug?extid=e380443eaa59bfb75a84
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17681420580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16e3e877980000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-da3ea350.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/1ab780d224f6/vmlinux-da3ea350.xz
kernel image: https://storage.googleapis.com/syzbot-assets/834dde85c1c2/bzImage-da3ea350.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/8ca1335c6a53/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e380443eaa59bfb75a84@syzkaller.appspotmail.com

BUG: spinlock bad magic on CPU#0, jfsCommit/101
==================================================================
BUG: KASAN: slab-out-of-bounds in string_nocheck lib/vsprintf.c:646 [inline]
BUG: KASAN: slab-out-of-bounds in string+0x218/0x2b0 lib/vsprintf.c:728
Read of size 1 at addr ffff8880412849f0 by task jfsCommit/101

CPU: 0 UID: 0 PID: 101 Comm: jfsCommit Not tainted 6.11.0-rc7-syzkaller #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:93 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:488
 kasan_report+0x143/0x180 mm/kasan/report.c:601
 string_nocheck lib/vsprintf.c:646 [inline]
 string+0x218/0x2b0 lib/vsprintf.c:728
 vsnprintf+0x1101/0x1da0 lib/vsprintf.c:2824
 vprintk_store+0x480/0x1160 kernel/printk/printk.c:2228
 vprintk_emit+0x1e0/0x7c0 kernel/printk/printk.c:2329
 _printk+0xd5/0x120 kernel/printk/printk.c:2373
 spin_dump kernel/locking/spinlock_debug.c:64 [inline]
 spin_bug+0x13b/0x1d0 kernel/locking/spinlock_debug.c:78
 debug_spin_lock_before kernel/locking/spinlock_debug.c:86 [inline]
 do_raw_spin_lock+0x209/0x370 kernel/locking/spinlock_debug.c:115
 __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:111 [inline]
 _raw_spin_lock_irqsave+0xe1/0x120 kernel/locking/spinlock.c:162
 __wake_up_common_lock+0x25/0x1e0 kernel/sched/wait.c:105
 unlock_metapage fs/jfs/jfs_metapage.c:39 [inline]
 release_metapage+0xb2/0x960 fs/jfs/jfs_metapage.c:763
 xtTruncate+0x1006/0x3270
 jfs_free_zero_link+0x46e/0x6e0 fs/jfs/namei.c:759
 jfs_evict_inode+0x35f/0x440 fs/jfs/inode.c:153
 evict+0x532/0x950 fs/inode.c:704
 txUpdateMap+0x931/0xb10 fs/jfs/jfs_txnmgr.c:2367
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x49a/0xb80 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2f0/0x390 kernel/kthread.c:389
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>

The buggy address belongs to the object at ffff8880412849c0
 which belongs to the cache jfs_ip of size 2232
The buggy address is located 48 bytes inside of
 allocated 2232-byte region [ffff8880412849c0, ffff888041285278)

The buggy address belongs to the physical page:
page: refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x41280
head: order:3 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0x4fff00000000040(head|node=1|zone=1|lastcpupid=0x7ff)
page_type: 0xfdffffff(slab)
raw: 04fff00000000040 ffff88801f594280 dead000000000122 0000000000000000
raw: 0000000000000000 00000000800d000d 00000001fdffffff 0000000000000000
head: 04fff00000000040 ffff88801f594280 dead000000000122 0000000000000000
head: 0000000000000000 00000000800d000d 00000001fdffffff 0000000000000000
head: 04fff00000000003 ffffea000104a001 ffffffffffffffff 0000000000000000
head: 0000000000000008 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Reclaimable, gfp_mask 0xd2050(__GFP_IO|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_RECLAIMABLE), pid 5111, tgid 5111 (syz-executor352), ts 80788950583, free_ts 0
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x1f3/0x230 mm/page_alloc.c:1500
 prep_new_page mm/page_alloc.c:1508 [inline]
 get_page_from_freelist+0x2e4c/0x2f10 mm/page_alloc.c:3446
 __alloc_pages_noprof+0x256/0x6c0 mm/page_alloc.c:4702
 __alloc_pages_node_noprof include/linux/gfp.h:269 [inline]
 alloc_pages_node_noprof include/linux/gfp.h:296 [inline]
 alloc_slab_page+0x5f/0x120 mm/slub.c:2325
 allocate_slab+0x5a/0x2f0 mm/slub.c:2488
 new_slab mm/slub.c:2541 [inline]
 ___slab_alloc+0xcd1/0x14b0 mm/slub.c:3727
 __slab_alloc+0x58/0xa0 mm/slub.c:3817
 __slab_alloc_node mm/slub.c:3870 [inline]
 slab_alloc_node mm/slub.c:4029 [inline]
 kmem_cache_alloc_lru_noprof+0x1c5/0x2b0 mm/slub.c:4060
 jfs_alloc_inode+0x28/0x70 fs/jfs/super.c:105
 alloc_inode fs/inode.c:263 [inline]
 new_inode_pseudo fs/inode.c:1073 [inline]
 new_inode+0x6e/0x310 fs/inode.c:1092
 jfs_fill_super+0x408/0xc50 fs/jfs/super.c:544
 mount_bdev+0x20a/0x2d0 fs/super.c:1679
 legacy_get_tree+0xee/0x190 fs/fs_context.c:662
 vfs_get_tree+0x90/0x2b0 fs/super.c:1800
 do_new_mount+0x2be/0xb40 fs/namespace.c:3472
 do_mount fs/namespace.c:3812 [inline]
 __do_sys_mount fs/namespace.c:4020 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:3997
page_owner free stack trace missing

Memory state around the buggy address:
 ffff888041284880: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff888041284900: 00 00 00 00 00 00 00 00 fc fc fc fc fc fc fc fc
>ffff888041284980: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
                                                             ^
 ffff888041284a00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff888041284a80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
==================================================================


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
