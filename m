Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A29910C2B
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Jun 2024 18:24:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sKKa4-0002Mv-5l;
	Thu, 20 Jun 2024 16:24:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3T8tzZgkbAO4iopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sKBEg-0000l6-EL for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Jun 2024 06:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MMC8+QM0WZZQXmx3OoC9rnCZbTY4EqDYux1G2JqKRCU=; b=m6I5qUkknW1mjOhn4VtZ1sn7dg
 w7jUcZqAJgE/78/lIZxEGc0qRiY/UhVuJ20XELS5jd2mVqCQghftavoqzkyV/AaZJPrFjNKpKH+Um
 neaS462IvGxEqw7hpW1BSQ7T7FL/jYl4zD8bfVX3jxidFeMx1c5xz1zm/xdlEL368ffo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MMC8+QM0WZZQXmx3OoC9rnCZbTY4EqDYux1G2JqKRCU=; b=g
 K2T9sWVm8hsIWO2YAyOKtSskEu09YhVYAyCoNsc3Qz4lh64av6keZw3sdtwB+U1C3ShMrV6YxQ8GW
 yldERhn5ova2i9GhlFqB1gf5wTjlYYlEep+BiuPIgFqT3mvQs5KgVnvj4HXwSSBx7SJKIH7OQjMI0
 aZhsoSXsOo6lvjiw=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sKBEh-0004Zj-8w for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Jun 2024 06:25:31 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-37624b27e27so5478965ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Jun 2024 23:25:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718864720; x=1719469520;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MMC8+QM0WZZQXmx3OoC9rnCZbTY4EqDYux1G2JqKRCU=;
 b=Cq9J9Wx8xKG8mlMFEd3ceMBSm7MaKrSfzIp+R0htiXAxh87wqMq1OvAF1MM766GZOt
 LNDKcGgXv1ONm72SE8VeGamk0KDa7gBYb65Sm4IjVTPU+fKcSS7XZwZKJi5Hm3EAcjQB
 JkMhUpYCxVd1khrSCTC7hBOu221QICXci45yiaOqYeV0WUU61s8hpswJQ5qlVYyucGgb
 8M3YzmcuLqBqzQmzPk6V6955QMnpkAJtRTGULYRQQbHT/FMy+4g2W5M/Fj6LWXcFCPcy
 WZcTBqgHpwIlOtwh8bcNg3g8yiUWVMB+wBJ05bYAGuFUfxuJYwC/QcMvfDnXJNNgbckm
 ZhHQ==
X-Gm-Message-State: AOJu0YwVH+UvnVq/YZggIIVgZQwDCAtGsvUOoiHfKmGPmHSE6L4JTAdv
 g+WF2KRIyTV0QpP55OUcRj867/eaRTtdrBA/Tjd2WupDnuOSQHGP0/peE49fRxVT/WPcAUzQ82s
 qYy2r/Z6MO6GNwRSpk8RWsRabTVFg6xApxkOUovOgqSryBhjqo/7GUi0YCA==
X-Google-Smtp-Source: AGHT+IEP6O4RwCTqovH5Zw4ats9W/rcbd2NCNhZhmEoKi9g5sjCBSuDlOWb27QMDOZlrKiJSNmozd8zPCvmBsHmOd7pzt+nZJDST
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d12:b0:375:8fed:7e74 with SMTP id
 e9e14a558f8ab-3761d75f2f0mr2817515ab.5.1718864719738; Wed, 19 Jun 2024
 23:25:19 -0700 (PDT)
Date: Wed, 19 Jun 2024 23:25:19 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000098a89061b4c61a9@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 2ccbdf43d5e7
 Merge tag 'for-linus' of git://git.kernel.org.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=15d7c1de980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.208 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sKBEh-0004Zj-8w
X-Mailman-Approved-At: Thu, 20 Jun 2024 16:24:11 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] possible deadlock in diAllocAG
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
Reply-To: syzbot <syzbot+70d7737fe34ba0f39ccd@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    2ccbdf43d5e7 Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=15d7c1de980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=81c0d76ceef02b39
dashboard link: https://syzkaller.appspot.com/bug?extid=70d7737fe34ba0f39ccd
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-2ccbdf43.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/13cdb5bfbafa/vmlinux-2ccbdf43.xz
kernel image: https://storage.googleapis.com/syzbot-assets/7a14f5d07f81/bzImage-2ccbdf43.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+70d7737fe34ba0f39ccd@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
6.10.0-rc3-syzkaller-00044-g2ccbdf43d5e7 #0 Not tainted
------------------------------------------------------
syz-executor.0/7415 is trying to acquire lock:
ffff88806b966788 (&jfs_ip->commit_mutex){+.+.}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2519 [inline]
ffff88806b966788 (&jfs_ip->commit_mutex){+.+.}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1902 [inline]
ffff88806b966788 (&jfs_ip->commit_mutex){+.+.}-{3:3}, at: diAllocAG+0xc59/0x2300 fs/jfs/jfs_imap.c:1666

