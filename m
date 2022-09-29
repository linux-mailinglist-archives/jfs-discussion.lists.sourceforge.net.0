Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFC55F1098
	for <lists+jfs-discussion@lfdr.de>; Fri, 30 Sep 2022 19:15:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oeJbG-0008On-4X;
	Fri, 30 Sep 2022 17:14:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3yAI2YwkbAMU39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oe0Kt-0006Em-7u for jfs-discussion@lists.sourceforge.net;
 Thu, 29 Sep 2022 20:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/QpcA4v08ivrXcCw9Nxsv/8IXApK1v/9fpeqY0wcnxY=; b=KUyc/EE/thmBbpu0N990GjU5rX
 WGYzqtGE300EGYErdy32Yezdgjq6yV6KSONldBr/uUcbEjM8HeC8jP/BYYUluGcg9ptzM3X6vtPgT
 FrGuF/yn7L8aHCyTifd1MuTF1WaKwUVeDcWMlxa/PWQOW03xtkgHul2h5f9wntGp1GQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/QpcA4v08ivrXcCw9Nxsv/8IXApK1v/9fpeqY0wcnxY=; b=J
 la4xNS6I3OlYFGPXPqiTMWjTHdqa8embFPiY5yT4279lYH0qFhPNZLjfNuVQQPeT33r1V4kIZV/rh
 yoiEK+7FE8qWHQrYnKFIQeDZ3Rya4ddYyMHhS0cGD7KKwW+GdcYTB3oOS8IBUxDPViKCCBYAWo3ZR
 6LlmpO5pOrc7E6hk=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oe0Ks-0071B3-DM for jfs-discussion@lists.sourceforge.net;
 Thu, 29 Sep 2022 20:40:47 +0000
Received: by mail-io1-f71.google.com with SMTP id
 v4-20020a5ec204000000b006a32e713217so1461489iop.15
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 29 Sep 2022 13:40:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=/QpcA4v08ivrXcCw9Nxsv/8IXApK1v/9fpeqY0wcnxY=;
 b=RnlaFZDPbTDICWZCUyn4DmVqQiSpKd6LnnOR4J6YTPDw7j0I93TYTffXCIrxl2Y99s
 5QaXJ7IUueYg9M6F2WUolDn0apnBhPvjAGQViUCMpayVQOKlO3IoiD7EwvpqHycQGLr5
 SXH1pWRxiOgP3fLtWDzH910h8CDGlEGZVKFAW7OU9Zeofn6gacJOb+o54qKWVz+xp4NM
 wrzlHVPpcfRDIQY+m7LLBuDdRWqz2iLurI3Md1nbvJ/+JuBzenkzVxDJ5txQ3tHlYOT1
 TpdNUqlghkuxTI+ALx0emv84FmVZsiEFadeezwY2JFlv03/R53wUQAUIuKPxmYNZ6B+X
 OoKQ==
X-Gm-Message-State: ACrzQf0sN+ME2F2pFJlxFJ9wgbOvJmadny+b/bRqMFdmY4WiWikjYVMR
 5N0bVsOjZbaFOBZ7xMY6ttS/KWRbmn+kxQ7/0sYxWHv+oB2a
X-Google-Smtp-Source: AMsMyM5wHoYE6X1cBubZyWEMRTydwHFwWwfjik8M1Rd84Pjktu44cAD3HENVl2pfC93mBCqE3bjcfQwfy81pTwLQuKpN7fz0gKkn
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1606:b0:35a:5472:fa1b with SMTP id
 x6-20020a056638160600b0035a5472fa1bmr2766762jas.241.1664484040144; Thu, 29
 Sep 2022 13:40:40 -0700 (PDT)
Date: Thu, 29 Sep 2022 13:40:40 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f280bf05e9d6e31c@google.com>
From: syzbot <syzbot+f7b4e42c28602e81aab3@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 3800a713b607
 Merge tag 'mm-hotfixes-stable-2022-09-26' of .. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1073636c880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1oe0Ks-0071B3-DM
X-Mailman-Approved-At: Fri, 30 Sep 2022 17:14:55 +0000
Subject: [Jfs-discussion] [syzbot] general protection fault in diUpdatePMap
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

