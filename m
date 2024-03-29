Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2A1891C65
	for <lists+jfs-discussion@lfdr.de>; Fri, 29 Mar 2024 14:49:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rqCbS-00078h-My;
	Fri, 29 Mar 2024 13:49:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3XnQGZgkbAJcJPQB1CC5I1GG94.7FF7C5LJ5I3FEK5EK.3FD@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rq77B-0004r7-Bx for jfs-discussion@lists.sourceforge.net;
 Fri, 29 Mar 2024 07:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bcc+dTHZlCpOWcs3ADhgDTmpiFe6wMX6YbcA68N9nxQ=; b=GJisRxXY4xcU/lLpJQvUCvRDCL
 KBuVD550nlPoNg4+xhsk5sAn17QQjv/WbarD4hzPR3rpc9YiLdYUOuvNJ4Jfo87aAgqgmWiHD4ThW
 sOVGp3KfenOBGtsZjrkrunasMrHQh2RXg4pcstIa2q9I5cI6oNXZ6a8mdq3hkaTs7HdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Bcc+dTHZlCpOWcs3ADhgDTmpiFe6wMX6YbcA68N9nxQ=; b=N
 xiq+hjmA2KTVlNPYkP2+PdCDBoDieDVbCIBpWo5pJeOPbbDi1hrr5jfzLaekDDVWzEmDZcWZ1Qbg4
 62/YnMPAFJSRmMj9C0SR2re9IpurIioCZ15WlXHzAqPe7MrCZ4NvpZ/rY2AqAJNCqsghzAM5klZBe
 J4vS6FI46fto/0XE=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rq77A-0004or-JR for jfs-discussion@lists.sourceforge.net;
 Fri, 29 Mar 2024 07:57:29 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7cbef888187so161340839f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 29 Mar 2024 00:57:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711699038; x=1712303838;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Bcc+dTHZlCpOWcs3ADhgDTmpiFe6wMX6YbcA68N9nxQ=;
 b=JU9oj96MGN6aNxDzAlkSVyHam78FuDxBLKBxpMT3VX9KwKJgNs4gMzUsd25H2k+Iou
 fk8NedOKm+Auj1EVlXXyexcZlKhtvZ9CohbpRzoChHAHBMkwAJRQJn7dpSYcQkwSck2I
 Q4WmMs+mY0JOit0p52CP1KWBth2I7zkLGrK0prIefSbkNskQ2tSVWCcEaXjJb+pIsYmy
 1ELNyRx92E+/E8xQJCIJmWMHLRgyvOry/KnF5xHzv9go945DVgRxgfc4wVCw7vfKzT9G
 ziR+sWAshl0DvmxRc8aD2NaVF7mV7wtRzNCyjzRkqtwQw7CupB2vo2PJxKxtgogiaI1R
 YeNw==
X-Gm-Message-State: AOJu0Yw5hE9RmEAwAnDkH1+ZiYRLWfEmMKsg+MoUv7xlPzuNqYDUZTnz
 8pE7BJTZ3iyqhFRR8kp+c7yEq3wf8OaUn+jZhP6XhIVJ3IB1rDBAHNiSEPnEIW8PSzbzWCWCk9T
 JnTaBo6nGTUNR3DAklkCvHtziYd9rgGJkjUqiDjlXNK468es+5U7aIw0LZQ==
X-Google-Smtp-Source: AGHT+IGw385SZZ3tCXwYKqG3ZigUT2bvZPDG2amKZHP7NO3/5xIdJFORFxby6Nz6CBwma0Oha7OnvhJsZlT5o064D5VK4o8reozj
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2c90:b0:7cc:8980:5ae4 with SMTP id
 i16-20020a0566022c9000b007cc89805ae4mr53406iow.2.1711699038231; Fri, 29 Mar
 2024 00:57:18 -0700 (PDT)
