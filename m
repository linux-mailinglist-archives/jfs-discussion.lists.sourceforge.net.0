Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D8C853C22
	for <lists+jfs-discussion@lfdr.de>; Tue, 13 Feb 2024 21:21:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rZzHD-0002Jk-IN;
	Tue, 13 Feb 2024 20:21:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3a4nLZQkbAOAUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rZudD-0006EZ-98 for jfs-discussion@lists.sourceforge.net;
 Tue, 13 Feb 2024 15:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eapGd85XQdiWlRnkbXZfY0yyjZ9t+mu9JVAVS/ftg5M=; b=MGsP9yJZxqfhbXTlBuw/qECXv4
 TfLE7IZfrLEYWTWssRX1kzs0FHYT28EGmhWz8IXjVF3mCSXz1/RfY67gD59/vfGSJYhMYW6dDgNYZ
 VoTzIuRYFztcTyrGfR4U0U8bOu/joDsWYrhdDQ1qYUIkJ1viSWgrzOApNT9l22BbVhuc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eapGd85XQdiWlRnkbXZfY0yyjZ9t+mu9JVAVS/ftg5M=; b=E
 NRKlrKb9Ncd1+KmDqgfVZXiddel+d0x57CjTvaTKYZRPlByFZ1tEJbOg+QMyk0cT0RmZ683OdU67I
 b1b8uzUzKkVw1/wcDbMmaaeE960thVq02EDhV8GET/nrAGgaQw4mT22cB7aSLs391Ot5Jgh41hbiv
 6z6IL+G8XvTpz4J0=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rZudB-0003PO-Lb for jfs-discussion@lists.sourceforge.net;
 Tue, 13 Feb 2024 15:23:35 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-7c42b7ee0a5so223142939f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 13 Feb 2024 07:23:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707837803; x=1708442603;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eapGd85XQdiWlRnkbXZfY0yyjZ9t+mu9JVAVS/ftg5M=;
 b=oN/H5vteLWPlx8DEnK1MILGxUXXeM6UXNajnfHHA61f7fh9iJ5iorwxx2vqX9WssCX
 moLdXU+xmBTMRHfbR24Rolr7+h3jF1RkttzHGDLXcI55MM+gxnPq4Vm2LhZw4qEJ++Um
 YcQ640hRNJZoa8Mls9mjWEmGD6KPSA2gGbp/QyD1lyPQ+X1RBiRBy7v/nCVINUsioEHB
 vUQr+F7UplvGtl7ca8AiTMK230tU18YMYeZ+pfbC5ddF1+d5Bxt0OOtLfotG7OLwE0G5
 +0agrpY+S9b4wLTFczNgW1ZESvXLwDHy0dqHBPQF7FrA6RrYh4OkTJ0ihExAsCIX9L4k
 hazA==
X-Gm-Message-State: AOJu0YwvxVdsK4bf9nfLd8M/fC+VGX4vdBywu9qSG7xTR7CNX1JjOfBs
 L+XvdxGRru1bNOwiLPH/8DjrelsjnJEyXGR2zb8+wBJwWFu4LwB+cYIfEksEA0/xZe/cCuURKe7
 E7jfgtfccQp+/liD7YVqLZk42fVj5GzCyVoiBCiDU60fgq7s502cVH42F4Q==
X-Google-Smtp-Source: AGHT+IETxxHxna1NhDp9HAg/10qyCuxdqS5uMJEpwTr8NT/LnQAaJuOhQqt2ABrFOFWu+iFGB7jpYj7GOSTB0wtx9cTpYWaBR7Re
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1ca8:b0:363:c919:eec7 with SMTP id
 x8-20020a056e021ca800b00363c919eec7mr837257ill.6.1707837803797; Tue, 13 Feb
 2024 07:23:23 -0800 (PST)
Date: Tue, 13 Feb 2024 07:23:23 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a12738061144f9d1@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: c664e16bb1ba
 Merge tag 'docs-6.8-fixes2' of git://git.lwn... git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1576f862180000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rZudB-0003PO-Lb
X-Mailman-Approved-At: Tue, 13 Feb 2024 20:21:09 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txEnd (2)
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
Reply-To: syzbot <syzbot+776b5fc6c99745aa7860@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    c664e16bb1ba Merge tag 'docs-6.8-fixes2' of git://git.lwn...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1576f862180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=25b2f1c52b0610fa
dashboard link: https://syzkaller.appspot.com/bug?extid=776b5fc6c99745aa7860
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-c664e16b.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/81393e4e8960/vmlinux-c664e16b.xz
kernel image: https://storage.googleapis.com/syzbot-assets/3048b480feed/bzImage-c664e16b.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+776b5fc6c99745aa7860@syzkaller.appspotmail.com

