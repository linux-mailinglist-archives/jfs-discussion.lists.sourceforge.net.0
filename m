Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EACB995685
	for <lists+jfs-discussion@lfdr.de>; Tue,  8 Oct 2024 20:27:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1syEvK-0001b1-RU;
	Tue, 08 Oct 2024 18:27:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3RXYFZwkbAIY289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1syEiD-0003Nm-Mx for jfs-discussion@lists.sourceforge.net;
 Tue, 08 Oct 2024 18:13:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0MQzjSaKVYeWaWQppOOsmsM7r8sTYW/AeftTpIwUERE=; b=PUFRuvfKWbZ6Aps0vAhxEQ19cv
 dhurBrWGjlpgyHYqXVcMNYeO32wmoU8AhduQEf/kdxS/n3O8pH3BAw2buh1+0fJvztPitDVcZcZvs
 pUjSj2f+egtWeVl768BPnfbR6QmcrLroGr09wEl1rfqUZXE7jNDD2rVLcu+4HA6mrqWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0MQzjSaKVYeWaWQppOOsmsM7r8sTYW/AeftTpIwUERE=; b=D
 6sDHb5YKjVj5OlOOwtLavI4FGJDAVvaVwExb5t51Ob4VZIfrh01f3qIkBpJ0rn5IAYpyOwvlKJHKQ
 qqKsJTAkBueGZhiCkvlGwPVJi85+0ZEkIoP/Y8Ii3CseoaktHUO2tGI3oNdwV1NsBRj+G7ln3fk4A
 pI0/o/SKz94HP1n0=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1syEiB-00023W-Ej for jfs-discussion@lists.sourceforge.net;
 Tue, 08 Oct 2024 18:13:32 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3a0ce7e621aso52918635ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 08 Oct 2024 11:13:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728411205; x=1729016005;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0MQzjSaKVYeWaWQppOOsmsM7r8sTYW/AeftTpIwUERE=;
 b=lZQI3I8Xz82Z5aWgqMphOe/0QHtou0+U/in1JvTqEWH/81u3XOQzsDPdHW0Lcfbade
 /aCwHCGvS87foVpdX6iOKfqiHA4fQ6JhXG8oCMvGvIO1f8MNXO3queUPMM3P6M10YllN
 4LCSC8clNryt8r4l5X1aQhZiT96y4+WjGGLZAqV330aZfMz41SPoXsGi1yihbUCjOQrl
 XCXvwu3WxNoqXDAE32TSFitQ9kWcXL+6dhWY4XDr+wU1eOoX00Nnw+oUkmS0Blr4m9IN
 P5JBxaU3VG47HmfsyTuafbdbO5ZHPySwdQUjhliKEPVqPRlh1X38UkwxYO93f1VH+zn7
 Thpw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8e9Bqj2tWSAxlmEUTzt1LyJ4+JJ9wN5V3pqcRpxEzd0jrPg82sGBC5j6zJHkZn3yOP46IFK4Rb96W7IrsRA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzLhWjIzxdD3V5N5vtk/Swf+SWba3kOvXukaeCozY3u8QYCvcco
 KBg9qHNw+nq28rBu0dUh4d2d73zfwNLbrB7/FE/L6ll3zDuyC41euvQcSc0K6TFhwuF1FNOGHgA
 Wg3EmtK+YEt9qpoSewXlSV53W+rJs4DHjTTakqTFHa+z4aIhrmNNpG8U=
X-Google-Smtp-Source: AGHT+IFxLxSgUPTvxHIh5CCQCfDXbTcjNoPz+QbB51/spldK7VGtQv3RckB5vJ/2ElHi3zmPWoJZbp56ZJkitgV148ieCAOBrwgI
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d90:b0:3a0:4250:165f with SMTP id
 e9e14a558f8ab-3a3757d6d99mr161958185ab.0.1728411205645; Tue, 08 Oct 2024
 11:13:25 -0700 (PDT)
Date: Tue, 08 Oct 2024 11:13:25 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67057645.050a0220.13529.0000.GAE@google.com>
To: dave.kleikamp@oracle.com, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, willy@infradead.org
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: c02d24a5af66
 Add linux-next specific files for 20241003 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=1746fd27980000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1syEiB-00023W-Ej
X-Mailman-Approved-At: Tue, 08 Oct 2024 18:27:05 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] general protection fault in
 metapage_write_folio
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
Reply-To: syzbot <syzbot+d7ffeb5538fe5c793f74@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    c02d24a5af66 Add linux-next specific files for 20241003
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=1746fd27980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=94f9caf16c0af42d
dashboard link: https://syzkaller.appspot.com/bug?extid=d7ffeb5538fe5c793f74
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10c6fd27980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10b87380580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/641e642c9432/disk-c02d24a5.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/98aaf20c29e0/vmlinux-c02d24a5.xz
kernel image: https://storage.googleapis.com/syzbot-assets/c23099f2d86b/bzImage-c02d24a5.xz
mounted in repro #1: https://storage.googleapis.com/syzbot-assets/3f7113d64967/mount_0.gz
mounted in repro #2: https://storage.googleapis.com/syzbot-assets/fc2de7358212/mount_6.gz
mounted in repro #3: https://storage.googleapis.com/syzbot-assets/627888892b4e/mount_11.gz

The issue was bisected to:

commit 35474d52c6056976e675e9130d755cdb749ded5a
Author: Matthew Wilcox (Oracle) <willy@infradead.org>
Date:   Wed Apr 17 17:56:46 2024 +0000

    jfs: Convert metapage_writepage to metapage_write_folio

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=155f47d0580000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=175f47d0580000
console output: https://syzkaller.appspot.com/x/log.txt?x=135f47d0580000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d7ffeb5538fe5c793f74@syzkaller.appspotmail.com
Fixes: 35474d52c605 ("jfs: Convert metapage_writepage to metapage_write_folio")

