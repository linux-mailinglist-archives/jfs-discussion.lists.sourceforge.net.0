Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DA28AD131
	for <lists+jfs-discussion@lfdr.de>; Mon, 22 Apr 2024 17:47:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ryvsL-00075K-5H;
	Mon, 22 Apr 2024 15:46:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3MoEmZgkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ryvX6-0005qQ-LS for jfs-discussion@lists.sourceforge.net;
 Mon, 22 Apr 2024 15:24:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dHtHnTi6FxG4AKp2BrDxT0ps7y/v6TGifGe1GDJVlwI=; b=WHt1ta9Mm1bDzIAi/8yoqopXdx
 SN4oc8C2+1vIO+dQfEoxIhs2dI832iWQygdSDJfZYmKp+WK/3HNqP1T5e+8VIUUr5rzwtJ9eqHEaQ
 U6VIdomRFJiaoanCU8YnKxTmOlUDtZCIcWY8FarBFi2toXzF1hZudjFUjyLn1eFdAlTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dHtHnTi6FxG4AKp2BrDxT0ps7y/v6TGifGe1GDJVlwI=; b=V
 YJp5DGKS0CPYpI2mWjVHNWnvuoKff32blzvo193k83GhVh5kYuB1znxoqVFu5FhggyuBLwLDjGsaE
 30VlXZETjHdjvPLRoYlAsXRnH/mV5f0U0CXut75FTgctMvxLoN3VtFv536jCIP4Ase8NLl5r/uQa2
 wgWLFKJWeaVxRJ7c=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ryvX5-00048U-Sx for jfs-discussion@lists.sourceforge.net;
 Mon, 22 Apr 2024 15:24:41 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-7da7d4ccb67so304531339f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 22 Apr 2024 08:24:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713799475; x=1714404275;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=dHtHnTi6FxG4AKp2BrDxT0ps7y/v6TGifGe1GDJVlwI=;
 b=d3qZ9wGJY7hgzpNQ36yahHgO9pZ7DmgEPgDCk2iFWXb0O+9MMH3Ef0+UXwRTkxirE3
 RWUTJxP79PbQt6maMLDuBhwjxbdemjds+vTC5FLokhuxp8TLqqJJOIz99dEg+UXY3b6Y
 4Dz7c4MDSUCemKERJg4rcckS33ykI9Q68vo0epuVigYC9Ij+ARgHy5dW2+qJU5jBN+sO
 fCyqvGOL7jQFt69INnJ6evInsCGci7QC1Nk3g5W1wZM4oruk5zRCYifhX0py+6juNIs5
 u7ILVtW/UVXfqTxbnXXaQ0lc5grkpQFbBQAwhCUz3pe+amsyhNYi5EdutUeLLQMNyW68
 WJ7w==
X-Gm-Message-State: AOJu0YzwtUoOp8w+zpe0yQxYATJZbqGtoKYdW/JezoIjXGpIk/JMoLHc
 /fwmqfg80U3a2RBiMGSwXGI0l/98TA3tLD+T40haAU/RroEVdv4tKpfNfKFZjl0HkaBDMyv1Vex
 ifdj/XTm1fUxmSO+KK6bLFXDHM5esj/gu08byMvQiD7Fo/5Onsz6imB0=
X-Google-Smtp-Source: AGHT+IGl6Ue9oyreAaIvve6ID07ZW18+KQQqr5hGPCdua2O7ZOqSiTjhF1+00xDTdCOgttfxHkYDUS9utudEzi4T5cRATUgjkqaJ
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1683:b0:485:65de:892 with SMTP id
 f3-20020a056638168300b0048565de0892mr60509jat.5.1713799474811; Mon, 22 Apr
 2024 08:24:34 -0700 (PDT)
Date: Mon, 22 Apr 2024 08:24:34 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e9a7c40616b108ba@google.com>
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
 syzbot found the following issue on: HEAD commit: 8cd26fd90c1a
 Merge tag 'for-6.9-rc4-tag' of git://git.kern.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=17246653180000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1ryvX5-00048U-Sx
X-Mailman-Approved-At: Mon, 22 Apr 2024 15:46:32 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] possible deadlock in diFree
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
Reply-To: syzbot <syzbot+ff2b5414e8547b96ad2e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    8cd26fd90c1a Merge tag 'for-6.9-rc4-tag' of git://git.kern..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=17246653180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2dc5adfa93a8cfac
dashboard link: https://syzkaller.appspot.com/bug?extid=ff2b5414e8547b96ad2e
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-8cd26fd9.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/7f65e88496b8/vmlinux-8cd26fd9.xz
kernel image: https://storage.googleapis.com/syzbot-assets/cc0f0ec3d904/bzImage-8cd26fd9.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+ff2b5414e8547b96ad2e@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
6.9.0-rc4-syzkaller-00038-g8cd26fd90c1a #0 Not tainted
------------------------------------------------------
kswapd0/111 is trying to acquire lock:
ffff88801e3e8920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diFree+0x2ff/0x2770 fs/jfs/jfs_imap.c:886

