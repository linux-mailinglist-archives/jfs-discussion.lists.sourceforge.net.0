Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5A2CE0295
	for <lists+jfs-discussion@lfdr.de>; Sat, 27 Dec 2025 23:16:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I5WRWdWh74dNvW8eSn0YDK3flqZxPLtJM4BNs7OFS24=; b=HZdlo7aND3LCzcn8dk4poCwowQ
	z0QW+bX1SSdBJ48L7TQGwcA1Tf5XCFQ4Wlf1p6Dv+LeXQ5XFtV7FjX6GWQmXw8mebLy4T3aK5tZQb
	4w1bpoy/2iMQsibmwYzv4O2G5+T9ushrhb2G6Yt/6KBZQ7H+nNlybr2JXdGqH0CzSm2c=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vZcZI-0000Xa-P4;
	Sat, 27 Dec 2025 22:15:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <34URNaQkbAPAkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vYlz5-0008L8-KC for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Dec 2025 14:06:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+LtGzUEgQkpcQX0PsTQrwXYEs/GKKZLowfJnxsD0riY=; b=PR2hjLwHaZGGEv+ClgrkEl1EZs
 JiHRpFwFdHtrbzZA5Lki9nCKTb+ZlCYUP0AkHGe3QdkGTEtrQKTWn1NDLWcn0EdLOgaH3iTq4gc2S
 M/FrzGxW4FGVYo6rz3Ao3qjcU5b04rTVzSJaXPCBaHDqijttz0IBnVlvekBNz71o2BDc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+LtGzUEgQkpcQX0PsTQrwXYEs/GKKZLowfJnxsD0riY=; b=V
 XLwCvRgKjeUwiaGHfjAk/T9FBf9Z3e/hxVi/9JD5Mw4ZOIxgqe2va95nr6/3VRvg2axTT3P7LE6MD
 USVx3THNphiNwMWcuW09L0E/FnYRde50NnooI2VlKI+wTB5XJnIhS7OxSlIir17sPXUDxJxEDt5em
 MkOxVmJ0IizcVzLA=;
