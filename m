Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3765F109A
	for <lists+jfs-discussion@lfdr.de>; Fri, 30 Sep 2022 19:15:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oeJbG-0008Or-Eh;
	Fri, 30 Sep 2022 17:14:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3xwI2YwkbAMQ289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oe0Kh-0000fX-1Q for jfs-discussion@lists.sourceforge.net;
 Thu, 29 Sep 2022 20:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wftOwvU7tf4wzq4kPACBGiS4fY52mPam2mkuPp+O7kQ=; b=L5jDSofe9ZcQzrOdUgBUNI1+Dj
 Z8e5hZyP+DEpjDGxe77f5jRCyo6zOtB9UqNVaFkXi8O1K7kViUkRxS+nYWVDuZBAwbYoX1/NGBl9S
 KLmKrcCu1+TugwPnoq4xdMETJUByVa1RFZBHTbiAxOFq0DFwkIymjsrnuzGLT5gVwhU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wftOwvU7tf4wzq4kPACBGiS4fY52mPam2mkuPp+O7kQ=; b=C
 0PBumSTFsvhzS01hf/xTl4ECzMpjEFeCWu4iW0Pi+jFIiMquEriTjvRi70k74m5GjiHpEMk77pDOT
 To5N2E0sa+pt38zDS2ORSs4CxONob8FcV1sBRJe8sUR2oWoJ6N0EIaWIDTxvaKoJgKwc9As4vq/Ib
 l8BsPULLMgY+VrB8=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oe0Ks-0005sJ-8C for jfs-discussion@lists.sourceforge.net;
 Thu, 29 Sep 2022 20:40:47 +0000
Received: by mail-il1-f198.google.com with SMTP id
 a8-20020a92c548000000b002f6440ff96bso1990361ilj.22
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 29 Sep 2022 13:40:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=wftOwvU7tf4wzq4kPACBGiS4fY52mPam2mkuPp+O7kQ=;
 b=xGiqiokaKHYuCv1cBLsZxH2p68jA1KeHD6c/EU28buBS1bjxPbT+CspWpWHj4b2qP8
 945zeQ0eBa8cXBVa6YsrMZ64xHL5LDBxOveY50+VJfgHyWktIrCMD4EFIYjQ/nCbH5U3
 A8Xi3I4sdwIlxMoFOMKqHY407w9AxBUrzvJE86fF8KgbXxJ0I3glz7TIIiLh45lGTJdz
 +ktGQBK9Xg43tQbAajq+HGmrz7JUuMTX/4xSRhSNCEnfsKezfSc6EW1YeItPlgsHnvWu
 q2jJYqDzBpAlSo0caLl7H4evZQrDZ/ogighpSfu/pI/YQVf90cPLpR3pd56imnqPKMuq
 BdYA==
X-Gm-Message-State: ACrzQf1IPqSFTd3HVLFRCGEJzlddISU9C2WUc4Hg0wJMT3sM7yewk/CH
 T25GXH+M5w8nG/EWUWpyj7M+mu1IRq1jx+Hd8wXsc2FXrHR6
X-Google-Smtp-Source: AMsMyM7IiolDyHgkp8RG75SPSeq9/K9dP6DxqPlqzHe3VNbYggDpXaPZp0pjs61kAzd1QYrAnl8OFPbAz38hHnDk6ly8Ci+XR50e
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:180a:b0:2f6:9b06:a184 with SMTP id
 a10-20020a056e02180a00b002f69b06a184mr2760314ilv.137.1664484039882; Thu, 29
 Sep 2022 13:40:39 -0700 (PDT)
Date: Thu, 29 Sep 2022 13:40:39 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ee81a205e9d6e3d7@google.com>
From: syzbot <syzbot+e14b1036481911ae4d77@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: c3e0e1e23c70
 Merge tag 'irq_urgent_for_v6.0' of git://git... git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1599a048880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1oe0Ks-0005sJ-8C
X-Mailman-Approved-At: Fri, 30 Sep 2022 17:14:55 +0000
Subject: [Jfs-discussion] [syzbot] general protection fault in lmLogSync (2)
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

