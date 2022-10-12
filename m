Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA29D5FC5E8
	for <lists+jfs-discussion@lfdr.de>; Wed, 12 Oct 2022 15:06:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oibRI-0007OV-4v;
	Wed, 12 Oct 2022 13:06:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3uVFGYwkbAJYIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oiUNO-00078p-VU for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Oct 2022 05:33:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O2jSEdNU5vRSYeAa6Q5STwH5/PLEx1zBdNdNcj1koqs=; b=GWxi6T51IlBK4SS6igLHUI0bdZ
 UH1VAfuhx4J6jCG7m56Vknxin53vEwB0PaHhbSYOq5NMHxGrzH7hRv2fqKTeA8SF+Yf6ouvG04u13
 7adwbE1/MNkOPyqonhWKeRsqYAnBcQhhTERQ23KrU1qIW2rQlnZeBiBeWD2LvfXRFRrM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=O2jSEdNU5vRSYeAa6Q5STwH5/PLEx1zBdNdNcj1koqs=; b=R
 bPuEHWlN+If7HueGbt4DJvlLfEapNJtTuZdboUg5ufRdOrxk2P0C/nEMNZ6xA0cGK4RwMZLB4zd0j
 IIZUirhBSn//iniGbq6od4yXiFdhp2fz4ghSA8zt/Sut4b16orQUwlzY/LkofB6iTht/gPBl64q8/
 bp1zfCtGqQsgpRIw=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oiUNK-0000Ht-CV for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Oct 2022 05:33:54 +0000
Received: by mail-il1-f200.google.com with SMTP id
 x6-20020a056e021bc600b002fc96f780e7so2318625ilv.10
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 11 Oct 2022 22:33:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=O2jSEdNU5vRSYeAa6Q5STwH5/PLEx1zBdNdNcj1koqs=;
 b=VhEBbxvF+5m9lXYTue88kspWwr47ZdQnUoR3KRdkY7fe9quvH3gSUNeEvi06ldrtc1
 Jd2uOQ/uJSBAMlYphU7hKjN12IjrP3GMiWZx0bk2DQSxorz2FSnCH2iCDe6j0sWxlaTJ
 JwRjsV/Kit/3a3Xhxq8hzH2FXz93h9eAMKJkv24xUjqbwBGtz6Nokz7xGFG5kTZB56cm
 z/QjBcnwk4AUfmZ1KpdHARfiPQG8pbb6jEY6y1n1UX55hWOXV+QqS6vVPaG5YZYtGhQe
 r+DBLX/qHzXnn3HV0eoWfMNBo4HRK0fxNEwJIDDe/o10HjPGAI7JtS0biSUqfjgDyjPd
 AJyQ==
X-Gm-Message-State: ACrzQf07vQoP5huvtSQm4CToxkB6MxVFS+1XXcHR/y5I6APPtFeSXnn1
 rVTgA93Yv2QGg+2j3omEjCVOkwB71BfbD0Y4oE14DForjZOq
X-Google-Smtp-Source: AMsMyM5/BRbx2hYGZLCP/xEXFknUygBv1+1DGkoLdp2dHkxFlh4zc8XTAj59vppdRVpo55ESbO1qDBjIy+6JbvftpkYLghHCZ0GR
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:eea:b0:2fb:f7a6:48a9 with SMTP id
 j10-20020a056e020eea00b002fbf7a648a9mr8720522ilk.301.1665552825371; Tue, 11
 Oct 2022 22:33:45 -0700 (PDT)
Date: Tue, 11 Oct 2022 22:33:45 -0700
In-Reply-To: <00000000000034ae0f05e9f94c79@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000082d66a05eacfbc3d@google.com>
From: syzbot <syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=165e218a880000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
X-Headers-End: 1oiUNK-0000Ht-CV
X-Mailman-Approved-At: Wed, 12 Oct 2022 13:06:23 +0000
Subject: Re: [Jfs-discussion] [syzbot] KASAN: use-after-free Read in
 jfs_lazycommit
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=165e218a880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=885a4f3281b8d99c48d8
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1523402c880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15b5fc78880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f1ff6481e26f/disk-493ffd66.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/101bd3c7ae47/vmlinux-493ffd66.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/9aaa6f9b6f7e/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com

ERROR: (device loop0): remounting filesystem as read-only
blkno = 400000, nblocks = 0
ERROR: (device loop0): dbFree: block to be freed is outside the map
==================================================================
BUG: KASAN: use-after-free in jfs_lazycommit+0x746/0xba0 fs/jfs/jfs_txnmgr.c:2730
Read of size 4 at addr ffff88807ee78094 by task jfsCommit/120

CPU: 1 PID: 120 Comm: jfsCommit Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 print_address_description+0x65/0x4b0 mm/kasan/report.c:317
 print_report+0x108/0x1f0 mm/kasan/report.c:433
 kasan_report+0xc3/0xf0 mm/kasan/report.c:495
 jfs_lazycommit+0x746/0xba0 fs/jfs/jfs_txnmgr.c:2730
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>

