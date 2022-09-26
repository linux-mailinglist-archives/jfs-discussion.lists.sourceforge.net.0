Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A23085EACB3
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Sep 2022 18:38:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ocr7K-00066D-J3;
	Mon, 26 Sep 2022 16:38:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3JNQxYwkbALMlrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ocr1x-0007SB-RC for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 16:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SnmW4R5j0gd8mDlttiP+7GRmDtgLcgBlixwqFWgdFuo=; b=OKniuFkq/JHMZFvowyNWleJo55
 b4kiAgMg8h/tHnTtaZ0u6F3tAgVJAzYHP/MkRomHoGiM6NQ+xLnzksi1V0ngzt/GZDeW+indbTMc/
 5T77jJIo7LLeTtlDgr7fZ10b/yeTSzdXuKL/1dOUNWnGugnVYyNoJw95Nx3rUJqjkyDw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SnmW4R5j0gd8mDlttiP+7GRmDtgLcgBlixwqFWgdFuo=; b=B
 G0HOEUB38Opazq4h//oWax1JAsFWJluyTUMYX+l55WgZUovK8T64l7qVgzXdYuUDcj4Txo/WLMCUN
 0QFfoyp+HTBzTJmfhdOku2yN+SlQT2QSgzzG/jzAlvtIWm8+nGPtSWsmIeXZdVBzmyhCfLyZuzNGg
 Jf25qwpdJ998/iSc=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ocr29-003aCq-RJ for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 16:32:42 +0000
Received: by mail-io1-f71.google.com with SMTP id
 n16-20020a6b5910000000b006a3570db9a5so4189706iob.23
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Sep 2022 09:32:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=SnmW4R5j0gd8mDlttiP+7GRmDtgLcgBlixwqFWgdFuo=;
 b=bkxwatX41ZMVLKaRqQ/1A0mPgRgFveeoc9qzaLnciWPAoTGjFJ503tTpxOIEOco+hK
 edCWTJ4wiN0+HH0SZvNjKDjBEQ1di7/tcHSm+S9WUJMGmta7cPS4uhl048VmDsCADron
 qNpE9Dp+V7+0TmVoX//a+TYh1hfpsRB/P4HBbyhKR+tyU8zmS0x6Iq1R6/g8wLNKVd4w
 VzwsRNe5jjWD3htjzkr2iO5ivj85YmPXSQrGTXQHdChhJwzUI4kWNJCxai5qVedupph2
 79ypYsGlfRntnvr4FOjnMRBIEQoryFG/s4crk2Xgvk8v/Ib0HDaPmCXMZD89l7hBu6G4
 LNTA==
X-Gm-Message-State: ACrzQf2Lrxj+kNBoRRXQ22agsDNJC2xJYbNTijqpF12BLVlf7HPY4yHj
 pcanVhrh21TvhoL+Dy974aKVCCNdtmqYRGUqcREx612V7Wxx
X-Google-Smtp-Source: AMsMyM45BCWgmJLwCUgUzoIpmCD0GXT5eGPMW5Fuv+zn6H5Q7NNHFu6+D0SC0Y212eubAPAGx6KFr1s0n2JkIN3Y6v5ZHebxORlo
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1612:b0:35a:3f48:f3a3 with SMTP id
 x18-20020a056638161200b0035a3f48f3a3mr11803361jas.43.1664209956261; Mon, 26
 Sep 2022 09:32:36 -0700 (PDT)
Date: Mon, 26 Sep 2022 09:32:36 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000046566805e997132d@google.com>
From: syzbot <syzbot+55a7541cfd25df68109e@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 105a36f3694e
 Merge tag 'kbuild-fixes-v6.0-3' of git://git... git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=13a64288880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1ocr29-003aCq-RJ
X-Mailman-Approved-At: Mon, 26 Sep 2022 16:38:01 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 xtInsert
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

HEAD commit:    105a36f3694e Merge tag 'kbuild-fixes-v6.0-3' of git://git...
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=13a64288880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b68d4454cd7c7d91
dashboard link: https://syzkaller.appspot.com/bug?extid=55a7541cfd25df68109e
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=111be26c880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12c1deff080000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/bef111412fd8/disk-105a36f3.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/4db9dc916db0/vmlinux-105a36f3.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+55a7541cfd25df68109e@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 264192
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_xtree.c:622:9
index 19 is out of range for type 'xad_t [18]'
CPU: 1 PID: 3614 Comm: syz-executor388 Not tainted 6.0.0-rc6-syzkaller-00321-g105a36f3694e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e3/0x2cb lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0x107/0x150 lib/ubsan.c:283
 xtInsert+0xfbe/0x1020 fs/jfs/jfs_xtree.c:622
 extAlloc+0xaa4/0x1030 fs/jfs/jfs_extent.c:145
 jfs_get_block+0x410/0xe30 fs/jfs/inode.c:248
 __block_write_begin_int+0x6f6/0x1d70 fs/buffer.c:2006
 __block_write_begin fs/buffer.c:2056 [inline]
 block_write_begin+0x93/0x1e0 fs/buffer.c:2117
 jfs_write_begin+0x2d/0x60 fs/jfs/inode.c:304
 generic_perform_write+0x314/0x610 mm/filemap.c:3738
 __generic_file_write_iter+0x176/0x400 mm/filemap.c:3866
 generic_file_write_iter+0xab/0x310 mm/filemap.c:3898
 do_iter_write+0x6f0/0xc50 fs/read_write.c:855
 vfs_writev fs/read_write.c:928 [inline]
 do_writev+0x27a/0x470 fs/read_write.c:971
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x2b/0x70 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f0e179f7fb9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffed4fe4448 EFLAGS: 00000246 ORIG_RAX: 0000000000000014
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f0e179f7fb9
RDX: 0000000000000001 RSI: 0000000020000000 RDI: 0000000000000003
RBP: 00007f0e179b7780 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00080000000000f4 R15: 0000000000000000
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
