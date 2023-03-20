Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC586C3681
	for <lists+jfs-discussion@lfdr.de>; Tue, 21 Mar 2023 17:03:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1peeRy-0006w7-Cr;
	Tue, 21 Mar 2023 16:03:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <38LMYZAkbAOEVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1peLBh-0002W5-Fa for jfs-discussion@lists.sourceforge.net;
 Mon, 20 Mar 2023 19:28:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=twO0cBgqHVuadLiEtqwEUyKk2bd1+BbcRIByatF2Y98=; b=GpvXHx5vWnE22Db/J2ZtrtVPEj
 /IpewvHFdwCIFsDvZgZP/RmUYz/pRg9V05qSztm6x6/O64q3EGpGq4r8eEiSy6R0pu67+SYbmte7P
 OVixEWShaobcSzVfCSwAsB/DDW9by22Jed+vhcIPQKBbwsQRfFFNAR72KX9dDG0Usyvs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=twO0cBgqHVuadLiEtqwEUyKk2bd1+BbcRIByatF2Y98=; b=K
 l+zuUs589hL8O0ALxhnccg+U33A99/Vyw5959801RxCk5yZunmIyX/hk706TmpK3YvZpGoDDyoQXO
 iRhRAZWguMeAa+F2rJpqAnRQPH0KPU4txsjt20DwahdEyv62PMDDK0+SVtTsfOfF36Nb9sFX9UXwl
 d0w5eiYXeUnN4yA0=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1peLBe-0003No-Ez for jfs-discussion@lists.sourceforge.net;
 Mon, 20 Mar 2023 19:28:58 +0000
Received: by mail-il1-f200.google.com with SMTP id
 l1-20020a056e021c0100b003180af2a284so6675438ilh.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 20 Mar 2023 12:28:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679340529;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=twO0cBgqHVuadLiEtqwEUyKk2bd1+BbcRIByatF2Y98=;
 b=fc/mCI2YRYIQFYn5KHvewfdd7z6y8GX+slCGJz+/t72XHOecJOjgGwi8YXH9XM2mjW
 nSOVUZa1iV+rQnsLe0IApSceDXQQ7vtfcwpXgQi2tM1E8VndujmRL0VS5udX5rRPQ6bf
 2TXCy8cR86jZqc8ozC5KWCKLd+sdnP9MW7uNfcMRe28KFxbvRa2iPmNlBHn9qbhHGASK
 qSz9DlXORLgfURy/iO+7o9V7a6TUYO3HPHgLOTCQ6+mL5EUqKrgrN7ggIOpgm0g+4c7L
 8QZeS+fg8/DhfZnHulUIiQ+lEhZFcDQCAi5VtbP1bpwP9gd8nXd+OX+V6+Pfy4rIapk3
 Usww==
X-Gm-Message-State: AO0yUKUd3hY5f4NXFw81tB3DUTn0LKbY3K3+JJPAyVfEiu9djIt4rNkY
 KEZF3vljAqCvEMBZZlpSwCpH1dKSqUAQLebhaEuX+n1avy5Fvzs=
X-Google-Smtp-Source: AK7set+iH8yfyr5kAlbGh7l8msoSzx8Xt30vZFsOBN5uDeZYu2R+lEcdKLa+MW5d2J+F/gkxELLSa/C7VX9aoMMfCqDkgXX2cSTF
MIME-Version: 1.0
X-Received: by 2002:a02:2a04:0:b0:3c4:88e7:14cf with SMTP id
 w4-20020a022a04000000b003c488e714cfmr442022jaw.1.1679340528905; Mon, 20 Mar
 2023 12:28:48 -0700 (PDT)
Date: Mon, 20 Mar 2023 12:28:48 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000aec88d05f759ef57@google.com>
From: syzbot <syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 0ddc84d2dd43
 Merge tag 'for-linus' of git://git.kernel.org.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=17f30826c80000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1peLBe-0003No-Ez
X-Mailman-Approved-At: Tue, 21 Mar 2023 16:02:57 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbFree
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

HEAD commit:    0ddc84d2dd43 Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=17f30826c80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=dbab9019ad6fc418
dashboard link: https://syzkaller.appspot.com/bug?extid=d2cd27dcf8e04b232eb2
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1211504ac80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1447df1ac80000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f1aef650a28e/disk-0ddc84d2.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ab9d7540bffe/vmlinux-0ddc84d2.xz
kernel image: https://storage.googleapis.com/syzbot-assets/cf0758e28298/bzImage-0ddc84d2.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/bd86262b7da2/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com

         option from the mount to silence this warning.
=======================================================
find_entry called with index = 0
read_mapping_page failed!
ERROR: (device loop0): txCommit: 
ERROR: (device loop0): remounting filesystem as read-only
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:381:12
shift exponent 134217736 is too large for 64-bit type 'long long'
CPU: 1 PID: 5068 Comm: syz-executor350 Not tainted 6.3.0-rc2-syzkaller-00069-g0ddc84d2dd43 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/02/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c3/0x420 lib/ubsan.c:387
 dbFree+0x46e/0x650 fs/jfs/jfs_dmap.c:381
 txFreeMap+0x96a/0xd50 fs/jfs/jfs_txnmgr.c:2510
 xtTruncate+0xe5c/0x3260 fs/jfs/jfs_xtree.c:2467
 jfs_free_zero_link+0x46e/0x6e0 fs/jfs/namei.c:758
 jfs_evict_inode+0x35f/0x440 fs/jfs/inode.c:153
 evict+0x2a4/0x620 fs/inode.c:665
 __dentry_kill+0x436/0x650 fs/dcache.c:607
 shrink_dentry_list+0x39c/0x6a0 fs/dcache.c:1201
 shrink_dcache_parent+0xcd/0x480
 do_one_tree+0x23/0xe0 fs/dcache.c:1682
 shrink_dcache_for_umount+0x7d/0x120 fs/dcache.c:1699
 generic_shutdown_super+0x67/0x340 fs/super.c:472
 kill_block_super+0x7e/0xe0 fs/super.c:1398
 deactivate_locked_super+0xa4/0x110 fs/super.c:331
 cleanup_mnt+0x426/0x4c0 fs/namespace.c:1177
 task_work_run+0x24a/0x300 kernel/task_work.c:179
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0x68f/0x2290 kernel/exit.c:869
 do_group_exit+0x206/0x2c0 kernel/exit.c:1019
 __do_sys_exit_group kernel/exit.c:1030 [inline]
 __se_sys_exit_group kernel/exit.c:1028 [inline]
 __x64_sys_exit_group+0x3f/0x40 kernel/exit.c:1028
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fa87e2289b9
Code: Unable to access opcode bytes at 0x7fa87e22898f.
RSP: 002b:00007fff4bfe3938 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
RAX: ffffffffffffffda RBX: 00007fa87e2a3330 RCX: 00007fa87e2289b9
RDX: 000000000000003c RSI: 00000000000000e7 RDI: 0000000000000001
RBP: 0000000000000001 R08: ffffffffffffffc0 R09: 00007fa87e29de40
R10: 00007fff4bfe3850 R11: 0000000000000246 R12: 00007fa87e2a3330
R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
 </TASK>
================================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
