Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF41CC387E
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Dec 2025 15:23:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=nQH0Ik2UaxnYsYc2g4Y361PmdIKbSYdvY0/xig6sQA8=; b=Sfc2WWee/fvDfHCiwOoBMsJ4Ox
	VZJrEr+dzOiJFldlI98Kbtq8PtFKkccnECl7AhNzDbQylqNfqEhdWN4YXp4fetRWd/CSo9xvemhmS
	NO2zMIlvYEqRqDQ2njxTsGA1J6yMHIUJ8pra4oShw6XkK2XVaUJG6VmmvpF/aHWWRXK0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vVVx8-0008Rb-K9;
	Tue, 16 Dec 2025 14:23:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3N15BaQkbAEo4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vVVZJ-0007dj-7u for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Dec 2025 13:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Message-ID:
 In-Reply-To:Date:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hYjRJJ506ddvMksrKA9PPxHuYdIJ/nrBSLgKkw4pfW8=; b=XxlHXei+hcShZAiieJW1dqPilq
 cpkcL7h3Y8XeEOLOJ6kGGn5jNEeS36H3AWcjg47fwVHiJZsGAZExaSc7UT9pRYgDHyeokPl6UsyqU
 6TnNoDv/HVoNEB+8ZjfFbjFK177KF6jaU7KKjWgXNQN6CbrFhCJDzEYVbaofBCDERmXw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hYjRJJ506ddvMksrKA9PPxHuYdIJ/nrBSLgKkw4pfW8=; b=N
 CRhvbvNOXdwLoMLgAZJw7r3XXQyXtlx3upTf7HZ3N9XjKaZUMRJaEwSJzfvzPwOYk1xY6gDEwXzzu
 iH+a22VnMQeg5dAta5MPzUxsAlfQOG68kZ0Uzg/LgprhuLWoI1PEavDecIOUkTlLQoZOJ9aDQ3CYi
 dnJvU+4czoqr/514=;
