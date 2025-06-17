Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BC3ADCDB0
	for <lists+jfs-discussion@lfdr.de>; Tue, 17 Jun 2025 15:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eCrCe0Eizfdwmflawu62LqmYakymkD3CTV8oHsveFS8=; b=G3NAd4//a/1WSdYwfPPiML9G4g
	pJ6Pt0l/0qhCM4c1ObNBRJjYLvoFmB2dAZS+Yce9Usb35DVhPE+SFkj/OKYcO+Cd/rC1q0ZtpQoef
	TnuA8YrvLfL2u5fU1BLb8sUvjRHq73PxgBJZmgNNj69zbBmVCsupk0IAVl6Z/dK9WTm4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uRWZp-0005yR-OH;
	Tue, 17 Jun 2025 13:42:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3f9NQaAkbALIkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uRM6n-0007UX-RG for jfs-discussion@lists.sourceforge.net;
 Tue, 17 Jun 2025 02:31:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iICH6rGkCd0NMk5QLBV914Vt0rPaUBnhf5fohNbLyBA=; b=NQi9zzsMV24UFi25DLOrNtjLTc
 ppsZzSiiqg8+hcJVpMwqI7NwylhyCwEBG4m47KPL/9UFvSmVrDRiunAUD9oUl8vpTycqIJs09qJUR
 hajgcxpwBldW84eAj6T+9PzxnMv3EZTG40qVDQtRgvmBZefzphTSrwy1UPKINd84/V0w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iICH6rGkCd0NMk5QLBV914Vt0rPaUBnhf5fohNbLyBA=; b=W
 JrgxKxMwLq0yuKjVZwqz7M1zaPu6JRBDufUlJuHm+rNLt54Y8VNzDxAhzpBP1LhOpBMGw+u/p0c1s
 rgUPIedv8KOY2F+OJk70aJDgTy+6WJOumtp6SAxDMC2haNTV+bDkbR1o2m2NySUKR+6epe/Wc8dJs
 CiLacyNAHV727LCM=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uRM6n-0002JE-Bu for jfs-discussion@lists.sourceforge.net;
 Tue, 17 Jun 2025 02:31:33 +0000
Received: by mail-il1-f205.google.com with SMTP id
 e9e14a558f8ab-3ddc1af1e5bso130387395ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 16 Jun 2025 19:31:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750127487; x=1750732287;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=iICH6rGkCd0NMk5QLBV914Vt0rPaUBnhf5fohNbLyBA=;
 b=lAJKbp+N1CzV4La+9vKcQy562YZ22T6zuOV2aRXcKMZsSd3TD8m+HJ4uPYLt8FpJqt
 FIDzI8D2KthlKZpfE+v1tLce9mTe+H054yZzssrh2+xTNp6ssc+wDf4EedYZHAHb/8LV
 GhbSDll35vYG+Ao19wznN4Tmtbqe/1NqEySkkjXprXSVOyxINAAC59G5JJaTEOKbyUg+
 ogp4hBOhFWi9AjnwooqB6MQ6HMyY5QNDVZ3YIwPwwplCH0WUWNuNBHgrU4dRFXlTK+u2
 e0Uhb83MSfy9jfhbLEB3jJgpo5rMRnWXHff4T4M59qDDaYAeKkm/PfWzLtJ2Bf3hFfpO
 LCVg==
X-Gm-Message-State: AOJu0Yxx5TtQxGZC9/gjq4zp53IDT6dkBESlYsuw2OURiZCTXJrcUJMD
 XzU+gaZh89RtchgjPEG/yNSJbaNCl+B6gX+hJv6wEzD07bdOKnbD+83CMIfWcIdkdDFZWIFVAiF
 gM5ikBZL37fYaWqD4LVy3I/LPxhpzd1Egmqh9Fra1LmnNzfCSnzeNeUSjfpJJkQ==
