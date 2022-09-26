Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFF35EACB4
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Sep 2022 18:38:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ocr7K-00066H-Tw;
	Mon, 26 Sep 2022 16:38:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3JNQxYwkbALMlrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ocr2D-0002gs-KM for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 16:32:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s23SmX4DPK8K98xVQRMtibV5VTt2dCr5aGGI/kcQ0ko=; b=Xb7BDx6YDLrwM7dIuATtg8qybk
 8q4hzPtTtPgERm/kx78BIU1JVsUgjtJT4dq79YrXVCwiTFaIFnKo2QJAru1xd7NVCvMRc8wSMvyyH
 R/UzVGxeqAV6R9wIThvxrtGKv0uzBWMRdIJ1pfyzo9+mNPVmnn3DpMs/ejmjKoGWlq1U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s23SmX4DPK8K98xVQRMtibV5VTt2dCr5aGGI/kcQ0ko=; b=R
 YDVRLk8dQvaTxMxFhLFx9izzjLOVYZPjAXCRsJHkgT85YC3cGAHu1P5TWwljLwLxg4ZawwnJQF5pi
 SIhuLhVCsMW4a4ZKFOPXlImfQh6+t/7Lhu4VFpFBZ5hr8CRyD+06214mWZcOsQW6tQAnP59PfSo7z
 qNzHadjSiu/4wesc=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ocr29-003aCp-Gx for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 16:32:45 +0000
Received: by mail-il1-f200.google.com with SMTP id
 g1-20020a92cda1000000b002f612391d5bso5464468ild.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Sep 2022 09:32:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=s23SmX4DPK8K98xVQRMtibV5VTt2dCr5aGGI/kcQ0ko=;
 b=ab8c85bL/y8bOppJVliWYzuNzdf6WDTpjSc4yuk0QwalEH0BsAYin1DHl5rzKjoQ5K
 PaxBk9/N7Z0qKvhe5hqUp81Q59S27he6RqAR2ULRY4oevU2a4txGM5Xf3Q4hf9IERzuV
 8KdYWcL4TjeM9r5y3GbtbsaDTy/8qOzgX9zZzJfkkU/klQg6jTLZv+D0ByyaIbPRsVWR
 P8YKiQ2atX78qOuObvToa8kDLgtTtskjiiAVE6Vc8UYjtSr6TtY5JHXS0T8ap9Dcv3x7
 H34i+RNtJNpERnELV7k97tZNq0DeD5g2jKHsiufgvOf4JuRshX5SBDDeZWOeGFL9T1xK
 uZOA==
X-Gm-Message-State: ACrzQf1ozyGWouTh4bAAL1CwphWFY/eZXdwpFGf4mXVb5m5YrgTqvvy2
 e2kYH6jCB4NlFyT/ro29f4tEsihr1DWBSe9w9HQXr+t0W15e
X-Google-Smtp-Source: AMsMyM47amV/fN6sUXZQTdQ4UlVRNhOS6wvQ6HTaHjF9nWnF5IuXDlj7JcEj2Y+9t9n/aTE6oPw6B28sOzORfIEXwdiG9VF5uMFw
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:12ca:b0:2f6:5f42:8a1b with SMTP id
 i10-20020a056e0212ca00b002f65f428a1bmr10517434ilm.109.1664209956008; Mon, 26
 Sep 2022 09:32:36 -0700 (PDT)
Date: Mon, 26 Sep 2022 09:32:36 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000427b1a05e997130a@google.com>
From: syzbot <syzbot+9cd47a3d9ebd6776eb03@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 3db61221f4e8
 Merge tag 'io_uring-6.0-2022-09-23' of git://.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1017fb54880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1ocr29-003aCp-Gx
X-Mailman-Approved-At: Mon, 26 Sep 2022 16:38:01 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in diAlloc
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

HEAD commit:    3db61221f4e8 Merge tag 'io_uring-6.0-2022-09-23' of git://..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1017fb54880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c221af36f6d1d811
dashboard link: https://syzkaller.appspot.com/bug?extid=9cd47a3d9ebd6776eb03
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12bbd0d4880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=153195ef080000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9cd47a3d9ebd6776eb03@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 66104
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_imap.c:1357:9
shift exponent 218103809 is too large for 64-bit type 'u64' (aka 'unsigned long long')
CPU: 1 PID: 3607 Comm: syz-executor161 Not tainted 6.0.0-rc6-syzkaller-00291-g3db61221f4e8 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 diAlloc+0x141a/0x1700 fs/jfs/jfs_imap.c:1357
 ialloc+0x8c/0xa80 fs/jfs/jfs_inode.c:56
 jfs_create+0x13a/0xb10 fs/jfs/namei.c:92
 lookup_open fs/namei.c:3413 [inline]
 open_last_lookups fs/namei.c:3481 [inline]
 path_openat+0x12d0/0x2df0 fs/namei.c:3688
 do_filp_open+0x264/0x4f0 fs/namei.c:3718
 do_sys_openat2+0x124/0x4e0 fs/open.c:1313
 do_sys_open fs/open.c:1329 [inline]
 __do_sys_creat fs/open.c:1405 [inline]
 __se_sys_creat fs/open.c:1399 [inline]
 __x64_sys_creat+0x11f/0x160 fs/open.c:1399
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f60b0aa1f09
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc52136898 EFLAGS: 00000246 ORIG_RAX: 0000000000000055
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f60b0aa1f09
RDX: 00007f60b0a60403 RSI: 0000000000000000 RDI: 0000000020000040
RBP: 00007f60b0a616d0 R08: 0000000000000000 R09: 0000000000000000
R10: 00007ffc52136760 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00080000000000fc R15: 0000000000000000
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
