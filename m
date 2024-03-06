Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2F6873BB4
	for <lists+jfs-discussion@lfdr.de>; Wed,  6 Mar 2024 17:08:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rhtoK-0006HP-Es;
	Wed, 06 Mar 2024 16:08:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3D0zoZQkbAH4u01mcnngtcrrkf.iqqingwugteqpvgpv.eqo@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rhoxi-0004Uq-PC for jfs-discussion@lists.sourceforge.net;
 Wed, 06 Mar 2024 10:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8qXxCetncWmf0GqFMx7p5lJmRGpeOCkuynw+Qj5Z8c0=; b=PcXApkIjz208dcM81kKSxy8Y+O
 aMviKInWW2EdmTgAWYRPUUgloILx892Qi8OdH8ueE78q6T1ZFaMwNi4YJAAMCgMJO+od9ki0mNmZX
 gVnND6uxy9gOYPhh2DZdWYjf0izr4BPYVSsrtmy240q0JlwqHoR4OQiXDCLCbcAkKaOc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8qXxCetncWmf0GqFMx7p5lJmRGpeOCkuynw+Qj5Z8c0=; b=X
 NrGx1mXYsqW0sGj728BiPw8MMGbwZ36nwiyyJoVv7wOz8ZOHCuJnOO7Z/FW6qq7SnRQTtcdRJx2FC
 gAIm0nRMHD1uvH3h7Kj/3WBKq8uWqOVgTPDEa43OoxKQnzW607uBWehUH8G4jRkjC/cG6cmaiVkCl
 hoA3BnD+wp1hK6gY=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rhoxa-0002w1-F4 for jfs-discussion@lists.sourceforge.net;
 Wed, 06 Mar 2024 10:57:26 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7c8440b33b6so96892339f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 06 Mar 2024 02:57:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709722639; x=1710327439;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=8qXxCetncWmf0GqFMx7p5lJmRGpeOCkuynw+Qj5Z8c0=;
 b=QpZgyNK8y8lHLMsenOtq4wc+MihEV3NPsHtRAXghy7hJ2e6II0DEWwf5e/1JuVccuL
 D4p1KjCg7imKJU/cQrVSNSgjh+KVqS6rg603e3pOz1pKAaUJepbb910e9HLZAdtTlyeT
 7D9OeYA2q5R8HxqNBzoDvq+DNc/d6SWtqI/eS4d3lgjVMgmzwYk9LIijlPBgUH10bKhF
 dkueoyCsDQy1gVIwlNczIrV/53RKSJt13KXGDPCeA5ZXqTeZzD9ySq9TyC1gA42CcZl5
 mh83KI7SmmFWgPPaexISrGShEK39eZ6N2g6ywKqGS1VK2NO6yMUfAGL6bOT06eyTbe6Z
 RhtA==
X-Gm-Message-State: AOJu0Yw6hUqyKCU024/AkAfSxNcaukT0GLeKPvdUeinx9XkjAZHBKypR
 jbXZ5/11FeNHPYgcrwvGVRWv+PEfzEMQm1Lix7Ai0c/+pzrN8nN12b/Lp+4S7pBQFNmL15CMpUY
 IZQx+RD+5v+xZnIp66RFmKEB7m1Nw8vjpGDjmGOZculvj7ECt2vfHow5bBA==
X-Google-Smtp-Source: AGHT+IH6YLEGFgRiGIyEjvD7BFJjeOW+RjgB6wkTjfNiPoIvfnN6/JBkaHbXIRzGSOOU+E5tyT9m6Q7Yz4Hx6VF9w13dlbTQP5tN
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3784:b0:474:d7bf:64ed with SMTP id
 w4-20020a056638378400b00474d7bf64edmr706584jal.6.1709722639017; Wed, 06 Mar
 2024 02:57:19 -0800 (PST)
Date: Wed, 06 Mar 2024 02:57:19 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000009033c40612fbd20f@google.com>
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
 syzbot found the following issue on: HEAD commit: 9910665503b3
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhoxa-0002w1-F4
X-Mailman-Approved-At: Wed, 06 Mar 2024 16:08:03 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in __get_metapage
 (2)
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
Reply-To: syzbot <syzbot+72feb48a17265d9bf496@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    9910665503b3 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=12413316180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2402d46ab3c7e581
dashboard link: https://syzkaller.appspot.com/bug?extid=72feb48a17265d9bf496
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=129fb526180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12c40bba180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/16059f53446c/disk-99106655.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/7fc6c7c495d5/vmlinux-99106655.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d8b0ce53ea33/Image-99106655.gz.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/1d3700eeba9f/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+72feb48a17265d9bf496@syzkaller.appspotmail.com

INFO: task jfsCommit:94 blocked for more than 143 seconds.
      Not tainted 6.8.0-rc6-syzkaller-g9910665503b3 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:jfsCommit       state:D stack:0     pid:94    tgid:94    ppid:2      flags:0x00000008
Call trace:
 __switch_to+0x314/0x560 arch/arm64/kernel/process.c:553
 context_switch kernel/sched/core.c:5400 [inline]
 __schedule+0x1498/0x24b4 kernel/sched/core.c:6727
 __schedule_loop kernel/sched/core.c:6802 [inline]
 schedule+0xb8/0x19c kernel/sched/core.c:6817
 io_schedule+0x8c/0x12c kernel/sched/core.c:9023
 __lock_metapage+0x1cc/0x458 fs/jfs/jfs_metapage.c:50
 lock_metapage fs/jfs/jfs_metapage.c:64 [inline]
 __get_metapage+0x96c/0x1050 fs/jfs/jfs_metapage.c:639
 diIAGRead+0xe4/0x14c fs/jfs/jfs_imap.c:2669
 diFree+0x800/0x2648 fs/jfs/jfs_imap.c:956
 jfs_evict_inode+0x2d0/0x3f4 fs/jfs/inode.c:156
 evict+0x260/0x68c fs/inode.c:665
 iput_final fs/inode.c:1739 [inline]
 iput+0x734/0x818 fs/inode.c:1765
 txUpdateMap+0x73c/0x8e4 fs/jfs/jfs_txnmgr.c:2367
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x3a4/0x98c fs/jfs/jfs_txnmgr.c:2733
 kthread+0x288/0x310 kernel/kthread.c:388
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:860

Showing all locks held in the system:
1 lock held by khungtaskd/29:
 #0: ffff80008ee73f40 (rcu_read_lock){....}-{1:2}, at: rcu_lock_acquire+0xc/0x44 include/linux/rcupdate.h:297
2 locks held by jfsCommit/94:
 #0: ffff0000d8558920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diFree+0x2cc/0x2648 fs/jfs/jfs_imap.c:886
 #1: ffff0000ddd3a638 (&jfs_ip->rdwrlock/1){.+.+}-{3:3}, at: diFree+0x2e0/0x2648 fs/jfs/jfs_imap.c:891
2 locks held by getty/5932:
 #0: ffff0000d35540a0 (&tty->ldisc_sem){++++}-{0:0}, at: ldsem_down_read+0x3c/0x4c drivers/tty/tty_ldsem.c:340
 #1: ffff800094f722f0 (&ldata->atomic_read_lock){+.+.}-{3:3}, at: n_tty_read+0x41c/0x1228 drivers/tty/n_tty.c:2201
3 locks held by syz-executor149/7710:

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
