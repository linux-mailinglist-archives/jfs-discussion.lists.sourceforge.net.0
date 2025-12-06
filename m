Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D30CAAA56
	for <lists+jfs-discussion@lfdr.de>; Sat, 06 Dec 2025 17:32:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=83X/uiuaFvTgYtCYa2UJh2YAa5dRj6KMTB7nLQMyZSQ=; b=INrKYUMp9sZH3ZIOrx9eyA2AYF
	Wb8WIFpqAaHLpLKRJFISmy2kLAFMAy22yTY3uTWduixIfhN7npbmyzQqh5k4T7IX6fxtSEefAEuK2
	XcK3Zbkd+Tr3kbgHmPpoNCujEppf9uTHMQCTG6NMwdXHUOCtX9pZdeZqalN1jGiri8Pw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vRvCV-0005cV-EQ;
	Sat, 06 Dec 2025 16:32:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Y1o0aQkbADoouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vRvC4-0005ZJ-Jl for jfs-discussion@lists.sourceforge.net;
 Sat, 06 Dec 2025 16:31:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nLqpcud8wErDRSIA3A70i10LOPXTHEKsYkXrY1nnocc=; b=NRlMB+Djcy+aYq5jUNv5bXMioc
 7VTK5f/6/PDexWIm7yb0jTFXc9FI6jIIVaK6+qWU94+wkM4h5DoDVL5VxrM2UagA5O9B7JVm/GD0L
 4xnN5cYCqJcQRMQivSqRHE/ZUjQz0xq5ASVa1SpP5BubAijHhzsecjxf/HSLz6IiXAMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nLqpcud8wErDRSIA3A70i10LOPXTHEKsYkXrY1nnocc=; b=W
 SHNGI/BYf57LuiVrKKCtXjUDkVu3vcskP8WQ13/nDk/42C7JXtfcgMgZ41dWOQ/O7CK2vrbUs1Koc
 GvciA54YhBalzNV9scd7pTiZx/JAjoyV6ys8wVKqvVB3TCAVVGVrUtGs3Z8/N6Jms5ZXtVp2W6VAX
 zMqvpS4HT15pMAT8=;
