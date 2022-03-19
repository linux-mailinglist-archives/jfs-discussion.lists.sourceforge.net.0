Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA9D4DEA63
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Mar 2022 20:28:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nVekc-0001eT-G6; Sat, 19 Mar 2022 19:28:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <33Rs2YgkbAAYy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1nVdUD-0002HH-Bp
 for jfs-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 18:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9exNoJ5f+whq9B6CnxQDs+sdj6gKU1kieBgg6wdoz3M=; b=BcT52pJnZAt87mn1RtqWUPRM3a
 llrwNruRaTJP6r+VBQSNjO4DDQ7ThND3CJKkWELTbqzCupnlvrL0+O0Y7wkEbKJa9FtRw+Id0AOD5
 svKkOotSC+cpUu7D06MrUD2AF5qFdb23ntwE3ELRCTZG3gLLFhSTYnlT4BjDPb4k3WbI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9exNoJ5f+whq9B6CnxQDs+sdj6gKU1kieBgg6wdoz3M=; b=K
 GjwlP+mPnbOqOzgVWcWkerJv6PGCZORkUoS2AnyahnGKNTrb5ppaEKY29r+I7SEVjNf1PGLqsy6f7
 1IITOPsK+a+EQoFzSerfiJD8bcfrm8B21Vl5Cs/0+Cd1LNI9wnGb8b0VlM5K5SgmPs5lmgAHmmU9S
 zsyaBV18Qmk9kXJM=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nVdUB-004M7p-AB
 for jfs-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 18:07:31 +0000
Received: by mail-io1-f70.google.com with SMTP id
 h14-20020a056602008e00b00645739bbd4dso7378132iob.9
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 19 Mar 2022 11:07:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=9exNoJ5f+whq9B6CnxQDs+sdj6gKU1kieBgg6wdoz3M=;
 b=TS/mIh84/fy/w786JTXdfJ3uGBFzkIMn/8Z0UQFIdHLdMmYIYPXF6E5C90qaXI9dMv
 tyug/NWb6Ja5tURJvILOYmzqqrLo1Cc/r9sxThk1A9fY9+lNSqGVDM9vWPttNobL13tE
 s+xY1TQYug64gTnCRtvn1Kr12z/HlKLfaqV/ThDqDtcZtMRtmI7RO3Vc9SvgA2z80fAA
 hy9BO+sLD/sBJAEQ0cFcXuOtFEBg0FHzjRiqYSPHjbHoevjqrlaVB7HZeEPo0VfZZHia
 DKUROUn5xDzxHvoftV41rTQGV4YKijQuYMGtHIxh7exJAOC9VU042JdkANM9gXxWuow5
 aIkg==
X-Gm-Message-State: AOAM531TIyvlzLIzc0Rt+kZcydJuGter3Z2P5xZn65XU+TFcKwnKCGXv
 gc762ZqYQZ6aIWYJEUqimkIpqzQ9/9nFGjHTaRPmv3PipzbF
X-Google-Smtp-Source: ABdhPJxIC+h8PCuEZ9w8B8sorg614KxLkifVlrhRjY/pTRBW7BfYt5kvEm78Lg5SSpQlcDLHynXl8tvUp+0w/orfWaZvAcS0lajV
MIME-Version: 1.0
X-Received: by 2002:a92:3f03:0:b0:2c7:ace3:7edf with SMTP id
 m3-20020a923f03000000b002c7ace37edfmr6914773ila.47.1647713245544; Sat, 19 Mar
 2022 11:07:25 -0700 (PDT)
Date: Sat, 19 Mar 2022 11:07:25 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b1470105da9622aa@google.com>
From: syzbot <syzbot+46f5c25af73eb8330eb6@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 09688c0166e7
 Linux 5.17-rc8 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=163e5015700000
 kernel config: https://syzkaller.appspot.com/x/.config?x=70f75a89c7 [...]
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nVdUB-004M7p-AB
X-Mailman-Approved-At: Sat, 19 Mar 2022 19:28:31 +0000
Subject: [Jfs-discussion] [syzbot] divide error in dbNextAG
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

HEAD commit:    09688c0166e7 Linux 5.17-rc8
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=163e5015700000
kernel config:  https://syzkaller.appspot.com/x/.config?x=70f75a89c7a0e6bc
dashboard link: https://syzkaller.appspot.com/bug?extid=46f5c25af73eb8330eb6
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=132c1d61700000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+46f5c25af73eb8330eb6@syzkaller.appspotmail.com

