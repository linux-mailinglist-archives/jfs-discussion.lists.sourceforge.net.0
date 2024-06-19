Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B39BB910C2A
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Jun 2024 18:24:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sKKa3-0002Mn-Rl;
	Thu, 20 Jun 2024 16:24:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3-QVzZgkbAAw4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sJy5s-0007db-53 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jun 2024 16:23:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CcaODNuj5/Ty/iziaL3/hLn4vyPOeC989B0bwwnnekA=; b=mKVHl7EKB0g721QmVExkSNQvHO
 OVrBdlGAYG6z/0kmHyz4+gwZ6S/l/H7X0IWrconqkyvzyuNw6GWIchmwaOSI17nknKogsAJu0jI4s
 U4Suhh2cZClFMHDAe3ZojFyKuDV57HXYUn9jQlBYiVfkGkwV6yQnp0/Ic/Dy01r+g82c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CcaODNuj5/Ty/iziaL3/hLn4vyPOeC989B0bwwnnekA=; b=C
 AZ+8fCkIg6nrQG8QyZokNffSjP1joktBlD69X3zvAVDkxL6ZKZ9avkEZiDAvH58byooeqbEtRkYBl
 AnRybQa0DX/tJGzla/+6Rb+f3+W3z6fR0tIR8dwLIjma6b42d3ZcPVBC8yBNy2hfc+PUr34ReLjKs
 CLNBikBCxrjEBVLo=;
