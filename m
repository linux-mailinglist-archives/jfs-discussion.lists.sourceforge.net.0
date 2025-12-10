Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6225CB41E0
	for <lists+jfs-discussion@lfdr.de>; Wed, 10 Dec 2025 23:04:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WzLLSVgYj2OnvjUx5QNFGQnIQhphWsPtl4AfE8SzU1c=; b=VuwnnYK4OzaeZJpFfNAKRCPZ53
	XRPqMeyp4Af1wcZePsldJ7bp0I7NmgbE5+ieuqVtEimAK0M/V0GabDfaIvpRIXqtD0JUkMgYVdNt+
	+OkPYvIzF2TCtz6XxQG+tXm3m0+PRsn4wf15ySgCk/Q3PipYn91RFg/RAPZZ+eZzyfhk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vTSHx-0005yQ-Sm;
	Wed, 10 Dec 2025 22:04:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3MOo5aQkbAD0rxyjZkkdqZoohc.fnnfkdtrdqbnmsdms.bnl@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vTS14-0001Da-S7 for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Dec 2025 21:46:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9Ehg8Cc6eJaz0t2yCTZKfys0lFxqM/oC8t3D26Sl30M=; b=C6EyvsR78mmZL4Nm0bgjuo4wDd
 8BsC2qvHiM5h/aVSVdcPwyqqT7Wy+e0HDgi9bN2appJqXDf6RRFWlUhr40PhWSQ+H8Pl14L5jibvk
 cZWpE1cbREdEG6VXcssyFaJJD5n4sD1s9NgDjFX8YNo8+xhG73fUvJdBpPeGaCSjgVh4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9Ehg8Cc6eJaz0t2yCTZKfys0lFxqM/oC8t3D26Sl30M=; b=V
 Js4TpdZatm/H8UFC4+ejKrhuy2BfhBrj5UFOQ1neDlSMWMEhQAA5LkutVEr+p4UfKefOMdBD/xl/K
 AaRZNr/vEXlWSdz30VX2a1MyL3WZYQnbkXQ0mr5zT2MGVq5WTTOnNh7qxT4zHgAv8tZV2xDbIgpgc
 ct48WreymRsaB8QY=;
Received: from mail-ot1-f77.google.com ([209.85.210.77])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vTS14-00087L-SY for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Dec 2025 21:46:35 +0000
Received: by mail-ot1-f77.google.com with SMTP id
 46e09a7af769-7c72ccd60f5so738555a34.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 10 Dec 2025 13:46:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765403184; x=1766007984;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9Ehg8Cc6eJaz0t2yCTZKfys0lFxqM/oC8t3D26Sl30M=;
 b=rorCkI7E+TrJit6bCR0s/X80TjULiIp6ZyYKBpv5VZ2lOzgYpQNYx7PGyvWDCGzssP
 3cejKVkH2d0YNmZajlpkHnMz51gyap9E2IENYHAtzsKVtrQKqlaTpYyytRhToEoDwT7n
 q+PBgLxa5jkYyD1JKU2MAOrlHihxZD0r1hruYJZjLHYfpr01hcK+pIYa9JRwNtJudB9B
 4s5mnlHA23yYI+0Jj12KfuGOS/O877EIWSZcKE0ray7QokXOboAwG8nG8ijUmDaMP91J
 RdJKdlklyWnOV02KULvI6noohgHT8Cnjc+P+QoJpXxkNttam753HBGuFjjcJlpnA2NqX
 Tvbw==
X-Gm-Message-State: AOJu0YwG1qje2GtRtlqY4ugq07JtstW/GVZkXU/KQ+r+PbbLMHuwZDTv
 r95Z9yWSqRcBpgktHUHWd5NZeDqVLR6+YhkMMswEzZfNC8nZ1ye40DAXqdr1QLrbfjW7jjHUNa/
 f4dK80zhUJclhUI6DYjvYvr4XR+DBpBktOK3GN0llZvH43f28DFq0TfUq5Yj/AQ==
X-Google-Smtp-Source: AGHT+IHx2/e7Be8/xhOIR1HVrcAjdIOzKU1bc7v024nN1jEOzMkAbFUH0DBsNFmTVpn5rWTcj8zL3wW+SPC4SShq+rmP5SQ8OudT
MIME-Version: 1.0
X-Received: by 2002:a05:6820:1b0f:b0:659:9a49:9085 with SMTP id
 006d021491bc7-65b2ad4ae13mr2391554eaf.80.1765403184242; Wed, 10 Dec 2025
 13:46:24 -0800 (PST)
