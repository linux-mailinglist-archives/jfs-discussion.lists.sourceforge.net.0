Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BDBC38709
	for <lists+jfs-discussion@lfdr.de>; Thu, 06 Nov 2025 01:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CEs1rehcgxs4Fozhdl9O+BA9wxCqJL/b5zN1kOpwQLk=; b=lZnzvQvuzqHqUfx2k8M/wagrev
	4197PMxiVaeERoE0P5MasuIV2Z6u2BnqGrZ9RCVl5nuC1C+P9XJQdF2IFu2BEI+DTmiBl1vfBa4UW
	zks4bmY2Kwr37Dq9TKYOzL3I9iceh46UY8TuEizGVU7tk9/PS/uSuMp1QJkRpUvu1dqg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vGnaF-0001Nj-8K;
	Thu, 06 Nov 2025 00:10:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3AYULaQkbAIg4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vGh1o-00018k-Tm for jfs-discussion@lists.sourceforge.net;
 Wed, 05 Nov 2025 17:10:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PeKgmYgAJhRARt41Levq+ghY4ImHp5QVQzQNGpFmkC0=; b=KTlu0Ha53q1hngzM+zZXzTgobY
 7ybEbbWvkid3RgIQCh4Bi1Cd4um0EkDfvBS2om3VSFOdQfWnjWkFbAZcZ2NI3YBvv5wNwK4yi54yR
 pIb7v0sG2Mxt5+lrjpOf0cubIjM0Wm37TgExbwW7DYV25jPkM1rEBKpW0zhAyfyB6xr0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PeKgmYgAJhRARt41Levq+ghY4ImHp5QVQzQNGpFmkC0=; b=G
 N/DS6WyVkEy0LBPJdjX6kk1S9eeC7H7glqVmcAGK72Y5PrznQgIZFeb9apJpF+IxU2tDstGca5Rz8
 JUp8RLiDRpZwdi6nVoPhfL9BrYvzUkPr7IC10cFCmmlxXNHiRbXjFDkmd9oISxStZwVajHK69w0l7
 kC2j4bzW49LnEPgI=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vGh1n-0001Sq-Mk for jfs-discussion@lists.sourceforge.net;
 Wed, 05 Nov 2025 17:10:36 +0000
Received: by mail-il1-f205.google.com with SMTP id
 e9e14a558f8ab-4334affe616so6528495ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 05 Nov 2025 09:10:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762362625; x=1762967425;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PeKgmYgAJhRARt41Levq+ghY4ImHp5QVQzQNGpFmkC0=;
 b=fvd1+0KCc9dp/OaVu8yChnWXPXy+ihpx61j5AB8mq+LoGrkyLSWIWUnmT8UuYItb5J
 DkCPGPGiFaoP825VJGpGuh1+2nDLLgrhHgxpLza67oAf3PH2qrbNEwhYo+5o/RjD79xy
 IxYXjBXJEZAktTBfxWQxiWEyvB1wg1nXHWHNyKUqP4cnW1PhlLoqkb2hlZlyXzgrdALp
 CYeau2BFiWhaYGandIiqTvs9TyDtWcwqDTSq2I1Dji8hJYcLyiKH33EfJxBeaJAG8gS7
 K5caQgd89VAGl6QSTWlVuwtK7p5gM0N1rHLubq7lsNGwz87m3g3VAmIHDRnMmHJASPyD
 NNyQ==
X-Gm-Message-State: AOJu0YzaaXUPsdSKEQWl4uALjhvu0MQWJ4nWM153qtJul0UsdsW1d81o
 VVve0qDoDgRCSzZfplpq317vsRuOb6eeBdzVK6S35uS2J46tq5ktz0I8qT/HVSaXOiBeI8KFIDr
 +a0HN510aJhIhGJrjZDxFw7OHrQljnjzdKZJCilhg9hbfUnkEVqcYhiHpGfu4Dg==
X-Google-Smtp-Source: AGHT+IGUz05gGgImPSQnbiRXAwkLrpM5xFTb0YqZU5GiTFKmFrrrTzGKQg8AuFtQbUSRF0HjwUWx4/r6HnPLLsoVg6SMPwvhWwWy
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1fc6:b0:430:aedb:3719 with SMTP id
 e9e14a558f8ab-4334075983cmr58579985ab.4.1762362625007; Wed, 05 Nov 2025
 09:10:25 -0800 (PST)
Date: Wed, 05 Nov 2025 09:10:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <690b8500.050a0220.baf87.0043.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 691d401c7e0e
 Merge tag 'spi-fix-v6.18-rc3' of git://git.ke.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1481b932580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.205 listed in wl.mailspike.net]
