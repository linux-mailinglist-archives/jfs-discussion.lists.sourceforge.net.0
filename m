Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE021A57AC9
	for <lists+jfs-discussion@lfdr.de>; Sat,  8 Mar 2025 14:54:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tqucp-0002UO-MB;
	Sat, 08 Mar 2025 13:54:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3mIjLZwkbAB0LRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tqhcG-0007Sp-0m for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Mar 2025 00:00:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qhQiBx2XYY54oyRylvoG6VkmFq/MljCpnjHyDU43HyQ=; b=LJ+iB9/G8eGIRU33Yul3cgu1Mq
 L3FXvbNHxEO66y7lhVwinDMs84k2Y981U8cf/09rGIG4cmomzGx0s6ZBi/98nD7AKyb2bNbuKuhr9
 8CqLcTlk9xLKMYIRQwsGtuX/P3ktvb3/ugNNNz118phC3OLARR0/6Yq9IHZ/F9AcBjSM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qhQiBx2XYY54oyRylvoG6VkmFq/MljCpnjHyDU43HyQ=; b=X
 j7wih3GBFDaPsHzyMyjIHZkrgkLXnCGijqlKOEFOg7KuchECkh4wGY4YGufVTR+hUpRDsYPAJ9UsU
 ouikPHKZx2IizAC0BnhQX3fxBV6xYtKxjZc8ilZ2+fhbT3NYyG8VLaWV5mwduESoQbWhbqAwLt8El
 HN9pjTQJXvSRk8ZY=;
Received: from mail-il1-f206.google.com ([209.85.166.206])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tqhcE-0004GH-JX for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Mar 2025 00:00:31 +0000
Received: by mail-il1-f206.google.com with SMTP id
 e9e14a558f8ab-3d3dee8d31aso18784015ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 07 Mar 2025 16:00:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741392025; x=1741996825;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qhQiBx2XYY54oyRylvoG6VkmFq/MljCpnjHyDU43HyQ=;
 b=jh7oDvVXHpzam40lh426a5IBZKTlTFZyLLzvc1Tn8qP+Dtm4Yi2PoCifWkz+m3JcqI
 WZbBFqeWAtwz+XDvhs9rf60aJIDNzkOmI2KqaPZbq3iUMq2itS2vfWY0PUm1J3n1KAmJ
 rq3QOwWJ9NNhsn6RJzCEZgwbSGEHmNQ+z4SD6ZfpAru+kILO3AsaB5+j+blFYvr8ceA5
 54suPszDDLRu1WbkcwmZpQvVNXDvnc95D2yja37yVHG0mLfYsU7CheMRwIyzVgJ91efQ
 Bsk5W7bvHb5JKQyasmRG189rSOYYUb3VcdoFPybrOrzJlMUCYPNbw6k0Ulaot6foDkyK
 zbjA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWChhUhCAtbtGYnfyM9iI3crQlqzO8hQ/SrCoEhFCxNB0sYamq4QM8n41eTsByNRvotKnJdRjpGrsBHTPamyg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxmcjFQ3GCTCRvaHg3M3Xveo3RMj9dfjVCNuESBCCH2fDnUKY/n
 DxsHnr98EblzHzNyuh+X3IK3yrIUpAUa2uZQwD+zGejTui1CbY/9JjPMX5zT6PW2ldczYmKKcMy
 tRD/jzOSoXBT+f84fg31spP6BNHYwJgUpz/KpuVZvlv5a2yEkkyGfIhs=
X-Google-Smtp-Source: AGHT+IFuXSZNH7lFGeb2uC0o3NbegtdSNLltHPGb24D67kfSiB2v58DHRJ34JaRhGi/lHGS2RGeUzPrEkc/ah40XwSaIH6NJnpLT
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:741:b0:3cf:bac5:d90c with SMTP id
 e9e14a558f8ab-3d441a06f4dmr78268705ab.18.1741392024490; Fri, 07 Mar 2025
 16:00:24 -0800 (PST)
Date: Fri, 07 Mar 2025 16:00:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67cb8898.050a0220.d8275.022a.GAE@google.com>
To: axboe@kernel.dk, jfs-discussion@lists.sourceforge.net, kristian@klausen.dk,
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 7eb172143d55
 Linux 6.14-rc5 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=12dc6464580000
 kernel config: https://syzkaller.appspot.com/x/.config?x=523d3ff8e0 [...]
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.206 listed in list.dnswl.org]
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.206 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.206 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.206 listed in wl.mailspike.net]
X-Headers-End: 1tqhcE-0004GH-JX
X-Mailman-Approved-At: Sat, 08 Mar 2025 13:53:58 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbAllocAG (2)
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
Reply-To: syzbot <syzbot+fe8264911355151c487f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7eb172143d55 Linux 6.14-rc5
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=12dc6464580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=523d3ff8e053340a
dashboard link: https://syzkaller.appspot.com/bug?extid=fe8264911355151c487f
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16dc6464580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1336afb8580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/0e7164e018a2/disk-7eb17214.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/30ec438ad743/vmlinux-7eb17214.xz
kernel image: https://storage.googleapis.com/syzbot-assets/9b0e3bf8e8fd/bzImage-7eb17214.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/68478e58b8d0/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=14dc6464580000)

The issue was bisected to:

commit 2b9ac22b12a266eb4fec246a07b504dd4983b16b
Author: Kristian Klausen <kristian@klausen.dk>
Date:   Fri Jun 18 11:51:57 2021 +0000

    loop: Fix missing discard support when using LOOP_CONFIGURE

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=112be464580000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=132be464580000
console output: https://syzkaller.appspot.com/x/log.txt?x=152be464580000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+fe8264911355151c487f@syzkaller.appspotmail.com
Fixes: 2b9ac22b12a2 ("loop: Fix missing discard support when using LOOP_CONFIGURE")

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1400:9
shift exponent -335544310 is negative
CPU: 0 UID: 0 PID: 5822 Comm: syz-executor130 Not tainted 6.14.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2025
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c8/0x420 lib/ubsan.c:468
 dbAllocAG+0x1087/0x10b0 fs/jfs/jfs_dmap.c:1400
 dbDiscardAG+0x352/0xa20 fs/jfs/jfs_dmap.c:1613
 jfs_ioc_trim+0x45a/0x6b0 fs/jfs/jfs_discard.c:105
 jfs_ioctl+0x2cd/0x3e0 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:906 [inline]
 __se_sys_ioctl+0xf5/0x170 fs/ioctl.c:892
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7feb3a0bab19
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd2811fb58 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007feb3a0bab19
RDX: 0000400000000080 RSI: 00000000c0185879 RDI: 0000000000000004
RBP: 00007feb3a1335f0 R08: 000055557eb534c0 R09: 000055557eb534c0
R10: 0000000000005ef0 R11: 0000000000000246 R12: 00007ffd2811fb80
R13: 00007ffd2811fda8 R14: 431bde82d7b634db R15: 00007feb3a10303b
 </TASK>
---[ end trace ]---


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
