Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B17D6752434
	for <lists+jfs-discussion@lfdr.de>; Thu, 13 Jul 2023 15:51:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qJwij-00081k-RY;
	Thu, 13 Jul 2023 13:51:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3NxmvZAkbAFICIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qJhGi-0002dS-GA for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Jul 2023 21:21:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OjLOVqL5jCWbKSc3onZi5DO6etNrbJIz9jp1DFccM/8=; b=eSTB9GBU6FkuPBARoXpnfm4GvJ
 RFJmMeInkawnMSt1knUThONQLspzgeDrZD1q9AU05sBdjU51TZHWQ1zOutrz9qUntQWmulUiZIFeU
 79csoCepJ7TDUP5jXV+8ZljZU2Vnf/cRHmk7MoER+UdOyEZ1YGNkyQ1P6Y/oaj+K7Kio=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OjLOVqL5jCWbKSc3onZi5DO6etNrbJIz9jp1DFccM/8=; b=g
 61ZDTcr4ur8Z1xZ/XiHG6Jv0Vst1e0udqygIl6Qn46suOD8fifSxegX+7wEa+hKaKbf4PAk77FdwL
 u2M+7qpoTQ4y/nXE9GbK6lxGUxJrcKK8V0lO6Fuh9hLQxHNMBmT2jWEFQbBC1IEWSD/V8Q8gEVebM
 d1R7tghJVVc/GcHc=;
Received: from mail-oa1-f80.google.com ([209.85.160.80])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qJhGh-0003pV-O3 for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Jul 2023 21:21:05 +0000
Received: by mail-oa1-f80.google.com with SMTP id
 586e51a60fabf-1b03916c318so10055705fac.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Jul 2023 14:21:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689196856; x=1691788856;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OjLOVqL5jCWbKSc3onZi5DO6etNrbJIz9jp1DFccM/8=;
 b=jGN9fpTEVLzsW3zyDI0qUDJ3gtJ6wjhOPyE3HlpttRcQ2+NOtwuvKXs1iPHgLsF8f9
 1wT7Uqw0nBIWISM6sOosLPTQzVR///voXuMtL85ICNhp2PBnoV8AUG8Bn7wEQhxFZ+8X
 byqku3HCU2k5K8Uh2XVVVbCLY4WptBQ/XnqlKjlpy8MuneLfUPIqxXJXOheHm3ZOG714
 aYL+ffViddNN3J5jGVAvTa3l8FSmI1RRyidbMaKifiGWX7D2UIeR/AhglPYncfjcj9iK
 lJW++zUBgjOqXIsiL7jKNkKSZbpwT6jtnTofgxk65NM8lhuiqwBmtPE/HMgfxAADol2f
 LKww==
X-Gm-Message-State: ABy/qLb7OGrw7iWz1RUdDw/gl18eDM+Gg/gj4BfW2NbsIQv4uTrx6pQM
 03IsO5kN4VOy1wHfBFlDhGlnlCQjwKJyfKhBYgZxlGoe/E0I
X-Google-Smtp-Source: APBJJlGCzCZpOnJ3+SFljDF0KmfJkzCopRZbORqxCLdLPa2o+B4zt9pteR/eZKBjpEBkUTK8XaKyzzJ4DJX6lUtQp3Oii0Fc6WF+
MIME-Version: 1.0
X-Received: by 2002:a05:6870:5b2e:b0:1b0:449e:d005 with SMTP id
 ds46-20020a0568705b2e00b001b0449ed005mr6664158oab.7.1689196855957; Wed, 12
 Jul 2023 14:20:55 -0700 (PDT)
Date: Wed, 12 Jul 2023 14:20:55 -0700
In-Reply-To: <000000000000ab0b2905f5ddc2dd@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008e20f7060050cab9@google.com>
To: axboe@kernel.dk, jfs-discussion@lists.sourceforge.net, kch@nvidia.com, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 3f01e9fed845 Merge tag 'linux-watchdog-6.5-rc2' of git://w..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=100b43f2a80000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.80 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.80 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qJhGh-0003pV-O3
X-Mailman-Approved-At: Thu, 13 Jul 2023 13:50:59 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: use-after-free Read in
 lbmIODone (2)
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
Reply-To: syzbot <syzbot+aca408372ef0b470a3d2@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    3f01e9fed845 Merge tag 'linux-watchdog-6.5-rc2' of git://w..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=100b43f2a80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e75667d82b529c4f
dashboard link: https://syzkaller.appspot.com/bug?extid=aca408372ef0b470a3d2
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1102ca04a80000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-3f01e9fe.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/0f8bd445f5c8/vmlinux-3f01e9fe.xz
kernel image: https://storage.googleapis.com/syzbot-assets/1af93256322d/bzImage-3f01e9fe.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/871b973dd9f9/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+aca408372ef0b470a3d2@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: slab-use-after-free in lbmIODone+0xeb7/0x11d0 fs/jfs/jfs_logmgr.c:2179
Read of size 4 at addr ffff888021c28708 by task ksoftirqd/1/27

