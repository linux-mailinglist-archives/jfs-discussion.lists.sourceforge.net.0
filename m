Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0F397EC96
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Sep 2024 15:51:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ssjTT-0000HM-V8;
	Mon, 23 Sep 2024 13:51:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ngXxZgkbAKsdjkVLWWPcLaaTO.RZZRWPfdPcNZYePYe.NZX@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sscEO-0003I1-Ua for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Sep 2024 06:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xh57jcqwsNfQFFP8jKv5EPTay9rC/zkzDfWjGSosjtc=; b=YEtVl8Uw6afMeauJSYZCOfhf4Y
 RzAf9oBiOlhSqBTakqbEshDJB1WwlqMBg6wDr9vubK6xP+saBG/pd/RL3tvltJcLwItth7YZBlBAl
 rZJz+mgGXlqbj1hd672ohNJhgFkAw6Fx7oq/Z/OnNk/hO1QV0uzXf5IIw4n/MWPIgGoE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Xh57jcqwsNfQFFP8jKv5EPTay9rC/zkzDfWjGSosjtc=; b=H
 K44FOImNICnFApnv+mJnGZp9JIKo8d/yU3qvA/AoHcAev13QNYpB3UI9CzUvLiyeXHZZtD3iUl5mO
 1NZoLmwZYZ/6Y2z3OvUVFc0y7Sv8OG+F13+bDSRWxcrcIaQrZRTAdb4D4S46GzZbqrCSTba94TmYZ
 WaA2FWUVksmoY8es=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sscEO-0008ON-1r for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Sep 2024 06:07:32 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-39f5328fd5eso35299025ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 22 Sep 2024 23:07:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727071646; x=1727676446;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Xh57jcqwsNfQFFP8jKv5EPTay9rC/zkzDfWjGSosjtc=;
 b=Ci8M77PKqEvnRr0cSBTgtlgj+G1Vg7h3ixvnHdwuGiFqFoAoyqUB3B43wAbM/iv2GF
 omqm3bfF21jLtYqsqfI7qbhLjQk47rkTABWYwBzBqCqIA12oW+NmQpRrevypl++v4pFj
 qPWJIR9x3VRF+c0nEG7vZv1gjZf3/UUvwjG+n9cKF6ik5JZeJAt1HVD0Hgb1oQdq8nBb
 mBFYEPkm5Tyf63n8zBu7bOOqD+zgrvf5J6a7eveHBDESb9S+YAQ0Ny35GL90G69SbZp1
 WaP+p9AVlpSSTISBvye6fKgxRMFT6FUzIBXLsnQxlyYTRTxiI+4Iky9tTWq9/4dfabHv
 bpOQ==
X-Gm-Message-State: AOJu0Yw77p3s+hnXWMUrshcuO4Njgyi9mnKcsY2oWcl7NtLK1KRwQGbe
 9tcp6N4Cyknog/+zFhww1AVYEZrFQr3NJP4ZmYCqpIBHAH6HPpPKm2rCs3JBHQvuKp7tNpJAum7
 aaLsFXENly9+a4nGSte/9ZmHwgtEVeCxmblT8lQM/NEIMhHaLXIK+Dzg=
X-Google-Smtp-Source: AGHT+IFUJyccPwsx2a1Dl+/NJ+Sb0BlTTzm487aEsEvoTv4fLhXg9/BSGoT2yRRRZGPJJOm1EUe2XhsaFT+3iVmnmpnYS2jBYIvc
MIME-Version: 1.0
X-Received: by 2002:a92:c269:0:b0:3a0:a08a:a0d3 with SMTP id
 e9e14a558f8ab-3a0c9d6f25emr71948075ab.18.1727071646261; Sun, 22 Sep 2024
 23:07:26 -0700 (PDT)
