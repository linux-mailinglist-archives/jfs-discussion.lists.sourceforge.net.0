Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D074A2DC24A
	for <lists+jfs-discussion@lfdr.de>; Wed, 16 Dec 2020 15:34:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kpXsh-0004zG-Su; Wed, 16 Dec 2020 14:34:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3MhbaXwkbAMs9FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kpXZb-0005Di-L9
 for jfs-discussion@lists.sourceforge.net; Wed, 16 Dec 2020 14:14:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7cwq94/LndwHW8nMgne9GJXd2g5Vmy0CxkQ/gRkScDg=; b=d1DBX1UW0/4Azlv147iOmP7a5L
 BS/c+fpPauPtepHEt9lnf2gyRcI4gwWwBy5MAqzWXwsqGY/QN9VZDho784b6Xx5uYMCqb6rbr6Qdv
 6Q9trh1DZL5XVc4/IJ0QVxuJ+FA7flTe7gSLfTp14TanP4FZtEdOJ+6nYo832WJ0qzKU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7cwq94/LndwHW8nMgne9GJXd2g5Vmy0CxkQ/gRkScDg=; b=W
 SVGKbmF0o+aZ03NiFS9hVtDogJkbQWT7/r24t2Xkbx2Pj/IYH9V2TQo6WgU9Bc9q/dfk8pqbvbqXd
 BJA39Yn043RllO6keKtdcwLvG94lKDaIIwGtx5C6xHjScK+ixtdhXi2OPQCKckt7BPpxA7mEeXxVt
 FiwNxIkP2O25tXa8=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kpXZP-00GSQ5-3L
 for jfs-discussion@lists.sourceforge.net; Wed, 16 Dec 2020 14:14:35 +0000
Received: by mail-il1-f197.google.com with SMTP id 1so23127231ilg.18
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 16 Dec 2020 06:14:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=7cwq94/LndwHW8nMgne9GJXd2g5Vmy0CxkQ/gRkScDg=;
 b=mTYqg3EJQJcrL5366VpjhsDciNkS8iVSy4ZeJ25XqXCO5H4ScL+/WDLXnWtY3Tq4wl
 Mse2KyNSFVNrg4cIaQbwuP2O6YjAzoNEukabYmWLDNNH8Jt8NDcGE8pC9N/sMSxALAj7
 G3P0f5F7JDYSVwS/pxcyOgGf3ZQksl1ClY8j+dnCZRnYeg/1MY+b2+XJ7fFrTaXZnga7
 tOvVRXwYZuWNyO/jWFOtqE7Q6O33Bjkr4+7dJth9nrvPLjVFIc/PbGs/4ALqWPergjFi
 UKSTHVmm81owVLG6AZiC4izdMfuQRWoXcRZmCVWs7VglEqGDIABudO0ofIDSNTWWf6sb
 YY2Q==
X-Gm-Message-State: AOAM532Iu/E1mAtvYAuy1EnvQkQytcaMTbJvHSYT+uNr/A37YsMVpVwq
 DdPKEbGTYhQN2MUQpU5I7/u2CKLGN7rTFRRvGpiOAX4qkImy
X-Google-Smtp-Source: ABdhPJwCJsMcKgMjEpUgnxwHNawPsxdwEGX0vSGarCQjWqcs6hdNv7C/jSa4wOsbVqVRiESqZrqU4P/g2PrzNxfvgAiR8X8Euc8z
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:cb:: with SMTP id
 r11mr46640578ilq.11.1608128050414; 
 Wed, 16 Dec 2020 06:14:10 -0800 (PST)
Date: Wed, 16 Dec 2020 06:14:10 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000032cbc605b6957df0@google.com>
From: syzbot <syzbot+36315852ece4132ec193@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kpXZP-00GSQ5-3L
X-Mailman-Approved-At: Wed, 16 Dec 2020 14:34:19 +0000
Subject: [Jfs-discussion] UBSAN: shift-out-of-bounds in chkSuper
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

HEAD commit:    14240d4c Add linux-next specific files for 20201210
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=13457c5b500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6dbe20fdaa5aaebe
dashboard link: https://syzkaller.appspot.com/bug?extid=36315852ece4132ec193
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1172cef3500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15b1845b500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+36315852ece4132ec193@syzkaller.appspotmail.com

loop0: detected capacity change from 128 to 0
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_mount.c:373:25
shift exponent -9716 is negative
CPU: 0 PID: 8511 Comm: syz-executor446 Not tainted 5.10.0-rc7-next-20201210-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x107/0x163 lib/dump_stack.c:120
 ubsan_epilogue+0xb/0x5a lib/ubsan.c:148
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x181 lib/ubsan.c:395
 chkSuper.cold+0x1e/0x8b fs/jfs/jfs_mount.c:373
 jfs_mount+0x47/0x3d0 fs/jfs/jfs_mount.c:82
 jfs_fill_super+0x5b1/0xbc0 fs/jfs/super.c:562
 mount_bdev+0x34d/0x410 fs/super.c:1366
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1496
 do_new_mount fs/namespace.c:2896 [inline]
 path_mount+0x12ae/0x1e70 fs/namespace.c:3227
 do_mount fs/namespace.c:3240 [inline]
 __do_sys_mount fs/namespace.c:3448 [inline]
 __se_sys_mount fs/namespace.c:3425 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3425
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x446d5a
Code: b8 08 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 fd ad fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 da ad fb ff c3 66 0f 1f 84 00 00 00 00 00
RSP: 002b:00007fff49981e98 EFLAGS: 00000283 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007fff49981ee0 RCX: 0000000000446d5a
RDX: 0000000020000000 RSI: 0000000020000080 RDI: 00007fff49981ea0
RBP: 00007fff49981ea0 R08: 00007fff49981ee0 R09: 6f6f6c2f7665642f
R10: 0000000000000001 R11: 0000000000000283 R12: 0000000000000004
R13: 0000000000000003 R14: 0000000000000003 R15: 0000000000000001
================================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
