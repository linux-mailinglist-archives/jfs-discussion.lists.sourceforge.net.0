Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EC587FD6B
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Mar 2024 13:15:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rmYN9-0001wz-VY;
	Tue, 19 Mar 2024 12:15:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3QGX5ZQkbACcVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rmWTL-000220-N2 for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Mar 2024 10:13:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yVWo3OW7v6RM8KpVjlOclZLMZCa5nPUC4vsLf0Mpl6Y=; b=lXUDQDrkCR2djbZzI3h8JtGKyG
 Q920COADJhbEA1ECRsznewmtoi/2x6nNkLFXZb8SCWQLESWnkLex6SFMxPVvEQKidOCdizt+QJ9cI
 PMSjgyH76+TAauiDrX8JM1SxSUU0u9d4054ACnykBTwsT2M/YNyK93fdcHGHhIVt77eU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yVWo3OW7v6RM8KpVjlOclZLMZCa5nPUC4vsLf0Mpl6Y=; b=G
 5OMEjMA18JVicb4Wz59a6zaXmM5B7pmpBmBwFMnyr9cOdrHmyYkV58hm/lAsUFQ+5RfZ8KqmuE6SC
 Ef6qiORAnUbCFwmH05ycupvqofs9braUIOqdh3Tay/458b6oju0QfcAAg3qPjnq590QeJS69eh6l+
 uquw7vF21HfdoZc8=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rmWT9-00053q-0R for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Mar 2024 10:13:30 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7cb806fc9f7so528927339f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 19 Mar 2024 03:13:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710843201; x=1711448001;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yVWo3OW7v6RM8KpVjlOclZLMZCa5nPUC4vsLf0Mpl6Y=;
 b=rRHQX9fyqU7AMs+XTOwtn3BQX1KQ+SOqiaDPeQlMrV3i0QfH8hIiUIYwdS9TNfqmZv
 9g49L1G21kSH4aFtN8P4NndSfpxpDVFZUBBEFmFKimPmfSSX9DfizcS1yheLRoxSoFl+
 54MdEe/OIgo8pbb73WIPPeqISvuVuOlthem7xesjWxzSDoYPRszwxoIHibLOHSVzcpwr
 I7Q711Ort/HoFUQmMCCSxYMpv6lJYDJiLe8nC2qg981EtPSZOTJetLKrzO1NaDTgz54D
 VTmoFM5sEc/5I+e0ZESBLNtjg1eKQLq9h7JeI9k1ykrKFoeB6I9zOAAJjiS5v8EtOo6e
 OhDA==
X-Gm-Message-State: AOJu0YxzbezDGqqhyZP7WaTaZuUxRwwxQgESeYHzV5QRv6WEY1saL3JK
 Hi+Vv/LjxdKPtox3LKQEwr8sQqO5NZfyVI7rFrbBEH/8FmvN8MaDtTvAs/1sNOYahPIEDp7Fe+P
 4iLporL8Hwi9KQNJvoXZVS5v2XYDGwKVuHymhjp9d562PBmhEC7hDo5b+pA==
X-Google-Smtp-Source: AGHT+IFnYwDPpTN7Zf+grtyBlIIPEncHbUppHOcyRUbwdQF9ibbiDo8FPnl26e7BKuD66ggGekHqZ+eH8AquJ5YCpHnslbLSr5Xt
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3711:b0:47b:cbf1:9064 with SMTP id
 k17-20020a056638371100b0047bcbf19064mr77340jav.0.1710843200902; Tue, 19 Mar
 2024 03:13:20 -0700 (PDT)
Date: Tue, 19 Mar 2024 03:13:20 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000041ac86061400b95d@google.com>
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
 syzbot found the following issue on: HEAD commit: 707081b61156
 Merge branch 'for-next/core', remote-tracking.. git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rmWT9-00053q-0R
