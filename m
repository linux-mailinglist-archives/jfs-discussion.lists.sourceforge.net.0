Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA08989061A
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Mar 2024 17:47:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rpsuF-0001Fi-Fh;
	Thu, 28 Mar 2024 16:47:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3rSkFZgkbAEw6CDyozzs5o33wr.u22uzs86s5q217s17.q20@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rpl5k-0005nr-BZ for jfs-discussion@lists.sourceforge.net;
 Thu, 28 Mar 2024 08:26:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bAoSgmgvBXbxtYx8pCIlrNKsK43NOKCP92pCO6ltbP4=; b=Ks+YUP298cIrnl34Ra6HBFqUJW
 1QmOtAfBas3c0U20AAuL5TKxUcoYUJzbndhV75rcw5JzRzYPEmA03R0EsAob2xQOju6dbjYeDsqDC
 GrUgIC/ptlmP7zihvYoCTbg7TUfa9vE3pblp5VjmStUlOaZ1NoJXFoyIVEdwwKRUJArU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bAoSgmgvBXbxtYx8pCIlrNKsK43NOKCP92pCO6ltbP4=; b=j
 Vp1qzD1WnrVQ0uwC/XJDornyt0htfEWBW/DmECi/3rWhnMIj5lGb+fxU/KX6VT6eqwBcySTqT/fTl
 iny1SBxP8Z3RKxfLB331s1bsNRrXdf5kYV0X9VXEMMLl/bQStIzt4gvPV/lm6MC5OL5hQGZfSUKQ7
 Kz/aKedsco2neUzI=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpl5j-0004US-Da for jfs-discussion@lists.sourceforge.net;
 Thu, 28 Mar 2024 08:26:32 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3665991058fso5748635ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 28 Mar 2024 01:26:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711614381; x=1712219181;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bAoSgmgvBXbxtYx8pCIlrNKsK43NOKCP92pCO6ltbP4=;
 b=F91rTCCWKYi7RLaD2eapAhHRUNI7EUiuMBC/JsnaRsdg5Sf4uH0cqOiWtUM3Rkd8LM
 2rongQwwifZNnhuZg4dFOwDtGO5THNlv3JKryKDRmAcSswaSnL8Qo516VdZ9ect0GLMN
 irNtgst1BtH8YhA5RN71RAS1J42gI02tvb5A92FW/BFthW4ZDmIBk0o/msupC8xb+q28
 Qf2H/3D+CMSJmLtXXu5he+FsFOHJXvRx3DmFz3xDfTf8lb05ZbAHGor7ktPouezzCd0v
 aZelhH+xZgM/+QbVuG8r2xt2H0nZpzE8YvNAZQkbuCnjS7EhNqzOXH5DwA7+1nigjjSV
 YEPQ==
X-Gm-Message-State: AOJu0Yz/RSP2Qscj1OR3EWGanhXVeOnguDIRs49zah4/FjZ4/00kgJf+
 1u7+ePTh/BiMQ+JDNLksdCtB9l/mRmamQdG8livXojKAnjtfrTuSMi7N7/rSw1m1yU1VOvHcKD7
 fwA/8Zrrg9eBhQlwhhNzKdrULuY+hWSRmBvRCoY5Eoob3O2yPzh/PCITyng==
X-Google-Smtp-Source: AGHT+IHgK5viOd0F+bDHqRYdcaYQ6s8+oCcIoWMtxdMcRU+n/HwfVQ5of75lvk5RAQ44Nz4GNM99q0PodqUqNOfhVuEhp/lNFdgN
MIME-Version: 1.0
X-Received: by 2002:a92:d744:0:b0:368:72f7:a102 with SMTP id
 e4-20020a92d744000000b0036872f7a102mr39355ilq.0.1711614381036; Thu, 28 Mar
 2024 01:26:21 -0700 (PDT)
Date: Thu, 28 Mar 2024 01:26:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002cabeb0614b447e9@google.com>
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
 syzbot found the following issue on: HEAD commit: fe46a7dd189e
 Merge tag 'sound-6.9-rc1' of git://git.kernel.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=130728b5180000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1rpl5j-0004US-Da
X-Mailman-Approved-At: Thu, 28 Mar 2024 16:47:11 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txLock (2)
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
Reply-To: syzbot <syzbot+a843f6ae2130a987d63b@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    fe46a7dd189e Merge tag 'sound-6.9-rc1' of git://git.kernel..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=130728b5180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4d90a36f0cab495a
dashboard link: https://syzkaller.appspot.com/bug?extid=a843f6ae2130a987d63b
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1068ec51180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10c6f0ce180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f6c04726a2ae/disk-fe46a7dd.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/09c26ce901ea/vmlinux-fe46a7dd.xz
kernel image: https://storage.googleapis.com/syzbot-assets/134acf7f5322/bzImage-fe46a7dd.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/60c8566d11a7/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a843f6ae2130a987d63b@syzkaller.appspotmail.com