Received: from mail-oo1-f79.google.com ([209.85.161.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vYlz4-0002XM-Sg for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Dec 2025 14:06:31 +0000
Received: by mail-oo1-f79.google.com with SMTP id
 006d021491bc7-65eb49dd974so4149345eaf.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Dec 2025 06:06:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766671585; x=1767276385;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+LtGzUEgQkpcQX0PsTQrwXYEs/GKKZLowfJnxsD0riY=;
 b=WqCLChcaFjETl5+YEe5Jsu6llfOJICY8rb7h6x7pNkbTIeCXBRwvpnKUPYwR0wVfZe
 ve69NYgdGz0TdKRzClAn3RVm/odep6PHePl8g4nBh2h6dejlf1A1J8Tyqez/qMbhJxGt
 uKVFmNxJ9Wd0/lhTfXKFIZQY7KWb4eh7xwMMwxv2tHLt1p3UZFlNsXeB/hR6AqO6AALh
 DchSWNZBc5RfSKBO/1wxlequKye2fpwdjQMLcPCQkbu9ZhRSU7uqNmj4iJWGo6DQ+AVy
 m1qRCEUjvZ+I4Gqw144s7YhW0X5DaV+Fl4yy5NZTI+DBUiXtgHJ6A2KeHm/dw+D1MG/4
 fySQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVT3KJowmx79g6fCvzOeRE05QPMdKHA5J/3c9e7IaumJlczqWY6Fa0QUhzUmb90ICx9SULonyPthBWQzCQeVA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YySv4XqsrqnhxeCTxJ4UyQD8t3pcf4IzimaYgCBzou1hpvUCtnZ
 MzpZTV6TCGugh2dSqKDNcs3BDWZapKYB0wN7pGzwOoogDrWPJkDUPLpjrwUdtIsCpAEjg1/W3w3
 kckzVMKG7YiBfdgZinLdZmmcRQtf5DZ4MJmwj57CswCe3Kzf2CCsla1YMR9s=
X-Google-Smtp-Source: AGHT+IGL7YFyjcgeyIa0tMkaVS20x/UVQe/jRyOl88Crr9hcWdzGgNffX9ms3yaS2L49FkEq1PfmLM1GP5UVYunghN32qezSZf4N
MIME-Version: 1.0
X-Received: by 2002:a05:6820:4289:b0:659:9a49:8e21 with SMTP id
 006d021491bc7-65cfe748da1mr7332434eaf.19.1766671585267; Thu, 25 Dec 2025
 06:06:25 -0800 (PST)
Date: Thu, 25 Dec 2025 06:06:25 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <694d44e1.050a0220.35954c.0041.GAE@google.com>
To: brauner@kernel.org, jack@suse.cz, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: ccd1cdca5cd4
 Merge tag 'nfsd-6.19-1' of git://git.kernel.o.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1697109a580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (2.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.79 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vYlz4-0002XM-Sg
X-Mailman-Approved-At: Sat, 27 Dec 2025 22:15:23 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] VFS: Busy inodes after unmount
 (use-after-free) (4)
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
Reply-To: syzbot <syzbot+d569e274f46ca86f78fa@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    ccd1cdca5cd4 Merge tag 'nfsd-6.19-1' of git://git.kernel.o..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1697109a580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a94030c847137a18
dashboard link: https://syzkaller.appspot.com/bug?extid=d569e274f46ca86f78fa
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14b1c8fc580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1478e022580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f7b489f9e06c/disk-ccd1cdca.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/6a3b40a08a43/vmlinux-ccd1cdca.xz
kernel image: https://storage.googleapis.com/syzbot-assets/deb72d1923f7/bzImage-ccd1cdca.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/6c19056fd03d/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=16972f1a580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d569e274f46ca86f78fa@syzkaller.appspotmail.com

tblock:ffffc900027792a0: 00000002 00000000 027793b8 ffffc900
tblock:ffffc900027792b0: 99a20540 ffffffff 00003ab0 00000000
tblock:ffffc900027792c0: 44b53100 ffff8881 00000003 00000ab0
tblock:ffffc900027792d0: 00000000 dead4ead ffffffff 00000000
tblock:ffffc900027792e0: ffffffff ffffffff 99a203c0 ffffffff
tblock:ffffc900027792f0: 00000000 00000000 00000000 00000000
tblock:ffffc90002779300: 8ba58f60 ffffffff 00000300 00000000
tblock:ffffc90002779310: 02779310 ffffc900 02779310 ffffc900
tblock:ffffc90002779320: 5a664d70 ffff8880 00000000 00000000
VFS: Busy inodes after unmount of loop0 (jfs)
------------[ cut here ]------------
kernel BUG at fs/super.c:653!
Oops: invalid opcode: 0000 [#1] SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 5960 Comm: syz-executor Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/25/2025
RIP: 0010:generic_shutdown_super+0x2bc/0x2c0 fs/super.c:651
Code: 03 42 80 3c 28 00 74 08 4c 89 f7 e8 8e fa ed ff 49 8b 16 48 81 c3 68 06 00 00 48 c7 c7 e0 b2 79 8b 48 89 de e8 a5 8c ee fe 90 <0f> 0b 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f
RSP: 0018:ffffc9000404fd00 EFLAGS: 00010246
RAX: 000000000000002d RBX: ffff8880318d6668 RCX: 29d16eab6a395c00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 1ffff1100631acf0 R08: ffff8880b86247d3 R09: 1ffff110170c48fa
R10: dffffc0000000000 R11: ffffed10170c48fb R12: 0000000000000000
R13: dffffc0000000000 R14: ffffffff8e38bea0 R15: ffff8880318d6780
FS:  00005555777b6500(0000) GS:ffff888125e1f000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fbab6082000 CR3: 0000000030db6000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 kill_block_super+0x44/0x90 fs/super.c:1722
 deactivate_locked_super+0xbc/0x130 fs/super.c:474
 cleanup_mnt+0x425/0x4c0 fs/namespace.c:1318
 task_work_run+0x1d4/0x260 kernel/task_work.c:233
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 __exit_to_user_mode_loop kernel/entry/common.c:44 [inline]
 exit_to_user_mode_loop+0xef/0x4e0 kernel/entry/common.c:75
 __exit_to_user_mode_prepare include/linux/irq-entry-common.h:226 [inline]
 syscall_exit_to_user_mode_prepare include/linux/irq-entry-common.h:256 [inline]
 syscall_exit_to_user_mode_work include/linux/entry-common.h:159 [inline]
 syscall_exit_to_user_mode include/linux/entry-common.h:194 [inline]
 do_syscall_64+0x2b7/0xf80 arch/x86/entry/syscall_64.c:100
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fb469390a77
Code: a8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 01 c3 48 c7 c2 a8 ff ff ff f7 d8 64 89 02 b8
RSP: 002b:00007ffc903b6258 EFLAGS: 00000202 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000064 RCX: 00007fb469390a77
RDX: 0000000000000200 RSI: 0000000000000009 RDI: 00007ffc903b7400
RBP: 00007fb469413d7d R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000100 R11: 0000000000000202 R12: 00007ffc903b7400
R13: 00007fb469413d7d R14: 00005555777b64a8 R15: 00007ffc903b84d0
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:generic_shutdown_super+0x2bc/0x2c0 fs/super.c:651
Code: 03 42 80 3c 28 00 74 08 4c 89 f7 e8 8e fa ed ff 49 8b 16 48 81 c3 68 06 00 00 48 c7 c7 e0 b2 79 8b 48 89 de e8 a5 8c ee fe 90 <0f> 0b 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f
RSP: 0018:ffffc9000404fd00 EFLAGS: 00010246
RAX: 000000000000002d RBX: ffff8880318d6668 RCX: 29d16eab6a395c00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 1ffff1100631acf0 R08: ffff8880b86247d3 R09: 1ffff110170c48fa
R10: dffffc0000000000 R11: ffffed10170c48fb R12: 0000000000000000
R13: dffffc0000000000 R14: ffffffff8e38bea0 R15: ffff8880318d6780
FS:  00005555777b6500(0000) GS:ffff888125f1f000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005619d76b3a38 CR3: 0000000030db6000 CR4: 0000000000350ef0


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
