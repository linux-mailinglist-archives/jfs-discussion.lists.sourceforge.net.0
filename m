Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9951584CFAB
	for <lists+jfs-discussion@lfdr.de>; Wed,  7 Feb 2024 18:21:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rXlbJ-0003yS-Dv;
	Wed, 07 Feb 2024 17:20:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3dU3DZQkbAFICIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rXeFI-0003mK-8X for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Feb 2024 09:29:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mJ9lFHhxD4Wt5azDCzZ6aoi6eTpvh0mLyzUdktV5AwE=; b=SXs5MIK21FHIHAuZP9A0CATDuW
 FDNBf0UrvmzfJ9tcX2Wj1o90dK2AICRMLutjcrbekIiHL5fE2kyVjrn8JduD8DlSPD0Zede4BdW0M
 zT+rnDz0Hwb/d+GkeEH2siWEIQt8T43ZM/oQYVS0NC8CkDDotG5t4MratwfMWy0lfpKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mJ9lFHhxD4Wt5azDCzZ6aoi6eTpvh0mLyzUdktV5AwE=; b=P
 2/i9/d/WEsxw15kKi/Qc8eRRW4Rfj0lOi3TPvqV/wzbjetpqoa90L41Drij+ohL2udzFhnewEqaA7
 WMA52ZenMSn+gEgI6JuqMkU3pMH9suRgfh98h8CP8EwnUAJza87eDg1iFc1STj17KvbmN1RD+/KHd
 wO8CFK5X4hlJukVM=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rXeFG-0004pi-0E for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Feb 2024 09:29:33 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-363d6348a07so3039505ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 07 Feb 2024 01:29:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707298165; x=1707902965;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mJ9lFHhxD4Wt5azDCzZ6aoi6eTpvh0mLyzUdktV5AwE=;
 b=LsNrGESXYh/1awAlqKnK6MxI6ux7b4Xw92+lcN6m7/piJFZsp3Vj8kmRa5ZVotwdIZ
 sroz5uEm24MNQqr58UD23P8nxOAv/dNpa6pcbh4pmkKJULk/6GMIpYniMdZ5pGAX+H4Z
 EVhL7yYAueskph+/W2xoZAWTihbK2bRj7C4D7uizyhNwX35JHPas3WY9yGEbOW/vG4IF
 yiza4cgJgFZSV/HPaJ8+mo1jC5LPIDaisp2293KUzh2yDbGQ49mZN8k5oKenaGD2qc/H
 WVucMyUJVu6/PUcqwU9OGB3L653UjuqwetaBlJZejaVxc4GnSK6d2oRnCYeGQKKlX6PM
 i7fA==
X-Gm-Message-State: AOJu0Yzthf5i7McPunFGTPw45R99mwfK5LjI4boJmBwuaMzNBane+IGy
 360ZoHemAiSzkHkKQLg0JXTLaTGbXn87wTMPO1Q9glkZFCmlk/oz61zkoLVvr6IPpbmS2yx3p+i
 2BvzoTH9j8q6YFjRMQDx5AgcKx45vA+x0q3SnJwJT9V0ZSAFdhXtE8FaJPQ==
X-Google-Smtp-Source: AGHT+IE1x0YU/knvzuVlUphMqJBS5GqWratDLGKaORfR8+AEGHGt8j8/p99HkztbXwErArp+Fu49o7U6WaGOO3O6m+Ez1Z5UawAR
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:2188:b0:363:9343:cbfb with SMTP id
 j8-20020a056e02218800b003639343cbfbmr321099ila.2.1707298165058; Wed, 07 Feb
 2024 01:29:25 -0800 (PST)
Date: Wed, 07 Feb 2024 01:29:25 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a7761e0610c754b2@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 021533194476
 Kconfig: Disable -Wstringop-overflow for GCC .. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1674acffe80000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rXeFG-0004pi-0E
X-Mailman-Approved-At: Wed, 07 Feb 2024 17:20:45 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-use-after-free Read in
 jfs_syncpt
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
Reply-To: syzbot <syzbot+c244f4a09ca85dd2ebc1@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    021533194476 Kconfig: Disable -Wstringop-overflow for GCC ..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1674acffe80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f204e0b6490f4419
dashboard link: https://syzkaller.appspot.com/bug?extid=c244f4a09ca85dd2ebc1
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/3c5d4d2f86e3/disk-02153319.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b16ab56fc47a/vmlinux-02153319.xz
kernel image: https://storage.googleapis.com/syzbot-assets/07a8e67be96d/bzImage-02153319.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c244f4a09ca85dd2ebc1@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: slab-use-after-free in __mutex_waiter_is_first kernel/locking/mutex.c:197 [inline]
BUG: KASAN: slab-use-after-free in __mutex_lock_common kernel/locking/mutex.c:686 [inline]
BUG: KASAN: slab-use-after-free in __mutex_lock+0x6bc/0xd70 kernel/locking/mutex.c:752
Read of size 8 at addr ffff88807bc26108 by task jfsCommit/109

