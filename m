Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3988D3825
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 May 2024 15:44:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sCJbI-00016F-H5;
	Wed, 29 May 2024 13:44:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3oG9SZgkbAAMv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sC9Ja-00082c-D5 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 May 2024 02:45:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EXvm1BRPoDDQ1PtVnmKGKMJFHmcEADNxdlulxvcnIsQ=; b=lwuYPMmMNY8QPwyKpukUANB8Ie
 iQTP2/x84zaoEKAi7M7J/byjq87vhGIe07/8xKgVzjhTEhqrM1s/6/LR1BcIN7Cx1amO6ZmQWU+5O
 8c1vfVeq8Qqf9vIh2R6yDWBaH0CbCs6p740Sl19Me8NxVi/DRbTo7d5r8Di7EO6hUZOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EXvm1BRPoDDQ1PtVnmKGKMJFHmcEADNxdlulxvcnIsQ=; b=c
 MplH4/xA6zTveGLfyKYFJa0HWg77hiLhbOhzQI+c3OoRiic6LnvJu/Fq90rGgEmomG5cncoEZ31vG
 5Ou/HVQTV/sdpLgRRE6BHloGMektSpxVAJTw4HMCe53OzWpknT+jwZ1SUAxFyF8fXbk8V+DMr0Dgy
 EUo5b3CZ/C9JRq6s=;
Received: from mail-qt1-f208.google.com ([209.85.160.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sC9Jb-000788-J9 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 May 2024 02:45:23 +0000
Received: by mail-qt1-f208.google.com with SMTP id
 d75a77b69052e-43fb0a1c81eso14999941cf.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 28 May 2024 19:45:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716950712; x=1717555512;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=EXvm1BRPoDDQ1PtVnmKGKMJFHmcEADNxdlulxvcnIsQ=;
 b=Tl3JbUF0IRwDQLaILvzucgav7KC2DX28P6MKygWUtExGOYy2alFlxwfV4pdU5QxDn9
 FEDuZuNIem4pFGEuE+e3CHgICw4BM5OQVjWAb8mcQv0ERbkUHo2+mq8oaxbhV+ytRhTE
 RFjcKyjQdQC7bwMBjLbj1QTaoCIveheDfZGu5KRGgovpOU0Y1gqyR6wxjqfyFM+3tKiX
 q1PbWokhIk4LfvSX4aAiNRTZdcLFXxK5o5NL7v/69F5EwmBaTH1aEYkHBWzOp0RQ0Dyk
 Q62d9VFEt/Nh3tUAtirzvYF2YUtjg671WmVkSJtenXiJZWwogrBNvU8nYcnYVMDo/8cw
 pDzQ==
X-Gm-Message-State: AOJu0YzOZLgwdNZ5glvbsMenR6sMD46RZQnG564JGOCcp1LpEIdngJvd
 AexfIfkFz3xjeslVFqiStXQDKDt/kDlrHV69sPSZig7aUehpJFeKCJfBaph/kgCgaxIF6zoQ9cm
 0j53y+0tWKKm227qUD2xDRwENsiHTrfnz+zYg6+G4uwJYNc/Kt2hNYvHkwQ==
X-Google-Smtp-Source: AGHT+IE1QwqyM/Xe95598eJ4YD/14LIpTGT3SBzPrORWFCdO4v3X14qSGTQnRm0QVA6aPL6K+eb/V34QRlpY4NarMIRpXwdPHoB8
MIME-Version: 1.0
X-Received: by 2002:a05:6602:14cb:b0:7de:e175:fd2d with SMTP id
 ca18e2360f4ac-7e8c75d4c18mr26200539f.3.1716678560487; Sat, 25 May 2024
 16:09:20 -0700 (PDT)
Date: Sat, 25 May 2024 16:09:20 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cab78606194f5fcc@google.com>
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
 syzbot found the following issue on: HEAD commit: 2a8120d7b482
 Merge tag 's390-6.10-2' of git://git.kernel.o.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=144e3042980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.208 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.208 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sC9Jb-000788-J9
X-Mailman-Approved-At: Wed, 29 May 2024 13:44:19 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txUpdateMap
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
Reply-To: syzbot <syzbot+0a8a0b1abad0363db585@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    2a8120d7b482 Merge tag 's390-6.10-2' of git://git.kernel.o..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=144e3042980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5dd4fde1337a9e18
dashboard link: https://syzkaller.appspot.com/bug?extid=0a8a0b1abad0363db585
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-2a8120d7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/78c72ae6bdaf/vmlinux-2a8120d7.xz
kernel image: https://storage.googleapis.com/syzbot-assets/99dbb805b738/bzImage-2a8120d7.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+0a8a0b1abad0363db585@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_txnmgr.c:2340 assert(mp->nohomeok == 1)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:2340!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 0 PID: 133 Comm: jfsCommit Not tainted 6.9.0-syzkaller-10713-g2a8120d7b482 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.2-debian-1.16.2-1 04/01/2014
RIP: 0010:txUpdateMap+0xc8b/0xd20 fs/jfs/jfs_txnmgr.c:2340
Code: e9 5c f9 ff ff e8 d5 fd 82 fe 48 c7 c1 00 f4 6a 8b ba 24 09 00 00 48 c7 c6 80 e7 6a 8b 48 c7 c7 c0 e7 6a 8b e8 c6 9d 63 fe 90 <0f> 0b 48 89 df e8 7b 32 e0 fe e9 e1 f8 ff ff e8 31 33 e0 fe e9 a8
RSP: 0000:ffffc900020c7ce0 EFLAGS: 00010286
RAX: 0000000000000039 RBX: ffff88805f267580 RCX: ffffffff816f3519
RDX: 0000000000000000 RSI: ffffffff816fc096 RDI: 0000000000000005
RBP: 0000000000000002 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000080000000 R11: 0000000000000000 R12: ffffc900022ea120
R13: 0000000000000001 R14: ffffc900022ea124 R15: dffffc0000000000
FS:  0000000000000000(0000) GS:ffff88802c000000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f76f6e2f760 CR3: 00000000294c0000 CR4: 0000000000350ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x5e6/0xb20 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2c1/0x3a0 kernel/kthread.c:389
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:txUpdateMap+0xc8b/0xd20 fs/jfs/jfs_txnmgr.c:2340
Code: e9 5c f9 ff ff e8 d5 fd 82 fe 48 c7 c1 00 f4 6a 8b ba 24 09 00 00 48 c7 c6 80 e7 6a 8b 48 c7 c7 c0 e7 6a 8b e8 c6 9d 63 fe 90 <0f> 0b 48 89 df e8 7b 32 e0 fe e9 e1 f8 ff ff e8 31 33 e0 fe e9 a8
RSP: 0000:ffffc900020c7ce0 EFLAGS: 00010286
RAX: 0000000000000039 RBX: ffff88805f267580 RCX: ffffffff816f3519
RDX: 0000000000000000 RSI: ffffffff816fc096 RDI: 0000000000000005
RBP: 0000000000000002 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000080000000 R11: 0000000000000000 R12: ffffc900022ea120
R13: 0000000000000001 R14: ffffc900022ea124 R15: dffffc0000000000
FS:  0000000000000000(0000) GS:ffff88802c100000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f7a37f24488 CR3: 00000000294c0000 CR4: 0000000000350ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


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
