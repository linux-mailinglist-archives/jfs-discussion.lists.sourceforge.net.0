Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB26B5F4501
	for <lists+jfs-discussion@lfdr.de>; Tue,  4 Oct 2022 16:01:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ofiTJ-0007C5-AY;
	Tue, 04 Oct 2022 14:00:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3QvY7YwkbAD8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ofdnQ-0004Q8-ID for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Oct 2022 09:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xqdyea8zNXSLysP69+RS3i6tEiW68qL39ci7tqDECjE=; b=fd6SAPIYocNd244r4o6AeZIeCF
 zhFRF0xZQsOBKLFonuDaWyjBC+huFlzB3FWWwMZm7f3kyrB5X56lUzzceA2dJDtNMaXvErA1cL2DT
 TiJAxoMsvxSa0Q+AcINGAKJKRF1JH6QeOCRYkRU10H8ZzuCrUxwXTVkA1Kl9/doa48fQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xqdyea8zNXSLysP69+RS3i6tEiW68qL39ci7tqDECjE=; b=T
 IriEFJlOL5Wfcvld+2E6e3udL1Vze5B45DWOySph3uEyCCXhqusMAoP5C2MdXsMmKIfFl2u2eqwWw
 oQxbk6qpvLrwO9hUnzufDiaA41/uhDgosv/6lHxfl0nyw7oELDJ5lB210LlqcojUmCpmNEUYR/aV+
 oNTvZzgwNmVKrl5k=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ofdnL-0002O4-K6 for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Oct 2022 09:01:00 +0000
Received: by mail-io1-f70.google.com with SMTP id
 x22-20020a6bda16000000b006a123cb02beso8571325iob.18
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 04 Oct 2022 02:00:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=xqdyea8zNXSLysP69+RS3i6tEiW68qL39ci7tqDECjE=;
 b=Fq1RpzDydKr39wxRiVwExdnpnTwgb12nvuHlxHcGLZxWb8vnoZnAMzRJDFIQuC3q5q
 aYMk8Bvd4yeG6btqtdwqBP+ChFyheIknxVqCDxsxNoUl/2cANEkmgmcAtTZkhKBwEY9+
 c7FX3S2U7MzFCHzQNTDcjm0PP/yAlfX+/KIWnOLxeXs57WInsQ8LVbRXhAQMEgmzoTAH
 XI7YFwgjemwrR86VMVHpW8rVu1lEdJstOYwWLKkwjwmOAizu8tULDl1nLWesvimn8Emg
 T3bRUChQwSYgTuXySPO6rBHK08vl0BwtaSa6eyCs+HvF0G/6WSftJKUO71RxYVDui0G0
 Qbmw==
X-Gm-Message-State: ACrzQf0cIcVG8Zebv+FXM9UYdfZyDQohHyrsdTqu66/RVtQAw0T8sEKy
 tmOWwN4f8HQjFWAcrae8odAt7IthKCrI4xynbobuq3JgER5H
X-Google-Smtp-Source: AMsMyM4YGJ+zb3S6oI8nPoTroSqIQwW7Wk/p/FwFADn70OwBhRL2WxFBz3LwlSNyZLXx/8SKneTYz2WulvuOeLwPHd5ofbV9QXWl
MIME-Version: 1.0
X-Received: by 2002:a05:6638:345b:b0:35a:21be:e7 with SMTP id
 q27-20020a056638345b00b0035a21be00e7mr11855651jav.311.1664874050091; Tue, 04
 Oct 2022 02:00:50 -0700 (PDT)
Date: Tue, 04 Oct 2022 02:00:50 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005a02da05ea31b295@google.com>
From: syzbot <syzbot+8c777e17f74c66068ffa@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: b357fd1c2afc
 Merge tag 'usb-6.0-final' of git://git.kernel.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=114398a2880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
X-Headers-End: 1ofdnL-0002O4-K6
X-Mailman-Approved-At: Tue, 04 Oct 2022 14:00:44 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbSplit
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

HEAD commit:    b357fd1c2afc Merge tag 'usb-6.0-final' of git://git.kernel..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=114398a2880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=8c777e17f74c66068ffa
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=162d1932880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16e43e24880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/c3f38889d41b/disk-b357fd1c.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/8b4dacf1eadb/vmlinux-b357fd1c.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+8c777e17f74c66068ffa@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2606:11
shift exponent 109 is too large for 32-bit type 'int'
CPU: 0 PID: 3606 Comm: syz-executor363 Not tainted 6.0.0-rc7-syzkaller-00239-gb357fd1c2afc #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 dbSplit+0x1e6/0x1f0 fs/jfs/jfs_dmap.c:2606
 dbAllocBits+0x532/0x9c0 fs/jfs/jfs_dmap.c:2158
 dbAllocDmap fs/jfs/jfs_dmap.c:1999 [inline]
 dbAllocNear+0x26a/0x390 fs/jfs/jfs_dmap.c:1228
 dbAlloc+0xa12/0xc90 fs/jfs/jfs_dmap.c:813
 diNewExt+0xaad/0x3e00 fs/jfs/jfs_imap.c:2251
 diAllocExt fs/jfs/jfs_imap.c:1945 [inline]
 diAllocAG+0xc6a/0x1f80 fs/jfs/jfs_imap.c:1662
 diAlloc+0x3dd/0x1700 fs/jfs/jfs_imap.c:1583
 ialloc+0x8c/0xa80 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x141/0xb00 fs/jfs/namei.c:225
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4013
 do_mkdirat+0x279/0x550 fs/namei.c:4038
 __do_sys_mkdir fs/namei.c:4058 [inline]
 __se_sys_mkdir fs/namei.c:4056 [inline]
 __x64_sys_mkdir+0x6a/0x80 fs/namei.c:4056
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f622558edc9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff59147288 EFLAGS: 00000246 ORIG_RAX: 0000000000000053
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f622558edc9
RDX: 00007f622554d2c3 RSI: 0000000000000000 RDI: 00000000200052c0
RBP: 00007f622554e590 R08: 0000555555b3d2c0 R09: 0000000000000000
R10: 00007fff59147150 R11: 0000000000000246 R12: 00000000f8008000
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
