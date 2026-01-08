Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5BFD03973
	for <lists+jfs-discussion@lfdr.de>; Thu, 08 Jan 2026 15:57:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YI1Apwn2PE2AzNiOsYpalpcJotNiD+AA6rCPEfNe7GY=; b=UbruCJIQLWj4Al5xXx/wrnthyB
	aqhQvSSQTdQ2r77aiIoUceBPWvVj4RuPvTnTfa4YryYKqSrz/TewGpadbdMDmFIm7ok0gGjRbhMna
	S9r7sL7gKtipFihDj1Ht5VFCHgIbPpdo2CSy5gGbTvC6PPTUdlc1kBKgws5Dw1jM9yyo=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vdrS8-0000yf-Nx;
	Thu, 08 Jan 2026 14:57:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Y6pfaQkbAIg4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vdpcu-0007HH-AL for jfs-discussion@lists.sourceforge.net;
 Thu, 08 Jan 2026 13:00:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SiwEBp6k+cQVbCA7Qdwup0WDnx6WDdSeZV6t3RJMrBk=; b=kHp/hgs4mYTopqI/uMSYa205q4
 SDeyoKw7EqhuxoxTadMygi8vQ2n8MOPjTjVBU83lz61cR2VvjdLDod1Ga6KinCUaoHm+3X14ScyPI
 N6ww0LUQIOd8C8CEfCOUhVkErMTeH3PGFfTZBlf+PKJOPMbrQ/R8v/HQoJAK1jSj++6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SiwEBp6k+cQVbCA7Qdwup0WDnx6WDdSeZV6t3RJMrBk=; b=W
 /AFxI10c+/EBRQEvS8mSf43jlR4q2iIkEA+fS8+WKmnmBL+P1fUnQI36gNI8ldGHBdFjkwM30BX9k
 0dtK6bos1La5CJyJzlQJ3qxLqmBKOTBH/9evGYYUJwYM+j6ZWaV6kJsyzRnWgshDUcAnj3KtfZSoX
 SdfZQdK5XG1iUJcI=;
Received: from mail-oo1-f77.google.com ([209.85.161.77])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vdpct-0001fB-5c for jfs-discussion@lists.sourceforge.net;
 Thu, 08 Jan 2026 13:00:32 +0000
Received: by mail-oo1-f77.google.com with SMTP id
 006d021491bc7-65cfea2cedeso1714912eaf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 08 Jan 2026 05:00:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767877220; x=1768482020;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=SiwEBp6k+cQVbCA7Qdwup0WDnx6WDdSeZV6t3RJMrBk=;
 b=JBtoJak1EmrZf87XY5GAImcr+BH1qaKBHwa+WsWT0DOC1sPFmL2KQ6jztggHzaTV8T
 DgbCfH+B4Zq2qP0FookNu8DkU3DMd8R+godkCDlbAP4WIoWDYDEWb9L8AkqKDLLf+cGC
 7uE8mi6vUa7nPXkELEZUarUJJnLDCXh76TwADy+RTOXWtUwdutd0socRa7R+kmDjDyHc
 ceXDF+66MjmrySvmGCk05wxem6QefBLZjb5LfQ9oiiMefz+FixO6eAx5TesrbDSOQHhN
 sVreFJZIzEaKu4ggTzyiKS8NVTcxozb1WcNbkiFZSkCjGo0KIsNxY4/EHmM0CS+s/P23
 tZGQ==
X-Gm-Message-State: AOJu0Yx2sTpephmSEpTQ5gU/zQX091yLtDv86+2YxHp+QB3PegwS45VI
 MQSOQ1NUkXJo0q348Mfk+EvpnuN3qL+PNHV1W9QaemfAGAsQ63xrWUfjbWyev6SduzoKBcYgb2/
 XCpuGRHQjqyk+yAQO4wR6IseuZspfpQOhubMPe7n3L4nUJWZwdFYUULafVe2IYg==
X-Google-Smtp-Source: AGHT+IFhQAzEo4nAKxQfmPn9jKmU0XM+kT+mPLTt3As2d4lAH9ROkiPclkvgqd77S02qSUinVTzvtpZGoKw8zmsnYTmwFY3FSDN/
MIME-Version: 1.0
X-Received: by 2002:a05:6820:7511:b0:659:9a49:8e4d with SMTP id
 006d021491bc7-65f54ef197dmr1743451eaf.29.1767877219271; Thu, 08 Jan 2026
 05:00:19 -0800 (PST)
Date: Thu, 08 Jan 2026 05:00:19 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <695faa63.050a0220.1c677c.039a.GAE@google.com>
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
 syzbot found the following issue on: HEAD commit: f0b9d8eb98df
 Merge tag 'nfsd-6.19-3' of git://git.kernel.o.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=130f7e9a580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.77 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vdpct-0001fB-5c
X-Mailman-Approved-At: Thu, 08 Jan 2026 14:57:31 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dbFindLeaf (2)
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
Reply-To: syzbot <syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    f0b9d8eb98df Merge tag 'nfsd-6.19-3' of git://git.kernel.o..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=130f7e9a580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1f2b6fe1fdf1a00b
dashboard link: https://syzkaller.appspot.com/bug?extid=1afe7ef2d0062e19eeb3
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16e4ee9a580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1491c922580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/cbc651b8fda7/disk-f0b9d8eb.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c3b1f0bf4b6c/vmlinux-f0b9d8eb.xz
kernel image: https://storage.googleapis.com/syzbot-assets/e102a718f8b0/bzImage-f0b9d8eb.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/c8289184ec3d/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=12e4ee9a580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com

------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2976:16
index 1365 is out of range for type 's8[1365]' (aka 'signed char[1365]')
CPU: 1 UID: 0 PID: 6059 Comm: syz.0.17 Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/25/2025
Call Trace:
 <TASK>
 dump_stack_lvl+0xe8/0x150 lib/dump_stack.c:120
 ubsan_epilogue+0xa/0x40 lib/ubsan.c:233
 __ubsan_handle_out_of_bounds+0xe9/0xf0 lib/ubsan.c:455
 dbFindLeaf+0x308/0x520 fs/jfs/jfs_dmap.c:2976
 dbFindCtl+0x267/0x520 fs/jfs/jfs_dmap.c:1717
 dbAllocAny fs/jfs/jfs_dmap.c:1527 [inline]
 dbAlloc+0x5fa/0xba0 fs/jfs/jfs_dmap.c:878
 diNewIAG fs/jfs/jfs_imap.c:2510 [inline]
 diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
 diAllocAG+0xd45/0x1df0 fs/jfs/jfs_imap.c:1669
 diAlloc+0x1d4/0x1670 fs/jfs/jfs_imap.c:1590
 ialloc+0x8c/0x8f0 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x193/0xa70 fs/jfs/namei.c:225
 vfs_mkdir+0x52d/0x5d0 fs/namei.c:5130
 do_mkdirat+0x27a/0x4b0 fs/namei.c:5164
 __do_sys_mkdirat fs/namei.c:5186 [inline]
 __se_sys_mkdirat fs/namei.c:5184 [inline]
 __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:5184
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xec/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7efe6c5ade97
Code: 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 b8 02 01 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007efe6bbf4e68 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 00007efe6bbf4ef0 RCX: 00007efe6c5ade97
RDX: 00000000000001ff RSI: 00002000000002c0 RDI: 00000000ffffff9c
RBP: 0000200000000200 R08: 00002000000000c0 R09: 0000000000000000
R10: 0000200000000200 R11: 0000000000000246 R12: 00002000000002c0
R13: 00007efe6bbf4eb0 R14: 0000000000000000 R15: 0000000000000000
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