Date: Wed, 10 Dec 2025 13:46:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6939ea30.a70a0220.33cd7b.001a.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 416f99c3b16f
 Merge tag 'driver-core-6.19-rc1' of git://git.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=127e7c1a580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.77 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vTS14-00087L-SY
X-Mailman-Approved-At: Wed, 10 Dec 2025 22:04:00 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] possible deadlock in diFree (3)
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
Reply-To: syzbot <syzbot+1bcae2d9e9040bb283cc@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    416f99c3b16f Merge tag 'driver-core-6.19-rc1' of git://git..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=127e7c1a580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f5a0bcda07a0bfd7
dashboard link: https://syzkaller.appspot.com/bug?extid=1bcae2d9e9040bb283cc
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/d900f083ada3/non_bootable_disk-416f99c3.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/fb10fdbc0d42/vmlinux-416f99c3.xz
kernel image: https://storage.googleapis.com/syzbot-assets/f277b82f7dd0/bzImage-416f99c3.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1bcae2d9e9040bb283cc@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
syzkaller #0 Not tainted
------------------------------------------------------
kswapd0/78 is trying to acquire lock:
ffff888012738920 (&(imap->im_aglock[index])){+.+.}-{4:4}, at: diFree+0x29f/0x2c40 fs/jfs/jfs_imap.c:889

but task is already holding lock:
ffffffff8e0511c0 (fs_reclaim){+.+.}-{0:0}, at: balance_pgdat mm/vmscan.c:6973 [inline]
ffffffff8e0511c0 (fs_reclaim){+.+.}-{0:0}, at: kswapd+0x92a/0x2820 mm/vmscan.c:7352

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #4 (fs_reclaim){+.+.}-{0:0}:
       __fs_reclaim_acquire mm/page_alloc.c:4301 [inline]
       fs_reclaim_acquire+0x72/0x100 mm/page_alloc.c:4315
       might_alloc include/linux/sched/mm.h:317 [inline]
       prepare_alloc_pages+0x152/0x650 mm/page_alloc.c:4978
       __alloc_frozen_pages_noprof+0x123/0x370 mm/page_alloc.c:5199
       alloc_pages_mpol+0x232/0x4a0 mm/mempolicy.c:2486
       ___kmalloc_large_node+0x4e/0x150 mm/slub.c:5593
       __kmalloc_large_node_noprof+0x18/0x90 mm/slub.c:5624
       __do_kmalloc_node mm/slub.c:5640 [inline]
       __kmalloc_noprof+0x4c9/0x800 mm/slub.c:5664
       kmalloc_noprof include/linux/slab.h:961 [inline]
       ea_get+0x40f/0x1330 fs/jfs/xattr.c:489
       __jfs_setxattr+0x57c/0x1120 fs/jfs/xattr.c:727
       __jfs_xattr_set+0xda/0x170 fs/jfs/xattr.c:941
       __vfs_setxattr+0x43c/0x480 fs/xattr.c:200
       __vfs_setxattr_noperm+0x12d/0x660 fs/xattr.c:234
       vfs_setxattr+0x16b/0x2f0 fs/xattr.c:321
       do_setxattr fs/xattr.c:636 [inline]
       filename_setxattr+0x274/0x600 fs/xattr.c:665
       path_setxattrat+0x364/0x3a0 fs/xattr.c:713
       __do_sys_setxattr fs/xattr.c:747 [inline]
       __se_sys_setxattr fs/xattr.c:743 [inline]
       __x64_sys_setxattr+0xbc/0xe0 fs/xattr.c:743
       do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
       do_syscall_64+0xfa/0xf80 arch/x86/entry/syscall_64.c:94
       entry_SYSCALL_64_after_hwframe+0x77/0x7f