CPU: 0 PID: 109 Comm: jfsCommit Not tainted 6.8.0-rc2-syzkaller-00199-g021533194476 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/25/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2e0 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0x167/0x540 mm/kasan/report.c:488
 kasan_report+0x142/0x180 mm/kasan/report.c:601
 __mutex_waiter_is_first kernel/locking/mutex.c:197 [inline]
 __mutex_lock_common kernel/locking/mutex.c:686 [inline]
 __mutex_lock+0x6bc/0xd70 kernel/locking/mutex.c:752
 jfs_syncpt+0x26/0xa0 fs/jfs/jfs_logmgr.c:1039
 txEnd+0x30f/0x560 fs/jfs/jfs_txnmgr.c:549
 txLazyCommit fs/jfs/jfs_txnmgr.c:2684 [inline]
 jfs_lazycommit+0x619/0xb70 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2ef/0x390 kernel/kthread.c:388
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1b/0x30 arch/x86/entry/entry_64.S:242
 </TASK>

Allocated by task 9990:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 poison_kmalloc_redzone mm/kasan/common.c:372 [inline]
 __kasan_kmalloc+0x98/0xb0 mm/kasan/common.c:389
 kasan_kmalloc include/linux/kasan.h:211 [inline]
 kmalloc_trace+0x1d6/0x360 mm/slub.c:4012
 kmalloc include/linux/slab.h:590 [inline]
 kzalloc include/linux/slab.h:711 [inline]
 open_inline_log fs/jfs/jfs_logmgr.c:1159 [inline]
 lmLogOpen+0x335/0x1050 fs/jfs/jfs_logmgr.c:1069
 jfs_mount_rw+0xf1/0x6a0 fs/jfs/jfs_mount.c:257
 jfs_fill_super+0x681/0xc50 fs/jfs/super.c:565
 mount_bdev+0x20a/0x2d0 fs/super.c:1663
 legacy_get_tree+0xee/0x190 fs/fs_context.c:662
 vfs_get_tree+0x90/0x2a0 fs/super.c:1784
 do_new_mount+0x2be/0xb40 fs/namespace.c:3352
 do_mount fs/namespace.c:3692 [inline]
 __do_sys_mount fs/namespace.c:3898 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3875
 do_syscall_64+0xf9/0x240
 entry_SYSCALL_64_after_hwframe+0x6f/0x77

Freed by task 9990:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 kasan_save_free_info+0x4e/0x60 mm/kasan/generic.c:640
 poison_slab_object+0xa6/0xe0 mm/kasan/common.c:241
 __kasan_slab_free+0x34/0x70 mm/kasan/common.c:257
 kasan_slab_free include/linux/kasan.h:184 [inline]
 slab_free_hook mm/slub.c:2121 [inline]
 slab_free mm/slub.c:4299 [inline]
 kfree+0x14a/0x380 mm/slub.c:4409
 lmLogClose+0x2a1/0x530
 jfs_remount+0x435/0x6b0 fs/jfs/super.c:466
 reconfigure_super+0x445/0x880 fs/super.c:1076
 do_remount fs/namespace.c:2892 [inline]
 path_mount+0xc28/0xfa0 fs/namespace.c:3671
 do_mount fs/namespace.c:3692 [inline]
 __do_sys_mount fs/namespace.c:3898 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3875
 do_syscall_64+0xf9/0x240
 entry_SYSCALL_64_after_hwframe+0x6f/0x77

The buggy address belongs to the object at ffff88807bc26000
 which belongs to the cache kmalloc-1k of size 1024
The buggy address is located 264 bytes inside of
 freed 1024-byte region [ffff88807bc26000, ffff88807bc26400)

