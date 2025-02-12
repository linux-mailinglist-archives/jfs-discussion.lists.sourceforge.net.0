Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2390A3289F
	for <lists+jfs-discussion@lfdr.de>; Wed, 12 Feb 2025 15:38:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tiDrv-0004yP-ML;
	Wed, 12 Feb 2025 14:37:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3mn6sZwkbAI09FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tiAR4-0002iN-Ae for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Feb 2025 10:57:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H+vnwAF68RHU4ZynhNRDv2ih1IafQUFhBsL9H42yE/U=; b=im9cFRNBW3H+/BC3mRGghpHx9L
 AhLS3sZVqReiSMhgQtem/xy0/DSs3guO4t9o7867/d8vLVptPK5EP01aMz8AGroOIoPgCsMKnBSGM
 pyNgOnJ9MQujrFUyKgUlUlahaOlda/+OaZ4LelbLaV8qzx5fjgsPPyvaVxURKbfSUCPE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H+vnwAF68RHU4ZynhNRDv2ih1IafQUFhBsL9H42yE/U=; b=A
 vqILCoFn3wqbMerIA4RWpZO8qGT6ULhMqm5UchaezxeMtY6mqlH250sgJ1FxpVo9nhH9njWet7hko
 TyCShtlfpb4SgMANA1J3WY55Yqn94CGeZozdvOgylP4RuvXUKg7yuiaYcrcPuSB57Pof+vTmbXzL6
 YccF8cic089ssx4o=;
