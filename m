Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B12D98BE3C1
	for <lists+jfs-discussion@lfdr.de>; Tue,  7 May 2024 15:24:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s4KnY-00036F-55;
	Tue, 07 May 2024 13:24:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <34d45ZgkbAL4w23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1s4FhX-0000Ai-M9 for jfs-discussion@lists.sourceforge.net;
 Tue, 07 May 2024 07:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZidFwnkN6Y7nu+nx4pT0dPd/8UpyGwIteouTtk6ORGA=; b=dhVRRJvSE+VDPPco5OHmLfD/E2
 Wsotmft6aoU2hwVikLvo8Q12YWUr0PauYmmZsqjw0bCqltGXYSuIyHZeWhR4FLV1Pgce/oQMQBv9U
 A+RAAx689ty3wTu/1A6apZz2+PnQfombH2f1YpaT696/cAXV7Hc1ttkhCGZ/YyJcD/GY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZidFwnkN6Y7nu+nx4pT0dPd/8UpyGwIteouTtk6ORGA=; b=W
 HOtDxm0iqh/MzuBYe4iU4yMJ8mA8zalI6OxCpmA/6I6isG8fcz6aneGKMvfEaFSvGeJd0EaPBFolG
 S5F311NYN/L0x90m5dUxjFjxg9Y2EItR+l5m5uOFfqDfcRI+HJ5/JcygC4F3MbmaETuWz0IU/7CTd
 VBgyar52EbyAFyaU=;
Received: from mail-il1-f206.google.com ([209.85.166.206])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s4FhX-0000V2-5l for jfs-discussion@lists.sourceforge.net;
 Tue, 07 May 2024 07:57:27 +0000
Received: by mail-il1-f206.google.com with SMTP id
 e9e14a558f8ab-36c1af8f2f3so32325975ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 07 May 2024 00:57:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715068641; x=1715673441;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ZidFwnkN6Y7nu+nx4pT0dPd/8UpyGwIteouTtk6ORGA=;
 b=dO2gTxWGSmEpBjtnXB++MNHFBgG1uqkF6+hIM/x27KI/feNnd9VNe6sW8NC7rydrCn
 DeMts1JzdsCHdsKMLS62HI1Nn0Ib16HotBevxPLVo6vtb7KqYjjuhgwBVEXos7y6WBb4
 tabfIyXfjS7/ve8+2YWeFBN4mlKuHfiHztWRVJBBq+Qyvkc88DlSND21ex6ZjrE0ZM0K
 4Sczk/6t0q1HApcp6xBLmr/3E69qlWDpVz91V5hjlTqkPlGBpfohM0r7JnimD/AXa0hk
 oa/Ck2Jed064T3itF68yAw+HJdDrMxHkglzmHLnBPKgEEqSRZzFZCpBmfhPXJQrz+u6z
 1EVA==
X-Gm-Message-State: AOJu0YydQBs+q5JFkNdO+lxvIHGjOy82cwXxIinhVwtyC9VKqDoeWBVB
 5bv3F+MHesqZN8q/zci4uSc+qrHWXBaiZlltb3LoyIJoiYiLobudcfQaesP6I77qyQwhsZZAcd3
 a2RCHKf8pY8L9KzgJ/T4Mpk4qYon/zgvi6bC60SE8dbtS3dNi3B537ovnug==
X-Google-Smtp-Source: AGHT+IF+gmQQ+Y47r012cbKpIZjJALZDEvS8pq5lcXedbZbB2jBj55ZuxuaQYAKhNik1HGw0X7T6YFqlwcATGTAP2eMLMZQsZdgq
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c2b:b0:36c:5014:3bf0 with SMTP id
 m11-20020a056e021c2b00b0036c50143bf0mr625706ilh.3.1715068641622; Tue, 07 May
 2024 00:57:21 -0700 (PDT)
Date: Tue, 07 May 2024 00:57:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000264c0d0617d88912@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: -4.4 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: dccb07f2914c
 Merge tag 'for-6.9-rc7-tag' of git://git.kern.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=12fc7570980000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (-4.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.206 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.166.206 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1s4FhX-0000V2-5l
X-Mailman-Approved-At: Tue, 07 May 2024 13:23:59 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: user-memory-access Read in
 jfs_statfs
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
Reply-To: syzbot <syzbot+cea4fad5485bc30243a9@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    dccb07f2914c Merge tag 'for-6.9-rc7-tag' of git://git.kern..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=12fc7570980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=9d7ea7de0cb32587
dashboard link: https://syzkaller.appspot.com/bug?extid=cea4fad5485bc30243a9
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11c07ad4980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ea1961ce01fe/disk-dccb07f2.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/445a00347402/vmlinux-dccb07f2.xz
kernel image: https://storage.googleapis.com/syzbot-assets/461aed7c4df3/bzImage-dccb07f2.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/30e39d5c3e2c/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cea4fad5485bc30243a9@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: user-memory-access in instrument_atomic_read include/linux/instrumented.h:68 [inline]
BUG: KASAN: user-memory-access in atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
BUG: KASAN: user-memory-access in jfs_statfs+0x20e/0x510 fs/jfs/super.c:140
Read of size 4 at addr 00000000000050c0 by task syz-executor.1/7188

CPU: 1 PID: 7188 Comm: syz-executor.1 Not tainted 6.9.0-rc7-syzkaller-00012-gdccb07f2914c #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 print_report+0xe8/0x550 mm/kasan/report.c:491
 kasan_report+0x143/0x180 mm/kasan/report.c:601
 kasan_check_range+0x282/0x290 mm/kasan/generic.c:189
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
 jfs_statfs+0x20e/0x510 fs/jfs/super.c:140
 statfs_by_dentry fs/statfs.c:66 [inline]
 vfs_statfs fs/statfs.c:90 [inline]
 user_statfs+0x216/0x460 fs/statfs.c:105
 __do_sys_statfs fs/statfs.c:195 [inline]
 __se_sys_statfs fs/statfs.c:192 [inline]
 __x64_sys_statfs+0xe8/0x1a0 fs/statfs.c:192
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf5/0x240 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7ff13647dca9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 e1 20 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ff1371a30c8 EFLAGS: 00000246 ORIG_RAX: 0000000000000089
RAX: ffffffffffffffda RBX: 00007ff1365abf80 RCX: 00007ff13647dca9
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 00000000200000c0
RBP: 00007ff1364c947e R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 000000000000000b R14: 00007ff1365abf80 R15: 00007fffc058c158
 </TASK>
==================================================================


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