X-Headers-End: 1vGh1n-0001Sq-Mk
X-Mailman-Approved-At: Thu, 06 Nov 2025 00:10:34 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] stack segment fault in diUpdatePMap
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
Reply-To: syzbot <syzbot+e87be72c9a6fe69996f5@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    691d401c7e0e Merge tag 'spi-fix-v6.18-rc3' of git://git.ke..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1481b932580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=41ad820f608cb833
dashboard link: https://syzkaller.appspot.com/bug?extid=e87be72c9a6fe69996f5
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11a9e32f980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=151cc292580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/d338706bec79/disk-691d401c.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/d3ac35c22ff8/vmlinux-691d401c.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d8d6c3e88136/bzImage-691d401c.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/8f4d72d1bc59/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=141ca342580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e87be72c9a6fe69996f5@syzkaller.appspotmail.com

Oops: stack segment: 0000 [#1] SMP KASAN PTI
CPU: 1 UID: 0 PID: 123 Comm: jfsCommit Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/02/2025
RIP: 0010:__list_add_valid_or_report+0x3e/0x130 lib/list_debug.c:29
Code: 00 00 00 48 89 d3 48 85 d2 0f 84 93 00 00 00 49 89 f6 49 89 ff 49 bd 00 00 00 00 00 fc ff df 4c 8d 63 08 4c 89 e5 48 c1 ed 03 <42> 80 7c 2d 00 00 74 08 4c 89 e7 e8 d2 c3 9d fd 4d 39 34 24 75 71
RSP: 0018:ffffc900039d7b10 EFLAGS: 00010a06
RAX: ffffc90003229190 RBX: dead000000000100 RCX: dffffc0000000000
RDX: dead000000000100 RSI: ffffc900032291a0 RDI: ffff88803146f898
RBP: 1bd5a00000000021 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffffbfff1dac5ef R12: dead000000000108
R13: dffffc0000000000 R14: ffffc900032291a0 R15: ffff88803146f898
FS:  0000000000000000(0000) GS:ffff888126ef9000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fb7fb61c000 CR3: 0000000041734000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 __list_add_valid include/linux/list.h:96 [inline]
 __list_add include/linux/list.h:158 [inline]
 list_add include/linux/list.h:177 [inline]
 diUpdatePMap+0x63e/0xe00 fs/jfs/jfs_imap.c:2831
 txUpdateMap+0x7da/0x9c0 fs/jfs/jfs_txnmgr.c:2357
 txLazyCommit fs/jfs/jfs_txnmgr.c:2665 [inline]
 jfs_lazycommit+0x3f1/0xa10 fs/jfs/jfs_txnmgr.c:2734
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x4bc/0x870 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__list_add_valid_or_report+0x3e/0x130 lib/list_debug.c:29
Code: 00 00 00 48 89 d3 48 85 d2 0f 84 93 00 00 00 49 89 f6 49 89 ff 49 bd 00 00 00 00 00 fc ff df 4c 8d 63 08 4c 89 e5 48 c1 ed 03 <42> 80 7c 2d 00 00 74 08 4c 89 e7 e8 d2 c3 9d fd 4d 39 34 24 75 71
RSP: 0018:ffffc900039d7b10 EFLAGS: 00010a06
RAX: ffffc90003229190 RBX: dead000000000100 RCX: dffffc0000000000
RDX: dead000000000100 RSI: ffffc900032291a0 RDI: ffff88803146f898
RBP: 1bd5a00000000021 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffffbfff1dac5ef R12: dead000000000108
R13: dffffc0000000000 R14: ffffc900032291a0 R15: ffff88803146f898
FS:  0000000000000000(0000) GS:ffff888126ef9000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fb7fb61c000 CR3: 0000000041734000 CR4: 00000000003526f0
----------------
Code disassembly (best guess):
   0:	00 00                	add    %al,(%rax)
   2:	00 48 89             	add    %cl,-0x77(%rax)
   5:	d3 48 85             	rorl   %cl,-0x7b(%rax)
   8:	d2 0f                	rorb   %cl,(%rdi)
   a:	84 93 00 00 00 49    	test   %dl,0x49000000(%rbx)
  10:	89 f6                	mov    %esi,%esi
  12:	49 89 ff             	mov    %rdi,%r15
  15:	49 bd 00 00 00 00 00 	movabs $0xdffffc0000000000,%r13
  1c:	fc ff df
  1f:	4c 8d 63 08          	lea    0x8(%rbx),%r12
  23:	4c 89 e5             	mov    %r12,%rbp
  26:	48 c1 ed 03          	shr    $0x3,%rbp
* 2a:	42 80 7c 2d 00 00    	cmpb   $0x0,0x0(%rbp,%r13,1) <-- trapping instruction
  30:	74 08                	je     0x3a
  32:	4c 89 e7             	mov    %r12,%rdi
  35:	e8 d2 c3 9d fd       	call   0xfd9dc40c
  3a:	4d 39 34 24          	cmp    %r14,(%r12)
  3e:	75 71                	jne    0xb1


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
