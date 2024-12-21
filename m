Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1A19FA13E
	for <lists+jfs-discussion@lfdr.de>; Sat, 21 Dec 2024 16:02:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tP0zb-0004d3-4E;
	Sat, 21 Dec 2024 15:02:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3aGlmZwkbABcFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tOtbI-00055b-3k for jfs-discussion@lists.sourceforge.net;
 Sat, 21 Dec 2024 07:08:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SvBnzJ0lhNuHKQPD6lds4yQBh2uuuHJdnQuJXvEZxEo=; b=bZiJmq0lUCw+W8LI3ykVrWy0/Y
 voWqShqusyB9X3FXYZnP4p5+jcpAQrrDqziRuCTqAEp7MrcPuti8wvAk9h0eCogEmv5Z7CFE+Pm78
 Q9XhdI3F6WkcQcvU/q+/nvJb6oL3Rx3TSRHdrF1ZunK/h7cmAhCxmijxlsQ71fA2t22M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SvBnzJ0lhNuHKQPD6lds4yQBh2uuuHJdnQuJXvEZxEo=; b=R
 Cw4BA4FOoG3lMndEoU2g5kOX18cwhlegPnUZNg+xicFFi3XGAz9EqfBlvWmRgyckq7TKhq4NZ7uCX
 O8i/Vd8iAfx61kW1gbw68XY/XWXQaATl3DSS1c6S74iefHFNoBarKzJbAh6mpMZGO6vZ8yYgLTvug
 51CYrWMUQN16iSqE=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tOtbH-000728-AI for jfs-discussion@lists.sourceforge.net;
 Sat, 21 Dec 2024 07:08:36 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-3abe7375ba6so47216625ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 20 Dec 2024 23:08:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734764904; x=1735369704;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=SvBnzJ0lhNuHKQPD6lds4yQBh2uuuHJdnQuJXvEZxEo=;
 b=oTT0KWLCE4xDAnVOasrvJzSe4I/qYUx2bfEfa7hJzWhJtOsOvHoYYCmhu7g4GyrCgJ
 OFvKuPnv6ga9KhK6Ngaj0EYEzKEbfV7tRLb6L6InQCedQrBpX4ynP9ga7wDpRu2aU+PK
 sPM1/fm8MjMMBQO1fsWmeJg1cRTCYHyimp6nt8Hx74jrGgjw5M0uylnpeBRJMyxTKw4i
 E889RAiQjPGqq6RlI/TJADXRWWoT9q8z8sNsdzelF59i5U/jHd+AdidTQa3r36b3RoGy
 Ko3ZHGUIcQ1DKqzvGl+T9gRreV+3LKgZTTXptHCI262ZeU4kas0Y/UVDg95fl6RbsyOE
 6INw==
X-Gm-Message-State: AOJu0YzrsMVSe8v5ROSubOmH4SauEPj2kr12E4uiq+1PdfqEjiJZPOLx
 FjEn+uKvq/ZIoDiXJFsrjXKFnq+rjjpRUJtX6Wel5xNlcuOoFUt/s6EIXMzEkxfAGhvTiqJXDZP
 c1FBw4jYQ8V3BYYwcpy6L8B5WY8L5O+pAmWfcnLBz7QKCh8AGTyJmTS+Vfw==
X-Google-Smtp-Source: AGHT+IE22SX3YeQbFC4p5xHr6RBBnt1HbUPzte6Vs9+6To4c1omPskd8/v5GNqXXJi29vdz91URssecWqF8WBLJTsdEGr4WGXA9U
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:17cd:b0:3a6:b783:3c06 with SMTP id
 e9e14a558f8ab-3c2d51528b4mr57727635ab.19.1734764904614; Fri, 20 Dec 2024
 23:08:24 -0800 (PST)
Date: Fri, 20 Dec 2024 23:08:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67666968.050a0220.25abdd.0127.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 59dbb9d81adf
 Merge tag 'xsa465+xsa466-6.13-tag' of git://g.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=15a64b44580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.208 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -1.2 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.208 listed in wl.mailspike.net]
X-Headers-End: 1tOtbH-000728-AI
X-Mailman-Approved-At: Sat, 21 Dec 2024 15:02:11 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dtReadFirst (2)
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
Reply-To: syzbot <syzbot+9120834fc227768625ba@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    59dbb9d81adf Merge tag 'xsa465+xsa466-6.13-tag' of git://g..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=15a64b44580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6a2b862bf4a5409f
dashboard link: https://syzkaller.appspot.com/bug?extid=9120834fc227768625ba
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-59dbb9d8.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/e0cc89779297/vmlinux-59dbb9d8.xz
kernel image: https://storage.googleapis.com/syzbot-assets/5e6c895062cb/bzImage-59dbb9d8.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9120834fc227768625ba@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
syz.0.0: attempt to access beyond end of device
loop0: rw=1, sector=4680032, nr_sectors = 8 limit=32768
metapage_write_end_io: I/O error
ERROR: (device loop0): release_metapage: metapage_write_one() failed
ERROR: (device loop0): remounting filesystem as read-only
blkno = 8ed2c, nblocks = 1
ERROR: (device loop0): dbUpdatePMap: blocks are outside the map
blkno = 8ed2c, nblocks = 1
ERROR: (device loop0): dbUpdatePMap: blocks are outside the map
UFO tlock:0xffffc90001537090
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:3096:10
index 237 is out of range for type 'struct dtslot[128]'
CPU: 0 UID: 0 PID: 5314 Comm: syz.0.0 Not tainted 6.13.0-rc3-syzkaller-00026-g59dbb9d81adf #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dtReadFirst+0x622/0xc50 fs/jfs/jfs_dtree.c:3096
 dtReadNext fs/jfs/jfs_dtree.c:3147 [inline]
 jfs_readdir+0x9aa/0x3c50 fs/jfs/jfs_dtree.c:2862
 wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents fs/readdir.c:322 [inline]
 __se_sys_getdents+0x1fd/0x4e0 fs/readdir.c:308
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f6e27385d29
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f6e28204038 EFLAGS: 00000246 ORIG_RAX: 000000000000004e
RAX: ffffffffffffffda RBX: 00007f6e27575fa0 RCX: 00007f6e27385d29
RDX: 00000000000000b8 RSI: 0000000020001fc0 RDI: 0000000000000005
RBP: 00007f6e27401a20 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007f6e27575fa0 R15: 00007ffdef535ad8
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
