Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DE297A7FC
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Sep 2024 21:53:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sqHmt-0002fx-Ng;
	Mon, 16 Sep 2024 19:53:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3gSDnZgkbAJwOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sptX5-0008Pn-SS for jfs-discussion@lists.sourceforge.net;
 Sun, 15 Sep 2024 17:59:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9Ytc8D5+w/wtl5BV7+3EPGFd5TX+8Aok77VMpyqa1MM=; b=PVnz6IwCFAFwtMoCg5U9hk848c
 uSumSL+FDtaHeyp9b05Sl8S76VhPmqXLORcVCpDU0qfCUEu9m3ybGh2KEshoTWPcKrPLsL2i106+w
 dOtpgiPbIqXUqYZm/VdPqz3GibABaJD2kKJJQsFNnl++p3WG2e4+SGYZLshFhoCUQEBg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9Ytc8D5+w/wtl5BV7+3EPGFd5TX+8Aok77VMpyqa1MM=; b=i
 kvoxD4UJfTXlVYhFTe2OcIrOZ+RnylBLClkK40XSwqV1C+pXbbyvlnnomi1+TrjPH6nLPy4OH4MyK
 OYuCyoP/HB1NQWjdel8O7z8NptxhAQq2oI4Cz/mIOXMtgcPVa2OuiIQyJ6JhYdP0dZ9lL1SX1HbuW
 gia2rgoBDMXUjnUQ=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sptX5-0002SB-OV for jfs-discussion@lists.sourceforge.net;
 Sun, 15 Sep 2024 17:59:36 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-3a08d90c938so62627755ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 15 Sep 2024 10:59:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726423170; x=1727027970;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9Ytc8D5+w/wtl5BV7+3EPGFd5TX+8Aok77VMpyqa1MM=;
 b=ObgpRMSmUffhEpvRqcilw20xt9GxJobCEdfvDmi9kFOkfyv4OeVtRfi2Mn2j0v42GR
 ttaDP5DVlfcbFmqSgA9MsBQkVcmT1BWRL7QPKNkmREd3PlthkKDBP/nRbGetry8mm9Cd
 2mVasJxRPLrITMxp1n0YAQQm65FEVlPcKlES4WHvLlx2jmZHTyzIhXjGo47hq6L+9MRx
 GOZWB9vyHko1Ooq8yyr3E92IhabizgK0LeBs4hQXSTS2XGkpuMBi6/PEZRtDRhXXnqrb
 RREiKHKPuU9tsKX3wQWyZv9Mf0ZKjYVRL6mf9qcUXwTuWT49EB2HdnSyPrDzCjiEzO93
 POtg==
X-Gm-Message-State: AOJu0YzWm7wIW3etxkObzDZH3eI5Db6g6hIZ2bLyxkgrpldxxv4K/Rfu
 gmNTL2dcIqOJSy6YiGMIDDurkPMZNGy/dbO0yR+5bCjq3zCrk1HhQqhrhDU7N7DXwNeiXlORToI
 epyntLhBpAiirjjBWY5tYtUWKuFxBlva/Ectvg8SKW/BcPwzHqsmJGK8=
X-Google-Smtp-Source: AGHT+IGH0tBFUzC4AkBBPaMLAIqXzAxgTQ7wfO8husem8wDFYPI1r2EM6ekcj5CSCha3TOgQ91XzRxZB7pN6TCiXF9IYzY/mk/4Z
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:216a:b0:3a0:a08a:a0d3 with SMTP id
 e9e14a558f8ab-3a0a08aa209mr12566655ab.18.1726423169855; Sun, 15 Sep 2024
 10:59:29 -0700 (PDT)
Date: Sun, 15 Sep 2024 10:59:29 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c58c6f06222c3744@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: df54f4a16f82
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
X-Headers-End: 1sptX5-0002SB-OV
X-Mailman-Approved-At: Mon, 16 Sep 2024 19:53:30 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in dbBackSplit
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
Reply-To: syzbot <syzbot+af0d2605ff1908d60ca9@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    df54f4a16f82 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=15f1a200580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=dde5a5ba8d41ee9e
dashboard link: https://syzkaller.appspot.com/bug?extid=af0d2605ff1908d60ca9
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/aa2eb06e0aea/disk-df54f4a1.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/14728733d385/vmlinux-df54f4a1.xz
kernel image: https://storage.googleapis.com/syzbot-assets/99816271407d/Image-df54f4a1.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+af0d2605ff1908d60ca9@syzkaller.appspotmail.com

read_mapping_page failed!
read_mapping_page failed!
BUG at fs/jfs/jfs_dmap.c:2700 assert(leaf[leafno] == NOFREE)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_dmap.c:2700!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 UID: 0 PID: 6540 Comm: syz.0.10 Not tainted 6.11.0-rc5-syzkaller-gdf54f4a16f82 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/06/2024
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : dbBackSplit+0x50c/0x510 fs/jfs/jfs_dmap.c:2700
lr : dbBackSplit+0x50c/0x510 fs/jfs/jfs_dmap.c:2700
sp : ffff80009b097910
x29: ffff80009b097940 x28: dfff800000000000 x27: 0000000000000074
x26: 0000000000000000 x25: 1fffe0001a90ac1d x24: 00000000000000ff
x23: 0000000000000006 x22: ffff0000d4856076 x21: 0000000000000055
x20: ffff0000d4856010 x19: ffff0000d48560ea x18: 0000000000000008
x17: 0000000000000000 x16: ffff80008b22c470 x15: ffff700011eb116c
x14: 1ffff00011eb116c x13: 0000000000000004 x12: ffffffffffffffff
x11: 0000000000040000 x10: 000000000003ffff
 x9 : 66d0280209d6ee00
x8 : 66d0280209d6ee00 x7 : 0000000000000001 x6 : 0000000000000001
x5 : ffff80009b097078 x4 : ffff80008f5fb200 x3 : ffff800080381c08
x2 : 0000000000000000 x1 : 0000000100000000 x0 : 000000000000003c
Call trace:
 dbBackSplit+0x50c/0x510 fs/jfs/jfs_dmap.c:2700
 dbFreeDmap fs/jfs/jfs_dmap.c:2108 [inline]
 dbFree+0x498/0x5b0 fs/jfs/jfs_dmap.c:409
 dbDiscardAG+0x604/0x748 fs/jfs/jfs_dmap.c:1650
 jfs_ioc_trim+0x3cc/0x5d8 fs/jfs/jfs_discard.c:100
 jfs_ioctl+0x338/0x550 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:907 [inline]
 __se_sys_ioctl fs/ioctl.c:893 [inline]
 __arm64_sys_ioctl+0x14c/0x1c8 fs/ioctl.c:893
 __invoke_syscall arch/arm64/kernel/syscall.c:35 [inline]
 invoke_syscall+0x98/0x2b8 arch/arm64/kernel/syscall.c:49
 el0_svc_common+0x130/0x23c arch/arm64/kernel/syscall.c:132
 do_el0_svc+0x48/0x58 arch/arm64/kernel/syscall.c:151
 el0_svc+0x54/0x168 arch/arm64/kernel/entry-common.c:712
 el0t_64_sync_handler+0x84/0xfc arch/arm64/kernel/entry-common.c:730
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:598
Code: d004e9a3 91128063 52815182 9592231d (d4210000) 
---[ end trace 0000000000000000 ]---


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
