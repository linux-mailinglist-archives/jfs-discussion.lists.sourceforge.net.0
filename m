Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F87E5F9FFF
	for <lists+jfs-discussion@lfdr.de>; Mon, 10 Oct 2022 16:15:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ohtYf-0000Ht-2p;
	Mon, 10 Oct 2022 14:15:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <328ZDYwkbAJgKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ohn1t-0008Av-Ei for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Oct 2022 07:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=asIjUCPWiCfWANYg6tljFONDkTTb0ft8OpW1fvNJfIY=; b=HqAaS7ZMzRmmY1XCWW77CpGxby
 Cunbswlf0HUE0bDNmH4GLZEE4NnYw/XBBHQ8guOhBMlB6bns7vu87EK661rBnQwrFCswrK5prih96
 nCT7Czjia4KF5FiWKwGYC7GdiAPSMW4oMclkkPqNZpzeU/N7JUr/PJGFvv8IRzgW05Ok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=asIjUCPWiCfWANYg6tljFONDkTTb0ft8OpW1fvNJfIY=; b=g
 CrlfWjnhvvCbuevnfjjWcU2kyIGF7rJXAsXcjyOgJypQvDVggJVz39WvblA4ZFeNFpjd9Cb42jKgU
 U/CoU+SCfIQDCSmdA5bSbMtp0UQMdE33Z0nt2bys83tzY7kLioGFW4WPMe5A3zd/dulRM91H4kOlg
 Vx3D4Hp6bnCmhhFY=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohn1s-0000OC-QX for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Oct 2022 07:16:49 +0000
Received: by mail-io1-f69.google.com with SMTP id
 q12-20020a5d834c000000b006bc2cb1994aso943724ior.15
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 10 Oct 2022 00:16:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=asIjUCPWiCfWANYg6tljFONDkTTb0ft8OpW1fvNJfIY=;
 b=cx6vvdCSf1AwGpboh3ovPsWGR3K6g2uv2XTOXkp5VsOVXDE0o1VnTI7Kiiqjy/UUPr
 X5vIfvP8rqGiMFPjMniUECHd9bb0o+Fgc5SLduaU5Innc971KJ/mPKnVMAYyY0y3zweW
 UAe4c3T1tqp93T1Q6dzRbx/jbXNAvjZCAVExxBvXEdbHfi9t6DJ+Az8YDw91FG+96kzd
 C0NLoBdrkAEfQ53g7r35OYgOlYcRK4HDw4aIL5EhNarE8oYd4YmsIxxcbz7RsuS6+UMR
 oy8MjXjmKAijr2K6DiIQrXU64XDpc33KQp86gOIj7wCljvOCIWCJzkvagaLTLxTJ4TvC
 ctYA==
X-Gm-Message-State: ACrzQf3feAjCOSLLzTmxs6bofEigxGK/WBg8ets7S2t3cxndAL++Wz9G
 Fo/M88CdepIand/NXOM44XIm4B7kyjQEME6FC4Po+pa1ik95
X-Google-Smtp-Source: AMsMyM7ffzUFPAW2WDtv3Vc1XkScdslB9Ss6nqiCpahm8iaCy1FAveDXdzM7Wrvt5fNKcSl9IZv4vbbX2J+U4VBIdcnfpCN2aznm
MIME-Version: 1.0
X-Received: by 2002:a05:6638:25c5:b0:35a:69fd:946e with SMTP id
 u5-20020a05663825c500b0035a69fd946emr9345689jat.174.1665386203235; Mon, 10
 Oct 2022 00:16:43 -0700 (PDT)
Date: Mon, 10 Oct 2022 00:16:43 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000ece5005eaa8f1d1@google.com>
From: syzbot <syzbot+b9ba793adebb63e56dba@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: a6afa4199d3d
 Merge tag 'mailbox-v6.1' of git://git.linaro... git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=178292a4880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1ohn1s-0000OC-QX
X-Mailman-Approved-At: Mon, 10 Oct 2022 14:15:03 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbAllocBits
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

HEAD commit:    a6afa4199d3d Merge tag 'mailbox-v6.1' of git://git.linaro...
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=178292a4880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=b9ba793adebb63e56dba
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1322ae34880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10403c94880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/12e24d042ff9/disk-a6afa419.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/4862ae4e2edf/vmlinux-a6afa419.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/307612ff696d/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b9ba793adebb63e56dba@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2217:15
shift exponent -1368651876 is negative
CPU: 0 PID: 3606 Comm: syz-executor109 Not tainted 6.0.0-syzkaller-09039-ga6afa4199d3d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 dbAllocBits+0x96f/0x9c0 fs/jfs/jfs_dmap.c:2217
 dbAllocDmap fs/jfs/jfs_dmap.c:1999 [inline]
 dbAllocDmapLev+0x240/0x420 fs/jfs/jfs_dmap.c:1953
 dbAllocCtl+0x113/0x970 fs/jfs/jfs_dmap.c:1793
 dbAllocAny fs/jfs/jfs_dmap.c:1507 [inline]
 dbAlloc+0x5ae/0xc90 fs/jfs/jfs_dmap.c:732
 extBalloc fs/jfs/jfs_extent.c:321 [inline]
 extAlloc+0x4b9/0xff0 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x342/0xce0 fs/jfs/inode.c:248
 __block_write_begin_int+0x5f6/0x1ba0 fs/buffer.c:2006
 __block_write_begin fs/buffer.c:2056 [inline]
 block_write_begin+0x93/0x1e0 fs/buffer.c:2117
 jfs_write_begin+0x2d/0x60 fs/jfs/inode.c:304
 generic_perform_write+0x2a8/0x5b0 mm/filemap.c:3745
 __generic_file_write_iter+0x176/0x400 mm/filemap.c:3873
 generic_file_write_iter+0xab/0x310 mm/filemap.c:3905
 do_iter_write+0x6c2/0xc20 fs/read_write.c:861
 vfs_writev fs/read_write.c:934 [inline]
 do_writev+0x23e/0x430 fs/read_write.c:977
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fe1ef5c4e39
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff5e480f98 EFLAGS: 00000246 ORIG_RAX: 0000000000000014
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007fe1ef5c4e39
RDX: 0000000000000001 RSI: 0000000020000000 RDI: 0000000000000003
RBP: 00007fe1ef584600 R08: 0000000000000000 R09: 0000000000000000
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
