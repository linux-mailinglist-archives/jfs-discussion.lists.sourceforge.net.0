Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C54BE8AFCEA
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 Apr 2024 01:54:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rzPxd-0006uw-7f;
	Tue, 23 Apr 2024 23:54:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ejooZgkbAMc5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rzOvF-00010Z-Jz for jfs-discussion@lists.sourceforge.net;
 Tue, 23 Apr 2024 22:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kA1i+l7AiP+RbSfEXApCJqaWV5VRbOAhlIJeb1uZfJA=; b=EK3mBvBYvvj9YIC/jPKV5AYFnG
 UM24mMfgycJhMtmXCgg/pDxBgULlsxVH+Y8FERcHLQMvWWVChAK9FEkOp5ut9WhHpzEsu9R1ir25O
 g4Vcpry8KDNrrNY6jVD7ykWhVyRT5Jk9WEXaFxOoS1OiEuxj4d2zOTz3QWXrU49d6x8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kA1i+l7AiP+RbSfEXApCJqaWV5VRbOAhlIJeb1uZfJA=; b=L
 anel8QoQ61zpyHO8b7U0JgM414OGt1+Zpq7m8tjBQ9olkSi5cvDm4ljkKKYv/QBBJ64xTV/QG/mJ/
 7QlfkX6jKcsQYp4Q69PCenXxoeZDv+GQ6S/XOFHcBkdpYlBVhXF2T2WSit+8pF/p7t89mXbbGYsvx
 Kv1HfGB2sLPfSV4s=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rzOvE-0006gg-LO for jfs-discussion@lists.sourceforge.net;
 Tue, 23 Apr 2024 22:47:34 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-36b2f4881bcso65805825ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 23 Apr 2024 15:47:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713912442; x=1714517242;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kA1i+l7AiP+RbSfEXApCJqaWV5VRbOAhlIJeb1uZfJA=;
 b=qs9oCCep0tLeC6jLsbAWDfbikLCpeylrUX42h2MXrQuqvt8RT38C6R+hi4bzknyj/p
 viibXv5kPr1mJUURkmgWxbu2PNhgGjq874dlYysx1I5iY4RLD/UaPAjJ+4V9NzG1NmMq
 uSIHBIvYek5RqwQsuXBCnFcb0Be7hAFtuLFsuKDrik5D/5EahizOJ5R5RLDZmuDPa1qx
 Bkr+Fn2z9ANpx4Gr5LETCjgcFQdppwGYGLUXQmOWlp+Scd3kH/zxDps2rInElZyelD38
 rFlboaBNIztw6FdqIhr+F8oFOw33UqZIq3jmuXeHRdmiSonxcp/OB3Y4QdnPPR5p2j+Q
 RalQ==
X-Gm-Message-State: AOJu0YycLy5q4fKr/QOc9N9i01s+HgBTtVMQdORb/h9nrDMU+w8gQxsq
 vkeM/JlEiyZLpSWFjHZjhY6Jr7Xjy4ecYnVWdHUVAIrMXvX0730OkgTELbPWZDVH6fy/A5Dpm2S
 iBbElWo99FFe5qAxCJOShdrGri8MKYCEG5qs4oziGRYldjCvZcYw/q1s=
X-Google-Smtp-Source: AGHT+IFq8e9+pTvoLr+2TuEZG8n+T/tcpGmFQUQqACgGhgEExB3Rn75ch7nym0BkhEXsDbqpn+Gh5fU6gkvzASsjbnvm5ys4LacU
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a0a:b0:36a:fe5f:732c with SMTP id
 s10-20020a056e021a0a00b0036afe5f732cmr98305ild.5.1713912442622; Tue, 23 Apr
 2024 15:47:22 -0700 (PDT)
Date: Tue, 23 Apr 2024 15:47:22 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000051a7680616cb5632@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: dbe0a7be2838
 Merge tag 'thermal-6.9-rc5' of git://git.kern.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=11253abf180000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1rzOvE-0006gg-LO
X-Mailman-Approved-At: Tue, 23 Apr 2024 23:54:03 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] possible deadlock in jfs_mount_rw
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
Reply-To: syzbot <syzbot+1bd2671092cc9e4d4fef@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    dbe0a7be2838 Merge tag 'thermal-6.9-rc5' of git://git.kern..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11253abf180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2dc5adfa93a8cfac
dashboard link: https://syzkaller.appspot.com/bug?extid=1bd2671092cc9e4d4fef
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-dbe0a7be.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/7a1028fc6c27/vmlinux-dbe0a7be.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d129fb5bb25f/bzImage-dbe0a7be.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1bd2671092cc9e4d4fef@syzkaller.appspotmail.com

 ... Log Wrap ... Log Wrap ... Log Wrap ...
 ... Log Wrap ... Log Wrap ... Log Wrap ...
