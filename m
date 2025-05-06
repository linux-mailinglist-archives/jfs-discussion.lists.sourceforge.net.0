Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2BDAACC91
	for <lists+jfs-discussion@lfdr.de>; Tue,  6 May 2025 19:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JS6MrmWZnMh7I+xlk+C+vVFZjgCjvmOd8rAue7Tm3to=; b=CDuhYDMe4Zcjj1qSOPyWpBwi4w
	m1p/wNcE6491hg1Zmn8QRDWwl/q1NV2GqbmobQ2LoZnUNGBp4XDERYSX1F8RxT9VitRDD1aDe3Q4Y
	AnOH9MmTaIUyI2qQkIyZ27oUO8lBnQ3ikgEsNWDuiZbEzWSx5cLrBAHaNLU7xIyJLDlU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uCMV6-0005XJ-UB;
	Tue, 06 May 2025 17:54:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3K30ZaAkbANIGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uC8ft-0000Fl-QQ for jfs-discussion@lists.sourceforge.net;
 Tue, 06 May 2025 03:08:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ySaeZmqBXp/ABHo7+Swh6JmkR8RcMmZrCNBCJ5ZUIEw=; b=Rw1C5HnCnQobX2bYLzzux3UvV9
 UK9Jy4qWUj7ZmkRrTrVWyP1gUhICJz0AhYn4hBYV8juqzL0DXM+dF5ZjckJe2N2IPnWgqvddTp4fC
 3quF9fHfFWnllYLB4xNo1eZnYz9OFtFGqgFkhehaSszZXB7MqBeVXbNKJxDhUnil7y0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ySaeZmqBXp/ABHo7+Swh6JmkR8RcMmZrCNBCJ5ZUIEw=; b=b
 Y0VZDfy5bgD4847cd0NuoZR2lJYY8U3nQ8A8FfRidJwduOmmIXlADx9x3sqHArG30fx6dTWF4Sfdo
 6POY2yqh3NqnntKc3wRVmQYc+DCr5kKMI8EI36kOWIF2dBQEOH7J0BLrELCCJlf5Ecy7fH3q/0Z9/
 L8vDR1UM67lMSWYY=;
Received: from mail-il1-f206.google.com ([209.85.166.206])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uC8fe-0003fR-7Y for jfs-discussion@lists.sourceforge.net;
 Tue, 06 May 2025 03:08:53 +0000
Received: by mail-il1-f206.google.com with SMTP id
 e9e14a558f8ab-3d8f1c1ce45so99807405ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 05 May 2025 20:08:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746500907; x=1747105707;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ySaeZmqBXp/ABHo7+Swh6JmkR8RcMmZrCNBCJ5ZUIEw=;
 b=gYzOPj3TkWciBVoOMBKygUBQ0+68ge0CzXWRRLvPeMDtn2fwrNhc5/Puj53LdHLwa/
 IORT4ErY0LrYr+GRjDFUvOi4ijnq/B6mYvJKBt2AqjuBAtUgksdGrU3mjH8gLbYGpQJ7
 u/DVRrSia6mSmOdGn2uZu7CZUcVgSo/mWlaXzaKcwaCSacaqKCZ6OyTDbXsSoDUJKZd9
 aCPTgQM+eZ/KNQEethCT2UNbdF4oFuep7v1UYsj53lHI0m0GtRoUQif+bdjIRh5R9Mul
 bMmxkWeQ8qF6kTrIoE/40Hwt9XOt0PX4OIBc9BTUbTNzmwJcZXlUCr40EIDua/uyQRR2
 h3zw==
X-Gm-Message-State: AOJu0Yym24GYEIw0EhccooX9uHZ9luoWSvx2+HDWIwcGrjAs++D+1yaz
 FINVbFBbqOQSDFoSutZTHGtRkj4wGxujniHqSJXeEoz+vYvFqqnG4qDZw97lCsYbPGGdmmcki5+
 u7X4TXSsAXLxH5W/pJB1fXiWZ008hYWQLAVAnmgW+ikoUTG9uoXXA112BhA==
X-Google-Smtp-Source: AGHT+IHGQmaqGVuos9QBwDdISA5x+O/TZ0V5cyBNQ8AF+mscGrMonDFHsRVlk2XWLDS2oXLitmHvGgh0TFJKh0eVk1hFsW50iSGk
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:b2d:b0:3d4:2306:a875 with SMTP id
 e9e14a558f8ab-3da6cdd7d45mr18806895ab.8.1746500907409; Mon, 05 May 2025
 20:08:27 -0700 (PDT)
Date: Mon, 05 May 2025 20:08:27 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68197d2b.050a0220.23d401.2859.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 02ddfb981de8
 Merge tag 'scsi-fixes' of git://git.kernel.or.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=106abf74580000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.206 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.206 listed in wl.mailspike.net]
X-Headers-End: 1uC8fe-0003fR-7Y
X-Mailman-Approved-At: Tue, 06 May 2025 17:54:39 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KMSAN: uninit-value in
 BT_STACK_DUMP
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
Reply-To: syzbot <syzbot+ba5f49027aace342d24d@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    02ddfb981de8 Merge tag 'scsi-fixes' of git://git.kernel.or..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=106abf74580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=9dc42c34a3f5c357
dashboard link: https://syzkaller.appspot.com/bug?extid=ba5f49027aace342d24d
compiler:       Debian clang version 20.1.2 (++20250402124445+58df0ef89dd6-1~exp1~20250402004600.97), Debian LLD 20.1.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=109589b3980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15ba1f74580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/5ca57f5a3f77/disk-02ddfb98.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/3f23cbc11e68/vmlinux-02ddfb98.xz
kernel image: https://storage.googleapis.com/syzbot-assets/73e63afac354/bzImage-02ddfb98.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/6ef4108d05dc/mount_2.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=169bb02f980000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+ba5f49027aace342d24d@syzkaller.appspotmail.com

bn = 0, index = 0
bn = 0, index = 0
bn = 0, index = 0
bn = 0, index = 0
bn = 0, index = 0
bn = 0, index = 0
bn = 0, index = 0
=====================================================
BUG: KMSAN: uninit-value in BT_STACK_DUMP+0x5e5/0x600 fs/jfs/jfs_btree.h:136
 BT_STACK_DUMP+0x5e5/0x600 fs/jfs/jfs_btree.h:136
 dtSearch+0x393f/0x3d30 fs/jfs/jfs_dtree.c:774
 jfs_lookup+0x179/0x590 fs/jfs/namei.c:1461
 lookup_one_qstr_excl_raw+0x204/0x5b0 fs/namei.c:1689
 lookup_one_qstr_excl fs/namei.c:1711 [inline]
 do_unlinkat+0x2e3/0xe50 fs/namei.c:4631
 __do_sys_unlink fs/namei.c:4689 [inline]
 __se_sys_unlink fs/namei.c:4687 [inline]
 __x64_sys_unlink+0x71/0xb0 fs/namei.c:4687
 x64_sys_call+0x29de/0x3db0 arch/x86/include/generated/asm/syscalls_64.h:88
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xd9/0x1b0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Local variable nd created at:
 __filename_parentat+0x4c/0x990 fs/namei.c:2726
 filename_parentat fs/namei.c:2749 [inline]
 do_unlinkat+0xe3/0xe50 fs/namei.c:4618

CPU: 1 UID: 0 PID: 5791 Comm: syz-executor444 Not tainted 6.15.0-rc3-syzkaller-00094-g02ddfb981de8 #0 PREEMPT(undef) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 04/19/2025
=====================================================


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
