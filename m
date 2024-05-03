Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 701128BB37F
	for <lists+jfs-discussion@lfdr.de>; Fri,  3 May 2024 20:55:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s2y3x-00030r-IA;
	Fri, 03 May 2024 18:55:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Uek0ZgkbADAeklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1s2t9Z-0000zf-6i for jfs-discussion@lists.sourceforge.net;
 Fri, 03 May 2024 13:40:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hrBI8RJiDyViM5gs3peU14/2k5AZb/mtjpSoFWNKvCQ=; b=JXcL2Bg+gQQObn42nVokhKMqPI
 YeXtLLQelJ3C7BdfOBO8ytJoJJJ8t4is1ZTRXWtlTG97d9Gc5b+nHDMpiD1wGWRe+WJfhyy3DZRzE
 CksFdPwCe/nmm1VAMIFjFLADnkhjD6XyXU+lg3k7nvywSMO9tmJTKE+Oyy7aIKeKnKOw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hrBI8RJiDyViM5gs3peU14/2k5AZb/mtjpSoFWNKvCQ=; b=Z
 GUciFJMX7pwLzkyeMC8vmyXpjsegqsMes5zlUJzEwGppTU8xqFkv7uTFuqvqks4rASXcDR3Qx4xrx
 lG/x8H1CHVBt7oqZYETd6dy6vDIpfujml4iBEvnLa00qImR6JZBcnB16ilIwmy1Uv8inTOae72pe7
 y5byIscLcsAUHQ/Q=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s2t9Y-0006Qs-MR for jfs-discussion@lists.sourceforge.net;
 Fri, 03 May 2024 13:40:45 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-36c6bfb7cc1so17875075ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 03 May 2024 06:40:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714743634; x=1715348434;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=hrBI8RJiDyViM5gs3peU14/2k5AZb/mtjpSoFWNKvCQ=;
 b=rZpcE6PjLmSp27CBtOGYWsCA2TynFytLpR4N4FucesaLqA66KuvUmtYHPAK50zURbG
 ysV6Ib2JBFhbk3z+mptD4xa2bRu5K5SkZLwSeV0F5kMZWrHv6cDIT+MKhcRcfQjcEMQC
 tbiDZsnmW2VLwCX5VTUW2XurScDWEbwBajEvmg2sR+fVNaaEo7ZjpbK4W/kJLEtKkAFi
 GB/8M9ffIsGcC27nr0AKBVQOgmEqGtF8zKcyCbeJsdiEgm3ZNIEHtmwmHV3neDNP7mcZ
 d9o5OyxpONHVfPmLSmNNvduXBPlCLcsr6HJOe25z7hHoypF3aXHLoKr2M/Og26uIaQGd
 YxPw==
X-Gm-Message-State: AOJu0Yw3VxPIiBCLtHezOYQjEdAzmvyYzl9ACnpLGR2KWuginlwyil8C
 b+Y/7lRFT3XcnUXj1/zEEFtf+UjyEq/ckGv5QZcRgcKfn0w/Ugpad7X3OGhDUa88ttSeKjLj3TX
 HP9BRS5HH1DYMLGsoKPJxl9l/ZDv2K2+FcoVZP8TX7gJFg1hY8jjyS9o=
X-Google-Smtp-Source: AGHT+IHLiPRuKvp1YPAZuP8DRx6hN3I7YDbeFST4/QEJYaCw4Jl0HdtdMkRvFt+ffhZTv5NWicEuTFyXspeRO/9/4mcHJcLnJ8vj
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:188e:b0:36c:5f85:6979 with SMTP id
 o14-20020a056e02188e00b0036c5f856979mr125430ilu.0.1714743633939; Fri, 03 May
 2024 06:40:33 -0700 (PDT)
Date: Fri, 03 May 2024 06:40:33 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002e9eb506178cdd71@google.com>
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
 syzbot found the following issue on: HEAD commit: 9221b2819b8a
 Add linux-next specific files for 20240503 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=14631754980000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.198 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1s2t9Y-0006Qs-MR
X-Mailman-Approved-At: Fri, 03 May 2024 18:55:16 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 extAlloc (2)
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
Reply-To: syzbot <syzbot+13e8cd4926977f8337b6@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    9221b2819b8a Add linux-next specific files for 20240503
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=14631754980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=8ab537f51a6a0d98
dashboard link: https://syzkaller.appspot.com/bug?extid=13e8cd4926977f8337b6
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15123b1f180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16b7da2f180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/3e67dbdc3c37/disk-9221b281.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ade618fa19f8/vmlinux-9221b281.xz
kernel image: https://storage.googleapis.com/syzbot-assets/df12e5073c97/bzImage-9221b281.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/41dea5c977c2/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+13e8cd4926977f8337b6@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/jfs_extent.c:319:16
shift exponent 108 is too large for 64-bit type 's64' (aka 'long long')
CPU: 0 PID: 5090 Comm: syz-executor421 Not tainted 6.9.0-rc6-next-20240503-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c8/0x420 lib/ubsan.c:468
 extBalloc fs/jfs/jfs_extent.c:319 [inline]
 extAlloc+0xe5c/0x1010 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x41b/0xe60 fs/jfs/inode.c:248
 __block_write_begin_int+0x50c/0x1a70 fs/buffer.c:2128
 __block_write_begin fs/buffer.c:2177 [inline]
 block_write_begin+0x9b/0x1e0 fs/buffer.c:2236
 jfs_write_begin+0x31/0x70 fs/jfs/inode.c:299
 generic_perform_write+0x322/0x640 mm/filemap.c:4016
 generic_file_write_iter+0xaf/0x310 mm/filemap.c:4137
 new_sync_write fs/read_write.c:497 [inline]
 vfs_write+0xa72/0xc90 fs/read_write.c:590
 ksys_write+0x1a0/0x2c0 fs/read_write.c:643
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf5/0x240 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f4d15f6f639
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff3dae85f8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007fff3dae87c8 RCX: 00007f4d15f6f639
RDX: 00000000fffffef2 RSI: 0000000020000240 RDI: 0000000000000004
RBP: 00007f4d15fe8610 R08: 0000000000000000 R09: 00007fff3dae87c8
R10: 0000000000006162 R11: 0000000000000246 R12: 0000000000000001
R13: 00007fff3dae87b8 R14: 0000000000000001 R15: 0000000000000001
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
