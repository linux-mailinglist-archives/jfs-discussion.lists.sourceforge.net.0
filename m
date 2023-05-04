Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7271B6F6C8A
	for <lists+jfs-discussion@lfdr.de>; Thu,  4 May 2023 15:02:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1puYah-00074l-S4;
	Thu, 04 May 2023 13:01:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3kntTZAkbAAEtz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1puVJr-0004fl-VX for jfs-discussion@lists.sourceforge.net;
 Thu, 04 May 2023 09:32:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C8fFZy2M9CRWNQT/qQ4rHsUOD+ZlazMxTl8QpIseuL8=; b=VldvDwcmUUMBI+v4a0ghHRDRXK
 EEU6bDEPDvAoEmc92YN9Kk5L1bVHdLLU6KYAxccs2FRrJrrVVaRL3WQgTZ3W446/dg23u5nXVnb4C
 yWi0M6qnmkmVEaO9/1hNI1llx74iB1Pcss3r7gf1QzHIX9YVscuOhsDfYSCjxX81MZ08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=C8fFZy2M9CRWNQT/qQ4rHsUOD+ZlazMxTl8QpIseuL8=; b=D
 r54Mz4oZnv2gwsiizFp34TgwFSAnJxEUBMFQRh7LPMDEpFEJ8JTlrSZK3Z45r6k+qvey/BDq1SUnJ
 lrtNTOguqhjM5pEKAw0w8qURpl5hsus7PPKwc3f9tlhRtS0WgQlkZ1ti5/mRMl0k/7oUai251xYMh
 2dHeAh9M5+JwiDPg=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1puVJo-00DpZE-5U for jfs-discussion@lists.sourceforge.net;
 Thu, 04 May 2023 09:32:12 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-32b5ec09cf8so1497675ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 04 May 2023 02:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683192722; x=1685784722;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=C8fFZy2M9CRWNQT/qQ4rHsUOD+ZlazMxTl8QpIseuL8=;
 b=BEI7Mo+zHp0USTZg2byznjJuH2q3j5B65Ye1gRgehrGp6/7Sz4vCAvi77n+p6dcWkS
 TDMiXyJLs+VSB9FOwFEs4ySQ6bAvxizWUXda8ruCCwxSoYD2CmtFgomISbBMwE9R80gw
 J9o9YlVkLDtU6dpkeUH1OwLMfYOdosA6hOVDC7sUN/rmwl0/uHwbxZ2DqPDurQ6LldIt
 TchTY5RvG2OydqYtVNylBkAhlQ24stSRhPDoUhfYuOaLffTx0T1kSX5N2LL6IO46siUM
 duT9E00cMQQrzR/lbY6lTNvI/SD7jav3IbD3NhNILuOau1R4FelHHcwzvCEA0NsT11aA
 zmaw==
X-Gm-Message-State: AC+VfDx9gzlz0TC6sSmUBnk267mTQmz9mXJOo6pc2wKvL9F9qsMtD14q
 nM/Zg2zB7zp2bsgxUipRiwfqLgj3opS+peRJ+lIPUZ+rsewm
X-Google-Smtp-Source: ACHHUZ5F0rrP+Fpyvw8MhPHceX+zZzy+lIokl7i/4c8QOsPPUdo5FhTd5mZSgg2APXXXZ2qNseR/5f8Nmmb4O7HGpPRGTfe7rWXm
MIME-Version: 1.0
X-Received: by 2002:a92:d08a:0:b0:329:5faf:cbc0 with SMTP id
 h10-20020a92d08a000000b003295fafcbc0mr13341297ilh.2.1683192722605; Thu, 04
 May 2023 02:32:02 -0700 (PDT)
Date: Thu, 04 May 2023 02:32:02 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000051d14405fadad8cc@google.com>
From: syzbot <syzbot+dcc068159182a4c31ca3@syzkaller.appspotmail.com>
To: brauner@kernel.org, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: fa31fc82fb77
 Merge tag 'pm-6.4-rc1-2' of git://git.kernel... git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=176f146c280000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.208 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1puVJo-00DpZE-5U
X-Mailman-Approved-At: Thu, 04 May 2023 13:01:46 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: user-memory-access Write in
 __destroy_inode
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

