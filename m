Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 917959D290B
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Nov 2024 16:05:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tDPnO-0003f9-Or;
	Tue, 19 Nov 2024 15:05:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3kRk4ZwkbAOQYefQGRRKXGVVOJ.MUUMRKaYKXIUTZKTZ.IUS@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tCA24-0008C2-Hf for jfs-discussion@lists.sourceforge.net;
 Sat, 16 Nov 2024 04:03:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H3opLCRcHjNdfFwjWccZxOIh1mLgc55rA1a1R118YCc=; b=GOgWmhozrLRCLcgOUhprdbE05M
 3a3BJh+zcZpi8JTIXjx6PdKIw8JwBlklTjz44aSh5SNGkp+JJBpbAAA7xcgeSNHS/HRPs+oFMxqsw
 P8tZ2yUtQVO2zjcZLT+lXMPSDv2qVanZOWKUJEIqkagDxZiyDnWO6YCBTCkU7RR0MJJg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H3opLCRcHjNdfFwjWccZxOIh1mLgc55rA1a1R118YCc=; b=N
 GgtejxWhCCM0l1MnOzHsTxUC5oP0zJimgU98kxi5KPofr/CDX8Rl7yytdezCzJHnNiejTLTtxd3XA
 XCAdQwQJcK0RQTUjkFz7kHf719BPSys0b5Dy5CZWKe+m1zCkPu5gAGnQ9DPrkpdQ76MixeimeoG45
 pMxldogxIJrmEqPg=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tCA23-00010y-JR for jfs-discussion@lists.sourceforge.net;
 Sat, 16 Nov 2024 04:03:36 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3a3c4554d29so3325445ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 15 Nov 2024 20:03:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731729810; x=1732334610;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=H3opLCRcHjNdfFwjWccZxOIh1mLgc55rA1a1R118YCc=;
 b=Gpf1bAvGX1hntnOQj4Fy6GGkF84iRejYXnjcA8NgVbDrIPZJNmdCFIjElqqiPnrAjF
 cBT5CQH3TiRQvweFXKR3SzU2XmaAKEpGAGxHlWQDO5U5bwBoekoTmDlbowpPPw2SvRfe
 KLYV0LWhwqHespnJSRNDXS/C9rqUA0tnz4EjosViM1tIu7WypdvYAbTEuJbDMVjoMnNE
 Em1WvD14LuzatWGXOx12o1ey/PgSUUto/F08LDosPovOLe641ObwCdg0HAh9zVtgNnY2
 W2lGH6aM/YHxdyc188laDsefi044yWQh8lXMRg7A+pbjRZlkkyWea/VaRekW78e5dyPQ
 1fmg==
X-Gm-Message-State: AOJu0YxyKeg4SI/3JtG0tck3Bp3akbj4TmenZbo/C4y+CnvebR93YaA4
 5VuFP6ens7yHD1mKG3tIf/DEGyDw8g7jUWJ5+3kQZpxaVyvo03SmAXctR09pUHEB1FwxS++u84l
 I9l78JArWq+RnptOCpqOxML/1TYspLNhiDyBr/h+1J4M45KrFDm/WhQA=
X-Google-Smtp-Source: AGHT+IHxLGwN/LoGbR/vX6FJFdNKtj8W9Ui54RbvpNEm7SCsRP3kkrCwCFaEogYfGVnd8mymjrTOnMmcnjqGeGsFZE1Td3t7TOE7
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a89:b0:3a5:e532:799d with SMTP id
 e9e14a558f8ab-3a74800f3efmr63010405ab.3.1731729809839; Fri, 15 Nov 2024
 20:03:29 -0800 (PST)
Date: Fri, 15 Nov 2024 20:03:29 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67381991.050a0220.57553.0045.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 2d5404caa8c7
 Linux 6.12-rc7 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=1772fe30580000
 kernel config: https://syzkaller.appspot.com/x/.config?x=d2aeec8c0b [...]
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.197 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.197 listed in sa-trusted.bondedsender.org]
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1tCA23-00010y-JR
X-Mailman-Approved-At: Tue, 19 Nov 2024 15:05:37 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] general protection fault in
 jfs_error (2)
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
Reply-To: syzbot <syzbot+5f0d7af0e45fae10edd1@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    2d5404caa8c7 Linux 6.12-rc7
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1772fe30580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d2aeec8c0b2e420c
dashboard link: https://syzkaller.appspot.com/bug?extid=5f0d7af0e45fae10edd1
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17b2f4e8580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=119f7ea7980000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-2d5404ca.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c68277f7b0f1/vmlinux-2d5404ca.xz
kernel image: https://storage.googleapis.com/syzbot-assets/161b075483b1/bzImage-2d5404ca.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/6b6a26f0435b/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5f0d7af0e45fae10edd1@syzkaller.appspotmail.com

