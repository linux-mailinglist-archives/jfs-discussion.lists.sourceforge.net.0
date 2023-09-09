Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B28D79A87E
	for <lists+jfs-discussion@lfdr.de>; Mon, 11 Sep 2023 16:06:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qfhY8-0000qV-VJ;
	Mon, 11 Sep 2023 14:05:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3B5P8ZAkbAE48EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qf09B-0005sT-Bn for jfs-discussion@lists.sourceforge.net;
 Sat, 09 Sep 2023 15:45:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LbWmtI2saoAhWc9NAmAAALAja+o02+Kc4sbFNaTcIA0=; b=NyDVAfgvlOsA3tCGJOJlu0fUqT
 rn7TnoTQ80DZHAk6oPf6GxIrQmUihwS9QNSQh/yg5IrrwasfqeRu4/OryyTSh6HY2ZyPZ2zcDOyeC
 cCxaO4KuDzw69jdDJ9BEO7SnadnISu/+TsD6h4dM91ytOzOuiF1iqRd0oSb6cZkBOT4s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LbWmtI2saoAhWc9NAmAAALAja+o02+Kc4sbFNaTcIA0=; b=E
 QxQp9vXbfB2bL5vi085aYBmmDwRIwgoQ5Lm8+UJ1GH1oS+nLYNNarH/rpae0XCgWJjnC1vkiZMZSz
 1a0TYdH19ryjkGXuD6UTjmcz7IIkmOkZTfDMEQv27sV1B6mRfQrUDarWhQ5SBcjNTSWQkymkW/kr0
 JV7yYnbuxI8RBEdA=;
Received: from mail-pf1-f206.google.com ([209.85.210.206])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qf096-00FhgD-RS for jfs-discussion@lists.sourceforge.net;
 Sat, 09 Sep 2023 15:45:20 +0000
Received: by mail-pf1-f206.google.com with SMTP id
 d2e1a72fcca58-68fac73c54aso432794b3a.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 09 Sep 2023 08:45:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694274311; x=1694879111;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LbWmtI2saoAhWc9NAmAAALAja+o02+Kc4sbFNaTcIA0=;
 b=r/AEYvuXIOBL28FRszqo1SzgkP6AOZAdVBSpEUaRcBUCC1yymzDNEH9F8xr4Nga5o4
 Tv9M0tx+qmZzAMxXSBJ0NGF13IkpwX39FIpwQmISztLg7FZzlDCDXAUcgc/6jmEffYRY
 OTSHJ//+u8F2jS6yg4kYRSgM+08bNp1PjcFVzH3iguD0oh2Lib2JLHigXicjY46b13EN
 HLxYNOl8+bQ83wt7yY6rb77paFuYuMen6td9EJMmbhs/CE1/J/q1yLHdI1jiRMiLmVu5
 7XKncYE6+Kt+LOHczhLHdeZZNmWn/KdON4vYkhbEFisfXi9E+pmHvz8u/Q3v9fTHX1Zh
 WWwA==
X-Gm-Message-State: AOJu0Yz2pdKgriEre78UWdCi66Hm0Tbg2NIlL0gTAc7yndZlLYiWL6L7
 5KZQxygAa5zhzHNnh/9jYZNb1imtn47A+oIVEkOWTKJZEIgOVakuTA==
X-Google-Smtp-Source: AGHT+IGpSGhA2lWuHBjuYLtK/TINlTvWuKPB1acF3vooBe2XeFUBkESDPDNertjqPsTH1HTVryn1Kp9E7e0SNEkbOZV0Trncmeem
MIME-Version: 1.0
X-Received: by 2002:a05:6a00:1989:b0:68e:47fd:4ee9 with SMTP id
 d9-20020a056a00198900b0068e47fd4ee9mr2087283pfl.6.1694274311273; Sat, 09 Sep
 2023 08:45:11 -0700 (PDT)
Date: Sat, 09 Sep 2023 08:45:11 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000079c7640604eefa47@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 65d6e954e378
 Merge tag 'gfs2-v6.5-rc5-fixes' of git://git... git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=15853c0c680000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.206 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.206 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qf096-00FhgD-RS
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:05:58 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txLock
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
Reply-To: syzbot <syzbot+451384fb192454e258de@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    65d6e954e378 Merge tag 'gfs2-v6.5-rc5-fixes' of git://git...
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=15853c0c680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ff0db7a15ba54ead
dashboard link: https://syzkaller.appspot.com/bug?extid=451384fb192454e258de
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=140b48c8680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15276fb8680000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/d2f8f959540a/disk-65d6e954.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/6f0285edec65/vmlinux-65d6e954.xz
kernel image: https://storage.googleapis.com/syzbot-assets/61d3ef608e62/bzImage-65d6e954.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/4db3738411e6/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1355caa4680000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=10d5caa4680000
console output: https://syzkaller.appspot.com/x/log.txt?x=1755caa4680000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+451384fb192454e258de@syzkaller.appspotmail.com

