Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFDC6C37B5
	for <lists+jfs-discussion@lfdr.de>; Tue, 21 Mar 2023 18:06:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pefQb-0005Fc-DF;
	Tue, 21 Mar 2023 17:05:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ruMZZAkbAAUx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pefPp-0005Io-NQ for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Mar 2023 17:04:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XayrB2Q10iQ9KDCn+y6kH0Sd/d+Kv23eHMmV78ksiXk=; b=Yxa0G0qCbC6EuzF7ROcVr6bQ+P
 I9HT56BML52/zhW727yqvPF+/Dk8wntJwK53vdMNxDAntIatTkrSR09wLxv0LAkb2PN+JXW3AE2oc
 qBmb3IKHZCNGsF05yipJ3RkioklGwJclsqZnzX5eM6YliiwwhfUtJNHrVlbF8VIEGRSM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XayrB2Q10iQ9KDCn+y6kH0Sd/d+Kv23eHMmV78ksiXk=; b=f
 RMvGtNEhNpyaHk/EbrApBpVBZ3zOdWYPOrDQr2ddMC2LSvcAIPoETTYmVygzCjpZVyOu494qDVzSM
 xYurDQ5aNyIx2F+vXFLKf4rdwT8enSjop2hZYnrSTAGhCRwWSZhhoSmsiv+fTC9cpmUQiC6JwsEFb
 J9EUTKIW3g1TSDlg=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pefPo-0001be-Bu for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Mar 2023 17:04:54 +0000
Received: by mail-il1-f199.google.com with SMTP id
 l8-20020a056e02066800b003247f2ba648so4524785ilt.5
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 21 Mar 2023 10:04:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679418286;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XayrB2Q10iQ9KDCn+y6kH0Sd/d+Kv23eHMmV78ksiXk=;
 b=JZ50z0VkJDS8CHLiaxWQryINZq2N2YPdlGpFGPB3Mew0JWg5R9bK461HZEnZCDB6HP
 1Y/wELNOGDSSKzhHtdmr5YkCubO4Nc1g8CGVklqJJPiSFB9yXE0sZzhIaR2J6Dp+WBNU
 jHbISsQq4qj1WHAovVlnuzc2hBBbjDY6N+4ozoHg2bm8OumvqKJq/zn/A+8ZgL7NO8EV
 qi55oZdZ+9+HV0/Emen8yMLEys7xNND551MtibIISnWb/Khhp5QCbDgx0L2P9eWhiwEw
 E4oMkUuI4wS6pkNoHA30S7V5VhUlMS08uXE5HKYfgDmx99mIJAXZ7vy9BNa1Xy80oXjC
 LelA==
X-Gm-Message-State: AO0yUKUcq5HTvTN6mX4WJxkBzpemwPhOEM6La/5DB3CRGI+m1nxUthMM
 EpjOMQJgnJmsTzAHWQ4y7lBFA/gvMxYHMFkYXKgTapKPUDZr
X-Google-Smtp-Source: AK7set/+/Gu3yj2EBYhPBnXWIcPyOISVi04ppsDlO/lKz/yQrRwvJQDEoznbHkTqLClU+u6/WYNZsCtkY/EAjuze51tNhOCX+vDt
MIME-Version: 1.0
X-Received: by 2002:a92:7a09:0:b0:323:1fa:dee1 with SMTP id
 v9-20020a927a09000000b0032301fadee1mr1280182ilc.1.1679418286769; Tue, 21 Mar
 2023 10:04:46 -0700 (PDT)
Date: Tue, 21 Mar 2023 10:04:46 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000698e5d05f76c0adf@google.com>
From: syzbot <syzbot+9f06ddd18bf059dff2ad@syzkaller.appspotmail.com>
To: akpm@linux-foundation.org, broonie@kernel.org, 
 ckeepax@opensource.cirrus.com, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, shaggy@kernel.org, syzkaller-bugs@googlegroups.com, 
 willy@infradead.org
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: a3671bd86a97
 Merge tag 'fbdev-for-6.3-rc3' of git://git.ke.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=107e1881c80000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
X-Headers-End: 1pefPo-0001be-Bu
X-Mailman-Approved-At: Tue, 21 Mar 2023 17:05:38 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: invalid-free in sys_mount
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