CPU: 1 PID: 27 Comm: ksoftirqd/1 Not tainted 6.5.0-rc1-syzkaller-00006-g3f01e9fed845 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.2-debian-1.16.2-1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd9/0x150 lib/dump_stack.c:106
 print_address_description.constprop.0+0x2c/0x3c0 mm/kasan/report.c:364
 print_report mm/kasan/report.c:475 [inline]
 kasan_report+0x11d/0x130 mm/kasan/report.c:588
 lbmIODone+0xeb7/0x11d0 fs/jfs/jfs_logmgr.c:2179
 bio_endio+0x589/0x690 block/bio.c:1617
 req_bio_endio block/blk-mq.c:757 [inline]
 blk_update_request+0x5c5/0x1620 block/blk-mq.c:902
 blk_mq_end_request+0x59/0x680 block/blk-mq.c:1023
 lo_complete_rq+0x1c6/0x280 drivers/block/loop.c:370
 blk_complete_reqs+0xb3/0xf0 block/blk-mq.c:1101
 __do_softirq+0x1d4/0x905 kernel/softirq.c:553
 run_ksoftirqd kernel/softirq.c:921 [inline]
 run_ksoftirqd+0x31/0x60 kernel/softirq.c:913
 smpboot_thread_fn+0x659/0x9e0 kernel/smpboot.c:164
 kthread+0x344/0x440 kernel/kthread.c:389
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308
 </TASK>

