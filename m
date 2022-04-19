Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D355071CD
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Apr 2022 17:29:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ngpml-0005qJ-Mw; Tue, 19 Apr 2022 15:28:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3tMteYgkbAN8TZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ngp9b-0006mA-CZ
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Apr 2022 14:48:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c/9tMLsmyW+ec9cdOerK6T4FHULsK2MkJLxhvp9hn/w=; b=EozVe6T+weh0DbRruYx+4cxIZi
 ADRB3YG4OxQtCANbV6Wq8AOdUyel93aIt26wn/4kT/4p9nW0e3KdjCW+0ZE4cXlJgxlFJ0CDYSTtF
 WsjeTbekcgjSgT2YNnBYhQF0aLR5BezYsK68Vkykqrbh+TxDMlXzAHP+iCvUryATNC5Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=c/9tMLsmyW+ec9cdOerK6T4FHULsK2MkJLxhvp9hn/w=; b=b
 AP4rt7EIRlrSqKrdA7rSGvZX9AuTTERYFWJpEHnHJzB7r26M+pJ13rYMtKvGVVN1U9xR8isZ9xv84
 S3yT9yndqx1Tu6hqBVJYRLRLG6NFjB++kuvmAQnVfvkAUV3jIvtL0kASsgxZinCFtHBUn3wzK6LXG
 VyxKmgeS7EC21T2I=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1ngp9Z-0004pK-Lt
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Apr 2022 14:48:30 +0000
Received: by mail-il1-f199.google.com with SMTP id
 j5-20020a056e020ee500b002cbc90840ecso9646376ilk.23
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 19 Apr 2022 07:48:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=c/9tMLsmyW+ec9cdOerK6T4FHULsK2MkJLxhvp9hn/w=;
 b=kuLT3VXbKG89HPpOyvnOO2seKMPdqrRrPnnikP+/dbgiXbUBhYFsMXnyp8Hl8V3xCS
 Px/C8pvzL/Ajo/U++0YLNIJL30JkRTLFpY2RDX4Pa2+o04zMgaCFhhbEba6tLOz1TwL6
 9zZGOcsKky40vv6EZtGPTzGP4ewpe1Y5vQsnthzWM3o6qDZh6WVc4yOLuMZiVc+/nHlK
 +q8f3kLySS+nUJZe+msGi0CQgaCGHjZ+kpg+RePv0cm2nbfzYogIokvhBt6sZZZtCmQs
 qXPtlaXOHHlgoqQPwY28BfpHcJs6ppORYdtYXUzl3q1KuX+k0KrrkGfvxCxRwmOdd7tT
 44dA==
X-Gm-Message-State: AOAM532JYFtY5iFCGMKZ6PwVqM++cJ8W2hOHrtXP9mCp12GNRTe+9tqG
 Vv3afmVUzE0ZVgJB53K7aMe2EqAnG6Vi5qy/82PbETywy8G4
X-Google-Smtp-Source: ABdhPJzKeYUsExd1iwqXfaLZUp4OcogkgLOYRlalf2CtbL0lZRHLTJ31twmPmGW+9bzVP9CCJvLErKtpeq2Km01VsGEm/DR33j00
MIME-Version: 1.0
X-Received: by 2002:a05:6638:41a7:b0:328:9c72:ce4a with SMTP id
 az39-20020a05663841a700b003289c72ce4amr3362674jab.101.1650379700873; Tue, 19
 Apr 2022 07:48:20 -0700 (PDT)
Date: Tue, 19 Apr 2022 07:48:20 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d0adc505dd02f79c@google.com>
From: syzbot <syzbot+9f410ed4b81c17d33aea@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 42e7a03d3bad
 Merge tag 'hyperv-fixes-signed-20220407' of g.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=133f5fc4f00000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
