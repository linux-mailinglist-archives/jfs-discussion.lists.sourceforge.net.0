Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B31831BDD
	for <lists+jfs-discussion@lfdr.de>; Thu, 18 Jan 2024 15:55:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rQTnq-0004um-3S;
	Thu, 18 Jan 2024 14:55:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3bdWoZQkbAO4iopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rQMyq-0003no-TZ for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Jan 2024 07:38:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3KgbGzjSSpHrnjSlJjwcWcpgEEZshzFZblPbklL8zxM=; b=JQTN+7nuI/+LMzmM+HN9tCbwJH
 qY9UiRQq6KfXlqH8SQb7ZCT4iGxLQZ6afccZ4wiAHdglXjZlzXTD59kWyi7QBKZliJmqV948gRKjZ
 JyjXxpQESKX9wrV0tvkY3q/hIjjsg8EFsHim3Yunhr1AySDNW2S3D8SK3QurQiAfzgkQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3KgbGzjSSpHrnjSlJjwcWcpgEEZshzFZblPbklL8zxM=; b=N
 BnIeiHmzUv7BnTbFY7PAoOKzyzDySuUr85nvz3E3D1T1EJjSna4B7hBNRvlIK19k1IqoCAusHQbXv
 XHABYItTHbueDBBWQSRUklq2lwWZP8Q4ED0pYIlOGLwKo3tBHxO4blMEEcrEXH4pQzx6i5iM9wODQ
 aadIwHT+ThcFpIjo=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rQMyp-0003Vo-Bz for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Jan 2024 07:38:28 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-360a416bb22so79416935ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 17 Jan 2024 23:38:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705563502; x=1706168302;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3KgbGzjSSpHrnjSlJjwcWcpgEEZshzFZblPbklL8zxM=;
 b=Qy6YnOEol0vwV704X6CCwyToZyE96e8T6DBP6lDnCA3mHFKL677DY5tIl8lZtKANGA
 OCe6jyKCF/1M5Wo06G9os5BEu7Lt/nYeni7hPiDt7Z3qV2Q1aEUzg8UG7hEDl1kvsHKk
 zwCguQ0DNDHO9UTt9rKPR30guPHerYgXt7uIZM/j/3oimAMVF9H0+BfZp0sHGzSxGNyG
 JMw9HQeB8LVw/rpNoncy3kEnZcwCE1KGLg3Gh2huLKUkK+nuD+gsXDLXRG6gVORTO13O
 1EDB95qbNWcREEg5yQU2oEv5MRCzebhn+VdE4QzzyiW5XQU3wAhB4ZtR0xmZF9bBVHK1
 LlsA==
X-Gm-Message-State: AOJu0YzHxR+aa1AjDnbCGMo9p4vfODQGrlVgp7Zmj0rpUggSGLMmAzWD
 GTFl4La3SgOm90EyOFUxV++oIrWHKMTulzSdi8Nl8XN3W+4Iekc3EvzZjI2nMCeKXiUHImPia47
 bAjFbAtJZ5utx1vjBmLWuDieeA3V25e/cmOhp5EZMoFFad4Hp4EllRF5E9g==
X-Google-Smtp-Source: AGHT+IGxoXjwyvReRduhhfN5Fx9iFIHxtLN2VpRgWkKp+o1OATA7CQi7djI5xiY+c/JrIUIufKIj2EysyCa4ubWoTDfMgNWXq1xU
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:2141:b0:35f:b715:ed36 with SMTP id
 d1-20020a056e02214100b0035fb715ed36mr63785ilv.5.1705563501952; Wed, 17 Jan
 2024 23:38:21 -0800 (PST)
Date: Wed, 17 Jan 2024 23:38:21 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ad0392060f337207@google.com>
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
 syzbot found the following issue on: HEAD commit: 052d534373b7
 Merge tag 'exfat-for-6.8-rc1' of git://git.ke.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=140a08b3e80000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rQMyp-0003Vo-Bz
X-Mailman-Approved-At: Thu, 18 Jan 2024 14:55:32 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] WARNING in dbAdjTree
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
Reply-To: syzbot <syzbot+ab18fa9c959320611727@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    052d534373b7 Merge tag 'exfat-for-6.8-rc1' of git://git.ke..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=140a08b3e80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=36f64072074e3eab
dashboard link: https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15b39935e80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10d619f5e80000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/395e14e0d581/disk-052d5343.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/d3c73d08be99/vmlinux-052d5343.xz
kernel image: https://storage.googleapis.com/syzbot-assets/80968415c40b/bzImage-052d5343.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/d58cff47d922/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=142eec2be80000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=162eec2be80000
console output: https://syzkaller.appspot.com/x/log.txt?x=122eec2be80000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+ab18fa9c959320611727@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 0 PID: 109 at fs/jfs/jfs_dmap.c:2879 dbAdjTree+0x2d9/0x3d0 fs/jfs/jfs_dmap.c:2879
Modules linked in:
CPU: 0 PID: 109 Comm: jfsCommit Not tainted 6.7.0-syzkaller-09928-g052d534373b7 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 11/17/2023
RIP: 0010:dbAdjTree+0x2d9/0x3d0 fs/jfs/jfs_dmap.c:2879
Code: e8 4c 13 8d fe 0f b6 14 24 38 da 0f 85 a1 fe ff ff 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e 41 5f e9 7d 18 8d fe e8 78 18 8d fe 90 <0f> 0b 90 eb e2 e8 0d 8f e4 fe e9 52 fe ff ff e8 03 8f e4 fe e9 79
RSP: 0018:ffffc900020bfa88 EFLAGS: 00010293
RAX: 0000000000000000 RBX: 0000000000000155 RCX: ffffffff82faf5c9
RDX: ffff8880197f3b80 RSI: ffffffff82faf828 RDI: 0000000000000004
RBP: ffff8880231c4010 R08: 0000000000000004 R09: 0000000000000155
R10: 0000000000030056 R11: ffffffff8acf1fa0 R12: 0000000000000004
R13: 0000000000030056 R14: ffff8880231c4010 R15: 0000000000000001
FS:  0000000000000000(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f67c3d5d130 CR3: 000000000cf79000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 dbJoin+0x267/0x2c0 fs/jfs/jfs_dmap.c:2847
 dbFreeBits+0x15c/0x8f0 fs/jfs/jfs_dmap.c:2338
 dbFreeDmap+0x62/0x1a0 fs/jfs/jfs_dmap.c:2087
 dbFree+0x266/0x550 fs/jfs/jfs_dmap.c:409
 txFreeMap+0x9a9/0xe60 fs/jfs/jfs_txnmgr.c:2534
 txUpdateMap+0x3f1/0xd10 fs/jfs/jfs_txnmgr.c:2330
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x5e4/0xb20 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2c6/0x3a0 kernel/kthread.c:388
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:242
 </TASK>


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
