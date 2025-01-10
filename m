Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7075EA09421
	for <lists+jfs-discussion@lfdr.de>; Fri, 10 Jan 2025 15:48:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tWGJ8-0003c2-MD;
	Fri, 10 Jan 2025 14:48:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ryCBZwkbADgmsteUffYlUjjcX.aiiafYomYlWihnYhn.Wig@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tWF4u-0001ws-3d for jfs-discussion@lists.sourceforge.net;
 Fri, 10 Jan 2025 13:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B4Z0CWw303lTtVud2MYwY7xPrgVtZoQdzsKW5WtoNCE=; b=LG41p1Kk0Vs2wvDeWTkalJRK1m
 NAfOhQpUz9lNYmRjWyowthk9HaY0cOQvumVgoyhxP14slI6sOuOQr/QIUbKmbvq6scyVxlgW/Hjrb
 Ln1GeCb5/dvT+Ie1HrIElEkw9qBIRJpMH3Qq/iB95xTuWpxLfJDqXaOdJLYoyktXa4cs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=B4Z0CWw303lTtVud2MYwY7xPrgVtZoQdzsKW5WtoNCE=; b=h
 fq38MoOevChsoeIMM+FPnCjr3/mfL7k59TP7jZNArb04/ahYf++cs1SLV3dzFjn8cdflchPYVTNV6
 K5gx6lo67wrFswaTM7yyTAbks0k1XVkUOtDFmpkBnaOzQHhMKPLUPrECf1IAqdXJiT/aD992+cNZ3
 biDzD2JH20xcf3J4=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tWF4t-0004p9-3e for jfs-discussion@lists.sourceforge.net;
 Fri, 10 Jan 2025 13:29:32 +0000
Received: by mail-il1-f205.google.com with SMTP id
 e9e14a558f8ab-3a814406be9so32991385ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 10 Jan 2025 05:29:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736515760; x=1737120560;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=B4Z0CWw303lTtVud2MYwY7xPrgVtZoQdzsKW5WtoNCE=;
 b=bcX2yBv+TattWqDEQ5LWSrP8zvWmbddbn4qP7R7B5e19msxEgKIE9lOfL5kEtVzpSU
 e1XCsJConvICPR0lMV5QtznfCIcVCH/2tYmwYgv/OBJP8HR0EUeLxooOxDjqchqs1OhE
 wCeIWOKtKi2w2kLyUvQmKklLtX1I7sUk4v1Wtxhu8ZTEkDrkNnfmSB3uetNshygrA3pP
 v/7ZmkestbQTJsf8k459HbZ0GIGOaWsahJaVb7ekXUEFNVNoaJm76ZOCGS+Bl5kRpR9M
 r80DmfpEf/1A6Rbb/fYA774KmLIS0EY+D/zLYAC39yNDr8WXODazrvFxotxIx8EwwrPF
 SDmA==
X-Gm-Message-State: AOJu0YytCCqb/9MBTAYXhCk51E1XCCSsaTiaEZgHAQmnl3WKUfuobeMW
 YPXUhJ2XMLXRmYHRVozwnAAfIdvaOPbHQxPWeD5jlRAUY+r6+xTMr0BNLRuOms/xVi44s99lr36
 /+I6sJtNMlZ7tS26UeA3IJsSedb7ezoNHm3JF4g6QE3qYiq4c9wQsgvyz8g==
X-Google-Smtp-Source: AGHT+IGdfGbg/EjYZbAr+fEW3WF4yNhWEcpvV/o8trXf2nzt7t1eIFv23RNkpt1kml9W9E+1PyPGTj893PHSms0v6Hy8H+eX94eD
MIME-Version: 1.0
X-Received: by 2002:a92:cda7:0:b0:3a3:b5ba:bfba with SMTP id
 e9e14a558f8ab-3ce3aa71eb7mr84971505ab.15.1736515759764; Fri, 10 Jan 2025
 05:29:19 -0800 (PST)