Date: Fri, 29 Mar 2024 00:57:18 -0700
In-Reply-To: <000000000000a12738061144f9d1@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000022ef250614c7fd94@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, xrivendell7@gmail.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: fe46a7dd189e Merge tag 'sound-6.9-rc1' of git://git.kernel..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=157a3321180000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
X-Headers-End: 1rq77A-0004or-JR
X-Mailman-Approved-At: Fri, 29 Mar 2024 13:49:05 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txEnd (2)
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
Reply-To: syzbot <syzbot+776b5fc6c99745aa7860@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    fe46a7dd189e Merge tag 'sound-6.9-rc1' of git://git.kernel..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=157a3321180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1a07d5da4eb21586
dashboard link: https://syzkaller.appspot.com/bug?extid=776b5fc6c99745aa7860
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1623f5b1180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=110d1129180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/b42ab0fd4947/disk-fe46a7dd.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b8a6e7231930/vmlinux-fe46a7dd.xz
kernel image: https://storage.googleapis.com/syzbot-assets/4fbf3e4ce6f8/bzImage-fe46a7dd.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/8dce556379ee/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+776b5fc6c99745aa7860@syzkaller.appspotmail.com

jfs_dirty_inode called on read-only volume
Is remount racy?
BUG at fs/jfs/jfs_txnmgr.c:528 assert(tblk->next == 0)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:528!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 1 PID: 5253 Comm: syz-executor989 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
RIP: 0010:txEnd+0x583/0x5a0 fs/jfs/jfs_txnmgr.c:528
Code: e9 59 fb ff ff e8 bd 24 84 fe 48 c7 c1 40 a4 4a 8b ba 10 02 00 00 48 c7 c6 c0 9e 4a 8b 48 c7 c7 00 9f 4a 8b e8 5e f5 64 fe 90 <0f> 0b 48 89 ef e8 03 07 df fe e9 40 fd ff ff e8 c9 06 df fe e9 2e
RSP: 0018:ffffc90008cc7ab8 EFLAGS: 00010282
RAX: 0000000000000036 RBX: ffffc900025d1110 RCX: ffffffff816f2339
RDX: 0000000000000000 RSI: ffffffff816fab26 RDI: 0000000000000005
RBP: 0000000000000001 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000001 R11: 0000000000000001 R12: 0000000000000000
R13: 0000000000000001 R14: ffffffff8dd43da0 R15: ffffc900025d1112
FS:  00007fc48c2826c0(0000) GS:ffff8880b9500000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fc484d0b000 CR3: 000000001511e000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 add_missing_indices fs/jfs/jfs_dtree.c:2663 [inline]
 jfs_readdir+0x2952/0x4310 fs/jfs/jfs_dtree.c:3009
 wrap_directory_iterator+0xa8/0xe0 fs/readdir.c:67
 iterate_dir+0x295/0x9e0 fs/readdir.c:110
 __do_sys_getdents fs/readdir.c:326 [inline]
 __se_sys_getdents fs/readdir.c:311 [inline]
 __x64_sys_getdents+0x14f/0x2d0 fs/readdir.c:311
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xd5/0x260 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x6d/0x75
RIP: 0033:0x7fc48c2f6c39
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 b1 1d 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fc48c282168 EFLAGS: 00000246 ORIG_RAX: 000000000000004e
RAX: ffffffffffffffda RBX: 00007fc48c37e6d8 RCX: 00007fc48c2f6c39
RDX: 0000000000001000 RSI: 0000000020006600 RDI: 0000000000000005
RBP: 00007fc48c37e6d0 R08: 00007fc48c2826c0 R09: 0000000000000000
R10: 00007fc48c2826c0 R11: 0000000000000246 R12: 00007fc48c37e6dc
R13: 000000000000006e R14: 00007ffdf1f02700 R15: 00007ffdf1f027e8
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:txEnd+0x583/0x5a0 fs/jfs/jfs_txnmgr.c:528
Code: e9 59 fb ff ff e8 bd 24 84 fe 48 c7 c1 40 a4 4a 8b ba 10 02 00 00 48 c7 c6 c0 9e 4a 8b 48 c7 c7 00 9f 4a 8b e8 5e f5 64 fe 90 <0f> 0b 48 89 ef e8 03 07 df fe e9 40 fd ff ff e8 c9 06 df fe e9 2e
RSP: 0018:ffffc90008cc7ab8 EFLAGS: 00010282
RAX: 0000000000000036 RBX: ffffc900025d1110 RCX: ffffffff816f2339
RDX: 0000000000000000 RSI: ffffffff816fab26 RDI: 0000000000000005
RBP: 0000000000000001 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000001 R11: 0000000000000001 R12: 0000000000000000
R13: 0000000000000001 R14: ffffffff8dd43da0 R15: ffffc900025d1112
FS:  00007fc48c2826c0(0000) GS:ffff8880b9500000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fc484d0b000 CR3: 000000001511e000 CR4: 0000000000350ef0


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
