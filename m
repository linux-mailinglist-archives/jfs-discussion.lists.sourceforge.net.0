Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FE69FFA7A
	for <lists+jfs-discussion@lfdr.de>; Thu,  2 Jan 2025 15:26:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tTM8u-0001J4-09;
	Thu, 02 Jan 2025 14:25:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3sfN1ZwkbALIkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tTAXl-0003Xv-JL for jfs-discussion@lists.sourceforge.net;
 Thu, 02 Jan 2025 02:02:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RfW8zze1+y/8R/I8IkwTzlqu6P+WRxpcjOvQJzyeR24=; b=HMoop+JTzPeVhE553QQkFH1xKA
 Pyrdr3T8s6/zRkMSHx7fhN38eFJCeVaq1XOu95Xlhygh35KjN7q9KpVfWUpCIOPRqZsBhiEMpBFBF
 H6ko2tmrTSGeTgLcd9VcZtBO0+QVhI2zbHwd+fuAyyMap0GQKUPQmyIGIX/Gxxrhla+k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RfW8zze1+y/8R/I8IkwTzlqu6P+WRxpcjOvQJzyeR24=; b=h
 VN/Fsj5lKKe2NQ7wyvx23NTi10DiGrd+/UY7V9DX2shywq9LcIMMsVtKxtJUtd4VGbdh4ceplfMPq
 rkKgGpJ3SIxjhsJxcWTF2YUVu21SJzCUjeDXJ/6+GShQEs6b995b8aaWcRGsJGlcT8DgsqXO5Quop
 K6hwWqtAEoXFX1dY=;
Received: from mail-il1-f207.google.com ([209.85.166.207])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tTAXk-0002lE-GN for jfs-discussion@lists.sourceforge.net;
 Thu, 02 Jan 2025 02:02:37 +0000
Received: by mail-il1-f207.google.com with SMTP id
 e9e14a558f8ab-3a815ab079cso223799665ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 01 Jan 2025 18:02:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735783346; x=1736388146;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=RfW8zze1+y/8R/I8IkwTzlqu6P+WRxpcjOvQJzyeR24=;
 b=t1TaRRKO/FnGqR8U+1xydSAoghmEhrtSzVpCP7n6w9M6a7c6tA1nF2EzPQP/aFCZT9
 KTSg9ls5gwdBozPOoZbOrUUlRb+Tm82PFP08/jSNybj5fSn1Osxm4cY9YqtnOoXVsUK6
 TxfivcqmnrYZikWHZi1Pg3Fzzn3FAp98LzJMNXB9+y/3ZBQejb5fSo/h27jwL8QDpDxd
 npOGN0sLildo2232rb+DNd7mmNN7buU7sIGMyMdSSkphRsuT8Jg7z8oaV9MtrhQYo1ab
 ChmVlazqSCyf4YMXnfnkIjmk0rKqXjBuB3rpmZdoGa6+9EvgkSN0I1qC5BOdtC1EPJGC
 uQ4g==
X-Gm-Message-State: AOJu0YwjSIYRMbgP0Z5ODABlZV4c4+Z3Ow9zu6MIeG1JtMUr8e106Jvd
 x2KyoK+Gz57ZVlP0C77aAFkTEIRZZa+ihaUtArYpEC3q0loMHd0zKq/nDm0nacDD0Aym0WRKeyN
 xYd8tkllmmYBLwUw8bAV4ZExCIpEG6Wnh1VneggdIzHxVyR/SszI3uYcSjw==
X-Google-Smtp-Source: AGHT+IGs5bD/psaiXZk0WeDjUrHibOLcp1DI4uaj3dU6NiISfDd3jTXArshcbqYNGImtjb0yk1iXyQt8VtnRHJRTW62wxu3CvWCX
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3203:b0:3a7:3760:7314 with SMTP id
 e9e14a558f8ab-3c2d5b37841mr444742555ab.20.1735783345755; Wed, 01 Jan 2025
 18:02:25 -0800 (PST)
Date: Wed, 01 Jan 2025 18:02:25 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6775f3b1.050a0220.3a8527.0032.GAE@google.com>
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
 syzbot found the following issue on: HEAD commit: 56e6a3499e14
 Merge tag 'trace-v6.13-rc5' of git://git.kern.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=113c66c4580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.207 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.207 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.207 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.207 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1tTAXk-0002lE-GN
X-Mailman-Approved-At: Thu, 02 Jan 2025 14:25:43 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-use-after-free Read in
 jfs_readdir
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
Reply-To: syzbot <syzbot+a98891ce2318fe7baf05@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    56e6a3499e14 Merge tag 'trace-v6.13-rc5' of git://git.kern..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=113c66c4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba7cde9482d6bb6
dashboard link: https://syzkaller.appspot.com/bug?extid=a98891ce2318fe7baf05
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e5f33d8e3542/disk-56e6a349.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b53906ddb840/vmlinux-56e6a349.xz
kernel image: https://storage.googleapis.com/syzbot-assets/115963cd9410/bzImage-56e6a349.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a98891ce2318fe7baf05@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: slab-use-after-free in jfs_readdir+0x1361/0x3c50 fs/jfs/jfs_dtree.c:2869
Read of size 8 at addr ffff8880789a98e8 by task syz.4.9/5973

