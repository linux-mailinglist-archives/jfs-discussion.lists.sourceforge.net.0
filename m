Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A485F1F2C
	for <lists+jfs-discussion@lfdr.de>; Sat,  1 Oct 2022 22:14:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oeiry-00082U-Lf;
	Sat, 01 Oct 2022 20:13:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ZkI4YwkbAOsflmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oecfn-00069t-Im for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Oct 2022 13:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LSlTHf9hpUrOL2lZ2N5F7aIq3I9D+jsrHS8MaUdQy4c=; b=hz+LmaDO5w91tkHvASEnnPoLYg
 5yRb/szScXYqraDCfidez4eM1Uw2JzkfwENyNsIc/UajGKKyx8yONAicecgSQq8jadgBOEU1nT0ym
 c7o9OYZqcU2i9P5anWtTBNWMqQsKzZFwfNlTqxMCQpkFSnRmVa7ik2ZF+8uYRNAaqDBM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LSlTHf9hpUrOL2lZ2N5F7aIq3I9D+jsrHS8MaUdQy4c=; b=Y
 JWPcmcFTvgYNbexCudfxkSi1rrapW9n2HrtaloccqxEY9dCPD79Pjgk3Q2Elg2D8VG5tvA2VkEO5y
 BM4+BXvyeSBEikhXLIVVBckpow7JEh+0ycRjBcALP4yh1Lb8nHunxsS2SlV8VTpO9WbwONiCIIuE3
 ScbKfZbrSx5ERPlw=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oecfb-0005Tt-IO for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Oct 2022 13:36:47 +0000
Received: by mail-il1-f198.google.com with SMTP id
 r12-20020a92cd8c000000b002f32d0d9fceso5462114ilb.11
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 01 Oct 2022 06:36:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=LSlTHf9hpUrOL2lZ2N5F7aIq3I9D+jsrHS8MaUdQy4c=;
 b=nAh3ktNrrgMzLJtygxTZfKfS9jrMkU1GBVVQ1ulu4BMX0tcsiF3dntOs56TiudxpPS
 8oy/JbwlM6MqIo0OBNLievf02vn9dl0bEZ4dEz+Ngj06cecFqyf648gUqjXJVaPLmemd
 94pe+gb/cJhpDs/uLGHT1gF5dSVa7i9PYfsY/gbyQw4bDv/7B5C9RWDf1+bwzpGujMeg
 HT0mcZE3P3kuimwNYb2GJPVLerHDgMo/u7A7lWuhiV8JlF3JR2IQ+/oHaGQ9x3DfP3nU
 xEfOg5MNxkKE60+7/lr+fSa/fjIIOQTvcvNxp3ARXEoII/6uN71FdSrjgCCrKp1KaNac
 VctQ==
X-Gm-Message-State: ACrzQf3liqbE0sHr8d6yd8y+CvrJPnu6r2zOcEXU5kdc4tN0JjiSWWSn
 eCVviAqeOHL9rjvUiQPdkWuJ9mbukssfRiTjft47cnXlrHR8
X-Google-Smtp-Source: AMsMyM4+YKN6KZ42PVYmLs6ZIo4vgPcXqNHt6/+Z/oLYv04HS2c//Ya/EweYDuFGqV6xME+KdgZUUCkRcx9s4igZZKYdeEW6VNlN
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3729:b0:35a:837d:e324 with SMTP id
 k41-20020a056638372900b0035a837de324mr6985273jav.226.1664631398064; Sat, 01
 Oct 2022 06:36:38 -0700 (PDT)
Date: Sat, 01 Oct 2022 06:36:38 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000029f80705e9f933f9@google.com>
From: syzbot <syzbot+e6a47211665dce6af915@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: c194837ebb57
 Merge branch 'for-next/core', remote-tracking.. git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
X-Headers-End: 1oecfb-0005Tt-IO
X-Mailman-Approved-At: Sat, 01 Oct 2022 20:13:50 +0000
Subject: [Jfs-discussion] [syzbot] WARNING in dbAllocBits
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

