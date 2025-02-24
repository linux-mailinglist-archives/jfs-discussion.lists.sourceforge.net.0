Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFB7A423E8
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Feb 2025 15:50:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tmZmA-0000GZ-2N;
	Mon, 24 Feb 2025 14:49:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3W_27ZwkbAIo6CDyozzs5o33wr.u22uzs86s5q217s17.q20@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tmQbq-00007t-KO for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Feb 2025 05:02:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d1LuiwTnhxFqGKXEvdeoIsjmOesyDtr4398x5Mxpx4c=; b=jmgOnNnnTjHelSLw40D9y1m2/K
 b71KKxlgJEsVJBZ5FPEsO4ESde3iW/WWP/GwVJQfqPViHEHwCAxDQVGz7mAQvBrxfJ+e9fQVQyG5C
 ogaiY7xqRTY+OA7nmu7jDfarpK0wHJAql1ozARo7jlI2dCwAOShglamQi8E/2wJypNV0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=d1LuiwTnhxFqGKXEvdeoIsjmOesyDtr4398x5Mxpx4c=; b=V
 sKqG04iXoDNa1eTECmCHmfCco0l1sz03Sh4YJIolQk+iY6jZXdfITK+oS1+9b+SdBIAJkOxGE2b5x
 HpTSJbXHzHEGSjKNJ52f/yg+QPjEPTMzQG0nkOUB2+zb5R+LXPsJ2ZJb35fXHbbuLCXR2LJUQNhBU
 aDrkgLEIditZpJ3o=;
