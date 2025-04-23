Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71189A999A3
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Apr 2025 22:48:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7h0r-0007SU-9S;
	Wed, 23 Apr 2025 20:48:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3yEsJaAkbAMs9FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1u7gbP-0000Ny-27 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 20:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jWLt3+c9Id7NuEwBmCm4dt6E6YWWdnbWt/aRMNsT/Fk=; b=R9WyeMGefbmwqYYF5LX7UuQ3Zq
 K5h7uLSm9yFdUELlDFUjwT+cLbdasLg9I7WTdoEXqlU7qV03Yo7K3DOlsZv+cf5H+WSF3pb4lXcn5
 v5G4+Qu/+4Kao/ZjG/ETZcnJ5/y6KPHbwkaelN0F//rOPRXXDhPrzLHulDudSi61XA3s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jWLt3+c9Id7NuEwBmCm4dt6E6YWWdnbWt/aRMNsT/Fk=; b=R
 ac/2rsgRiSEYoED7ew1YkPp0f9epaUUngi5jZn0Gl3pMr8BHHWtFquXzvow3x/JK4T9a2zruGMW1n
 VO7Mz1ztk/YPYdli+lAXEp6kbwyB/pxqh8/3kxbryonvk56X8ZjIVlGimHbtz11aVCLbxHI2hU3f4
 u8v7WtJVUw6+8QkM=;
Received: from mail-io1-f78.google.com ([209.85.166.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7gb8-0000Lp-CN for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 20:21:50 +0000
Received: by mail-io1-f78.google.com with SMTP id
 ca18e2360f4ac-85e7f5129d5so36568339f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 23 Apr 2025 13:21:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745439688; x=1746044488;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=jWLt3+c9Id7NuEwBmCm4dt6E6YWWdnbWt/aRMNsT/Fk=;
 b=s/2DQZPL17OwWBeAfppOJQr2QcR/AMAivPzEdy6Oql92UnRjZkh3gvP3srHVBj4sq3
 dKThekYyQJjbmuNkKdgQMf/eP4ja9UFD2OzGsICrqRi6ez6c//lsUfFTGBvdA1cHvYwP
 hKwKU7vv12hrYwf7KdHf6U0+GYvWU+A570EUY+ThMjOe7vfyeE76HR9zBEQR52EcGnJI
 lnqc3bTtJvyyN5C+iIfGx8vxnhmo+I9raeak/CVLE2ysKB5vzjx0zZs4ucGgFWJDT8hG
 r+Q/aXm9dqk7r520SMGRsQ6WvmbIWMG+tLOsN5G/z8t3xfR8RBLTSQ8Oq4Q0XJOQLTsM
 sLww==
X-Gm-Message-State: AOJu0Yx6FYTgm+dHYTgA8Ou+MlQX982U0sKhsCQvBXKuFHh+sMtgSkxR
 4gaX6oqYLMFwbFksBg6PNN4IDqMfx5vaT/BBWN4ZNHiq9fxIG1geCzQ8XkFx3MmseSaZUsKCxdN
 o+aFMVRhenVI5HNKKLD9UUn5en4EGegh+iH1ZdNQl9mEkmgTILB6bYtbVPQ==
X-Google-Smtp-Source: AGHT+IFB6xBCNGVCnL/PaqFG14ZPz0iwioOHmRo4t/exUqiObkV4Tointrv18ym408c0pgw5lwlEVAR2nfsHxkQeg2Wuzp+mQst9
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:12ea:b0:3d8:1d34:4ee6 with SMTP id
 e9e14a558f8ab-3d93041e2f4mr138595ab.17.1745439688738; Wed, 23 Apr 2025
 13:21:28 -0700 (PDT)
Date: Wed, 23 Apr 2025 13:21:28 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68094bc8.050a0220.2c0118.0ac0.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 8560697b23dc
 Merge tag '6.15-rc2-smb3-client-fixes' of git.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=133fbbac580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.78 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.78 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1u7gb8-0000Lp-CN
X-Mailman-Approved-At: Wed, 23 Apr 2025 20:48:09 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dbAllocAG
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
Reply-To: syzbot <syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    8560697b23dc Merge tag '6.15-rc2-smb3-client-fixes' of git..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=133fbbac580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2a31f7155996562
dashboard link: https://syzkaller.appspot.com/bug?extid=cffd18309153948f3c3e
compiler:       Debian clang version 15.0.6, Debian LLD 15.0.6
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14708c70580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=115dd204580000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-8560697b.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2acea3e6b668/vmlinux-8560697b.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d2542a0d2bcd/bzImage-8560697b.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/2b4250dbd0ba/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=10708c70580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:1397:14
index 65877 is out of range for type 's8[1365]' (aka 'signed char[1365]')
CPU: 0 UID: 0 PID: 5308 Comm: syz-executor181 Not tainted 6.15.0-rc2-syzkaller-00404-g8560697b23dc #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:453
 dbAllocAG+0x704/0x1130 fs/jfs/jfs_dmap.c:1397
 dbAlloc+0x65c/0xcb0 fs/jfs/jfs_dmap.c:873
 xtSplitUp+0x554/0x21c0 fs/jfs/jfs_xtree.c:745
 xtInsert+0x5ba/0x11a0 fs/jfs/jfs_xtree.c:593
 extAlloc+0xae7/0x10a0 fs/jfs/jfs_extent.c:150
 jfs_get_block+0x41d/0xe60 fs/jfs/inode.c:248
 get_more_blocks fs/direct-io.c:648 [inline]
 do_direct_IO fs/direct-io.c:936 [inline]
 __blockdev_direct_IO+0x1add/0x4540 fs/direct-io.c:1243
 blockdev_direct_IO include/linux/fs.h:3422 [inline]
 jfs_direct_IO+0xf7/0x1e0 fs/jfs/inode.c:331
 generic_file_direct_write+0x1e8/0x400 mm/filemap.c:4037
 __generic_file_write_iter+0x126/0x230 mm/filemap.c:4206
 generic_file_write_iter+0x10e/0x5e0 mm/filemap.c:4246
 new_sync_write fs/read_write.c:591 [inline]
 vfs_write+0x70f/0xd10 fs/read_write.c:684
 ksys_write+0x19d/0x2d0 fs/read_write.c:736
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xf3/0x210 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f2346650b59
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fffd3c588a8 EFLAGS: 00000206 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 0073746e6576652e RCX: 00007f2346650b59
RDX: 00000000fffffdaf RSI: 0000200000000000 RDI: 0000000000000005
RBP: 652e79726f6d656d R08: 00005555682c24c0 R09: 00005555682c24c0
R10: 00005555682c24c0 R11: 0000000000000206 R12: 00007fffd3c588d0
R13: 00007fffd3c58af8 R14: 431bde82d7b634db R15: 00007f234669903b
 </TASK>
---[ end trace ]---


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