HEAD commit:    c194837ebb57 Merge branch 'for-next/core', remote-tracking..
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=12e45ca8880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=15a770deac0c935a
dashboard link: https://syzkaller.appspot.com/bug?extid=e6a47211665dce6af915
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14632d40880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=134260ec880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/8d8ae425e7fa/disk-c194837e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c540d501ebe7/vmlinux-c194837e.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e6a47211665dce6af915@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
DEBUG_LOCKS_WARN_ON(__owner_task(owner) != get_current())
WARNING: CPU: 1 PID: 3069 at kernel/locking/mutex.c:918 __mutex_unlock_slowpath+0xd8/0x1cc kernel/locking/mutex.c:918
Modules linked in:
CPU: 1 PID: 3069 Comm: syz-executor273 Not tainted 6.0.0-rc6-syzkaller-17742-gc194837ebb57 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : __mutex_unlock_slowpath+0xd8/0x1cc kernel/locking/mutex.c:918
lr : __mutex_unlock_slowpath+0xd8/0x1cc kernel/locking/mutex.c:918
sp : ffff80000ff93670
x29: ffff80000ff93690 x28: ffff0000cd21e000 x27: 0000000000000001
x26: ffff80000d30c000 x25: ffff0000c68db500 x24: ffff80000ee2b000
x23: ffff80000cb54135 x22: ffff80000cb5415a x21: ffff80000cb4f56b
x20: ffff0000c68db4ff x19: ffff0000cb316450 x18: fffffffffffffff5
x17: ffff80000dd0b198 x16: 0000000000000000 x15: 0000000000000000
x14: 0000000000000000 x13: 0000000000000012 x12: ffff80000d5ef920
x11: ff808000081c1630 x10: 0000000000000000 x9 : b51a2818168f2500
x8 : b51a2818168f2500 x7 : 4e5241575f534b43 x6 : ffff800008195d30
x5 : 0000000000000000 x4 : 0000000000000001 x3 : 0000000000000000
x2 : 0000000000000000 x1 : 0000000100000000 x0 : 0000000000000039
Call trace:
 __mutex_unlock_slowpath+0xd8/0x1cc kernel/locking/mutex.c:918
 mutex_unlock+0x24/0x30 kernel/locking/mutex.c:543
 dbAllocBits+0x364/0x3b0 fs/jfs/jfs_dmap.c:2225
 dbAllocDmap+0x44/0xd0 fs/jfs/jfs_dmap.c:1999
 dbAllocNext+0x280/0x290 fs/jfs/jfs_dmap.c:1152
 dbAlloc+0x200/0x694 fs/jfs/jfs_dmap.c:786
 extBalloc+0xd0/0x368 fs/jfs/jfs_extent.c:321
 extAlloc+0x16c/0x384 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x1b4/0x3ec fs/jfs/inode.c:248
 __block_write_begin_int+0x240/0x95c fs/buffer.c:2006
 __block_write_begin fs/buffer.c:2056 [inline]
 block_write_begin+0x74/0x14c fs/buffer.c:2117
 jfs_write_begin+0x44/0x88 fs/jfs/inode.c:304
 generic_perform_write+0xf0/0x2cc mm/filemap.c:3738
 __generic_file_write_iter+0xd8/0x21c mm/filemap.c:3866
 generic_file_write_iter+0x6c/0x168 mm/filemap.c:3898
 call_write_iter include/linux/fs.h:2187 [inline]
 new_sync_write fs/read_write.c:491 [inline]
 vfs_write+0x2dc/0x46c fs/read_write.c:578
 ksys_write+0xb4/0x160 fs/read_write.c:631
 __do_sys_write fs/read_write.c:643 [inline]
 __se_sys_write fs/read_write.c:640 [inline]
 __arm64_sys_write+0x24/0x34 fs/read_write.c:640
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190
irq event stamp: 23765
hardirqs last  enabled at (23765): [<ffff80000bfcbcdc>] __raw_spin_unlock_irq include/linux/spinlock_api_smp.h:159 [inline]
hardirqs last  enabled at (23765): [<ffff80000bfcbcdc>] _raw_spin_unlock_irq+0x3c/0x70 kernel/locking/spinlock.c:202
hardirqs last disabled at (23764): [<ffff80000bfcbadc>] __raw_spin_lock_irq include/linux/spinlock_api_smp.h:117 [inline]
hardirqs last disabled at (23764): [<ffff80000bfcbadc>] _raw_spin_lock_irq+0x34/0x9c kernel/locking/spinlock.c:170
softirqs last  enabled at (21988): [<ffff8000080102e4>] _stext+0x2e4/0x37c
softirqs last disabled at (21653): [<ffff800008017c14>] ____do_softirq+0x14/0x20 arch/arm64/kernel/irq.c:79
---[ end trace 0000000000000000 ]---
Unable to handle kernel paging request at virtual address ffff80000d272a70
Mem abort info:
  ESR = 0x0000000096000047
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x07: level 3 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000047
  CM = 0, WnR = 1
