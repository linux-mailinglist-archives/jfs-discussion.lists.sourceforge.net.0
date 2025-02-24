Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32266A423E9
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Feb 2025 15:50:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tmZmA-0000Gi-DZ;
	Mon, 24 Feb 2025 14:49:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3fB28ZwkbAOsflmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tmSkU-0002hU-Ux for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Feb 2025 07:19:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AB8UU/MfSjsKfvUTLzniioAspdMinQ/5oUQ7XX3COHM=; b=mgD8v9Hc+Mdr1JisaLh1enk2Jh
 kpTE4uTjBe9aA8K8J0e+jRrTaHFTrDjTkb+BB03n1d58ZkABGx29TNlUNHcYobITap/EVlQRVEuNo
 I+z8aW0g3CLF6kDjGSd18uXT0t19FMGclCuZinMCnYMufBrHS5A4Uj6jEOJpYTbb5fGc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AB8UU/MfSjsKfvUTLzniioAspdMinQ/5oUQ7XX3COHM=; b=F
 xZZDufPAhtiXNk43Sw9PFx5w1SZcb+HSsTMqmo7IhSC6fKJkHrOKuOvGAhKTLJhvnQiz5duMcQPTQ
 gLXgRFlN69UBE2PWzR+Wl14X7Xj3utUnUQwtw4zjmgSsA9yNTZSfHbiZ9+zQaBTj7HdEdUAPwXbhX
 j3XbyRiRKtN3+7qI=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tmSkU-00027w-5E for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Feb 2025 07:19:30 +0000
Received: by mail-il1-f205.google.com with SMTP id
 e9e14a558f8ab-3d2b6d933acso35625045ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 23 Feb 2025 23:19:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740381564; x=1740986364;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AB8UU/MfSjsKfvUTLzniioAspdMinQ/5oUQ7XX3COHM=;
 b=lYV0aHMpHLQX6IXACT3FLMQaKHyVPOgoILSAVGlQf7uqrBv/Bxp4Bs84JGG9lQTIju
 UOsimSQHVp00qc14Sdzz04fG85cYLJy8NYifipVbPfg0t4QAczKQ6YXkLVvPIMMBthl6
 /fywfBhYaOjOUanwzsB/5zZz72rJ9gNWG54ZiPMezN55gmHtp/BxWZyrWezqTqy528iv
 bk5keREQvv3X7Gk9+LP8bWiU6bvEZ0bvaCNWCpF1jE3zvkZomCS9HPIDF0RMefzVtPmf
 iazl2wuBuItzqCFuBwt49rHLSJD8tF9uh0I3b+jgO/urJ2x4MBNmA5k3njak20NMvJ7z
 M0uA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbgiIp7JcEhAqcLNqcqNt1S4jQRggPQxmvDI4YBIIIk8ZR4Kr30l09NzFxeJha6rYVyDBFb3gHBro5OJsrSg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxNME8W7kWGqGrwik5mG4q0FN68w71hNFWpEW99tpk/y0+ljcub
 y+9sxRoTHNvbd7rReJLIL2uQ3lDATlSFEs/cHEMtclwqvcLEw+EJKAeX6e0FXvL4XquES5T8/Ym
 gLuvZtWgD0ro8OTndbzZpKhTyDGuUTX1/pG0U1jag2iGVZtRR9lwdTag=
X-Google-Smtp-Source: AGHT+IFmf6Og2sXFMIDQxDSf8J/a1KYOGrdPptHe7pxCfNc/c/DoiIPgi0fB43E7yYkzBDI7PXoKKi8+IFToCYujS0v5X8KoyW9z
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:12e8:b0:3d1:966c:fc8c with SMTP id
 e9e14a558f8ab-3d2cb514b1emr109060995ab.17.1740381564438; Sun, 23 Feb 2025
 23:19:24 -0800 (PST)
Date: Sun, 23 Feb 2025 23:19:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67bc1d7c.050a0220.bbfd1.0046.GAE@google.com>
To: jack@suse.com, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 27102b38b8ca
 Merge tag 'v6.14-rc3-smb3-client-fix-part2' o.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=11e6f498580000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.205 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.205 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.205 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.205 listed in wl.mailspike.net]
X-Headers-End: 1tmSkU-00027w-5E
X-Mailman-Approved-At: Mon, 24 Feb 2025 14:49:42 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: user-memory-access Read in
 dqput
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
Reply-To: syzbot <syzbot+49423de13afd058db22f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    27102b38b8ca Merge tag 'v6.14-rc3-smb3-client-fix-part2' o..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=11e6f498580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=246f46d6db29b555
dashboard link: https://syzkaller.appspot.com/bug?extid=49423de13afd058db22f
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10e1d3b8580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=128fcdb0580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/2324227e5d74/disk-27102b38.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/10e721e73827/vmlinux-27102b38.xz
kernel image: https://storage.googleapis.com/syzbot-assets/4a3889279a6e/bzImage-27102b38.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/63597cabd128/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=15ae27a4580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+49423de13afd058db22f@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: user-memory-access in instrument_atomic_read include/linux/instrumented.h:68 [inline]
BUG: KASAN: user-memory-access in atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
BUG: KASAN: user-memory-access in dqput+0x79/0x490 fs/quota/dquot.c:868
Read of size 4 at addr 000000000074020f by task syz-executor195/5828

CPU: 0 UID: 0 PID: 5828 Comm: syz-executor195 Not tainted 6.14.0-rc3-syzkaller-00295-g27102b38b8ca #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2025
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_report+0xe3/0x5b0 mm/kasan/report.c:524
 kasan_report+0x143/0x180 mm/kasan/report.c:634
 kasan_check_range+0x282/0x290 mm/kasan/generic.c:189
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
 dqput+0x79/0x490 fs/quota/dquot.c:868
 dqput_all fs/quota/dquot.c:422 [inline]
 __dquot_drop+0x20b/0x420 fs/quota/dquot.c:1608
 jfs_evict_inode+0xbd/0x440 fs/jfs/inode.c:167
 evict+0x4e8/0x9a0 fs/inode.c:796
 dispose_list fs/inode.c:845 [inline]
 evict_inodes+0x6f6/0x790 fs/inode.c:899
 generic_shutdown_super+0xa0/0x2d0 fs/super.c:627
 kill_block_super+0x44/0x90 fs/super.c:1710
 deactivate_locked_super+0xc4/0x130 fs/super.c:473
 cleanup_mnt+0x41f/0x4b0 fs/namespace.c:1413
 task_work_run+0x24f/0x310 kernel/task_work.c:227
 ptrace_notify+0x2d9/0x380 kernel/signal.c:2522
 ptrace_report_syscall include/linux/ptrace.h:415 [inline]
 ptrace_report_syscall_exit include/linux/ptrace.h:477 [inline]
 syscall_exit_work+0xc7/0x1d0 kernel/entry/common.c:173
 syscall_exit_to_user_mode_prepare kernel/entry/common.c:200 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:205 [inline]
 syscall_exit_to_user_mode+0x24a/0x340 kernel/entry/common.c:218
 do_syscall_64+0x100/0x230 arch/x86/entry/common.c:89
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fcd7fefe407
Code: 07 00 48 83 c4 08 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 b8 a6 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 01 c3 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8
RSP: 002b:00007ffc5f71e678 EFLAGS: 00000206 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007fcd7fefe407
RDX: 0000000000000000 RSI: 0000000000000009 RDI: 00007ffc5f71e730
RBP: 00007ffc5f71e730 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000206 R12: 00007ffc5f71f7a0
R13: 00005555914236c0 R14: 0000000000000001 R15: 431bde82d7b634db
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
