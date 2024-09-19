Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C2797CC9F
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Sep 2024 18:46:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1srKIZ-0005wZ-FF;
	Thu, 19 Sep 2024 16:46:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3gkvsZgkbAAk178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1srJdo-0006mR-SA for jfs-discussion@lists.sourceforge.net;
 Thu, 19 Sep 2024 16:04:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=moODkLfxeH3Ela0pL2+4wISEbEj0GOPL//CoQYpM8l8=; b=ifzaII9tdhpVJCP5K9EbBkOrm6
 ggTgK/fz04t8BqRptnUj5OHK0BjmPwmb4dpM1JripWRag1JhG0eIRDruwfgHe/y8murtKjmwln47/
 cIhg6tJ6tKX0OEpcnsh2OfEa0nsk+5Zx78q/X3AZffAEgLTPhWuRSIrta7Gytj7kIhiw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=moODkLfxeH3Ela0pL2+4wISEbEj0GOPL//CoQYpM8l8=; b=D
 +rLp6pc3LCUSGAbyoVRKkRh3dDyvSoPryHh8GRdsWcxQp7H+SVVgnJeMNtbUmhlqiwy325+sfDmk5
 WxgWFfUQ1dXoZMvgpmGTZvF8a7zzo8VIuhZjeSoOjKG4ijL9xIzYLmqG7GQ28QCeVzI+TiuwrGNjp
 apnGiX+PL/MXQ0mc=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1srJdn-0000b3-WB for jfs-discussion@lists.sourceforge.net;
 Thu, 19 Sep 2024 16:04:24 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-82cda2c8997so138320039f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 19 Sep 2024 09:04:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726761858; x=1727366658;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=moODkLfxeH3Ela0pL2+4wISEbEj0GOPL//CoQYpM8l8=;
 b=ikIimWwBarj1aVtdqRKyCP1hojm3WbMlKF/7bviavK+pjCCjCO74LxwnDjwU+T+amI
 vE6LrNBpz8+aHtKF/O9qK1WcwS+qbFLyQMnQsXCSA/I7wd2xCKHByA5vTFgRMoDY6ZdG
 WH16SvRiX2g4Kqkmjzo3UeKdPZofKf6w+HTckkVo3rpftknvxko7OsFgLhTIloGz8zC/
 SQ3Tdz/ULmdKRnnqu+0RlHuSMpDGXL2nHrcbwppYoZAOPAMf+XtyXo2lQ6HUoB26C/3n
 0boo8QIqCttgR7GXhtRrk9uY152hRh6AmI6lCEwDFc5KL833/rOnLOFTp1JIw4oNO8pY
 93Nw==
X-Gm-Message-State: AOJu0YzqU0sGRLZFoVR8o4eaU9+yX7wB07wqRQKR6f1hkWguXlwhbmrj
 9mvr03kN3d/UfGYYTrLo+yvxn/M8enqsoJ1JdUnhFTljm7pmf1ydEZEyVSkhsjIiIcP0uyNU+d3
 rS3zj+KgowkAGIg8vPPrMpxRdOPZHYji7fADjlTMuB+XBEZo1GDaku8A=
X-Google-Smtp-Source: AGHT+IGhROLuZJ976Wkfgl8lJFrhg7WGf4ViJpyFipCXPxLTDic6YrvvsMKE238+B1POXv3+2Aa6v/qVH1znyGp543cXOVm1UnH6
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:160e:b0:3a0:a3cd:f239 with SMTP id
 e9e14a558f8ab-3a0a3cdf40emr159322295ab.8.1726761858013; Thu, 19 Sep 2024
 09:04:18 -0700 (PDT)
Date: Thu, 19 Sep 2024 09:04:17 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <66ec4b81.050a0220.29194.0034.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: d42f7708e27c
 Merge tag 'for-linus-6.11' of git://git.kerne.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=16ff9900580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -1.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1srJdn-0000b3-WB
