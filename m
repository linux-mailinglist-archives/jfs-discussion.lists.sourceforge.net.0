Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F5375844B
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Jul 2023 20:14:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qLpDP-00074v-6s;
	Tue, 18 Jul 2023 18:14:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <36a22ZAkbAEw6CDyozzs5o33wr.u22uzs86s5q217s17.q20@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qLmVs-0004bJ-SK for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Jul 2023 15:21:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yRc5/eIMjMfr3sWctxJrJzL/0O3vIbLOFg5Y9OqtpF8=; b=IfH15rLAOCUYbtEeBnL6nUNhPG
 UnBifMsU3kSha+DAO4FPiUa4a1N9ppAnIxqHPHFLkgrEPmQ+Q6/8iuZNwhrOTOnNn4VGQHGSqE8sE
 2moBvESU1ksHcWePIpaLVAKwGN+AH+ARTSoqp/IIk6FV/O6YBLVSvZV2Asj06VkczVos=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yRc5/eIMjMfr3sWctxJrJzL/0O3vIbLOFg5Y9OqtpF8=; b=P
 V+7AXhDtdAyy+RmFVZE3rWH3z3PB5huGBjJBQ7El4+EcXl8q8UaV8kmvtiov493Mw6OomAUKtIxVa
 aiDboMn0JrYgjyXvBxownPRtq1vFnk04YC/kjiP5ktY+p9iFxsClEJKQQRserhviL+oAC51vJhXaC
 VOwB0/9Sf2vvoZeM=;
Received: from mail-oi1-f206.google.com ([209.85.167.206])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qLmVs-0001BW-UC for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Jul 2023 15:21:19 +0000
Received: by mail-oi1-f206.google.com with SMTP id
 5614622812f47-39eab5800bdso7701596b6e.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Jul 2023 08:21:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689693673; x=1692285673;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yRc5/eIMjMfr3sWctxJrJzL/0O3vIbLOFg5Y9OqtpF8=;
 b=Dy19U0m9bs5hcQ+j0z9LQxa5Yxi/37oljtO6tr6m2xV5ZuqZjEZrqTYUlwgk0bXE3Y
 /uEvAif0EgdIu+7LqYrixpNKSJqUFY2dX6vvIWRdG93aoA3nO+O018qN6Xe0N5hIiKP6
 0G5FzVH38l+Wkmf27CWbQd+JqLId3qUFoQ2OALbvXbh/J/9JQ3m7Ph7xGDAdcnilGOpr
 LVm33ccUqpkqebOgpRF5O1r9F5MZ7G8R082bew1Gtf/yl2EpyfJqPTz5InSs/AnF8JT3
 Eb+K0SOewjUWQL4s9WrXoeI0Un1j3B+XkFHjHAAEfVstIgXVNwqJYzyhPYZAfzN4nszi
 FY+Q==
X-Gm-Message-State: ABy/qLaYR3aJSe7X4jVz4Es8fshC6gkM9g8UbqinclrRbo5WfdMmVO3U
 BjsLhAedt/643YvaAy8NCKbTx7XaFz6kwtrxEqimLJvLsahk
X-Google-Smtp-Source: APBJJlF5gcPm1PBl11qZLtPIV5HWcUzSez8Ib6G1yL4ySrzbrIZfNIzgy9IUDcKOPuc3PkczSN4wvfYuUO/+XFweJtCO9pnYThgB
MIME-Version: 1.0
X-Received: by 2002:a05:6808:1784:b0:3a1:f3ed:e9e with SMTP id
 bg4-20020a056808178400b003a1f3ed0e9emr24110581oib.3.1689693673223; Tue, 18
 Jul 2023 08:21:13 -0700 (PDT)
Date: Tue, 18 Jul 2023 08:21:13 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002bfa570600c477b3@google.com>
To: Jason@zx2c4.com, broonie@kernel.org, davem@davemloft.net, 
 edumazet@google.com, jfs-discussion@lists.sourceforge.net, kuba@kernel.org, 
 kuninori.morimoto.gx@renesas.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, pabeni@redhat.com, 
 povik+lin@cutebit.org, shaggy@kernel.org, syzkaller-bugs@googlegroups.com, 
 wireguard@lists.zx2c4.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 51f269a6ecc7
 Merge tag 'probes-fixes-6.4-rc4' of git://git.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=111705d1280000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.206 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.206 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1qLmVs-0001BW-UC