CPU: 0 UID: 0 PID: 5973 Comm: syz.4.9 Not tainted 6.13.0-rc5-syzkaller-00006-g56e6a3499e14 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:489
 kasan_report+0x143/0x180 mm/kasan/report.c:602
 jfs_readdir+0x1361/0x3c50 fs/jfs/jfs_dtree.c:2869
 wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents fs/readdir.c:322 [inline]
 __se_sys_getdents+0x1fd/0x4e0 fs/readdir.c:308
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f8953585d29
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f8954358038 EFLAGS: 00000246 ORIG_RAX: 000000000000004e
RAX: ffffffffffffffda RBX: 00007f8953776080 RCX: 00007f8953585d29
RDX: 0000000000000091 RSI: 0000000020000340 RDI: 0000000000000009
RBP: 00007f8953601b08 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007f8953776080 R15: 00007ffdd835e388
 </TASK>

Allocated by task 5973:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 unpoison_slab_object mm/kasan/common.c:319 [inline]
 __kasan_slab_alloc+0x66/0x80 mm/kasan/common.c:345
 kasan_slab_alloc include/linux/kasan.h:250 [inline]
 slab_post_alloc_hook mm/slub.c:4119 [inline]
 slab_alloc_node mm/slub.c:4168 [inline]
 kmem_cache_alloc_noprof+0x1d9/0x380 mm/slub.c:4175
 mempool_alloc_noprof+0x197/0x5a0 mm/mempool.c:402
 alloc_metapage fs/jfs/jfs_metapage.c:182 [inline]
 __get_metapage+0x5f4/0xdc0 fs/jfs/jfs_metapage.c:652
 dtReadFirst+0xe0/0xc50 fs/jfs/jfs_dtree.c:3066
 dtReadNext fs/jfs/jfs_dtree.c:3147 [inline]
 jfs_readdir+0x9aa/0x3c50 fs/jfs/jfs_dtree.c:2862
 wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents fs/readdir.c:322 [inline]
 __se_sys_getdents+0x1fd/0x4e0 fs/readdir.c:308
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Freed by task 5973:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 kasan_save_free_info+0x40/0x50 mm/kasan/generic.c:582
 poison_slab_object mm/kasan/common.c:247 [inline]
 __kasan_slab_free+0x59/0x70 mm/kasan/common.c:264
 kasan_slab_free include/linux/kasan.h:233 [inline]
 slab_free_hook mm/slub.c:2353 [inline]
 slab_free mm/slub.c:4613 [inline]
 kmem_cache_free+0x195/0x410 mm/slub.c:4715
 free_metapage fs/jfs/jfs_metapage.c:197 [inline]
 drop_metapage fs/jfs/jfs_metapage.c:234 [inline]
 release_metapage+0x831/0xa90 fs/jfs/jfs_metapage.c:784
 dtReadNext fs/jfs/jfs_dtree.c:3189 [inline]
 jfs_readdir+0x102d/0x3c50 fs/jfs/jfs_dtree.c:2862
 wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents fs/readdir.c:322 [inline]
 __se_sys_getdents+0x1fd/0x4e0 fs/readdir.c:308
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

The buggy address belongs to the object at ffff8880789a98b8
 which belongs to the cache jfs_mp of size 184
The buggy address is located 48 bytes inside of
 freed 184-byte region [ffff8880789a98b8, ffff8880789a9970)

The buggy address belongs to the physical page:
page: refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x789a9
flags: 0xfff00000000000(node=0|zone=1|lastcpupid=0x7ff)
page_type: f5(slab)
raw: 00fff00000000000 ffff88801db13000 dead000000000122 0000000000000000
raw: 0000000000000000 0000000080100010 00000001f5000000 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 0, migratetype Unmovable, gfp_mask 0xd2800(GFP_NOWAIT|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 5819, tgid 5819 (syz-executor), ts 67350549441, free_ts 67338177030
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
 kmem_cache_alloc_noprof+0x268/0x380 mm/slub.c:4175
 mempool_alloc_noprof+0x197/0x5a0 mm/mempool.c:402
 alloc_metapage fs/jfs/jfs_metapage.c:182 [inline]
 __get_metapage+0x5f4/0xdc0 fs/jfs/jfs_metapage.c:652
 diSync+0xc6/0x6e0 fs/jfs/jfs_imap.c:216
 diUnmount+0xc7/0x130 fs/jfs/jfs_imap.c:185
 jfs_umount+0x186/0x3a0 fs/jfs/jfs_umount.c:63
 jfs_put_super+0x8a/0x190 fs/jfs/super.c:194
 generic_shutdown_super+0x139/0x2d0 fs/super.c:642
page last free pid 8 tgid 8 stack trace:
 reset_page_owner include/linux/page_owner.h:25 [inline]
 free_pages_prepare mm/page_alloc.c:1127 [inline]
 free_unref_page+0xd2c/0x1000 mm/page_alloc.c:2659
 vfree+0x1c3/0x360 mm/vmalloc.c:3383
 delayed_vfree_work+0x56/0x80 mm/vmalloc.c:3303
 process_one_work kernel/workqueue.c:3229 [inline]
 process_scheduled_works+0xa66/0x1840 kernel/workqueue.c:3310
 worker_thread+0x870/0xd30 kernel/workqueue.c:3391
 kthread+0x2f0/0x390 kernel/kthread.c:389
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244

Memory state around the buggy address:
 ffff8880789a9780: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb
 ffff8880789a9800: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fc
>ffff8880789a9880: fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb fb
                                                          ^
 ffff8880789a9900: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fc fc
 ffff8880789a9980: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
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
