Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1035C4089B
	for <lists+jfs-discussion@lfdr.de>; Fri, 07 Nov 2025 16:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OIgrYk36KbQZueP5bg0IrQwD/BF33E3yN6s8qq0COow=; b=mZfwsetXZcHLI0n/w2XrWd99xX
	jEI5FZy6jmXiif58dv5m4L67v1jUj0D1Q4eJ6OwWw8lVDQT+muEofkl+atTBDpR5dMGxQetFvtMw6
	zDwQukP9PNkXV+FiPcnW02/gZEw7isr2tYK2BdVM7oSUVi8MIdM9Jpy9eg6yhcImZq+Y=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vHO3y-000261-G2;
	Fri, 07 Nov 2025 15:07:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <31J8NaQkbAJkLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vHGud-0003XG-Ao for jfs-discussion@lists.sourceforge.net;
 Fri, 07 Nov 2025 07:29:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=myDtyB0quJocgmZPo4q8NiQGN1NpxAndRSGB3Kice1c=; b=a46sD9LpmTmk0oi1/3fCIzbIcB
 L+5qa+CE6LUiuDuaLvA7Aldct4EoaAVpY0HyZSzwf5KYQ0MfiQ9wN8wInlHmk0dMgdPUDxTcwQdfh
 fGphTVAFWBd+U/AxvDkRpcJNtzL3DXnb8TFOLyP2ieS+yIwFXoIRFsWvU/zI5bDbCZks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=myDtyB0quJocgmZPo4q8NiQGN1NpxAndRSGB3Kice1c=; b=S
 po1jXby3jViKcB/pYOfjgMsAz7LMuDb/f3vmMSiEL2BiA1LZLlxi7nOyMVtly5rXDL7cH2FrhE76w
 GvkEW0ElHRETFs4/CAdPQRWenwtrvE1sberGaSpKQIVa6T1OV/lGuDt6hvTpzoYrTITvMaCmEW5cg
 3ek9/VR9NB1F5MZE=;
Received: from mail-io1-f77.google.com ([209.85.166.77])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vHGuc-0003YY-Pm for jfs-discussion@lists.sourceforge.net;
 Fri, 07 Nov 2025 07:29:35 +0000
Received: by mail-io1-f77.google.com with SMTP id
 ca18e2360f4ac-948756fb9cfso133920839f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 06 Nov 2025 23:29:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762500564; x=1763105364;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=myDtyB0quJocgmZPo4q8NiQGN1NpxAndRSGB3Kice1c=;
 b=l2OJJjRXZ4QhT65RN8uTEAeHUdJ2iX7mykIXyhvQQOVN0Nikup4zx3HG0cGkfxNSCq
 nW9XgwRCGGzDAxAPsFzCW+/wvSZ8l25mPHqba4XIyDQ80wVsgZ+/z0ZHG5knW3/kRrAw
 Dk/v/S4kclRHDAdgliPsgx7PDFRaiHtbMB9grAWyC+YvJwePVKsdOKfvIevo5oVa0q7f
 uMRzgYDpxbWvg75uLLoAvGiqI05HGiG826R42hNwzQmT6as8gEm7dLo1BkF8QFuX+JTT
 MMB66xRIDn9aPcr6yxMh/huHnLnuVd7keE+CumwKSA9KiPWOryZ5mh55gXNqOWbKZIBX
 Esrw==
X-Gm-Message-State: AOJu0Yz/wTchImFsueOtIPGaONqcpFT2jZsHJ16B1RklX96xqaVyO3sd
 q/xmKIDQiAX9xycOeCTZ4tQzVLnLIrdq93NeXeMg4oGTq7ODq2WmXHq0nlFgfeuvWV13acHVcy+
 uE5M9BeEVspNCMn66iXniWL4fX9GnfJWI3+RdlxWtj4QMnGRqu974VtJJfrXXow==
X-Google-Smtp-Source: AGHT+IGgYvO/k8HgWgHBBRLdbKwms4v/QEC+jVS0TpNqadUYrRu4lKS8VY1gkYkSGFunATjoR31L1xQhU48H+Qmll7WlPKz9FMx5
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:2168:b0:433:2389:e0ad with SMTP id
 e9e14a558f8ab-4335f3c3f22mr28628815ab.8.1762500564176; Thu, 06 Nov 2025
 23:29:24 -0800 (PST)
