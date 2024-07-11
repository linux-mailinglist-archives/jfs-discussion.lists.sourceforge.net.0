Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8881892E8A8
	for <lists+jfs-discussion@lfdr.de>; Thu, 11 Jul 2024 15:00:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sRtPE-0006eB-O2;
	Thu, 11 Jul 2024 13:00:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3-J2PZgkbAK0flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sRpaO-0006DE-2N for jfs-discussion@lists.sourceforge.net;
 Thu, 11 Jul 2024 08:55:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pzd+X9QEqYjrbi3EtMzlUg+nanjs6nVilWOmryRstKI=; b=BpT2mkHBX3frgMUAOiZahB+Hi/
 /GwxfRL2XKfKXPOcwbuFS7WL65OSFJyEhIF3wRHf8QYOxPCZEHi7w8lASZaFnXl3cuGXsLvE9i5X7
 fVCtm/Y4mMj3JgKtCaE/IZA8f0Q1SqRmPBIfZAHij6w3z1WixYQ7B3K8olBRo42jmiwg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pzd+X9QEqYjrbi3EtMzlUg+nanjs6nVilWOmryRstKI=; b=V
 /w9VoEAfKlm5IxZ82V6bvWp8R5FSvFJgOWUwhr/H/Y3UquE6yO/t3wMLqhnVPDRbk87HCU3vtSDhb
 i+I+7HpAoE/WLaRYG05zUsV2TnluYNSiNyMMH6pUslIL4uGwXUWaGub5zqaJKLotgYRYWTNm9lU9H
 sKnjKOYI0ymcttBI=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sRpaO-0006rm-Cd for jfs-discussion@lists.sourceforge.net;
 Thu, 11 Jul 2024 08:55:32 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-804b8301480so72380139f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 11 Jul 2024 01:55:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720688121; x=1721292921;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=pzd+X9QEqYjrbi3EtMzlUg+nanjs6nVilWOmryRstKI=;
 b=bYybM35TqE4er6ubkEGYMtRCp32Riml9RZoYCV5lUQjA31ojEP0HP/2W0FdgNgf/1k
 1WsOzL6JaART7FNgy8q5UjGOJSvqc4in99gbLsOxK/qG52ZniIcJz+TwSyrQ58XJsLGx
 wTTFVgL2vv1aT9QOJUIZwXFhjnOHglF3EJwmdkr2COFmHiQABdJX6azAXI0QwzU956LR
 3taKHpiQ2a/CdowKubjiQrk8rq/ZCD9WIbhBN6BePrvfUC0+eL6jQaKQbClg44SpFLTa
 30UaHkHz7oPQPpnVrWwW/f0vQOSns0t6fviZmRqxwFqnQYAd53MnLmbN81CqB0uISAfk
 xnZQ==
X-Gm-Message-State: AOJu0Yy8TeIU6eP78y7HlejImrhw4MWaDuPQct8M67CvkvRxeKWdBapQ
 avcMFmqtb8mRthU6fFwORDp5nckcI1395PLSypvimQ9oh8VTLHh5Z2I2+vz3ea51XUNz098yRqA
 XAUaa7NPrpnRHeRPMs7kpzTJDjHt7yODDbxm+T/ManAq0NXhPWmI4gBc=
X-Google-Smtp-Source: AGHT+IG1SIDhJo7vyIuMCc8FKw7+wkpapX5tIBaR9j40ZmSxf3UCJ4Kz4sy+k2ML1km1bnO175WCfYQB/gDLWF/+WaZVMRz2oXTQ
MIME-Version: 1.0
X-Received: by 2002:a05:6638:2192:b0:4b9:ad96:2adc with SMTP id
 8926c6da1cb9f-4c0b2b39704mr481726173.4.1720688120892; Thu, 11 Jul 2024
 01:55:20 -0700 (PDT)
Date: Thu, 11 Jul 2024 01:55:20 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000372171061cf4ecb5@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -4.7 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 22f902dfc51e
 Merge tag 'i2c-for-6.10-rc7' of git://git.ker.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=175c1059980000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (-4.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.72 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.72 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.166.72 listed in list.dnswl.org]
X-Headers-End: 1sRpaO-0006rm-Cd
X-Mailman-Approved-At: Thu, 11 Jul 2024 13:00:16 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dbNextAG (2)
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
Reply-To: syzbot <syzbot+808f3f84407f08a93022@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    22f902dfc51e Merge tag 'i2c-for-6.10-rc7' of git://git.ker..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=175c1059980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1ace69f521989b1f
dashboard link: https://syzkaller.appspot.com/bug?extid=808f3f84407f08a93022
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17eb06e1980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16e6f6e1980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/da00a62c06a3/disk-22f902df.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/e090db7ab1fa/vmlinux-22f902df.xz
kernel image: https://storage.googleapis.com/syzbot-assets/5332f53497de/bzImage-22f902df.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/ec0f0006ae2c/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15d45c9e980000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=17d45c9e980000
console output: https://syzkaller.appspot.com/x/log.txt?x=13d45c9e980000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+808f3f84407f08a93022@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:661:7
index 128 is out of range for type 's64[128]' (aka 'long long[128]')
CPU: 0 PID: 5083 Comm: syz-executor157 Not tainted 6.10.0-rc6-syzkaller-00215-g22f902dfc51e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/07/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dbNextAG+0x3f3/0x630 fs/jfs/jfs_dmap.c:661
 diAlloc+0x6c6/0x1760 fs/jfs/jfs_imap.c:1369
 ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
 jfs_create+0x1be/0xb90 fs/jfs/namei.c:92
 lookup_open fs/namei.c:3505 [inline]
 open_last_lookups fs/namei.c:3574 [inline]
 path_openat+0x1a84/0x35f0 fs/namei.c:3810
 do_filp_open+0x235/0x490 fs/namei.c:3840
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1413
 do_sys_open fs/open.c:1428 [inline]
 __do_sys_openat fs/open.c:1444 [inline]
 __se_sys_openat fs/open.c:1439 [inline]
 __x64_sys_openat+0x247/0x2a0 fs/open.c:1439
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fdb9c0a0a99
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffecc111738 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fdb9c0a0a99
RDX: 000000000000275a RSI: 00000000200005c0 RDI: 00000000ffffff9c
RBP: 00007fdb9c11a5f0 R08: 000055555c2c14c0 R09: 000055555c2c14c0
R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffecc111760
R13: 00007ffecc111988 R14: 431bde82d7b634db R15: 00007fdb9c0e903b
 </TASK>
---[ end trace ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

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