X-Mailman-Approved-At: Thu, 19 Sep 2024 16:46:29 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txCommit
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
Reply-To: syzbot <syzbot+49e4cb6cf207d61b5afc@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    d42f7708e27c Merge tag 'for-linus-6.11' of git://git.kerne..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=16ff9900580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1c9e296880039df9
dashboard link: https://syzkaller.appspot.com/bug?extid=49e4cb6cf207d61b5afc
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/b879ea3b7dd4/disk-d42f7708.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/812a7fb7bfcc/vmlinux-d42f7708.xz
kernel image: https://storage.googleapis.com/syzbot-assets/806a22d4adbf/bzImage-d42f7708.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+49e4cb6cf207d61b5afc@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
BUG at fs/jfs/jfs_txnmgr.c:2209 assert(mp->xflag & COMMIT_PAGE)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:2209!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI
CPU: 0 UID: 0 PID: 6866 Comm: syz.0.200 Not tainted 6.11.0-rc7-syzkaller-00151-gd42f7708e27c #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/06/2024
RIP: 0010:txForce fs/jfs/jfs_txnmgr.c:2209 [inline]
RIP: 0010:txCommit+0x6b29/0x6b80 fs/jfs/jfs_txnmgr.c:1315
Code: 86 08 90 0f 0b e8 27 f7 6b fe 48 c7 c7 a0 05 23 8c 48 c7 c6 99 01 23 8c ba a1 08 00 00 48 c7 c1 a0 11 23 8c e8 68 84 86 08 90 <0f> 0b e8 10 84 89 08 e8 fb f6 6b fe 48 8b 7c 24 10 48 c7 c6 00 13
RSP: 0018:ffffc90002fbf560 EFLAGS: 00010246
RAX: 000000000000003f RBX: 0000000000000000 RCX: 0a4c9e0a19d3dd00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc90002fbf7d0 R08: ffffffff8174016c R09: 1ffff920005f7e4c
R10: dffffc0000000000 R11: fffff520005f7e4d R12: ffff888057cddc98
R13: 00000000000000bd R14: 0000000000000000 R15: ffffc90002852000
FS:  00007f0b40edb6c0(0000) GS:ffff8880b8800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000000 CR3: 00000000644ba000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 duplicateIXtree+0x33f/0x550 fs/jfs/jfs_imap.c:3019
 diNewIAG fs/jfs/jfs_imap.c:2597 [inline]
 diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
 diAllocAG+0x17dc/0x1e50 fs/jfs/jfs_imap.c:1669
 diAlloc+0x1d3/0x1760 fs/jfs/jfs_imap.c:1590
 ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x1c5/0xba0 fs/jfs/namei.c:225
 vfs_mkdir+0x2f9/0x4f0 fs/namei.c:4210
 do_mkdirat+0x264/0x3a0 fs/namei.c:4233
 __do_sys_mkdir fs/namei.c:4253 [inline]
 __se_sys_mkdir fs/namei.c:4251 [inline]
 __x64_sys_mkdir+0x6c/0x80 fs/namei.c:4251
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f0b4017def9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f0b40edb038 EFLAGS: 00000246 ORIG_RAX: 0000000000000053
RAX: ffffffffffffffda RBX: 00007f0b40335f80 RCX: 00007f0b4017def9
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000020000640
RBP: 00007f0b401f0b76 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007f0b40335f80 R15: 00007ffd5b250568
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:txForce fs/jfs/jfs_txnmgr.c:2209 [inline]
RIP: 0010:txCommit+0x6b29/0x6b80 fs/jfs/jfs_txnmgr.c:1315
Code: 86 08 90 0f 0b e8 27 f7 6b fe 48 c7 c7 a0 05 23 8c 48 c7 c6 99 01 23 8c ba a1 08 00 00 48 c7 c1 a0 11 23 8c e8 68 84 86 08 90 <0f> 0b e8 10 84 89 08 e8 fb f6 6b fe 48 8b 7c 24 10 48 c7 c6 00 13
RSP: 0018:ffffc90002fbf560 EFLAGS: 00010246
RAX: 000000000000003f RBX: 0000000000000000 RCX: 0a4c9e0a19d3dd00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc90002fbf7d0 R08: ffffffff8174016c R09: 1ffff920005f7e4c
R10: dffffc0000000000 R11: fffff520005f7e4d R12: ffff888057cddc98
R13: 00000000000000bd R14: 0000000000000000 R15: ffffc90002852000
FS:  00007f0b40edb6c0(0000) GS:ffff8880b8900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055d4714cc080 CR3: 00000000644ba000 CR4: 00000000003506f0
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