X-Mailman-Approved-At: Tue, 19 Mar 2024 12:15:15 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in lmLogClose (3)
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
Reply-To: syzbot <syzbot+c824290332add8067111@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    707081b61156 Merge branch 'for-next/core', remote-tracking..
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=126c764e180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=caeac3f3565b057a
dashboard link: https://syzkaller.appspot.com/bug?extid=c824290332add8067111
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=101e05be180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=151ec2a5180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/6cad68bf7532/disk-707081b6.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/1a27e5400778/vmlinux-707081b6.xz
kernel image: https://storage.googleapis.com/syzbot-assets/67dfc53755d0/Image-707081b6.gz.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/e14a3937c758/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c824290332add8067111@syzkaller.appspotmail.com

INFO: task syz-executor394:6204 blocked for more than 143 seconds.
      Not tainted 6.8.0-rc7-syzkaller-g707081b61156 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor394 state:D stack:0     pid:6204  tgid:6204  ppid:6201   flags:0x0000000c
Call trace:
 __switch_to+0x314/0x560 arch/arm64/kernel/process.c:553
 context_switch kernel/sched/core.c:5400 [inline]
 __schedule+0x1498/0x24b4 kernel/sched/core.c:6727
 __schedule_loop kernel/sched/core.c:6802 [inline]
 schedule+0xb8/0x19c kernel/sched/core.c:6817
 schedule_preempt_disabled+0x18/0x2c kernel/sched/core.c:6874
 __mutex_lock_common+0xbd8/0x21a0 kernel/locking/mutex.c:684
 __mutex_lock kernel/locking/mutex.c:752 [inline]
 mutex_lock_nested+0x2c/0x38 kernel/locking/mutex.c:804
 lmLogClose+0xc8/0x4d4 fs/jfs/jfs_logmgr.c:1444
 jfs_umount+0x274/0x360 fs/jfs/jfs_umount.c:114
 jfs_put_super+0x90/0x188 fs/jfs/super.c:194
 generic_shutdown_super+0x128/0x2b8 fs/super.c:641
 kill_block_super+0x44/0x90 fs/super.c:1675
 deactivate_locked_super+0xc4/0x12c fs/super.c:472
 deactivate_super+0xe0/0x100 fs/super.c:505
 cleanup_mnt+0x34c/0x3dc fs/namespace.c:1267
 __cleanup_mnt+0x20/0x30 fs/namespace.c:1274
 task_work_run+0x230/0x2e0 kernel/task_work.c:180
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 do_notify_resume+0x178/0x1f4 arch/arm64/kernel/entry-common.c:151
 exit_to_user_mode_prepare arch/arm64/kernel/entry-common.c:169 [inline]
 exit_to_user_mode arch/arm64/kernel/entry-common.c:178 [inline]
 el0_svc+0xac/0x168 arch/arm64/kernel/entry-common.c:713
 el0t_64_sync_handler+0x84/0xfc arch/arm64/kernel/entry-common.c:730
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:598
INFO: task syz-executor394:6205 blocked for more than 143 seconds.
      Not tainted 6.8.0-rc7-syzkaller-g707081b61156 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor394 state:D stack:0     pid:6205  tgid:6205  ppid:6201   flags:0x0000000c