loop0: rw=0, sector=120, nr_sectors = 8 limit=0
ERROR: (device loop0): remounting filesystem as read-only
syz-executor140: attempt to access beyond end of device
loop0: rw=2049, sector=30744, nr_sectors = 8 limit=0
lbmIODone: I/O error in JFS log
Oops: general protection fault, probably for non-canonical address 0xdffffc0000000000: 0000 [#1] PREEMPT SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
CPU: 0 UID: 0 PID: 5242 Comm: syz-executor140 Not tainted 6.12.0-rc1-next-20241003-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
RIP: 0010:metapage_write_folio+0xb7/0x10e0 fs/jfs/jfs_metapage.c:346
Code: 48 89 d8 48 c1 e8 03 42 80 3c 30 00 74 08 48 89 df e8 6d 3c cf fe 48 8b 1b 48 89 d8 48 c1 e8 03 48 b9 00 00 00 00 00 fc ff df <80> 3c 08 00 74 08 48 89 df e8 4b 3c cf fe 4c 8b 2b 48 8d 84 24 b0
RSP: 0018:ffffc900036172a0 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 0000000000000000 RCX: dffffc0000000000
RDX: 0000000000000000 RSI: ffffc90003617400 RDI: ffffea0000b5ec40
RBP: ffffc900036173b0 R08: ffffea0000b5ec77 R09: 1ffffd400016bd8e
R10: dffffc0000000000 R11: fffff9400016bd8f R12: ffffea0000b5ec74
R13: ffffea0000b5ec40 R14: dffffc0000000000 R15: ffffc90003617400
FS:  00007f1541cdd6c0(0000) GS:ffff8880b8600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055fe70fb1000 CR3: 000000007aad2000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 metapage_write_one+0x2c7/0x680 fs/jfs/jfs_metapage.c:710
 force_metapage+0x10a/0x2b0 fs/jfs/jfs_metapage.c:732
 txForce fs/jfs/jfs_txnmgr.c:2215 [inline]
 txCommit+0x6250/0x6b90 fs/jfs/jfs_txnmgr.c:1315
 diNewIAG fs/jfs/jfs_imap.c:2592 [inline]
 diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
 diAllocAG+0x17ab/0x1e50 fs/jfs/jfs_imap.c:1669
 diAlloc+0x1d2/0x1630 fs/jfs/jfs_imap.c:1590
 ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x1c5/0xba0 fs/jfs/namei.c:225
 vfs_mkdir+0x2f9/0x4f0 fs/namei.c:4257
 do_mkdirat+0x264/0x3a0 fs/namei.c:4280
 __do_sys_mkdirat fs/namei.c:4295 [inline]
 __se_sys_mkdirat fs/namei.c:4293 [inline]
 __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:4293
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f1541d37e49
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 c1 1f 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f1541cdd168 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 00007f1541dc64a8 RCX: 00007f1541d37e49
RDX: 0000000000000135 RSI: 0000000020000140 RDI: 00000000ffffff9c
RBP: 00007f1541dc64a0 R08: 00007f1541cdd6c0 R09: 0000000000000000
R10: 00007f1541cdd6c0 R11: 0000000000000246 R12: 00007f1541dc64ac
R13: 000000000000000b R14: 00007ffcfa87d490 R15: 00007ffcfa87d578
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:metapage_write_folio+0xb7/0x10e0 fs/jfs/jfs_metapage.c:346
Code: 48 89 d8 48 c1 e8 03 42 80 3c 30 00 74 08 48 89 df e8 6d 3c cf fe 48 8b 1b 48 89 d8 48 c1 e8 03 48 b9 00 00 00 00 00 fc ff df <80> 3c 08 00 74 08 48 89 df e8 4b 3c cf fe 4c 8b 2b 48 8d 84 24 b0
RSP: 0018:ffffc900036172a0 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 0000000000000000 RCX: dffffc0000000000
RDX: 0000000000000000 RSI: ffffc90003617400 RDI: ffffea0000b5ec40
RBP: ffffc900036173b0 R08: ffffea0000b5ec77 R09: 1ffffd400016bd8e
R10: dffffc0000000000 R11: fffff9400016bd8f R12: ffffea0000b5ec74
R13: ffffea0000b5ec40 R14: dffffc0000000000 R15: ffffc90003617400
FS:  00007f1541cdd6c0(0000) GS:ffff8880b8700000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f1541dc3f18 CR3: 000000007aad2000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	48 89 d8             	mov    %rbx,%rax
   3:	48 c1 e8 03          	shr    $0x3,%rax
   7:	42 80 3c 30 00       	cmpb   $0x0,(%rax,%r14,1)
   c:	74 08                	je     0x16
   e:	48 89 df             	mov    %rbx,%rdi
  11:	e8 6d 3c cf fe       	call   0xfecf3c83
  16:	48 8b 1b             	mov    (%rbx),%rbx
  19:	48 89 d8             	mov    %rbx,%rax
  1c:	48 c1 e8 03          	shr    $0x3,%rax
  20:	48 b9 00 00 00 00 00 	movabs $0xdffffc0000000000,%rcx
  27:	fc ff df
* 2a:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1) <-- trapping instruction
  2e:	74 08                	je     0x38
  30:	48 89 df             	mov    %rbx,%rdi
  33:	e8 4b 3c cf fe       	call   0xfecf3c83
  38:	4c 8b 2b             	mov    (%rbx),%r13
  3b:	48                   	rex.W
  3c:	8d                   	.byte 0x8d
  3d:	84 24 b0             	test   %ah,(%rax,%rsi,4)


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