but task is already holding lock:
ffffffff8d9373c0 (fs_reclaim){+.+.}-{0:0}, at: balance_pgdat+0x166/0x1a10 mm/vmscan.c:6782

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #2 (fs_reclaim){+.+.}-{0:0}:
       __fs_reclaim_acquire mm/page_alloc.c:3698 [inline]
       fs_reclaim_acquire+0x102/0x160 mm/page_alloc.c:3712
       might_alloc include/linux/sched/mm.h:312 [inline]
       prepare_alloc_pages.constprop.0+0x155/0x560 mm/page_alloc.c:4346
       __alloc_pages+0x194/0x2460 mm/page_alloc.c:4564
       __alloc_pages_node include/linux/gfp.h:238 [inline]
       alloc_pages_node include/linux/gfp.h:261 [inline]
       __kmalloc_large_node+0x7f/0x1a0 mm/slub.c:3911
       kmalloc_large+0x1c/0x70 mm/slub.c:3928
       kmalloc include/linux/slab.h:625 [inline]
       diMount+0x29/0x8d0 fs/jfs/jfs_imap.c:105
       jfs_mount_rw+0x238/0x700 fs/jfs/jfs_mount.c:240
       jfs_remount+0x51f/0x650 fs/jfs/super.c:454
       legacy_reconfigure+0x119/0x180 fs/fs_context.c:685
       reconfigure_super+0x44f/0xb20 fs/super.c:1071
       vfs_cmd_reconfigure fs/fsopen.c:267 [inline]
       vfs_fsconfig_locked fs/fsopen.c:296 [inline]
       __do_sys_fsconfig+0x991/0xb90 fs/fsopen.c:476
       do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
       __do_fast_syscall_32+0x75/0x120 arch/x86/entry/common.c:321
       do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:346
       entry_SYSENTER_compat_after_hwframe+0x84/0x8e

-> #1 (&jfs_ip->rdwrlock/1){++++}-{3:3}:
       down_read_nested+0x9e/0x330 kernel/locking/rwsem.c:1651
       diAlloc+0x3ea/0x1a70 fs/jfs/jfs_imap.c:1385
       ialloc+0x84/0x9e0 fs/jfs/jfs_inode.c:56
       jfs_create+0x23e/0xb40 fs/jfs/namei.c:92
       lookup_open.isra.0+0x10a1/0x13c0 fs/namei.c:3497
       open_last_lookups fs/namei.c:3566 [inline]
       path_openat+0x92f/0x2990 fs/namei.c:3796
       do_filp_open+0x1dc/0x430 fs/namei.c:3826
       do_sys_openat2+0x17a/0x1e0 fs/open.c:1406
       do_sys_open fs/open.c:1421 [inline]
       __do_compat_sys_openat fs/open.c:1481 [inline]
       __se_compat_sys_openat fs/open.c:1479 [inline]
       __ia32_compat_sys_openat+0x16e/0x210 fs/open.c:1479
       do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
       __do_fast_syscall_32+0x75/0x120 arch/x86/entry/common.c:321
       do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:346
       entry_SYSENTER_compat_after_hwframe+0x84/0x8e

-> #0 (&(imap->im_aglock[index])){+.+.}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:3134 [inline]
       check_prevs_add kernel/locking/lockdep.c:3253 [inline]
       validate_chain kernel/locking/lockdep.c:3869 [inline]
       __lock_acquire+0x2478/0x3b30 kernel/locking/lockdep.c:5137
       lock_acquire kernel/locking/lockdep.c:5754 [inline]
       lock_acquire+0x1b1/0x560 kernel/locking/lockdep.c:5719
       __mutex_lock_common kernel/locking/mutex.c:608 [inline]
       __mutex_lock+0x175/0x9c0 kernel/locking/mutex.c:752
       diFree+0x2ff/0x2770 fs/jfs/jfs_imap.c:886
       jfs_evict_inode+0x3d4/0x4b0 fs/jfs/inode.c:156
       evict+0x2ed/0x6c0 fs/inode.c:667
       iput_final fs/inode.c:1741 [inline]
       iput.part.0+0x5a8/0x7f0 fs/inode.c:1767
       iput+0x5c/0x80 fs/inode.c:1757
       dentry_unlink_inode+0x295/0x440 fs/dcache.c:400
       __dentry_kill+0x1d0/0x600 fs/dcache.c:603
       shrink_kill fs/dcache.c:1048 [inline]
       shrink_dentry_list+0x140/0x5d0 fs/dcache.c:1075
       prune_dcache_sb+0xeb/0x150 fs/dcache.c:1156
       super_cache_scan+0x32a/0x550 fs/super.c:221
       do_shrink_slab+0x44f/0x11c0 mm/shrinker.c:435
       shrink_slab_memcg mm/shrinker.c:548 [inline]
       shrink_slab+0xa87/0x1310 mm/shrinker.c:626
       shrink_one+0x493/0x7c0 mm/vmscan.c:4774
       shrink_many mm/vmscan.c:4835 [inline]
       lru_gen_shrink_node+0x89f/0x1750 mm/vmscan.c:4935
       shrink_node mm/vmscan.c:5894 [inline]
       kswapd_shrink_node mm/vmscan.c:6704 [inline]
       balance_pgdat+0x10d1/0x1a10 mm/vmscan.c:6895
       kswapd+0x5ea/0xbf0 mm/vmscan.c:7164
       kthread+0x2c1/0x3a0 kernel/kthread.c:388
       ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
       ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244

