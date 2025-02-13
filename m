Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47797A34293
	for <lists+jfs-discussion@lfdr.de>; Thu, 13 Feb 2025 15:38:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tiaLh-0005Q9-Do;
	Thu, 13 Feb 2025 14:37:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3dI6tZwkbAIs7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tiSXX-0003nx-BM for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Feb 2025 06:17:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ErLpT+owluUcVoxZIbGCIZMLGWbp2TEoymv0LgM8X3s=; b=aceFFXNKuToyMn3fGLa2cgSSoq
 StEWGbRVfFaivoZT69JdbxMhDr5Q/xVNi4IYFAAzPrXq0ujndyCQOErgYgmDl0mIxwq+Yyz5c3aYe
 BiIVghviUYjNrr73poM3XHuBHRfpf8zbL/vyzfTqeCoUxVS1fOuahHB2G/S02/8gwmhc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ErLpT+owluUcVoxZIbGCIZMLGWbp2TEoymv0LgM8X3s=; b=L
 tAA3OxB6ZZsWrnhlCrDcKWjX/yH/2Vu1+SpiJWz0TXlLWZRGg+79Da3INQEWHzO5v4ay9vA9eUy5I
 2IGQQShXO3/XYMb4vmR8EV284oUE0p8IQG31wrhO7bjp6MmMz6QLyU6svcY59i8XQJzbK0Agm8YCV
 RWfzCeAUg/RspxGM=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tiSXW-00044K-W9 for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Feb 2025 06:17:36 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-3cfba354f79so11447735ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Feb 2025 22:17:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739427444; x=1740032244;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ErLpT+owluUcVoxZIbGCIZMLGWbp2TEoymv0LgM8X3s=;
 b=EN06tYz9OhsQe2hTn37P26hvjcgjn9InClF461MY+AzVrvGXSsZ0T8r9NXUdNq1VEa
 VC9RhrE3RxxTSCBbDy9+v6LLRKRfHtABmEL4uHuk5CDaSeQM2TpEFZ3Uqsc6Xmu/nSOa
 42GwYzA87lAH9E4ROkD94scDkPWzSwUElrc1yJfg4tA78UIpfshB66GHZ41+ecciqdcJ
 L/zCRK1EeeeDESowWqlt4T5q71f7WmB993eQK8vLfrk2ptqMlKRkZ3wCOhS8u4VlLmqv
 +fjpPUuapcZwmadihukMQzLTlImPJDvIE5X/2BvvdzSRjYe3M0BbvHBfo5os9gltWyp+
 Q1fg==
X-Gm-Message-State: AOJu0YwetgnDO4KiV2yDscI3Hl9fht7kxDW1qN34aZ1IFYFovvENJ2Jr
 G9F8PwMLJI53y7MLUBom7+E4XmAFFfpT6/RQpylWvYWIl2g+owjzUoNdOVcZVh1XAoK3qJ8tzWg
 T7HmfIGCjLt5/k6EnZjhw6HDV+1TxrY70DsS5h8Td+uPPVAdClMbfxcT0yw==
X-Google-Smtp-Source: AGHT+IGyhBu9JRj2DsigdpzAQy/l26YGNG9bP/Tk4dK+Sw5lefnGMD7J7VD50K/1ErN48XqFRgWjkZ3m2LUnzD+2qD4J8wesNXEK
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1787:b0:3d0:618c:1b22 with SMTP id
 e9e14a558f8ab-3d17bf3791emr49751825ab.11.1739427444332; Wed, 12 Feb 2025
 22:17:24 -0800 (PST)
Date: Wed, 12 Feb 2025 22:17:24 -0800
In-Reply-To: <000000000000ab44fc06203f0d28@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67ad8e74.050a0220.110943.0058.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 lizhi.xu@windriver.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 4dc1d1bec898 Merge tag 'mfd-fixes-6.14' of git://git.kerne..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=15e47bdf980000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.208 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.208 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1tiSXW-00044K-W9
X-Mailman-Approved-At: Thu, 13 Feb 2025 14:37:51 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-use-after-free
 Read in lmLogInit
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
Reply-To: syzbot <syzbot+d16facb00df3f446511c@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    4dc1d1bec898 Merge tag 'mfd-fixes-6.14' of git://git.kerne..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=15e47bdf980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3c2347dd6174fbe2
dashboard link: https://syzkaller.appspot.com/bug?extid=d16facb00df3f446511c
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12a8caa4580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13dde3f8580000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-4dc1d1be.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/69a70e883a61/vmlinux-4dc1d1be.xz
kernel image: https://storage.googleapis.com/syzbot-assets/e5f11135c484/bzImage-4dc1d1be.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/5c023dde1d54/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=15dde3f8580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d16facb00df3f446511c@syzkaller.appspotmail.com