Received: from mail-pj1-f70.google.com ([209.85.216.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vVVZI-0007PR-Eh for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Dec 2025 13:58:24 +0000
Received: by mail-pj1-f70.google.com with SMTP id
 98e67ed59e1d1-34abd303b4aso13477000a91.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 16 Dec 2025 05:58:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765893499; x=1766498299;
 h=cc:to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hYjRJJ506ddvMksrKA9PPxHuYdIJ/nrBSLgKkw4pfW8=;
 b=q4fLh5c6sCwUlnmPbIpLa1y4WH4HWgLwPtBrurHxdouE5k5XvLabynwvRV8WTqiE2C
 u0I+i4S/xtshzqE9pAWlbIFgUTp1ui4Gd7a+boRK1HDAI0I6e+7AIMnj88Z9lq4NfA69
 4fH2RCDf4eIBvRFmOZRjqM0/BVViUbehTAwpmWeXKyNfEtckHQSXanwY1HqUxrzKJWFE
 EIQppjr96k+OUB5ZkCW8Y1Dj81w0Rwfuw4xjHvjQD7ARH1OCvb5jXPUM1fk40kB+C4aG
 Dk4Kyu1WPhapFyNfzavaHc1x+Cx6Ny4E6oDwWGx4Dx7KNA10MZLzb04X3B+OkzSJwUGJ
 vUhQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXuz760awEb6rhCM3elnb9jW2DEDOvihT2fOiNJntm4vq+fSmVse3oyCJCr11MNWjBCDzBwiImhfro6jWWI6w==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwTwpmOZ8WwX3Y7gKVc3gkJ2XaX6tx/pUt+FBAUAWYCjhBz++mh
 4eo2vaHY44aG4KiG//zN61rEszJD2fqRdOpuDrBSQZlq0yHSFoqq1TWXQIFWuH2ox0CVyeqr432
 e+k/aq9WOu0afxrKE2+TFHNewK/of/ntRtTV6lIOx4idURW/qk8rV/S69SqQ=
X-Google-Smtp-Source: AGHT+IGVYKQeVf2Px4ZQSbykhTj6MuQM6T464vSt503ztlv8bUnmvZ6VNHvqaaoFAgpsTdU5EBMo1FemPHrfipq7VLzs2egYbmG8
MIME-Version: 1.0
X-Received: by 2002:a05:6808:14c8:b0:441:ca0e:f5ab with SMTP id
 5614622812f47-455ac9d900dmr6412826b6e.65.1765891639491; Tue, 16 Dec 2025
 05:27:19 -0800 (PST)
Date: Tue, 16 Dec 2025 05:27:19 -0800
In-Reply-To: <tencent_2AC2ECAACC587B4E6C342D096F909424E90A@qq.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69415e37.050a0220.1ff09b.001d.GAE@google.com>
To: axboe@kernel.dk, eadavis@qq.com, jfs-discussion@lists.sourceforge.net, 
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzbot@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot ci has tested the following series [v1] jfs: Extend
 the done of the window period
 https://lore.kernel.org/all/tencent_2AC2ECAACC587B4E6C342D096F909424E90A@qq.com
 * [PATCH] jfs: Extend the done of the window period 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.70 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vVVZI-0007PR-Eh
X-Mailman-Approved-At: Tue, 16 Dec 2025 14:23:01 +0000
Subject: [Jfs-discussion] [syzbot ci] Re: jfs: Extend the done of the window
 period
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
From: syzbot ci via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot ci <syzbot+ci1f1a4e9c887bc6ea@syzkaller.appspotmail.com>
Cc: syzbot@lists.linux.dev, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot ci has tested the following series

[v1] jfs: Extend the done of the window period
https://lore.kernel.org/all/tencent_2AC2ECAACC587B4E6C342D096F909424E90A@qq.com
* [PATCH] jfs: Extend the done of the window period

and found the following issue:
possible deadlock in lbmIODone

Full report is available here:
https://ci.syzbot.org/series/49387e77-608d-493c-9978-8d1e9ab79507

***

possible deadlock in lbmIODone

tree:      torvalds
URL:       https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux
base:      d358e5254674b70f34c847715ca509e46eb81e6f
arch:      amd64
compiler:  Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
config:    https://ci.syzbot.org/builds/802e00bf-1926-4ea9-a853-4f01d10a4a6e/config
C repro:   https://ci.syzbot.org/findings/784b824b-3582-4c98-a807-ff28792ecaac/c_repro
syz repro: https://ci.syzbot.org/findings/784b824b-3582-4c98-a807-ff28792ecaac/syz_repro

======================================================
WARNING: possible circular locking dependency detected
syzkaller #0 Not tainted
------------------------------------------------------
ksoftirqd/0/15 is trying to acquire lock:
ffff888112c1f9e8 (&(log)->gclock){..-.}-{3:3}, at: lmPostGC fs/jfs/jfs_logmgr.c:810 [inline]
ffff888112c1f9e8 (&(log)->gclock){..-.}-{3:3}, at: lbmIODone+0x681/0x17b0 fs/jfs/jfs_logmgr.c:2284

but task is already holding lock:
ffffffff8e396158 (jfsLCacheLock){..-.}-{3:3}, at: lbmIODone+0x92/0x17b0 fs/jfs/jfs_logmgr.c:2181

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (jfsLCacheLock){..-.}-{3:3}:
       __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:110 [inline]
       _raw_spin_lock_irqsave+0xa7/0xf0 kernel/locking/spinlock.c:162
       lbmWrite+0x115/0x490 fs/jfs/jfs_logmgr.c:2022
       lmGCwrite fs/jfs/jfs_logmgr.c:-1 [inline]
       lmGroupCommit+0x570/0xb30 fs/jfs/jfs_logmgr.c:687
       txCommit+0x4940/0x5430 fs/jfs/jfs_txnmgr.c:1305
       diNewIAG fs/jfs/jfs_imap.c:2592 [inline]
       diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
       diAllocAG+0x1770/0x1df0 fs/jfs/jfs_imap.c:1669
       diAlloc+0x1d5/0x1680 fs/jfs/jfs_imap.c:1590
       ialloc+0x8c/0x8f0 fs/jfs/jfs_inode.c:56
       jfs_mkdir+0x193/0xa70 fs/jfs/namei.c:225
       vfs_mkdir+0x512/0x5b0 fs/namei.c:5130
       do_mkdirat+0x276/0x4b0 fs/namei.c:5164
       __do_sys_mkdirat fs/namei.c:5186 [inline]
       __se_sys_mkdirat fs/namei.c:5184 [inline]
       __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:5184
       do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
       do_syscall_64+0xfa/0xf80 arch/x86/entry/syscall_64.c:94
       entry_SYSCALL_64_after_hwframe+0x77/0x7f

-> #0 (&(log)->gclock){..-.}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:3165 [inline]
       check_prevs_add kernel/locking/lockdep.c:3284 [inline]
       validate_chain kernel/locking/lockdep.c:3908 [inline]
       __lock_acquire+0x15a6/0x2cf0 kernel/locking/lockdep.c:5237
       lock_acquire+0x117/0x340 kernel/locking/lockdep.c:5868
       __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:110 [inline]
       _raw_spin_lock_irqsave+0xa7/0xf0 kernel/locking/spinlock.c:162
       lmPostGC fs/jfs/jfs_logmgr.c:810 [inline]
       lbmIODone+0x681/0x17b0 fs/jfs/jfs_logmgr.c:2284
       blk_update_request+0x57e/0xe60 block/blk-mq.c:1007
       blk_mq_end_request+0x3e/0x70 block/blk-mq.c:1169
       blk_complete_reqs block/blk-mq.c:1244 [inline]
       blk_done_softirq+0x10a/0x160 block/blk-mq.c:1249
       handle_softirqs+0x27d/0x850 kernel/softirq.c:622
       run_ksoftirqd+0x9b/0x100 kernel/softirq.c:1063
       smpboot_thread_fn+0x542/0xa60 kernel/smpboot.c:160
       kthread+0x711/0x8a0 kernel/kthread.c:463
       ret_from_fork+0x599/0xb30 arch/x86/kernel/process.c:158
       ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:246

other info that might help us debug this:

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(jfsLCacheLock);
                               lock(&(log)->gclock);
                               lock(jfsLCacheLock);
  lock(&(log)->gclock);

 *** DEADLOCK ***

1 lock held by ksoftirqd/0/15:
 #0: ffffffff8e396158 (jfsLCacheLock){..-.}-{3:3}, at: lbmIODone+0x92/0x17b0 fs/jfs/jfs_logmgr.c:2181

stack backtrace:
CPU: 0 UID: 0 PID: 15 Comm: ksoftirqd/0 Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.2-debian-1.16.2-1 04/01/2014
Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 print_circular_bug+0x2e2/0x300 kernel/locking/lockdep.c:2043
 check_noncircular+0x12e/0x150 kernel/locking/lockdep.c:2175
 check_prev_add kernel/locking/lockdep.c:3165 [inline]
 check_prevs_add kernel/locking/lockdep.c:3284 [inline]
 validate_chain kernel/locking/lockdep.c:3908 [inline]
 __lock_acquire+0x15a6/0x2cf0 kernel/locking/lockdep.c:5237
 lock_acquire+0x117/0x340 kernel/locking/lockdep.c:5868
 __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:110 [inline]
 _raw_spin_lock_irqsave+0xa7/0xf0 kernel/locking/spinlock.c:162
 lmPostGC fs/jfs/jfs_logmgr.c:810 [inline]
 lbmIODone+0x681/0x17b0 fs/jfs/jfs_logmgr.c:2284
 blk_update_request+0x57e/0xe60 block/blk-mq.c:1007
 blk_mq_end_request+0x3e/0x70 block/blk-mq.c:1169
 blk_complete_reqs block/blk-mq.c:1244 [inline]
 blk_done_softirq+0x10a/0x160 block/blk-mq.c:1249
 handle_softirqs+0x27d/0x850 kernel/softirq.c:622
 run_ksoftirqd+0x9b/0x100 kernel/softirq.c:1063
 smpboot_thread_fn+0x542/0xa60 kernel/smpboot.c:160
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x599/0xb30 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:246
 </TASK>


***

If these findings have caused you to resend the series or submit a
separate fix, please add the following tag to your commit message:
  Tested-by: syzbot@syzkaller.appspotmail.com

---
This report is generated by a bot. It may contain errors.
syzbot ci engineers can be reached at syzkaller@googlegroups.com.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
