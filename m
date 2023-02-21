Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E39D169F83B
	for <lists+jfs-discussion@lfdr.de>; Wed, 22 Feb 2023 16:40:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pUrE9-0002A1-Og;
	Wed, 22 Feb 2023 15:40:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3XhH1YwkbAHsrxyjZkkdqZoohc.fnnfkdtrdqbnmsdms.bnl@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pUXeI-0000i7-Fm for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Feb 2023 18:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WQpqzGTBynu+rvQ/MEygyGWVr0xVOZ6kPbs3MLS8FCQ=; b=idXuVl0bBX/13ZIr5lxFjx/KzK
 1Il2dXczeHtH8TdTsf5/FWwRYam4nIATB0RMq7UUjFGl0bhnwAKGPIOsyxlIRLbLf6tp5Ar2yicdU
 sXhe4XP7rpdUEPGbgiwlbctmoxc5hdEz53Yo1mjoCuhmh260HY47WU9yvBT42U+wdLw4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WQpqzGTBynu+rvQ/MEygyGWVr0xVOZ6kPbs3MLS8FCQ=; b=R
 lYFcY/eIf995fCenTQDawUDw4Jiowe2LCVce6wX1ac9WyUaS9OlbRXjeHAwRuGp9ErnvjgibyKZRH
 j6zzE0qxoS0lBK3x70lQUM6HbLtcyMszpWyOJoniRTs/pQvQtTVH10oKIt4mF0rhIxkCQsYk74Taa
 mdZaWhMCygULJNiE=;
Received: from mail-io1-f79.google.com ([209.85.166.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pUXeF-0004ax-3O for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Feb 2023 18:45:57 +0000
Received: by mail-io1-f79.google.com with SMTP id
 i70-20020a6b3b49000000b0074c7f0b085dso1767537ioa.22
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 21 Feb 2023 10:45:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WQpqzGTBynu+rvQ/MEygyGWVr0xVOZ6kPbs3MLS8FCQ=;
 b=kpriXmkyj1gGhkJidqkI3HAdAcvn/uwhpzR1yjAfxPDf+AAix2foP++iVL78ni2DwO
 UU6r+kJpAPyLJGExVXf+BdyQBaZ5GdqTB+ZSgE4IwaaKlggo0D+xYrnB6oN7/uEpZjE9
 uDx6mBeHU2Sw0JQkLSFw9H9WrUoi5qLJn1233xoc3JDc18HUU6cepMRy0Xy47B4nutNL
 zZZOEasdWRIlUR7QHV14QqM6WRTuFgHtGlyj0GDcH06w6C5uDggKSVtXL0yT5mw0LZy9
 z5OTYe2sccwYpnpp2aAlVUPYWLxjB7ozX9vrjiWDMrNiXu30Avn108sJr4Po96sMi5NR
 qM1w==
X-Gm-Message-State: AO0yUKUIJeruxQkcz4om/3LfkuxOFdSAV/KCjcsiCBDRQ+yHtNg5qGiz
 liL41SoSC5WecJXLKbq+xxhX92A3vLLo145G3r8ko3zaXgDHFldipw==
X-Google-Smtp-Source: AK7set/MmffHVdX5wtEIZ339V/IlKNPhhcEqZTUw4Hwz6fGkZUHg9WmqRtHRZaBmf/+BrcRqhInY+kLv0dad7EKLB3nSw8WgiCJa
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:8aa:b0:314:1659:8c10 with SMTP id
 a10-20020a056e0208aa00b0031416598c10mr1291557ilt.2.1677005150177; Tue, 21 Feb
 2023 10:45:50 -0800 (PST)
Date: Tue, 21 Feb 2023 10:45:50 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000043527d05f53a3082@google.com>
From: syzbot <syzbot+acc006db65c7fd01fc4a@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 2d3827b3f393
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.79 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.79 listed in list.dnswl.org]
X-Headers-End: 1pUXeF-0004ax-3O
X-Mailman-Approved-At: Wed, 22 Feb 2023 15:40:16 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] WARNING in diFree
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    2d3827b3f393 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=16b988f7480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=606ed7eeab569393
dashboard link: https://syzkaller.appspot.com/bug?extid=acc006db65c7fd01fc4a
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/fd94d68ff17d/disk-2d3827b3.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f304fbef0773/vmlinux-2d3827b3.xz
kernel image: https://storage.googleapis.com/syzbot-assets/74eb318f51b0/Image-2d3827b3.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+acc006db65c7fd01fc4a@syzkaller.appspotmail.com

