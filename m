Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3B291CD9E
	for <lists+jfs-discussion@lfdr.de>; Sat, 29 Jun 2024 16:32:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sNZ7a-0001UE-MX;
	Sat, 29 Jun 2024 14:32:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Ydx_ZgkbAFQEKL6w770DwBB4z.2AA270GE0DyA9F09F.yA8@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sNUxX-000742-VS for jfs-discussion@lists.sourceforge.net;
 Sat, 29 Jun 2024 10:05:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/WkChmWjhzPDeeoPw57UVshG/hNmwAmpx6hYHqNP++E=; b=bNxOMf7JnyeqZZqsrrFd5JDpGE
 Tii7rMyezeSxEGsCpiSdACVYFy2RCEdcN2GOyuehkRNCiDuNsIZyqayXMIWD0ZNRwOAsEn1mcsI0r
 s58fTHIDKNF4sw8vqCX63XmWOU2V8t2mFwTbVdOWBQgrHhy39CJL7hsep+SK5qCPsw9Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/WkChmWjhzPDeeoPw57UVshG/hNmwAmpx6hYHqNP++E=; b=K
 +O2tzU5rk1A0w7GqsTcr0ZHIrMbZo8FehemZUOo1bWqRUh/kuHxEyu2h4eQI9EsLzTPDrQVeATgO9
 lgVo6pJwvFCI1ZRCbLdnO9/HNSL/GYmwT5FddDO/KlKGLLL3qtZOliZnGA+mi8ifq74zdIHpRIxUz
 hGPq8ZUr/bCa1FIU=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sNUxY-0002y8-Ls for jfs-discussion@lists.sourceforge.net;
 Sat, 29 Jun 2024 10:05:32 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7f6200ad270so147267439f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 29 Jun 2024 03:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719655521; x=1720260321;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/WkChmWjhzPDeeoPw57UVshG/hNmwAmpx6hYHqNP++E=;
 b=oSzB1ru8WDPVll6rCQzMUVnzJYWztMQNEfPyjvfFgUAdsG6tZvWgWwDfAT17kXDUPJ
 /Shr+XgrZxUKbpSCYWvjNtbcmpMWHhFcW0nut8DxRlpE/1aRIWxtQ5Gigqa6c9Xg2Hbm
 3gGC7+M0wu3G9B9SefXpw5sYKuobeDulORyZuXut3We/djXT/qrE6V1SUpbE5XjPC/Vj
 Sufyn7FV3FFTwvy0KXlFvKvmfdvXJ5kAQXhFfSC4M0vrKYWaEskQIZBgO5JS+KEaWGGA
 G/jL6/wAIPcV7xRyECeoKaiQCxD2iB9Cj+QAClbYbqgmAObYZXidkehvtrHQmdpaxVBx
 aTeQ==
X-Gm-Message-State: AOJu0Yy7N+SYFrLEg7BCoR45i7DcdvoZ8JmuhAY+hCR9hj+VqH4cdzGZ
 S5hynmHhuhz8vdFefEMsbhqpW8bQVDRsV1sepbefT1rYsZrd7A86qLdAQAly5mA73thq3XsqrIi
 aqL1Fk7f6xPLNG87NbF6yzUv5C5Q/lLhs8eW+Kuu/4VdifwBaq0LM5e8=
X-Google-Smtp-Source: AGHT+IHAzox96lBz2evPLKUGgO1mNSE9tRL7jsUinMC/LhQw4M4PbdSALsZtMFbWLfAwvT8qCYk5sM7r1qpaKr1ojmpIObRFFErD
MIME-Version: 1.0
X-Received: by 2002:a05:6602:15c2:b0:7f4:e1f3:c939 with SMTP id
 ca18e2360f4ac-7f62edfd0c0mr2217439f.1.1719655521118; Sat, 29 Jun 2024
 03:05:21 -0700 (PDT)
