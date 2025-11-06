Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E10EC38708
	for <lists+jfs-discussion@lfdr.de>; Thu, 06 Nov 2025 01:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y08V0zNYQGH4xyW9KbTL66IyvnQ4X9J3ReCnVu+bu20=; b=fD4ir0zGLNSyCl9d716y/ZGfyN
	iF2jFvhTKUQ2XRWvBMRhP2nNhs3BKA0CFe+js7evhHYyT6TPUKaQX35q8erAZCTFc1bEKf0E2euak
	jo9Z3G/09O0suJcDHVThhANMoRuojBDjyWpfup07MQRGosjmXxDYaF0gH9a29tHJ7X9I=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vGnaF-0001Nz-W9;
	Thu, 06 Nov 2025 00:10:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3NOcLaQkbAIEx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vGnZC-0001Pa-O1 for jfs-discussion@lists.sourceforge.net;
 Thu, 06 Nov 2025 00:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OTbAQ2M/nCFfHVZ9BV27LDugd86V/+z5TlraEbOVrw0=; b=PEGWXzlQStteN7yKsqEWLZWgNB
 s4d/MAKAuvc613d5aBjiNvFQvo3JeAj7pfmOKyoOuPW898WfV/pb4pmA72NmeCs+CZBY9uwzxr9Im
 44OtRI6WKrZWrx9kJaHtaX2vev4EEr0aR09G0C3auo/jaIHkL98KHNktBFnxeNjC87Cw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OTbAQ2M/nCFfHVZ9BV27LDugd86V/+z5TlraEbOVrw0=; b=I
 GeVPyJK85IQrEVDzlxpmJnPqXdpwqJ1qNYsWm12ugpVlQ371CgIg3PFYEeCHfcJJoSNxhYo2oNtEe
 S6e4ZU+sICXJc7bNsd4Y9TS61UJmHXx+xf3O9kDSs5vtlkXWHFuBshawKIp92/ifFKQd6Juj4nCPB
 Ckbx2WtZjoVEvR9A=;
