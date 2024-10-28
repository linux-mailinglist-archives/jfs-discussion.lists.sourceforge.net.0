Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D159B36F3
	for <lists+jfs-discussion@lfdr.de>; Mon, 28 Oct 2024 17:44:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t5Sr4-0000MN-Lw;
	Mon, 28 Oct 2024 16:44:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <31rwfZwkbAA87DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1t5SgU-0005Ff-MJ for jfs-discussion@lists.sourceforge.net;
 Mon, 28 Oct 2024 16:33:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TP72q2DYylwiU/k0rJQ0bZB7ok8cFQOxLvEIMOS1MYA=; b=aB/kuFsG5SCNOf3NTP0xwaSszz
 rii2vvwcHNv2050PTGRgl/jTR7APehoZvK3AAKqkI7cxgumxjKEojJSSusHqUU2009AWJ2dLvxhYU
 9uJQalX+WWMLxq7un3/h4e16szzKOeo30EtspA5LSp7YjZy3eQpHw7Z1il+qI/t96RRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TP72q2DYylwiU/k0rJQ0bZB7ok8cFQOxLvEIMOS1MYA=; b=e
 AreNHiEVSNwiZ3W2gvNCPZGinEaHp/eyxkHrrEgY7hX2WrlSWrXhyssN6s6WKjTU2w9bOFis+gCE/
 4bWN8dsw8ZbKyjawlqeroiFxvvpZBfbO/tRst3u2dcIvklZngxI68VasKymx0N/1vXt3wAuSJlinD
 M3/hn3Sxs5YP83Os=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t5SgT-0000fU-Pj for jfs-discussion@lists.sourceforge.net;
 Mon, 28 Oct 2024 16:33:38 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-83aae46538bso446612539f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 28 Oct 2024 09:33:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730133207; x=1730738007;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TP72q2DYylwiU/k0rJQ0bZB7ok8cFQOxLvEIMOS1MYA=;
 b=lCFPwGSI+3Y2LlTyRDkDJ6B0PEaSxLK/2m+RJEVGr1QY1pwwDdU/1bTPXWyVFEmok4
 +tMaS5hZKgBa3dmtWEHPgZkh0NqsgiVDA1vqVO/2fNYSUrb2D1uNH/XWd2woT0BW4Ndi
 8Iba9YmOIdMZaoSEG01qFzKHj0KcXbdxJL6bpgstVN1dNC43pQQbcYkm3tuwg2HPTic5
 vOmTFhDr9GAQtF1z39NMeGoMVMYaPlIZP1/ghVepGSgmyNirT9FLOYt2zhl+bZP8jGVM
 0h5YBUdd1I8VpCSc40PUhn12JAbwqjhMrUOPZ054hyIP6L1KaT2Wa9j6UIStbwsHt1BO
 bWeQ==
X-Gm-Message-State: AOJu0YxtoAi587TNCSPE7YYlrxd97rofYIB56Dqd4FjorsIUx0nW0SMH
 lvTIVOKbW5GwGlPLTjoSmgblGtdTOaYhF0Xl8DotvL4dWPGrK/RIl4JVAgPDqP6RGjdJLW7Z77e
 c+1PQq2bxVRfNmy5Xs4WiCjiqsdShNIt3HeHRhhh1DSOB80H1V7mqLd4=
X-Google-Smtp-Source: AGHT+IHUdwIbMXAJ2kZFPR8oryBcuHJf3Is+8npdb3fvik7kBSIjHcwiMMbFnAXvo5GSzAJPUfXesBUOiahZIB3l4GluNngDUHUE
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c83:b0:3a4:d94f:5b52 with SMTP id
 e9e14a558f8ab-3a4ed2e9702mr74152495ab.20.1730133206951; Mon, 28 Oct 2024
 09:33:26 -0700 (PDT)