Locker's tblock: ffffc90002631850: 8be235c0 ffffffff 00000200 00000000
Locker's tblock: ffffc90002631860: 02631860 ffffc900 02631860 ffffc900
Locker's tblock: ffffc90002631870: 00000004 0000001c 00000008 00000000
Tlock: ffffc900028522d0: 0003000e 20208040 229bc9b0 ffff8880
Tlock: ffffc900028522e0: 775896b0 ffff8880 03140000 05002000
Tlock: ffffc900028522f0: 06030a00 0000020d 00000000 00000000
Tlock: ffffc90002852300: 00000000 00000000 00000000 00000000
Tlock: ffffc90002852310: 00000000 00000000
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:834!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI
CPU: 1 PID: 5076 Comm: syz-executor283 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/29/2024
RIP: 0010:txLock+0x1ed3/0x21a0 fs/jfs/jfs_txnmgr.c:834
Code: 48 c7 c6 00 3c e2 8b ba 01 00 00 00 b9 10 00 00 00 41 b8 04 00 00 00 4c 8b 4c 24 20 6a 00 6a 48 e8 52 e6 7a 01 48 83 c4 10 90 <0f> 0b e8 56 4e 72 fe 4c 89 f7 48 c7 c6 00 44 e2 8b e8 67 33 b8 fe
RSP: 0018:ffffc900045070c0 EFLAGS: 00010286
RAX: 30bbfa8826d96700 RBX: 0000000000000010 RCX: ffff888028011e00
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: ffffc90004507210 R08: ffffffff8175c06c R09: fffffbfff1bf9650
R10: dffffc0000000000 R11: fffffbfff1bf9650 R12: 1ffff9200050a45a
R13: ffff888077586f00 R14: 000000000000005a R15: ffffc900028522d2
FS:  00007f6aa27586c0(0000) GS:ffff8880b9500000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f6aa2758d58 CR3: 000000007b84e000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 dtInsert+0xb0a/0x6b00 fs/jfs/jfs_dtree.c:881
 jfs_create+0x7ba/0xb90 fs/jfs/namei.c:137
 lookup_open fs/namei.c:3497 [inline]
 open_last_lookups fs/namei.c:3566 [inline]
 path_openat+0x1425/0x3240 fs/namei.c:3796
 do_filp_open+0x235/0x490 fs/namei.c:3826
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1406
 do_sys_open fs/open.c:1421 [inline]
 __do_sys_openat fs/open.c:1437 [inline]
 __se_sys_openat fs/open.c:1432 [inline]
 __x64_sys_openat+0x247/0x2a0 fs/open.c:1432
 do_syscall_64+0xfb/0x240
 entry_SYSCALL_64_after_hwframe+0x6d/0x75
RIP: 0033:0x7f6aa27c2879
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 81 18 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f6aa2758218 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 00007f6aa284f6d8 RCX: 00007f6aa27c2879
RDX: 000000000000275a RSI: 00000000200010c0 RDI: 00000000ffffff9c
RBP: 00007f6aa284f6d0 R08: 00007fff5a3c9dc7 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f6aa281c190
R13: 0030656c69662f2e R14: 00007f6aa281607e R15: 3d6469672c647261
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:txLock+0x1ed3/0x21a0 fs/jfs/jfs_txnmgr.c:834
Code: 48 c7 c6 00 3c e2 8b ba 01 00 00 00 b9 10 00 00 00 41 b8 04 00 00 00 4c 8b 4c 24 20 6a 00 6a 48 e8 52 e6 7a 01 48 83 c4 10 90 <0f> 0b e8 56 4e 72 fe 4c 89 f7 48 c7 c6 00 44 e2 8b e8 67 33 b8 fe
RSP: 0018:ffffc900045070c0 EFLAGS: 00010286
RAX: 30bbfa8826d96700 RBX: 0000000000000010 RCX: ffff888028011e00
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: ffffc90004507210 R08: ffffffff8175c06c R09: fffffbfff1bf9650
R10: dffffc0000000000 R11: fffffbfff1bf9650 R12: 1ffff9200050a45a
R13: ffff888077586f00 R14: 000000000000005a R15: ffffc900028522d2
FS:  00007f6aa27586c0(0000) GS:ffff8880b9500000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f6aa2758d58 CR3: 000000007b84e000 CR4: 00000000003506f0
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