Received: from mail-ot1-f78.google.com ([209.85.210.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vRvC4-00054u-Lp for jfs-discussion@lists.sourceforge.net;
 Sat, 06 Dec 2025 16:31:37 +0000
Received: by mail-ot1-f78.google.com with SMTP id
 46e09a7af769-7c75290862cso6460368a34.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 06 Dec 2025 08:31:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765038691; x=1765643491;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=nLqpcud8wErDRSIA3A70i10LOPXTHEKsYkXrY1nnocc=;
 b=VFpTQmcCCvRLbe6NTK4dY6BK4TFD3gkaeg/LVS/y+AyBFmUQYiIUJIrx0PesoX4IHu
 gJDstu6ptthjJkUVkqxnLUzPYcRtODhe31alcEbTLfR4sGfSf2bJlgJ04MEhwHkwxQbJ
 wVaSFfYA6KlJFdDGNgSWDd/oZMFvL3/sxGseSWirtRqUIVCGfsJl+a8fRJZ5VIN4jsaw
 5+Cfd9SMwaU66/eqqliJUoGQR3WzJPLpIsDQ/huQD8jno2dXPIf6I3IEY3rGM9iLQVXs
 qo9/0aK2q+l6cKv1PNWbu0mdeRH+CdK12EJ/JAK2ze9BEDuOWdRKna0mvkkfxt5iwtTr
 JX1Q==
X-Gm-Message-State: AOJu0YzPAE5b9R1E27ntQZXaIVKK2GfzuhPHnsm0TlqrQs0WAZmn/vkT
 V5/CNihxlbfWR9alvBpujfbWBruGVRMvg0axSok/XMhNOu/wFsNNeRMaT0hexx8ThiJQb4RVX8E
 vSO6mifAVZYPOP2nt7o99ZLyzGt8naXINM5nQqAKq2dz/o4FOBSnGkgtrCIBItw==
X-Google-Smtp-Source: AGHT+IET0LE037QBra+Y42hz03BdWdfKHa5OOgUrkqqL/Jsm4v7nUZ4FnRznX1nRNERruFMgqQMU/bjUQOJQeWIuGp7LKYZZ36Ry
MIME-Version: 1.0
X-Received: by 2002:a05:6820:4d07:b0:659:9a49:8e8f with SMTP id
 006d021491bc7-6599a8c27c7mr1115668eaf.19.1765038691068; Sat, 06 Dec 2025
 08:31:31 -0800 (PST)
Date: Sat, 06 Dec 2025 08:31:31 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69345a63.a70a0220.38f243.0031.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 4a26e7032d7d
 Merge tag 'core-bugs-2025-12-01' of git://git.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=11ea9512580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.78 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vRvC4-00054u-Lp
X-Mailman-Approved-At: Sat, 06 Dec 2025 16:32:02 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbJoin (2)
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
Reply-To: syzbot <syzbot+fa603ae6b02658401ca7@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    4a26e7032d7d Merge tag 'core-bugs-2025-12-01' of git://git..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11ea9512580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=dd808c444ce84c8
dashboard link: https://syzkaller.appspot.com/bug?extid=fa603ae6b02658401ca7
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14dbe192580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=112d92b4580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/a40b77c72522/disk-4a26e703.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b2b4fa9b2036/vmlinux-4a26e703.xz
kernel image: https://storage.googleapis.com/syzbot-assets/7105f0502b78/bzImage-4a26e703.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/1f7c2e37ce13/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=170ab512580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+fa603ae6b02658401ca7@syzkaller.appspotmail.com

------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2795:11
shift exponent 132 is too large for 32-bit type 'int'
CPU: 0 UID: 0 PID: 123 Comm: jfsCommit Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/25/2025
Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 ubsan_epilogue+0xa/0x40 lib/ubsan.c:233
 __ubsan_handle_shift_out_of_bounds+0x386/0x410 lib/ubsan.c:494
 dbJoin+0x2dc/0x300 fs/jfs/jfs_dmap.c:2795
 dbFreeBits+0x4e1/0xdb0 fs/jfs/jfs_dmap.c:2340
 dbFreeDmap fs/jfs/jfs_dmap.c:2089 [inline]
 dbFree+0x336/0x650 fs/jfs/jfs_dmap.c:398
 txFreeMap+0x7ff/0xde0 fs/jfs/jfs_txnmgr.c:2535
 txUpdateMap+0x308/0x9c0 fs/jfs/jfs_txnmgr.c:-1
 txLazyCommit fs/jfs/jfs_txnmgr.c:2665 [inline]
 jfs_lazycommit+0x3f1/0xa10 fs/jfs/jfs_txnmgr.c:2734
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x52d/0xa60 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
---[ end trace ]---
Kernel panic - not syncing: UBSAN: panic_on_warn set ...
CPU: 0 UID: 0 PID: 123 Comm: jfsCommit Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/25/2025
Call Trace:
 <TASK>
 dump_stack_lvl+0x99/0x250 lib/dump_stack.c:120
 vpanic+0x237/0x6d0 kernel/panic.c:489
 panic+0xb9/0xc0 kernel/panic.c:626
 check_panic_on_warn+0x89/0xb0 kernel/panic.c:376
 __ubsan_handle_shift_out_of_bounds+0x386/0x410 lib/ubsan.c:494
 dbJoin+0x2dc/0x300 fs/jfs/jfs_dmap.c:2795
 dbFreeBits+0x4e1/0xdb0 fs/jfs/jfs_dmap.c:2340
 dbFreeDmap fs/jfs/jfs_dmap.c:2089 [inline]
 dbFree+0x336/0x650 fs/jfs/jfs_dmap.c:398
 txFreeMap+0x7ff/0xde0 fs/jfs/jfs_txnmgr.c:2535
 txUpdateMap+0x308/0x9c0 fs/jfs/jfs_txnmgr.c:-1
 txLazyCommit fs/jfs/jfs_txnmgr.c:2665 [inline]
 jfs_lazycommit+0x3f1/0xa10 fs/jfs/jfs_txnmgr.c:2734
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x52d/0xa60 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
Kernel Offset: disabled


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
