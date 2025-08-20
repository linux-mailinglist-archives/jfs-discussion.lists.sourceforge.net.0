Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7205BB3A446
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Aug 2025 17:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EQsZci+0l8RHhNIV+h8zndA6YU39FK8Kza6tz5N83VY=; b=a8U4i5XXFGwSqixfEdecX3j74Y
	we/7++xjXbG1XVuzPfCwXG2Et/aMwQ+zHFvwL1Er3TDVqEDK0hxKLUjG9JqZBeeBnSZFSbLfSLp2L
	3JIVtidgJILlbbgaU+KTlUkdHCHlgruia3pspwf7bltvPLftcjKluKw2j+w/Smvy2xh4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ureUT-0005G5-SG;
	Thu, 28 Aug 2025 15:24:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <31ZOlaAkbAN4SYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uof1f-0005OB-RG for jfs-discussion@lists.sourceforge.net;
 Wed, 20 Aug 2025 09:22:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2IOsvlCn6bNehdNddsd3cfCeCLa2ODNVYcldXRzd2s8=; b=bpfuGHmoPn/m52kNB0+FifX3DM
 twi0HOFcdql5shyxGt/ebgEhEzHTidf/P07Ql989lGLWtmYFxJxVlvmyiqQkBUqTcTR9S1HVJiepe
 VgsDXXkO33OJ2qXlJEjagA6+yq6bibB2fyeDts/l/t+qNU17jeB+kMMoNtz/MVc/iXr4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2IOsvlCn6bNehdNddsd3cfCeCLa2ODNVYcldXRzd2s8=; b=k
 bZYsPmuu1Th9v1JOkytxGvVfiWf2deWc/a8AVLbFat1GXLjfyiKvbpOD4lGvDmP8zLynRJK36UVrc
 BX4Uhy3ygsC8ofWdF/v0uAq8jQpTYt/G+Kb5mxgnfbfJbsLCqEkhrRbTGgwW5KxUyG7P2FGxwL8+0
 zemGEdGv7ksONYmg=;
