Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42773914F4A
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jun 2024 15:56:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sLkAo-00025C-1W;
	Mon, 24 Jun 2024 13:55:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3De52ZgkbAP4y45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sL2hF-0008Gu-2V for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Jun 2024 15:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KpEGAHLB+8jFjyGGstwW/RZcwRs9r2dzcOSAttjx/oA=; b=QFsIW0kYajjl4CxwCn4BNQUrVB
 6hoH+N/hxhukk4hsF88ekV0DjHO5y+flQMdBRPgs6wftZhHfYCXTIrb1UIE12xDuEbXm1AlzgpAIX
 Ot8TIhkjb90tJf7F+4F+hPwnOCZKI0hM1onj1YbRhKat1S/LeBkS3JAnMV/DGoTxiOcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KpEGAHLB+8jFjyGGstwW/RZcwRs9r2dzcOSAttjx/oA=; b=J
 jXM1gzSV73BxG6+jY0vvHfNR+zWb6yPAU+4PqayfHTcC/N3TLxWBYuPtq33GPZQMl1Ap0y2eETU/9
 ZOdlr/9AVnv8spwovUNDxOBJCC2zZ5S6L1vzt2afK6nDkvMjUrF5nxlI9ufjt0Gb5641wYAZgbKY5
 6zcwl+hHu78ZBc9U=;
Received: from mail-il1-f207.google.com ([209.85.166.207])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sL2hF-0007Ok-8k for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Jun 2024 15:30:33 +0000
Received: by mail-il1-f207.google.com with SMTP id
 e9e14a558f8ab-375d8dbfc25so31007175ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Jun 2024 08:30:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719070222; x=1719675022;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KpEGAHLB+8jFjyGGstwW/RZcwRs9r2dzcOSAttjx/oA=;
 b=hzVjl68Cpv9Vzzrrh6DSaCiqBHzA+0P4xmPazsMWGa4AMQ6fnHxMvmkXeqV3D1BYqX
 Bb3/vhuwiz5AK6NPrpOObk7z43TnYZbN33AMyZEwmOL0Qk+Ed+M7OuCHct2Qiyujv9cD
 DxlGH7E3onSnTYoFDy8N1KssVVurGcOnDPdnryxVQ51pRJ1L3YnNlZiSw7W9+uVyckXr
 WtUIvUve7Oy6SbxRZMKtwec/M42OtLnM5K8JcoQGYAKru5VzlMupl298s0MhCnlQQ6xB
 o3H0+tj/3BgXeHv0WSSt0bCrS4VjiKrr0HMydW2dZVcWy9KtPszr2XZP99VT0vWvljqp
 41/A==
X-Gm-Message-State: AOJu0Yw3hy9C+0qeeGamaUTehxhhxEX3B1A//Ndyf+J22r5cakDTdDrJ
 Ufd29S7gh8/fRGHgLr8k+zx/Puaeh++RZiPTzXsGBzzprx4cB5mftIiwKzjmpIv3Ob2eUmvmn2K
 huNVMM2T88yI6wNKfvQv70nQUcUj+3UAZ738IDa4rHinDuc2Y7WxELOIYlw==
X-Google-Smtp-Source: AGHT+IFeCF/+AiqgAk/3T9ec4f3Lqzt9TcDVB4ib33pINGk0U7M6oqDH0Ci9tGMRkKCun+sXdI6H+1O6dhGy+NyluuteIAJh8tMm
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c05:b0:36c:5c1b:2051 with SMTP id
 e9e14a558f8ab-3763f73e127mr155715ab.6.1719070221787; Sat, 22 Jun 2024
 08:30:21 -0700 (PDT)
Date: Sat, 22 Jun 2024 08:30:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e9f492061b7c395d@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -4.4 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 50736169ecc8
 Merge tag 'for-6.10-rc4-tag' of git://git.ker.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=11d6542a980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (-4.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.207 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.207 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.207 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.166.207 listed in list.dnswl.org]
X-Headers-End: 1sL2hF-0007Ok-8k
X-Mailman-Approved-At: Mon, 24 Jun 2024 13:55:56 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in release_metapage
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
Reply-To: syzbot <syzbot+da0d64d32c4c7c260241@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    50736169ecc8 Merge tag 'for-6.10-rc4-tag' of git://git.ker..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11d6542a980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3f7b9f99610e0e87
dashboard link: https://syzkaller.appspot.com/bug?extid=da0d64d32c4c7c260241
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e84bbefe6d05/disk-50736169.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/cf683a0b0373/vmlinux-50736169.xz
kernel image: https://storage.googleapis.com/syzbot-assets/e7d4bbef078b/bzImage-50736169.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+da0d64d32c4c7c260241@syzkaller.appspotmail.com