-> #3 (&jfs_ip->xattr_sem){++++}-{4:4}:
       down_write+0x96/0x1f0 kernel/locking/rwsem.c:1590
       __jfs_setxattr+0xe1/0x1120 fs/jfs/xattr.c:678
       __jfs_xattr_set+0xda/0x170 fs/jfs/xattr.c:941
       __vfs_setxattr+0x43c/0x480 fs/xattr.c:200
       __vfs_setxattr_noperm+0x12d/0x660 fs/xattr.c:234
       vfs_setxattr+0x16b/0x2f0 fs/xattr.c:321
       do_setxattr fs/xattr.c:636 [inline]
       filename_setxattr+0x274/0x600 fs/xattr.c:665
       path_setxattrat+0x364/0x3a0 fs/xattr.c:713
       __do_sys_setxattr fs/xattr.c:747 [inline]
       __se_sys_setxattr fs/xattr.c:743 [inline]
       __x64_sys_setxattr+0xbc/0xe0 fs/xattr.c:743
       do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
       do_syscall_64+0xfa/0xf80 arch/x86/entry/syscall_64.c:94
       entry_SYSCALL_64_after_hwframe+0x77/0x7f

-> #2 (&jfs_ip->commit_mutex){+.+.}-{4:4}:
       __mutex_lock_common kernel/locking/mutex.c:614 [inline]
       __mutex_lock+0x187/0x1350 kernel/locking/mutex.c:776
       diNewIAG fs/jfs/jfs_imap.c:2522 [inline]
       diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
       diAllocAG+0x1478/0x1df0 fs/jfs/jfs_imap.c:1669
       diAlloc+0x1d5/0x1680 fs/jfs/jfs_imap.c:1590
       ialloc+0x8c/0x8f0 fs/jfs/jfs_inode.c:56
       jfs_mkdir+0x193/0xa70 fs/jfs/namei.c:225
       vfs_mkdir+0x512/0x5b0 fs/namei.c:5130
       do_mkdirat+0x276/0x4b0 fs/namei.c:5164
       __do_sys_mkdir fs/namei.c:5191 [inline]
       __se_sys_mkdir fs/namei.c:5189 [inline]
       __x64_sys_mkdir+0x6c/0x80 fs/namei.c:5189
       do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
       do_syscall_64+0xfa/0xf80 arch/x86/entry/syscall_64.c:94
       entry_SYSCALL_64_after_hwframe+0x77/0x7f

-> #1 (&jfs_ip->rdwrlock/1){++++}-{4:4}:
       down_read_nested+0x49/0x2e0 kernel/locking/rwsem.c:1662
       diAlloc+0x795/0x1680 fs/jfs/jfs_imap.c:1388
       ialloc+0x8c/0x8f0 fs/jfs/jfs_inode.c:56
       jfs_create+0x18d/0xa80 fs/jfs/namei.c:92
       lookup_open fs/namei.c:4440 [inline]
       open_last_lookups fs/namei.c:4540 [inline]
       path_openat+0x18bb/0x3dd0 fs/namei.c:4784
       do_filp_open+0x1fa/0x410 fs/namei.c:4814
       do_sys_openat2+0x121/0x200 fs/open.c:1430
       do_sys_open fs/open.c:1436 [inline]
       __do_sys_creat fs/open.c:1514 [inline]
       __se_sys_creat fs/open.c:1508 [inline]
       __x64_sys_creat+0x8f/0xc0 fs/open.c:1508
       do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
       do_syscall_64+0xfa/0xf80 arch/x86/entry/syscall_64.c:94
       entry_SYSCALL_64_after_hwframe+0x77/0x7f

-> #0 (&(imap->im_aglock[index])){+.+.}-{4:4}:
       check_prev_add kernel/locking/lockdep.c:3165 [inline]
       check_prevs_add kernel/locking/lockdep.c:3284 [inline]
       validate_chain kernel/locking/lockdep.c:3908 [inline]
       __lock_acquire+0x15a6/0x2cf0 kernel/locking/lockdep.c:5237
       lock_acquire+0x117/0x340 kernel/locking/lockdep.c:5868
       __mutex_lock_common kernel/locking/mutex.c:614 [inline]
       __mutex_lock+0x187/0x1350 kernel/locking/mutex.c:776
       diFree+0x29f/0x2c40 fs/jfs/jfs_imap.c:889
       jfs_evict_inode+0x331/0x440 fs/jfs/inode.c:162
       evict+0x5f4/0xae0 fs/inode.c:837
       __dentry_kill+0x209/0x660 fs/dcache.c:670
       shrink_kill+0xa9/0x2c0 fs/dcache.c:1137
       shrink_dentry_list+0x2e0/0x5e0 fs/dcache.c:1164
       prune_dcache_sb+0x10e/0x180 fs/dcache.c:1246
       super_cache_scan+0x369/0x4b0 fs/super.c:222
       do_shrink_slab+0x6df/0x10d0 mm/shrinker.c:437
       shrink_slab_memcg mm/shrinker.c:550 [inline]
       shrink_slab+0x7ef/0x10d0 mm/shrinker.c:628
       shrink_one+0x2d9/0x720 mm/vmscan.c:4919
       shrink_many mm/vmscan.c:4980 [inline]
       lru_gen_shrink_node mm/vmscan.c:5058 [inline]
       shrink_node+0x2f7d/0x35b0 mm/vmscan.c:6045
       kswapd_shrink_node mm/vmscan.c:6899 [inline]
       balance_pgdat mm/vmscan.c:7082 [inline]
       kswapd+0x145a/0x2820 mm/vmscan.c:7352
       kthread+0x711/0x8a0 kernel/kthread.c:463
       ret_from_fork+0x599/0xb30 arch/x86/kernel/process.c:158
       ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:246