but task is already holding lock:
ffff88806b9666f8 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2474 [inline]
ffff88806b9666f8 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1902 [inline]
ffff88806b9666f8 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocAG+0xa99/0x2300 fs/jfs/jfs_imap.c:1666

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #3 (&jfs_ip->rdwrlock/1){++++}-{3:3}:
       down_read_nested+0x9e/0x330 kernel/locking/rwsem.c:1651
       diAllocExt fs/jfs/jfs_imap.c:1914 [inline]
       diAllocAG+0x235/0x2300 fs/jfs/jfs_imap.c:1666
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

-> #2 (&(imap->im_aglock[index])){+.+.}-{3:3}:
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

-> #1 (fs_reclaim){+.+.}-{0:0}:
       __fs_reclaim_acquire mm/page_alloc.c:3801 [inline]
       fs_reclaim_acquire+0x102/0x160 mm/page_alloc.c:3815
       might_alloc include/linux/sched/mm.h:334 [inline]
       slab_pre_alloc_hook mm/slub.c:3891 [inline]
       slab_alloc_node mm/slub.c:3981 [inline]
       __do_kmalloc_node mm/slub.c:4121 [inline]
       __kmalloc_noprof+0xb5/0x420 mm/slub.c:4135
       kmalloc_noprof include/linux/slab.h:664 [inline]
       __jfs_set_acl+0xaa/0x1a0 fs/jfs/acl.c:80
       jfs_set_acl+0x256/0x330 fs/jfs/acl.c:115
       set_posix_acl+0x25c/0x320 fs/posix_acl.c:955
       vfs_set_acl+0x53d/0x940 fs/posix_acl.c:1134
       do_set_acl+0xd9/0x1b0 fs/posix_acl.c:1279
       do_setxattr+0xeb/0x170 fs/xattr.c:626
       setxattr+0x15d/0x180 fs/xattr.c:652
       path_setxattr+0x179/0x1e0 fs/xattr.c:671
       __do_sys_setxattr fs/xattr.c:687 [inline]
       __se_sys_setxattr fs/xattr.c:683 [inline]
       __ia32_sys_setxattr+0xc0/0x160 fs/xattr.c:683
       do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
       __do_fast_syscall_32+0x73/0x120 arch/x86/entry/common.c:386
       do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:411
       entry_SYSENTER_compat_after_hwframe+0x84/0x8e

-> #0 (&jfs_ip->commit_mutex){+.+.}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:3134 [inline]
       check_prevs_add kernel/locking/lockdep.c:3253 [inline]
       validate_chain kernel/locking/lockdep.c:3869 [inline]
       __lock_acquire+0x2478/0x3b30 kernel/locking/lockdep.c:5137
       lock_acquire kernel/locking/lockdep.c:5754 [inline]
       lock_acquire+0x1b1/0x560 kernel/locking/lockdep.c:5719
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

other info that might help us debug this:

Chain exists of:
  &jfs_ip->commit_mutex --> &(imap->im_aglock[index]) --> &jfs_ip->rdwrlock/1

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&jfs_ip->rdwrlock/1);
                               lock(&(imap->im_aglock[index]));
                               lock(&jfs_ip->rdwrlock/1);
  lock(&jfs_ip->commit_mutex);

 *** DEADLOCK ***

5 locks held by syz-executor.0/7415:
 #0: ffff888059e4c420 (sb_writers#14){.+.+}-{0:0}, at: filename_create+0x10d/0x530 fs/namei.c:3893
 #1: ffff88806b967480 (&type->i_mutex_dir_key#10/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:826 [inline]
 #1: ffff88806b967480 (&type->i_mutex_dir_key#10/1){+.+.}-{3:3}, at: filename_create+0x1c2/0x530 fs/namei.c:3900
 #2: ffff888066090920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0xb9c/0x1a70 fs/jfs/jfs_imap.c:1370
 #3: ffff888066090890 (&imap->im_freelock){+.+.}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2457 [inline]
 #3: ffff888066090890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1902 [inline]
 #3: ffff888066090890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocAG+0x782/0x2300 fs/jfs/jfs_imap.c:1666
 #4: ffff88806b9666f8 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2474 [inline]
 #4: ffff88806b9666f8 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1902 [inline]
 #4: ffff88806b9666f8 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocAG+0xa99/0x2300 fs/jfs/jfs_imap.c:1666

stack backtrace:
CPU: 0 PID: 7415 Comm: syz-executor.0 Not tainted 6.10.0-rc3-syzkaller-00044-g2ccbdf43d5e7 #0
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
RIP: 0023:0xf7312579
Code: b8 01 10 06 03 74 b4 01 10 07 03 74 b0 01 10 08 03 74 d8 01 00 00 00 00 00 00 00 00 00 00 00 00 00 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 8d b4 26 00 00 00 00 8d b4 26 00 00 00 00
RSP: 002b:00000000f5f04418 EFLAGS: 00000296 ORIG_RAX: 0000000000000128
RAX: ffffffffffffffda RBX: 00000000ffffff9c RCX: 0000000020000040
RDX: 00000000000001ff RSI: 0000000000000000 RDI: 00000000000000fc
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