The buggy address belongs to the physical page:
page:ffffea0001ef0800 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x7bc20
head:ffffea0001ef0800 order:3 entire_mapcount:0 nr_pages_mapped:0 pincount:0
ksm flags: 0xfff00000000840(slab|head|node=0|zone=1|lastcpupid=0x7ff)
page_type: 0xffffffff()
raw: 00fff00000000840 ffff888014c41dc0 ffffea0001e53000 dead000000000003
raw: 0000000000000000 0000000000100010 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask 0xd2820(GFP_ATOMIC|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 5137, tgid 5137 (kworker/0:5), ts 122851474325, free_ts 122848490685
 set_page_owner include/linux/page_owner.h:31 [inline]
 post_alloc_hook+0x1ea/0x210 mm/page_alloc.c:1533
 prep_new_page mm/page_alloc.c:1540 [inline]
 get_page_from_freelist+0x33ea/0x3580 mm/page_alloc.c:3311
 __alloc_pages+0x255/0x680 mm/page_alloc.c:4567
 __alloc_pages_node include/linux/gfp.h:238 [inline]
 alloc_pages_node include/linux/gfp.h:261 [inline]
 alloc_slab_page+0x5f/0x160 mm/slub.c:2190
 allocate_slab mm/slub.c:2354 [inline]
 new_slab+0x84/0x2f0 mm/slub.c:2407
 ___slab_alloc+0xd17/0x13e0 mm/slub.c:3540
 __slab_alloc mm/slub.c:3625 [inline]
 __slab_alloc_node mm/slub.c:3678 [inline]
 slab_alloc_node mm/slub.c:3850 [inline]
 __do_kmalloc_node mm/slub.c:3980 [inline]
 __kmalloc_node_track_caller+0x2d1/0x4e0 mm/slub.c:4001
 kmalloc_reserve+0xf3/0x260 net/core/skbuff.c:582
 __alloc_skb+0x1b1/0x420 net/core/skbuff.c:651
 alloc_skb include/linux/skbuff.h:1296 [inline]
 nlmsg_new include/net/netlink.h:1010 [inline]
 inet6_rt_notify+0xdf/0x290 net/ipv6/route.c:6171
 fib6_add_rt2node net/ipv6/ip6_fib.c:1251 [inline]
 fib6_add+0x1dc4/0x3d50 net/ipv6/ip6_fib.c:1477
 __ip6_ins_rt net/ipv6/route.c:1303 [inline]
 ip6_route_add+0x88/0x120 net/ipv6/route.c:3847
 addrconf_add_mroute net/ipv6/addrconf.c:2501 [inline]
 addrconf_add_dev+0x35b/0x540 net/ipv6/addrconf.c:2519
 addrconf_dev_config net/ipv6/addrconf.c:3423 [inline]
 addrconf_init_auto_addrs+0x85f/0xeb0 net/ipv6/addrconf.c:3510
 addrconf_notify+0xaff/0x1020 net/ipv6/addrconf.c:3683
 notifier_call_chain+0x18f/0x3b0 kernel/notifier.c:93
page last free pid 5138 tgid 5138 stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1140 [inline]
 free_unref_page_prepare+0x95d/0xa80 mm/page_alloc.c:2346
 free_unref_page+0x37/0x3f0 mm/page_alloc.c:2486
 discard_slab mm/slub.c:2453 [inline]
 __put_partials+0xeb/0x130 mm/slub.c:2922
 put_cpu_partial+0x17b/0x250 mm/slub.c:2997
 __slab_free+0x302/0x410 mm/slub.c:4166
 qlink_free mm/kasan/quarantine.c:160 [inline]
 qlist_free_all+0x6d/0xd0 mm/kasan/quarantine.c:176
 kasan_quarantine_reduce+0x14f/0x170 mm/kasan/quarantine.c:283
 __kasan_slab_alloc+0x23/0x80 mm/kasan/common.c:324
 kasan_slab_alloc include/linux/kasan.h:201 [inline]
 slab_post_alloc_hook mm/slub.c:3813 [inline]
 slab_alloc_node mm/slub.c:3860 [inline]
 kmem_cache_alloc_node+0x18f/0x380 mm/slub.c:3903
 __alloc_skb+0x181/0x420 net/core/skbuff.c:641
 alloc_skb include/linux/skbuff.h:1296 [inline]
 alloc_skb_with_frags+0xc3/0x780 net/core/skbuff.c:6394
 sock_alloc_send_pskb+0x919/0xa60 net/core/sock.c:2784
 sock_alloc_send_skb include/net/sock.h:1855 [inline]
 mld_newpack+0x1c3/0xa90 net/ipv6/mcast.c:1746
 add_grhead net/ipv6/mcast.c:1849 [inline]
 add_grec+0x1492/0x19a0 net/ipv6/mcast.c:1987
 mld_send_initial_cr+0xed/0x240 net/ipv6/mcast.c:2233
 mld_dad_work+0x45/0x270 net/ipv6/mcast.c:2259

Memory state around the buggy address:
 ffff88807bc26000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff88807bc26080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff88807bc26100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                      ^
 ffff88807bc26180: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff88807bc26200: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
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
