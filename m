Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70833667882
	for <lists+jfs-discussion@lfdr.de>; Thu, 12 Jan 2023 16:05:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pFz8L-0004rm-Q9;
	Thu, 12 Jan 2023 15:04:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3PwDAYwkbAGQUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pFwuu-0001qc-G0 for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Jan 2023 12:42:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PVvUb0LdeZUYYRIQvAoCQ/oKB8Q3RQMV5/lCCF06ObA=; b=VRpHItLUzGyt5+iDZxZV59Gro+
 zEalllWc6M21QLNo9u+48dN4nYGgtFnc1H0mu3ocYGNmVyD9+uAzMsHzTJAKxEsK/sr4biJj0o9JM
 1w0uM9f3Y1Tci0J1+qIdRoY+mP8QdEUhs1oi5JmpsLS457F2M6Jiu1aBw92MVuDQm+F4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PVvUb0LdeZUYYRIQvAoCQ/oKB8Q3RQMV5/lCCF06ObA=; b=W
 9ifvHo65PeEuXCNqETKRKXM514XRwllaaIdNavYLF7L1XR2Pku5aZRxqnD6Q/BNSGz4c4gUTpnnDB
 8P+WXxSx/xHkZAkXaSdH2oMVrqj/YLo69TNgI+/99dzBZxv2I7whJkaG/APItzOysXjn0ayCWQRuP
 2TJx3f9iI9cI6pDs=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pFwuq-0004fq-Ql for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Jan 2023 12:42:47 +0000
Received: by mail-il1-f198.google.com with SMTP id
 h4-20020a056e021b8400b0030d901a84d9so12223761ili.6
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 12 Jan 2023 04:42:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PVvUb0LdeZUYYRIQvAoCQ/oKB8Q3RQMV5/lCCF06ObA=;
 b=uAvfQmREniNufj2IBxvfdkowbgMIqoovzvGvSh3rNLDxutjhsCikaawM2OXHZhPpuZ
 nnyWA4BDVJ9JIwuD/y4L2YQRG6vjjnLjutQ7Fzy/bRIN2hjyxcldC24gNlzY5BhNYu80
 o2gAJF/PgHDekQ3EWKoxBtqe1csvyC0iIqQ27jPQ6bCATxC3SNlI1hOgQO6AGqAQXMtt
 Cq0nkTKBekZvBiIqp2GNK05fcAsIZLWBbWQsxdxakVVMEst8PCSs0lWvetN4QQgcUoq3
 2Gs3S3xfMk0vhT+lvUxRy0RhthwE0zslRCUP0soq2lOZ5Cc2LPAUt6LJ/hJ0RzC69S/r
 l4PQ==
X-Gm-Message-State: AFqh2kolW/H97BaCoIefotyQFeXQuBkwz1s8oy1nAAWBs2amCiX9zlDP
 8n3EpM/YgVsQwgCM1DqM68wTfm78C7rJnLq8loWyTv5LE9Df
X-Google-Smtp-Source: AMrXdXs7cQGNA0vgVWoiSqAJebto3iR89tbt6dBf4QonVgj/HYjoHxUtf5dBz8m97XDDUb4UxxHR2CQuD3p7yJspJU6/YMk25nbS
MIME-Version: 1.0
X-Received: by 2002:a92:d102:0:b0:30c:47d0:7539 with SMTP id
 a2-20020a92d102000000b0030c47d07539mr6208089ilb.22.1673527359225; Thu, 12 Jan
 2023 04:42:39 -0800 (PST)
Date: Thu, 12 Jan 2023 04:42:39 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c4c9f105f2107386@google.com>
From: syzbot <syzbot+f328fbf8718edb712341@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: e8f60cd7db24
 Merge tag 'perf-tools-fixes-for-v6.2-2-2023-0.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=13af86a1480000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
X-Headers-End: 1pFwuq-0004fq-Ql
X-Mailman-Approved-At: Thu, 12 Jan 2023 15:04:48 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Read in
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    e8f60cd7db24 Merge tag 'perf-tools-fixes-for-v6.2-2-2023-0..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=13af86a1480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2b6ecad960fc703e
dashboard link: https://syzkaller.appspot.com/bug?extid=f328fbf8718edb712341
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13ab6a36480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11647bbe480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/783306915ec2/disk-e8f60cd7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2ff1bb24fb5d/vmlinux-e8f60cd7.xz
kernel image: https://storage.googleapis.com/syzbot-assets/08e9c5fa68d4/bzImage-e8f60cd7.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/90a9788dcb4a/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f328fbf8718edb712341@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
==================================================================
BUG: KASAN: slab-out-of-bounds in jfs_readdir+0x375e/0x4230 fs/jfs/jfs_dtree.c:2889
Read of size 1 at addr ffff888075357f75 by task syz-executor300/5071