HEAD commit:    c3e0e1e23c70 Merge tag 'irq_urgent_for_v6.0' of git://git...
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1599a048880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13b404c0880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=179f60b8880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e7f1f925f94e/disk-c3e0e1e2.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/830dabeedf0d/vmlinux-c3e0e1e2.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e14b1036481911ae4d77@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xdffffc0000000006: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000030-0x0000000000000037]
CPU: 1 PID: 3619 Comm: syz-executor117 Not tainted 6.0.0-rc7-syzkaller-00081-gc3e0e1e23c70 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
RIP: 0010:write_special_inodes fs/jfs/jfs_logmgr.c:208 [inline]
RIP: 0010:lmLogSync+0x227/0xb00 fs/jfs/jfs_logmgr.c:937
Code: b2 fe 49 8d 5f f0 48 89 d8 48 c1 e8 03 42 80 3c 20 00 74 08 48 89 df e8 37 66 da fe 48 8b 1b 48 83 c3 30 48 89 d8 48 c1 e8 03 <42> 80 3c 20 00 74 08 48 89 df e8 1a 66 da fe 48 8b 3b e8 32 89 b2
RSP: 0018:ffffc900039dfae0 EFLAGS: 00010206
RAX: 0000000000000006 RBX: 0000000000000030 RCX: 4daf7eec4cfcb600
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc900039dfbe8 R08: ffffffff81b29a43 R09: ffffc900039dfa30
R10: fffff5200073bf49 R11: 1ffff9200073bf46 R12: dffffc0000000000
R13: ffff88807736d800 R14: 0000000000000000 R15: ffff888020ba2638
FS:  00005555574fa300(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555557503628 CR3: 0000000021420000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_syncpt+0x79/0x90 fs/jfs/jfs_logmgr.c:1041
 jfs_sync_fs+0x86/0xa0 fs/jfs/super.c:685
 sync_filesystem+0xe8/0x220 fs/sync.c:56
 generic_shutdown_super+0x6b/0x300 fs/super.c:474
 kill_block_super+0x79/0xd0 fs/super.c:1427
 deactivate_locked_super+0xa7/0xf0 fs/super.c:332
 cleanup_mnt+0x4ce/0x560 fs/namespace.c:1186
 task_work_run+0x146/0x1c0 kernel/task_work.c:177
 ptrace_notify+0x29a/0x340 kernel/signal.c:2353
 ptrace_report_syscall include/linux/ptrace.h:420 [inline]
 ptrace_report_syscall_exit include/linux/ptrace.h:482 [inline]
 syscall_exit_work+0x8c/0xe0 kernel/entry/common.c:249
 syscall_exit_to_user_mode_prepare+0x63/0xc0 kernel/entry/common.c:276
 __syscall_exit_to_user_mode_work kernel/entry/common.c:281 [inline]
 syscall_exit_to_user_mode+0xa/0x60 kernel/entry/common.c:294
 do_syscall_64+0x49/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f50d6eec917
Code: 07 00 48 83 c4 08 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 b8 a6 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffcf5fdfe28 EFLAGS: 00000206 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007f50d6eec917
RDX: 00007ffcf5fdfee9 RSI: 000000000000000a RDI: 00007ffcf5fdfee0
RBP: 00007ffcf5fdfee0 R08: 00000000ffffffff R09: 00007ffcf5fdfcc0
R10: 00005555574fb653 R11: 0000000000000206 R12: 00007ffcf5fe0f50
R13: 00005555574fb5f0 R14: 00007ffcf5fdfe50 R15: 0000000000000001
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:write_special_inodes fs/jfs/jfs_logmgr.c:208 [inline]
RIP: 0010:lmLogSync+0x227/0xb00 fs/jfs/jfs_logmgr.c:937
Code: b2 fe 49 8d 5f f0 48 89 d8 48 c1 e8 03 42 80 3c 20 00 74 08 48 89 df e8 37 66 da fe 48 8b 1b 48 83 c3 30 48 89 d8 48 c1 e8 03 <42> 80 3c 20 00 74 08 48 89 df e8 1a 66 da fe 48 8b 3b e8 32 89 b2
RSP: 0018:ffffc900039dfae0 EFLAGS: 00010206
RAX: 0000000000000006 RBX: 0000000000000030 RCX: 4daf7eec4cfcb600
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc900039dfbe8 R08: ffffffff81b29a43 R09: ffffc900039dfa30
R10: fffff5200073bf49 R11: 1ffff9200073bf46 R12: dffffc0000000000
R13: ffff88807736d800 R14: 0000000000000000 R15: ffff888020ba2638
FS:  00005555574fa300(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005613768c4db8 CR3: 0000000021420000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	b2 fe                	mov    $0xfe,%dl
   2:	49 8d 5f f0          	lea    -0x10(%r15),%rbx
   6:	48 89 d8             	mov    %rbx,%rax
   9:	48 c1 e8 03          	shr    $0x3,%rax
   d:	42 80 3c 20 00       	cmpb   $0x0,(%rax,%r12,1)
  12:	74 08                	je     0x1c
  14:	48 89 df             	mov    %rbx,%rdi
  17:	e8 37 66 da fe       	callq  0xfeda6653
  1c:	48 8b 1b             	mov    (%rbx),%rbx
  1f:	48 83 c3 30          	add    $0x30,%rbx
  23:	48 89 d8             	mov    %rbx,%rax
  26:	48 c1 e8 03          	shr    $0x3,%rax
* 2a:	42 80 3c 20 00       	cmpb   $0x0,(%rax,%r12,1) <-- trapping instruction
  2f:	74 08                	je     0x39
  31:	48 89 df             	mov    %rbx,%rdi
  34:	e8 1a 66 da fe       	callq  0xfeda6653
  39:	48 8b 3b             	mov    (%rbx),%rdi
  3c:	e8                   	.byte 0xe8
  3d:	32                   	.byte 0x32
  3e:	89                   	.byte 0x89
  3f:	b2                   	.byte 0xb2


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