X-Headers-End: 1ngp9Z-0004pK-Lt
X-Mailman-Approved-At: Tue, 19 Apr 2022 15:28:57 +0000
Subject: [Jfs-discussion] [syzbot] general protection fault in lmLogSync
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    42e7a03d3bad Merge tag 'hyperv-fixes-signed-20220407' of g..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=133f5fc4f00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=748af9f920dd8cc0
dashboard link: https://syzkaller.appspot.com/bug?extid=9f410ed4b81c17d33aea
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9f410ed4b81c17d33aea@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xdffffc0000000006: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000030-0x0000000000000037]
CPU: 1 PID: 3620 Comm: syz-executor.0 Not tainted 5.18.0-rc1-syzkaller-00037-g42e7a03d3bad #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:write_special_inodes fs/jfs/jfs_logmgr.c:208 [inline]
RIP: 0010:lmLogSync+0x237/0xb10 fs/jfs/jfs_logmgr.c:945
Code: b8 fe 49 8d 5f f0 48 89 d8 48 c1 e8 03 42 80 3c 20 00 74 08 48 89 df e8 77 9e df fe 48 8b 1b 48 83 c3 30 48 89 d8 48 c1 e8 03 <42> 80 3c 20 00 74 08 48 89 df e8 5a 9e df fe 48 8b 3b e8 d2 8d b8
RSP: 0018:ffffc90003c5fc20 EFLAGS: 00010206
RAX: 0000000000000006 RBX: 0000000000000030 RCX: 489d1fdc36f69100
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc90003c5fd38 R08: ffffffff81afb023 R09: ffffc90003c5fb88
R10: fffff5200078bf74 R11: 1ffff9200078bf71 R12: dffffc0000000000
R13: ffff888077468000 R14: 0000000000000000 R15: ffff88807ba8f838
FS:  0000555556388400(0000) GS:ffff8880b9d00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005555559ac848 CR3: 00000000401fa000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_syncpt+0x79/0x90 fs/jfs/jfs_logmgr.c:1049
 jfs_sync_fs+0x86/0xa0 fs/jfs/super.c:689
 sync_filesystem+0xe8/0x220 fs/sync.c:56
 generic_shutdown_super+0x6b/0x300 fs/super.c:445
 kill_block_super+0x79/0xd0 fs/super.c:1394
 deactivate_locked_super+0xa7/0xf0 fs/super.c:332
 cleanup_mnt+0x452/0x500 fs/namespace.c:1186
 task_work_run+0x146/0x1c0 kernel/task_work.c:164
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 exit_to_user_mode_loop+0x134/0x160 kernel/entry/common.c:169
 exit_to_user_mode_prepare+0xad/0x110 kernel/entry/common.c:201
 __syscall_exit_to_user_mode_work kernel/entry/common.c:283 [inline]
 syscall_exit_to_user_mode+0x2e/0x70 kernel/entry/common.c:294
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f535d48a4b7
Code: ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc601d2388 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007f535d48a4b7
RDX: 00007ffc601d245b RSI: 000000000000000a RDI: 00007ffc601d2450
RBP: 00007ffc601d2450 R08: 00000000ffffffff R09: 00007ffc601d2220
R10: 00005555563898b3 R11: 0000000000000246 R12: 00007f535d4e21ea
R13: 00007ffc601d3510 R14: 0000555556389810 R15: 00007ffc601d3550
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:write_special_inodes fs/jfs/jfs_logmgr.c:208 [inline]
RIP: 0010:lmLogSync+0x237/0xb10 fs/jfs/jfs_logmgr.c:945
Code: b8 fe 49 8d 5f f0 48 89 d8 48 c1 e8 03 42 80 3c 20 00 74 08 48 89 df e8 77 9e df fe 48 8b 1b 48 83 c3 30 48 89 d8 48 c1 e8 03 <42> 80 3c 20 00 74 08 48 89 df e8 5a 9e df fe 48 8b 3b e8 d2 8d b8
RSP: 0018:ffffc90003c5fc20 EFLAGS: 00010206
RAX: 0000000000000006 RBX: 0000000000000030 RCX: 489d1fdc36f69100
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc90003c5fd38 R08: ffffffff81afb023 R09: ffffc90003c5fb88
R10: fffff5200078bf74 R11: 1ffff9200078bf71 R12: dffffc0000000000
R13: ffff888077468000 R14: 0000000000000000 R15: ffff88807ba8f838
FS:  0000555556388400(0000) GS:ffff8880b9d00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ff86d3691b8 CR3: 00000000401fa000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	b8 fe 49 8d 5f       	mov    $0x5f8d49fe,%eax
   5:	f0 48 89 d8          	lock mov %rbx,%rax
   9:	48 c1 e8 03          	shr    $0x3,%rax
   d:	42 80 3c 20 00       	cmpb   $0x0,(%rax,%r12,1)
  12:	74 08                	je     0x1c
  14:	48 89 df             	mov    %rbx,%rdi
  17:	e8 77 9e df fe       	callq  0xfedf9e93
  1c:	48 8b 1b             	mov    (%rbx),%rbx
  1f:	48 83 c3 30          	add    $0x30,%rbx
  23:	48 89 d8             	mov    %rbx,%rax
  26:	48 c1 e8 03          	shr    $0x3,%rax
* 2a:	42 80 3c 20 00       	cmpb   $0x0,(%rax,%r12,1) <-- trapping instruction
  2f:	74 08                	je     0x39
  31:	48 89 df             	mov    %rbx,%rdi
  34:	e8 5a 9e df fe       	callq  0xfedf9e93
  39:	48 8b 3b             	mov    (%rbx),%rdi
  3c:	e8                   	.byte 0xe8
  3d:	d2                   	.byte 0xd2
  3e:	8d                   	.byte 0x8d
  3f:	b8                   	.byte 0xb8


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