Received: from mail-io1-f78.google.com ([209.85.166.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vGnZC-00016D-5H for jfs-discussion@lists.sourceforge.net;
 Thu, 06 Nov 2025 00:09:30 +0000
Received: by mail-io1-f78.google.com with SMTP id
 ca18e2360f4ac-937e5f9ea74so48508439f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 05 Nov 2025 16:09:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762387764; x=1762992564;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=OTbAQ2M/nCFfHVZ9BV27LDugd86V/+z5TlraEbOVrw0=;
 b=A9PCoeU5f9tTwGj4YUWwUcaklfWBX9mqHpreLIdaioJPgV/5PtDOv7VUo3u8Db/dOa
 K2Wg5MjspXaBbQ69O6yq9jx128gf4o5e9Mfn4BCXU2+6he0fnvS9v9hzQdaEMTJsTLDC
 lcLGdivhdCU969F9RyyL1oqDG+g2wLNMLesUuoq6UYJMeH286wOumYW9IMymRGvo3jQ7
 7wXfoWWtVlki13pmfOuSX5NyqFilsdFlMWJM2IJUDe6GQ7opvRCJXMkiZNJs0ycjc8tj
 z/cnk2gcFO3euD3U1FTF2E4j+bPU/W1jeBqkcFZrFOvR4idgDjhVhkDxl+MhNKCZL1aR
 NJFA==
X-Gm-Message-State: AOJu0YwWABGSoTYexCzGgDBJtdkcpfyBGyCdhfY56KNrTRBAYbLAcF5k
 FxcIVQ2Uqmlp0RCq2Y8/KxzwpaVuxXMmThCKfCZtfcMfllqooV70Q7fKSMw/CKvfvnXNmk/RUlT
 gL/9Mu9l3SfoIZASv1ULA5pzuIhq8euLwWD9WPmUj4ZVyjpNnLpOZveck5hfGcA==
X-Google-Smtp-Source: AGHT+IFyxfNhzxUVWRmkkPT+ZrPYGb7DmKIXoPjVutiS3OEQ2ZIHRrLEh6mPuUoziz9D8L/I2Yv+kJEyCy7Mpd5rUFd53ZH4mnU3
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3182:b0:433:27c1:75c4 with SMTP id
 e9e14a558f8ab-433407dac54mr85725185ab.31.1762387764377; Wed, 05 Nov 2025
 16:09:24 -0800 (PST)
Date: Wed, 05 Nov 2025 16:09:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <690be734.050a0220.baf87.007a.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 691d401c7e0e
 Merge tag 'spi-fix-v6.18-rc3' of git://git.ke.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1698c292580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vGnZC-00016D-5H
X-Mailman-Approved-At: Thu, 06 Nov 2025 00:10:34 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] BUG: corrupted list in dbUpdatePMap
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
Reply-To: syzbot <syzbot+4d0a0feb49c5138cac46@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    691d401c7e0e Merge tag 'spi-fix-v6.18-rc3' of git://git.ke..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1698c292580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=41ad820f608cb833
dashboard link: https://syzkaller.appspot.com/bug?extid=4d0a0feb49c5138cac46
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=150b5704580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15d75fe2580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/d338706bec79/disk-691d401c.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/d3ac35c22ff8/vmlinux-691d401c.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d8d6c3e88136/bzImage-691d401c.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/47c6a6500cd9/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=166ee32f980000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4d0a0feb49c5138cac46@syzkaller.appspotmail.com

list_add corruption. next is NULL.
------------[ cut here ]------------
kernel BUG at lib/list_debug.c:28!
Oops: invalid opcode: 0000 [#1] SMP KASAN PTI
CPU: 1 UID: 0 PID: 122 Comm: jfsCommit Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/02/2025
RIP: 0010:__list_add_valid_or_report+0xc3/0x130 lib/list_debug.c:27
Code: 4c 89 f2 48 89 d9 e8 0c 88 a4 fc 90 0f 0b 48 c7 c7 20 de 3d 8b e8 fd 87 a4 fc 90 0f 0b 48 c7 c7 c0 de 3d 8b e8 ee 87 a4 fc 90 <0f> 0b 48 89 df e8 13 c3 7d fd 42 80 7c 2d 00 00 74 08 4c 89 e7 e8
RSP: 0018:ffffc9000395fa20 EFLAGS: 00010246
RAX: 0000000000000022 RBX: 0000000000000000 RCX: 270c5dfadb559700
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: 00000000000f0000 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffff5200072bee9 R12: 0000000000000000
R13: dffffc0000000000 R14: 0000000000000004 R15: 1ffff92000632266
FS:  0000000000000000(0000) GS:ffff888126ef9000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000056341fdb86c0 CR3: 0000000040a18000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 __list_add_valid include/linux/list.h:96 [inline]
 __list_add include/linux/list.h:158 [inline]
 list_add include/linux/list.h:177 [inline]
 dbUpdatePMap+0x7e4/0xeb0 fs/jfs/jfs_dmap.c:577
 txAllocPMap+0x57d/0x6b0 fs/jfs/jfs_txnmgr.c:2426
 txUpdateMap+0x81e/0x9c0 fs/jfs/jfs_txnmgr.c:2364
 txLazyCommit fs/jfs/jfs_txnmgr.c:2665 [inline]
 jfs_lazycommit+0x3f1/0xa10 fs/jfs/jfs_txnmgr.c:2734
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x4bc/0x870 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__list_add_valid_or_report+0xc3/0x130 lib/list_debug.c:27
Code: 4c 89 f2 48 89 d9 e8 0c 88 a4 fc 90 0f 0b 48 c7 c7 20 de 3d 8b e8 fd 87 a4 fc 90 0f 0b 48 c7 c7 c0 de 3d 8b e8 ee 87 a4 fc 90 <0f> 0b 48 89 df e8 13 c3 7d fd 42 80 7c 2d 00 00 74 08 4c 89 e7 e8
RSP: 0018:ffffc9000395fa20 EFLAGS: 00010246
RAX: 0000000000000022 RBX: 0000000000000000 RCX: 270c5dfadb559700
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: 00000000000f0000 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffff5200072bee9 R12: 0000000000000000
R13: dffffc0000000000 R14: 0000000000000004 R15: 1ffff92000632266
FS:  0000000000000000(0000) GS:ffff888126ef9000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000056341fdb86c0 CR3: 0000000040a18000 CR4: 00000000003526f0


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
