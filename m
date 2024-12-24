Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A76A09FBF6C
	for <lists+jfs-discussion@lfdr.de>; Tue, 24 Dec 2024 16:04:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tQ6Rb-0007ve-Mq;
	Tue, 24 Dec 2024 15:03:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Gz1qZwkbAIAw23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tPwqQ-00012S-W0 for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Dec 2024 04:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BcLo/HctTvrMPpCbi+TWdiMrTgdhY0+MJzeJQuDaGug=; b=W9UdAioVoEGR62c5Nj9+mmylc1
 sDiESIhtMtvO12S3Qmnee5AyfplUjRFk3IwFGal32V8fvm3h2bvoYs/9E5ibo2sO5Wk4JswlilHtS
 bdrbKgXAe4nZiDKc7hi7qqa1REEDV926/mw+aa2+mZhln7wJZZ5gXrOXB+oDZ9Q1vmTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BcLo/HctTvrMPpCbi+TWdiMrTgdhY0+MJzeJQuDaGug=; b=e
 YDlgecWXNWPXSjFVK/0AACbRZCe+MB94NexOOm9ULbvZVq5HHzr80a92t80zZ0Xip1cvoeIDbkTAF
 YY0Kpspj4ISFsSOFRLNMDEXCRLrg9NM8fVZkxdBh7q4Oq0Y9eoBzTMj3WbOMHSM9Q2QV4Qn4vfrdc
 +hfdL4vA5eB4OQdw=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tPwqP-00063b-Gl for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Dec 2024 04:48:34 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-3a78421a2e1so79179705ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 23 Dec 2024 20:48:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735015707; x=1735620507;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=BcLo/HctTvrMPpCbi+TWdiMrTgdhY0+MJzeJQuDaGug=;
 b=Tp5eT181cppXWn7v9kY/PYxPn7TYLFsHC4ch46KEstFZtt/ebJP2s/+piv9XAuqk+n
 5Nwtj9KaDtfJEKv5kfDcv+mPCbTLM0UdYOXOQiKbjaeEsE8vB0YaBiTpK+DNAisRvVX9
 xDXapuf6/B/HNGwZu/AVmdGORGfVSYCkQqWGdOJLvoTljzYKiD8FRXPjDy6qofO6kjzc
 7CwQDSrt2bde1Wxm+m2ZVzIoX7TmS0fUbHCmRywBZr1xpPelrC54xBB0/EWOQ8NBdcIK
 RLGD5G/GjUaCKfp2pUchI9uC13Aw9VbxSXYqqoaQGS2fXEdutSw1wSoPA9eb8GhF0+wY
 WtWQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWN6nUaXIJ09/ayU1O58fIa0rb+yN2kdNkqp3jy5kTr+Hm8zpsv6yhzKDsYTTtKdQL+LF8M8iXsgWPJQQfoZw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy5dwUrRlC/u8YeMFYmwwc4nQzuDau3ZBC1ZYk+uPlOoyszSx1R
 wnRG8K+XOyW8bSvPEeS/TCgzlnY72XayT4p8GwJEruIJsPnaP+H9FJ2EulEqJvpeh6gZClAbzOb
 zOqmRTKomnHv55pKBywf6gAZJDlOzQIs9nTRRIGMygMd92p0hEjgKMss=
X-Google-Smtp-Source: AGHT+IGpK4/FujjsGBOxT93pLQdnsUBCTkLLBOsTSMdn7fnHiILWKb7FtIWZOh2pi8q4H/8wUYYqjDkeEkz4xBSvbVvGxnQBw+9+
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c42:b0:3a7:87f2:b00e with SMTP id
 e9e14a558f8ab-3c2d533f04dmr129035915ab.19.1735015707652; Mon, 23 Dec 2024
 20:48:27 -0800 (PST)
Date: Mon, 23 Dec 2024 20:48:27 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <676a3d1b.050a0220.2f3838.014f.GAE@google.com>
To: brauner@kernel.org, jack@suse.cz, jfs-discussion@lists.sourceforge.net, 
 konishi.ryusuke@gmail.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-nilfs@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 8503810115fb
 Add linux-next specific files for 20241219 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=14412fe8580000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.208 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.208 listed in wl.mailspike.net]