divide error: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 3622 Comm: syz-executor.0 Not tainted 5.17.0-rc8-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:dbNextAG+0xfc/0x5f0 fs/jfs/jfs_dmap.c:602
Code: 48 89 c1 48 89 44 24 08 83 e0 07 48 c1 e9 03 0f b6 0c 11 48 89 c2 83 c2 03 38 ca 7c 08 84 c9 0f 85 ca 03 00 00 44 89 f8 31 d2 <41> f7 75 14 49 89 c7 49 8d 45 20 48 89 c2 48 89 44 24 20 48 b8 00
RSP: 0018:ffffc900028d7a40 EFLAGS: 00010246
RAX: 0000000000000000 RBX: ffff88801d782800 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffff88801f5c3008
RBP: ffff88801d782800 R08: 0000000000000000 R09: ffffc900028d797f
R10: fffff5200051af2f R11: 0000000000000000 R12: ffff88806dede530
R13: ffff88801f5c3000 R14: ffff88806dedf598 R15: 0000000000000000
FS:  00007f05def99700(0000) GS:ffff8880b9d00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f05def99718 CR3: 000000001ef61000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 diAlloc+0xa96/0x1730 fs/jfs/jfs_imap.c:1342
 ialloc+0x89/0xaa0 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x1f0/0xab0 fs/jfs/namei.c:225
 vfs_mkdir+0x1c3/0x3b0 fs/namei.c:3933
 do_mkdirat+0x285/0x300 fs/namei.c:3959
 __do_sys_mkdirat fs/namei.c:3974 [inline]
 __se_sys_mkdirat fs/namei.c:3972 [inline]
 __x64_sys_mkdirat+0x115/0x170 fs/namei.c:3972
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f05df845049
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f05def99168 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 00007f05df958030 RCX: 00007f05df845049
RDX: 0000000000000020 RSI: 0000000020000300 RDI: 0000000000000005
RBP: 00007f05df89f08d R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffc16fbfa9f R14: 00007f05def99300 R15: 0000000000022000
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:dbNextAG+0xfc/0x5f0 fs/jfs/jfs_dmap.c:602
Code: 48 89 c1 48 89 44 24 08 83 e0 07 48 c1 e9 03 0f b6 0c 11 48 89 c2 83 c2 03 38 ca 7c 08 84 c9 0f 85 ca 03 00 00 44 89 f8 31 d2 <41> f7 75 14 49 89 c7 49 8d 45 20 48 89 c2 48 89 44 24 20 48 b8 00
RSP: 0018:ffffc900028d7a40 EFLAGS: 00010246
RAX: 0000000000000000 RBX: ffff88801d782800 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffff88801f5c3008
RBP: ffff88801d782800 R08: 0000000000000000 R09: ffffc900028d797f
R10: fffff5200051af2f R11: 0000000000000000 R12: ffff88806dede530
R13: ffff88801f5c3000 R14: ffff88806dedf598 R15: 0000000000000000
FS:  00007f05def99700(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffcf01138f8 CR3: 000000001ef61000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	48 89 c1             	mov    %rax,%rcx
   3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
   8:	83 e0 07             	and    $0x7,%eax
   b:	48 c1 e9 03          	shr    $0x3,%rcx
   f:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
  13:	48 89 c2             	mov    %rax,%rdx
  16:	83 c2 03             	add    $0x3,%edx
  19:	38 ca                	cmp    %cl,%dl
  1b:	7c 08                	jl     0x25
  1d:	84 c9                	test   %cl,%cl
  1f:	0f 85 ca 03 00 00    	jne    0x3ef
  25:	44 89 f8             	mov    %r15d,%eax
  28:	31 d2                	xor    %edx,%edx
* 2a:	41 f7 75 14          	divl   0x14(%r13) <-- trapping instruction
  2e:	49 89 c7             	mov    %rax,%r15
  31:	49 8d 45 20          	lea    0x20(%r13),%rax
  35:	48 89 c2             	mov    %rax,%rdx
  38:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  3d:	48                   	rex.W
  3e:	b8                   	.byte 0xb8


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
