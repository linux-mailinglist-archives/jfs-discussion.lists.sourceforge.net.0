Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E4D91E0FB
	for <lists+jfs-discussion@lfdr.de>; Mon,  1 Jul 2024 15:40:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sOHGO-00026h-A7;
	Mon, 01 Jul 2024 13:40:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3bSSCZgkbAPgx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sO7r5-0007Hl-QW for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Jul 2024 03:37:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=brpGvYzpcbhh9fUA6/3JW0tDMLR/rtYxc986AuqoxmQ=; b=D0h9xBRQBDAB9nFSmjwCROU4NT
 WFYYWVgoF2xEDnkC8j6lKc68fmNFPIRCXH+TM2LyuqeQ13vKUy++bBdV7wDoQG3O8qTsnVi7Pl1I0
 g4hR2v5Phq9GVkLX3gbkwNb74qj33aSXxNtWqnvES9Ooy1nVqsPH48QRX3S6BXOAYM4s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=brpGvYzpcbhh9fUA6/3JW0tDMLR/rtYxc986AuqoxmQ=; b=U
 fJaF+Xjok/ZvzKnE5k2yWE6/2AW0dZf71Ah0PexbhYqUglHWwFL/UqaUyUDo++jb2RJjI1hJAp5NU
 tAl1RblfaXq7Awx99hn7Zqz/CoYQJ4wfCyPertRMp+DQe4zsnFg7SrVdsnvJH/Rzuh6VUCDGHNxuY
 FNLRmyE3aGB/Y+a0=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sO7r6-0005UD-Tq for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Jul 2024 03:37:28 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7f61f4c998bso265696739f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 30 Jun 2024 20:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719805037; x=1720409837;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=brpGvYzpcbhh9fUA6/3JW0tDMLR/rtYxc986AuqoxmQ=;
 b=jskJUQ4E6PJ0zBPZRjLdNQLLamCAd1rYBHXYil6duxzhDMuZ0DGDbozQzO93Nr1vK5
 hk2XOLHByXnd+CroFSsfE6W9KwYXgoVHfl8KB/xo6/7cFE8mBhax+f9yP4xEtih3/Bp6
 c2WM1Kc/goVI4JDwIjhLdnRM9DuHVzjnNMA3sRXC5oNdGpJpx0a3dkiyHX8loQNkcD2W
 qlYeeZ9e8cCZPx26ov+tM9xPVgFFCwEO6FRyiFGPkd9n9DiO37JZ0x9tZVjUXQ7/5GcN
 WYlqxkXFCR+aBHHVFYMntsxJMFjD40AL1/jOPUA4k97h5WNzwKgMeysboe9QIveLznSI
 DKiA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWXvtG2LR1dxfUAUfZXgKJNvm293roTwAGxPNuivvPPUsxmyqDmKua3py3xgeX2rx6r3DtSk4likjqkQNxIt6IvR6S980zL43UfeRtZwh3+qU5oHXQ=
X-Gm-Message-State: AOJu0YxoMcexuMunOFLBrDX5jP/NEMSveCnVZAAzpA09ZiKz/s9k8+ER
 qt+7iCsr45TYKQPt/lVynHCB+EN1F9rD1rhahzRUCDlafB69ZiAh3YxVGgLkuW48xuAVvFgMV9h
 5BVI/KCckv2ezXPtPYQXnS49To35zphgKu2YydKDo6xzcuDVAqZNKPrc=
X-Google-Smtp-Source: AGHT+IHGmbk4v7zliBt7jsW5okx+VA9mQBhi096gfHadXySgkjHtOQVYgpeeQVuRFY2QL4Sg/mvoPHYAs6HSfY90bS9xkJS3V6sa
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1643:b0:4b9:6e79:8155 with SMTP id
 8926c6da1cb9f-4bbb6e58a58mr324283173.3.1719805037474; Sun, 30 Jun 2024
 20:37:17 -0700 (PDT)
Date: Sun, 30 Jun 2024 20:37:17 -0700
In-Reply-To: <000000000000a8bd7b060f8ce57d@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000578284061c275062@google.com>
To: brauner@kernel.org, eadavis@qq.com, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, jlayton@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 samsun1006219@gmail.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com, 
 xrivendell7@gmail.com
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: e0b668b07034 Merge tag 'kbuild-fixes-v6.10-3' of git://git..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=1410f701980000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
X-Headers-End: 1sO7r6-0005UD-Tq
X-Mailman-Approved-At: Mon, 01 Jul 2024 13:40:11 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] general protection fault in
 diRead (2)
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
Reply-To: syzbot <syzbot+8f731999dc47797f064f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    e0b668b07034 Merge tag 'kbuild-fixes-v6.10-3' of git://git..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1410f701980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=67463c0717b8d4ca
dashboard link: https://syzkaller.appspot.com/bug?extid=8f731999dc47797f064f
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16746281980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ed13da6c8dba/disk-e0b668b0.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9d6deb7033b3/vmlinux-e0b668b0.xz
kernel image: https://storage.googleapis.com/syzbot-assets/e11ed9921d74/bzImage-e0b668b0.xz
mounted in repro #1: https://storage.googleapis.com/syzbot-assets/eb462546ac65/mount_0.gz
mounted in repro #2: https://storage.googleapis.com/syzbot-assets/99f39780fc30/mount_3.gz
mounted in repro #3: https://storage.googleapis.com/syzbot-assets/04d3c406f9d9/mount_12.gz
mounted in repro #4: https://storage.googleapis.com/syzbot-assets/7c2f2b18cf02/mount_19.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+8f731999dc47797f064f@syzkaller.appspotmail.com

