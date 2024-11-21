Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A309D4EE1
	for <lists+jfs-discussion@lfdr.de>; Thu, 21 Nov 2024 15:45:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tE8Qd-00034p-Uz;
	Thu, 21 Nov 2024 14:45:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ESU_ZwkbAJgKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tE68l-00008I-KW for jfs-discussion@lists.sourceforge.net;
 Thu, 21 Nov 2024 12:18:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vqex2r6AbG5ALIn5qBQF13FXINwV1XpbApxBY8K56yU=; b=huz3U8PpajHVB3Gj9hPjKP34Ip
 PY6UP/Hx7b4IQb42FZRYdS0sqd2j663n4/O19KEMQktHFI4tDRu+nqUVcGwoMzlfvE3/DQqL1jMvi
 lSDGzxVmazd4nbOr6XawqaVPcIe7wFoQTcx2WVSCKkZT0+BpYcXrSBBmu1+kd0TmNSbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vqex2r6AbG5ALIn5qBQF13FXINwV1XpbApxBY8K56yU=; b=L
 zUKYeeCNQwv42UV50UyFsqcIIaO9ivu51K+C9RfCZuxFHx7qrdio9NqlLXNNawB0tcZCnl2yAi34e
 d2atM2JOH9/r4IsvhDwX+IH2tvtB//gK/uQj1z0E/diIqxis4L0+eiN4sHC5SDiz0UBaR6LnElFbk
 kMjascJyPJBteJq8=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tE68k-00043X-Q5 for jfs-discussion@lists.sourceforge.net;
 Thu, 21 Nov 2024 12:18:31 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3a7932544c4so3791855ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 21 Nov 2024 04:18:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732191505; x=1732796305;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=vqex2r6AbG5ALIn5qBQF13FXINwV1XpbApxBY8K56yU=;
 b=lKd2ttZQbX7vf+aPw9HjY9uJCh+OlZcwA5VdwWx4jPSGw/ReKSuvT15razc5Gjd7pI
 AHL9qSCSPkQG66dj4vq8CS3JSy0GpbZzWUgTAbtYBCkPskPKaxjMgszCO8y1xCSoMLjl
 odz+0cVCflWbRAeEiS4CCIBnQ8KURXz9LBKKgm3IuiFLOq1L2aJ0gkPLbEOORs/hfwvi
 2bHwKIlXwBDv9Yn0L3mo/l88lKzI8kmmWT9hf8EPPZrd4NA6sEawQZPDzETAlOHYum2B
 tqteHFIuKtGkY8mxFWOVkmOKwnUzQropB2/pqJJulI5JVIq0ow+xqiTV1hmnWlQuyaHQ
 x/YQ==
X-Gm-Message-State: AOJu0Yy/CvvJJD5dhv6HGMQspOIrFnszj6r3f/K09PVdw9MDll4eNCfm
 pV4bb6rp16xwNkGkZhn5aLU5vHmCC6XSnNHF44OAFIBYJB1KLl9boBVpSorl8/hNiKv2jmnHnUg
 5GjsJ/o8sq+V8BKHs0hEGOPJUkv1spDbVg9jQQsWTAK5jaXMZK6N25lA=
X-Google-Smtp-Source: AGHT+IE0Tznq9rP7nboEkE+3mBayO4aZoUYu6RGrXil7Qk2ooBueLj7vo7BxEyzvSjpHqsHIzYlc8DHgJ9+rj+O+RpJ8PkfHKtAw
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3b87:b0:3a7:87f2:b010 with SMTP id
 e9e14a558f8ab-3a787f2b18fmr64875585ab.5.1732191505074; Thu, 21 Nov 2024
 04:18:25 -0800 (PST)
Date: Thu, 21 Nov 2024 04:18:25 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <673f2511.050a0220.3c9d61.016e.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 4a5df3796467
 Merge tag 'mm-hotfixes-stable-2024-11-16-15-3.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=17315378580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.198 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.198 listed in sa-accredit.habeas.com]
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.198 listed in psbl.surriel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1tE68k-00043X-Q5
X-Mailman-Approved-At: Thu, 21 Nov 2024 14:44:51 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] possible deadlock in diFree (2)
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
Reply-To: syzbot <syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    4a5df3796467 Merge tag 'mm-hotfixes-stable-2024-11-16-15-3..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=17315378580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=95b7d4b29182ed62
dashboard link: https://syzkaller.appspot.com/bug?extid=355da3b3a74881008e8f
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15d4db5f980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10bef130580000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-4a5df379.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/cb509a18129b/vmlinux-4a5df379.xz
kernel image: https://storage.googleapis.com/syzbot-assets/4a4deaeedf54/bzImage-4a5df379.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/041539d17a26/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com

ERROR: (device loop0): remounting filesystem as read-only
ERROR: (device loop0): duplicateIXtree: 
============================================
WARNING: possible recursive locking detected
6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0 Not tainted
--------------------------------------------
syz-executor301/5309 is trying to acquire lock:
ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889

but task is already holding lock:
ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630

other info that might help us debug this:
 Possible unsafe locking scenario:

       CPU0
       ----
  lock(&(imap->im_aglock[index]));
  lock(&(imap->im_aglock[index]));

 *** DEADLOCK ***

 May be due to missing lock nesting notation

5 locks held by syz-executor301/5309:
 #0: ffff8880422a4420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
 #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
 #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: filename_create+0x260/0x540 fs/namei.c:4026
 #2: ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
 #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2460 [inline]
 #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
 #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocAG+0x4b7/0x1e50 fs/jfs/jfs_imap.c:1669
 #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2477 [inline]
 #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
 #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocAG+0x869/0x1e50 fs/jfs/jfs_imap.c:1669

stack backtrace:
CPU: 0 UID: 0 PID: 5309 Comm: syz-executor301 Not tainted 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_deadlock_bug+0x483/0x620 kernel/locking/lockdep.c:3037
 check_deadlock kernel/locking/lockdep.c:3089 [inline]
 validate_chain+0x15e2/0x5920 kernel/locking/lockdep.c:3891
 __lock_acquire+0x1384/0x2050 kernel/locking/lockdep.c:5202
 lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5825
 __mutex_lock_common kernel/locking/mutex.c:608 [inline]
 __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
 diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
 jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
 evict+0x4e8/0x9b0 fs/inode.c:725
 diFreeSpecial fs/jfs/jfs_imap.c:552 [inline]
 duplicateIXtree+0x3c6/0x550 fs/jfs/jfs_imap.c:3022
 diNewIAG fs/jfs/jfs_imap.c:2597 [inline]
 diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
 diAllocAG+0x17dc/0x1e50 fs/jfs/jfs_imap.c:1669
 diAlloc+0x1d2/0x1630 fs/jfs/jfs_imap.c:1590
 ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x1c5/0xba0 fs/jfs/namei.c:225
 vfs_mkdir+0x2f9/0x4f0 fs/namei.c:4257
 do_mkdirat+0x264/0x3a0 fs/namei.c:4280
 __do_sys_mkdirat fs/namei.c:4295 [inline]
 __se_sys_mkdirat fs/namei.c:4293 [inline]
 __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:4293
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fc96b45f879
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffca87793b8 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 00007ffca8779588 RCX: 00007fc96b45f879
RDX: 0000000000000000 RSI: 00000000200005c0 RDI: 00000000ffffff9c
RBP: 00007fc96b4d9610 R08: 00007ffca8779588 R09: 00007ffca8779588
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffca8779578 R14: 0000000000000001 R15: 0000000000000001
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

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