X-Mailman-Approved-At: Tue, 18 Jul 2023 18:14:26 +0000
Subject: [Jfs-discussion] [syzbot] [wireguard?] [jfs?] KASAN:
 slab-use-after-free Read in wg_noise_keypair_get
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
Reply-To: syzbot <syzbot+96eb4e0d727f0ae998a6@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    51f269a6ecc7 Merge tag 'probes-fixes-6.4-rc4' of git://git..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=111705d1280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=162cf2103e4a7453
dashboard link: https://syzkaller.appspot.com/bug?extid=96eb4e0d727f0ae998a6
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13101715280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/dc3a22741e4e/disk-51f269a6.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/61d77fe6cfb4/vmlinux-51f269a6.xz
kernel image: https://storage.googleapis.com/syzbot-assets/bebce35b62e9/bzImage-51f269a6.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/d2ff4ad2d0c2/mount_0.gz

The issue was bisected to:

commit 586fb2641371cf7f23a401ab1c79b17e3ec457f4
Author: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Date:   Wed Jun 22 05:54:06 2022 +0000

    ASoC: soc-core.c: fixup snd_soc_of_get_dai_link_cpus()

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=108780b5280000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=128780b5280000
console output: https://syzkaller.appspot.com/x/log.txt?x=148780b5280000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+96eb4e0d727f0ae998a6@syzkaller.appspotmail.com
Fixes: 586fb2641371 ("ASoC: soc-core.c: fixup snd_soc_of_get_dai_link_cpus()")

IPv6: ADDRCONF(NETDEV_CHANGE): wlan1: link becomes ready
IPv6: ADDRCONF(NETDEV_CHANGE): wlan1: link becomes ready
==================================================================
BUG: KASAN: slab-use-after-free in instrument_atomic_read include/linux/instrumented.h:68 [inline]
BUG: KASAN: slab-use-after-free in atomic_read include/linux/atomic/atomic-instrumented.h:27 [inline]
BUG: KASAN: slab-use-after-free in refcount_read include/linux/refcount.h:147 [inline]
BUG: KASAN: slab-use-after-free in __refcount_add_not_zero include/linux/refcount.h:152 [inline]
BUG: KASAN: slab-use-after-free in __refcount_inc_not_zero include/linux/refcount.h:227 [inline]
BUG: KASAN: slab-use-after-free in refcount_inc_not_zero include/linux/refcount.h:245 [inline]
BUG: KASAN: slab-use-after-free in kref_get_unless_zero include/linux/kref.h:111 [inline]
BUG: KASAN: slab-use-after-free in wg_noise_keypair_get+0xd2/0x3a0 drivers/net/wireguard/noise.c:146
Read of size 4 at addr ffff88807d0304d8 by task kworker/0:6/5139