loop5: detected capacity change from 0 to 14901
jfs_mount: diMount failed w/rc = -5
------------[ cut here ]------------
DEBUG_LOCKS_WARN_ON(lock->magic != lock)
WARNING: CPU: 0 PID: 28676 at kernel/locking/mutex.c:582 __mutex_lock_common+0x504/0xf64 kernel/locking/mutex.c:582
Modules linked in:
CPU: 0 PID: 28676 Comm: syz-executor.5 Not tainted 6.2.0-rc7-syzkaller-17907-g2d3827b3f393 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/21/2023
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : __mutex_lock_common+0x504/0xf64 kernel/locking/mutex.c:582
lr : __mutex_lock_common+0x504/0xf64 kernel/locking/mutex.c:582
sp : ffff800012f3b7b0
x29: ffff800012f3b820 x28: ffff80000eeb4000 x27: 0000000000000000
x26: 0000000000000000 x25: 0000000000000000 x24: 0000000000000002
x23: ffff800008d0521c x22: 0000000000000000 x21: 0000000000000000
x20: 0000000000000000 x19: ffff0001217888b8 x18: ffff80000bfae9bc
x17: 0000000000000000 x16: 0000000000000000 x15: 0000000000000000
x14: 0000000000000000 x13: 0000000000000012 x12: 0000000000040000
x11: 0000000000014082 x10: ffff80001dc69000 x9 : 1b90871972769000
x8 : 1b90871972769000 x7 : 4e5241575f534b43 x6 : ffff80000bf650d4
x5 : 0000000000000000 x4 : 0000000000000001 x3 : 0000000000000000
x2 : 0000000000000000 x1 : 0000000100000000 x0 : 0000000000000028
Call trace:
 __mutex_lock_common+0x504/0xf64 kernel/locking/mutex.c:582
 __mutex_lock kernel/locking/mutex.c:747 [inline]
 mutex_lock_nested+0x38/0x44 kernel/locking/mutex.c:799
 diFree+0x9c/0xd10 fs/jfs/jfs_imap.c:885
 jfs_evict_inode+0x178/0x1f0 fs/jfs/inode.c:156
 evict+0xf0/0x338 fs/inode.c:664
 iput_final fs/inode.c:1747 [inline]
 iput+0x4d8/0x53c fs/inode.c:1773
 diFreeSpecial+0x44/0x8c fs/jfs/jfs_imap.c:548
 jfs_mount+0x3d0/0x468 fs/jfs/jfs_mount.c:203
 jfs_fill_super+0x188/0x454 fs/jfs/super.c:556
 mount_bdev+0x1b8/0x210 fs/super.c:1359
 jfs_do_mount+0x44/0x58 fs/jfs/super.c:670
 legacy_get_tree+0x30/0x74 fs/fs_context.c:610
 vfs_get_tree+0x40/0x140 fs/super.c:1489
 do_new_mount+0x1dc/0x4e4 fs/namespace.c:3145
 path_mount+0x348/0x86c fs/namespace.c:3475
 do_mount fs/namespace.c:3488 [inline]
 __do_sys_mount fs/namespace.c:3697 [inline]
 __se_sys_mount fs/namespace.c:3674 [inline]
 __arm64_sys_mount+0x2c4/0x3c4 fs/namespace.c:3674
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall+0x64/0x178 arch/arm64/kernel/syscall.c:52
 el0_svc_common+0xbc/0x180 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x110 arch/arm64/kernel/syscall.c:193
 el0_svc+0x58/0x14c arch/arm64/kernel/entry-common.c:637
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:591
irq event stamp: 32781
hardirqs last  enabled at (32781): [<ffff80000bf6aafc>] __raw_spin_unlock_irqrestore include/linux/spinlock_api_smp.h:151 [inline]
hardirqs last  enabled at (32781): [<ffff80000bf6aafc>] _raw_spin_unlock_irqrestore+0x44/0x84 kernel/locking/spinlock.c:194
hardirqs last disabled at (32780): [<ffff80000bf6a910>] __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:108 [inline]
hardirqs last disabled at (32780): [<ffff80000bf6a910>] _raw_spin_lock_irqsave+0x2c/0x88 kernel/locking/spinlock.c:162
softirqs last  enabled at (32158): [<ffff80000801c878>] local_bh_enable+0x10/0x34 include/linux/bottom_half.h:32
softirqs last disabled at (32156): [<ffff80000801c844>] local_bh_disable+0x10/0x34 include/linux/bottom_half.h:19
---[ end trace 0000000000000000 ]---
Unable to handle kernel NULL pointer dereference at virtual address 0000000000000028
Mem abort info:
  ESR = 0x0000000096000006
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x06: level 2 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000006
  CM = 0, WnR = 0