Received: from mail-io1-f79.google.com ([209.85.166.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uof1f-00074X-A7 for jfs-discussion@lists.sourceforge.net;
 Wed, 20 Aug 2025 09:22:36 +0000
Received: by mail-io1-f79.google.com with SMTP id
 ca18e2360f4ac-88432da0cfdso1707936839f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 20 Aug 2025 02:22:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755681749; x=1756286549;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2IOsvlCn6bNehdNddsd3cfCeCLa2ODNVYcldXRzd2s8=;
 b=lckiSAr6hX5+Zt1yuGNlLEew7vCPQmqlNLwebpHudp/8g0aDsoHo76G9J7nYPm2ac/
 AUS3IQVi0iAmzr9KzjzyTx55FrV3rVqnV2y28//rIDtCHIt0VknDeapdSmDa776fSX1I
 aTNVwuMqIBwIFMDztZ7jvuTKvq07sbpA7eh4nPq9xmG41bmesTOeKapDwSOYypob5b24
 bCmHYkHvCSr1fW4faKVqfKz2t4YEi5L4lG23N0iu2hTESiE/NiMeJU/oGVGMDj0s9tY0
 659WSMGFbl36H05ldFFHiOhoAVCFAWgTC6xKEG2R7+GJtvN6yd500wWthLQTT5KIJEse
 jleQ==
X-Gm-Message-State: AOJu0YzjmQg0EnqhMMZbrWmLi9lKUdCNSlqnA/K5+YwXBMQ73Ohu/Gqe
 G1aTUsd3pNQNQhIaqwYePAVjE/RQp1ywWYP60hNpmfEpTXfQeLz7e3wuVgIFrAuhlxJ+r337FIv
 9ySqT2Z5iXNLeQ37YQ+yyhMk3plReYjssMXF+OA51Oq53a1Oyf0gf6kilwI7SsA==
X-Google-Smtp-Source: AGHT+IHZDW0lTUXSXn14RmR2TI+Qke9fg8Hx1/lZR9VIAmC7os+uGLoiFGjKAfGB3UCReEK8yRvt47RU8SW79w7Dl0efPMnKr85o
MIME-Version: 1.0
X-Received: by 2002:a05:6602:1511:b0:881:9a39:9ef1 with SMTP id
 ca18e2360f4ac-884714b7632mr485430839f.0.1755681749562; Wed, 20 Aug 2025
 02:22:29 -0700 (PDT)
Date: Wed, 20 Aug 2025 02:22:29 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68a593d5.a70a0220.2e41e7.0001.GAE@google.com>
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
 syzbot found the following issue on: HEAD commit: b19a97d57c15
 Merge tag 'pull-fixes' of git://git.kernel.or.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=164be7a2580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.79 listed in wl.mailspike.net]
X-Headers-End: 1uof1f-00074X-A7
X-Mailman-Approved-At: Thu, 28 Aug 2025 15:24:39 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] stack segment fault in
 release_metapage
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
Reply-To: syzbot <syzbot+43706fd1eb4c8dccdfe6@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    b19a97d57c15 Merge tag 'pull-fixes' of git://git.kernel.or..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=164be7a2580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e1e1566c7726877e
dashboard link: https://syzkaller.appspot.com/bug?extid=43706fd1eb4c8dccdfe6
compiler:       Debian clang version 20.1.7 (++20250616065708+6146a88f6049-1~exp1~20250616065826.132), Debian LLD 20.1.7
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=166f7234580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=166b3ba2580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/3680804d0eba/disk-b19a97d5.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/00b082ce2930/vmlinux-b19a97d5.xz
kernel image: https://storage.googleapis.com/syzbot-assets/7a6a94ccbccc/bzImage-b19a97d5.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/5c560e6f4683/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=112566f0580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+43706fd1eb4c8dccdfe6@syzkaller.appspotmail.com

Oops: stack segment: 0000 [#1] SMP KASAN [   95.155857][  T122] Oops: stack segment: 0000 [#1] SMP KASAN PTI
CPU: 1 UID: 0 PID: 122 Comm: jfsCommit Tainted: G        W           syzkaller #0 PREEMPT_{RT,(full)} 
Tainted: [W]=WARN
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/12/2025
RIP: 0010:folio_flags include/linux/page-flags.h:360 [inline]
RIP: 0010:folio_trylock include/linux/pagemap.h:1096 [inline]
RIP: 0010:folio_lock include/linux/pagemap.h:1132 [inline]
RIP: 0010:release_metapage+0x9e/0xab0 fs/jfs/jfs_metapage.c:870
Code: 04 00 00 e8 b4 c9 87 fe 48 c7 c7 51 f4 05 8d be 6b 04 00 00 e8 43 ba 5a fe 2e 2e 2e 31 c0 49 8d 5c 24 08 48 89 dd 48 c1 ed 03 <42> 80 7c 2d 00 00 74 08 48 89 df e8 a2 fc e6 fe 4c 8b 3b 4c 89 fe
RSP: 0018:ffffc900039976d8 EFLAGS: 00010202
RAX: 0000000000000000 RBX: 0000000000000008 RCX: ffff88801ebc3b80
RDX: ffff88801ebc3b80 RSI: 000000000000046b RDI: ffffffff8d05f451
RBP: 0000000000000001 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: ffffed100b48576e R12: 0000000000000000
R13: dffffc0000000000 R14: ffff88805a42bb48 R15: dffffc0000000000
FS:  0000000000000000(0000) GS:ffff8881269c5000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555561a8e648 CR3: 0000000023fb6000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 xtTruncate+0xe84/0x2e70 fs/jfs/jfs_xtree.c:-1
 jfs_free_zero_link+0x33a/0x4a0 fs/jfs/namei.c:759
 jfs_evict_inode+0x363/0x440 fs/jfs/inode.c:153
 evict+0x501/0x9c0 fs/inode.c:810
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x3f1/0xa10 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x70e/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x3fc/0x770 arch/x86/kernel/process.c:148
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:folio_flags include/linux/page-flags.h:360 [inline]
RIP: 0010:folio_trylock include/linux/pagemap.h:1096 [inline]
RIP: 0010:folio_lock include/linux/pagemap.h:1132 [inline]
RIP: 0010:release_metapage+0x9e/0xab0 fs/jfs/jfs_metapage.c:870
Code: 04 00 00 e8 b4 c9 87 fe 48 c7 c7 51 f4 05 8d be 6b 04 00 00 e8 43 ba 5a fe 2e 2e 2e 31 c0 49 8d 5c 24 08 48 89 dd 48 c1 ed 03 <42> 80 7c 2d 00 00 74 08 48 89 df e8 a2 fc e6 fe 4c 8b 3b 4c 89 fe
RSP: 0018:ffffc900039976d8 EFLAGS: 00010202
RAX: 0000000000000000 RBX: 0000000000000008 RCX: ffff88801ebc3b80
RDX: ffff88801ebc3b80 RSI: 000000000000046b RDI: ffffffff8d05f451
RBP: 0000000000000001 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: ffffed100b48576e R12: 0000000000000000
R13: dffffc0000000000 R14: ffff88805a42bb48 R15: dffffc0000000000
FS:  0000000000000000(0000) GS:ffff8881269c5000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555561a8e648 CR3: 00000000366e0000 CR4: 00000000003526f0
----------------
Code disassembly (best guess):
   0:	04 00                	add    $0x0,%al
   2:	00 e8                	add    %ch,%al
   4:	b4 c9                	mov    $0xc9,%ah
   6:	87 fe                	xchg   %edi,%esi
   8:	48 c7 c7 51 f4 05 8d 	mov    $0xffffffff8d05f451,%rdi
   f:	be 6b 04 00 00       	mov    $0x46b,%esi
  14:	e8 43 ba 5a fe       	call   0xfe5aba5c
  19:	2e 2e 2e 31 c0       	cs cs cs xor %eax,%eax
  1e:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
  23:	48 89 dd             	mov    %rbx,%rbp
  26:	48 c1 ed 03          	shr    $0x3,%rbp
* 2a:	42 80 7c 2d 00 00    	cmpb   $0x0,0x0(%rbp,%r13,1) <-- trapping instruction
  30:	74 08                	je     0x3a
  32:	48 89 df             	mov    %rbx,%rdi
  35:	e8 a2 fc e6 fe       	call   0xfee6fcdc
  3a:	4c 8b 3b             	mov    (%rbx),%r15
  3d:	4c 89 fe             	mov    %r15,%rsi


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