swapper pgtable: 4k pages, 48-bit VAs, pgdp=00000001c566a000
[ffff80000d272a70] pgd=100000023ffff003, p4d=100000023ffff003, pud=100000023fffe003, pmd=100000023fffa003, pte=0000000000000000
Internal error: Oops: 0000000096000047 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 3069 Comm: syz-executor273 Tainted: G        W          6.0.0-rc6-syzkaller-17742-gc194837ebb57 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
pstate: 00400005 (nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : queued_spin_lock_slowpath+0x198/0x380 kernel/locking/qspinlock.c:474
lr : queued_spin_lock_slowpath+0x114/0x380 kernel/locking/qspinlock.c:405
sp : ffff80000ff935e0
x29: ffff80000ff935e0 x28: ffff0000cd21e000 x27: 0000000000000001
x26: ffff80000d30c000 x25: ffff0000c68db500 x24: ffff0001fefd0a40
x23: 0000000000000000 x22: ffff80000d30cf28 x21: ffff80000d272a40
x20: 0000000000000000 x19: ffff0000cb316458 x18: fffffffffffffff5
x17: ffff80000dd0b198 x16: 0000000000000000 x15: 0000000000000000
x14: 0000000000000000 x13: 000000000000ffff x12: 0000000000000000
x11: ffff80000d272a70 x10: 0000000000040000 x9 : ffff0001fefd0a48
x8 : ffff0001fefd0a40 x7 : 0000000000000000 x6 : ffff80000bfc55b8
x5 : 0000000000000000 x4 : 0000000000000001 x3 : 0000000000000000
x2 : 0000000000000001 x1 : ffff80000ce2689f x0 : 0000000000000001
Call trace:
 decode_tail kernel/locking/qspinlock.c:131 [inline]
 queued_spin_lock_slowpath+0x198/0x380 kernel/locking/qspinlock.c:471
 queued_spin_lock include/asm-generic/qspinlock.h:114 [inline]
 do_raw_spin_lock+0x10c/0x110 kernel/locking/spinlock_debug.c:115
 __raw_spin_lock include/linux/spinlock_api_smp.h:134 [inline]
 _raw_spin_lock+0x5c/0x6c kernel/locking/spinlock.c:154
 __mutex_unlock_slowpath+0x138/0x1cc kernel/locking/mutex.c:932
 mutex_unlock+0x24/0x30 kernel/locking/mutex.c:543
 dbAllocBits+0x364/0x3b0 fs/jfs/jfs_dmap.c:2225
 dbAllocDmap+0x44/0xd0 fs/jfs/jfs_dmap.c:1999
 dbAllocNext+0x280/0x290 fs/jfs/jfs_dmap.c:1152
 dbAlloc+0x200/0x694 fs/jfs/jfs_dmap.c:786
 extBalloc+0xd0/0x368 fs/jfs/jfs_extent.c:321
 extAlloc+0x16c/0x384 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x1b4/0x3ec fs/jfs/inode.c:248
 __block_write_begin_int+0x240/0x95c fs/buffer.c:2006
 __block_write_begin fs/buffer.c:2056 [inline]
 block_write_begin+0x74/0x14c fs/buffer.c:2117
 jfs_write_begin+0x44/0x88 fs/jfs/inode.c:304
 generic_perform_write+0xf0/0x2cc mm/filemap.c:3738
 __generic_file_write_iter+0xd8/0x21c mm/filemap.c:3866
 generic_file_write_iter+0x6c/0x168 mm/filemap.c:3898
 call_write_iter include/linux/fs.h:2187 [inline]
 new_sync_write fs/read_write.c:491 [inline]
 vfs_write+0x2dc/0x46c fs/read_write.c:578
 ksys_write+0xb4/0x160 fs/read_write.c:631
 __do_sys_write fs/read_write.c:643 [inline]
 __se_sys_write fs/read_write.c:640 [inline]
 __arm64_sys_write+0x24/0x34 fs/read_write.c:640
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190
Code: 8b2c4ecc f85f818c 1200056b 8b2b52ab (f82b6988) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	8b2c4ecc 	add	x12, x22, w12, uxtw #3
   4:	f85f818c 	ldur	x12, [x12, #-8]
   8:	1200056b 	and	w11, w11, #0x3
   c:	8b2b52ab 	add	x11, x21, w11, uxtw #4
* 10:	f82b6988 	str	x8, [x12, x11] <-- trapping instruction


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
