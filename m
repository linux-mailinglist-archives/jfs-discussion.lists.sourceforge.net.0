Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B87678C68CA
	for <lists+jfs-discussion@lfdr.de>; Wed, 15 May 2024 16:32:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s7FgO-0005YS-P5;
	Wed, 15 May 2024 14:32:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Jc08ZgkbAOoeklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1s53fQ-00016E-Gv for jfs-discussion@lists.sourceforge.net;
 Thu, 09 May 2024 13:18:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xbcOYf2jPBKcHttp1A9Wc8Pludko+s6isPUH8RhpjQQ=; b=FGu+pQAUCg/TYETaOw/nAXJQNp
 n/2caSONyE8RXbh+4t3WTvK1n4Za5ZQXkP2ab0YUsoWQfBBq1fal6Qt0CbpTWgWK+H94S+0SORBxQ
 /71qlZ5S0ZiyaC8S1qLvtYVEmJ2qPsa3a/piDtPGDlBqADtHRzceMIPsKnckDlBXxVEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xbcOYf2jPBKcHttp1A9Wc8Pludko+s6isPUH8RhpjQQ=; b=W
 VEPUExyIymmyIarvHErpi6S139XZDlz6BI5TehPUky3RsbORJ4iQokrYTc6rlbds2MDihtonwyjkx
 qah/sK7IsmfFtJARCaau/ocHZU2fjBoo/wk+Mzd5Okiic7VhTNvsLo6/P8pgIIK3DggDb82u6sfpJ
 sUBuJ+WrPbf0UZsQ=;
Received: from mail-io1-f77.google.com ([209.85.166.77])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s53fP-00070m-Fg for jfs-discussion@lists.sourceforge.net;
 Thu, 09 May 2024 13:18:35 +0000
Received: by mail-io1-f77.google.com with SMTP id
 ca18e2360f4ac-7e1ac2fbcb7so55632739f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 09 May 2024 06:18:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715260709; x=1715865509;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xbcOYf2jPBKcHttp1A9Wc8Pludko+s6isPUH8RhpjQQ=;
 b=jdq3d4WVeGJGk66VHbFHhejVg/ZT4Oar5rYWpWCkGijyFghBsWz/G8uQA7TDPyZ+Fa
 wUnFz1TerNwjqirDQNPGPEg/MXXhIhq79gx//1yU69P/bJKBsWX7zspzO64F4PRgQOlY
 55KbcZ+AFC4uxJLwNplP+2AtCfkhArQ+Non48lhIjnbUA0twnHM+PIaYdfo7cskkmy1b
 OHt74Q1PF+B+R9uwK0UBz18IMSRNVda5uF4UVb0Ry2jFia9CbH6I9S3DK6P+Lhm1322m
 Tiz7E47gKNhj7LqC/vtEBu60QQvArcqYZYXkKDGLheg6iHqsHQLxhgj77YzuKL3W3vMI
 aIzw==
X-Gm-Message-State: AOJu0YxQRO/lIbutEayvoSLdWe+rQqkMW1A+YvGSTRfrEkAXxWqMbQrb
 G8Nd53+kv95sMJ7qoi0G52fZR/0i1+vsLt7kPk8e9b/8JeB0JzvKuBdd6WkteK1c1c0+FPlKTQ6
 9eAcHXZF5tmX0aEZC29cMNq2UN9XzRsDXrS9V2NmZEUbDhLgaYmFWB+ohig==
X-Google-Smtp-Source: AGHT+IFlgl6Wz+199EZOSfOfidRR28Jj+TYFeqDuCcMnmGd1F25DC+LDRRg7wLmdhR2w/4IOfkQTtdJjf/WwVQZpnbDq89wFTLvl
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1356:b0:488:c743:c05 with SMTP id
 8926c6da1cb9f-488fdd5feefmr251558173.5.1715260709069; Thu, 09 May 2024
 06:18:29 -0700 (PDT)
Date: Thu, 09 May 2024 06:18:29 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000042f5d90618054116@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -4.4 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 7367539ad4b0
 Merge tag 'cxl-fixes-6.9-rc7' of git://git.ke.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=16306574980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (-4.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.77 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.166.77 listed in list.dnswl.org]
