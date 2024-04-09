Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D0E89D9FB
	for <lists+jfs-discussion@lfdr.de>; Tue,  9 Apr 2024 15:19:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ruBND-0003zF-Fc;
	Tue, 09 Apr 2024 13:18:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3nt4UZgkbAOUZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ru4sO-0002Cr-8S for jfs-discussion@lists.sourceforge.net;
 Tue, 09 Apr 2024 06:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W2VcRzoo9Ftq1sUhypIxLcNGWAhae/L/KjOgqxMZoZ4=; b=JAyoXswtzzDAobWf1xIUlt2VLN
 Ile/I0NfQhrBIMx1QLIIUWQMbeQH8B5yDarWLcGR78Qu6dw/8sVtbBUSBTWPoDy5GWody2IbmbDeC
 uyjrV3h43zWrdFNdbdzuO7VVHZZyqXAf8W2dcS5e0olqt/ChJ4ronbWHi9mivV3QDDuw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=W2VcRzoo9Ftq1sUhypIxLcNGWAhae/L/KjOgqxMZoZ4=; b=R
 +/vIDRRTbHDMh5mH44dqN51qczrodDtjaTWkiAdC6xzdL5R0DnBwjjkae0KWTGLx5Vi54Rw+vesje
 vJ+VHuSZN3esQ7mJrbVM48pr88xP+7YzMo6dhB37wXXyFltH6CSmPWwcpMnx2JrJnAwihFyWJmwSh
 OMa/f5bgeCiqAdnI=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ru4sL-0006zm-CX for jfs-discussion@lists.sourceforge.net;
 Tue, 09 Apr 2024 06:22:36 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7d622cae9e4so17116939f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 08 Apr 2024 23:22:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712643742; x=1713248542;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=W2VcRzoo9Ftq1sUhypIxLcNGWAhae/L/KjOgqxMZoZ4=;
 b=rzeh+akbd3mD3YxMU2mhFDeBoVTHhcAazohTg2dzBSLJPItiIC/6xfiQ35OqkmN3jP
 v3ptkBlXqTkB9/lui1jhoa0+K/biXSNxRj/YFIXyuzfGyeuthtXplNEyqNVv5gtB6Upe
 FtRuhwiwlKANlGuu0lrFXVi+DWXDcmvfm7I9rnl+JPdrgDL1EsMKfj0fUZIhtP9n12c5
 lPSOR7+KGr7BGqNU9U+0tK8LX9KLtGpERxwbu+Ru3p6AXxjV1aj3DtLAhyTw6kUdi+xN
 6PgdV1mzZKTBnN9gGwavjSA0GOI3jLBNfU+wn7Ty2txaWU8gpzZMYioBTuRZCY8mk98R
 eLEg==
X-Gm-Message-State: AOJu0YwGEHfdqwC7jBdnWHIA7mtJ3bIE8h28RyYProPHXzxcZhlS0H0W
 cuApMK3om/LGC3kqeNh8kI0OoptOEpCIAYLn3bAyht8o60fGkZOx3KlHOB1MwoBuFEBEhdfUIRS
 7fQpYaVX5YmVxP2MfmIq5axAbtbluUIAC73oLH6Gasz5dSRH/ju9EXU/MVw==
X-Google-Smtp-Source: AGHT+IFRW3/zEzexbjjNNBFAvgsMDQ1pCF2FxKoPSjG/ggONSo/rGJv98NsJxBnSf0frAcFlYDFvvEZZZiEYfS0E9OrGOvdzMxrV
MIME-Version: 1.0
X-Received: by 2002:a05:6638:2607:b0:482:8cc1:4eaf with SMTP id
 m7-20020a056638260700b004828cc14eafmr389254jat.5.1712643742784; Mon, 08 Apr
 2024 23:22:22 -0700 (PDT)
Date: Mon, 08 Apr 2024 23:22:22 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ea6cba0615a3f177@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: fe46a7dd189e
 Merge tag 'sound-6.9-rc1' of git://git.kernel.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=10056223180000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1ru4sL-0006zm-CX