other info that might help us debug this:

Chain exists of:
  &(imap->im_aglock[index]) --> &jfs_ip->xattr_sem --> fs_reclaim

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(fs_reclaim);
                               lock(&jfs_ip->xattr_sem);
                               lock(fs_reclaim);
  lock(&(imap->im_aglock[index]));

 *** DEADLOCK ***

2 locks held by kswapd0/78:
 #0: ffffffff8e0511c0 (fs_reclaim){+.+.}-{0:0}, at: balance_pgdat mm/vmscan.c:6973 [inline]
 #0: ffffffff8e0511c0 (fs_reclaim){+.+.}-{0:0}, at: kswapd+0x92a/0x2820 mm/vmscan.c:7352
 #1: ffff888011e160e0 (&type->s_umount_key#51){.+.+}-{4:4}, at: super_trylock_shared fs/super.c:563 [inline]
 #1: ffff888011e160e0 (&type->s_umount_key#51){.+.+}-{4:4}, at: super_cache_scan+0x91/0x4b0 fs/super.c:197

stack backtrace:
CPU: 0 UID: 0 PID: 78 Comm: kswapd0 Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 print_circular_bug+0x2e2/0x300 kernel/locking/lockdep.c:2043
 check_noncircular+0x12e/0x150 kernel/locking/lockdep.c:2175
 check_prev_add kernel/locking/lockdep.c:3165 [inline]
 check_prevs_add kernel/locking/lockdep.c:3284 [inline]
 validate_chain kernel/locking/lockdep.c:3908 [inline]
 __lock_acquire+0x15a6/0x2cf0 kernel/locking/lockdep.c:5237
 lock_acquire+0x117/0x340 kernel/locking/lockdep.c:5868
 __mutex_lock_common kernel/locking/mutex.c:614 [inline]
 __mutex_lock+0x187/0x1350 kernel/locking/mutex.c:776
 diFree+0x29f/0x2c40 fs/jfs/jfs_imap.c:889
 jfs_evict_inode+0x331/0x440 fs/jfs/inode.c:162
 evict+0x5f4/0xae0 fs/inode.c:837
 __dentry_kill+0x209/0x660 fs/dcache.c:670
 shrink_kill+0xa9/0x2c0 fs/dcache.c:1137
 shrink_dentry_list+0x2e0/0x5e0 fs/dcache.c:1164
 prune_dcache_sb+0x10e/0x180 fs/dcache.c:1246
 super_cache_scan+0x369/0x4b0 fs/super.c:222
 do_shrink_slab+0x6df/0x10d0 mm/shrinker.c:437
 shrink_slab_memcg mm/shrinker.c:550 [inline]
 shrink_slab+0x7ef/0x10d0 mm/shrinker.c:628
 shrink_one+0x2d9/0x720 mm/vmscan.c:4919
 shrink_many mm/vmscan.c:4980 [inline]
 lru_gen_shrink_node mm/vmscan.c:5058 [inline]
 shrink_node+0x2f7d/0x35b0 mm/vmscan.c:6045
 kswapd_shrink_node mm/vmscan.c:6899 [inline]
 balance_pgdat mm/vmscan.c:7082 [inline]
 kswapd+0x145a/0x2820 mm/vmscan.c:7352
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x599/0xb30 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:246
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
