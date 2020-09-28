Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BF627AF82
	for <lists+jfs-discussion@lfdr.de>; Mon, 28 Sep 2020 15:58:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kMtew-0001lt-2b; Mon, 28 Sep 2020 13:57:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3QZVxXwkbADQiopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kMntc-0000xW-SY
 for jfs-discussion@lists.sourceforge.net; Mon, 28 Sep 2020 07:48:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xqucxLqQEmlXGY7iibgagZ/XnvxXtCOca8FFb/W7qNg=; b=dAJKQYmA8CZZd/iC6qnys45b20
 WwgP6hHeoHAgobQOtWIcc5K6SO2mzEgk9oCuZBw94PsUUjRF4ESr1r73bPNuB1JzKLmaEwWwmhI9Q
 I4aTnQihD1ymtG9hX5xSgETElMzkhM5dpFZDUsua2uj7qYXKgC3ItFbS0cgvzS8SpG3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xqucxLqQEmlXGY7iibgagZ/XnvxXtCOca8FFb/W7qNg=; b=f
 j28rcHaotx1XkiUhKFDUbgII+TkEkps3N3bg0spo5uOXT6MhGFWezpZTCqFB4DzlOxAq6TTsuZ8Z2
 PbAm7MgJwVwWdxb0byeGY3oWKMNDHuHuGM5RMd4bKevhqFWx7EH9yZDYgv26hBpD833Tqrab6C3Ir
 qwRLU/Qddqc7kJTk=;
Received: from mail-io1-f79.google.com ([209.85.166.79])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kMntW-008S8Y-Ur
 for jfs-discussion@lists.sourceforge.net; Mon, 28 Sep 2020 07:48:28 +0000
Received: by mail-io1-f79.google.com with SMTP id w3so132565iou.9
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 28 Sep 2020 00:48:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=xqucxLqQEmlXGY7iibgagZ/XnvxXtCOca8FFb/W7qNg=;
 b=kR3nEQ2Ht0BSqNzNymtPZ6Ebc/+12KQICYhyQNr2sPJ3nFNwH99trqpYSGfF51pwQD
 K1XnICHWZKTcayJXfuKJkFMMeYXdnTVWPpd8HzZO1oKy4HhtbwXJfcCzhkr54JZsLK97
 cMShX/b7lm2ShPQUGkSpTc8WhfQK4pMZsBqPPEO6qDARUToYHQ9eM2LnAZi0PzHb42K/
 t2yXeWi8IV6ycTvC/MQGoffOHir8mqRb1B/gUV5cD4SAOGreFKGX5W7D97ucQpzCzEuJ
 URxqbGYk/WmQVqm9XangKX73m7EXssgnlPosAMcfWiooQOvmCQqZhcqls7Hbf6AndpRB
 gDbQ==
X-Gm-Message-State: AOAM533V9hi6wmwgLBvzhvEIXLReasQVilmDY8zI5RWhJiW05YPrgJFE
 kb60Vi3zkQwmil3+3PnGlB2fORAAF68l6p8C20QnImjgXgFJ
X-Google-Smtp-Source: ABdhPJyGBppGFLUrp8ay2mglSFJJu+QMS1kY139BBbqWDIsgC05O3qh5QYvv6d2nTv2CbL5YszQqyg4ERkaQt2yBegM03fZzRm0G
MIME-Version: 1.0
X-Received: by 2002:a92:5a48:: with SMTP id o69mr144193ilb.268.1601279297335; 
 Mon, 28 Sep 2020 00:48:17 -0700 (PDT)
Date: Mon, 28 Sep 2020 00:48:17 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b4380505b05ae3b1@google.com>
From: syzbot <syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.79 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.79 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kMntW-008S8Y-Ur
X-Mailman-Approved-At: Mon, 28 Sep 2020 13:57:40 +0000
Subject: [Jfs-discussion] BUG: unable to handle kernel paging request in
 diFree
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    805c6d3c Merge branch 'fixes' of git://git.kernel.org/pub/..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=15dfd075900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=af502ec9a451c9fc
dashboard link: https://syzkaller.appspot.com/bug?extid=0a89a7b56db04c21a656
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16f2399b900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16c34b1d900000

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=144704e3900000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=164704e3900000
console output: https://syzkaller.appspot.com/x/log.txt?x=124704e3900000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com