X-Mailman-Approved-At: Tue, 09 Apr 2024 13:18:50 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] general protection fault in
 dtInsertEntry
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
Reply-To: syzbot <syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    fe46a7dd189e Merge tag 'sound-6.9-rc1' of git://git.kernel..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=10056223180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4d90a36f0cab495a
dashboard link: https://syzkaller.appspot.com/bug?extid=bba84aef3a26fb93deb9
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10548115180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=136ecbb5180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/72ab73815344/disk-fe46a7dd.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2d6d6b0d7071/vmlinux-fe46a7dd.xz
kernel image: https://storage.googleapis.com/syzbot-assets/48e275e5478b/bzImage-fe46a7dd.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/06e004bee618/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1401ee15180000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1601ee15180000
console output: https://syzkaller.appspot.com/x/log.txt?x=1201ee15180000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
general protection fault, probably for non-canonical address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
CPU: 0 PID: 5061 Comm: syz-executor404 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
RIP: 0010:dtInsertEntry+0xd0c/0x1780 fs/jfs/jfs_dtree.c:3713
Code: 83 e6 02 31 ff e8 a4 3f 75 fe 83 e3 02 75 3a e8 9a 3c 75 fe 48 8b 9c 24 a8 00 00 00 48 83 c3 08 48 89 d8 48 c1 e8 03 4c 89 f2 <42> 0f b6 04 30 84 c0 74 3e 89 d9 80 e1 07 38 c1 7c 35 48 89 df e8
RSP: 0018:ffffc9000381f060 EFLAGS: 00010202
RAX: 0000000000000001 RBX: 0000000000000008 RCX: ffff88801a715a00
RDX: dffffc0000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc9000381f210 R08: ffffffff831fb7ac R09: ffffffff832296af
R10: 0000000000000004 R11: ffff88801a715a00 R12: ffff88807adfb130
R13: ffffffffffffffff R14: dffffc0000000000 R15: 000000000000000d
FS:  000055558fe16380(0000) GS:ffff8880b9400000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000066c7e0 CR3: 000000002ca48000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 dtInsert+0xbf1/0x6b00 fs/jfs/jfs_dtree.c:891
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
RIP: 0033:0x7f30b7a475f9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fffd9c3bfb8 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 00007fffd9c3c198 RCX: 00007f30b7a475f9
RDX: 000000000000275a RSI: 0000000020000080 RDI: 00000000ffffff9c
RBP: 00007f30b7ac0610 R08: 0000000000005e33 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000001
R13: 00007fffd9c3c188 R14: 0000000000000001 R15: 0000000000000001
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:dtInsertEntry+0xd0c/0x1780 fs/jfs/jfs_dtree.c:3713
Code: 83 e6 02 31 ff e8 a4 3f 75 fe 83 e3 02 75 3a e8 9a 3c 75 fe 48 8b 9c 24 a8 00 00 00 48 83 c3 08 48 89 d8 48 c1 e8 03 4c 89 f2 <42> 0f b6 04 30 84 c0 74 3e 89 d9 80 e1 07 38 c1 7c 35 48 89 df e8
RSP: 0018:ffffc9000381f060 EFLAGS: 00010202
RAX: 0000000000000001 RBX: 0000000000000008 RCX: ffff88801a715a00
RDX: dffffc0000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc9000381f210 R08: ffffffff831fb7ac R09: ffffffff832296af
R10: 0000000000000004 R11: ffff88801a715a00 R12: ffff88807adfb130
R13: ffffffffffffffff R14: dffffc0000000000 R15: 000000000000000d
FS:  000055558fe16380(0000) GS:ffff8880b9500000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000557bf42357e0 CR3: 000000002ca48000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	83 e6 02             	and    $0x2,%esi
   3:	31 ff                	xor    %edi,%edi
   5:	e8 a4 3f 75 fe       	call   0xfe753fae
   a:	83 e3 02             	and    $0x2,%ebx
   d:	75 3a                	jne    0x49
   f:	e8 9a 3c 75 fe       	call   0xfe753cae
  14:	48 8b 9c 24 a8 00 00 	mov    0xa8(%rsp),%rbx
  1b:	00
  1c:	48 83 c3 08          	add    $0x8,%rbx
  20:	48 89 d8             	mov    %rbx,%rax
  23:	48 c1 e8 03          	shr    $0x3,%rax
  27:	4c 89 f2             	mov    %r14,%rdx
* 2a:	42 0f b6 04 30       	movzbl (%rax,%r14,1),%eax <-- trapping instruction
  2f:	84 c0                	test   %al,%al
  31:	74 3e                	je     0x71
  33:	89 d9                	mov    %ebx,%ecx
  35:	80 e1 07             	and    $0x7,%cl
  38:	38 c1                	cmp    %al,%cl
  3a:	7c 35                	jl     0x71
  3c:	48 89 df             	mov    %rbx,%rdi
  3f:	e8                   	.byte 0xe8


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