Allocated by task 8754:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 kasan_set_track+0x25/0x30 mm/kasan/common.c:52
 ____kasan_kmalloc mm/kasan/common.c:374 [inline]
 ____kasan_kmalloc mm/kasan/common.c:333 [inline]
 __kasan_kmalloc+0xa3/0xb0 mm/kasan/common.c:383
 kmalloc include/linux/slab.h:582 [inline]
 lbmLogInit fs/jfs/jfs_logmgr.c:1822 [inline]
 lmLogInit+0x3b3/0x1a50 fs/jfs/jfs_logmgr.c:1270
 open_inline_log fs/jfs/jfs_logmgr.c:1175 [inline]
 lmLogOpen+0x7db/0x1430 fs/jfs/jfs_logmgr.c:1069
 jfs_mount_rw+0x2ed/0x6d0 fs/jfs/jfs_mount.c:257
 jfs_fill_super+0xa00/0xd40 fs/jfs/super.c:565
 mount_bdev+0x315/0x3e0 fs/super.c:1391
 legacy_get_tree+0x109/0x220 fs/fs_context.c:611
 vfs_get_tree+0x8d/0x350 fs/super.c:1519
 do_new_mount fs/namespace.c:3335 [inline]
 path_mount+0x136e/0x1e70 fs/namespace.c:3662
 do_mount fs/namespace.c:3675 [inline]
 __do_sys_mount fs/namespace.c:3884 [inline]
 __se_sys_mount fs/namespace.c:3861 [inline]
 __x64_sys_mount+0x283/0x300 fs/namespace.c:3861
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Freed by task 5245:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 kasan_set_track+0x25/0x30 mm/kasan/common.c:52
 kasan_save_free_info+0x28/0x40 mm/kasan/generic.c:522
 ____kasan_slab_free mm/kasan/common.c:236 [inline]
 ____kasan_slab_free+0x13b/0x1a0 mm/kasan/common.c:200
 kasan_slab_free include/linux/kasan.h:162 [inline]
 __cache_free mm/slab.c:3370 [inline]
 __do_kmem_cache_free mm/slab.c:3557 [inline]
 __kmem_cache_free+0xcd/0x2c0 mm/slab.c:3564
 lbmLogShutdown fs/jfs/jfs_logmgr.c:1865 [inline]
 lmLogShutdown+0x349/0x6e0 fs/jfs/jfs_logmgr.c:1684
 lmLogClose+0x588/0x720 fs/jfs/jfs_logmgr.c:1460
 jfs_umount+0x2ef/0x430 fs/jfs/jfs_umount.c:114
 jfs_put_super+0x85/0x1d0 fs/jfs/super.c:194
 generic_shutdown_super+0x158/0x480 fs/super.c:499
 kill_block_super+0x64/0xb0 fs/super.c:1417
 deactivate_locked_super+0x98/0x160 fs/super.c:330
 deactivate_super+0xb1/0xd0 fs/super.c:361
 cleanup_mnt+0x2ae/0x3d0 fs/namespace.c:1254
 task_work_run+0x16f/0x270 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:171 [inline]
 exit_to_user_mode_prepare+0x210/0x240 kernel/entry/common.c:204
 __syscall_exit_to_user_mode_work kernel/entry/common.c:286 [inline]
 syscall_exit_to_user_mode+0x1d/0x50 kernel/entry/common.c:297
 do_syscall_64+0x46/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Last potentially related work creation:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 __kasan_record_aux_stack+0x78/0x80 mm/kasan/generic.c:492
 insert_work+0x48/0x360 kernel/workqueue.c:1553
 __queue_work+0x625/0x1120 kernel/workqueue.c:1714
 queue_work_on+0xf2/0x110 kernel/workqueue.c:1744
 queue_work include/linux/workqueue.h:506 [inline]
 netdevice_queue_work drivers/infiniband/core/roce_gid_mgmt.c:659 [inline]
 netdevice_event+0x6dd/0x9c0 drivers/infiniband/core/roce_gid_mgmt.c:802
 notifier_call_chain+0xb6/0x3c0 kernel/notifier.c:93
 call_netdevice_notifiers_info+0xb9/0x130 net/core/dev.c:1962
 call_netdevice_notifiers_extack net/core/dev.c:2000 [inline]
 call_netdevice_notifiers net/core/dev.c:2014 [inline]
 dev_set_mac_address+0x355/0x480 net/core/dev.c:8793
 dev_set_mac_address_user+0x31/0x50 net/core/dev.c:8807
 do_setlink+0x1871/0x3ae0 net/core/rtnetlink.c:2815
 __rtnl_newlink+0xd85/0x1860 net/core/rtnetlink.c:3655
 rtnl_newlink+0x68/0xa0 net/core/rtnetlink.c:3702
 rtnetlink_rcv_msg+0x43d/0xd50 net/core/rtnetlink.c:6424
 netlink_rcv_skb+0x165/0x440 net/netlink/af_netlink.c:2549
 netlink_unicast_kernel net/netlink/af_netlink.c:1339 [inline]
 netlink_unicast+0x547/0x7f0 net/netlink/af_netlink.c:1365
 netlink_sendmsg+0x925/0xe30 net/netlink/af_netlink.c:1914
 sock_sendmsg_nosec net/socket.c:725 [inline]
 sock_sendmsg+0xde/0x190 net/socket.c:748
 __sys_sendto+0x254/0x350 net/socket.c:2134
 __do_sys_sendto net/socket.c:2146 [inline]
 __se_sys_sendto net/socket.c:2142 [inline]
 __x64_sys_sendto+0xe1/0x1b0 net/socket.c:2142
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Second to last potentially related work creation:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 __kasan_record_aux_stack+0x78/0x80 mm/kasan/generic.c:492
 insert_work+0x48/0x360 kernel/workqueue.c:1553
 __queue_work+0x625/0x1120 kernel/workqueue.c:1714
 queue_work_on+0xf2/0x110 kernel/workqueue.c:1744
 queue_work include/linux/workqueue.h:506 [inline]
 call_usermodehelper_exec+0x1d2/0x4c0 kernel/umh.c:434
 kobject_uevent_env+0xefc/0x16c0 lib/kobject_uevent.c:618
 netdev_queue_add_kobject net/core/net-sysfs.c:1705 [inline]
 netdev_queue_update_kobjects+0x3d5/0x4f0 net/core/net-sysfs.c:1746
 register_queue_kobjects net/core/net-sysfs.c:1807 [inline]
 netdev_register_kobject+0x334/0x400 net/core/net-sysfs.c:2047
 register_netdevice+0xd77/0x1640 net/core/dev.c:10051
 bond_create+0xb8/0x120 drivers/net/bonding/bond_main.c:6399
 bonding_init+0xda/0x130 drivers/net/bonding/bond_main.c:6483
 do_one_initcall+0x105/0x630 init/main.c:1232
 do_initcall_level init/main.c:1294 [inline]
 do_initcalls init/main.c:1310 [inline]
 do_basic_setup init/main.c:1329 [inline]
 kernel_init_freeable+0x64e/0xba0 init/main.c:1546
 kernel_init+0x1e/0x2c0 init/main.c:1437
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308