Received: from mail-io1-f78.google.com ([209.85.166.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sJy5t-0005bi-0y for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jun 2024 16:23:33 +0000
Received: by mail-io1-f78.google.com with SMTP id
 ca18e2360f4ac-7ebd11f77d8so1025562039f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Jun 2024 09:23:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718814201; x=1719419001;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=CcaODNuj5/Ty/iziaL3/hLn4vyPOeC989B0bwwnnekA=;
 b=j0DkRzCRfx3FhNUPdgFBeHfWJbuX1vxUsLqoPiItSKIGCHcifW4lypWtDlD6ArSOr3
 K6KAsUd8zIqBStQiE9htgGv651v9+EZcBsAJHNVKXbym/XjX5CNcIs6kxi//jrOk14+W
 /Kb5oLZj3YmWE0Icqigzu2SBbX/MITvbAiCMCQYQ+zl1kZXYR+bfR/VUJH+Swa6f2Dn4
 j8j/o1u/C/yytsTo7MNRAqRoWcVTMNqS1i+esVzt2s+7d12XojNkoiv69duDvGt+GE4P
 E28TXkDPtCcE3vckScWtk7SBVDOpUhf7nRkmdwuCSfgOlU1x4RTJzkW5QpeAq6b5D4p5
 M6xA==
X-Gm-Message-State: AOJu0YyQWvR3+YZTCnnz7aHl5gcT58V9eJXvbRLhLCTzefNASbdgh1pD
 wQN4Hdigxlsw/quI2IQuwLlTy9nP5UG1E7cePnSw+lN7NsWlzy3FnedNhTVqu5cQLr5HQOqITqr
 VHs8kOSa4/rWihhTyJFJUuHPzYuChNWxnclelGhC95kVe5HTEQ2fiqqwIBQ==
X-Google-Smtp-Source: AGHT+IE6bxYD4RlYWAUeO0j+GGcVtNnpVQp6ldoBOL3H+t4OVMo6QksyyfkxiNSIfe5DWOjL4FAKK0bYH4B/7jJpmgSlQP4a4PQG
MIME-Version: 1.0
X-Received: by 2002:a05:6638:8525:b0:4b0:b123:d9d with SMTP id
 8926c6da1cb9f-4b9abfa3776mr129142173.5.1718814201506; Wed, 19 Jun 2024
 09:23:21 -0700 (PDT)
Date: Wed, 19 Jun 2024 09:23:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ea7f86061b409dd1@google.com>
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
 output: https://syzkaller.appspot.com/x/log.txt?x=154869da980000 kernel
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
 [209.85.166.78 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.78 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.78 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sJy5t-0005bi-0y
X-Mailman-Approved-At: Thu, 20 Jun 2024 16:24:11 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] possible deadlock in jfs_set_acl
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
Reply-To: syzbot <syzbot+e7672270deddf60a67f4@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    2ccbdf43d5e7 Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=154869da980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=81c0d76ceef02b39
dashboard link: https://syzkaller.appspot.com/bug?extid=e7672270deddf60a67f4
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-2ccbdf43.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/13cdb5bfbafa/vmlinux-2ccbdf43.xz
kernel image: https://storage.googleapis.com/syzbot-assets/7a14f5d07f81/bzImage-2ccbdf43.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e7672270deddf60a67f4@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
6.10.0-rc3-syzkaller-00044-g2ccbdf43d5e7 #0 Not tainted
------------------------------------------------------
syz-executor.3/11664 is trying to acquire lock:
ffffffff8dd3aac0 (fs_reclaim){+.+.}-{0:0}, at: might_alloc include/linux/sched/mm.h:334 [inline]
ffffffff8dd3aac0 (fs_reclaim){+.+.}-{0:0}, at: slab_pre_alloc_hook mm/slub.c:3891 [inline]
ffffffff8dd3aac0 (fs_reclaim){+.+.}-{0:0}, at: slab_alloc_node mm/slub.c:3981 [inline]
ffffffff8dd3aac0 (fs_reclaim){+.+.}-{0:0}, at: __do_kmalloc_node mm/slub.c:4121 [inline]
ffffffff8dd3aac0 (fs_reclaim){+.+.}-{0:0}, at: __kmalloc_noprof+0xb5/0x420 mm/slub.c:4135

but task is already holding lock:
ffff888050abde48 (&jfs_ip->commit_mutex){+.+.}-{3:3}, at: jfs_set_acl+0x10f/0x330 fs/jfs/acl.c:107

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

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
       __do_sys_mkdir fs/namei.c:4174 [inline]
       __se_sys_mkdir fs/namei.c:4172 [inline]
       __ia32_sys_mkdir+0xf0/0x140 fs/namei.c:4172
       do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
       __do_fast_syscall_32+0x73/0x120 arch/x86/entry/common.c:386
       do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:411
       entry_SYSENTER_compat_after_hwframe+0x84/0x8e

-> #2
 (
&jfs_ip->rdwrlock
/1
){++++}-{3:3}
:
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

-> #1
 (&(imap->im_aglock[index])
){+.+.}-{3:3}
:
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

-> #0
 (fs_reclaim
){+.+.}-{0:0}
:
       check_prev_add kernel/locking/lockdep.c:3134 [inline]
       check_prevs_add kernel/locking/lockdep.c:3253 [inline]
       validate_chain kernel/locking/lockdep.c:3869 [inline]
       __lock_acquire+0x2478/0x3b30 kernel/locking/lockdep.c:5137
       lock_acquire kernel/locking/lockdep.c:5754 [inline]
       lock_acquire+0x1b1/0x560 kernel/locking/lockdep.c:5719
       __fs_reclaim_acquire mm/page_alloc.c:3801 [inline]
       fs_reclaim_acquire+0x102/0x160 mm/page_alloc.c:3815
       might_alloc include/linux/sched/mm.h:334 [inline]
       slab_pre_alloc_hook mm/slub.c:3891 [inline]
       slab_alloc_node mm/slub.c:3981 [inline]
       __do_kmalloc_node mm/slub.c:4121 [inline]
       __kmalloc_noprof+0xb5/0x420 mm/slub.c:4135
       kmalloc_noprof include/linux/slab.h:664 [inline]
       __jfs_set_acl+0xaa/0x1a0 fs/jfs/acl.c:80
       jfs_set_acl+0x14a/0x330 fs/jfs/acl.c:115
       set_posix_acl+0x25c/0x320 fs/posix_acl.c:955
       vfs_set_acl+0x53d/0x940 fs/posix_acl.c:1134
       do_set_acl+0xd9/0x1b0 fs/posix_acl.c:1279
       do_setxattr+0xeb/0x170 fs/xattr.c:626
       setxattr+0x15d/0x180 fs/xattr.c:652
       path_setxattr+0x179/0x1e0 fs/xattr.c:671
       __do_sys_lsetxattr fs/xattr.c:694 [inline]
       __se_sys_lsetxattr fs/xattr.c:690 [inline]
       __ia32_sys_lsetxattr+0xbd/0x160 fs/xattr.c:690
       do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
       __do_fast_syscall_32+0x73/0x120 arch/x86/entry/common.c:386
       do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:411
       entry_SYSENTER_compat_after_hwframe+0x84/0x8e

other info that might help us debug this:

Chain exists of:
  fs_reclaim --> &jfs_ip->rdwrlock/1 --> &jfs_ip->commit_mutex

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&jfs_ip->commit_mutex);
                               lock(&jfs_ip->rdwrlock/1);
                               lock(&jfs_ip->commit_mutex);
  lock(fs_reclaim);

 *** DEADLOCK ***

3 locks held by syz-executor.3/11664:
 #0: ffff8880297e0420 (sb_writers#18){.+.+}-{0:0}, at: path_setxattr+0xc3/0x1e0 fs/xattr.c:669
 #1: ffff888050abe200 (&type->i_mutex_dir_key#14){++++}-{3:3}, at: inode_lock include/linux/fs.h:791 [inline]
 #1: ffff888050abe200 (&type->i_mutex_dir_key#14){++++}-{3:3}, at: vfs_set_acl+0x342/0x940 fs/posix_acl.c:1115
 #2: ffff888050abde48 (&jfs_ip->commit_mutex){+.+.}-{3:3}, at: jfs_set_acl+0x10f/0x330 fs/jfs/acl.c:107

stack backtrace:
CPU: 1 PID: 11664 Comm: syz-executor.3 Not tainted 6.10.0-rc3-syzkaller-00044-g2ccbdf43d5e7 #0
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
 slab_pre_alloc_hook mm/slub.c:3891 [inline]
 slab_alloc_node mm/slub.c:3981 [inline]
 __do_kmalloc_node mm/slub.c:4121 [inline]
 __kmalloc_noprof+0xb5/0x420 mm/slub.c:4135
 kmalloc_noprof include/linux/slab.h:664 [inline]
 __jfs_set_acl+0xaa/0x1a0 fs/jfs/acl.c:80
 jfs_set_acl+0x14a/0x330 fs/jfs/acl.c:115
 set_posix_acl+0x25c/0x320 fs/posix_acl.c:955
 vfs_set_acl+0x53d/0x940 fs/posix_acl.c:1134
 do_set_acl+0xd9/0x1b0 fs/posix_acl.c:1279
 do_setxattr+0xeb/0x170 fs/xattr.c:626
 setxattr+0x15d/0x180 fs/xattr.c:652
 path_setxattr+0x179/0x1e0 fs/xattr.c:671
 __do_sys_lsetxattr fs/xattr.c:694 [inline]
 __se_sys_lsetxattr fs/xattr.c:690 [inline]
 __ia32_sys_lsetxattr+0xbd/0x160 fs/xattr.c:690
 do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
 __do_fast_syscall_32+0x73/0x120 arch/x86/entry/common.c:386
 do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:411
 entry_SYSENTER_compat_after_hwframe+0x84/0x8e
RIP: 0023:0xf7344579
Code: b8 01 10 06 03 74 b4 01 10 07 03 74 b0 01 10 08 03 74 d8 01 00 00 00 00 00 00 00 00 00 00 00 00 00 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 8d b4 26 00 00 00 00 8d b4 26 00 00 00 00
RSP: 002b:00000000f5f365ac EFLAGS: 00000292 ORIG_RAX: 00000000000000e3
RAX: ffffffffffffffda RBX: 0000000020000000 RCX: 0000000020000180
RDX: 0000000020000380 RSI: 0000000000000024 RDI: 0000000000000000
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