INFO: task syz-executor.5:18905 blocked for more than 143 seconds.
      Not tainted 6.10.0-rc4-syzkaller-00148-g50736169ecc8 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor.5  state:D stack:24824 pid:18905 tgid:18889 ppid:16728  flags:0x00004006
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5408 [inline]
 __schedule+0x17e8/0x4a20 kernel/sched/core.c:6745
 __schedule_loop kernel/sched/core.c:6822 [inline]
 schedule+0x14b/0x320 kernel/sched/core.c:6837
 io_schedule+0x8d/0x110 kernel/sched/core.c:9043
 folio_wait_bit_common+0x882/0x12b0 mm/filemap.c:1307
 release_metapage+0x8c/0x870 fs/jfs/jfs_metapage.c:764
 discard_metapage fs/jfs/jfs_metapage.h:88 [inline]
 __get_metapage+0xb1d/0x1050 fs/jfs/jfs_metapage.c:644
 jfs_readdir+0x2945/0x4660 fs/jfs/jfs_dtree.c:3018
 wrap_directory_iterator+0x96/0xe0 fs/readdir.c:67
 iterate_dir+0x660/0x820 fs/readdir.c:110
 __do_sys_getdents fs/readdir.c:326 [inline]
 __se_sys_getdents+0x1ef/0x4d0 fs/readdir.c:311
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fe47c07cf29
RSP: 002b:00007fe47bbff0c8 EFLAGS: 00000246 ORIG_RAX: 000000000000004e
RAX: ffffffffffffffda RBX: 00007fe47c1b4050 RCX: 00007fe47c07cf29
RDX: 00000000000000b8 RSI: 0000000020001fc0 RDI: 0000000000000007
RBP: 00007fe47c0ec074 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 000000000000006e R14: 00007fe47c1b4050 R15: 00007ffeaf0ba1c8
 </TASK>

Showing all locks held in the system:
2 locks held by kworker/u8:0/11:
 #0: ffff888015081148 ((wq_completion)events_unbound){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3206 [inline]
 #0: ffff888015081148 ((wq_completion)events_unbound){+.+.}-{0:0}, at: process_scheduled_works+0x90a/0x1830 kernel/workqueue.c:3312
 #1: ffffc90000107d00 ((work_completion)(&map->work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3207 [inline]
 #1: ffffc90000107d00 ((work_completion)(&map->work)){+.+.}-{0:0}, at: process_scheduled_works+0x945/0x1830 kernel/workqueue.c:3312
1 lock held by khungtaskd/30:
 #0: ffffffff8e333fa0 (rcu_read_lock){....}-{1:2}, at: rcu_lock_acquire include/linux/rcupdate.h:329 [inline]
 #0: ffffffff8e333fa0 (rcu_read_lock){....}-{1:2}, at: rcu_read_lock include/linux/rcupdate.h:781 [inline]
 #0: ffffffff8e333fa0 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x55/0x2a0 kernel/locking/lockdep.c:6614
4 locks held by kworker/u8:7/1063:
2 locks held by getty/4852:
 #0: ffff88802b1770a0 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x25/0x70 drivers/tty/tty_ldisc.c:243
 #1: ffffc90002f062f0 (&ldata->atomic_read_lock){+.+.}-{3:3}, at: n_tty_read+0x6b5/0x1e10 drivers/tty/n_tty.c:2211
3 locks held by syz-executor.4/10317:
3 locks held by syz-executor.1/15396:
3 locks held by kworker/1:8/16877:
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3206 [inline]
 #0: ffff888015078948 ((wq_completion)events){+.+.}-{0:0}, at: process_scheduled_works+0x90a/0x1830 kernel/workqueue.c:3312
 #1: ffffc90009697d00 ((work_completion)(&data->fib_event_work)){+.+.}-{0:0}, at: process_one_work kernel/workqueue.c:3207 [inline]
 #1: ffffc90009697d00 ((work_completion)(&data->fib_event_work)){+.+.}-{0:0}, at: process_scheduled_works+0x945/0x1830 kernel/workqueue.c:3312
 #2: ffff88805ca9e240 (&data->fib_lock){+.+.}-{3:3}, at: nsim_fib_event_work+0x2d1/0x4130 drivers/net/netdevsim/fib.c:1489
2 locks held by syz-executor.5/18905:
 #0: ffff88807ea5b748 (&f->f_pos_lock){+.+.}-{3:3}, at: __fdget_pos+0x24e/0x310 fs/file.c:1191


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