CPU: 1 PID: 5071 Comm: syz-executor300 Not tainted 6.2.0-rc3-syzkaller-00030-ge8f60cd7db24 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd1/0x138 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:306 [inline]
 print_report+0x15e/0x45d mm/kasan/report.c:417
 kasan_report+0xbf/0x1f0 mm/kasan/report.c:517
 jfs_readdir+0x375e/0x4230 fs/jfs/jfs_dtree.c:2889
 iterate_dir+0x1fd/0x6f0 fs/readdir.c:67
 __do_sys_getdents64 fs/readdir.c:369 [inline]
 __se_sys_getdents64 fs/readdir.c:354 [inline]
 __x64_sys_getdents64+0x13e/0x2c0 fs/readdir.c:354
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fbeecd7b9a9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 11 15 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffed1b8d6f8 EFLAGS: 00000246 ORIG_RAX: 00000000000000d9
RAX: ffffffffffffffda RBX: 000000000000cdbe RCX: 00007fbeecd7b9a9
RDX: 00000000000000c5 RSI: 0000000020000200 RDI: 0000000000000004
RBP: 0000000000000000 R08: 00007ffed1b8d720 R09: 00007ffed1b8d720
R10: 0000000000005d45 R11: 0000000000000246 R12: 00007ffed1b8d71c
R13: 00007ffed1b8d750 R14: 00007ffed1b8d730 R15: 0000000000000004
 </TASK>

The buggy address belongs to the object at ffff888075356e58
 which belongs to the cache ext4_inode_cache of size 2440
The buggy address is located 1941 bytes to the right of
 2440-byte region [ffff888075356e58, ffff8880753577e0)

The buggy address belongs to the physical page:
page:ffffea0001d4d400 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x75350
head:ffffea0001d4d400 order:3 compound_mapcount:0 subpages_mapcount:0 compound_pincount:0
flags: 0xfff00000010200(slab|head|node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000010200 ffff888018d9c140 dead000000000122 0000000000000000
raw: 0000000000000000 00000000800c000c 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Reclaimable, gfp_mask 0xd2050(__GFP_IO|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_RECLAIMABLE), pid 5069, tgid 5069 (syz-executor300), ts 52178760853, free_ts 12054506429
 prep_new_page mm/page_alloc.c:2531 [inline]
 get_page_from_freelist+0x119c/0x2ce0 mm/page_alloc.c:4283
 __alloc_pages+0x1cb/0x5b0 mm/page_alloc.c:5549
 alloc_pages+0x1aa/0x270 mm/mempolicy.c:2286
 alloc_slab_page mm/slub.c:1851 [inline]
 allocate_slab+0x25f/0x350 mm/slub.c:1998
 new_slab mm/slub.c:2051 [inline]
 ___slab_alloc+0xa91/0x1400 mm/slub.c:3193
 __slab_alloc.constprop.0+0x56/0xa0 mm/slub.c:3292
 __slab_alloc_node mm/slub.c:3345 [inline]
 slab_alloc_node mm/slub.c:3442 [inline]
 slab_alloc mm/slub.c:3460 [inline]
 __kmem_cache_alloc_lru mm/slub.c:3467 [inline]
 kmem_cache_alloc_lru+0x4dc/0x760 mm/slub.c:3483
 alloc_inode_sb include/linux/fs.h:3119 [inline]
 ext4_alloc_inode+0x28/0x680 fs/ext4/super.c:1321
 alloc_inode+0x61/0x230 fs/inode.c:259
 new_inode_pseudo fs/inode.c:1018 [inline]
 new_inode+0x2b/0x280 fs/inode.c:1046
 __ext4_new_inode+0x399/0x57d0 fs/ext4/ialloc.c:959
 ext4_symlink+0x5ac/0xa00 fs/ext4/namei.c:3373
 vfs_symlink fs/namei.c:4401 [inline]
 vfs_symlink+0x369/0x5c0 fs/namei.c:4386
 do_symlinkat+0x250/0x2c0 fs/namei.c:4430
 __do_sys_symlink fs/namei.c:4452 [inline]
 __se_sys_symlink fs/namei.c:4450 [inline]
 __x64_sys_symlink+0x79/0x90 fs/namei.c:4450
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1446 [inline]
 free_pcp_prepare+0x65c/0xc00 mm/page_alloc.c:1496
 free_unref_page_prepare mm/page_alloc.c:3369 [inline]
 free_unref_page+0x1d/0x490 mm/page_alloc.c:3464
 free_contig_range+0xb5/0x180 mm/page_alloc.c:9485
 destroy_args+0xa8/0x64c mm/debug_vm_pgtable.c:998
 debug_vm_pgtable+0x28de/0x296f mm/debug_vm_pgtable.c:1318
 do_one_initcall+0x141/0x790 init/main.c:1306
 do_initcall_level init/main.c:1379 [inline]
 do_initcalls init/main.c:1395 [inline]
 do_basic_setup init/main.c:1414 [inline]
 kernel_init_freeable+0x6f9/0x782 init/main.c:1634
 kernel_init+0x1e/0x1d0 init/main.c:1522
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308

Memory state around the buggy address:
 ffff888075357e00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff888075357e80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff888075357f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
                                                             ^
 ffff888075357f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff888075358000: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
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
