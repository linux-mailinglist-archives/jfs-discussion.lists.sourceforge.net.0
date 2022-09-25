Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A94A5EA6FE
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Sep 2022 15:21:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oco2t-0000gj-UI;
	Mon, 26 Sep 2022 13:21:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3yHEwYwkbAI09FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ocTR4-0004DI-5v for jfs-discussion@lists.sourceforge.net;
 Sun, 25 Sep 2022 15:20:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t0lUMFX9oC3wl68MfBTkH1VNOpT4E6xfVlDfAYgErEU=; b=d1d5HkpsM+upXYz1NjLDu5QyaF
 WytWjd/Hzx+ANjcmaPTivq1D1qUn+fnN2NTNzf3Sl4NkHy/YfiBy/9/eWviGs8HLCKS658O3dc1nR
 O/b0NG7UVFKqaeV7DrzEfSxIDw7l0XmCZSl8DiOR6E9lLE8wk/6Vr+knZ6hV2ooHKZU4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=t0lUMFX9oC3wl68MfBTkH1VNOpT4E6xfVlDfAYgErEU=; b=B
 fR1rGc97jp9HBD8or/LuAJ4TWSItpxzr/QRgiip6FC2EoD1IIv5pf+XgrWYwiyr7z2KTfrhHmd8ea
 ZbErpQc/2Gobm0bZqIngQbCC5JuE3oCxhYS2v/fJToUVlmVQ3LyooYdUwVp9K/wlJLE3O2F8ufee8
 f/HYPQsjTAImcmPI=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ocTR0-0003j2-57 for jfs-discussion@lists.sourceforge.net;
 Sun, 25 Sep 2022 15:20:49 +0000
Received: by mail-io1-f72.google.com with SMTP id
 5-20020a5d9c05000000b006a44709a638so2543931ioe.11
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 25 Sep 2022 08:20:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=t0lUMFX9oC3wl68MfBTkH1VNOpT4E6xfVlDfAYgErEU=;
 b=XgpQEDxpTy0jHlgRvhE0lOYaymeLaib14VfYDLweiIsjae4ExRSqFeO+7pbQdODUBF
 pNr8mwkHnOa2yMGhfL/++V1JqaBtKScET/cvxKaH8puOUuvZHqVZc/8La/8cgz0Cl7sj
 uVtBecVrxSKIeyIlBVXKnt4NrEmJovHss8ErhYDp9wR343RsCrqlIuSmAFWxcQmjsqnC
 mILur0fppQzEPHAOjGg+p7wTkilMkM5w1lC7PIjdyCqt+ablguENxjRiDANrl9rX9MDX
 S57QDX8wT4BRCNH4oRQLM8wYAxiX2SlUmRT6+kSpm9R9yJondMRaRpC0P3WDo79GPtq2
 41fA==
X-Gm-Message-State: ACrzQf0IQryTVBusvC74HC1xaJ5kIwLC8W5L5Haa8tLNgQ1glMRQc+BO
 ktkG/JZuhqbaycqzwJtEGbLMZo6DU0NdR6tWfESTMh2k872i
X-Google-Smtp-Source: AMsMyM5B7TT3rEDbbPfVZtYaJkFhHaKcZ8ovjmyEe/RPmYlojblq2Q1lDBWSWW6+RUaRHUrK88JOWDg0vV6Pm7mS8pFptQ3/e1Ru
MIME-Version: 1.0
X-Received: by 2002:a6b:3e87:0:b0:6a1:ac62:c8db with SMTP id
 l129-20020a6b3e87000000b006a1ac62c8dbmr8003013ioa.160.1664119240597; Sun, 25
 Sep 2022 08:20:40 -0700 (PDT)
Date: Sun, 25 Sep 2022 08:20:40 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000332a2505e981f474@google.com>
From: syzbot <syzbot+9924e2a08d9ba0fd4ce2@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 1a61b828566f
 Merge tag 'char-misc-6.0-rc7' of git://git.ke.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=145e5098880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1ocTR0-0003j2-57
