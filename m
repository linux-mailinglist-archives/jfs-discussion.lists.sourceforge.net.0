Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9BAA67DA7
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Mar 2025 21:04:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tudAZ-0003Ic-3r;
	Tue, 18 Mar 2025 20:04:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3eM_ZZwkbAMM178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tud1Q-00044s-2E for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Mar 2025 19:54:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9KnkuTP7eug4W7I6Rhre+Qbp1jyOhKw2a5x1q7jB9uw=; b=AxrybKSDhV+FfNmOw/+HTU/slR
 OXIRVbI2zsDX5Sf6h6NxR40laFFGe0mvpQvJY9hayuZDgxtU16tn9l+cslybSddiENmh/NXJ1LNFR
 ysaowvn6bESoJVib+CvkldFYIfJpo4W6ebE1xKrjbWUFiWS3rbSIjr6oF2vUP9+6r6sc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9KnkuTP7eug4W7I6Rhre+Qbp1jyOhKw2a5x1q7jB9uw=; b=l
 oUXqsnVLiPN58Fa+4nJcs6jT6WhqFS95DOsqpUPqEUt+mUSos2b26ICqJyAIDUDK/vmYvlZF4OtmZ
 c65VSi98gPLC/GYxXhxu24pr1ke6kgzrxPSAyN2HJPrXWs9amDHZVqLdu+n1MIL0jV25V38vYFmmM
 WFQhoDtp0Z2O09I0=;
Received: from mail-io1-f80.google.com ([209.85.166.80])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tud1P-0003hE-6Q for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Mar 2025 19:54:44 +0000
Received: by mail-io1-f80.google.com with SMTP id
 ca18e2360f4ac-85b3827969dso638095039f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Mar 2025 12:54:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742327672; x=1742932472;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9KnkuTP7eug4W7I6Rhre+Qbp1jyOhKw2a5x1q7jB9uw=;
 b=Kp/qb2vUhb3Jc4WdWE6xoywsBgRitwuZFKqVo/tM4tys8AQ1jcdYb3gs74UeO3tfZW
 e2ERU/93Zj84Ibj1VPQUTIZXClrkENSAoLTMjWCecbHwIJ54xnIjAt3aQpnnqD7DffTf
 v2M1FMGqdBlBeBd0QrK0yI3p2h4Qfj0LnRuzk4JBmmvim7cSeH1j1F/IVunMVpWdq7m8
 zGVB6l/1b+oVKwYjP3Ujp1oLTRaFXPtk6t8M6QtScIGIEU2CP7y+V92faJxIehQQUBVd
 1SjcWQc/C/vtZF3OrlpzpgHqEJKmQBNDJ528Dv7T5Xhk3lM/mNE9YruR/u0oL6Ufv5Cq
 ZyUA==
X-Gm-Message-State: AOJu0Yx8e0sQb1AnlluMv7OLfFEcIzDuK+Q/GCMlNKe2dMu1VRb/6W83
 MX0gsrnYc1Pqjyy9DQkIjxRHQ+oEbKUArtZ/EbhV+yUE1Dpsm2zH9Z3S+almO0sf4EH58BnVvnk
 qC/oIwSjs+1xrVusO7hBFLfpxcitViLfxVjBPveSBK/mH15e9D1Em4SQB6w==
X-Google-Smtp-Source: AGHT+IHQJWl+30V3m4/2dI0PQSnP1yYA9I1btbc1XRCHdLXioiL+h9NAIYA1xB75vyiElV0fCcEs8VmKKXMrOp2j4gJLoeEX0Tbk
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a8d:b0:3d4:3ab3:daf5 with SMTP id
 e9e14a558f8ab-3d586b3d37amr887195ab.6.1742327672466; Tue, 18 Mar 2025
 12:54:32 -0700 (PDT)
Date: Tue, 18 Mar 2025 12:54:32 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67d9cf78.050a0220.3657bb.000f.GAE@google.com>
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
 syzbot found the following issue on: HEAD commit: e3a854b577cb
 Merge tag 'clk-fixes-for-linus' of git://git... git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=111b1fa8580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.80 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.80 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.80 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.80 listed in wl.mailspike.net]
X-Headers-End: 1tud1P-0003hE-6Q
X-Mailman-Approved-At: Tue, 18 Mar 2025 20:04:09 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dtDelete
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
Reply-To: syzbot <syzbot+4f9c823a6f63d87491ba@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    e3a854b577cb Merge tag 'clk-fixes-for-linus' of git://git...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=111b1fa8580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=eb44f62cb82f8a0a
dashboard link: https://syzkaller.appspot.com/bug?extid=4f9c823a6f63d87491ba
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1484dc78580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=151b1fa8580000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-e3a854b5.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/80a4e52e75a6/vmlinux-e3a854b5.xz
kernel image: https://storage.googleapis.com/syzbot-assets/e261756ed740/bzImage-e3a854b5.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/7fd9c181a987/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=135a419b980000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4f9c823a6f63d87491ba@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:2132:32
index 240 is out of range for type 'struct dtslot[128]'
CPU: 0 UID: 0 PID: 5303 Comm: syz-executor483 Not tainted 6.14.0-rc6-syzkaller-00115-ge3a854b577cb #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dtDelete+0x2d67/0x2db0 fs/jfs/jfs_dtree.c:2132
 jfs_rename+0xf91/0x1bf0 fs/jfs/namei.c:1239
 vfs_rename+0xbdb/0xf00 fs/namei.c:5069
 do_renameat2+0xd94/0x13f0 fs/namei.c:5226
 __do_sys_rename fs/namei.c:5273 [inline]
 __se_sys_rename fs/namei.c:5271 [inline]
 __x64_sys_rename+0x82/0x90 fs/namei.c:5271
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fc873bc9bb9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff24dc46e8 EFLAGS: 00000246 ORIG_RAX: 0000000000000052
RAX: ffffffffffffffda RBX: 0000400000000e00 RCX: 00007fc873bc9bb9
RDX: 00007fc873bc9bb9 RSI: 0000400000000f40 RDI: 0000400000000300
RBP: 00007fc873c42610 R08: 00007fff24dc48b8 R09: 00007fff24dc48b8
R10: 00007fff24dc48b8 R11: 0000000000000246 R12: 0000000000000001
R13: 00007fff24dc48a8 R14: 0000000000000001 R15: 0000000000000001
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