======================================================
WARNING: possible circular locking dependency detected
6.9.0-rc4-syzkaller-00164-gdbe0a7be2838 #0 Not tainted
------------------------------------------------------
syz-executor.2/8572 is trying to acquire lock:
ffffffff8d9373c0 (fs_reclaim){+.+.}-{0:0}, at: might_alloc include/linux/sched/mm.h:312 [inline]
ffffffff8d9373c0 (fs_reclaim){+.+.}-{0:0}, at: prepare_alloc_pages.constprop.0+0x155/0x560 mm/page_alloc.c:4346

but task is already holding lock:
ffff8880282e2638 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: jfs_mount_rw+0x1eb/0x700 fs/jfs/jfs_mount.c:238

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #2 (&jfs_ip->rdwrlock/1){++++}-{3:3}:
       down_read_nested+0x9e/0x330 kernel/locking/rwsem.c:1651
       diAlloc+0x3ea/0x1a70 fs/jfs/jfs_imap.c:1385
       ialloc+0x84/0x9e0 fs/jfs/jfs_inode.c:56
       jfs_symlink+0x277/0x1140 fs/jfs/namei.c:917
       vfs_symlink fs/namei.c:4481 [inline]
       vfs_symlink+0x3e8/0x630 fs/namei.c:4465
       do_symlinkat+0x263/0x310 fs/namei.c:4507
       __do_sys_symlinkat fs/namei.c:4523 [inline]
       __se_sys_symlinkat fs/namei.c:4520 [inline]
       __ia32_sys_symlinkat+0x97/0xc0 fs/namei.c:4520
       do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
       __do_fast_syscall_32+0x75/0x120 arch/x86/entry/common.c:321
       do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:346
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

-> #0 (fs_reclaim){+.+.}-{0:0}:
       check_prev_add kernel/locking/lockdep.c:3134 [inline]
       check_prevs_add kernel/locking/lockdep.c:3253 [inline]
       validate_chain kernel/locking/lockdep.c:3869 [inline]
       __lock_acquire+0x2478/0x3b30 kernel/locking/lockdep.c:5137
       lock_acquire kernel/locking/lockdep.c:5754 [inline]
       lock_acquire+0x1b1/0x560 kernel/locking/lockdep.c:5719
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

other info that might help us debug this:

Chain exists of:
  fs_reclaim --> &(imap->im_aglock[index]) --> &jfs_ip->rdwrlock/1

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&jfs_ip->rdwrlock/1);
                               lock(&(imap->im_aglock[index]));
                               lock(&jfs_ip->rdwrlock/1);
  lock(fs_reclaim);

 *** DEADLOCK ***

3 locks held by syz-executor.2/8572:
 #0: ffff8880264b1c70 (&fc->uapi_mutex){+.+.}-{3:3}, at: __do_sys_fsconfig+0x7d4/0xb90 fs/fsopen.c:474
 #1: ffff888015ff40e0 (&type->s_umount_key#67){++++}-{3:3}, at: vfs_cmd_reconfigure fs/fsopen.c:266 [inline]
 #1: ffff888015ff40e0 (&type->s_umount_key#67){++++}-{3:3}, at: vfs_fsconfig_locked fs/fsopen.c:296 [inline]
 #1: ffff888015ff40e0 (&type->s_umount_key#67){++++}-{3:3}, at: __do_sys_fsconfig+0x987/0xb90 fs/fsopen.c:476
 #2: ffff8880282e2638 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: jfs_mount_rw+0x1eb/0x700 fs/jfs/jfs_mount.c:238

stack backtrace:
CPU: 3 PID: 8572 Comm: syz-executor.2 Not tainted 6.9.0-rc4-syzkaller-00164-gdbe0a7be2838 #0
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
RIP: 0023:0xf7324579
Code: b8 01 10 06 03 74 b4 01 10 07 03 74 b0 01 10 08 03 74 d8 01 00 00 00 00 00 00 00 00 00 00 00 00 00 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 8d b4 26 00 00 00 00 8d b4 26 00 00 00 00
RSP: 002b:00000000f5f165ac EFLAGS: 00000292 ORIG_RAX: 00000000000001af
RAX: ffffffffffffffda RBX: 0000000000000005 RCX: 0000000000000007
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000292 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>

 ... Log Wrap ... Log Wrap ... Log Wrap ...

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