Date: Sat, 29 Jun 2024 03:05:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000078f75f061c0480a1@google.com>
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
 syzbot found the following issue on: HEAD commit: 55027e689933
 Merge tag 'input-for-v6.10-rc5' of git://git... git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=17bdd2ae980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (-4.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1sNUxY-0002y8-Ls
X-Mailman-Approved-At: Sat, 29 Jun 2024 14:32:09 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] possible deadlock in __jfs_setxattr
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
Reply-To: syzbot <syzbot+6b5a66ea06e836f7d821@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    55027e689933 Merge tag 'input-for-v6.10-rc5' of git://git...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=17bdd2ae980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=53ab35b556129242
dashboard link: https://syzkaller.appspot.com/bug?extid=6b5a66ea06e836f7d821
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-55027e68.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/a36929b5a065/vmlinux-55027e68.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d72de6f61ddc/bzImage-55027e68.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+6b5a66ea06e836f7d821@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
6.10.0-rc5-syzkaller-00018-g55027e689933 #0 Not tainted
------------------------------------------------------
syz-executor.2/16354 is trying to acquire lock:
ffffffff8dd3ab20 (fs_reclaim){+.+.}-{0:0}, at: might_alloc include/linux/sched/mm.h:334 [inline]
ffffffff8dd3ab20 (fs_reclaim){+.+.}-{0:0}, at: prepare_alloc_pages.constprop.0+0x155/0x560 mm/page_alloc.c:4449

but task is already holding lock:
ffff88804b8b2760 (&jfs_ip->xattr_sem){++++}-{3:3}, at: __jfs_setxattr+0x10a/0xfb0 fs/jfs/xattr.c:671

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #4 (&jfs_ip->xattr_sem){++++}-{3:3}:
       down_write+0x3a/0x50 kernel/locking/rwsem.c:1579
       __jfs_setxattr+0x10a/0xfb0 fs/jfs/xattr.c:671
       __jfs_xattr_set+0xc6/0x150 fs/jfs/xattr.c:919
       __vfs_setxattr+0x173/0x1e0 fs/xattr.c:200
       __vfs_setxattr_noperm+0x127/0x660 fs/xattr.c:234
       __vfs_setxattr_locked+0x182/0x260 fs/xattr.c:295
       vfs_setxattr+0x146/0x350 fs/xattr.c:321
       do_setxattr+0x146/0x170 fs/xattr.c:629
       setxattr+0x15d/0x180 fs/xattr.c:652
       path_setxattr+0x179/0x1e0 fs/xattr.c:671
       __do_sys_lsetxattr fs/xattr.c:694 [inline]
       __se_sys_lsetxattr fs/xattr.c:690 [inline]
       __ia32_sys_lsetxattr+0xbd/0x160 fs/xattr.c:690
       do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
       __do_fast_syscall_32+0x73/0x120 arch/x86/entry/common.c:386
       do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:411
       entry_SYSENTER_compat_after_hwframe+0x84/0x8e

-> #3 (&jfs_ip->commit_mutex){+.+.}-{3:3}:
       __mutex_lock_common kernel/locking/mutex.c:608 [inline]
       __mutex_lock+0x175/0x9c0 kernel/locking/mutex.c:752
       diNewIAG fs/jfs/jfs_imap.c:2519 [inline]
       diAllocExt fs/jfs/jfs_imap.c:1902 [inline]
       diAllocAG+0xc59/0x2300 fs/jfs/jfs_imap.c:1666
       diAlloc+0x8f7/0x1a70 fs/jfs/jfs_imap.c:1587
       ialloc+0x84/0x9e0 fs/jfs/jfs_inode.c:56
       jfs_mkdir+0x244/0xb30 fs/jfs/namei.c:225
       vfs_mkdir+0x57d/0x860 fs/namei.c:4131
       do_mkdirat+0x301/0x3a0 fs/namei.c:4154
       __do_sys_mkdirat fs/namei.c:4169 [inline]
       __se_sys_mkdirat fs/namei.c:4167 [inline]
       __ia32_sys_mkdirat+0x84/0xb0 fs/namei.c:4167
       do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
       __do_fast_syscall_32+0x73/0x120 arch/x86/entry/common.c:386
       do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:411
       entry_SYSENTER_compat_after_hwframe+0x84/0x8e

