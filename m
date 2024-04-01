Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E957893BDD
	for <lists+jfs-discussion@lfdr.de>; Mon,  1 Apr 2024 16:09:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rrILg-0000yZ-W2;
	Mon, 01 Apr 2024 14:09:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3nb8KZgkbAH4u01mcnngtcrrkf.iqqingwugteqpvgpv.eqo@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rrIK3-0001hm-Cx for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Apr 2024 14:07:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YpErK9qu/PGde2topRn8Sa+4f9zoUj4OqVEyctoEVTw=; b=kFwp1vX0k4qGCnPSPESaVy3wu2
 ySk3QCpt48zLDrQmFkE1ZMLGpImwSdEH4+Kb6zySRJVWK5RkuTcxHKbPpywsPnGFteF3cS1Sc2A8Q
 KlLPxiWz4a1qCpgkd0CW3tc02/WjQV0PBjrO0P2UAd/B9vigIgUEsZiSi+Tzdm/k96b8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YpErK9qu/PGde2topRn8Sa+4f9zoUj4OqVEyctoEVTw=; b=k
 D8gRwy7j9Ck6lDm7byHgvtlhjSiDJ/h9yDI7e1g0fW0R+iI0A4nPqVwBGg5GO0tNMGF7Y/zF0SCvb
 yGNp8wnRedm3Dc47chURSbU46q1+iP8xxXSivpcwFrA2nN7XzNWvlENcczlrmOdyTGL8tOHNIy78I
 koCz5U8BNgUxPdfs=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rrIJz-0002P5-TU for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Apr 2024 14:07:39 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-368a2cf2dd7so39093595ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 01 Apr 2024 07:07:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711980445; x=1712585245;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YpErK9qu/PGde2topRn8Sa+4f9zoUj4OqVEyctoEVTw=;
 b=vfA3g2bEbMBOrToPqw71kRYfEjqN5+nQIGdmIHFREP9L0LxVnQaUaPZtENA1d5y7gm
 y7DqU02qTFxDJhCGulqB2VdH3Y6Xi6HOnltFyVRHtM9P+V13UpoF3v0ka6GpExYBEr7V
 eVGXansTqL0VA5EEjgkBUpSEFuHm6iMErFTZm/rdNagnL8WwNXjuyLCeqZBUngAnkNBz
 sh+cTaduKDSO9dAQAP065ML/D0f/YNSSnGtkv7E74PlPaUyEwFyZKL/FZYKLmsl3wfvV
 4IWmI1zoCfkk7VBYQVzYCgt6YqLa/a7MvYTKMYfSshdFJ7Uwvb+1OkWqNgkspgVPhS6q
 VoRQ==
X-Gm-Message-State: AOJu0YwzdF4cnsI/Af33ncUQ9hQyXzVkpXAhrqyY8Mau+MrS7DQ5ehJG
 J+x9fVixz2m6okeea2+fV6wusi6Bhw+3uy/9SGZKBo2WmqKTOm2vcX7+3gCS23wXiF8FW56tS9+
 cD7A7gTTodhWty34WY1BghYSn8A4ZoYEf/8cqLOg6lyYwWU38qzYsxBpu6g==
X-Google-Smtp-Source: AGHT+IF3/sFIb0CAoEg9PV13WObAPYgrnxhGisLBb2Iw7Ia2ohijMls29S/WYYpz18hhx+m+vvgnktUoDi10I4OnzaGoOq07x6+i
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a4b:b0:369:98a3:6f7b with SMTP id
 u11-20020a056e021a4b00b0036998a36f7bmr437628ilv.4.1711980445526; Mon, 01 Apr
 2024 07:07:25 -0700 (PDT)
Date: Mon, 01 Apr 2024 07:07:25 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000518bc10615098296@google.com>
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
 syzbot found the following issue on: HEAD commit: fe46a7dd189e
 Merge tag 'sound-6.9-rc1' of git://git.kernel.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1723f529180000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1rrIJz-0002P5-TU
X-Mailman-Approved-At: Mon, 01 Apr 2024 14:09:19 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in jfs_readdir
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
Reply-To: syzbot <syzbot+0315f8fe99120601ba88@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    fe46a7dd189e Merge tag 'sound-6.9-rc1' of git://git.kernel..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1723f529180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4d90a36f0cab495a
dashboard link: https://syzkaller.appspot.com/bug?extid=0315f8fe99120601ba88
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1574d855180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11d95219180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/72ab73815344/disk-fe46a7dd.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2d6d6b0d7071/vmlinux-fe46a7dd.xz
kernel image: https://storage.googleapis.com/syzbot-assets/48e275e5478b/bzImage-fe46a7dd.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/fe45a050e301/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12f6203d180000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=11f6203d180000
console output: https://syzkaller.appspot.com/x/log.txt?x=16f6203d180000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+0315f8fe99120601ba88@syzkaller.appspotmail.com

------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:2892:30
index -1 is out of range for type 'struct dtslot[128]'
CPU: 0 PID: 5057 Comm: syz-executor163 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:415
 jfs_readdir+0x1cb4/0x4660 fs/jfs/jfs_dtree.c:2892
 wrap_directory_iterator+0x94/0xe0 fs/readdir.c:67
 iterate_dir+0x539/0x6f0 fs/readdir.c:110
 __do_sys_getdents64 fs/readdir.c:409 [inline]
 __se_sys_getdents64+0x20d/0x4f0 fs/readdir.c:394
 do_syscall_64+0xfb/0x240
 entry_SYSCALL_64_after_hwframe+0x6d/0x75
RIP: 0033:0x7f00e0f665f9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fffdc32b878 EFLAGS: 00000246 ORIG_RAX: 00000000000000d9
RAX: ffffffffffffffda RBX: 00007fffdc32ba48 RCX: 00007f00e0f665f9
RDX: 000000000000102a RSI: 0000000020002280 RDI: 0000000000000004
RBP: 00007f00e0fdf610 R08: 0000000000000000 R09: 00007fffdc32ba48
R10: 00000000000060cc R11: 0000000000000246 R12: 0000000000000001
R13: 00007fffdc32ba38 R14: 0000000000000001 R15: 0000000000000001
 </TASK>
---[ end trace ]---


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