ERROR: (device loop0): remounting filesystem as read-only
ERROR: (device loop0): dbFindCtl: Corrupt dmapctl page
jfs_create: dtInsert returned -EIO
ERROR: (device (efault)): jfs_create: 
Oops: general protection fault, probably for non-canonical address 0xdffffc000000000a: 0000 [#1] PREEMPT SMP KASAN NOPTI
KASAN: null-ptr-deref in range [0x0000000000000050-0x0000000000000057]
CPU: 0 UID: 0 PID: 5313 Comm: syz-executor116 Not tainted 6.12.0-rc7-syzkaller #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:sb_rdonly include/linux/fs.h:2292 [inline]
RIP: 0010:jfs_handle_error fs/jfs/super.c:66 [inline]
RIP: 0010:jfs_error+0x159/0x2e0 fs/jfs/super.c:98
Code: 08 48 c7 c7 40 e9 42 8c 48 89 74 24 08 4c 89 f9 e8 4c 22 9c 08 4d 8d 65 50 4d 89 e7 49 c1 ef 03 48 b8 00 00 00 00 00 fc ff df <41> 80 3c 07 00 74 08 4c 89 e7 e8 48 5e d6 fe 49 8b 1c 24 48 89 de
RSP: 0018:ffffc9000ce4fa20 EFLAGS: 00010206
RAX: dffffc0000000000 RBX: dffffc0000000000 RCX: 1c32466592978100
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc9000ce4fb30 R08: ffffffff8174a13c R09: 1ffff11003f8519a
R10: dffffc0000000000 R11: ffffed1003f8519b R12: 0000000000000050
R13: 0000000000000000 R14: 1ffff920019c9f4c R15: 000000000000000a
FS:  0000555595511380(0000) GS:ffff88801fc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055fdcfd20000 CR3: 0000000043170000 CR4: 0000000000352ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_create+0x81d/0xbb0 fs/jfs/namei.c:140
 vfs_create+0x23c/0x3d0 fs/namei.c:3294
 do_mknodat+0x447/0x5b0 fs/namei.c:4185
 __do_sys_mknod fs/namei.c:4218 [inline]
 __se_sys_mknod fs/namei.c:4216 [inline]
 __x64_sys_mknod+0x8c/0xa0 fs/namei.c:4216
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f17ac91d9f9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff56943258 EFLAGS: 00000246 ORIG_RAX: 0000000000000085
RAX: ffffffffffffffda RBX: 00007fff56943428 RCX: 00007f17ac91d9f9
RDX: 0000000000000701 RSI: 0000000000000000 RDI: 0000000020000000
RBP: 00007f17ac996610 R08: 0000000020000000 R09: 00007fff56943428
R10: 00007fff56943120 R11: 0000000000000246 R12: 0000000000000001
R13: 00007fff56943418 R14: 0000000000000001 R15: 0000000000000001
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:sb_rdonly include/linux/fs.h:2292 [inline]
RIP: 0010:jfs_handle_error fs/jfs/super.c:66 [inline]
RIP: 0010:jfs_error+0x159/0x2e0 fs/jfs/super.c:98
Code: 08 48 c7 c7 40 e9 42 8c 48 89 74 24 08 4c 89 f9 e8 4c 22 9c 08 4d 8d 65 50 4d 89 e7 49 c1 ef 03 48 b8 00 00 00 00 00 fc ff df <41> 80 3c 07 00 74 08 4c 89 e7 e8 48 5e d6 fe 49 8b 1c 24 48 89 de
RSP: 0018:ffffc9000ce4fa20 EFLAGS: 00010206
RAX: dffffc0000000000 RBX: dffffc0000000000 RCX: 1c32466592978100
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc9000ce4fb30 R08: ffffffff8174a13c R09: 1ffff11003f8519a
R10: dffffc0000000000 R11: ffffed1003f8519b R12: 0000000000000050
R13: 0000000000000000 R14: 1ffff920019c9f4c R15: 000000000000000a
FS:  0000555595511380(0000) GS:ffff88801fc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055fdcfd20000 CR3: 0000000043170000 CR4: 0000000000352ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	08 48 c7             	or     %cl,-0x39(%rax)
   3:	c7 40 e9 42 8c 48 89 	movl   $0x89488c42,-0x17(%rax)
   a:	74 24                	je     0x30
   c:	08 4c 89 f9          	or     %cl,-0x7(%rcx,%rcx,4)
  10:	e8 4c 22 9c 08       	call   0x89c2261
  15:	4d 8d 65 50          	lea    0x50(%r13),%r12
  19:	4d 89 e7             	mov    %r12,%r15
  1c:	49 c1 ef 03          	shr    $0x3,%r15
  20:	48 b8 00 00 00 00 00 	movabs $0xdffffc0000000000,%rax
  27:	fc ff df
* 2a:	41 80 3c 07 00       	cmpb   $0x0,(%r15,%rax,1) <-- trapping instruction
  2f:	74 08                	je     0x39
  31:	4c 89 e7             	mov    %r12,%rdi
  34:	e8 48 5e d6 fe       	call   0xfed65e81
  39:	49 8b 1c 24          	mov    (%r12),%rbx
  3d:	48 89 de             	mov    %rbx,%rsi


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