HEAD commit:    3800a713b607 Merge tag 'mm-hotfixes-stable-2022-09-26' of ..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1073636c880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=f7b4e42c28602e81aab3
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16022898880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12a945ff080000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f7b4e42c28602e81aab3@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xfbd59c0000000021: 0000 [#1] PREEMPT SMP KASAN
KASAN: maybe wild-memory-access in range [0xdead000000000108-0xdead00000000010f]
CPU: 1 PID: 121 Comm: jfsCommit Not tainted 6.0.0-rc7-syzkaller-00029-g3800a713b607 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
RIP: 0010:__list_add_valid+0x39/0x100 lib/list_debug.c:27
Code: 00 00 00 49 89 d6 48 85 d2 0f 84 9b 00 00 00 49 89 f4 49 89 ff 49 bd 00 00 00 00 00 fc ff df 49 8d 5e 08 48 89 d8 48 c1 e8 03 <42> 80 3c 28 00 74 08 48 89 df e8 f8 40 a5 fd 48 8b 13 4c 39 e2 75
RSP: 0018:ffffc9000225fc10 EFLAGS: 00010806
RAX: 1bd5a00000000021 RBX: dead000000000108 RCX: dffffc0000000000
RDX: dead000000000100 RSI: ffffc90002271120 RDI: ffff88801d761da0
RBP: ffff88801d761d90 R08: ffffffff82fc6834 R09: fffff5200044bf64
R10: fffff5200044bf65 R11: 1ffff9200044bf64 R12: ffffc90002271120
R13: dffffc0000000000 R14: dead000000000100 R15: ffff88801d761da0
FS:  0000000000000000(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f86dc15d290 CR3: 0000000025a6f000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 __list_add include/linux/list.h:69 [inline]
 list_add include/linux/list.h:88 [inline]
 diUpdatePMap+0x5d6/0xda0 fs/jfs/jfs_imap.c:2821
 txUpdateMap+0x7c4/0xaa0 fs/jfs/jfs_txnmgr.c:2351
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x433/0xba0 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__list_add_valid+0x39/0x100 lib/list_debug.c:27
Code: 00 00 00 49 89 d6 48 85 d2 0f 84 9b 00 00 00 49 89 f4 49 89 ff 49 bd 00 00 00 00 00 fc ff df 49 8d 5e 08 48 89 d8 48 c1 e8 03 <42> 80 3c 28 00 74 08 48 89 df e8 f8 40 a5 fd 48 8b 13 4c 39 e2 75
RSP: 0018:ffffc9000225fc10 EFLAGS: 00010806
RAX: 1bd5a00000000021 RBX: dead000000000108 RCX: dffffc0000000000
RDX: dead000000000100 RSI: ffffc90002271120 RDI: ffff88801d761da0
RBP: ffff88801d761d90 R08: ffffffff82fc6834 R09: fffff5200044bf64
R10: fffff5200044bf65 R11: 1ffff9200044bf64 R12: ffffc90002271120
R13: dffffc0000000000 R14: dead000000000100 R15: ffff88801d761da0
FS:  0000000000000000(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f86dc15d290 CR3: 0000000025a6f000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess), 1 bytes skipped:
   0:	00 00                	add    %al,(%rax)
   2:	49 89 d6             	mov    %rdx,%r14
   5:	48 85 d2             	test   %rdx,%rdx
   8:	0f 84 9b 00 00 00    	je     0xa9
   e:	49 89 f4             	mov    %rsi,%r12
  11:	49 89 ff             	mov    %rdi,%r15
  14:	49 bd 00 00 00 00 00 	movabs $0xdffffc0000000000,%r13
  1b:	fc ff df
  1e:	49 8d 5e 08          	lea    0x8(%r14),%rbx
  22:	48 89 d8             	mov    %rbx,%rax
  25:	48 c1 e8 03          	shr    $0x3,%rax
* 29:	42 80 3c 28 00       	cmpb   $0x0,(%rax,%r13,1) <-- trapping instruction
  2e:	74 08                	je     0x38
  30:	48 89 df             	mov    %rbx,%rdi
  33:	e8 f8 40 a5 fd       	callq  0xfda54130
  38:	48 8b 13             	mov    (%rbx),%rdx
  3b:	4c 39 e2             	cmp    %r12,%rdx
  3e:	75                   	.byte 0x75


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