other info that might help us debug this:

Chain exists of:
  &(imap->im_aglock[index]) --> &jfs_ip->rdwrlock/1 --> fs_reclaim

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(fs_reclaim);
                               lock(&jfs_ip->rdwrlock/1);
                               lock(fs_reclaim);
  lock(&(imap->im_aglock[index]));

 *** DEADLOCK ***

2 locks held by kswapd0/111:
 #0: ffffffff8d9373c0 (fs_reclaim){+.+.}-{0:0}, at: balance_pgdat+0x166/0x1a10 mm/vmscan.c:6782
 #1: ffff88804a6d80e0 (&type->s_umount_key#65){++++}-{3:3}, at: super_trylock_shared fs/super.c:561 [inline]
 #1: ffff88804a6d80e0 (&type->s_umount_key#65){++++}-{3:3}, at: super_cache_scan+0x96/0x550 fs/super.c:196

stack backtrace:
CPU: 3 PID: 111 Comm: kswapd0 Not tainted 6.9.0-rc4-syzkaller-00038-g8cd26fd90c1a #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.2-debian-1.16.2-1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x116/0x1f0 lib/dump_stack.c:114
 check_noncircular+0x31a/0x400 kernel/locking/lockdep.c:2187
 check_prev_add kernel/locking/lockdep.c:3134 [inline]
 check_prevs_add kernel/locking/lockdep.c:3253 [inline]
 validate_chain kernel/locking/lockdep.c:3869 [inline]
 __lock_acquire+0x2478/0x3b30 kernel/locking/lockdep.c:5137
 lock_acquire kernel/locking/lockdep.c:5754 [inline]
 lock_acquire+0x1b1/0x560 kernel/locking/lockdep.c:5719
 __mutex_lock_common kernel/locking/mutex.c:608 [inline]
 __mutex_lock+0x175/0x9c0 kernel/locking/mutex.c:752
 diFree+0x2ff/0x2770 fs/jfs/jfs_imap.c:886
 jfs_evict_inode+0x3d4/0x4b0 fs/jfs/inode.c:156
 evict+0x2ed/0x6c0 fs/inode.c:667
 iput_final fs/inode.c:1741 [inline]
 iput.part.0+0x5a8/0x7f0 fs/inode.c:1767
 iput+0x5c/0x80 fs/inode.c:1757
 dentry_unlink_inode+0x295/0x440 fs/dcache.c:400
 __dentry_kill+0x1d0/0x600 fs/dcache.c:603
 shrink_kill fs/dcache.c:1048 [inline]
 shrink_dentry_list+0x140/0x5d0 fs/dcache.c:1075
 prune_dcache_sb+0xeb/0x150 fs/dcache.c:1156
 super_cache_scan+0x32a/0x550 fs/super.c:221
 do_shrink_slab+0x44f/0x11c0 mm/shrinker.c:435
 shrink_slab_memcg mm/shrinker.c:548 [inline]
 shrink_slab+0xa87/0x1310 mm/shrinker.c:626
 shrink_one+0x493/0x7c0 mm/vmscan.c:4774
 shrink_many mm/vmscan.c:4835 [inline]
 lru_gen_shrink_node+0x89f/0x1750 mm/vmscan.c:4935
 shrink_node mm/vmscan.c:5894 [inline]
 kswapd_shrink_node mm/vmscan.c:6704 [inline]
 balance_pgdat+0x10d1/0x1a10 mm/vmscan.c:6895
 kswapd+0x5ea/0xbf0 mm/vmscan.c:7164
 kthread+0x2c1/0x3a0 kernel/kthread.c:388
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>


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