-> #2 (&jfs_ip->rdwrlock/1){++++}-{3:3}:
       down_read_nested+0x9e/0x330 kernel/locking/rwsem.c:1651
       diAlloc+0x3ea/0x1a70 fs/jfs/jfs_imap.c:1385
       ialloc+0x84/0x9e0 fs/jfs/jfs_inode.c:56
       jfs_create+0x23e/0xb40 fs/jfs/namei.c:92
       lookup_open.isra.0+0x10a1/0x13c0 fs/namei.c:3505
       open_last_lookups fs/namei.c:3574 [inline]
       path_openat+0x92f/0x29f0 fs/namei.c:3804
       do_filp_open+0x1dc/0x430 fs/namei.c:3834
       do_sys_openat2+0x17a/0x1e0 fs/open.c:1405
       do_sys_open fs/open.c:1420 [inline]
       __do_compat_sys_openat fs/open.c:1480 [inline]
       __se_compat_sys_openat fs/open.c:1478 [inline]
       __ia32_compat_sys_openat+0x16e/0x210 fs/open.c:1478
       do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
       __do_fast_syscall_32+0x73/0x120 arch/x86/entry/common.c:386
       do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:411
       entry_SYSENTER_compat_after_hwframe+0x84/0x8e

-> #1 (&(imap->im_aglock[index])){+.+.}-{3:3}:
       __mutex_lock_common kernel/locking/mutex.c:608 [inline]
       __mutex_lock+0x175/0x9c0 kernel/locking/mutex.c:752
       diFree+0x2ff/0x2770 fs/jfs/jfs_imap.c:886
       jfs_evict_inode+0x3d4/0x4b0 fs/jfs/inode.c:156
       evict+0x2ed/0x6c0 fs/inode.c:667
       iput_final fs/inode.c:1741 [inline]
       iput.part.0+0x5a8/0x7f0 fs/inode.c:1767
       iput+0x5c/0x80 fs/inode.c:1757
       dentry_unlink_inode+0x295/0x480 fs/dcache.c:400
       __dentry_kill+0x1d0/0x600 fs/dcache.c:603
       shrink_kill fs/dcache.c:1048 [inline]
       shrink_dentry_list+0x140/0x5d0 fs/dcache.c:1075
       prune_dcache_sb+0xeb/0x150 fs/dcache.c:1156
       super_cache_scan+0x32a/0x550 fs/super.c:221
       do_shrink_slab+0x44f/0x11c0 mm/shrinker.c:435
       shrink_slab_memcg mm/shrinker.c:548 [inline]
       shrink_slab+0xa87/0x1310 mm/shrinker.c:626
       shrink_one+0x493/0x7c0 mm/vmscan.c:4790
       shrink_many mm/vmscan.c:4851 [inline]
       lru_gen_shrink_node+0x89f/0x1750 mm/vmscan.c:4951
       shrink_node mm/vmscan.c:5910 [inline]
       kswapd_shrink_node mm/vmscan.c:6720 [inline]
       balance_pgdat+0x1105/0x1970 mm/vmscan.c:6911
       kswapd+0x5ea/0xbf0 mm/vmscan.c:7180
       kthread+0x2c1/0x3a0 kernel/kthread.c:389
       ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
       ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244