Date: Fri, 10 Jan 2025 05:29:19 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <678120af.050a0220.d0267.002b.GAE@google.com>
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
 syzbot found the following issue on: HEAD commit: 0bc21e701a6f
 MAINTAINERS: Remove Olof from SoC maintainers git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=109a8edf980000 kernel
 config: https://syzkaller.app [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.205 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.205 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.205 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1tWF4t-0004p9-3e
X-Mailman-Approved-At: Fri, 10 Jan 2025 14:48:17 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Read in
 jfs_strfromUCS_le
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
Reply-To: syzbot <syzbot+38c7a296a94186b78163@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    0bc21e701a6f MAINTAINERS: Remove Olof from SoC maintainers
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=109a8edf980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba7cde9482d6bb6
dashboard link: https://syzkaller.appspot.com/bug?extid=38c7a296a94186b78163
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/858bb9b76ee5/disk-0bc21e70.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f3c83ca1ab45/vmlinux-0bc21e70.xz
kernel image: https://storage.googleapis.com/syzbot-assets/813f2115e026/bzImage-0bc21e70.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+38c7a296a94186b78163@syzkaller.appspotmail.com

ERROR: (device loop0): jfs_readdir: JFS:Dtree error: ino = 2, bn=0, index = 3
non-latin1 character 0x3a73 found in JFS file name
mount with iocharset=utf8 to access
==================================================================
BUG: KASAN: slab-out-of-bounds in jfs_strfromUCS_le+0x28d/0x3b0 fs/jfs/jfs_unicode.c:40
Read of size 2 at addr ffff88807a187f72 by task syz.0.6/5913

CPU: 1 UID: 0 PID: 5913 Comm: syz.0.6 Not tainted 6.13.0-rc5-syzkaller-00012-g0bc21e701a6f #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:489
 kasan_report+0x143/0x180 mm/kasan/report.c:602
 jfs_strfromUCS_le+0x28d/0x3b0 fs/jfs/jfs_unicode.c:40
 jfs_readdir+0x199d/0x3c50 fs/jfs/jfs_dtree.c:2975
 wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents64 fs/readdir.c:403 [inline]
 __se_sys_getdents64+0x1e2/0x4b0 fs/readdir.c:389
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fba88385d29
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fba8923a038 EFLAGS: 00000246 ORIG_RAX: 00000000000000d9
RAX: ffffffffffffffda RBX: 00007fba88575fa0 RCX: 00007fba88385d29
RDX: 0000000000001000 RSI: 0000000020000f80 RDI: 0000000000000008
RBP: 00007fba88401b08 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007fba88575fa0 R15: 00007ffc2c5862d8
 </TASK>

Allocated by task 5913:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 unpoison_slab_object mm/kasan/common.c:319 [inline]
 __kasan_slab_alloc+0x66/0x80 mm/kasan/common.c:345
 kasan_slab_alloc include/linux/kasan.h:250 [inline]
 slab_post_alloc_hook mm/slub.c:4119 [inline]
 slab_alloc_node mm/slub.c:4168 [inline]
 kmem_cache_alloc_lru_noprof+0x1dd/0x390 mm/slub.c:4187
 jfs_alloc_inode+0x28/0x70 fs/jfs/super.c:105
 alloc_inode+0x65/0x1a0 fs/inode.c:336
 iget_locked+0xf1/0x5a0 fs/inode.c:1487
 jfs_iget+0x23/0x3e0 fs/jfs/inode.c:29
 jfs_fill_super+0x8e4/0xd90 fs/jfs/super.c:547
 get_tree_bdev_flags+0x48c/0x5c0 fs/super.c:1636
 vfs_get_tree+0x90/0x2b0 fs/super.c:1814
 do_new_mount+0x2be/0xb40 fs/namespace.c:3507
 do_mount fs/namespace.c:3847 [inline]
 __do_sys_mount fs/namespace.c:4057 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:4034
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

The buggy address belongs to the object at ffff88807a186ea0
 which belongs to the cache jfs_ip of size 2232
The buggy address is located 2074 bytes to the right of
 allocated 2232-byte region [ffff88807a186ea0, ffff88807a187758)