X-Headers-End: 1tPwqP-00063b-Gl
X-Mailman-Approved-At: Tue, 24 Dec 2024 15:03:34 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] [nilfs?] WARNING in mnt_ns_release
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
Reply-To: syzbot <syzbot+5b9d613904b2f185f2fe@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    8503810115fb Add linux-next specific files for 20241219
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=14412fe8580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=26a4b4cc7f877b28
dashboard link: https://syzkaller.appspot.com/bug?extid=5b9d613904b2f185f2fe
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=134992df980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/8e84022cbe98/disk-85038101.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/112a23063d67/vmlinux-85038101.xz
kernel image: https://storage.googleapis.com/syzbot-assets/3778558f0562/bzImage-85038101.xz
mounted in repro #1: https://storage.googleapis.com/syzbot-assets/3e0de479e20d/mount_0.gz
mounted in repro #2: https://storage.googleapis.com/syzbot-assets/051056cfbd12/mount_1.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5b9d613904b2f185f2fe@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 0 PID: 5847 at fs/namespace.c:163 mnt_ns_release+0x15d/0x1c0 fs/namespace.c:163
Modules linked in:
CPU: 0 UID: 0 PID: 5847 Comm: syz-executor Not tainted 6.13.0-rc3-next-20241219-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 11/25/2024
RIP: 0010:mnt_ns_release+0x15d/0x1c0 fs/namespace.c:163
Code: 15 bf 01 00 00 00 89 ee e8 90 fc 7d ff 85 ed 7e 39 e8 47 f8 7d ff 4c 89 ff 5b 41 5e 41 5f 5d e9 19 ca d8 ff e8 34 f8 7d ff 90 <0f> 0b 90 e9 12 ff ff ff e8 26 f8 7d ff 48 89 df be 03 00 00 00 5b
RSP: 0018:ffffc90000007bb8 EFLAGS: 00010246
RAX: ffffffff8241281c RBX: 0000000000000001 RCX: ffff888034a81e00
RDX: 0000000000000100 RSI: 0000000000000001 RDI: 0000000000000001
RBP: ffffc90000007e10 R08: ffffffff82412722 R09: 1ffffffff285ab0b
R10: dffffc0000000000 R11: ffffffff82422da0 R12: ffffffff81a6a587
R13: ffff88807cec0e58 R14: dffffc0000000000 R15: ffff88807cec0e00
FS:  0000000000000000(0000) GS:ffff8880b8600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f98aaffed00 CR3: 0000000076918000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <IRQ>
 rcu_do_batch kernel/rcu/tree.c:2546 [inline]
 rcu_core+0xaaa/0x17a0 kernel/rcu/tree.c:2802
 handle_softirqs+0x2d4/0x9b0 kernel/softirq.c:561
 __do_softirq kernel/softirq.c:595 [inline]
 invoke_softirq kernel/softirq.c:435 [inline]
 __irq_exit_rcu+0xf7/0x220 kernel/softirq.c:662
 irq_exit_rcu+0x9/0x30 kernel/softirq.c:678
 instr_sysvec_apic_timer_interrupt arch/x86/kernel/apic/apic.c:1049 [inline]
 sysvec_apic_timer_interrupt+0xa6/0xc0 arch/x86/kernel/apic/apic.c:1049
 </IRQ>
 <TASK>
 asm_sysvec_apic_timer_interrupt+0x1a/0x20 arch/x86/include/asm/idtentry.h:702
RIP: 0010:__rb_erase_augmented include/linux/rbtree_augmented.h:228 [inline]
RIP: 0010:rb_erase+0x3e/0xe70 lib/rbtree.c:443
Code: 74 24 20 48 89 fb 48 b9 00 00 00 00 00 fc ff df 48 83 c7 08 48 89 f8 48 c1 e8 03 80 3c 08 00 74 05 e8 56 08 39 f6 4c 8b 63 08 <4c> 8d 7b 10 4d 89 fd 49 c1 ed 03 48 b8 00 00 00 00 00 fc ff df 41
RSP: 0018:ffffc9000414f9f8 EFLAGS: 00000246
RAX: 1ffff11005f7cf97 RBX: ffff88802fbe7cb0 RCX: dffffc0000000000
RDX: dffffc0000000000 RSI: ffffffff9a4501a0 RDI: ffff88802fbe7cb8
RBP: 1ffff11005f7cf89 R08: ffffffff942d5857 R09: 1ffffffff285ab0a
R10: dffffc0000000000 R11: fffffbfff285ab0b R12: 0000000000000000
R13: dffffc0000000000 R14: ffffffff818b397d R15: ffff88802fbe7c00
 mnt_ns_tree_remove fs/namespace.c:183 [inline]
 free_mnt_ns+0x10f/0x210 fs/namespace.c:3916
 free_nsproxy+0x4d/0x3c0 kernel/nsproxy.c:193
 do_exit+0xa2a/0x28e0 kernel/exit.c:937
 do_group_exit+0x207/0x2c0 kernel/exit.c:1087
 get_signal+0x16b2/0x1750 kernel/signal.c:3017
 arch_do_signal_or_restart+0x96/0x860 arch/x86/kernel/signal.c:337
 exit_to_user_mode_loop kernel/entry/common.c:111 [inline]
 exit_to_user_mode_prepare include/linux/entry-common.h:329 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:207 [inline]
 syscall_exit_to_user_mode+0xce/0x340 kernel/entry/common.c:218
 do_syscall_64+0x100/0x230 arch/x86/entry/common.c:89
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fbe62f846fd
Code: Unable to access opcode bytes at 0x7fbe62f846d3.
RSP: 002b:00007ffeb8ef6dc8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
RAX: fffffffffffffe00 RBX: 0000000000000003 RCX: 00007fbe62f846fd
RDX: 0000000000000030 RSI: 00007ffeb8ef6e50 RDI: 00000000000000f9
RBP: 00007ffeb8ef6dfc R08: 00000000000003b8 R09: 0079746972756365
R10: 00007fbe631487e0 R11: 0000000000000246 R12: 00007fbe63145f68
R13: 000000000001946d R14: 00007ffeb8ef6e50 R15: 0000000000000001
 </TASK>
----------------
Code disassembly (best guess):
   0:	74 24                	je     0x26
   2:	20 48 89             	and    %cl,-0x77(%rax)
   5:	fb                   	sti
   6:	48 b9 00 00 00 00 00 	movabs $0xdffffc0000000000,%rcx
   d:	fc ff df
  10:	48 83 c7 08          	add    $0x8,%rdi
  14:	48 89 f8             	mov    %rdi,%rax
  17:	48 c1 e8 03          	shr    $0x3,%rax
  1b:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  1f:	74 05                	je     0x26
  21:	e8 56 08 39 f6       	call   0xf639087c
  26:	4c 8b 63 08          	mov    0x8(%rbx),%r12
* 2a:	4c 8d 7b 10          	lea    0x10(%rbx),%r15 <-- trapping instruction
  2e:	4d 89 fd             	mov    %r15,%r13
  31:	49 c1 ed 03          	shr    $0x3,%r13
  35:	48 b8 00 00 00 00 00 	movabs $0xdffffc0000000000,%rax
  3c:	fc ff df
  3f:	41                   	rex.B


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