CPU: 0 PID: 5139 Comm: kworker/0:6 Not tainted 6.4.0-rc4-syzkaller-00268-g51f269a6ecc7 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/25/2023
Workqueue: ipv6_addrconf addrconf_dad_work
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:351 [inline]
 print_report+0x163/0x540 mm/kasan/report.c:462
 kasan_report+0x176/0x1b0 mm/kasan/report.c:572
 kasan_check_range+0x283/0x290 mm/kasan/generic.c:187
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 atomic_read include/linux/atomic/atomic-instrumented.h:27 [inline]
 refcount_read include/linux/refcount.h:147 [inline]
 __refcount_add_not_zero include/linux/refcount.h:152 [inline]
 __refcount_inc_not_zero include/linux/refcount.h:227 [inline]
 refcount_inc_not_zero include/linux/refcount.h:245 [inline]
 kref_get_unless_zero include/linux/kref.h:111 [inline]
 wg_noise_keypair_get+0xd2/0x3a0 drivers/net/wireguard/noise.c:146
 wg_packet_send_staged_packets+0x406/0x1890 drivers/net/wireguard/send.c:357
 wg_xmit+0xbca/0x1120 drivers/net/wireguard/device.c:217
 __netdev_start_xmit include/linux/netdevice.h:4915 [inline]
 netdev_start_xmit include/linux/netdevice.h:4929 [inline]
 xmit_one net/core/dev.c:3578 [inline]
 dev_hard_start_xmit+0x241/0x750 net/core/dev.c:3594
 __dev_queue_xmit+0x19b9/0x38b0 net/core/dev.c:4244
 neigh_output include/net/neighbour.h:544 [inline]
 ip6_finish_output2+0xf80/0x1560 net/ipv6/ip6_output.c:134
 __ip6_finish_output net/ipv6/ip6_output.c:195 [inline]
 ip6_finish_output+0x6b0/0xa80 net/ipv6/ip6_output.c:206
 dst_output include/net/dst.h:458 [inline]
 NF_HOOK include/linux/netfilter.h:303 [inline]
 ndisc_send_skb+0xb08/0x1390 net/ipv6/ndisc.c:508
 addrconf_dad_completed+0x6ea/0xcf0 net/ipv6/addrconf.c:4254
 addrconf_dad_work+0xd92/0x16b0
 process_one_work+0x8a0/0x10e0 kernel/workqueue.c:2405
 worker_thread+0xa63/0x1210 kernel/workqueue.c:2552
 kthread+0x2b8/0x350 kernel/kthread.c:379
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308
 </TASK>

Allocated by task 5137:
 kasan_save_stack mm/kasan/common.c:45 [inline]
 kasan_set_track+0x4f/0x70 mm/kasan/common.c:52
 ____kasan_kmalloc mm/kasan/common.c:374 [inline]
 __kasan_kmalloc+0x98/0xb0 mm/kasan/common.c:383
 kmalloc include/linux/slab.h:559 [inline]
 kzalloc include/linux/slab.h:680 [inline]
 keypair_create drivers/net/wireguard/noise.c:100 [inline]
 wg_noise_handshake_begin_session+0xc4/0xb60 drivers/net/wireguard/noise.c:827
 wg_packet_send_handshake_response+0x120/0x2d0 drivers/net/wireguard/send.c:96
 wg_receive_handshake_packet drivers/net/wireguard/receive.c:154 [inline]
 wg_packet_handshake_receive_worker+0x5dd/0xf00 drivers/net/wireguard/receive.c:213
 process_one_work+0x8a0/0x10e0 kernel/workqueue.c:2405
 worker_thread+0xa63/0x1210 kernel/workqueue.c:2552
 kthread+0x2b8/0x350 kernel/kthread.c:379
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308

Freed by task 5086:
 kasan_save_stack mm/kasan/common.c:45 [inline]
 kasan_set_track+0x4f/0x70 mm/kasan/common.c:52
 kasan_save_free_info+0x2b/0x40 mm/kasan/generic.c:521
 ____kasan_slab_free+0xd6/0x120 mm/kasan/common.c:236
 kasan_slab_free include/linux/kasan.h:162 [inline]
 slab_free_hook mm/slub.c:1781 [inline]
 slab_free_freelist_hook mm/slub.c:1807 [inline]
 slab_free mm/slub.c:3786 [inline]
 __kmem_cache_free+0x264/0x3c0 mm/slub.c:3799
 diUnmount+0xf3/0x100 fs/jfs/jfs_imap.c:195
 jfs_umount+0x186/0x3a0 fs/jfs/jfs_umount.c:63
 jfs_put_super+0x8a/0x190 fs/jfs/super.c:194
 generic_shutdown_super+0x134/0x340 fs/super.c:500
 kill_block_super+0x84/0xf0 fs/super.c:1407
 deactivate_locked_super+0xa4/0x110 fs/super.c:331
 cleanup_mnt+0x426/0x4c0 fs/namespace.c:1177
 task_work_run+0x24a/0x300 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 exit_to_user_mode_loop+0xd9/0x100 kernel/entry/common.c:171
 exit_to_user_mode_prepare+0xb1/0x140 kernel/entry/common.c:204
 __syscall_exit_to_user_mode_work kernel/entry/common.c:286 [inline]
 syscall_exit_to_user_mode+0x64/0x280 kernel/entry/common.c:297
 do_syscall_64+0x4d/0xc0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

