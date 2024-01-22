Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC7183711D
	for <lists+jfs-discussion@lfdr.de>; Mon, 22 Jan 2024 19:55:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rRzRn-0006St-QQ;
	Mon, 22 Jan 2024 18:55:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3I7KuZQkbAHYmsteUffYlUjjcX.aiiafYomYlWihnYhn.Wig@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rRyvN-0005vQ-NZ for jfs-discussion@lists.sourceforge.net;
 Mon, 22 Jan 2024 18:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YnaoVp1irieECTQ/9o+xOEHhdBMmk3Nj9+2Kmy+DxVg=; b=CAKUrGz7tlfPFW9O7yM2QCxLAV
 oqLgNWDtcl7NXsvzeEFb+Lq7t1/2P23m8GrucH6qvwqPSqhAqNlNZa8ZOfXZP/jT0DavVkGhLniHX
 AcAlDADCimzoMR8RIdUX7tTVmDSCeVQbihH5R+xHZq7K+j6a9UTs/j7VBE32AKLpzyfU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YnaoVp1irieECTQ/9o+xOEHhdBMmk3Nj9+2Kmy+DxVg=; b=G
 zWLqbfnJlTrg+w92zmLuXFoZ5NidcO39qnKrblki6L0PtrIEctm/UzmM+/GXp2KGHBpbIJPtTvrwm
 LZO355X5iBHgzOgDgOJ3fs97DCP2g0X9OUAnvPkb/awYIhmQbCGDqPIIcYiT49PwtNauV4dVjiKWJ
 WYymu9bSOZtK0Hio=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rRyvN-0000O9-1T for jfs-discussion@lists.sourceforge.net;
 Mon, 22 Jan 2024 18:21:34 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-361917dccfbso22450445ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 22 Jan 2024 10:21:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705947683; x=1706552483;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YnaoVp1irieECTQ/9o+xOEHhdBMmk3Nj9+2Kmy+DxVg=;
 b=IWi+c5sj3j8ZCVYTiTnkCOsdCTOkdtaQmPhDBaD06n9wg5U/QDFVphv98g0alUP+H4
 NKroAG3ON+OuZcfhh64DKZ+009aT+/kp0R8FwqQyFaOZajzDweVp10p3LMhTa7SxYCw2
 l/hmtfpyD8gct0tRmvTEridpwg09NwtEe8zhIdnivZJbDbe1P4ge9jOe+M5qSa9/StjZ
 tAfd5jvKWNNSMroXQ06z9WscTKO9aRFQZGK57/L0tfH89tt0QCsEuQpM5KRF+7JSIkAh
 Mmdr/Hwdxf/sVPCx4/VVe6CCk6DBLeOY5lb4zG4PYdwgzyYJgZu2wCMPSY8Ge/7TFNYQ
 HuDQ==
X-Gm-Message-State: AOJu0YzZZwvhCJJ8pfPAT8WyDzmM81+1BDb3xRTjzG6FTau+t/qoQuPW
 hMgUMvq+0VBGO9hyGk3DaFf57/wtPp205jHJMbjz15jrP23HmLFEfNM4mCaRQrVJxN5TaNxVRUq
 mw79zRB1L441jPRQ4uHF9RKbQUWVZPeqnJRcJlGznZTbCsFC4NEafsAU86w==
X-Google-Smtp-Source: AGHT+IFqXFii+QXaNjXd/fck1JDCiigaLQ7JN+pX/rX2FewG6k4cg3O5RFBP1m0kld32rTI7PpqWvkWC4x02KFvi0n8v5dDf5Qji
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:b4a:b0:360:17a7:d897 with SMTP id
 f10-20020a056e020b4a00b0036017a7d897mr520922ilu.4.1705947683140; Mon, 22 Jan
 2024 10:21:23 -0800 (PST)
Date: Mon, 22 Jan 2024 10:21:23 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a8bd7b060f8ce57d@google.com>
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
 syzbot found the following issue on: HEAD commit: 6613476e225e
 Linux 6.8-rc1 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=17dc7427e80000
 kernel config: https://syzkaller.appspot.com/x/.config?x=909746d6edb [...]
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRyvN-0000O9-1T
X-Mailman-Approved-At: Mon, 22 Jan 2024 18:55:02 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] general protection fault in diRead
 (2)
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

Hello,

syzbot found the following issue on:

HEAD commit:    6613476e225e Linux 6.8-rc1
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=17dc7427e80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=909746d6edb125d7
dashboard link: https://syzkaller.appspot.com/bug?extid=8f731999dc47797f064f
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/d0edbd1edbe1/disk-6613476e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9a389b6bdd04/vmlinux-6613476e.xz
kernel image: https://storage.googleapis.com/syzbot-assets/eedf993f8f5d/bzImage-6613476e.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+8f731999dc47797f064f@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xdffffc0000000104: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000820-0x0000000000000827]
CPU: 0 PID: 6815 Comm: syz-executor.3 Not tainted 6.8.0-rc1-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 11/17/2023
RIP: 0010:diIAGRead fs/jfs/jfs_imap.c:2662 [inline]
RIP: 0010:diRead+0x158/0xae0 fs/jfs/jfs_imap.c:316
Code: 8d 5d 80 48 89 d8 48 c1 e8 03 42 80 3c 38 00 74 08 48 89 df e8 69 d4 d7 fe 4c 8b 2b 49 8d 9d 20 08 00 00 48 89 d8 48 c1 e8 03 <42> 80 3c 38 00 74 08 48 89 df e8 49 d4 d7 fe 4c 8b 3b 49 8d 5f 28
RSP: 0018:ffffc9000486f658 EFLAGS: 00010202
RAX: 0000000000000104 RBX: 0000000000000820 RCX: 0000000000000001
RDX: 0000000000000001 RSI: 0000000000000008 RDI: 0000000000000001
RBP: ffff888037fbf330 R08: ffff888037fbefd7 R09: 1ffff11006ff7dfa
R10: dffffc0000000000 R11: ffffed1006ff7dfb R12: 0000000000000004
R13: 0000000000000000 R14: ffff888037fbefc8 R15: dffffc0000000000
FS:  00007f5fd8fbd6c0(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020010000 CR3: 000000007909f000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_iget+0x8c/0x3b0 fs/jfs/inode.c:35
 jfs_lookup+0x226/0x410 fs/jfs/namei.c:1469
 lookup_open fs/namei.c:3474 [inline]
 open_last_lookups fs/namei.c:3565 [inline]
 path_openat+0x1012/0x31e0 fs/namei.c:3795
 do_filp_open+0x234/0x490 fs/namei.c:3825
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1404
 do_sys_open fs/open.c:1419 [inline]
 __do_sys_open fs/open.c:1427 [inline]
 __se_sys_open fs/open.c:1423 [inline]
 __x64_sys_open+0x225/0x270 fs/open.c:1423
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf5/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x63/0x6b
RIP: 0033:0x7f5fd9c7cda9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 e1 20 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f5fd8fbd0c8 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 00007f5fd9dac120 RCX: 00007f5fd9c7cda9
RDX: 0000000000000000 RSI: 0000000000088043 RDI: 00000000200022c0
RBP: 00007f5fd9cc947a R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 000000000000000b R14: 00007f5fd9dac120 R15: 00007ffe5a2a8968
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:diIAGRead fs/jfs/jfs_imap.c:2662 [inline]
RIP: 0010:diRead+0x158/0xae0 fs/jfs/jfs_imap.c:316
Code: 8d 5d 80 48 89 d8 48 c1 e8 03 42 80 3c 38 00 74 08 48 89 df e8 69 d4 d7 fe 4c 8b 2b 49 8d 9d 20 08 00 00 48 89 d8 48 c1 e8 03 <42> 80 3c 38 00 74 08 48 89 df e8 49 d4 d7 fe 4c 8b 3b 49 8d 5f 28
RSP: 0018:ffffc9000486f658 EFLAGS: 00010202
RAX: 0000000000000104 RBX: 0000000000000820 RCX: 0000000000000001
RDX: 0000000000000001 RSI: 0000000000000008 RDI: 0000000000000001
RBP: ffff888037fbf330 R08: ffff888037fbefd7 R09: 1ffff11006ff7dfa
R10: dffffc0000000000 R11: ffffed1006ff7dfb R12: 0000000000000004
R13: 0000000000000000 R14: ffff888037fbefc8 R15: dffffc0000000000
FS:  00007f5fd8fbd6c0(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f0a9d2d66e4 CR3: 000000007909f000 CR4: 00000000003506f0
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
  14:	e8 69 d4 d7 fe       	call   0xfed7d482
  19:	4c 8b 2b             	mov    (%rbx),%r13
  1c:	49 8d 9d 20 08 00 00 	lea    0x820(%r13),%rbx
  23:	48 89 d8             	mov    %rbx,%rax
  26:	48 c1 e8 03          	shr    $0x3,%rax
* 2a:	42 80 3c 38 00       	cmpb   $0x0,(%rax,%r15,1) <-- trapping instruction
  2f:	74 08                	je     0x39
  31:	48 89 df             	mov    %rbx,%rdi
  34:	e8 49 d4 d7 fe       	call   0xfed7d482
  39:	4c 8b 3b             	mov    (%rbx),%r15
  3c:	49 8d 5f 28          	lea    0x28(%r15),%rbx


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