user pgtable: 4k pages, 48-bit VAs, pgdp=000000015c65c000
[0000000000000028] pgd=080000016f935003, p4d=080000016f935003, pud=080000016bb6d003, pmd=0000000000000000
Internal error: Oops: 0000000096000006 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 28676 Comm: syz-executor.5 Tainted: G        W          6.2.0-rc7-syzkaller-17907-g2d3827b3f393 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/21/2023
pstate: 40400005 (nZcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : diIAGRead fs/jfs/jfs_imap.c:2659 [inline]
pc : diFree+0xc0/0xd10 fs/jfs/jfs_imap.c:894
lr : diFree+0xac/0xd10 fs/jfs/jfs_imap.c:890
sp : ffff800012f3b890
x29: ffff800012f3b980 x28: ffff80000d369360 x27: 0000000000000000
x26: 0000000000000002 x25: ffff000110f3c708 x24: ffff000110f39e88
x23: ffff000110f3ca70 x22: ffff000121788000 x21: 0000000000000000
x20: ffff00012cd66b00 x19: ffff0001217888b8 x18: ffff80000bfae9bc
x17: 0000000000000000 x16: 0000000000000000 x15: 0000000000000000
x14: 0000000000000000 x13: 0000000000000012 x12: 0000000000040000
x11: 0000000000014082 x10: ffff80000d369360 x9 : 0000000000000001
x8 : ffff0000c6889a01 x7 : 4e5241575f534b43 x6 : ffff800008d0522c
x5 : 0000000000000000 x4 : 0000000000000000 x3 : 0000000000000000
x2 : 0000000000001000 x1 : 0000000000000002 x0 : 0000000000000000
Call trace:
 diIAGRead fs/jfs/jfs_imap.c:2662 [inline]
 diFree+0xc0/0xd10 fs/jfs/jfs_imap.c:894
 jfs_evict_inode+0x178/0x1f0 fs/jfs/inode.c:156
 evict+0xf0/0x338 fs/inode.c:664
 iput_final fs/inode.c:1747 [inline]
 iput+0x4d8/0x53c fs/inode.c:1773
 diFreeSpecial+0x44/0x8c fs/jfs/jfs_imap.c:548
 jfs_mount+0x3d0/0x468 fs/jfs/jfs_mount.c:203
 jfs_fill_super+0x188/0x454 fs/jfs/super.c:556
 mount_bdev+0x1b8/0x210 fs/super.c:1359
 jfs_do_mount+0x44/0x58 fs/jfs/super.c:670
 legacy_get_tree+0x30/0x74 fs/fs_context.c:610
 vfs_get_tree+0x40/0x140 fs/super.c:1489
 do_new_mount+0x1dc/0x4e4 fs/namespace.c:3145
 path_mount+0x348/0x86c fs/namespace.c:3475
 do_mount fs/namespace.c:3488 [inline]
 __do_sys_mount fs/namespace.c:3697 [inline]
 __se_sys_mount fs/namespace.c:3674 [inline]
 __arm64_sys_mount+0x2c4/0x3c4 fs/namespace.c:3674
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall+0x64/0x178 arch/arm64/kernel/syscall.c:52
 el0_svc_common+0xbc/0x180 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x110 arch/arm64/kernel/syscall.c:193
 el0_svc+0x58/0x14c arch/arm64/kernel/entry-common.c:637
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:591
Code: 110006a9 52820002 2a1f03e3 aa1f03e4 (f9401408) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	110006a9 	add	w9, w21, #0x1
   4:	52820002 	mov	w2, #0x1000                	// #4096
   8:	2a1f03e3 	mov	w3, wzr
   c:	aa1f03e4 	mov	x4, xzr
* 10:	f9401408 	ldr	x8, [x0, #40] <-- trapping instruction


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