Date: Sun, 22 Sep 2024 23:07:26 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <66f1059e.050a0220.c23dd.0007.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 4a39ac5b7d62
 Merge tag 'random-6.12-rc1-for-linus' of git:.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=14600ca9980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (-0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.9 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1sscEO-0008ON-1r
X-Mailman-Approved-At: Mon, 23 Sep 2024 13:51:33 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] WARNING: locking bug in
 release_metapage
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
Reply-To: syzbot <syzbot+1a1e162a53d52033318c@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    4a39ac5b7d62 Merge tag 'random-6.12-rc1-for-linus' of git:..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14600ca9980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=dd14c10ec1b6af25
dashboard link: https://syzkaller.appspot.com/bug?extid=1a1e162a53d52033318c
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-4a39ac5b.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/e77a3b8ac098/vmlinux-4a39ac5b.xz
kernel image: https://storage.googleapis.com/syzbot-assets/f8ee7a5fea46/bzImage-4a39ac5b.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1a1e162a53d52033318c@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
ERROR: (device loop0): xtSearch: XT_GETPAGE: xtree page corrupt
ERROR: (device loop0): remounting filesystem as read-only
xtLookup: xtSearch returned -5
------------[ cut here ]------------
DEBUG_LOCKS_WARN_ON(1)
WARNING: CPU: 0 PID: 5119 at kernel/locking/lockdep.c:232 hlock_class kernel/locking/lockdep.c:232 [inline]
WARNING: CPU: 0 PID: 5119 at kernel/locking/lockdep.c:232 check_wait_context kernel/locking/lockdep.c:4823 [inline]
WARNING: CPU: 0 PID: 5119 at kernel/locking/lockdep.c:232 __lock_acquire+0x58c/0x2050 kernel/locking/lockdep.c:5149
Modules linked in:
CPU: 0 UID: 0 PID: 5119 Comm: syz.0.0 Not tainted 6.11.0-syzkaller-05319-g4a39ac5b7d62 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:hlock_class kernel/locking/lockdep.c:232 [inline]
RIP: 0010:check_wait_context kernel/locking/lockdep.c:4823 [inline]
RIP: 0010:__lock_acquire+0x58c/0x2050 kernel/locking/lockdep.c:5149
Code: 00 00 83 3d 75 3a ac 0e 00 75 23 90 48 c7 c7 a0 d7 0a 8c 48 c7 c6 40 da 0a 8c e8 1f cc e5 ff 48 ba 00 00 00 00 00 fc ff df 90 <0f> 0b 90 90 90 31 db 48 81 c3 c4 00 00 00 48 89 d8 48 c1 e8 03 0f
RSP: 0000:ffffc90002e2ef30 EFLAGS: 00010046
RAX: 265537614b058400 RBX: 0000000000000b90 RCX: 0000000000040000
RDX: dffffc0000000000 RSI: 0000000000020741 RDI: 0000000000020742
RBP: 000000000000000f R08: ffffffff8155c052 R09: 1ffff11003fc519a
R10: dffffc0000000000 R11: ffffed1003fc519b R12: ffff88801dd1c880
R13: 0000000000000b90 R14: 1ffff11003ba3a7f R15: ffff88801dd1d3f8
FS:  00007fdc842196c0(0000) GS:ffff88801fe00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fdc8350c538 CR3: 000000003da9a000 CR4: 0000000000350ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5822
 __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:110 [inline]
 _raw_spin_lock_irqsave+0xd5/0x120 kernel/locking/spinlock.c:162
 __wake_up_common_lock+0x25/0x1e0 kernel/sched/wait.c:105
 unlock_metapage fs/jfs/jfs_metapage.c:39 [inline]
 release_metapage+0xb2/0x960 fs/jfs/jfs_metapage.c:763
 xtTruncate+0x1006/0x3270
 jfs_truncate_nolock+0x2e4/0x390 fs/jfs/inode.c:373
 jfs_truncate+0xcb/0x140 fs/jfs/inode.c:412
 jfs_setattr+0x526/0x780 fs/jfs/file.c:119
 notify_change+0xbca/0xe90 fs/attr.c:503
 do_truncate+0x220/0x310 fs/open.c:65
 handle_truncate fs/namei.c:3395 [inline]
 do_open fs/namei.c:3778 [inline]
 path_openat+0x2e1e/0x3590 fs/namei.c:3933
 do_filp_open+0x235/0x490 fs/namei.c:3960
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1415
 do_sys_open fs/open.c:1430 [inline]
 __do_sys_openat fs/open.c:1446 [inline]
 __se_sys_openat fs/open.c:1441 [inline]
 __x64_sys_openat+0x247/0x2a0 fs/open.c:1441
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fdc8337def9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fdc84219038 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 00007fdc83535f80 RCX: 00007fdc8337def9
RDX: 0000000000000200 RSI: 00000000200002c0 RDI: ffffffffffffff9c
RBP: 00007fdc833f0b76 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007fdc83535f80 R15: 00007fff54a45628
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
