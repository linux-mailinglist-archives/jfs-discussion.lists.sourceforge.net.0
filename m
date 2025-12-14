Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6DBCBBD32
	for <lists+jfs-discussion@lfdr.de>; Sun, 14 Dec 2025 16:47:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=uEdtNknzD53n4Z3w7C62wXu5YnGr81xGTFpah5ANA3k=; b=IZPufprFBpVATMCv5WtfFBmWwi
	FqLEDzaTkaFULuRLEOISzfXU/B9RQu8KgQnjULgovoL9HUFEK8Vp2ddA+AfYA+szKZQ4h7WxkqNo7
	hUL6dNJ8/aVk9PDjL+3OYARCSNJdu1+jbqV01kuRvJH9BSK3JadWx5JY141aTpr6IpiU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vUoJF-0006VK-Ac;
	Sun, 14 Dec 2025 15:46:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3krI-aQkbAEMx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vUleR-00058y-Jn for jfs-discussion@lists.sourceforge.net;
 Sun, 14 Dec 2025 12:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EUKOEBgUR/5KS4bKeazujkECQgmF7j381fBfOGZ2UVU=; b=FT6weAUkXtHTdFE7MGc8/zb/2V
 k15T8T0uf9CLyL7VDoaQJwCL13U0JYZLj6gJrWs1QBviPIFpY6uRPvus595I59TydQbD2owTmr6aR
 ikExDig+YeLClUIyfcWkns9aNDDQNW8bQStZWstusWpykDO3HQl8jrm7llQ9YiXOD+x8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EUKOEBgUR/5KS4bKeazujkECQgmF7j381fBfOGZ2UVU=; b=T
 ph4OQ8o9HcHeXCfEGBtuY99d4B9QLLmF5kVv83CwyCEblXwVvPlpQ3bO6cuEoNGNqv/HV+gJuWLxj
 Wsb7kJag3PyTNzQ78ctqDH7JIbI7TlA3MDf+bBnwiVjY2NjmYhIJIg2YyM9ELAK9Z8Zkfzi8uY0QD
 6PaqexhqZHBx0rrw=;