The buggy address belongs to the object at ffff888021c28700
 which belongs to the cache kmalloc-192 of size 192
The buggy address is located 8 bytes inside of
 freed 192-byte region [ffff888021c28700, ffff888021c287c0)

The buggy address belongs to the physical page:
page:ffffea0000870a00 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x21c28
flags: 0xfff00000000200(slab|node=0|zone=1|lastcpupid=0x7ff)
page_type: 0x10()
raw: 00fff00000000200 ffff888012840000 ffffea000057b110 ffffea0000791b90
raw: 0000000000000000 ffff888021c28000 0000000100000010 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 0, migratetype Unmovable, gfp_mask 0x2420c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_COMP|__GFP_THISNODE), pid 1, tgid 1 (swapper/0), ts 7886758406, free_ts 7883285032
 set_page_owner include/linux/page_owner.h:31 [inline]
 post_alloc_hook+0x2db/0x350 mm/page_alloc.c:1570
 prep_new_page mm/page_alloc.c:1577 [inline]
 get_page_from_freelist+0xfed/0x2d30 mm/page_alloc.c:3221
 __alloc_pages+0x1cb/0x4a0 mm/page_alloc.c:4477
 __alloc_pages_node include/linux/gfp.h:237 [inline]
 kmem_getpages mm/slab.c:1356 [inline]
 cache_grow_begin+0x9b/0x3b0 mm/slab.c:2550
 cache_alloc_refill+0x289/0x3a0 mm/slab.c:2923
 ____cache_alloc mm/slab.c:2999 [inline]
 ____cache_alloc mm/slab.c:2982 [inline]
 __do_cache_alloc mm/slab.c:3182 [inline]
 slab_alloc_node mm/slab.c:3230 [inline]
 __kmem_cache_alloc_node+0x392/0x410 mm/slab.c:3521
 kmalloc_trace+0x26/0xe0 mm/slab_common.c:1076
 kmalloc include/linux/slab.h:582 [inline]
 kzalloc include/linux/slab.h:703 [inline]
 call_usermodehelper_setup+0x9c/0x340 kernel/umh.c:363
 kobject_uevent_env+0xedd/0x16c0 lib/kobject_uevent.c:614
 rx_queue_add_kobject net/core/net-sysfs.c:1102 [inline]
 net_rx_queue_update_kobjects+0x1b0/0x640 net/core/net-sysfs.c:1142
 register_queue_kobjects net/core/net-sysfs.c:1802 [inline]
 netdev_register_kobject+0x279/0x400 net/core/net-sysfs.c:2047
 register_netdevice+0xd77/0x1640 net/core/dev.c:10051
 bond_create+0xb8/0x120 drivers/net/bonding/bond_main.c:6399
 bonding_init+0xda/0x130 drivers/net/bonding/bond_main.c:6483
 do_one_initcall+0x105/0x630 init/main.c:1232
 do_initcall_level init/main.c:1294 [inline]
 do_initcalls init/main.c:1310 [inline]
 do_basic_setup init/main.c:1329 [inline]
 kernel_init_freeable+0x64e/0xba0 init/main.c:1546
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1161 [inline]
 free_unref_page_prepare+0x62e/0xcb0 mm/page_alloc.c:2348
 free_unref_page+0x33/0x370 mm/page_alloc.c:2443
 rcu_do_batch kernel/rcu/tree.c:2135 [inline]
 rcu_core+0x802/0x1c10 kernel/rcu/tree.c:2399
 __do_softirq+0x1d4/0x905 kernel/softirq.c:553

Memory state around the buggy address:
 ffff888021c28600: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff888021c28680: 00 00 00 00 fc fc fc fc fc fc fc fc fc fc fc fc
>ffff888021c28700: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                      ^
 ffff888021c28780: fb fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc
 ffff888021c28800: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