HEAD commit:    a3671bd86a97 Merge tag 'fbdev-for-6.3-rc3' of git://git.ke..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=107e1881c80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e23c4bcf73cdc669
dashboard link: https://syzkaller.appspot.com/bug?extid=9f06ddd18bf059dff2ad
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11b20616c80000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/db8fe1c9da8e/disk-a3671bd8.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/cc4fa03b59c8/vmlinux-a3671bd8.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0626413c51bd/bzImage-a3671bd8.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/80fe3a2b2b37/mount_0.gz

The issue was bisected to:

commit a0b6e4048228829485a43247c12c7774531728c4
Author: Charles Keepax <ckeepax@opensource.cirrus.com>
Date:   Thu Jun 23 12:52:28 2022 +0000

    ASoC: cx20442: Remove now redundant non_legacy_dai_naming flag

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12756e1cc80000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=11756e1cc80000
console output: https://syzkaller.appspot.com/x/log.txt?x=16756e1cc80000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9f06ddd18bf059dff2ad@syzkaller.appspotmail.com
Fixes: a0b6e4048228 ("ASoC: cx20442: Remove now redundant non_legacy_dai_naming flag")

loop5: detected capacity change from 0 to 32768
==================================================================
BUG: KASAN: double-free in slab_free mm/slub.c:3787 [inline]
BUG: KASAN: double-free in __kmem_cache_free+0xaf/0x2d0 mm/slub.c:3800
Free of addr ffff88807d3f8000 by task syz-executor.5/5275

CPU: 0 PID: 5275 Comm: syz-executor.5 Not tainted 6.3.0-rc2-syzkaller-00405-ga3671bd86a97 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/02/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd9/0x150 lib/dump_stack.c:106
 print_address_description.constprop.0+0x2c/0x3c0 mm/kasan/report.c:319
 print_report mm/kasan/report.c:430 [inline]
 kasan_report_invalid_free+0xe8/0x100 mm/kasan/report.c:501
 ____kasan_slab_free+0x185/0x1c0 mm/kasan/common.c:225
 kasan_slab_free include/linux/kasan.h:162 [inline]
 slab_free_hook mm/slub.c:1781 [inline]
 slab_free_freelist_hook+0x8b/0x1c0 mm/slub.c:1807
 slab_free mm/slub.c:3787 [inline]
 __kmem_cache_free+0xaf/0x2d0 mm/slub.c:3800
 __do_sys_mount fs/namespace.c:3596 [inline]
 __se_sys_mount fs/namespace.c:3571 [inline]
 __x64_sys_mount+0x212/0x300 fs/namespace.c:3571
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f8f2288d62a
Code: 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 b8 04 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f8f236bdf88 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000005e3e RCX: 00007f8f2288d62a
RDX: 0000000020005e00 RSI: 0000000020005e40 RDI: 00007f8f236bdfe0
RBP: 00007f8f236be020 R08: 00007f8f236be020 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000020005e00
R13: 0000000020005e40 R14: 00007f8f236bdfe0 R15: 0000000020002680
 </TASK>