X-Headers-End: 1s53fP-00070m-Fg
X-Mailman-Approved-At: Wed, 15 May 2024 14:32:39 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Read in
 dbAllocBits
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
Reply-To: syzbot <syzbot+0be47376a6acbcba7f0d@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7367539ad4b0 Merge tag 'cxl-fixes-6.9-rc7' of git://git.ke..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=16306574980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3310e643b6ef5d69
dashboard link: https://syzkaller.appspot.com/bug?extid=0be47376a6acbcba7f0d
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=159d897f180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16c3d354980000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-7367539a.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/1f814bef5f63/vmlinux-7367539a.xz
kernel image: https://storage.googleapis.com/syzbot-assets/cd1f53098470/bzImage-7367539a.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/6f1d86e6c9f3/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+0be47376a6acbcba7f0d@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: slab-out-of-bounds in dbAllocBits+0x61e/0x630 fs/jfs/jfs_dmap.c:2255
Read of size 8 at addr ffff88802639eeb8 by task syz-executor242/5196

CPU: 2 PID: 5196 Comm: syz-executor242 Not tainted 6.9.0-rc6-syzkaller-00234-g7367539ad4b0 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.2-debian-1.16.2-1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x116/0x1f0 lib/dump_stack.c:114
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0xc3/0x620 mm/kasan/report.c:488
 kasan_report+0xd9/0x110 mm/kasan/report.c:601
 dbAllocBits+0x61e/0x630 fs/jfs/jfs_dmap.c:2255
 dbAllocDmap+0x5c/0x110 fs/jfs/jfs_dmap.c:2032
 dbAllocNear fs/jfs/jfs_dmap.c:1258 [inline]
 dbAlloc+0x784/0xab0 fs/jfs/jfs_dmap.c:843
 ea_get+0xc11/0x12c0 fs/jfs/xattr.c:514
 __jfs_setxattr+0x1ed/0x1070 fs/jfs/xattr.c:718
 __jfs_set_acl+0x110/0x1a0 fs/jfs/acl.c:87
 jfs_set_acl+0x256/0x330 fs/jfs/acl.c:115
 set_posix_acl+0x25c/0x320 fs/posix_acl.c:955
 vfs_set_acl+0x53d/0x900 fs/posix_acl.c:1134
 do_set_acl+0xd9/0x1b0 fs/posix_acl.c:1279
 do_setxattr+0xeb/0x170 fs/xattr.c:626
 setxattr+0x15d/0x180 fs/xattr.c:652
 path_setxattr+0x179/0x1e0 fs/xattr.c:671
 __do_sys_lsetxattr fs/xattr.c:694 [inline]
 __se_sys_lsetxattr fs/xattr.c:690 [inline]
 __x64_sys_lsetxattr+0xc1/0x160 fs/xattr.c:690
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xcf/0x260 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f03a87c66b9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffca6e6e748 EFLAGS: 00000246 ORIG_RAX: 00000000000000bd
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f03a87c66b9
RDX: 0000000020000180 RSI: 0000000020000040 RDI: 0000000020000000
RBP: 00007f03a883f610 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000024 R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffca6e6e918 R14: 0000000000000001 R15: 0000000000000001
 </TASK>

Allocated by task 4906:
 kasan_save_stack+0x33/0x60 mm/kasan/common.c:47
 kasan_save_track+0x14/0x30 mm/kasan/common.c:68
 poison_kmalloc_redzone mm/kasan/common.c:370 [inline]
 __kasan_kmalloc+0xaa/0xb0 mm/kasan/common.c:387
 kasan_kmalloc include/linux/kasan.h:211 [inline]
 __do_kmalloc_node mm/slub.c:3966 [inline]
 __kmalloc_node_track_caller+0x220/0x470 mm/slub.c:3986
 kmalloc_reserve+0xef/0x2c0 net/core/skbuff.c:599
 __alloc_skb+0x164/0x380 net/core/skbuff.c:668
 __netdev_alloc_skb+0x72/0x3f0 net/core/skbuff.c:732
 __netdev_alloc_skb_ip_align include/linux/skbuff.h:3321 [inline]
 e1000_alloc_rx_buffers+0x3b5/0x7b0 drivers/net/ethernet/intel/e1000e/netdev.c:668
 e1000_configure+0x199a/0x4ad0 drivers/net/ethernet/intel/e1000e/netdev.c:3761
 e1000e_open+0x403/0x1790 drivers/net/ethernet/intel/e1000e/netdev.c:4658
 __dev_open+0x2d4/0x4e0 net/core/dev.c:1430
 __dev_change_flags+0x561/0x720 net/core/dev.c:8692
 dev_change_flags+0x8f/0x160 net/core/dev.c:8764
 devinet_ioctl+0x127a/0x1f10 net/ipv4/devinet.c:1172
 inet_ioctl+0x3aa/0x3f0 net/ipv4/af_inet.c:1001
 sock_do_ioctl+0x116/0x280 net/socket.c:1222
 sock_ioctl+0x22e/0x6c0 net/socket.c:1341
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:904 [inline]
 __se_sys_ioctl fs/ioctl.c:890 [inline]
 __x64_sys_ioctl+0x193/0x220 fs/ioctl.c:890
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xcf/0x260 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