X-Google-Smtp-Source: AGHT+IF5zYMUboyj8eAxrp3c74PsEWNVpNs0IZe3ofWVWAHz/ZMN4tQC557mWqcpG9ZeTG+I0683iCBzQU8eQ1aoQu7LmuB2bMkc
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:2143:b0:3dd:d178:9315 with SMTP id
 e9e14a558f8ab-3de07c414d8mr130321735ab.8.1750127487587; Mon, 16 Jun 2025
 19:31:27 -0700 (PDT)
Date: Mon, 16 Jun 2025 19:31:27 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6850d37f.a70a0220.395abc.01f9.GAE@google.com>
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
 syzbot found the following issue on: HEAD commit: 050f8ad7b58d
 Add linux-next specific files for 20250616 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=11e0190c580000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.205 listed in wl.mailspike.net]
X-Headers-End: 1uRM6n-0002JE-Bu
X-Mailman-Approved-At: Tue, 17 Jun 2025 13:42:10 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] WARNING: fs/jfs/jfs_dmap.c:LINE at
 dbAdjTree, CPU: jfsCommit/NUM
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
Reply-To: syzbot <syzbot+077d9ebda84f426a6a1e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    050f8ad7b58d Add linux-next specific files for 20250616
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=11e0190c580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d2efc7740224b93a
dashboard link: https://syzkaller.appspot.com/bug?extid=077d9ebda84f426a6a1e
compiler:       Debian clang version 20.1.6 (++20250514063057+1e4d39e07757-1~exp1~20250514183223.118), Debian LLD 20.1.6
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17aa1e82580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15e0190c580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/49faa18d2f53/disk-050f8ad7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/7c6f9cd7fe5d/vmlinux-050f8ad7.xz
kernel image: https://storage.googleapis.com/syzbot-assets/84a08d6403ee/bzImage-050f8ad7.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/65c809c20ad8/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=178095d4580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+077d9ebda84f426a6a1e@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: fs/jfs/jfs_dmap.c:2867 at dbAdjTree+0x454/0x4e0 fs/jfs/jfs_dmap.c:2867, CPU#0: jfsCommit/113
Modules linked in:
CPU: 0 UID: 0 PID: 113 Comm: jfsCommit Not tainted 6.16.0-rc2-next-20250616-syzkaller #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/07/2025
RIP: 0010:dbAdjTree+0x454/0x4e0 fs/jfs/jfs_dmap.c:2867
Code: 5a ff ff ff e8 dd ed 81 fe eb 05 e8 d6 ed 81 fe 48 83 c4 28 5b 41 5c 41 5d 41 5e 41 5f 5d c3 cc cc cc cc cc e8 bd ed 81 fe 90 <0f> 0b 90 eb e1 44 89 e1 80 e1 07 80 c1 03 38 c1 0f 8c e1 fb ff ff
RSP: 0018:ffffc90002de7988 EFLAGS: 00010293
RAX: ffffffff833e7c73 RBX: ffff88807806f010 RCX: ffff88801eb2bc00
RDX: 0000000000000000 RSI: 0000000000000155 RDI: 0000000000020056
RBP: 0000000000020056 R08: ffffea0001e01bc7 R09: 1ffffd40003c0378
R10: dffffc0000000000 R11: fffff940003c0379 R12: ffff88807806f018
R13: dffffc0000000000 R14: 0000000000000004 R15: 0000000000000155
FS:  0000000000000000(0000) GS:ffff888125c40000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005555944916f8 CR3: 00000000736f2000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 dbJoin+0x238/0x300 fs/jfs/jfs_dmap.c:2835
 dbFreeBits+0x4e1/0xdb0 fs/jfs/jfs_dmap.c:2332
 dbFreeDmap fs/jfs/jfs_dmap.c:2081 [inline]
 dbFree+0x336/0x650 fs/jfs/jfs_dmap.c:398
 txFreeMap+0x7ff/0xde0 fs/jfs/jfs_txnmgr.c:2534
 txUpdateMap+0x308/0x9c0 fs/jfs/jfs_txnmgr.c:-1
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x43f/0xa90 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x711/0x8a0 kernel/kthread.c:464
 ret_from_fork+0x3fc/0x770 arch/x86/kernel/process.c:148
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
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
