Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BC55EA6FD
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Sep 2022 15:21:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oco2u-0000gn-8O;
	Mon, 26 Sep 2022 13:21:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3jHQxYwkbAFsLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ockfS-0006lk-Qb for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 09:44:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OVmYGThiIbVFpu7Nh3FHoj779XXZev1QQuPFm5XI3do=; b=eQZji/4qrgAriWhBXivu6NtQK+
 FdPdK2TOtMHUWDAuPRmv1zyLCwTNFj7Ubh0oBkGfuw0/Pja4JTcLWH86ur7XT9Gyqvy2rMCXGjDI1
 PGEAnxO81FxCVCK2x8BXF8XleB23kZooAx6VzJX4keMtv7SHDzBKJr2JfhQ9yfx69ugk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OVmYGThiIbVFpu7Nh3FHoj779XXZev1QQuPFm5XI3do=; b=H
 12hz79/wMYFIvsqoGgOnYLetIZjY+pwSFzZKUKQYdoBRcfXp/VvVhsDjZGFRSvCcqJg4W7gLpj6/1
 I+iF8MTHfCykeK5q2sporDs6aMpJLMFaM7PrG3I1SW2PKVU0R2GqzEM9sF1YjjrxegAvl1NOltLjW
 6Q1k0EGRj3Gt9Fig=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ockfS-003FtK-4n for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 09:44:50 +0000
Received: by mail-il1-f199.google.com with SMTP id
 d6-20020a056e020be600b002dcc7977592so4689819ilu.17
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Sep 2022 02:44:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=OVmYGThiIbVFpu7Nh3FHoj779XXZev1QQuPFm5XI3do=;
 b=WoSvE07O/XDd3P/uVGFKCzssZea8Vuaho2zpWHEwq3yqxiB575vTapuLpRaIptvMnR
 cizFBm11DZFLg0UKKavsqwUVeFVdszA6R8AM0KJVIS4QnuBDEazazVsVByRnzSzQk6kK
 OR2vYla8KFnR9KG3uQKcc8xNty1m7Hj3vnONZgeSnzEu76dtgglCX21L6yu6sp3mps8O
 EBaGhsZGlrdgS9cOh5xVXxp7wG5aX1Wzx7KKNeggVKfNPtvoZZ+ows0Wm/WyTOwMS+Nm
 V3qWIemjggLZF5WI2lDeSLwRDXzwo08/F4BgijFb4jCHyajhNXDu22xFy272QQmCvWv3
 okgg==
X-Gm-Message-State: ACrzQf2x3AR1WfAI+F8qlr8mxF3cTbSTpKFHC9frh/zXgIFnfqip/UXb
 zj7twSaYvYsE9UobgH5x+6ByKMwU0kiSdsapYgghy2B1bmFq
X-Google-Smtp-Source: AMsMyM5h9FonT8qcmfDa/rlhcFdoztwBORF9ht1QN1RhErfaf3lWCtwHJpjNbvF/Xa4tWM7FHmrXF2zLYD9vX9FI6rkaFOfXS3tQ
MIME-Version: 1.0
X-Received: by 2002:a92:ad11:0:b0:2f6:47ac:4dcc with SMTP id
 w17-20020a92ad11000000b002f647ac4dccmr9577522ilh.250.1664185484592; Mon, 26
 Sep 2022 02:44:44 -0700 (PDT)
Date: Mon, 26 Sep 2022 02:44:44 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a6505105e9916037@google.com>
From: syzbot <syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com>
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
 https://syzkaller.appspot.com/x/log.txt?x=14b56188880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1ockfS-003FtK-4n
X-Mailman-Approved-At: Mon, 26 Sep 2022 13:21:15 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in extAlloc
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
console+strace: https://syzkaller.appspot.com/x/log.txt?x=14b56188880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=122d7bd4fc8e0ecb
dashboard link: https://syzkaller.appspot.com/bug?extid=5f088f29593e6b4c8db8
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14735cdf080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15dfcdc4880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/d3172aeebe38/disk-105a36f3.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/75046f57bda3/vmlinux-105a36f3.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_extent.c:314:16
shift exponent -1 is negative
CPU: 0 PID: 3605 Comm: syz-executor226 Not tainted 6.0.0-rc6-syzkaller-00321-g105a36f3694e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 extBalloc fs/jfs/jfs_extent.c:314 [inline]
 extAlloc.cold+0x8d/0x92 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x661/0xa90 fs/jfs/inode.c:248
 __block_write_begin_int+0x3ca/0x1520 fs/buffer.c:2006
 __block_write_begin fs/buffer.c:2056 [inline]
 block_write_begin+0xb5/0x4d0 fs/buffer.c:2117
 jfs_write_begin+0x2d/0xd0 fs/jfs/inode.c:304
 generic_perform_write+0x246/0x560 mm/filemap.c:3738
 __generic_file_write_iter+0x2aa/0x4d0 mm/filemap.c:3866
 generic_file_write_iter+0xdf/0x350 mm/filemap.c:3898
 call_write_iter include/linux/fs.h:2187 [inline]
 do_iter_readv_writev+0x20b/0x3b0 fs/read_write.c:729
 do_iter_write+0x182/0x700 fs/read_write.c:855
 vfs_writev+0x1aa/0x630 fs/read_write.c:928
 do_writev+0x133/0x2f0 fs/read_write.c:971
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f61f4034f29
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd1287f7a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000014
RAX: ffffffffffffffda RBX: 0000000000000016 RCX: 00007f61f4034f29
RDX: 0000000000000001 RSI: 0000000020000000 RDI: 0000000000000003
RBP: 00007f61f3ff46f0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00080000000000f8 R15: 0000000000000000
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