X-Mailman-Approved-At: Mon, 26 Sep 2022 13:21:15 +0000
Subject: [Jfs-discussion] [syzbot] KASAN: slab-out-of-bounds Read in dtSearch
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

HEAD commit:    1a61b828566f Merge tag 'char-misc-6.0-rc7' of git://git.ke..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=145e5098880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=122d7bd4fc8e0ecb
dashboard link: https://syzkaller.appspot.com/bug?extid=9924e2a08d9ba0fd4ce2
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1708652f080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=112601ff080000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/367e34e7ff83/disk-1a61b828.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/91a2819fe451/vmlinux-1a61b828.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9924e2a08d9ba0fd4ce2@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 65535
==================================================================
BUG: KASAN: slab-out-of-bounds in ciCompare fs/jfs/jfs_dtree.c:3393 [inline]
BUG: KASAN: slab-out-of-bounds in dtSearch+0x1d88/0x2000 fs/jfs/jfs_dtree.c:639
Read of size 1 at addr ffff8880738eb714 by task syz-executor104/3605

CPU: 1 PID: 3605 Comm: syz-executor104 Not tainted 6.0.0-rc6-syzkaller-00309-g1a61b828566f #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:317 [inline]
 print_report.cold+0x2ba/0x719 mm/kasan/report.c:433
 kasan_report+0xb1/0x1e0 mm/kasan/report.c:495
 ciCompare fs/jfs/jfs_dtree.c:3393 [inline]
 dtSearch+0x1d88/0x2000 fs/jfs/jfs_dtree.c:639
 jfs_lookup+0x17c/0x2f0 fs/jfs/namei.c:1454
 lookup_open.isra.0+0x76a/0x12a0 fs/namei.c:3391
 open_last_lookups fs/namei.c:3481 [inline]
 path_openat+0x996/0x28f0 fs/namei.c:3688
 do_filp_open+0x1b6/0x400 fs/namei.c:3718
 do_sys_openat2+0x16d/0x4c0 fs/open.c:1313
 do_sys_open fs/open.c:1329 [inline]
 __do_sys_open fs/open.c:1337 [inline]
 __se_sys_open fs/open.c:1333 [inline]
 __x64_sys_open+0x119/0x1c0 fs/open.c:1333
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f5b32967089
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffde79b8fd8 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f5b32967089
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 00000000200001c0
RBP: 00007f5b32926850 R08: 0000000000000000 R09: 0000000000000000
R10: 00007ffde79b8ea0 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00083878000000f8 R15: 0000000000000000
 </TASK>

Allocated by task 3605:
 kasan_save_stack+0x1e/0x40 mm/kasan/common.c:38
 kasan_set_track mm/kasan/common.c:45 [inline]
 set_alloc_info mm/kasan/common.c:437 [inline]
 __kasan_slab_alloc+0x90/0xc0 mm/kasan/common.c:470
 kasan_slab_alloc include/linux/kasan.h:224 [inline]
 slab_post_alloc_hook mm/slab.h:727 [inline]
 slab_alloc_node mm/slub.c:3248 [inline]
 slab_alloc mm/slub.c:3256 [inline]
 __kmem_cache_alloc_lru mm/slub.c:3263 [inline]
 kmem_cache_alloc_lru+0x255/0x720 mm/slub.c:3280
 alloc_inode_sb include/linux/fs.h:3103 [inline]
 jfs_alloc_inode+0x23/0x60 fs/jfs/super.c:105
 alloc_inode+0x61/0x230 fs/inode.c:260
 iget_locked+0x1b7/0x6f0 fs/inode.c:1287
 jfs_iget+0x1a/0x4d0 fs/jfs/inode.c:29
 jfs_fill_super+0x6a4/0xc70 fs/jfs/super.c:580
 mount_bdev+0x34d/0x410 fs/super.c:1400
 legacy_get_tree+0x105/0x220 fs/fs_context.c:610
 vfs_get_tree+0x89/0x2f0 fs/super.c:1530
 do_new_mount fs/namespace.c:3040 [inline]
 path_mount+0x1326/0x1e20 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