Date: Mon, 28 Oct 2024 09:33:26 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <671fbcd6.050a0220.21b2f.000a.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 4e46774408d9
 Merge tag 'for-6.12-rc4-tag' of git://git.ker.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=17d0b0e7980000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1t5SgT-0000fU-Pj
X-Mailman-Approved-At: Mon, 28 Oct 2024 16:44:34 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in clear_inode (2)
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
Reply-To: syzbot <syzbot+ac2116e48989e84a2893@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    4e46774408d9 Merge tag 'for-6.12-rc4-tag' of git://git.ker..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=17d0b0e7980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=41330fd2db03893d
dashboard link: https://syzkaller.appspot.com/bug?extid=ac2116e48989e84a2893
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17a9ae40580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1030b0e7980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/d5a3632f9dde/disk-4e467744.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c6d73f937198/vmlinux-4e467744.xz
kernel image: https://storage.googleapis.com/syzbot-assets/b8cdecc78206/bzImage-4e467744.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/07de6ffca997/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10b0b287980000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=12b0b287980000
console output: https://syzkaller.appspot.com/x/log.txt?x=14b0b287980000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+ac2116e48989e84a2893@syzkaller.appspotmail.com

------------[ cut here ]------------
kernel BUG at fs/inode.c:668!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI
CPU: 0 UID: 0 PID: 113 Comm: jfsCommit Not tainted 6.12.0-rc4-syzkaller-00085-g4e46774408d9 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
RIP: 0010:clear_inode+0x168/0x190 fs/inode.c:668
Code: 4c 89 f7 e8 ba fe e5 ff e9 61 ff ff ff 44 89 f1 80 e1 07 80 c1 03 38 c1 7c c1 4c 89 f7 e8 90 ff e5 ff eb b7 e8 09 5d 7f ff 90 <0f> 0b e8 01 5d 7f ff 90 0f 0b e8 f9 5c 7f ff 90 0f 0b e8 f1 5c 7f
RSP: 0018:ffffc90002cffae8 EFLAGS: 00010093
RAX: ffffffff82157a87 RBX: 0000000000000001 RCX: ffff88801eb2bc00
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: ffffc90002cffc90 R08: ffffffff82157977 R09: fffff5200059ff38
R10: dffffc0000000000 R11: fffff5200059ff38 R12: dffffc0000000000
R13: ffff888071503c00 R14: ffff888071503da8 R15: ffff888071503b80
FS:  0000000000000000(0000) GS:ffff8880b8600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f4b23f95ed8 CR3: 000000000e734000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_evict_inode+0xb5/0x440 fs/jfs/inode.c:166
 evict+0x4e8/0x9b0 fs/inode.c:725
 txUpdateMap+0x931/0xb10 fs/jfs/jfs_txnmgr.c:2367
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x49a/0xb80 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2f0/0x390 kernel/kthread.c:389
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:clear_inode+0x168/0x190 fs/inode.c:668
Code: 4c 89 f7 e8 ba fe e5 ff e9 61 ff ff ff 44 89 f1 80 e1 07 80 c1 03 38 c1 7c c1 4c 89 f7 e8 90 ff e5 ff eb b7 e8 09 5d 7f ff 90 <0f> 0b e8 01 5d 7f ff 90 0f 0b e8 f9 5c 7f ff 90 0f 0b e8 f1 5c 7f
RSP: 0018:ffffc90002cffae8 EFLAGS: 00010093
RAX: ffffffff82157a87 RBX: 0000000000000001 RCX: ffff88801eb2bc00
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: ffffc90002cffc90 R08: ffffffff82157977 R09: fffff5200059ff38
R10: dffffc0000000000 R11: fffff5200059ff38 R12: dffffc0000000000
R13: ffff888071503c00 R14: ffff888071503da8 R15: ffff888071503b80
FS:  0000000000000000(0000) GS:ffff8880b8600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f4b23f95ed8 CR3: 000000000e734000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


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