Locker's tblock: ffffc900025f1300: 8b424900 ffffffff 00000200 00000000
Locker's tblock: ffffc900025f1310: 025f1310 ffffc900 025f1310 ffffc900
Locker's tblock: ffffc900025f1320: 00000004 0000001c 00000007 00000000
Tlock: ffffc900028120d8: 00010004 20208040 1cf49d90 ffff8880
Tlock: ffffc900028120e8: 76f2a930 ffff8880 03140000 05002000
Tlock: ffffc900028120f8: 06030a00 0000020d 00000000 00000000
Tlock: ffffc90002812108: 00000000 00000000 00000000 00000000
Tlock: ffffc90002812118: 00000000 00000000
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:834!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 5053 Comm: syz-executor131 Not tainted 6.5.0-syzkaller-11938-g65d6e954e378 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/26/2023
RIP: 0010:txLock+0x1cd4/0x1fa0 fs/jfs/jfs_txnmgr.c:834
Code: 8b 48 c7 c6 40 4f 42 8b ba 01 00 00 00 b9 10 00 00 00 41 b8 04 00 00 00 4c 8b 4c 24 20 6a 00 6a 48 e8 a0 2f 2a 01 48 83 c4 10 <0f> 0b e8 55 21 7c fe 4c 89 e7 48 c7 c6 40 57 42 8b e8 36 9f bd fe
RSP: 0018:ffffc90003a5ef98 EFLAGS: 00010282
RAX: 8c29e29eae6e2500 RBX: 1ffff9200050241b RCX: ffff88807d4ed940
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: 0000000000000010 R08: ffffffff8170afec R09: 1ffff9200074bd28
R10: dffffc0000000000 R11: fffff5200074bd29 R12: ffffc900028120da
R13: 0000000000000002 R14: 000000000000001b R15: 0000000000002020
FS:  00007f0a9153a6c0(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f0a8a119000 CR3: 00000000271f3000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 dtSplitRoot+0x430/0x1920 fs/jfs/jfs_dtree.c:1919
 dtSplitUp fs/jfs/jfs_dtree.c:985 [inline]
 dtInsert+0x12fa/0x6b00 fs/jfs/jfs_dtree.c:863
 jfs_create+0x7b6/0xb90 fs/jfs/namei.c:137
 lookup_open fs/namei.c:3495 [inline]
 open_last_lookups fs/namei.c:3563 [inline]
 path_openat+0x13e7/0x3180 fs/namei.c:3793
 do_filp_open+0x234/0x490 fs/namei.c:3823
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1422
 do_sys_open fs/open.c:1437 [inline]
 __do_sys_open fs/open.c:1445 [inline]
 __se_sys_open fs/open.c:1441 [inline]
 __x64_sys_open+0x225/0x270 fs/open.c:1441
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f0a91585949
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 91 1b 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f0a9153a218 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 00007f0a9160b6c8 RCX: 00007f0a91585949
RDX: 0000000000000000 RSI: 0000000000000040 RDI: 0000000020000400
RBP: 00007f0a9160b6c0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f0a915d8210
R13: 00007f0a915d204d R14: 0030656c69662f2e R15: 6573726168636f69
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:txLock+0x1cd4/0x1fa0 fs/jfs/jfs_txnmgr.c:834
Code: 8b 48 c7 c6 40 4f 42 8b ba 01 00 00 00 b9 10 00 00 00 41 b8 04 00 00 00 4c 8b 4c 24 20 6a 00 6a 48 e8 a0 2f 2a 01 48 83 c4 10 <0f> 0b e8 55 21 7c fe 4c 89 e7 48 c7 c6 40 57 42 8b e8 36 9f bd fe
RSP: 0018:ffffc90003a5ef98 EFLAGS: 00010282
RAX: 8c29e29eae6e2500 RBX: 1ffff9200050241b RCX: ffff88807d4ed940
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: 0000000000000010 R08: ffffffff8170afec R09: 1ffff9200074bd28
R10: dffffc0000000000 R11: fffff5200074bd29 R12: ffffc900028120da
R13: 0000000000000002 R14: 000000000000001b R15: 0000000000002020
FS:  00007f0a9153a6c0(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f0a8a119000 CR3: 00000000271f3000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