Oops: general protection fault, probably for non-canonical address 0xdffffc0000000104: 0000 [#1] PREEMPT SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000820-0x0000000000000827]
CPU: 0 PID: 6386 Comm: syz-executor Not tainted 6.10.0-rc5-syzkaller-00348-ge0b668b07034 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/07/2024
RIP: 0010:diIAGRead fs/jfs/jfs_imap.c:2662 [inline]
RIP: 0010:diRead+0x158/0xae0 fs/jfs/jfs_imap.c:316
Code: 8d 5d 80 48 89 d8 48 c1 e8 03 42 80 3c 38 00 74 08 48 89 df e8 e9 56 d8 fe 4c 8b 2b 49 8d 9d 20 08 00 00 48 89 d8 48 c1 e8 03 <42> 80 3c 38 00 74 08 48 89 df e8 c9 56 d8 fe 4c 8b 3b 49 8d 5f 28
RSP: 0018:ffffc90004d17758 EFLAGS: 00010202
RAX: 0000000000000104 RBX: 0000000000000820 RCX: 0000000000000001
RDX: 0000000000000001 RSI: 0000000000000008 RDI: 0000000000000001
RBP: ffff888068d716b0 R08: ffff888068d71357 R09: 1ffff1100d1ae26a
R10: dffffc0000000000 R11: ffffed100d1ae26b R12: 0000000000000006
R13: 0000000000000000 R14: ffff888068d71348 R15: dffffc0000000000
FS:  00005555954e3500(0000) GS:ffff8880b9400000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555595506608 CR3: 000000002bd0e000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_iget+0x8c/0x3b0 fs/jfs/inode.c:35
 jfs_lookup+0x226/0x410 fs/jfs/namei.c:1469
 __lookup_slow+0x28c/0x3f0 fs/namei.c:1692
 lookup_slow+0x53/0x70 fs/namei.c:1709
 walk_component+0x2e1/0x410 fs/namei.c:2004
 lookup_last fs/namei.c:2469 [inline]
 path_lookupat+0x16f/0x450 fs/namei.c:2493
 filename_lookup+0x256/0x610 fs/namei.c:2522
 user_path_at_empty+0x42/0x60 fs/namei.c:2929
 user_path_at include/linux/namei.h:58 [inline]
 ksys_umount fs/namespace.c:1916 [inline]
 __do_sys_umount fs/namespace.c:1924 [inline]
 __se_sys_umount fs/namespace.c:1922 [inline]
 __x64_sys_umount+0xf4/0x170 fs/namespace.c:1922
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f6ce4976ec7
Code: a8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 01 c3 48 c7 c2 a8 ff ff ff f7 d8 64 89 02 b8
RSP: 002b:00007ffda0a75a88 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: ffffffffffffffda RBX: 00007f6ce49e364a RCX: 00007f6ce4976ec7
RDX: 0000000000000000 RSI: 0000000000000009 RDI: 00007ffda0a75b40
RBP: 00007ffda0a75b40 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000246 R12: 00007ffda0a76c30
R13: 00007f6ce49e364a R14: 0000000000064c17 R15: 00007ffda0a77d20
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:diIAGRead fs/jfs/jfs_imap.c:2662 [inline]
RIP: 0010:diRead+0x158/0xae0 fs/jfs/jfs_imap.c:316
Code: 8d 5d 80 48 89 d8 48 c1 e8 03 42 80 3c 38 00 74 08 48 89 df e8 e9 56 d8 fe 4c 8b 2b 49 8d 9d 20 08 00 00 48 89 d8 48 c1 e8 03 <42> 80 3c 38 00 74 08 48 89 df e8 c9 56 d8 fe 4c 8b 3b 49 8d 5f 28
RSP: 0018:ffffc90004d17758 EFLAGS: 00010202
RAX: 0000000000000104 RBX: 0000000000000820 RCX: 0000000000000001
RDX: 0000000000000001 RSI: 0000000000000008 RDI: 0000000000000001
RBP: ffff888068d716b0 R08: ffff888068d71357 R09: 1ffff1100d1ae26a
R10: dffffc0000000000 R11: ffffed100d1ae26b R12: 0000000000000006
R13: 0000000000000000 R14: ffff888068d71348 R15: dffffc0000000000
FS:  00005555954e3500(0000) GS:ffff8880b9500000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000c00272b000 CR3: 000000002bd0e000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	8d 5d 80             	lea    -0x80(%rbp),%ebx
   3:	48 89 d8             	mov    %rbx,%rax
   6:	48 c1 e8 03          	shr    $0x3,%rax
   a:	42 80 3c 38 00       	cmpb   $0x0,(%rax,%r15,1)
   f:	74 08                	je     0x19
  11:	48 89 df             	mov    %rbx,%rdi
  14:	e8 e9 56 d8 fe       	call   0xfed85702
  19:	4c 8b 2b             	mov    (%rbx),%r13
  1c:	49 8d 9d 20 08 00 00 	lea    0x820(%r13),%rbx
  23:	48 89 d8             	mov    %rbx,%rax
  26:	48 c1 e8 03          	shr    $0x3,%rax
* 2a:	42 80 3c 38 00       	cmpb   $0x0,(%rax,%r15,1) <-- trapping instruction
  2f:	74 08                	je     0x39
  31:	48 89 df             	mov    %rbx,%rdi
  34:	e8 c9 56 d8 fe       	call   0xfed85702
  39:	4c 8b 3b             	mov    (%rbx),%r15
  3c:	49 8d 5f 28          	lea    0x28(%r15),%rbx


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
