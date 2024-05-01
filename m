Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF118B8B31
	for <lists+jfs-discussion@lfdr.de>; Wed,  1 May 2024 15:29:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s2A1A-00009C-OA;
	Wed, 01 May 2024 13:29:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3CP8xZgkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1s25S2-0006OD-Mn for jfs-discussion@lists.sourceforge.net;
 Wed, 01 May 2024 08:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fDQZsNtCQX/xSGP3zHzoLW1EYofYgs37kJqsg6TLsKw=; b=LQRb90iBh3aPba8v2Pyn0oiWIH
 I3qwxkT5F6krMCd6qUEDN69yhll/JTdqbUsz0YZb0bDm3Bmo7f22MqwT99aHuLQ+Vp5LXf5J6GHYw
 mJvqU/lV1Q/fFoJU3QH7rzy/4NO9nlG3o7wZpOsun2r0icUcvzMiEDnDXFkEnfJF4VzA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fDQZsNtCQX/xSGP3zHzoLW1EYofYgs37kJqsg6TLsKw=; b=Z
 urIxVd+MpG+sno7WfDHuTLnfnKRmXP/8WjZlyMX44Z2qWLMqPkvueFxtemqKFzhsZvWbkWf6wfmVt
 drn7mvG7ZWKur5mT6iaMZeVV6opod0XrXl5bgATHqTB59I8EX+3ioU2H/Woi85VjN2ZYi/Mikiq8n
 6gaixLblsyqs+XS4=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s25S1-0000Bm-GE for jfs-discussion@lists.sourceforge.net;
 Wed, 01 May 2024 08:36:30 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7ded1e919d2so49755239f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 01 May 2024 01:36:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714552584; x=1715157384;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fDQZsNtCQX/xSGP3zHzoLW1EYofYgs37kJqsg6TLsKw=;
 b=dmltYu5329IDbYPn33D0cpjOKy7ASUZv1cHllFaof0acgpK95al9KlFUusD9W3Vw3T
 YmADI9H6byXCtYDi2HuPgLQ0DrTCztdyUHwYNsodm9fIRhaPeRgpnOAS4bkoGmxNkMzu
 G4of9EUYnjv+QGYBtbQUBCGEJZlc2c0E9cBsIgnv12FLbjFlX/Odyc8p748xb9M0qram
 T5LBNUTVafa8HnKihb/U5heQSTb1o4aYFUySJ5se6HQhJQiltpjq1hMVqBLiia0jiJhg
 4SxmZW5NkwV3Z5ahElVLxdgpfR0MC+It6kNW0df38Zn9JX5tXaS9cNwHuZVZ4zdVO9m4
 oDWw==
X-Gm-Message-State: AOJu0YzLtNhXHQColM3SzAItPuNS3+NNa4S7hP4XYwXQFsRo6fWLxjuW
 YB7kIJLcdNTAlEevWct09+MoQQezq4Xo3OOyeOpJmLOwoaVmqpYum5VWm6qaKwatCb+CUECiSmP
 WT0H2OgXJ6TcvyvznDQAQUjqFwSyrSZdZ94qiQcWyocOK/tk1woiN5Lo=
X-Google-Smtp-Source: AGHT+IFPEC9Ed6WfkUJm19XUVcN8J027PA+t7900I9LXMY7L6F3jetTdwDxo5pRaQiQceTAHsq5jy4qbU2GYZ5fpLSqf/1QQlTei
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2d8a:b0:7de:da38:b7df with SMTP id
 k10-20020a0566022d8a00b007deda38b7dfmr67096iow.0.1714552584287; Wed, 01 May
 2024 01:36:24 -0700 (PDT)
Date: Wed, 01 May 2024 01:36:24 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000bc46690617606123@google.com>
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
 syzbot found the following issue on: HEAD commit: 5eb4573ea63d
 Merge tag 'soc-fixes-6.9-2' of git://git.kern.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=10d00af8980000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.70 listed in list.dnswl.org]
X-Headers-End: 1s25S1-0000Bm-GE
X-Mailman-Approved-At: Wed, 01 May 2024 13:29:04 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dtReadFirst
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
Reply-To: syzbot <syzbot+65fa06e29859e41a83f3@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    5eb4573ea63d Merge tag 'soc-fixes-6.9-2' of git://git.kern..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=10d00af8980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3d46aa9d7a44f40d
dashboard link: https://syzkaller.appspot.com/bug?extid=65fa06e29859e41a83f3
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=103728a7180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14b3c937180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/7e4c1378cbb1/disk-5eb4573e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/8e4487ecdd86/vmlinux-5eb4573e.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d84518ee028f/bzImage-5eb4573e.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/8d252f0d561d/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+65fa06e29859e41a83f3@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:3087:20
index -1 is out of range for type 'struct dtslot[128]'
CPU: 0 PID: 5074 Comm: syz-executor356 Not tainted 6.9.0-rc5-syzkaller-00296-g5eb4573ea63d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dtReadFirst+0x612/0xbe0 fs/jfs/jfs_dtree.c:3087
 jfs_readdir+0x81a/0x4660 fs/jfs/jfs_dtree.c:2818
 wrap_directory_iterator+0x94/0xe0 fs/readdir.c:67
 iterate_dir+0x539/0x6f0 fs/readdir.c:110
 __do_sys_getdents64 fs/readdir.c:409 [inline]
 __se_sys_getdents64+0x20d/0x4f0 fs/readdir.c:394
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf5/0x240 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f3471781639
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffcff008118 EFLAGS: 00000246 ORIG_RAX: 00000000000000d9
RAX: ffffffffffffffda RBX: 00007ffcff0082e8 RCX: 00007f3471781639
RDX: 0000000000001000 RSI: 0000000020002ec0 RDI: 0000000000000005
RBP: 00007f34717fa610 R08: 0000000000000000 R09: 00007ffcff0082e8
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffcff0082d8 R14: 0000000000000001 R15: 0000000000000001
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