The buggy address belongs to the object at ffff88807d030000
 which belongs to the cache kmalloc-2k of size 2048
The buggy address is located 1240 bytes inside of
 freed 2048-byte region [ffff88807d030000, ffff88807d030800)

The buggy address belongs to the physical page:
page:ffffea0001f40c00 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x7d030
head:ffffea0001f40c00 order:3 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0xfff00000010200(slab|head|node=0|zone=1|lastcpupid=0x7ff)
page_type: 0xffffffff()
raw: 00fff00000010200 ffff888012442000 dead000000000122 0000000000000000
raw: 0000000000000000 0000000000080008 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask 0x1d20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_HARDWALL), pid 5137, tgid 5137 (kworker/1:5), ts 1071863956331, free_ts 1071845351658
 set_page_owner include/linux/page_owner.h:31 [inline]
 post_alloc_hook+0x1e6/0x210 mm/page_alloc.c:1731
 prep_new_page mm/page_alloc.c:1738 [inline]
 get_page_from_freelist+0x321c/0x33a0 mm/page_alloc.c:3502
 __alloc_pages+0x255/0x670 mm/page_alloc.c:4768
 alloc_slab_page+0x6a/0x160 mm/slub.c:1851
 allocate_slab mm/slub.c:1998 [inline]
 new_slab+0x84/0x2f0 mm/slub.c:2051
 ___slab_alloc+0xa85/0x10a0 mm/slub.c:3192
 __slab_alloc mm/slub.c:3291 [inline]
 __slab_alloc_node mm/slub.c:3344 [inline]
 slab_alloc_node mm/slub.c:3441 [inline]
 __kmem_cache_alloc_node+0x1b8/0x290 mm/slub.c:3490
 kmalloc_trace+0x2a/0xe0 mm/slab_common.c:1057
 kmalloc include/linux/slab.h:559 [inline]
 kzalloc include/linux/slab.h:680 [inline]
 keypair_create drivers/net/wireguard/noise.c:100 [inline]
 wg_noise_handshake_begin_session+0xc4/0xb60 drivers/net/wireguard/noise.c:827
 wg_packet_send_handshake_response+0x120/0x2d0 drivers/net/wireguard/send.c:96
 wg_receive_handshake_packet drivers/net/wireguard/receive.c:154 [inline]
 wg_packet_handshake_receive_worker+0x5dd/0xf00 drivers/net/wireguard/receive.c:213
 process_one_work+0x8a0/0x10e0 kernel/workqueue.c:2405
 worker_thread+0xa63/0x1210 kernel/workqueue.c:2552
 kthread+0x2b8/0x350 kernel/kthread.c:379
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1302 [inline]
 free_unref_page_prepare+0x903/0xa30 mm/page_alloc.c:2564
 free_unref_page+0x37/0x3f0 mm/page_alloc.c:2659
 free_large_kmalloc+0xff/0x190 mm/slab_common.c:943
 diMount+0x657/0x870 fs/jfs/jfs_imap.c:115
 jfs_mount_rw+0x2da/0x6a0 fs/jfs/jfs_mount.c:240
 jfs_remount+0x3d1/0x6b0 fs/jfs/super.c:454
 reconfigure_super+0x3c9/0x7c0 fs/super.c:956
 vfs_fsconfig_locked fs/fsopen.c:254 [inline]
 __do_sys_fsconfig fs/fsopen.c:439 [inline]
 __se_sys_fsconfig+0xa29/0xf70 fs/fsopen.c:314
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Memory state around the buggy address:
 ffff88807d030380: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff88807d030400: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff88807d030480: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                                    ^
 ffff88807d030500: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff88807d030580: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to change bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
