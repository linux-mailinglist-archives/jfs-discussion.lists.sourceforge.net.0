Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAE35EA700
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Sep 2022 15:21:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oco2u-0000h1-U5;
	Mon, 26 Sep 2022 13:21:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3GXcxYwkbAOwgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ockq0-0007pj-0Q for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 09:55:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kmcmmaivHbaIHJR042367FsPPBjxGQAP3lEauQGzqw0=; b=A2DWqpRzN0E3cM+50VUnRsb0lf
 6uUUV3+1Q+AYpb0NDpLOcXSC/280t+vwxka1z+M4TiLXLfr5T66Wai5Db1PNmWqr9NQvUGwOlp+kA
 vxoZE2LGYNSSZ3WHbwd4TTYGMJxiFp1uhfujusj0uVaNcCVMIrWhHFFIKfKahOAU7J4c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kmcmmaivHbaIHJR042367FsPPBjxGQAP3lEauQGzqw0=; b=f
 nnwKsnZiY8Fgfj2mT5eYEBIfROuTccyDBKBO9HxE4Wrebt+vlNS4zb8EoSFBg44ACBAtBbm2mjOQl
 p5nCdcXHL1l64ijUXf5rx6svOCBvHa90EzoQILKt6CcTs1xfifT15ENfPEelWbHC9167YLUxy+BOg
 uGR86JneePGPUlcE=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ockpz-0006OE-91 for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 09:55:43 +0000
Received: by mail-io1-f71.google.com with SMTP id
 e15-20020a5d8acf000000b006a3ed059e49so3540988iot.14
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Sep 2022 02:55:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=kmcmmaivHbaIHJR042367FsPPBjxGQAP3lEauQGzqw0=;
 b=PXHzuhWU+KukDhK8/i1/d/PNXDP7/R8vJOIrM9G2zEPe3SK7FowJohDYR3zOCwn/90
 k06AXMO+8jtc607G3kVMAuLxgghREludDAbRNbjGdpQDFptDvvvik1R0x21aOVtjEkcm
 zgH+CTwfaNe0lYk9W31BMVCGiCGUbOkkwSG0N/3X/z5zt7O66EpkSCfME9XC0EaTuKXm
 OmCBQuo7+mqWHGCVKUtK+9lpcuptqOC44pPTbcVDyyoXyfQ83boEOAMtzeh17DpWMFxt
 zZwbRNf4gquxd5/gvEYImpcZ9ZPUE1Ih96kuBJFeBVRTRI1fkO1JE5QzLbJpY0X/fH95
 DBTQ==
X-Gm-Message-State: ACrzQf1FQBzw15oFT3VDqqgGHcV7z539+wTiCi9GpTuHmzWFjfjo3Ajb
 iEFSR77Biby9N5UOFbqBtaP4OLWQU63QVQQGn3ahmKc4AP5O
X-Google-Smtp-Source: AMsMyM4AJPhEIgkVAlWkhFNIMTYULZyOuAi1bWBWKXmi9JwKRwcp2NvqSkWWfow2KLFc09/D/1NUdQqYVn/oY3dGqC0356It7tMA
MIME-Version: 1.0
X-Received: by 2002:a05:6602:48e:b0:6a4:1d07:bb18 with SMTP id
 y14-20020a056602048e00b006a41d07bb18mr7178789iov.115.1664186137717; Mon, 26
 Sep 2022 02:55:37 -0700 (PDT)
Date: Mon, 26 Sep 2022 02:55:37 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000094338805e9918792@google.com>
From: syzbot <syzbot+38e876a8aa44b7115c76@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 105a36f3694e
 Merge tag 'kbuild-fixes-v6.0-3' of git://git... git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=105311df080000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1ockpz-0006OE-91
X-Mailman-Approved-At: Mon, 26 Sep 2022 13:21:15 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 dbNextAG
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
console+strace: https://syzkaller.appspot.com/x/log.txt?x=105311df080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c221af36f6d1d811
dashboard link: https://syzkaller.appspot.com/bug?extid=38e876a8aa44b7115c76
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=100105c4880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17a5fcdf080000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/858ea4fd6806/disk-105a36f3.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/76c66678f029/vmlinux-105a36f3.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+38e876a8aa44b7115c76@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 264192
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:617:20
index 1128417612 is out of range for type 'atomic_t [128]'
CPU: 0 PID: 3606 Comm: syz-executor376 Not tainted 6.0.0-rc6-syzkaller-00321-g105a36f3694e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 dbNextAG+0x602/0x630 fs/jfs/jfs_dmap.c:617
 diAlloc+0x17a/0x1700 fs/jfs/jfs_imap.c:1342
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
RIP: 0033:0x7fca2c28c2c7
Code: ff ff ff ff c3 66 0f 1f 44 00 00 48 c7 c0 c0 ff ff ff 64 c7 00 16 00 00 00 b8 ff ff ff ff c3 0f 1f 40 00 b8 53 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff8fb1d868 EFLAGS: 00000246 ORIG_RAX: 0000000000000053
RAX: ffffffffffffffda RBX: 00007fff8fb1d910 RCX: 00007fca2c28c2c7
RDX: 0000000000000000 RSI: 00000000000001ff RDI: 00000000200001c0
RBP: 00000000ffffffff R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00000000ffffffff R14: 00000000200001c0 R15: 0000000000000000
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
