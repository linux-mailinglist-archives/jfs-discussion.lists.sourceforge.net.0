Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 535EF5F315C
	for <lists+jfs-discussion@lfdr.de>; Mon,  3 Oct 2022 15:38:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ofLeU-00007S-Mo;
	Mon, 03 Oct 2022 13:38:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <35945YwkbAKweklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1of48t-0001W0-WD for jfs-discussion@lists.sourceforge.net;
 Sun, 02 Oct 2022 18:56:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xiWdMDELiF+JnAzjzXKmcwyYPMVW08sJ4DWmwAsHbpM=; b=lsl+LUX5gi6LN0bGIxJjvvnJja
 dz5etURS2w6kz+vZknXrmOAZ2ppWqrzpZM3BvXbyVqqH0ORmcaMSsrU+/szYKGVwAOjs4+jfUynUJ
 Gg51LPRa/CdAFh55SJtuk/DII7C6dE4WkwIflag0rx9BUzjPVSjFdoy+Z+XN22/UeMXg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xiWdMDELiF+JnAzjzXKmcwyYPMVW08sJ4DWmwAsHbpM=; b=M
 5p66eZbTQP7t58B+cwGpjvW2OoiQ5QDU+RCVC40KXLYCl6vUnaoupHIR0SdSMXh/y99U2lgrUtT8d
 umHUN4jgBkQrBT75U9WKrblkj6QoWCWTImtZaKZasW/5eAofKPjMzalQ+RDI1E6ReU55RDHPJaPGo
 8hn8EpR7L4PAHKv8=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1of48s-00A8l5-ON for jfs-discussion@lists.sourceforge.net;
 Sun, 02 Oct 2022 18:56:47 +0000
Received: by mail-il1-f199.google.com with SMTP id
 i8-20020a056e0212c800b002f9a4c75658so1890604ilm.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 02 Oct 2022 11:56:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=xiWdMDELiF+JnAzjzXKmcwyYPMVW08sJ4DWmwAsHbpM=;
 b=3IGbhYZzUoUyqI6LKeamHVK7b3n8nIfTbpD2mqPxLzOQ+livBXWfExvtB8FAAgs5Er
 RKyZU543iTBhmUYQhHTIaXoN60GgB9A2VeIeYm8RcnRrJDTQ9P3teGCEKgh8zH5DifRM
 thUAEzbO1rGoKy3+89mECJmaOfm+sBpvG/dxVj+69VrFuPgkKgRj6YqXqa32T5qWxy9+
 OrjgT8ktWldzcZHH8FdBNTWBYaOzKw9Uxpl5AzN8OBrfGhoqJZnihyRScyWCbgZe61eV
 M0vntDZL7HKpXCK9r9z/9tAAXWxr7czF9Yz47wWZdISNmAD7AT+nEyOu8ZIHtG7euxZU
 qX9g==
X-Gm-Message-State: ACrzQf2fzMhD8EOE7Fj8AAttgFvwZsrB7HQXMUqu0O+7NcEop4QgNtKV
 Yd+ccSJkCKHKo2zcGznWSOGr9SNkjUjYsPAgMHJ985r2AuqM
X-Google-Smtp-Source: AMsMyM7tGZdiWFcoqzv+8TSI11itBAIYe2vSvTRoIyX931syH6WrVr31mQkXykfnnf9xtXaFFf5rZrTZEwnnDr/6GxgzRV9NDJbf
MIME-Version: 1.0
X-Received: by 2002:a05:6602:1311:b0:6a5:1b2f:e340 with SMTP id
 h17-20020a056602131100b006a51b2fe340mr7282860iov.66.1664736999620; Sun, 02
 Oct 2022 11:56:39 -0700 (PDT)
Date: Sun, 02 Oct 2022 11:56:39 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000081c7c405ea11c907@google.com>
From: syzbot <syzbot+194bfe3476f96782c0b6@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: b357fd1c2afc
 Merge tag 'usb-6.0-final' of git://git.kernel.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=12bffb70880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1of48s-00A8l5-ON
X-Mailman-Approved-At: Mon, 03 Oct 2022 13:38:33 +0000
Subject: [Jfs-discussion] [syzbot] general protection fault in
 jfs_flush_journal
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

HEAD commit:    b357fd1c2afc Merge tag 'usb-6.0-final' of git://git.kernel..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=12bffb70880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1047ec68880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10409722880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/c3f38889d41b/disk-b357fd1c.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/8b4dacf1eadb/vmlinux-b357fd1c.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+194bfe3476f96782c0b6@syzkaller.appspotmail.com