Received: from mail-io1-f78.google.com ([209.85.166.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tmQbp-00067K-Ab for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Feb 2025 05:02:26 +0000
Received: by mail-io1-f78.google.com with SMTP id
 ca18e2360f4ac-851c4ef08b9so970927439f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 23 Feb 2025 21:02:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740373339; x=1740978139;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=d1LuiwTnhxFqGKXEvdeoIsjmOesyDtr4398x5Mxpx4c=;
 b=Ah64/T+0ETUVUiX9svraKH7JlMG8lFoG4JPo+pcNf2Oniwp54bdovR9+PjwprgnYW8
 /+b1Da5l7h+a7rWlIiDh3fNe9PKQzk7USe79FU1RsXVhbjFVaOL+h0pqTFCQ8hrCWoq0
 fXAR7AbDFaDJ9z+OukkHJN58wXV+TDbJOKsYQV06q/66ctYjErNeAjfjwOHPtEyw4uud
 3zqFxPfX2/U+uZ6qTpogOE68+UMWzmHTNKsQYgW37QIQq3tlJDZwnOQL71tHoPAnbz3K
 gcxT2G1SOy7zpmCjyx86KsSo++AAi+Q31vAUsdjDuxkC7mLo6qfeS9qov40u7d8/o0O3
 OB0g==
X-Gm-Message-State: AOJu0Yw4fJjNfykwabRcXRDWc/d/9U8OxM+q045ba5BsAy9eWlnLLSzw
 cm0xe138pe63c+si+LgWgSfwHDEZSbGuDY243Ie6Au4WNIL60MyT2vM8aAU+yVeW+YXpIKYqLqR
 +axg/lFvmumFJSYrv9IRo+ZmXvkUsx3dvXnWPynKfXAYUICsEmMin0v3vXg==
X-Google-Smtp-Source: AGHT+IEpL3v2O47v3i5h7Bz+0lgtzzU4Ps7/WJX/9OPRy7ZiAry+N/vyb9lsybQwruzAU37//2ygcsamUeA0RBrXoqLtp2wg61hc
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c0f:b0:3d2:b34d:a264 with SMTP id
 e9e14a558f8ab-3d2cb492863mr123676185ab.12.1740373339625; Sun, 23 Feb 2025
 21:02:19 -0800 (PST)
Date: Sun, 23 Feb 2025 21:02:19 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67bbfd5b.050a0220.bbfd1.0043.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: e6747d19291c
 Merge branch 'for-next/el2-enable-feat-pmuv3p.. git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.78 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.78 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.78 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.78 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1tmQbp-00067K-Ab
X-Mailman-Approved-At: Mon, 24 Feb 2025 14:49:42 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] BUG: sleeping function called from
 invalid context in jfs_fsync
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
Reply-To: syzbot <syzbot+c266ffd7d9f1769517ec@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    e6747d19291c Merge branch 'for-next/el2-enable-feat-pmuv3p..
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=12435ae4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f6b108de97771157
dashboard link: https://syzkaller.appspot.com/bug?extid=c266ffd7d9f1769517ec
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=157c6fdf980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=137bddb8580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/874063395a28/disk-e6747d19.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f707e2e6b743/vmlinux-e6747d19.xz
kernel image: https://storage.googleapis.com/syzbot-assets/57c934b7f0e8/Image-e6747d19.gz.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/fdad6db15ae6/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=106fdba4580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c266ffd7d9f1769517ec@syzkaller.appspotmail.com

BUG: sleeping function called from invalid context at kernel/locking/rwsem.c:1576
in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 16, name: ksoftirqd/0
preempt_count: 100, expected: 0
RCU nest depth: 0, expected: 0
no locks held by ksoftirqd/0/16.
Preemption disabled at:
[<ffff8000803110e4>] softirq_handle_begin kernel/softirq.c:402 [inline]
[<ffff8000803110e4>] handle_softirqs+0xe0/0xd34 kernel/softirq.c:537
CPU: 0 UID: 0 PID: 16 Comm: ksoftirqd/0 Not tainted 6.14.0-rc3-syzkaller-ge6747d19291c #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 12/27/2024
Call trace:
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:466 (C)
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0xe4/0x150 lib/dump_stack.c:120
 dump_stack+0x1c/0x28 lib/dump_stack.c:129
 __might_resched+0x374/0x4d0 kernel/sched/core.c:8767
 __might_sleep+0x90/0xe4 kernel/sched/core.c:8696
 down_write+0x28/0xc0 kernel/locking/rwsem.c:1576
 inode_lock include/linux/fs.h:877 [inline]
 jfs_fsync+0xa0/0x1d4 fs/jfs/file.c:28
 vfs_fsync_range+0x160/0x19c fs/sync.c:187
 generic_write_sync include/linux/fs.h:2970 [inline]
 dio_complete+0x510/0x6b8 fs/direct-io.c:313
 dio_bio_end_aio+0x488/0x550 fs/direct-io.c:368
 bio_endio+0x840/0x87c block/bio.c:1548
 blk_update_request+0x4ac/0xda0 block/blk-mq.c:983
 blk_mq_end_request+0x54/0x88 block/blk-mq.c:1145
 lo_complete_rq+0x188/0x2f4 drivers/block/loop.c:395
 blk_complete_reqs block/blk-mq.c:1220 [inline]
 blk_done_softirq+0x11c/0x168 block/blk-mq.c:1225
 handle_softirqs+0x320/0xd34 kernel/softirq.c:561
 run_ksoftirqd+0x70/0xc0 kernel/softirq.c:950
 smpboot_thread_fn+0x4b0/0x90c kernel/smpboot.c:164
 kthread+0x65c/0x7b0 kernel/kthread.c:464
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:862

=============================
[ BUG: Invalid wait context ]
6.14.0-rc3-syzkaller-ge6747d19291c #0 Tainted: G        W         
-----------------------------
ksoftirqd/0/16 is trying to lock:
ffff0000dd220578 (&sb->s_type->i_mutex_key#18){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:877 [inline]
ffff0000dd220578 (&sb->s_type->i_mutex_key#18){+.+.}-{4:4}, at: jfs_fsync+0xa0/0x1d4 fs/jfs/file.c:28
other info that might help us debug this:
context-{3:3}
no locks held by ksoftirqd/0/16.
stack backtrace:
CPU: 0 UID: 0 PID: 16 Comm: ksoftirqd/0 Tainted: G        W          6.14.0-rc3-syzkaller-ge6747d19291c #0
Tainted: [W]=WARN
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 12/27/2024
Call trace:
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:466 (C)
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0xe4/0x150 lib/dump_stack.c:120
 dump_stack+0x1c/0x28 lib/dump_stack.c:129
 print_lock_invalid_wait_context kernel/locking/lockdep.c:4828 [inline]
 check_wait_context kernel/locking/lockdep.c:4900 [inline]
 __lock_acquire+0x2034/0x7904 kernel/locking/lockdep.c:5178
 lock_acquire+0x23c/0x724 kernel/locking/lockdep.c:5851
 down_write+0x50/0xc0 kernel/locking/rwsem.c:1577
 inode_lock include/linux/fs.h:877 [inline]
 jfs_fsync+0xa0/0x1d4 fs/jfs/file.c:28
 vfs_fsync_range+0x160/0x19c fs/sync.c:187
 generic_write_sync include/linux/fs.h:2970 [inline]
 dio_complete+0x510/0x6b8 fs/direct-io.c:313
 dio_bio_end_aio+0x488/0x550 fs/direct-io.c:368
 bio_endio+0x840/0x87c block/bio.c:1548
 blk_update_request+0x4ac/0xda0 block/blk-mq.c:983
 blk_mq_end_request+0x54/0x88 block/blk-mq.c:1145
 lo_complete_rq+0x188/0x2f4 drivers/block/loop.c:395
 blk_complete_reqs block/blk-mq.c:1220 [inline]
 blk_done_softirq+0x11c/0x168 block/blk-mq.c:1225
 handle_softirqs+0x320/0xd34 kernel/softirq.c:561
 run_ksoftirqd+0x70/0xc0 kernel/softirq.c:950
 smpboot_thread_fn+0x4b0/0x90c kernel/smpboot.c:164
 kthread+0x65c/0x7b0 kernel/kthread.c:464
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:862
BUG: sleeping function called from invalid context at kernel/locking/rwsem.c:1576
in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 16, name: ksoftirqd/0
preempt_count: 100, expected: 0
RCU nest depth: 0, expected: 0
INFO: lockdep is turned off.
Preemption disabled at:
[<ffff8000803110e4>] softirq_handle_begin kernel/softirq.c:402 [inline]
[<ffff8000803110e4>] handle_softirqs+0xe0/0xd34 kernel/softirq.c:537
CPU: 0 UID: 0 PID: 16 Comm: ksoftirqd/0 Tainted: G        W          6.14.0-rc3-syzkaller-ge6747d19291c #0
Tainted: [W]=WARN
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 12/27/2024
Call trace:
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:466 (C)
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0xe4/0x150 lib/dump_stack.c:120
 dump_stack+0x1c/0x28 lib/dump_stack.c:129
 __might_resched+0x374/0x4d0 kernel/sched/core.c:8767
 __might_sleep+0x90/0xe4 kernel/sched/core.c:8696
 down_write+0x28/0xc0 kernel/locking/rwsem.c:1576
 inode_lock include/linux/fs.h:877 [inline]
 jfs_fsync+0xa0/0x1d4 fs/jfs/file.c:28
 vfs_fsync_range+0x160/0x19c fs/sync.c:187
 generic_write_sync include/linux/fs.h:2970 [inline]
 dio_complete+0x510/0x6b8 fs/direct-io.c:313
 dio_bio_end_aio+0x488/0x550 fs/direct-io.c:368
 bio_endio+0x840/0x87c block/bio.c:1548
 blk_update_request+0x4ac/0xda0 block/blk-mq.c:983
 blk_mq_end_request+0x54/0x88 block/blk-mq.c:1145
 lo_complete_rq+0x188/0x2f4 drivers/block/loop.c:395
 blk_complete_reqs block/blk-mq.c:1220 [inline]
 blk_done_softirq+0x11c/0x168 block/blk-mq.c:1225
 handle_softirqs+0x320/0xd34 kernel/softirq.c:561
 run_ksoftirqd+0x70/0xc0 kernel/softirq.c:950
 smpboot_thread_fn+0x4b0/0x90c kernel/smpboot.c:164
 kthread+0x65c/0x7b0 kernel/kthread.c:464
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:862
BUG: sleeping function called from invalid context at kernel/locking/rwsem.c:1576
in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 16, name: ksoftirqd/0
preempt_count: 100, expected: 0
RCU nest depth: 0, expected: 0
INFO: lockdep is turned off.
Preemption disabled at:
[<ffff8000803110e4>] softirq_handle_begin kernel/softirq.c:402 [inline]
[<ffff8000803110e4>] handle_softirqs+0xe0/0xd34 kernel/softirq.c:537
CPU: 0 UID: 0 PID: 16 Comm: ksoftirqd/0 Tainted: G        W          6.14.0-rc3-syzkaller-ge6747d19291c #0
Tainted: [W]=WARN
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 12/27/2024
Call trace:
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:466 (C)
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0xe4/0x150 lib/dump_stack.c:120
 dump_stack+0x1c/0x28 lib/dump_stack.c:129
 __might_resched+0x374/0x4d0 kernel/sched/core.c:8767
 __might_sleep+0x90/0xe4 kernel/sched/core.c:8696
 down_write+0x28/0xc0 kernel/locking/rwsem.c:1576
 inode_lock include/linux/fs.h:877 [inline]
 jfs_fsync+0xa0/0x1d4 fs/jfs/file.c:28
 vfs_fsync_range+0x160/0x19c fs/sync.c:187
 generic_write_sync include/linux/fs.h:2970 [inline]
 dio_complete+0x510/0x6b8 fs/direct-io.c:313
 dio_bio_end_aio+0x488/0x550 fs/direct-io.c:368
 bio_endio+0x840/0x87c block/bio.c:1548
 blk_update_request+0x4ac/0xda0 block/blk-mq.c:983
 blk_mq_end_request+0x54/0x88 block/blk-mq.c:1145
 lo_complete_rq+0x188/0x2f4 drivers/block/loop.c:395
 blk_complete_reqs block/blk-mq.c:1220 [inline]
 blk_done_softirq+0x11c/0x168 block/blk-mq.c:1225
 handle_softirqs+0x320/0xd34 kernel/softirq.c:561
 run_ksoftirqd+0x70/0xc0 kernel/softirq.c:950
 smpboot_thread_fn+0x4b0/0x90c kernel/smpboot.c:164
 kthread+0x65c/0x7b0 kernel/kthread.c:464
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:862
BUG: sleeping function called from invalid context at kernel/locking/rwsem.c:1576
in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 16, name: ksoftirqd/0
preempt_count: 100, expected: 0
RCU nest depth: 0, expected: 0
INFO: lockdep is turned off.
Preemption disabled at:
[<ffff8000803110e4>] softirq_handle_begin kernel/softirq.c:402 [inline]
[<ffff8000803110e4>] handle_softirqs+0xe0/0xd34 kernel/softirq.c:537
CPU: 0 UID: 0 PID: 16 Comm: ksoftirqd/0 Tainted: G        W          6.14.0-rc3-syzkaller-ge6747d19291c #0
Tainted: [W]=WARN
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 12/27/2024
Call trace:
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:466 (C)
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0xe4/0x150 lib/dump_stack.c:120
 dump_stack+0x1c/0x28 lib/dump_stack.c:129
 __might_resched+0x374/0x4d0 kernel/sched/core.c:8767
 __might_sleep+0x90/0xe4 kernel/sched/core.c:8696
 down_write+0x28/0xc0 kernel/locking/rwsem.c:1576
 inode_lock include/linux/fs.h:877 [inline]
 jfs_fsync+0xa0/0x1d4 fs/jfs/file.c:28
 vfs_fsync_range+0x160/0x19c fs/sync.c:187
 generic_write_sync include/linux/fs.h:2970 [inline]
 dio_complete+0x510/0x6b8 fs/direct-io.c:313
 dio_bio_end_aio+0x488/0x550 fs/direct-io.c:368
 bio_endio+0x840/0x87c block/bio.c:1548
 blk_update_request+0x4ac/0xda0 block/blk-mq.c:983
 blk_mq_end_request+0x54/0x88 block/blk-mq.c:1145
 lo_complete_rq+0x188/0x2f4 drivers/block/loop.c:395
 blk_complete_reqs block/blk-mq.c:1220 [inline]
 blk_done_softirq+0x11c/0x168 block/blk-mq.c:1225
 handle_softirqs+0x320/0xd34 kernel/softirq.c:561
 run_ksoftirqd+0x70/0xc0 kernel/softirq.c:950
 smpboot_thread_fn+0x4b0/0x90c kernel/smpboot.c:164
 kthread+0x65c/0x7b0 kernel/kthread.c:464
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:862
BUG: sleeping function called from invalid context at kernel/locking/rwsem.c:1576
in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 16, name: ksoftirqd/0
preempt_count: 100, expected: 0
RCU nest depth: 0, expected: 0
INFO: lockdep is turned off.
Preemption disabled at:
[<ffff8000803110e4>] softirq_handle_begin kernel/softirq.c:402 [inline]
[<ffff8000803110e4>] handle_softirqs+0xe0/0xd34 kernel/softirq.c:537
CPU: 0 UID: 0 PID: 16 Comm: ksoftirqd/0 Tainted: G        W          6.14.0-rc3-syzkaller-ge6747d19291c #0
Tainted: [W]=WARN
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 12/27/2024
Call trace:
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:466 (C)
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0xe4/0x150 lib/dump_stack.c:120
 dump_stack+0x1c/0x28 lib/dump_stack.c:129
 __might_resched+0x374/0x4d0 kernel/sched/core.c:8767
 __might_sleep+0x90/0xe4 kernel/sched/core.c:8696
 down_write+0x28/0xc0 kernel/locking/rwsem.c:1576
 inode_lock include/linux/fs.h:877 [inline]
 jfs_fsync+0xa0/0x1d4 fs/jfs/file.c:28
 vfs_fsync_range+0x160/0x19c fs/sync.c:187
 generic_write_sync include/linux/fs.h:2970 [inline]
 dio_complete+0x510/0x6b8 fs/direct-io.c:313
 dio_bio_end_aio+0x488/0x550 fs/direct-io.c:368
 bio_endio+0x840/0x87c block/bio.c:1548
 blk_update_request+0x4ac/0xda0 block/blk-mq.c:983
 blk_mq_end_request+0x54/0x88 block/blk-mq.c:1145
 lo_complete_rq+0x188/0x2f4 drivers/block/loop.c:395
 blk_complete_reqs block/blk-mq.c:1220 [inline]
 blk_done_softirq+0x11c/0x168 block/blk-mq.c:1225
 handle_softirqs+0x320/0xd34 kernel/softirq.c:561
 run_ksoftirqd+0x70/0xc0 kernel/softirq.c:950
 smpboot_thread_fn+0x4b0/0x90c kernel/smpboot.c:164
 kthread+0x65c/0x7b0 kernel/kthread.c:464
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:862


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