syz-executor386: attempt to access beyond end of device
loop0: rw=2049, sector=30728, nr_sectors = 8 limit=0
lbmIODone: I/O error in JFS log
==================================================================
BUG: KASAN: slab-use-after-free in lbmLogShutdown fs/jfs/jfs_logmgr.c:1863 [inline]
BUG: KASAN: slab-use-after-free in lmLogInit+0xc9f/0x1c90 fs/jfs/jfs_logmgr.c:1416
Read of size 8 at addr ffff888050158518 by task syz-executor386/6808

CPU: 0 UID: 0 PID: 6808 Comm: syz-executor386 Not tainted 6.14.0-rc2-syzkaller-00041-g4dc1d1bec898 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:489
 kasan_report+0x143/0x180 mm/kasan/report.c:602
 lbmLogShutdown fs/jfs/jfs_logmgr.c:1863 [inline]
 lmLogInit+0xc9f/0x1c90 fs/jfs/jfs_logmgr.c:1416
 open_inline_log fs/jfs/jfs_logmgr.c:1175 [inline]
 lmLogOpen+0x55e/0x1040 fs/jfs/jfs_logmgr.c:1069
 jfs_mount_rw+0xf1/0x6a0 fs/jfs/jfs_mount.c:257
 jfs_reconfigure+0x632/0x9d0 fs/jfs/super.c:409
 reconfigure_super+0x43a/0x870 fs/super.c:1083
 do_remount fs/namespace.c:3100 [inline]
 path_mount+0xc22/0xfa0 fs/namespace.c:3879
 do_mount fs/namespace.c:3900 [inline]
 __do_sys_mount fs/namespace.c:4111 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:4088
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fea9edf35e9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 c1 1f 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fea9e59b168 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007fea9ee804a8 RCX: 00007fea9edf35e9
RDX: 0000000000000000 RSI: 0000400000000000 RDI: 0000000000000000
RBP: 00007fea9ee804a0 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000001c0030 R11: 0000000000000246 R12: 00007fea9ee804ac
R13: 000000000000000b R14: 00007ffe11bf4590 R15: 00007ffe11bf4678
 </TASK>

Allocated by task 6808:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 poison_kmalloc_redzone mm/kasan/common.c:377 [inline]
 __kasan_kmalloc+0x98/0xb0 mm/kasan/common.c:394
 kasan_kmalloc include/linux/kasan.h:260 [inline]
 __kmalloc_cache_noprof+0x243/0x390 mm/slub.c:4325
 kmalloc_noprof include/linux/slab.h:901 [inline]
 lbmLogInit fs/jfs/jfs_logmgr.c:1822 [inline]
 lmLogInit+0x3b4/0x1c90 fs/jfs/jfs_logmgr.c:1270
 open_inline_log fs/jfs/jfs_logmgr.c:1175 [inline]
 lmLogOpen+0x55e/0x1040 fs/jfs/jfs_logmgr.c:1069
 jfs_mount_rw+0xf1/0x6a0 fs/jfs/jfs_mount.c:257
 jfs_reconfigure+0x632/0x9d0 fs/jfs/super.c:409
 reconfigure_super+0x43a/0x870 fs/super.c:1083
 do_remount fs/namespace.c:3100 [inline]
 path_mount+0xc22/0xfa0 fs/namespace.c:3879
 do_mount fs/namespace.c:3900 [inline]
 __do_sys_mount fs/namespace.c:4111 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:4088
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Freed by task 6808:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 kasan_save_free_info+0x40/0x50 mm/kasan/generic.c:576
 poison_slab_object mm/kasan/common.c:247 [inline]
 __kasan_slab_free+0x59/0x70 mm/kasan/common.c:264
 kasan_slab_free include/linux/kasan.h:233 [inline]
 slab_free_hook mm/slub.c:2353 [inline]
 slab_free mm/slub.c:4609 [inline]
 kfree+0x196/0x430 mm/slub.c:4757
 lbmLogShutdown fs/jfs/jfs_logmgr.c:1865 [inline]
 lmLogInit+0xccd/0x1c90 fs/jfs/jfs_logmgr.c:1416
 open_inline_log fs/jfs/jfs_logmgr.c:1175 [inline]
 lmLogOpen+0x55e/0x1040 fs/jfs/jfs_logmgr.c:1069
 jfs_mount_rw+0xf1/0x6a0 fs/jfs/jfs_mount.c:257
 jfs_reconfigure+0x632/0x9d0 fs/jfs/super.c:409
 reconfigure_super+0x43a/0x870 fs/super.c:1083
 do_remount fs/namespace.c:3100 [inline]
 path_mount+0xc22/0xfa0 fs/namespace.c:3879
 do_mount fs/namespace.c:3900 [inline]
 __do_sys_mount fs/namespace.c:4111 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:4088
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

