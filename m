Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8016D9D9A9D
	for <lists+jfs-discussion@lfdr.de>; Tue, 26 Nov 2024 16:49:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tFxoZ-0003LF-T8;
	Tue, 26 Nov 2024 15:49:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <36-tFZwkbABwKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tFxg7-000344-5q for jfs-discussion@lists.sourceforge.net;
 Tue, 26 Nov 2024 15:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z4QBDfWEQeb8YUkuhnZ6Q5DhtW2P4YOASMyrlS+sQXg=; b=T8v4LoLfMM4UJUPC3v61JHz7ST
 qJkWmdSjmi9LboWRd1bQKHbUYdDcs4TbBywODQmoYufOqrVtHfz8BtUMT0LZ+MS75awnmLYc9NqZE
 XwjNCDc/2LgN62ugVNshDwyCUVSMAmVJI4HuIQo8RxZ7m7SENDbHNGAGb93oPa2OCV20=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Z4QBDfWEQeb8YUkuhnZ6Q5DhtW2P4YOASMyrlS+sQXg=; b=W
 8b7nYYvVYNmjbihj5b9S7+mb08uRVBgRHBIg7dnh+P1jJGSQs31fmDUAP0UZ7x+ykLE7Qsi6UrXNW
 6ZjBbGG91zZoJgL8xsHi2DhFUYu2KnTX747MqzLjiQYabbiBXCGm2/XMhVUldBdR7K/G477REiFBu
 Zqkm4VUN53FFvOrQ=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tFxg6-0004k3-AX for jfs-discussion@lists.sourceforge.net;
 Tue, 26 Nov 2024 15:40:38 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-84181157edbso238543139f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 26 Nov 2024 07:40:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732635627; x=1733240427;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Z4QBDfWEQeb8YUkuhnZ6Q5DhtW2P4YOASMyrlS+sQXg=;
 b=a2T7gLxcdiLD6rowutql0reaXz5+Deq564E/8OA42cClKodmuIKjsnERihFKI4b5vJ
 TEE/K/RBxPr1asiQc+HtBLD1+BA2vqb1ZBRZ3X3SrAXK+Zxc8amKnrYOHHqjxj7RipV3
 DAEFhpmSm4OJlc5eYzp26L0gc9OlyiTwUVZ1OtUeCGip0nWHyxPhrukKtwm0bH768Fd2
 LpsJlhyxKlLzp5G3eIRse+125jdv5fqy9grDm5etX5Ts+9Sx93ajoZH2iX9nRPqtzTP3
 k1ENm/2z+m/CMhDTES2aYPnhD68Z+Mg392vhFQRbrcmwiRyUiUuy4mI7CJGKcKQkMKDZ
 Hzfw==
X-Gm-Message-State: AOJu0Yy8OaRtL7U7rjW7wYVNdzPMapwJOAMQOpx2e/rSaSGO8Y9wJiuI
 ioTqpSSEyZbXX+dqzdXKR3QqAAwgJRmQn+UVwiw1UVRsk5U85MEdqXq6dmkoUVooCMdeXsQ1XOG
 qZOHUNsR+kFbKCSxwcg3Z5c+Xysi+4c5DPhoZvQdKmyuRSEFMeTzgP1E=
X-Google-Smtp-Source: AGHT+IHKDaAZbHO3wvggDIf5bxCayMcjPpK0wV3kgAF/t/qqDTCmnWW572bIUSIb+1qNzK8yrB7ay7zk+9Zzoptpa6FPqIwktPkC
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:12e7:b0:3a7:86ab:bebe with SMTP id
 e9e14a558f8ab-3a79af75dc2mr178942175ab.16.1732635627585; Tue, 26 Nov 2024
 07:40:27 -0800 (PST)
Date: Tue, 26 Nov 2024 07:40:27 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6745ebeb.050a0220.21d33d.001a.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 28eb75e178d3
 Merge tag 'drm-next-2024-11-21' of https://gi.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=10ad3930580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.71 listed in psbl.surriel.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.9 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1tFxg6-0004k3-AX
X-Mailman-Approved-At: Tue, 26 Nov 2024 15:49:22 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in add_missing_indices
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
Reply-To: syzbot <syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    28eb75e178d3 Merge tag 'drm-next-2024-11-21' of https://gi..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=10ad3930580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=402159daa216c89d
dashboard link: https://syzkaller.appspot.com/bug?extid=b974bd41515f770c608b
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e3c9c97af7d9/disk-28eb75e1.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/1e22f3d29103/vmlinux-28eb75e1.xz
kernel image: https://storage.googleapis.com/syzbot-assets/8ff56ec30fa6/bzImage-28eb75e1.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com

------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:2649:28
index -128 is out of range for type 'struct dtslot[128]'
CPU: 1 UID: 0 PID: 9494 Comm: syz.7.422 Not tainted 6.12.0-syzkaller-07749-g28eb75e178d3 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/30/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 add_missing_indices+0x824/0xbf0 fs/jfs/jfs_dtree.c:2649
 jfs_readdir+0x1fc5/0x3c50 fs/jfs/jfs_dtree.c:3019
 wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents64 fs/readdir.c:403 [inline]
 __se_sys_getdents64+0x1e2/0x4b0 fs/readdir.c:389
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fbaf317e819
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fbaf3f2d038 EFLAGS: 00000246 ORIG_RAX: 00000000000000d9
RAX: ffffffffffffffda RBX: 00007fbaf3335fa0 RCX: 00007fbaf317e819
RDX: 0000000000001000 RSI: 0000000020000f80 RDI: 0000000000000004
RBP: 00007fbaf31f175e R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007fbaf3335fa0 R15: 00007fff928fc148
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