Date: Thu, 06 Nov 2025 23:29:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <690d9fd4.a70a0220.22f260.0022.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: dcb6fa37fd7b
 Linux 6.18-rc3 git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output:
 https://syzkaller.appspot.com/x/log.txt?x=1451a532580000
 k [...] Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vHGuc-0003YY-Pm
X-Mailman-Approved-At: Fri, 07 Nov 2025 15:07:42 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] BUG: unable to handle kernel
 paging request in diUpdatePMap
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
Reply-To: syzbot <syzbot+7fc112f7a4a0546731c5@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    dcb6fa37fd7b Linux 6.18-rc3
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=1451a532580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b8b659f0cab27b22
dashboard link: https://syzkaller.appspot.com/bug?extid=7fc112f7a4a0546731c5
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17fc5812580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=110f3012580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ae6bec0d0398/disk-dcb6fa37.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/dcc732da66c3/vmlinux-dcb6fa37.xz
kernel image: https://storage.googleapis.com/syzbot-assets/301d1bbdecc2/Image-dcb6fa37.gz.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/94e5a8b9504e/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=1051a532580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+7fc112f7a4a0546731c5@syzkaller.appspotmail.com

Unable to handle kernel paging request at virtual address fbd5200000000021
KASAN: maybe wild-memory-access in range [0xdead000000000108-0xdead00000000010f]
Mem abort info:
  ESR = 0x0000000096000004
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x04: level 0 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000004, ISS2 = 0x00000000
  CM = 0, WnR = 0, TnD = 0, TagAccess = 0
  GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
[fbd5200000000021] address between user and kernel address ranges
Internal error: Oops: 0000000096000004 [#1]  SMP
Modules linked in:
CPU: 0 UID: 0 PID: 100 Comm: jfsCommit Not tainted syzkaller #0 PREEMPT 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/03/2025
pstate: 834000c5 (Nzcv daIF +PAN -UAO +TCO +DIT -SSBS BTYPE=--)
pc : __list_add_valid_or_report+0x3c/0x148 lib/list_debug.c:29
lr : __list_add_valid include/linux/list.h:96 [inline]
lr : __list_add include/linux/list.h:158 [inline]
lr : list_add include/linux/list.h:177 [inline]
lr : diUpdatePMap+0x4e8/0xb90 fs/jfs/jfs_imap.c:2831
sp : ffff800099e67b50
x29: ffff800099e67b50 x28: dfff800000000000 x27: 00000000c0000000
x26: 0000000000000000 x25: dead000000000100 x24: 1bd5a00000000021
x23: dfff800000000000 x22: dead000000000108 x21: ffff0000e21152f8
x20: ffff80009b403120 x19: dead000000000100 x18: 0000000000000000
x17: ffff80010ca0e000 x16: ffff800080536ef4 x15: ffff7000133ccf58
x14: 1ffff000133ccf58 x13: 0000000000000004 x12: ffffffffffffffff
x11: ffff7000133ccf58 x10: 0000000000ff0100 x9 : 0000000000000000
x8 : 0000000000000000 x7 : ffff800081c11594 x6 : 0000000000000000
x5 : 0000000000000001 x4 : 0000000000000001 x3 : ffff80008053700c
x2 : dead000000000100 x1 : ffff80009b403120 x0 : ffff0000e21152f8
Call trace:
 __list_add_valid_or_report+0x3c/0x148 lib/list_debug.c:29 (P)
 __list_add_valid include/linux/list.h:96 [inline]
 __list_add include/linux/list.h:158 [inline]
 list_add include/linux/list.h:177 [inline]
 diUpdatePMap+0x4e8/0xb90 fs/jfs/jfs_imap.c:2831
 txUpdateMap+0x708/0x8d0 fs/jfs/jfs_txnmgr.c:2357
 txLazyCommit fs/jfs/jfs_txnmgr.c:2665 [inline]
 jfs_lazycommit+0x394/0x94c fs/jfs/jfs_txnmgr.c:2734
 kthread+0x5fc/0x75c kernel/kthread.c:463
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:844
Code: aa0103f4 d343fed8 f2fbfff7 aa0003f5 (38776b08) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	aa0103f4 	mov	x20, x1
   4:	d343fed8 	lsr	x24, x22, #3
   8:	f2fbfff7 	movk	x23, #0xdfff, lsl #48
   c:	aa0003f5 	mov	x21, x0
* 10:	38776b08 	ldrb	w8, [x24, x23] <-- trapping instruction


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
