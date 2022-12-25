Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B41656410
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 17:46:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9qbr-0000da-I7;
	Mon, 26 Dec 2022 16:45:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3a86nYwkbAMo8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1p9IQM-0000dS-8d for jfs-discussion@lists.sourceforge.net;
 Sun, 25 Dec 2022 04:15:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jBv6qMn0Q8Dl71cbSpzu2RcbE7SvwqPK+R5Wa2eEOs8=; b=kkLOnwPoeY6C/fVW0VA/5lJDg7
 +FcbfdJQkFVrJTMTkrKVfO15ylyF1AI5Zteh3bMVvy9S502cx0ncpMmq/bc9VueefU4qlRi4MzYGI
 qi7PPK9bOLct4w2CS6cNor8J1pbYuprrc+jjbOpHcyi1jzm8chezzBwdSxPXAEFvodxU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jBv6qMn0Q8Dl71cbSpzu2RcbE7SvwqPK+R5Wa2eEOs8=; b=V
 OGapgtllhTrHITregQpMKhpNrk1zVHOvqyLqrLZRuu9xWz/zo3FKj0WgBFzrr+JCOiuD9mD+/NWSz
 WtNlPPzmYhI2xuvGXnMrHQkgyz55wtZMBBKjXZVH4ksV6IRxoDTKUFBjpJGHDsC/f3mwk6G1wufjl
 grcXRyet6AYXauRU=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p9IQL-00BpXG-FR for jfs-discussion@lists.sourceforge.net;
 Sun, 25 Dec 2022 04:15:46 +0000
Received: by mail-io1-f69.google.com with SMTP id
 z200-20020a6bc9d1000000b006e003aecf04so3011886iof.16
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 24 Dec 2022 20:15:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jBv6qMn0Q8Dl71cbSpzu2RcbE7SvwqPK+R5Wa2eEOs8=;
 b=nJE2/Bp1QAVrktTO7NW9r5+1n9ay3pKHyRgPP56yw5lQJFg0EzcRKx+hOJzuR0cLK4
 n+Uz0EVsH4nahNMCnXrJ2sjO3cnKPIcW4gZ4x1zTwXhPapE/DXOKrclmO/ywd1tSb3+G
 HXUDZhIlUXy7QInBQ0zgYheWXAuwZHOhtdsDRrrj5BhlaO23yKrhqvhDS3q50s2t9btd
 ImBRym5/T8zi8CR9haW6bpAU2BA8hfPdKFgLSq0lni6LG4cOl+ExNDrLj6dzy9PSpIcb
 c6mKc9Ip8M3+ab/9uxka7bEi6e3eLBmjNIa68Zl0M0TAIjSW1L32bwQQ/t83JcqoMURE
 LHdg==
X-Gm-Message-State: AFqh2kqc1Qirj1ysiPJl2sD7k/cMSD15bE+QPCXgkjBUcybWwO/zThcP
 Byre92ayAMiZa0/q4frfbfbtR3/Mij/co9LssZ85VHjqP2kE
X-Google-Smtp-Source: AMrXdXs6LRrSjpilEjLCwyJXt4e6dV3/cn4NfxsY60uxqiKEUYdWN+gkRVOeYeafVCbgiRV/UbT24Xb1GAqcyO+ffcrMP62CdAnk
MIME-Version: 1.0
X-Received: by 2002:a02:c6d3:0:b0:38a:3dbb:1f90 with SMTP id
 r19-20020a02c6d3000000b0038a3dbb1f90mr1358464jan.94.1671941739633; Sat, 24
 Dec 2022 20:15:39 -0800 (PST)
Date: Sat, 24 Dec 2022 20:15:39 -0800
In-Reply-To: <000000000000459c6205ea318e35@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000079e17b05f09f4571@google.com>
From: syzbot <syzbot+76a072c2f8a60280bd70@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 72a85e2b0a1e Merge tag 'spi-fix-v6.2-rc1' of git://git.ker..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=16d22974480000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1p9IQL-00BpXG-FR
X-Mailman-Approved-At: Mon, 26 Dec 2022 16:45:53 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in xtSearch
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    72a85e2b0a1e Merge tag 'spi-fix-v6.2-rc1' of git://git.ker..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=16d22974480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4e2d7bfa2d6d5a76
dashboard link: https://syzkaller.appspot.com/bug?extid=76a072c2f8a60280bd70
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15802088480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/510d16df06c8/disk-72a85e2b.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/50ef5477a1d4/vmlinux-72a85e2b.xz
kernel image: https://storage.googleapis.com/syzbot-assets/f2acd6f1189a/bzImage-72a85e2b.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/5e378294b8d6/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+76a072c2f8a60280bd70@syzkaller.appspotmail.com

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_xtree.c:360:4
index 19 is out of range for type 'xad_t [18]'
CPU: 1 PID: 5414 Comm: syz-executor.0 Not tainted 6.1.0-syzkaller-14594-g72a85e2b0a1e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x290 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xe0/0x110 lib/ubsan.c:282
 xtSearch+0x709/0x1cb0 fs/jfs/jfs_xtree.c:360
 xtLookup+0x235/0x880 fs/jfs/jfs_xtree.c:152
 extHint+0x204/0x630 fs/jfs/jfs_extent.c:215
 jfs_get_block+0x2e3/0xce0 fs/jfs/inode.c:246
 get_more_blocks fs/direct-io.c:665 [inline]
 do_direct_IO fs/direct-io.c:953 [inline]
 __blockdev_direct_IO+0x1737/0x3bf0 fs/direct-io.c:1266
 blockdev_direct_IO include/linux/fs.h:3213 [inline]
 jfs_direct_IO+0xf6/0x1e0 fs/jfs/inode.c:331
 generic_file_direct_write+0x294/0x610 mm/filemap.c:3696
 __generic_file_write_iter+0x1c4/0x400 mm/filemap.c:3856
 generic_file_write_iter+0xab/0x310 mm/filemap.c:3932
 do_iter_write+0x6c2/0xc20 fs/read_write.c:861
 iter_file_splice_write+0x7fc/0xfc0 fs/splice.c:686
 do_splice_from fs/splice.c:764 [inline]
 direct_splice_actor+0xe6/0x1c0 fs/splice.c:931
 splice_direct_to_actor+0x4e4/0xc00 fs/splice.c:886
 do_splice_direct+0x279/0x3d0 fs/splice.c:974
 do_sendfile+0x5fb/0xf80 fs/read_write.c:1255
 __do_sys_sendfile64 fs/read_write.c:1323 [inline]
 __se_sys_sendfile64+0x14f/0x1b0 fs/read_write.c:1309
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f9065c8c0a9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 19 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f90669ab168 EFLAGS: 00000246 ORIG_RAX: 0000000000000028
RAX: ffffffffffffffda RBX: 00007f9065dac050 RCX: 00007f9065c8c0a9
RDX: 0000000000000000 RSI: 0000000000000008 RDI: 0000000000000007
RBP: 00007f9065ce7ae9 R08: 0000000000000000 R09: 0000000000000000
R10: 000080001d00c0d0 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffe07df477f R14: 00007f90669ab300 R15: 0000000000022000
 </TASK>
================================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