The buggy address belongs to the physical page:
page: refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x7a180
head: order:3 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
memcg:ffff88802a53d901
flags: 0xfff00000000040(head|node=0|zone=1|lastcpupid=0x7ff)
page_type: f5(slab)
raw: 00fff00000000040 ffff88801e716c80 dead000000000122 0000000000000000
raw: 0000000000000000 00000000000d000d 00000001f5000000 ffff88802a53d901
head: 00fff00000000040 ffff88801e716c80 dead000000000122 0000000000000000
head: 0000000000000000 00000000000d000d 00000001f5000000 ffff88802a53d901
head: 00fff00000000003 ffffea0001e86001 ffffffffffffffff 0000000000000000
head: 0000000700000008 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Reclaimable, gfp_mask 0xd2050(__GFP_IO|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_RECLAIMABLE), pid 5903, tgid 5902 (syz.0.1), ts 77238373961, free_ts 70723141318
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x1f3/0x230 mm/page_alloc.c:1558
 prep_new_page mm/page_alloc.c:1566 [inline]
 get_page_from_freelist+0x3651/0x37a0 mm/page_alloc.c:3476
 __alloc_pages_noprof+0x292/0x710 mm/page_alloc.c:4753
 alloc_pages_mpol_noprof+0x3e8/0x680 mm/mempolicy.c:2269
 alloc_slab_page+0x6a/0x110 mm/slub.c:2423
 allocate_slab+0x5a/0x2b0 mm/slub.c:2589
 new_slab mm/slub.c:2642 [inline]
 ___slab_alloc+0xc27/0x14a0 mm/slub.c:3830
 __slab_alloc+0x58/0xa0 mm/slub.c:3920
 __slab_alloc_node mm/slub.c:3995 [inline]
 slab_alloc_node mm/slub.c:4156 [inline]
 kmem_cache_alloc_lru_noprof+0x26c/0x390 mm/slub.c:4187
 jfs_alloc_inode+0x28/0x70 fs/jfs/super.c:105
 alloc_inode+0x65/0x1a0 fs/inode.c:336
 new_inode_pseudo fs/inode.c:1174 [inline]
 new_inode+0x22/0x1d0 fs/inode.c:1193
 jfs_fill_super+0x570/0xd90 fs/jfs/super.c:511
 get_tree_bdev_flags+0x48c/0x5c0 fs/super.c:1636
 vfs_get_tree+0x90/0x2b0 fs/super.c:1814
 do_new_mount+0x2be/0xb40 fs/namespace.c:3507
page last free pid 5803 tgid 5803 stack trace:
 reset_page_owner include/linux/page_owner.h:25 [inline]
 free_pages_prepare mm/page_alloc.c:1127 [inline]
 free_unref_folios+0xe23/0x1890 mm/page_alloc.c:2706
 folios_put_refs+0x76c/0x860 mm/swap.c:962
 free_pages_and_swap_cache+0x2ea/0x690 mm/swap_state.c:332
 __tlb_batch_free_encoded_pages mm/mmu_gather.c:136 [inline]
 tlb_batch_pages_flush mm/mmu_gather.c:149 [inline]
 tlb_flush_mmu_free mm/mmu_gather.c:366 [inline]
 tlb_flush_mmu+0x3a3/0x680 mm/mmu_gather.c:373
 tlb_finish_mmu+0xd4/0x200 mm/mmu_gather.c:465
 vms_clear_ptes+0x437/0x530 mm/vma.c:1143
 vms_complete_munmap_vmas+0x210/0x8f0 mm/vma.c:1185
 do_vmi_align_munmap+0x5ef/0x6f0 mm/vma.c:1444
 do_vmi_munmap+0x24e/0x2d0 mm/vma.c:1492
 __vm_munmap+0x24c/0x480 mm/mmap.c:1368
 __do_sys_munmap mm/mmap.c:1385 [inline]
 __se_sys_munmap mm/mmap.c:1382 [inline]
 __x64_sys_munmap+0x60/0x70 mm/mmap.c:1382
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Memory state around the buggy address:
 ffff88807a187e00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88807a187e80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff88807a187f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
                                                             ^
 ffff88807a187f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88807a188000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


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