The buggy address belongs to the object at ffff888050158500
 which belongs to the cache kmalloc-192 of size 192
The buggy address is located 24 bytes inside of
 freed 192-byte region [ffff888050158500, ffff8880501585c0)

The buggy address belongs to the physical page:
page: refcount:0 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x50158
flags: 0x4fff00000000000(node=1|zone=1|lastcpupid=0x7ff)
page_type: f5(slab)
raw: 04fff00000000000 ffff88801ac413c0 ffffea0000d893c0 dead000000000002
raw: 0000000000000000 0000000000100010 00000000f5000000 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 0, migratetype Unmovable, gfp_mask 0x52cc0(GFP_KERNEL|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP), pid 4797, tgid 4797 (kworker/0:3), ts 140090156794, free_ts 138950899992
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x1f4/0x240 mm/page_alloc.c:1551
 prep_new_page mm/page_alloc.c:1559 [inline]
 get_page_from_freelist+0x365c/0x37a0 mm/page_alloc.c:3477
 __alloc_frozen_pages_noprof+0x292/0x710 mm/page_alloc.c:4739
 alloc_pages_mpol+0x311/0x660 mm/mempolicy.c:2270
 alloc_slab_page mm/slub.c:2423 [inline]
 allocate_slab+0x8f/0x3a0 mm/slub.c:2587
 new_slab mm/slub.c:2640 [inline]
 ___slab_alloc+0xc27/0x14a0 mm/slub.c:3826
 __slab_alloc+0x58/0xa0 mm/slub.c:3916
 __slab_alloc_node mm/slub.c:3991 [inline]
 slab_alloc_node mm/slub.c:4152 [inline]
 __kmalloc_cache_noprof+0x27b/0x390 mm/slub.c:4320
 kmalloc_noprof include/linux/slab.h:901 [inline]
 kzalloc_noprof include/linux/slab.h:1037 [inline]
 virtio_gpu_plane_duplicate_state+0x72/0xb0 drivers/gpu/drm/virtio/virtgpu_plane.c:79
 drm_atomic_get_plane_state+0x247/0x500 drivers/gpu/drm/drm_atomic.c:545
 drm_atomic_helper_dirtyfb+0xc5f/0xe60 drivers/gpu/drm/drm_damage_helper.c:171
 drm_fbdev_shmem_helper_fb_dirty+0x151/0x2c0 drivers/gpu/drm/drm_fbdev_shmem.c:117
 drm_fb_helper_fb_dirty drivers/gpu/drm/drm_fb_helper.c:376 [inline]
 drm_fb_helper_damage_work+0x275/0x880 drivers/gpu/drm/drm_fb_helper.c:399
 process_one_work kernel/workqueue.c:3236 [inline]
 process_scheduled_works+0xa66/0x1840 kernel/workqueue.c:3317
 worker_thread+0x870/0xd30 kernel/workqueue.c:3398
 kthread+0x7a9/0x920 kernel/kthread.c:464
page last free pid 5356 tgid 5356 stack trace:
 reset_page_owner include/linux/page_owner.h:25 [inline]
 free_pages_prepare mm/page_alloc.c:1127 [inline]
 free_frozen_pages+0xe0d/0x10e0 mm/page_alloc.c:2660
 discard_slab mm/slub.c:2684 [inline]
 __put_partials+0x160/0x1c0 mm/slub.c:3153
 put_cpu_partial+0x17c/0x250 mm/slub.c:3228
 __slab_free+0x290/0x380 mm/slub.c:4479
 qlink_free mm/kasan/quarantine.c:163 [inline]
 qlist_free_all+0x9a/0x140 mm/kasan/quarantine.c:179
 kasan_quarantine_reduce+0x14f/0x170 mm/kasan/quarantine.c:286
 __kasan_slab_alloc+0x23/0x80 mm/kasan/common.c:329
 kasan_slab_alloc include/linux/kasan.h:250 [inline]
 slab_post_alloc_hook mm/slub.c:4115 [inline]
 slab_alloc_node mm/slub.c:4164 [inline]
 kmem_cache_alloc_noprof+0x1d9/0x380 mm/slub.c:4171
 getname_flags+0xb7/0x540 fs/namei.c:139
 do_sys_openat2+0xd2/0x1d0 fs/open.c:1422
 do_sys_open fs/open.c:1443 [inline]
 __do_sys_openat fs/open.c:1459 [inline]
 __se_sys_openat fs/open.c:1454 [inline]
 __x64_sys_openat+0x247/0x2a0 fs/open.c:1454
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Memory state around the buggy address:
 ffff888050158400: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888050158480: fb fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc
>ffff888050158500: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                            ^
 ffff888050158580: fb fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc
 ffff888050158600: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
==================================================================


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