The buggy address belongs to the object at ffff8880738eae40
 which belongs to the cache jfs_ip of size 2240
The buggy address is located 20 bytes to the right of
 2240-byte region [ffff8880738eae40, ffff8880738eb700)

The buggy address belongs to the physical page:
page:ffffea0001ce3a00 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x738e8
head:ffffea0001ce3a00 order:3 compound_mapcount:0 compound_pincount:0
flags: 0xfff00000010200(slab|head|node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000010200 0000000000000000 dead000000000122 ffff88814635d640
raw: 0000000000000000 00000000800d000d 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Reclaimable, gfp_mask 0xd2050(__GFP_IO|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_RECLAIMABLE), pid 3605, tgid 3605 (syz-executor104), ts 44185585735, free_ts 10115165657
 prep_new_page mm/page_alloc.c:2532 [inline]
 get_page_from_freelist+0x109b/0x2ce0 mm/page_alloc.c:4283
 __alloc_pages+0x1c7/0x510 mm/page_alloc.c:5515
 alloc_pages+0x1a6/0x270 mm/mempolicy.c:2270
 alloc_slab_page mm/slub.c:1829 [inline]
 allocate_slab+0x27e/0x3d0 mm/slub.c:1974
 new_slab mm/slub.c:2034 [inline]
 ___slab_alloc+0x7f1/0xe10 mm/slub.c:3036
 __slab_alloc.constprop.0+0x4d/0xa0 mm/slub.c:3123
 slab_alloc_node mm/slub.c:3214 [inline]
 slab_alloc mm/slub.c:3256 [inline]
 __kmem_cache_alloc_lru mm/slub.c:3263 [inline]
 kmem_cache_alloc_lru+0x528/0x720 mm/slub.c:3280
 alloc_inode_sb include/linux/fs.h:3103 [inline]
 jfs_alloc_inode+0x23/0x60 fs/jfs/super.c:105
 alloc_inode+0x61/0x230 fs/inode.c:260
 new_inode_pseudo fs/inode.c:1019 [inline]
 new_inode+0x27/0x270 fs/inode.c:1047
 jfs_fill_super+0x436/0xc70 fs/jfs/super.c:544
 mount_bdev+0x34d/0x410 fs/super.c:1400
 legacy_get_tree+0x105/0x220 fs/fs_context.c:610
 vfs_get_tree+0x89/0x2f0 fs/super.c:1530
 do_new_mount fs/namespace.c:3040 [inline]
 path_mount+0x1326/0x1e20 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1449 [inline]
 free_pcp_prepare+0x5e4/0xd20 mm/page_alloc.c:1499
 free_unref_page_prepare mm/page_alloc.c:3380 [inline]
 free_unref_page+0x19/0x4d0 mm/page_alloc.c:3476
 free_contig_range+0xb1/0x180 mm/page_alloc.c:9408
 destroy_args+0xa8/0x646 mm/debug_vm_pgtable.c:1031
 debug_vm_pgtable+0x2945/0x29d6 mm/debug_vm_pgtable.c:1354
 do_one_initcall+0xfe/0x650 init/main.c:1296
 do_initcall_level init/main.c:1369 [inline]
 do_initcalls init/main.c:1385 [inline]
 do_basic_setup init/main.c:1404 [inline]
 kernel_init_freeable+0x6b1/0x73a init/main.c:1623
 kernel_init+0x1a/0x1d0 init/main.c:1512
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306

Memory state around the buggy address:
 ffff8880738eb600: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff8880738eb680: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>ffff8880738eb700: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
                         ^
 ffff8880738eb780: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff8880738eb800: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
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