HEAD commit:    fa31fc82fb77 Merge tag 'pm-6.4-rc1-2' of git://git.kernel...
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=176f146c280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=73a06f6ef2d5b492
dashboard link: https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13a40690280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=156b965c280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/47047382df87/disk-fa31fc82.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/1fd540f5f80a/vmlinux-fa31fc82.xz
kernel image: https://storage.googleapis.com/syzbot-assets/21da1f9e2c23/bzImage-fa31fc82.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/058ce906b620/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+dcc068159182a4c31ca3@syzkaller.appspotmail.com

ERROR: (device loop0): jfs_readdir: JFS:Dtree error: ino = 2, bn=0, index = 6
ERROR: (device loop0): jfs_readdir: JFS:Dtree error: ino = 2, bn=0, index = 7
==================================================================
BUG: KASAN: user-memory-access in instrument_atomic_read_write include/linux/instrumented.h:96 [inline]
BUG: KASAN: user-memory-access in atomic_fetch_sub_release include/linux/atomic/atomic-instrumented.h:176 [inline]
BUG: KASAN: user-memory-access in __refcount_sub_and_test include/linux/refcount.h:272 [inline]
BUG: KASAN: user-memory-access in __refcount_dec_and_test include/linux/refcount.h:315 [inline]
BUG: KASAN: user-memory-access in refcount_dec_and_test include/linux/refcount.h:333 [inline]
BUG: KASAN: user-memory-access in posix_acl_release include/linux/posix_acl.h:57 [inline]
BUG: KASAN: user-memory-access in __destroy_inode+0x426/0x5e0 fs/inode.c:297
Write of size 4 at addr 0000000b00000000 by task syz-executor374/4998

CPU: 0 PID: 4998 Comm: syz-executor374 Not tainted 6.3.0-syzkaller-12999-gfa31fc82fb77 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 04/14/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 print_report+0xe6/0x540 mm/kasan/report.c:465
 kasan_report+0x176/0x1b0 mm/kasan/report.c:572
 kasan_check_range+0x283/0x290 mm/kasan/generic.c:187
 instrument_atomic_read_write include/linux/instrumented.h:96 [inline]
 atomic_fetch_sub_release include/linux/atomic/atomic-instrumented.h:176 [inline]
 __refcount_sub_and_test include/linux/refcount.h:272 [inline]
 __refcount_dec_and_test include/linux/refcount.h:315 [inline]
 refcount_dec_and_test include/linux/refcount.h:333 [inline]
 posix_acl_release include/linux/posix_acl.h:57 [inline]
 __destroy_inode+0x426/0x5e0 fs/inode.c:297
 destroy_inode fs/inode.c:308 [inline]
 evict+0x51b/0x620 fs/inode.c:680
 dispose_list fs/inode.c:698 [inline]
 evict_inodes+0x5f8/0x690 fs/inode.c:748
 generic_shutdown_super+0x98/0x340 fs/super.c:479
 kill_block_super+0x84/0xf0 fs/super.c:1407
 deactivate_locked_super+0xa4/0x110 fs/super.c:331
 cleanup_mnt+0x426/0x4c0 fs/namespace.c:1177
 task_work_run+0x24a/0x300 kernel/task_work.c:179
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0x68f/0x2290 kernel/exit.c:871
 do_group_exit+0x206/0x2c0 kernel/exit.c:1021
 __do_sys_exit_group kernel/exit.c:1032 [inline]
 __se_sys_exit_group kernel/exit.c:1030 [inline]
 __x64_sys_exit_group+0x3f/0x40 kernel/exit.c:1030
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f696702ea49
Code: Unable to access opcode bytes at 0x7f696702ea1f.
RSP: 002b:00007ffcc25baa18 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
RAX: ffffffffffffffda RBX: 00007f69670a9330 RCX: 00007f696702ea49
RDX: 000000000000003c RSI: 00000000000000e7 RDI: 0000000000000001
RBP: 0000000000000001 R08: ffffffffffffffc0 R09: 00007f69670a3e40
R10: 00007f69670a3e40 R11: 0000000000000246 R12: 00007f69670a9330
R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
 </TASK>
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to change bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