Call trace:
 __switch_to+0x314/0x560 arch/arm64/kernel/process.c:553
 context_switch kernel/sched/core.c:5400 [inline]
 __schedule+0x1498/0x24b4 kernel/sched/core.c:6727
 __schedule_loop kernel/sched/core.c:6802 [inline]
 schedule+0xb8/0x19c kernel/sched/core.c:6817
 schedule_preempt_disabled+0x18/0x2c kernel/sched/core.c:6874
 __mutex_lock_common+0xbd8/0x21a0 kernel/locking/mutex.c:684
 __mutex_lock kernel/locking/mutex.c:752 [inline]
 mutex_lock_nested+0x2c/0x38 kernel/locking/mutex.c:804
 lmLogClose+0xc8/0x4d4 fs/jfs/jfs_logmgr.c:1444
 jfs_umount+0x274/0x360 fs/jfs/jfs_umount.c:114
 jfs_put_super+0x90/0x188 fs/jfs/super.c:194
 generic_shutdown_super+0x128/0x2b8 fs/super.c:641
 kill_block_super+0x44/0x90 fs/super.c:1675
 deactivate_locked_super+0xc4/0x12c fs/super.c:472
 deactivate_super+0xe0/0x100 fs/super.c:505
 cleanup_mnt+0x34c/0x3dc fs/namespace.c:1267
 __cleanup_mnt+0x20/0x30 fs/namespace.c:1274
 task_work_run+0x230/0x2e0 kernel/task_work.c:180
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 do_notify_resume+0x178/0x1f4 arch/arm64/kernel/entry-common.c:151
 exit_to_user_mode_prepare arch/arm64/kernel/entry-common.c:169 [inline]
 exit_to_user_mode arch/arm64/kernel/entry-common.c:178 [inline]
 el0_svc+0xac/0x168 arch/arm64/kernel/entry-common.c:713
 el0t_64_sync_handler+0x84/0xfc arch/arm64/kernel/entry-common.c:730
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:598

Showing all locks held in the system:
1 lock held by khungtaskd/29:
 #0: ffff80008ee74ac0 (rcu_read_lock){....}-{1:2}, at: rcu_lock_acquire+0xc/0x44 include/linux/rcupdate.h:297
2 locks held by getty/5927:
 #0: ffff0000d2e810a0 (&tty->ldisc_sem){++++}-{0:0}, at: ldsem_down_read+0x3c/0x4c drivers/tty/tty_ldsem.c:340
 #1: ffff800093fe02f0 (&ldata->atomic_read_lock){+.+.}-{3:3}, at: n_tty_read+0x41c/0x1228 drivers/tty/n_tty.c:2201
2 locks held by syz-executor394/6202:
 #0: ffff0000d98900e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff0000d98900e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff0000d98900e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: deactivate_super+0xd8/0x100 fs/super.c:504
 #1: ffff80008f2586e8 (jfs_log_mutex){+.+.}-{3:3}, at: lmLogClose+0xc8/0x4d4 fs/jfs/jfs_logmgr.c:1444
1 lock held by syz-executor394/6203:
 #0: ffff0000c25c00e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff0000c25c00e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff0000c25c00e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: deactivate_super+0xd8/0x100 fs/super.c:504
2 locks held by syz-executor394/6204:
 #0: ffff0000d60740e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff0000d60740e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff0000d60740e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: deactivate_super+0xd8/0x100 fs/super.c:504
 #1: ffff80008f2586e8 (jfs_log_mutex){+.+.}-{3:3}, at: lmLogClose+0xc8/0x4d4 fs/jfs/jfs_logmgr.c:1444
2 locks held by syz-executor394/6205:
 #0: ffff0000d95420e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff0000d95420e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff0000d95420e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: deactivate_super+0xd8/0x100 fs/super.c:504
 #1: ffff80008f2586e8 (jfs_log_mutex){+.+.}-{3:3}, at: lmLogClose+0xc8/0x4d4 fs/jfs/jfs_logmgr.c:1444
2 locks held by syz-executor394/6206:
 #0: ffff0000d5cb80e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: __super_lock fs/super.c:56 [inline]
 #0: ffff0000d5cb80e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: __super_lock_excl fs/super.c:71 [inline]
 #0: ffff0000d5cb80e0 (&type->s_umount_key#42){+.+.}-{3:3}, at: deactivate_super+0xd8/0x100 fs/super.c:504
 #1: ffff80008f2586e8 (jfs_log_mutex){+.+.}-{3:3}, at: lmLogClose+0xc8/0x4d4 fs/jfs/jfs_logmgr.c:1444

=============================================



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
