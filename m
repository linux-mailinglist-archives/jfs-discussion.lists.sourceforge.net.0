Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C71498B5A26
	for <lists+jfs-discussion@lfdr.de>; Mon, 29 Apr 2024 15:35:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s1R9d-000077-91;
	Mon, 29 Apr 2024 13:34:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3wOsuZgkbAIs7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1s1F1P-0001KP-Vk for jfs-discussion@lists.sourceforge.net;
 Mon, 29 Apr 2024 00:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g6G48/biMy9lu9kuSBLQ0SeD+p96HimcuQQuEdtDohk=; b=AP3cOsurDu664t1Ub0dOwUt+/x
 BvoxBoNk1T5PyQzAuWDkX6lfbJGwJ0xZLjS5AH1vMDhfNzxS0xLLA3xmNOUWadmGhKKb3maq4rzng
 YKU8lrv2vhkAPvNwirmkDfJwGZWhMeSZY5tQ+EQ532rYGP+Ka1rZLbAMSVRtlK77pi8k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=g6G48/biMy9lu9kuSBLQ0SeD+p96HimcuQQuEdtDohk=; b=g
 ct6L/GldcfxdMXA4pivzZd8HzWQgljTQdhU3SjkCaS9jjkh1lRt8RUGgmMfv9Ki3K1/SvbgSs5YAa
 J6ceToaBsMRIL0Y/DXqya9dslxlrnfDL6moCq5hctqo75R8C9lR/M6eu1Vh5uWoilPrq5rhonr6FO
 7T54wyLwORclVj7w=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s1F1O-0003MC-Uc for jfs-discussion@lists.sourceforge.net;
 Mon, 29 Apr 2024 00:37:32 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-36c520ec766so675255ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 28 Apr 2024 17:37:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714351040; x=1714955840;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=g6G48/biMy9lu9kuSBLQ0SeD+p96HimcuQQuEdtDohk=;
 b=EqP68BxmqJaAdrVgL8vAK4gmMHHTLqoFms7/x/PfAuMsYlpycI+x0nrXu7l8JLxgWO
 pw+VSk+Ze3CPZtP/BVPnBiy0YsmM2Qi0pfpknlSvVVuHUpD5GdvFFFrOyuM7cpmGXCTO
 qXeulDkLXpYV9mbJUj203EgXh3q0rsOfD5w1jnjfBbF0VeKVBX9y73e8FYTEEGl5koBz
 rwU3v2rPRKlEfiabHKDM7EEbxA9T/CypKfLhnRfsphrUecMWri4hrrKLCQW5eWP95s33
 i6Iv4QYXItk498g+uUbnB6+xcDvrvXsBA08bmEtiEwryhlYzA2QRr6cN9AW2ZajP+Nqe
 yxEg==
X-Gm-Message-State: AOJu0Yx9tfNbS0mEJIJGbDhql8KPZm6h8pLY4M0/4PjCdWFufsRok3rK
 Z5VZKedMaf9hp6wucwR3LFHrq4GoxmAj4qQhO6MKug613f5ZwTmmMv9sfCx6LNfPqS+2VEGbxe8
 yDlAw5GVv0PD6WX8l01WHf7m02B1lB0Wb8TsFjpr4b++NQU10GdM6/tI=
X-Google-Smtp-Source: AGHT+IHLHjsjjdJW/9XTAw4K0m55hB+icnXY8+dbh9C9PFf2SwcHVU1PykfHFYxbdBvOifGtPU24qCd1ll2OOuvT3qyAL71CUFef
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c28:b0:368:efa4:be00 with SMTP id
 m8-20020a056e021c2800b00368efa4be00mr345432ilh.3.1714351040801; Sun, 28 Apr
 2024 17:37:20 -0700 (PDT)
Date: Sun, 28 Apr 2024 17:37:20 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cebc5e06173174e2@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: e88c4cfcb7b8
 Merge tag 'for-6.9-rc5-tag' of git://git.kern.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1223c980980000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1s1F1O-0003MC-Uc
X-Mailman-Approved-At: Mon, 29 Apr 2024 13:34:49 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-use-after-free Read in
 dtSearch
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
Reply-To: syzbot <syzbot+bd3506d55fa4e2fd9030@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    e88c4cfcb7b8 Merge tag 'for-6.9-rc5-tag' of git://git.kern..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1223c980980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5a05c230e142f2bc
dashboard link: https://syzkaller.appspot.com/bug?extid=bd3506d55fa4e2fd9030
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11d1256b180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17d3b7bb180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/124765f3f2cd/disk-e88c4cfc.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/0e2773bfa348/vmlinux-e88c4cfc.xz
kernel image: https://storage.googleapis.com/syzbot-assets/66c56fe803c8/bzImage-e88c4cfc.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/3ac261abbe6e/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16722217180000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=15722217180000
console output: https://syzkaller.appspot.com/x/log.txt?x=11722217180000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+bd3506d55fa4e2fd9030@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
==================================================================
BUG: KASAN: slab-out-of-bounds in dtCompare fs/jfs/jfs_dtree.c:3315 [inline]
BUG: KASAN: slab-out-of-bounds in dtSearch+0x1664/0x2520 fs/jfs/jfs_dtree.c:649
Read of size 1 at addr ffff888077222498 by task syz-executor129/5079