Allocated by task 5275:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 kasan_set_track+0x25/0x30 mm/kasan/common.c:52
 ____kasan_kmalloc mm/kasan/common.c:374 [inline]
 ____kasan_kmalloc mm/kasan/common.c:333 [inline]
 __kasan_kmalloc+0xa2/0xb0 mm/kasan/common.c:383
 kmalloc include/linux/slab.h:580 [inline]
 copy_mount_options+0x55/0x180 fs/namespace.c:3250
 __do_sys_mount fs/namespace.c:3589 [inline]
 __se_sys_mount fs/namespace.c:3571 [inline]
 __x64_sys_mount+0x1ad/0x300 fs/namespace.c:3571
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Freed by task 5096:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 kasan_set_track+0x25/0x30 mm/kasan/common.c:52
 kasan_save_free_info+0x2e/0x40 mm/kasan/generic.c:521
 ____kasan_slab_free mm/kasan/common.c:236 [inline]
 ____kasan_slab_free+0x160/0x1c0 mm/kasan/common.c:200
 kasan_slab_free include/linux/kasan.h:162 [inline]
 slab_free_hook mm/slub.c:1781 [inline]
 slab_free_freelist_hook+0x8b/0x1c0 mm/slub.c:1807
 slab_free mm/slub.c:3787 [inline]
 __kmem_cache_free+0xaf/0x2d0 mm/slub.c:3800
 diUnmount+0xf1/0x130 fs/jfs/jfs_imap.c:195
 jfs_umount+0x189/0x430 fs/jfs/jfs_umount.c:63
 jfs_put_super+0x85/0x1d0 fs/jfs/super.c:194
 generic_shutdown_super+0x158/0x480 fs/super.c:491
 kill_block_super+0x9b/0xf0 fs/super.c:1398
 deactivate_locked_super+0x98/0x160 fs/super.c:331
 deactivate_super+0xb1/0xd0 fs/super.c:362
 cleanup_mnt+0x2ae/0x3d0 fs/namespace.c:1177
 task_work_run+0x16f/0x270 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:171 [inline]
 exit_to_user_mode_prepare+0x23c/0x250 kernel/entry/common.c:203
 __syscall_exit_to_user_mode_work kernel/entry/common.c:285 [inline]
 syscall_exit_to_user_mode+0x1d/0x50 kernel/entry/common.c:296
 do_syscall_64+0x46/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

The buggy address belongs to the object at ffff88807d3f8000
 which belongs to the cache kmalloc-4k of size 4096
The buggy address is located 0 bytes inside of
 4096-byte region [ffff88807d3f8000, ffff88807d3f9000)

The buggy address belongs to the physical page:
page:ffffea0001f4fe00 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x7d3f8
head:ffffea0001f4fe00 order:3 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0xfff00000010200(slab|head|node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000010200 ffff888012442140 dead000000000122 0000000000000000
raw: 0000000000000000 0000000000040004 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask 0x1d20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_HARDWALL), pid 5275, tgid 5274 (syz-executor.5), ts 50645577439, free_ts 50622147528
 prep_new_page mm/page_alloc.c:2552 [inline]
 get_page_from_freelist+0x1190/0x2e20 mm/page_alloc.c:4325
 __alloc_pages+0x1cb/0x4a0 mm/page_alloc.c:5591
 alloc_pages+0x1aa/0x270 mm/mempolicy.c:2283
 alloc_slab_page mm/slub.c:1851 [inline]
 allocate_slab+0x25f/0x390 mm/slub.c:1998
 new_slab mm/slub.c:2051 [inline]
 ___slab_alloc+0xa91/0x1400 mm/slub.c:3193
 __slab_alloc.constprop.0+0x56/0xa0 mm/slub.c:3292
 __slab_alloc_node mm/slub.c:3345 [inline]
 slab_alloc_node mm/slub.c:3442 [inline]
 __kmem_cache_alloc_node+0x136/0x320 mm/slub.c:3491
 kmalloc_trace+0x26/0xe0 mm/slab_common.c:1061
 kmalloc include/linux/slab.h:580 [inline]
 copy_mount_options+0x55/0x180 fs/namespace.c:3250
 __do_sys_mount fs/namespace.c:3589 [inline]
 __se_sys_mount fs/namespace.c:3571 [inline]
 __x64_sys_mount+0x1ad/0x300 fs/namespace.c:3571
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1453 [inline]
 free_pcp_prepare+0x5d5/0xa50 mm/page_alloc.c:1503
 free_unref_page_prepare mm/page_alloc.c:3387 [inline]
 free_unref_page+0x1d/0x490 mm/page_alloc.c:3482
 diMount+0x78c/0x830 fs/jfs/jfs_imap.c:115
 jfs_mount_rw+0x239/0x6d0 fs/jfs/jfs_mount.c:240
 jfs_remount+0x520/0x660 fs/jfs/super.c:454
 legacy_reconfigure+0x119/0x180 fs/fs_context.c:633
 reconfigure_super+0x40c/0xa30 fs/super.c:947
 vfs_fsconfig_locked fs/fsopen.c:254 [inline]
 __do_sys_fsconfig+0xa3a/0xc20 fs/fsopen.c:439
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Memory state around the buggy address:
 ffff88807d3f7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88807d3f7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff88807d3f8000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                   ^
 ffff88807d3f8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff88807d3f8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