bread failed!
read_mapping_page failed!
bread failed!
BUG at fs/jfs/jfs_txnmgr.c:528 assert(tblk->next == 0)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:528!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 2 PID: 30987 Comm: syz-executor.0 Not tainted 6.8.0-rc4-syzkaller-00005-gc664e16bb1ba #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.2-debian-1.16.2-1 04/01/2014
RIP: 0010:txEnd+0x583/0x5a0 fs/jfs/jfs_txnmgr.c:528
Code: e9 59 fb ff ff e8 dd 70 88 fe 48 c7 c1 00 ee 29 8b ba 10 02 00 00 48 c7 c6 80 e8 29 8b 48 c7 c7 c0 e8 29 8b e8 8e 83 6a fe 90 <0f> 0b 48 89 ef e8 f3 00 e3 fe e9 40 fd ff ff e8 b9 00 e3 fe e9 2e
RSP: 0018:ffffc9000ff0fa50 EFLAGS: 00010286
RAX: 0000000000000036 RBX: ffffc900020c7600 RCX: ffffc900065fa000
RDX: 0000000000000000 RSI: ffffffff816e9616 RDI: 0000000000000005
RBP: 0000000000000060 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000001 R11: 0000000000000006 R12: ffff888021b79800
R13: 00000000000000c0 R14: ffffffff8db27f60 R15: ffffc900020c7602
FS:  0000000000000000(0000) GS:ffff88802c400000(0063) knlGS:00000000f5e30b40
CS:  0010 DS: 002b ES: 002b CR0: 0000000080050033
CR2: 0000000020ca3000 CR3: 00000000007a0000 CR4: 0000000000350ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_truncate_nolock+0x1f5/0x2f0 fs/jfs/inode.c:391
 jfs_truncate+0xeb/0x170 fs/jfs/inode.c:412
 jfs_write_failed fs/jfs/inode.c:289 [inline]
 jfs_write_begin+0xbe/0xe0 fs/jfs/inode.c:301
 generic_perform_write+0x273/0x620 mm/filemap.c:3930
 __generic_file_write_iter+0x1fd/0x240 mm/filemap.c:4025
 generic_file_write_iter+0xe7/0x350 mm/filemap.c:4051
 call_write_iter include/linux/fs.h:2085 [inline]
 new_sync_write fs/read_write.c:497 [inline]
 vfs_write+0x6de/0x1110 fs/read_write.c:590
 ksys_write+0x12f/0x260 fs/read_write.c:643
 do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
 __do_fast_syscall_32+0x7c/0x120 arch/x86/entry/common.c:321
 do_fast_syscall_32+0x33/0x80 arch/x86/entry/common.c:346
 entry_SYSENTER_compat_after_hwframe+0x7c/0x86
RIP: 0023:0xf7257579
Code: b8 01 10 06 03 74 b4 01 10 07 03 74 b0 01 10 08 03 74 d8 01 00 00 00 00 00 00 00 00 00 00 00 00 00 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 8d b4 26 00 00 00 00 8d b4 26 00 00 00 00
RSP: 002b:00000000f5e305ac EFLAGS: 00000292 ORIG_RAX: 0000000000000004
RAX: ffffffffffffffda RBX: 0000000000000008 RCX: 0000000020000100
RDX: 00000000fffffd9d RSI: 0000000000000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000292 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:txEnd+0x583/0x5a0 fs/jfs/jfs_txnmgr.c:528
Code: e9 59 fb ff ff e8 dd 70 88 fe 48 c7 c1 00 ee 29 8b ba 10 02 00 00 48 c7 c6 80 e8 29 8b 48 c7 c7 c0 e8 29 8b e8 8e 83 6a fe 90 <0f> 0b 48 89 ef e8 f3 00 e3 fe e9 40 fd ff ff e8 b9 00 e3 fe e9 2e
RSP: 0018:ffffc9000ff0fa50 EFLAGS: 00010286
RAX: 0000000000000036 RBX: ffffc900020c7600 RCX: ffffc900065fa000
RDX: 0000000000000000 RSI: ffffffff816e9616 RDI: 0000000000000005
RBP: 0000000000000060 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000001 R11: 0000000000000006 R12: ffff888021b79800
R13: 00000000000000c0 R14: ffffffff8db27f60 R15: ffffc900020c7602
FS:  0000000000000000(0000) GS:ffff88802c400000(0063) knlGS:00000000f5e30b40
CS:  0010 DS: 002b ES: 002b CR0: 0000000080050033
CR2: 0000000020ca3000 CR3: 00000000007a0000 CR4: 0000000000350ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess), 2 bytes skipped:
   0:	10 06                	adc    %al,(%rsi)
   2:	03 74 b4 01          	add    0x1(%rsp,%rsi,4),%esi
   6:	10 07                	adc    %al,(%rdi)
   8:	03 74 b0 01          	add    0x1(%rax,%rsi,4),%esi
   c:	10 08                	adc    %cl,(%rax)
   e:	03 74 d8 01          	add    0x1(%rax,%rbx,8),%esi
  1e:	00 51 52             	add    %dl,0x52(%rcx)
  21:	55                   	push   %rbp
  22:	89 e5                	mov    %esp,%ebp
  24:	0f 34                	sysenter
  26:	cd 80                	int    $0x80
* 28:	5d                   	pop    %rbp <-- trapping instruction
  29:	5a                   	pop    %rdx
  2a:	59                   	pop    %rcx
  2b:	c3                   	ret
  2c:	90                   	nop
  2d:	90                   	nop
  2e:	90                   	nop
  2f:	90                   	nop
  30:	8d b4 26 00 00 00 00 	lea    0x0(%rsi,%riz,1),%esi
  37:	8d b4 26 00 00 00 00 	lea    0x0(%rsi,%riz,1),%esi


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

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