Allocated by task 4321:
 kasan_save_stack mm/kasan/common.c:38 [inline]
 kasan_set_track mm/kasan/common.c:45 [inline]
 set_alloc_info mm/kasan/common.c:437 [inline]
 ____kasan_kmalloc+0xcd/0x100 mm/kasan/common.c:516
 kasan_kmalloc include/linux/kasan.h:234 [inline]
 kmem_cache_alloc_trace+0x97/0x310 mm/slub.c:3289
 kmalloc include/linux/slab.h:600 [inline]
 kzalloc include/linux/slab.h:733 [inline]
 jfs_fill_super+0xfb/0xc50 fs/jfs/super.c:495
 mount_bdev+0x26c/0x3a0 fs/super.c:1400
 legacy_get_tree+0xea/0x180 fs/fs_context.c:610
 vfs_get_tree+0x88/0x270 fs/super.c:1530
 do_new_mount+0x289/0xad0 fs/namespace.c:3040
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount+0x2d3/0x3c0 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Freed by task 3642:
 kasan_save_stack mm/kasan/common.c:38 [inline]
 kasan_set_track+0x3d/0x60 mm/kasan/common.c:45
 kasan_set_free_info+0x1f/0x40 mm/kasan/generic.c:370
 ____kasan_slab_free+0xd8/0x120 mm/kasan/common.c:367
 kasan_slab_free include/linux/kasan.h:200 [inline]
 slab_free_hook mm/slub.c:1759 [inline]
 slab_free_freelist_hook+0x12e/0x1a0 mm/slub.c:1785
 slab_free mm/slub.c:3539 [inline]
 kfree+0xda/0x210 mm/slub.c:4567
 generic_shutdown_super+0x130/0x310 fs/super.c:491
 kill_block_super+0x79/0xd0 fs/super.c:1427
 deactivate_locked_super+0xa7/0xf0 fs/super.c:331
 cleanup_mnt+0x4ce/0x560 fs/namespace.c:1186
 task_work_run+0x146/0x1c0 kernel/task_work.c:177
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 exit_to_user_mode_loop+0x124/0x150 kernel/entry/common.c:169
 exit_to_user_mode_prepare+0xb2/0x140 kernel/entry/common.c:201
 __syscall_exit_to_user_mode_work kernel/entry/common.c:283 [inline]
 syscall_exit_to_user_mode+0x26/0x60 kernel/entry/common.c:294
 do_syscall_64+0x49/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

The buggy address belongs to the object at ffff88807ee78000
 which belongs to the cache kmalloc-256 of size 256
The buggy address is located 148 bytes inside of
 256-byte region [ffff88807ee78000, ffff88807ee78100)

The buggy address belongs to the physical page:
page:ffffea0001fb9e00 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x7ee78
head:ffffea0001fb9e00 order:1 compound_mapcount:0 compound_pincount:0
flags: 0xfff00000010200(slab|head|node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000010200 ffffea00004bed80 dead000000000004 ffff888012041b40
raw: 0000000000000000 0000000080100010 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 1, migratetype Unmovable, gfp_mask 0xd20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 1, tgid 1 (init), ts 11597877098, free_ts 11078632692
 prep_new_page mm/page_alloc.c:2532 [inline]
 get_page_from_freelist+0x742/0x7c0 mm/page_alloc.c:4283
 __alloc_pages+0x259/0x560 mm/page_alloc.c:5549
 alloc_slab_page+0x70/0xf0 mm/slub.c:1829
 allocate_slab+0x5e/0x520 mm/slub.c:1974
 new_slab mm/slub.c:2034 [inline]
 ___slab_alloc+0x3ee/0xc40 mm/slub.c:3036
 __slab_alloc mm/slub.c:3123 [inline]
 slab_alloc_node mm/slub.c:3214 [inline]
 slab_alloc mm/slub.c:3256 [inline]
 __kmalloc+0x2bd/0x370 mm/slub.c:4425
 kmalloc_array include/linux/slab.h:640 [inline]
 kcalloc include/linux/slab.h:671 [inline]
 __list_lru_init+0xa0/0x5f0 mm/list_lru.c:571
 alloc_super+0x7a7/0x920 fs/super.c:272
 sget_fc+0x257/0x6c0 fs/super.c:559
 vfs_get_super fs/super.c:1163 [inline]
 get_tree_nodev+0x26/0x160 fs/super.c:1198
 vfs_get_tree+0x88/0x270 fs/super.c:1530
 do_new_mount+0x289/0xad0 fs/namespace.c:3040
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount+0x2d3/0x3c0 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1449 [inline]
 free_pcp_prepare+0x812/0x900 mm/page_alloc.c:1499
 free_unref_page_prepare mm/page_alloc.c:3380 [inline]
 free_unref_page+0x7d/0x5f0 mm/page_alloc.c:3476
 free_contig_range+0xa3/0x160 mm/page_alloc.c:9457
 destroy_args+0xfe/0x91d mm/debug_vm_pgtable.c:1031
 debug_vm_pgtable+0x43e/0x497 mm/debug_vm_pgtable.c:1354
 do_one_initcall+0x1c9/0x400 init/main.c:1296
 do_initcall_level+0x168/0x218 init/main.c:1369
 do_initcalls+0x4b/0x8c init/main.c:1385
 kernel_init_freeable+0x3f1/0x57b init/main.c:1623
 kernel_init+0x19/0x2b0 init/main.c:1512
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306

Memory state around the buggy address:
 ffff88807ee77f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88807ee78000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff88807ee78080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                         ^
 ffff88807ee78100: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88807ee78180: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
==================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