The buggy address belongs to the object at ffff88802639e000
 which belongs to the cache kmalloc-2k of size 2048
The buggy address is located 1720 bytes to the right of
 allocated 2048-byte region [ffff88802639e000, ffff88802639e800)

The buggy address belongs to the physical page:
page: refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x26398
head: order:3 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0xfff00000000840(slab|head|node=0|zone=1|lastcpupid=0x7ff)
page_type: 0xffffffff()
raw: 00fff00000000840 ffff888015042f00 ffffea000069fc00 dead000000000002
raw: 0000000000000000 0000000000080008 00000001ffffffff 0000000000000000
head: 00fff00000000840 ffff888015042f00 ffffea000069fc00 dead000000000002
head: 0000000000000000 0000000000080008 00000001ffffffff 0000000000000000
head: 00fff00000000003 ffffea000098e601 dead000000000122 00000000ffffffff
head: 0000000800000000 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask 0xd20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 4675, tgid -996255200 (klogd), ts 4675, free_ts 20473074610
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x2d4/0x350 mm/page_alloc.c:1534
 prep_new_page mm/page_alloc.c:1541 [inline]
 get_page_from_freelist+0xa28/0x3780 mm/page_alloc.c:3317
 __alloc_pages+0x22b/0x2460 mm/page_alloc.c:4575
 __alloc_pages_node include/linux/gfp.h:238 [inline]
 alloc_pages_node include/linux/gfp.h:261 [inline]
 alloc_slab_page mm/slub.c:2175 [inline]
 allocate_slab mm/slub.c:2338 [inline]
 new_slab+0xcc/0x3a0 mm/slub.c:2391
 ___slab_alloc+0x66d/0x1790 mm/slub.c:3525
 __slab_alloc.constprop.0+0x56/0xb0 mm/slub.c:3610
 __slab_alloc_node mm/slub.c:3663 [inline]
 slab_alloc_node mm/slub.c:3835 [inline]
 kmalloc_trace+0x2fb/0x330 mm/slub.c:3992
 kmalloc include/linux/slab.h:628 [inline]
 syslog_print+0xf9/0x5d0 kernel/printk/printk.c:1556
 do_syslog+0x3be/0x6a0 kernel/printk/printk.c:1734
 __do_sys_syslog kernel/printk/printk.c:1826 [inline]
 __se_sys_syslog kernel/printk/printk.c:1824 [inline]
 __x64_sys_syslog+0x74/0xb0 kernel/printk/printk.c:1824
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xcf/0x260 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
page last free pid 4675 tgid 4675 stack trace:
 reset_page_owner include/linux/page_owner.h:25 [inline]
 free_pages_prepare mm/page_alloc.c:1141 [inline]
 free_unref_page_prepare+0x527/0xb10 mm/page_alloc.c:2347
 free_unref_page+0x33/0x3c0 mm/page_alloc.c:2487
 __put_partials+0x14c/0x170 mm/slub.c:2906
 qlink_free mm/kasan/quarantine.c:163 [inline]
 qlist_free_all+0x4e/0x140 mm/kasan/quarantine.c:179
 kasan_quarantine_reduce+0x192/0x1e0 mm/kasan/quarantine.c:286
 __kasan_slab_alloc+0x69/0x90 mm/kasan/common.c:322
 kasan_slab_alloc include/linux/kasan.h:201 [inline]
 slab_post_alloc_hook mm/slub.c:3798 [inline]
 slab_alloc_node mm/slub.c:3845 [inline]
 kmem_cache_alloc_node+0x177/0x340 mm/slub.c:3888
 __alloc_skb+0x2b1/0x380 net/core/skbuff.c:658
 alloc_skb include/linux/skbuff.h:1313 [inline]
 alloc_skb_with_frags+0xe4/0x710 net/core/skbuff.c:6515
 sock_alloc_send_pskb+0x7f1/0x980 net/core/sock.c:2795
 unix_dgram_sendmsg+0x4b9/0x1b10 net/unix/af_unix.c:2019
 sock_sendmsg_nosec net/socket.c:730 [inline]
 __sock_sendmsg net/socket.c:745 [inline]
 __sys_sendto+0x47f/0x4e0 net/socket.c:2191
 __do_sys_sendto net/socket.c:2203 [inline]
 __se_sys_sendto net/socket.c:2199 [inline]
 __x64_sys_sendto+0xe0/0x1c0 net/socket.c:2199
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xcf/0x260 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Memory state around the buggy address:
 ffff88802639ed80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88802639ee00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff88802639ee80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
                                        ^
 ffff88802639ef00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88802639ef80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
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