-> #0 (fs_reclaim){+.+.}-{0:0}:
       check_prev_add kernel/locking/lockdep.c:3134 [inline]
       check_prevs_add kernel/locking/lockdep.c:3253 [inline]
       validate_chain kernel/locking/lockdep.c:3869 [inline]
       __lock_acquire+0x2478/0x3b30 kernel/locking/lockdep.c:5137
       lock_acquire kernel/locking/lockdep.c:5754 [inline]
       lock_acquire+0x1b1/0x560 kernel/locking/lockdep.c:5719
       __fs_reclaim_acquire mm/page_alloc.c:3801 [inline]
       fs_reclaim_acquire+0x102/0x160 mm/page_alloc.c:3815
       might_alloc include/linux/sched/mm.h:334 [inline]
       prepare_alloc_pages.constprop.0+0x155/0x560 mm/page_alloc.c:4449
       __alloc_pages_noprof+0x194/0x2460 mm/page_alloc.c:4667
       __alloc_pages_node_noprof include/linux/gfp.h:269 [inline]
       alloc_pages_node_noprof include/linux/gfp.h:296 [inline]
       __kmalloc_large_node+0x7f/0x1a0 mm/slub.c:4067
       __do_kmalloc_node mm/slub.c:4110 [inline]
       __kmalloc_noprof.cold+0xc/0x61 mm/slub.c:4135
       kmalloc_noprof include/linux/slab.h:664 [inline]
       ea_get+0x21f/0x12c0 fs/jfs/xattr.c:487
       __jfs_setxattr+0x1ed/0xfb0 fs/jfs/xattr.c:720
       __jfs_xattr_set+0xc6/0x150 fs/jfs/xattr.c:919
       __vfs_setxattr+0x173/0x1e0 fs/xattr.c:200
       __vfs_setxattr_noperm+0x127/0x660 fs/xattr.c:234
       __vfs_setxattr_locked+0x182/0x260 fs/xattr.c:295
       vfs_setxattr+0x146/0x350 fs/xattr.c:321
       do_setxattr+0x146/0x170 fs/xattr.c:629
       setxattr+0x15d/0x180 fs/xattr.c:652
       path_setxattr+0x179/0x1e0 fs/xattr.c:671
       __do_sys_setxattr fs/xattr.c:687 [inline]
       __se_sys_setxattr fs/xattr.c:683 [inline]
       __ia32_sys_setxattr+0xc0/0x160 fs/xattr.c:683
       do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
       __do_fast_syscall_32+0x73/0x120 arch/x86/entry/common.c:386
       do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:411
       entry_SYSENTER_compat_after_hwframe+0x84/0x8e

other info that might help us debug this:

Chain exists of:
  fs_reclaim --> &jfs_ip->commit_mutex --> &jfs_ip->xattr_sem

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&jfs_ip->xattr_sem);
                               lock(&jfs_ip->commit_mutex);
                               lock(&jfs_ip->xattr_sem);
  lock(fs_reclaim);

 *** DEADLOCK ***

4 locks held by syz-executor.2/16354:
 #0: ffff888057c08420 (sb_writers#27){.+.+}-{0:0}, at: path_setxattr+0xc3/0x1e0 fs/xattr.c:669
 #1: ffff88804b8b2a80 (&sb->s_type->i_mutex_key#36){+.+.}-{3:3}, at: inode_lock include/linux/fs.h:791 [inline]
 #1: ffff88804b8b2a80 (&sb->s_type->i_mutex_key#36){+.+.}-{3:3}, at: vfs_setxattr+0x123/0x350 fs/xattr.c:320
 #2: ffff88804b8b26c8 (&jfs_ip->commit_mutex){+.+.}-{3:3}, at: __jfs_xattr_set+0xad/0x150 fs/jfs/xattr.c:918
 #3: ffff88804b8b2760 (&jfs_ip->xattr_sem){++++}-{3:3}, at: __jfs_setxattr+0x10a/0xfb0 fs/jfs/xattr.c:671