ERROR: (device loop4): diRead: i_ino != di_number
general protection fault, probably for non-canonical address 0xdffffc0000000006: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000030-0x0000000000000037]
CPU: 0 PID: 3626 Comm: syz-executor291 Not tainted 6.0.0-rc7-syzkaller-00239-gb357fd1c2afc #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
RIP: 0010:write_special_inodes fs/jfs/jfs_logmgr.c:208 [inline]
RIP: 0010:jfs_flush_journal+0x7e7/0xec0 fs/jfs/jfs_logmgr.c:1573
Code: b1 fe 49 8d 5f f0 48 89 d8 48 c1 e8 03 42 80 3c 28 00 74 08 48 89 df e8 17 d5 d9 fe 48 8b 1b 48 83 c3 30 48 89 d8 48 c1 e8 03 <42> 80 3c 28 00 74 08 48 89 df e8 fa d4 d9 fe 48 8b 3b e8 f2 f3 b1
RSP: 0018:ffffc900039af9e0 EFLAGS: 00010206

RAX: 0000000000000006 RBX: 0000000000000030 RCX: 29e26a118b04f100
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc900039afb10 R08: ffffffff81b29a43 R09: ffffc900039af930
R10: fffff52000735f29 R11: 1ffff92000735f26 R12: 1ffff92000735f48
R13: dffffc0000000000 R14: ffff8880246d3800 R15: ffff88801e196038
FS:  0000555557105300(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffd2b406000 CR3: 0000000073f69000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_umount+0xf3/0x370 fs/jfs/jfs_umount.c:58
 jfs_fill_super+0x911/0xc50 fs/jfs/super.c:600
 mount_bdev+0x26c/0x3a0 fs/super.c:1400
 legacy_get_tree+0xea/0x180 fs/fs_context.c:610
 vfs_get_tree+0x88/0x270 fs/super.c:1530
 do_new_mount+0x289/0xad0 fs/namespace.c:3040
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount+0x2d3/0x3c0 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f8daf79e56a
Code: 48 c7 c2 c0 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 a8 00 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd2b4051a8 EFLAGS: 00000282 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007f8daf79e56a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffd2b4051c0
RBP: 00007ffd2b4051c0 R08: 00007ffd2b405200 R09: 0000000000000002
R10: 0000000000000000 R11: 0000000000000282 R12: 0000000000000004
R13: 00007ffd2b405200 R14: 0000000000000357 R15: 0000000020005228
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:write_special_inodes fs/jfs/jfs_logmgr.c:208 [inline]
RIP: 0010:jfs_flush_journal+0x7e7/0xec0 fs/jfs/jfs_logmgr.c:1573
Code: b1 fe 49 8d 5f f0 48 89 d8 48 c1 e8 03 42 80 3c 28 00 74 08 48 89 df e8 17 d5 d9 fe 48 8b 1b 48 83 c3 30 48 89 d8 48 c1 e8 03 <42> 80 3c 28 00 74 08 48 89 df e8 fa d4 d9 fe 48 8b 3b e8 f2 f3 b1
RSP: 0018:ffffc900039af9e0 EFLAGS: 00010206
RAX: 0000000000000006 RBX: 0000000000000030 RCX: 29e26a118b04f100
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc900039afb10 R08: ffffffff81b29a43 R09: ffffc900039af930
R10: fffff52000735f29 R11: 1ffff92000735f26 R12: 1ffff92000735f48
R13: dffffc0000000000 R14: ffff8880246d3800 R15: ffff88801e196038
FS:  0000555557105300(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f8daf7afa10 CR3: 0000000073f69000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	b1 fe                	mov    $0xfe,%cl
   2:	49 8d 5f f0          	lea    -0x10(%r15),%rbx
   6:	48 89 d8             	mov    %rbx,%rax
   9:	48 c1 e8 03          	shr    $0x3,%rax
   d:	42 80 3c 28 00       	cmpb   $0x0,(%rax,%r13,1)
  12:	74 08                	je     0x1c
  14:	48 89 df             	mov    %rbx,%rdi
  17:	e8 17 d5 d9 fe       	callq  0xfed9d533
  1c:	48 8b 1b             	mov    (%rbx),%rbx
  1f:	48 83 c3 30          	add    $0x30,%rbx
  23:	48 89 d8             	mov    %rbx,%rax
  26:	48 c1 e8 03          	shr    $0x3,%rax
* 2a:	42 80 3c 28 00       	cmpb   $0x0,(%rax,%r13,1) <-- trapping instruction
  2f:	74 08                	je     0x39
  31:	48 89 df             	mov    %rbx,%rdi
  34:	e8 fa d4 d9 fe       	callq  0xfed9d533
  39:	48 8b 3b             	mov    (%rbx),%rdi
  3c:	e8                   	.byte 0xe8
  3d:	f2                   	repnz
  3e:	f3                   	repz
  3f:	b1                   	.byte 0xb1


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