CPU: 1 PID: 5079 Comm: syz-executor129 Not tainted 6.9.0-rc5-syzkaller-00042-ge88c4cfcb7b8 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:488
 kasan_report+0x143/0x180 mm/kasan/report.c:601
 dtCompare fs/jfs/jfs_dtree.c:3315 [inline]
 dtSearch+0x1664/0x2520 fs/jfs/jfs_dtree.c:649
 jfs_lookup+0x17f/0x410 fs/jfs/namei.c:1461
 lookup_open fs/namei.c:3475 [inline]
 open_last_lookups fs/namei.c:3566 [inline]
 path_openat+0x1033/0x3240 fs/namei.c:3796
 do_filp_open+0x235/0x490 fs/namei.c:3826
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1406
 do_sys_open fs/open.c:1421 [inline]
 __do_sys_creat fs/open.c:1497 [inline]
 __se_sys_creat fs/open.c:1491 [inline]
 __x64_sys_creat+0x123/0x170 fs/open.c:1491
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf5/0x240 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f5f2a737639
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff3ca43838 EFLAGS: 00000246 ORIG_RAX: 0000000000000055
RAX: ffffffffffffffda RBX: 00007fff3ca43a18 RCX: 00007f5f2a737639
RDX: 00007f5f2a737639 RSI: 0000000000000000 RDI: 0000000020000000
RBP: 00007f5f2a7b0610 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000006152 R11: 0000000000000246 R12: 0000000000000001
R13: 00007fff3ca43a08 R14: 0000000000000001 R15: 0000000000000001
 </TASK>

The buggy address belongs to the object at ffff888077221bc0
 which belongs to the cache jfs_ip of size 2240
The buggy address is located 24 bytes to the right of
 allocated 2240-byte region [ffff888077221bc0, ffff888077222480)

The buggy address belongs to the physical page:
page: refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x77220
head: order:3 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0xfff80000000840(slab|head|node=0|zone=1|lastcpupid=0xfff)
page_type: 0xffffffff()
raw: 00fff80000000840 ffff88801a7f1140 dead000000000122 0000000000000000
raw: 0000000000000000 00000000800d000d 00000001ffffffff 0000000000000000
head: 00fff80000000840 ffff88801a7f1140 dead000000000122 0000000000000000
head: 0000000000000000 00000000800d000d 00000001ffffffff 0000000000000000
head: 00fff80000000003 ffffea0001dc8801 dead000000000122 00000000ffffffff
head: 0000000800000000 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Reclaimable, gfp_mask 0xd2050(__GFP_IO|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_RECLAIMABLE), pid 5079, tgid 1143321743 (syz-executor129), ts 5079, free_ts 26577297598
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x1ea/0x210 mm/page_alloc.c:1534
 prep_new_page mm/page_alloc.c:1541 [inline]
 get_page_from_freelist+0x3410/0x35b0 mm/page_alloc.c:3317
 __alloc_pages+0x256/0x6c0 mm/page_alloc.c:4575
 __alloc_pages_node include/linux/gfp.h:238 [inline]
 alloc_pages_node include/linux/gfp.h:261 [inline]
 alloc_slab_page+0x5f/0x160 mm/slub.c:2175
 allocate_slab mm/slub.c:2338 [inline]
 new_slab+0x84/0x2f0 mm/slub.c:2391
 ___slab_alloc+0xc73/0x1260 mm/slub.c:3525
 __slab_alloc mm/slub.c:3610 [inline]
 __slab_alloc_node mm/slub.c:3663 [inline]
 slab_alloc_node mm/slub.c:3835 [inline]
 kmem_cache_alloc_lru+0x253/0x350 mm/slub.c:3864
 alloc_inode_sb include/linux/fs.h:3091 [inline]
 jfs_alloc_inode+0x28/0x70 fs/jfs/super.c:105
 alloc_inode fs/inode.c:261 [inline]
 new_inode_pseudo+0x69/0x1e0 fs/inode.c:1007
 new_inode+0x22/0x1d0 fs/inode.c:1033
 diReadSpecial+0x52/0x680 fs/jfs/jfs_imap.c:423
 jfs_mount+0x28b/0x830 fs/jfs/jfs_mount.c:138
 jfs_fill_super+0x59c/0xc50 fs/jfs/super.c:556
 mount_bdev+0x20a/0x2d0 fs/super.c:1658
 legacy_get_tree+0xee/0x190 fs/fs_context.c:662
 vfs_get_tree+0x90/0x2a0 fs/super.c:1779
page last free pid 1 tgid 1 stack trace:
 reset_page_owner include/linux/page_owner.h:25 [inline]
 free_pages_prepare mm/page_alloc.c:1141 [inline]
 free_unref_page_prepare+0x97b/0xaa0 mm/page_alloc.c:2347
 free_unref_page+0x37/0x3f0 mm/page_alloc.c:2487
 free_contig_range+0x9e/0x160 mm/page_alloc.c:6572
 destroy_args+0x8a/0x890 mm/debug_vm_pgtable.c:1036
 debug_vm_pgtable+0x4be/0x550 mm/debug_vm_pgtable.c:1416
 do_one_initcall+0x248/0x880 init/main.c:1245
 do_initcall_level+0x157/0x210 init/main.c:1307
 do_initcalls+0x3f/0x80 init/main.c:1323
 kernel_init_freeable+0x435/0x5d0 init/main.c:1555
 kernel_init+0x1d/0x2b0 init/main.c:1444
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244

Memory state around the buggy address:
 ffff888077222380: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff888077222400: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff888077222480: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
                            ^
 ffff888077222500: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff888077222580: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

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