stack backtrace:
CPU: 3 PID: 16354 Comm: syz-executor.2 Not tainted 6.10.0-rc5-syzkaller-00018-g55027e689933 #0
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
 __fs_reclaim_acquire mm/page_alloc.c:3801 [inline]
 fs_reclaim_acquire+0x102/0x160 mm/page_alloc.c:3815
 might_alloc include/linux/sched/mm.h:334 [inline]
 prepare_alloc_pages.constprop.0+0x155/0x560 mm/page_alloc.c:4449
 __alloc_pages_noprof+0x194/0x2460 mm/page_alloc.c:4667
 __alloc_pages_node_noprof include/linux/gfp.h:269 [inline]
 alloc_pages_node_noprof include/linux/gfp.h:296 [inline]
 __kmalloc_large_node+0x7f/0x1a0 mm/slub.c:4067
 __do_kmalloc_node mm/slub.c:4110 [inline]
 __kmalloc_noprof.cold+0xc/0x61 mm/slub.c:4135
 kmalloc_noprof include/linux/slab.h:664 [inline]
 ea_get+0x21f/0x12c0 fs/jfs/xattr.c:487
 __jfs_setxattr+0x1ed/0xfb0 fs/jfs/xattr.c:720
 __jfs_xattr_set+0xc6/0x150 fs/jfs/xattr.c:919
 __vfs_setxattr+0x173/0x1e0 fs/xattr.c:200
 __vfs_setxattr_noperm+0x127/0x660 fs/xattr.c:234
 __vfs_setxattr_locked+0x182/0x260 fs/xattr.c:295
 vfs_setxattr+0x146/0x350 fs/xattr.c:321
 do_setxattr+0x146/0x170 fs/xattr.c:629
 setxattr+0x15d/0x180 fs/xattr.c:652
 path_setxattr+0x179/0x1e0 fs/xattr.c:671
 __do_sys_setxattr fs/xattr.c:687 [inline]
 __se_sys_setxattr fs/xattr.c:683 [inline]
 __ia32_sys_setxattr+0xc0/0x160 fs/xattr.c:683
 do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
 __do_fast_syscall_32+0x73/0x120 arch/x86/entry/common.c:386
 do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:411
 entry_SYSENTER_compat_after_hwframe+0x84/0x8e
RIP: 0023:0xf7320579
Code: b8 01 10 06 03 74 b4 01 10 07 03 74 b0 01 10 08 03 74 d8 01 00 00 00 00 00 00 00 00 00 00 00 00 00 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 8d b4 26 00 00 00 00 8d b4 26 00 00 00 00
RSP: 002b:00000000f5ed05ac EFLAGS: 00000292 ORIG_RAX: 00000000000000e2
RAX: ffffffffffffffda RBX: 0000000020000100 RCX: 0000000020000140
RDX: 0000000020000180 RSI: 000000000000e00f RDI: 0000000000000000
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000292 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
----------------
Code disassembly (best guess), 2 bytes skipped:
   0:	10 06                	adc    %al,(%rsi)
   2:	03 74 b4 01          	add    0x1(%rsp,%rsi,4),%esi
   6:	10 07                	adc    %al,(%rdi)
   8:	03 74 b0 01          	add    0x1(%rax,%rsi,4),%esi
   c:	10 08                	adc    %cl,(%rax)
   e:	03 74 d8 01          	add    0x1(%rax,%rbx,8),%esi
  1e:	00 51 52             	add    %dl,0x52(%rcx)
  21:	55                   	push   %rbp
  22:	89 e5                	mov    %esp,%ebp
  24:	0f 34                	sysenter
  26:	cd 80                	int    $0x80
* 28:	5d                   	pop    %rbp <-- trapping instruction
  29:	5a                   	pop    %rdx
  2a:	59                   	pop    %rcx
  2b:	c3                   	ret
  2c:	90                   	nop
  2d:	90                   	nop
  2e:	90                   	nop
  2f:	90                   	nop
  30:	8d b4 26 00 00 00 00 	lea    0x0(%rsi,%riz,1),%esi
  37:	8d b4 26 00 00 00 00 	lea    0x0(%rsi,%riz,1),%esi


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