ERROR: (device loop0): xtSearch: XT_GETPAGE: xtree page corrupt
BUG: unable to handle page fault for address: ffffffffffffff80
#PF: supervisor read access in kernel mode
#PF: error_code(0x0000) - not-present page
PGD 9690067 P4D 9690067 PUD 9692067 PMD 0 
Oops: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 6847 Comm: syz-executor394 Not tainted 5.9.0-rc6-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:diFree+0xe3/0x25b0 fs/jfs/jfs_imap.c:853
Code: e8 b2 39 0a ff 48 8b 03 48 89 84 24 c8 00 00 00 48 8d 58 80 48 89 d8 48 c1 e8 03 42 80 3c 20 00 74 08 48 89 df e8 8d 39 0a ff <48> 8b 03 4c 89 6c 24 08 4d 89 ec 49 c1 ec 0c 48 89 44 24 38 48 8d
RSP: 0018:ffffc90001117a60 EFLAGS: 00010246
RAX: 1ffffffffffffff0 RBX: ffffffffffffff80 RCX: ffff8880a8658340
RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff888087f174f0
RBP: ffffc90001117bf8 R08: ffffffff82a8b8bd R09: ffffed1010fe2e1c
R10: ffffed1010fe2e1c R11: 0000000000000000 R12: dffffc0000000000
R13: 0000000000000001 R14: ffff888091a0c668 R15: 1ffff110123418cd
FS:  00000000016fe880(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffffffff80 CR3: 00000000a4d2f000 CR4: 00000000001506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 jfs_evict_inode+0x259/0x2e0 fs/jfs/inode.c:154
 evict+0x2bb/0x6d0 fs/inode.c:576
 jfs_mount+0x2db/0x300 fs/jfs/jfs_mount.c:210
 jfs_fill_super+0x515/0x9b0 fs/jfs/super.c:562
 mount_bdev+0x24f/0x360 fs/super.c:1417
 legacy_get_tree+0xea/0x180 fs/fs_context.c:592
 vfs_get_tree+0x88/0x270 fs/super.c:1547
 do_new_mount fs/namespace.c:2875 [inline]
 path_mount+0x179d/0x29e0 fs/namespace.c:3192
 do_mount fs/namespace.c:3205 [inline]
 __do_sys_mount fs/namespace.c:3413 [inline]
 __se_sys_mount+0x126/0x180 fs/namespace.c:3390
 do_syscall_64+0x31/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x446dea
Code: b8 08 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 fd ad fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 da ad fb ff c3 66 0f 1f 84 00 00 00 00 00
RSP: 002b:00007fff1ed69ad8 EFLAGS: 00000283 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007fff1ed69b20 RCX: 0000000000446dea
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007fff1ed69ae0
RBP: 00007fff1ed69ae0 R08: 00007fff1ed69b20 R09: 6f6f6c2f7665642f
R10: 0000000000008001 R11: 0000000000000283 R12: 0000000000000004
R13: 0000000000000003 R14: 0000000000000003 R15: 0000000000000006
Modules linked in:
CR2: ffffffffffffff80
---[ end trace 5dcf01db00d74546 ]---
RIP: 0010:diFree+0xe3/0x25b0 fs/jfs/jfs_imap.c:853
Code: e8 b2 39 0a ff 48 8b 03 48 89 84 24 c8 00 00 00 48 8d 58 80 48 89 d8 48 c1 e8 03 42 80 3c 20 00 74 08 48 89 df e8 8d 39 0a ff <48> 8b 03 4c 89 6c 24 08 4d 89 ec 49 c1 ec 0c 48 89 44 24 38 48 8d
RSP: 0018:ffffc90001117a60 EFLAGS: 00010246
RAX: 1ffffffffffffff0 RBX: ffffffffffffff80 RCX: ffff8880a8658340
RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff888087f174f0
RBP: ffffc90001117bf8 R08: ffffffff82a8b8bd R09: ffffed1010fe2e1c
R10: ffffed1010fe2e1c R11: 0000000000000000 R12: dffffc0000000000
R13: 0000000000000001 R14: ffff888091a0c668 R15: 1ffff110123418cd
FS:  00000000016fe880(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffffffff80 CR3: 00000000a4d2f000 CR4: 00000000001506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
