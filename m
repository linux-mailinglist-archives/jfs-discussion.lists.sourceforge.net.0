Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0592F9E2037
	for <lists+jfs-discussion@lfdr.de>; Tue,  3 Dec 2024 15:55:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tIUJG-0006VJ-SS;
	Tue, 03 Dec 2024 14:55:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3zoJOZwkbAE89FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tIK7O-000706-EW for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Dec 2024 04:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fwmeBxmUs1A9YhSIcqHuG1REkzy7JVBLgQ5Q7j2lhfY=; b=URbKf7v+siKrAPHVluHKT5aCPD
 GTyrPWxx8hwVt11siC1bndGuuWiDwjmeEfeqkS5f/OxVXP/55Ek1uDPOpjIlPcvsZMglsx6+LhTJ9
 bnrfNjPimL7e1MXoCn++8VB8RzR6gNLfciv99TwHiuHSmXlTQ3RyWvIskoyO5qwDyNds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fwmeBxmUs1A9YhSIcqHuG1REkzy7JVBLgQ5Q7j2lhfY=; b=W
 cEv19Aqa2rRGAhfYKKcUrGCVxppgnSbZYhcvS8KMuKSl0qz9YRmBAGEKKsf2Z1DihkBoDQW3XhL0M
 EnsU2Pl9G2C6h3HLqOhjDczrYbukAe4GiyVw4h2huY4s2V4RpYUFKChq9R2hvX7Heg+AC8ZAe0Etk
 WR8TR8QE7+w0DFic=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tIK7N-0001R4-Ea for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Dec 2024 04:02:34 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-3a7cf41b54eso100739935ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 02 Dec 2024 20:02:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733198542; x=1733803342;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fwmeBxmUs1A9YhSIcqHuG1REkzy7JVBLgQ5Q7j2lhfY=;
 b=ntUitPW5ILr/EFTWj1tTp/uVBV6Wwcch4AkwgjYoGLqP7ozLXtVix3sOWmulaTaPEl
 LIOj53atyowgtyZsCT65ol4AISt9Y2wvRDirQL7gtjazF+9wQYInzRAgJVKDbi2OQp2s
 9mZYa3+/PQpl9zpmzTUcD5oo7YY3pKiPqqqdUrvBnHr+wdBSEwF4O+WDSday0BUK2bAX
 pGnHBkVRwXU6c0x93CCBU37j9xxSJNrSiyvAJOGJ7ww4t/cb7dBcuz0dK+fTlQed70bj
 5/VnW3wDMyPf1M25s6YCHv6xtZXmYMUU8sxugsIYP7o8Ze+Jr/t0EU2AYLT7noAjZis9
 4k5A==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7twiDEQYi79S7GRyczVepmkoa2XE9WI05CdC22EHQiRmXQH3gBUQM1CtBwe8HAfWNA/JzsbFB+ssHekye1Q==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyDlbW1ZWn8bcjPun/HM0ghjGV5wYDB6/SQjVhS6jgW5g/XkL+5
 Iky4qht3EU8Yl7OQN1M4U3bjL6Rbjb6gMpttcewH+u5yrjkSY9XmZDA/1+fYsBXo/Dfn4jfT5IG
 DSCtT/dYDqtNBsdKwQqquxy1uu18mu7UYobT++ifhNLk6xVl7naPLHVQ=
X-Google-Smtp-Source: AGHT+IEA0x+bCIv/RC6uJuSB/iE2uUcFvm08ZQ+65IZ+Rcl3K4QpsXfGe7f4tpuOjSJiG2csTp10ytzAa/JjjlkiITRhIpWUsySX
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1949:b0:3a7:956c:61a4 with SMTP id
 e9e14a558f8ab-3a7f9a47622mr11852485ab.10.1733198542751; Mon, 02 Dec 2024
 20:02:22 -0800 (PST)
Date: Mon, 02 Dec 2024 20:02:22 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <674e82ce.050a0220.17bd51.0040.GAE@google.com>
To: axboe@kernel.dk, jfs-discussion@lists.sourceforge.net, kristian@klausen.dk,
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 7af08b57bcb9
 Merge tag 'trace-v6.13-2' of git://git.kernel.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=15e03f5f980000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.208 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in bl.score.senderscore.com]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.208 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1tIK7N-0001R4-Ea
X-Mailman-Approved-At: Tue, 03 Dec 2024 14:55:30 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] divide error in dbAllocAG
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
Reply-To: syzbot <syzbot+7c808908291a569281a9@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7af08b57bcb9 Merge tag 'trace-v6.13-2' of git://git.kernel..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=15e03f5f980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=29e5eaaea951b791
dashboard link: https://syzkaller.appspot.com/bug?extid=7c808908291a569281a9
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=162573c0580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=156dcd30580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/815d3cc889bc/disk-7af08b57.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/fa365742e0ed/vmlinux-7af08b57.xz
kernel image: https://storage.googleapis.com/syzbot-assets/ea9d8aace8b7/bzImage-7af08b57.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/83512543e1fa/mount_0.gz

The issue was bisected to:

commit 2b9ac22b12a266eb4fec246a07b504dd4983b16b
Author: Kristian Klausen <kristian@klausen.dk>
Date:   Fri Jun 18 11:51:57 2021 +0000

    loop: Fix missing discard support when using LOOP_CONFIGURE

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17166d30580000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=14966d30580000
console output: https://syzkaller.appspot.com/x/log.txt?x=10966d30580000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+7c808908291a569281a9@syzkaller.appspotmail.com
Fixes: 2b9ac22b12a2 ("loop: Fix missing discard support when using LOOP_CONFIGURE")

loop0: detected capacity change from 0 to 32768
Oops: divide error: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 5857 Comm: syz-executor194 Not tainted 6.12.0-syzkaller-10689-g7af08b57bcb9 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
RIP: 0010:dbAllocAG+0x414/0xd30 fs/jfs/jfs_dmap.c:1399
Code: 03 0f b6 0c 11 48 89 fa 83 e2 07 83 c2 03 38 ca 7c 08 84 c9 0f 85 a7 08 00 00 41 8b 4d 2c 49 8d 7d 30 99 48 89 fe 48 c1 ee 03 <f7> f9 48 ba 00 00 00 00 00 fc ff df 0f b6 14 16 84 d2 74 09 80 fa
RSP: 0018:ffffc9000450fbc8 EFLAGS: 00010216
RAX: 0000000000000400 RBX: 000000000000000a RCX: 0000000000000000
RDX: 0000000000000000 RSI: 1ffff11004cce406 RDI: ffff888026672030
RBP: 0000000000000000 R08: 0000000000000005 R09: 000000000000001f
R10: 000000000000000a R11: 0000000000000002 R12: ffff88807650f000
R13: ffff888026672000 R14: 0000000000000000 R15: 000000000000000c
FS:  000055558401d380(0000) GS:ffff8880b8600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000557f78216048 CR3: 00000000772e0000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 dbDiscardAG+0x249/0x7c0 fs/jfs/jfs_dmap.c:1613
 jfs_ioc_trim+0x3fb/0x5c0 fs/jfs/jfs_discard.c:105
 jfs_ioctl+0x335/0x430 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:906 [inline]
 __se_sys_ioctl fs/ioctl.c:892 [inline]
 __x64_sys_ioctl+0x193/0x200 fs/ioctl.c:892
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xcd/0x250 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fc4a885b679
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc0fc54e38 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007ffc0fc55008 RCX: 00007fc4a885b679
RDX: 0000000020000080 RSI: 00000000c0185879 RDI: 0000000000000004
RBP: 00007fc4a88d4610 R08: 0000000000000000 R09: 00007ffc0fc55008
R10: 0000000000005ea7 R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffc0fc54ff8 R14: 0000000000000001 R15: 0000000000000001
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:dbAllocAG+0x414/0xd30 fs/jfs/jfs_dmap.c:1399
Code: 03 0f b6 0c 11 48 89 fa 83 e2 07 83 c2 03 38 ca 7c 08 84 c9 0f 85 a7 08 00 00 41 8b 4d 2c 49 8d 7d 30 99 48 89 fe 48 c1 ee 03 <f7> f9 48 ba 00 00 00 00 00 fc ff df 0f b6 14 16 84 d2 74 09 80 fa
RSP: 0018:ffffc9000450fbc8 EFLAGS: 00010216
RAX: 0000000000000400 RBX: 000000000000000a RCX: 0000000000000000
RDX: 0000000000000000 RSI: 1ffff11004cce406 RDI: ffff888026672030
RBP: 0000000000000000 R08: 0000000000000005 R09: 000000000000001f
R10: 000000000000000a R11: 0000000000000002 R12: ffff88807650f000
R13: ffff888026672000 R14: 0000000000000000 R15: 000000000000000c
FS:  000055558401d380(0000) GS:ffff8880b8600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000557f78216048 CR3: 00000000772e0000 CR4: 0000000000350ef0
----------------
Code disassembly (best guess):
   0:	03 0f                	add    (%rdi),%ecx
   2:	b6 0c                	mov    $0xc,%dh
   4:	11 48 89             	adc    %ecx,-0x77(%rax)
   7:	fa                   	cli
   8:	83 e2 07             	and    $0x7,%edx
   b:	83 c2 03             	add    $0x3,%edx
   e:	38 ca                	cmp    %cl,%dl
  10:	7c 08                	jl     0x1a
  12:	84 c9                	test   %cl,%cl
  14:	0f 85 a7 08 00 00    	jne    0x8c1
  1a:	41 8b 4d 2c          	mov    0x2c(%r13),%ecx
  1e:	49 8d 7d 30          	lea    0x30(%r13),%rdi
  22:	99                   	cltd
  23:	48 89 fe             	mov    %rdi,%rsi
  26:	48 c1 ee 03          	shr    $0x3,%rsi
* 2a:	f7 f9                	idiv   %ecx <-- trapping instruction
  2c:	48 ba 00 00 00 00 00 	movabs $0xdffffc0000000000,%rdx
  33:	fc ff df
  36:	0f b6 14 16          	movzbl (%rsi,%rdx,1),%edx
  3a:	84 d2                	test   %dl,%dl
  3c:	74 09                	je     0x47
  3e:	80                   	.byte 0x80
  3f:	fa                   	cli


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

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