Received: from mail-io1-f79.google.com ([209.85.166.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tiAR3-0000O7-A3 for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Feb 2025 10:57:42 +0000
Received: by mail-io1-f79.google.com with SMTP id
 ca18e2360f4ac-8555eff9e0dso4165739f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Feb 2025 02:57:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739357850; x=1739962650;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=H+vnwAF68RHU4ZynhNRDv2ih1IafQUFhBsL9H42yE/U=;
 b=SS209VV6D9gQ4HtfEsdz7KjJcWFJkkbg2/zQOJuDsDqm3W2U7PO41t4Oh3JJm5Tk4q
 5tDHbCs6KmCC7TB2wky1el0XdPr/ey+FfdctFIgl2/AlQosVLbFEwB6VSGgVIbxYO+Io
 sHoUSOqAkK4seH6m5xxGFfpZr2et8zM91atLuXUEu7JlvneC3yMnWALWGfn51vKav7RV
 eM9Tj9aahs85zvuFKLLJwKCq4fWACqPkFA/Lt/eWtly7vSM4z9+t0krQPEyy93F6h1ln
 /IhCbnB9MEA00ZEPG+32SenHE4xHEat5q1yGdxi+Zr5VpupUDysq94PUNSTCZ0JtGIai
 2Qwg==
X-Gm-Message-State: AOJu0YwSfHwpnr9PXI/2f22lSrnGWo2sghK4kFlCzePqm3bUtOul5R9X
 TiUdmX7+u3kGvg5XTpmrCLB60j1TTMTPU/a4yvleXRtYQB9X/S4uav8mAPeHXVnmyWdtPtj6pTJ
 4NTpwsnSspRBbp6sLDBS+dGxDulN96KdWlhh4yRacwOUliWij6G/ut8gKWw==
X-Google-Smtp-Source: AGHT+IEo/NNPEtaA7SrgcHVxqZvzthgRG4gD03QiFAMNwRi92u8PGd3e3tplGSTdJ4BVvcDxXbHWymcvW28Fojro2KVuft+erZHf
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a0d:b0:3d0:10ec:cc36 with SMTP id
 e9e14a558f8ab-3d17bf3acdamr22126015ab.11.1739357850608; Wed, 12 Feb 2025
 02:57:30 -0800 (PST)
Date: Wed, 12 Feb 2025 02:57:30 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67ac7e9a.050a0220.3d72c.0150.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 7ee983c850b4
 Merge tag 'drm-fixes-2025-02-08' of https://g.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=14a8dca4580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.79 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.79 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.79 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.79 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1tiAR3-0000O7-A3
X-Mailman-Approved-At: Wed, 12 Feb 2025 14:37:39 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Read in
 ea_get (4)
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
Reply-To: syzbot <syzbot+4e6e7e4279d046613bc5@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7ee983c850b4 Merge tag 'drm-fixes-2025-02-08' of https://g..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14a8dca4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1909f2f0d8e641ce
dashboard link: https://syzkaller.appspot.com/bug?extid=4e6e7e4279d046613bc5
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11bf61b0580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12a8dca4580000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-7ee983c8.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f2f78699fc41/vmlinux-7ee983c8.xz
kernel image: https://storage.googleapis.com/syzbot-assets/ca55e6e8dd01/bzImage-7ee983c8.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/b234819f8863/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=10a8dca4580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4e6e7e4279d046613bc5@syzkaller.appspotmail.com

ffff88804566b698: 90 b6 66 45 80 88 ff ff 00 00 00 00 00 00 00 00  ..fE............
ffff88804566b6a8: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
ffff88804566b6b8: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
==================================================================
BUG: KASAN: slab-out-of-bounds in hex_dump_to_buffer+0x731/0xba0 lib/hexdump.c:193
Read of size 1 at addr ffff88804566b6d0 by task syz-executor271/5307

CPU: 0 UID: 0 PID: 5307 Comm: syz-executor271 Not tainted 6.14.0-rc1-syzkaller-00181-g7ee983c850b4 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:489
 kasan_report+0x143/0x180 mm/kasan/report.c:602
 hex_dump_to_buffer+0x731/0xba0 lib/hexdump.c:193
 print_hex_dump+0x13f/0x250 lib/hexdump.c:276
 ea_get+0xd30/0x12e0 fs/jfs/xattr.c:565
 __jfs_setxattr+0xfc/0x1190 fs/jfs/xattr.c:675
 __jfs_xattr_set+0xf9/0x180 fs/jfs/xattr.c:936
 __vfs_setxattr+0x468/0x4a0 fs/xattr.c:200
 __vfs_setxattr_noperm+0x12e/0x660 fs/xattr.c:234
 vfs_setxattr+0x221/0x430 fs/xattr.c:321
 do_setxattr fs/xattr.c:636 [inline]
 filename_setxattr+0x2af/0x430 fs/xattr.c:665
 path_setxattrat+0x440/0x510 fs/xattr.c:713
 __do_sys_lsetxattr fs/xattr.c:754 [inline]
 __se_sys_lsetxattr fs/xattr.c:750 [inline]
 __x64_sys_lsetxattr+0xbf/0xe0 fs/xattr.c:750
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fee5a1fde19
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff6b319538 EFLAGS: 00000246 ORIG_RAX: 00000000000000bd
RAX: ffffffffffffffda RBX: 00007fee5a247095 RCX: 00007fee5a1fde19
RDX: 0000000000000000 RSI: 0000400000002580 RDI: 0000400000000080
RBP: 00007fee5a27a5f0 R08: 0000000000000001 R09: 00005555596ac4c0
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fff6b319560
R13: 00007fff6b319788 R14: 431bde82d7b634db R15: 00007fee5a24703b
 </TASK>

Allocated by task 5307:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 unpoison_slab_object mm/kasan/common.c:319 [inline]
 __kasan_slab_alloc+0x66/0x80 mm/kasan/common.c:345
 kasan_slab_alloc include/linux/kasan.h:250 [inline]
 slab_post_alloc_hook mm/slub.c:4115 [inline]
 slab_alloc_node mm/slub.c:4164 [inline]
 kmem_cache_alloc_lru_noprof+0x1dd/0x390 mm/slub.c:4183
 jfs_alloc_inode+0x28/0x70 fs/jfs/super.c:105
 alloc_inode+0x65/0x1a0 fs/inode.c:336
 iget_locked+0xf1/0x5a0 fs/inode.c:1487
 jfs_iget+0x23/0x3e0 fs/jfs/inode.c:29
 jfs_lookup+0x226/0x410 fs/jfs/namei.c:1469
 __lookup_slow+0x296/0x400 fs/namei.c:1793
 lookup_slow+0x53/0x70 fs/namei.c:1810
 walk_component+0x2e1/0x410 fs/namei.c:2114
 lookup_last fs/namei.c:2612 [inline]
 path_lookupat+0x16f/0x450 fs/namei.c:2636
 filename_lookup+0x2a3/0x670 fs/namei.c:2665
 filename_setxattr+0xb9/0x430 fs/xattr.c:660
 path_setxattrat+0x440/0x510 fs/xattr.c:713
 __do_sys_lsetxattr fs/xattr.c:754 [inline]
 __se_sys_lsetxattr fs/xattr.c:750 [inline]
 __x64_sys_lsetxattr+0xbf/0xe0 fs/xattr.c:750
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

The buggy address belongs to the object at ffff88804566ae18
 which belongs to the cache jfs_ip of size 2232
The buggy address is located 0 bytes to the right of
 allocated 2232-byte region [ffff88804566ae18, ffff88804566b6d0)

The buggy address belongs to the physical page:
page: refcount:0 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x45668
head: order:3 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0x4fff00000000040(head|node=1|zone=1|lastcpupid=0x7ff)
page_type: f5(slab)
raw: 04fff00000000040 ffff88801f64b780 dead000000000122 0000000000000000
raw: 0000000000000000 00000000800d000d 00000000f5000000 0000000000000000
head: 04fff00000000040 ffff88801f64b780 dead000000000122 0000000000000000
head: 0000000000000000 00000000800d000d 00000000f5000000 0000000000000000
head: 04fff00000000003 ffffea0001159a01 ffffffffffffffff 0000000000000000
head: 0000000000000008 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Reclaimable, gfp_mask 0xd2050(__GFP_IO|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_RECLAIMABLE), pid 5307, tgid 5307 (syz-executor271), ts 63066622694, free_ts 0
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
 kmem_cache_alloc_lru_noprof+0x26c/0x390 mm/slub.c:4183
 jfs_alloc_inode+0x28/0x70 fs/jfs/super.c:105
 alloc_inode+0x65/0x1a0 fs/inode.c:336
 new_inode_pseudo fs/inode.c:1174 [inline]
 new_inode+0x22/0x1d0 fs/inode.c:1193
 jfs_fill_super+0x570/0xd90 fs/jfs/super.c:511
 get_tree_bdev_flags+0x48c/0x5c0 fs/super.c:1636
 vfs_get_tree+0x90/0x2b0 fs/super.c:1814
 do_new_mount+0x2be/0xb40 fs/namespace.c:3560
 do_mount fs/namespace.c:3900 [inline]
 __do_sys_mount fs/namespace.c:4111 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:4088
page_owner free stack trace missing

Memory state around the buggy address:
 ffff88804566b580: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff88804566b600: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>ffff88804566b680: 00 00 00 00 00 00 00 00 00 00 fc fc fc fc fc fc
                                                 ^
 ffff88804566b700: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88804566b780: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
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