Received: from mail-pf1-f205.google.com ([209.85.210.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vUleR-0000iM-M5 for jfs-discussion@lists.sourceforge.net;
 Sun, 14 Dec 2025 12:56:40 +0000
Received: by mail-pf1-f205.google.com with SMTP id
 d2e1a72fcca58-7bad1cef9bcso5221639b3a.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 14 Dec 2025 04:56:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765716994; x=1766321794;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EUKOEBgUR/5KS4bKeazujkECQgmF7j381fBfOGZ2UVU=;
 b=KqPPB0yofXv2O/6r0Ol3dJgc4u/3BxodGGH6V98udZOKMyPwMSnlXljXnqnjaGij7q
 +QnW8z3K5nUfi6bFt3ht40tENMMuKSywPyLHp0i3yhpmdj94aA066tvcj+MMeWlpgzf7
 gQZjZpMkaQJ8JDGhWlnjULUelqPjomaq2Hrk/GBHPEs6mFrS8JbBU5qLJzHtbLGEnzlT
 Vmz3blNi9bdQ0kcCj5+BQmv77pwEBj21cFY6k7f3q1FuH/09eYxUQb1xUvJeJRx7cpJC
 HFkeC0wAqpT27sfSZVzQr9WVvPTDWFGZ2nkulKGCXvtncc/5sg96qojVeJr+p4MIybcc
 AhjQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZ6LlamYIAYVloWDbHoeFoW20KlOdrvoDDli7LFI3r2udiStFg8ZqBIFgj0iezTagmUxRlkGbeJbyT5VLKUQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzN9eGJrDzRGXaRrDcwgOHg3MrGKVK2YraJlHbcxhB8TmQXKjdo
 /CqEHg9TLZiE4LNN5E0DLz7eyoNNJf4L0VlgQWCfn3DaI/I+ZZ7Vuzu9Yj7QKqFJ4B2tSVkH9/0
 BgjoI5IXaqoRuO16OeTj+Zofbb9sQ05kS+P00+d1gJ9gGS6lJNpvf41DWd0E=
X-Google-Smtp-Source: AGHT+IHsRri+k/TD2XzjKDF79BRy9Y/GyQM8ix/NXgWfNmPEkLDe8H2NHmoV19ySnFLJ3ZarUPg39VvIT6TcOKOA5eZ2aI2s/tXU
MIME-Version: 1.0
X-Received: by 2002:a05:6820:f030:b0:659:9a49:8fe7 with SMTP id
 006d021491bc7-65b4518b9ccmr3331788eaf.20.1765716626037; Sun, 14 Dec 2025
 04:50:26 -0800 (PST)
Date: Sun, 14 Dec 2025 04:50:26 -0800
In-Reply-To: <67256f23.050a0220.35b515.017e.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <693eb292.a70a0220.33cd7b.00c7.GAE@google.com>
To: axboe@kernel.dk, jfs-discussion@lists.sourceforge.net, 
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 8f0b4cce4481 Linux 6.19-rc1 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=12b5911a580000 kernel config:
 https://syzkaller.appspot.com/x/.config?x=1f2b6fe1fd [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.205 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vUleR-0000iM-M5
X-Mailman-Approved-At: Sun, 14 Dec 2025 15:46:56 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs] general protection fault in
 blk_update_request
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
Reply-To: syzbot <syzbot+1d38eedcb25a3b5686a7@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    8f0b4cce4481 Linux 6.19-rc1
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=12b5911a580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1f2b6fe1fdf1a00b
dashboard link: https://syzkaller.appspot.com/bug?extid=1d38eedcb25a3b5686a7
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=133919c2580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13da09b4580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ea3b19e4d883/disk-8f0b4cce.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/bd7c115820ba/vmlinux-8f0b4cce.xz
kernel image: https://storage.googleapis.com/syzbot-assets/e5813cc1963f/bzImage-8f0b4cce.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/c0e5f2b9d745/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=153919c2580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1d38eedcb25a3b5686a7@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: slab-use-after-free in rt_spin_lock+0x88/0x3e0 kernel/locking/spinlock_rt.c:56
Read of size 1 at addr ffff888038671ca8 by task ksoftirqd/0/15

CPU: 0 UID: 0 PID: 15 Comm: ksoftirqd/0 Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/25/2025
Call Trac[  124.734676][    C0] Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0xca/0x240 mm/kasan/report.c:482
 kasan_report+0x118/0x150 mm/kasan/report.c:595
 __kasan_check_byte+0x2a/0x40 mm/kasan/common.c:573
 kasan_check_byte include/linux/kasan.h:401 [inline]
 lock_acquire+0x84/0x340 kernel/locking/lockdep.c:5842
 rt_spin_lock+0x88/0x3e0 kernel/locking/spinlock_rt.c:56
 spin_lock include/linux/spinlock_rt.h:44 [inline]
 __wake_up_common_lock+0x2f/0x1e0 kernel/sched/wait.c:124
 blk_update_request+0x57e/0xe60 block/blk-mq.c:1007
 blk_mq_end_request+0x3e/0x70 block/blk-mq.c:1169
 blk_complete_reqs block/blk-mq.c:1244 [inline]
 blk_done_softirq+0x10a/0x160 block/blk-mq.c:1249
 handle_softirqs+0x226/0x6d0 kernel/softirq.c:622
 run_ksoftirqd+0xac/0x210 kernel/softirq.c:1063
 smpboot_thread_fn+0x542/0xa60 kernel/smpboot.c:160
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x599/0xb30 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:246
 </TASK>

Allocated by task 6101:
 kasan_save_stack mm/kasan/common.c:56 [inline]
 kasan_save_track+0x3e/0x80 mm/kasan/common.c:77
 poison_kmalloc_redzone mm/kasan/common.c:397 [inline]
 __kasan_kmalloc+0x93/0xb0 mm/kasan/common.c:414
 kasan_kmalloc include/linux/kasan.h:262 [inline]
 __kmalloc_cache_noprof+0x1fb/0x6d0 mm/slub.c:5776
 kmalloc_noprof include/linux/slab.h:957 [inline]
 lbmLogInit fs/jfs/jfs_logmgr.c:1821 [inline]
 lmLogInit+0x3d0/0x19e0 fs/jfs/jfs_logmgr.c:1269
 open_inline_log fs/jfs/jfs_logmgr.c:1175 [inline]
 lmLogOpen+0x4e1/0xfa0 fs/jfs/jfs_logmgr.c:1069
 jfs_mount_rw+0xe9/0x670 fs/jfs/jfs_mount.c:257
 jfs_fill_super+0x754/0xd80 fs/jfs/super.c:532
 get_tree_bdev_flags+0x40e/0x4d0 fs/super.c:1691
 vfs_get_tree+0x92/0x2a0 fs/super.c:1751
 fc_mount fs/namespace.c:1199 [inline]
 do_new_mount_fc fs/namespace.c:3636 [inline]
 do_new_mount+0x302/0xa10 fs/namespace.c:3712
 do_mount fs/namespace.c:4035 [inline]
 __do_sys_mount fs/namespace.c:4224 [inline]
 __se_sys_mount+0x313/0x410 fs/namespace.c:4201
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Freed by task 6101:
 kasan_save_stack mm/kasan/common.c:56 [inline]
 kasan_save_track+0x3e/0x80 mm/kasan/common.c:77
 kasan_save_free_info+0x46/0x50 mm/kasan/generic.c:584
 poison_slab_object mm/kasan/common.c:252 [inline]
 __kasan_slab_free+0x5c/0x80 mm/kasan/common.c:284
 kasan_slab_free include/linux/kasan.h:234 [inline]
 slab_free_hook mm/slub.c:2540 [inline]
 slab_free mm/slub.c:6668 [inline]
 kfree+0x1bd/0x900 mm/slub.c:6876
 lbmLogShutdown fs/jfs/jfs_logmgr.c:1864 [inline]
 lmLogInit+0x1137/0x19e0 fs/jfs/jfs_logmgr.c:1415
 open_inline_log fs/jfs/jfs_logmgr.c:1175 [inline]
 lmLogOpen+0x4e1/0xfa0 fs/jfs/jfs_logmgr.c:1069
 jfs_mount_rw+0xe9/0x670 fs/jfs/jfs_mount.c:257
 jfs_fill_super+0x754/0xd80 fs/jfs/super.c:532
 get_tree_bdev_flags+0x40e/0x4d0 fs/super.c:1691
 vfs_get_tree+0x92/0x2a0 fs/super.c:1751
 fc_mount fs/namespace.c:1199 [inline]
 do_new_mount_fc fs/namespace.c:3636 [inline]
 do_new_mount+0x302/0xa10 fs/namespace.c:3712
 do_mount fs/namespace.c:4035 [inline]
 __do_sys_mount fs/namespace.c:4224 [inline]
 __se_sys_mount+0x313/0x410 fs/namespace.c:4201
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

The buggy address belongs to the object at ffff888038671c00
 which belongs to the cache kmalloc-256 of size 256
The buggy address is located 168 bytes inside of
 freed 256-byte region [ffff888038671c00, ffff888038671d00)

The buggy address belongs to the physical page:
page: refcount:0 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x38670
head: order:1 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0x80000000000040(head|node=0|zone=1)
page_type: f5(slab)
raw: 0080000000000040 ffff88813ff26b40 ffffea0000e13f00 dead000000000002
raw: 0000000000000000 0000000080100010 00000000f5000000 0000000000000000
head: 0080000000000040 ffff88813ff26b40 ffffea0000e13f00 dead000000000002
head: 0000000000000000 0000000080100010 00000000f5000000 0000000000000000
head: 0080000000000001 ffffea0000e19c01 00000000ffffffff 00000000ffffffff
head: 0000000000000000 0000000000000000 00000000ffffffff 0000000000000002
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 1, migratetype Unmovable, gfp_mask 0x252800(GFP_NOWAIT|__GFP_NORETRY|__GFP_COMP|__GFP_THISNODE), pid 5883, tgid 5883 (syz-executor), ts 92687559576, free_ts 92184229989
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x234/0x290 mm/page_alloc.c:1846
 prep_new_page mm/page_alloc.c:1854 [inline]
 get_page_from_freelist+0x28c0/0x2960 mm/page_alloc.c:3915
 __alloc_frozen_pages_noprof+0x181/0x370 mm/page_alloc.c:5210
 alloc_slab_page mm/slub.c:3077 [inline]
 allocate_slab+0x7a/0x3b0 mm/slub.c:3248
 new_slab mm/slub.c:3302 [inline]
 ___slab_alloc+0xb10/0x1400 mm/slub.c:4656
 __slab_alloc+0xc6/0x1f0 mm/slub.c:4779
 __slab_alloc_node mm/slub.c:4855 [inline]
 slab_alloc_node mm/slub.c:5251 [inline]
 __do_kmalloc_node mm/slub.c:5656 [inline]
 __kmalloc_node_noprof+0x2c4/0x820 mm/slub.c:5663
 kmalloc_array_node_noprof include/linux/slab.h:1075 [inline]
 alloc_slab_obj_exts+0x3e/0x100 mm/slub.c:2123
 account_slab mm/slub.c:3202 [inline]
 allocate_slab+0x1cc/0x3b0 mm/slub.c:3267
 new_slab mm/slub.c:3302 [inline]
 ___slab_alloc+0xb10/0x1400 mm/slub.c:4656
 __slab_alloc+0xc6/0x1f0 mm/slub.c:4779
 __slab_alloc_node mm/slub.c:4855 [inline]
 slab_alloc_node mm/slub.c:5251 [inline]
 __do_kmalloc_node mm/slub.c:5656 [inline]
 __kvmalloc_node_noprof+0x327/0x940 mm/slub.c:7134
 allocate_hook_entries_size net/netfilter/core.c:58 [inline]
 nf_hook_entries_grow+0x281/0x720 net/netfilter/core.c:137
 __nf_register_net_hook+0x2c9/0x930 net/netfilter/core.c:432
 nf_register_net_hook+0xb2/0x190 net/netfilter/core.c:575
 nf_register_net_hooks+0x44/0x1b0 net/netfilter/core.c:591
page last free pid 5173 tgid 5173 stack trace:
 reset_page_owner include/linux/page_owner.h:25 [inline]
 free_pages_prepare mm/page_alloc.c:1395 [inline]
 __free_frozen_pages+0xfe1/0x1170 mm/page_alloc.c:2943
 discard_slab mm/slub.c:3346 [inline]
 __put_partials+0x149/0x170 mm/slub.c:3886
 __slab_free+0x139/0x210 mm/slub.c:5952
 qlink_free mm/kasan/quarantine.c:163 [inline]
 qlist_free_all+0x97/0x100 mm/kasan/quarantine.c:179
 kasan_quarantine_reduce+0x148/0x160 mm/kasan/quarantine.c:286
 __kasan_slab_alloc+0x22/0x80 mm/kasan/common.c:349
 kasan_slab_alloc include/linux/kasan.h:252 [inline]
 slab_post_alloc_hook mm/slub.c:4953 [inline]
 slab_alloc_node mm/slub.c:5263 [inline]
 __do_kmalloc_node mm/slub.c:5656 [inline]
 __kmalloc_noprof+0x1ec/0x7e0 mm/slub.c:5669
 kmalloc_noprof include/linux/slab.h:961 [inline]
 tomoyo_realpath_from_path+0xe3/0x5d0 security/tomoyo/realpath.c:251
 tomoyo_get_realpath security/tomoyo/file.c:151 [inline]
 tomoyo_path_perm+0x213/0x4b0 security/tomoyo/file.c:822
 security_inode_getattr+0x12f/0x330 security/security.c:1869
 vfs_getattr fs/stat.c:259 [inline]
 vfs_fstat fs/stat.c:281 [inline]
 __do_sys_newfstat fs/stat.c:555 [inline]
 __se_sys_newfstat fs/stat.c:550 [inline]
 __x64_sys_newfstat+0xfc/0x200 fs/stat.c:550
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Memory state around the buggy address:
 ffff888038671b80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff888038671c00: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff888038671c80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                  ^
 ffff888038671d00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff888038671d80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
==================================================================


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
