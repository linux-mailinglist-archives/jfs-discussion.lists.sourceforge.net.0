Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9208362828E
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Nov 2022 15:30:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouaTx-0006G0-F2;
	Mon, 14 Nov 2022 14:30:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3wQ9xYwkbAMY4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ouF5N-0004ml-Jl for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Nov 2022 15:39:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N5fQ73RjqVvxTs9vlCsZRDgeFywF6Mr6XM1ky1FHK6s=; b=aiQQPla1to/7YyrioYdACC8GbC
 0yZZbcUgSwlVxbFlkIyremOgsRKxIum3kxvII08jkpnHw1S0uHLRDPzSfQZykQRCKnCSVu1DG1i4p
 fe5B4vECaaiuyRIB+WeHOU9vGP50aQVlb9uUpkCOzVgzCgF5pDsHsNfOg+JLQmKJOxBM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=N5fQ73RjqVvxTs9vlCsZRDgeFywF6Mr6XM1ky1FHK6s=; b=H
 4RKj4IFqAz8vHEJjCz9Spyp3icTojquDtD5cvihUk24dSKR2TohRaVJW9E4YZtmSaU6UdujlFU3+x
 luL2QmMVWsQhJgRTiQQWjQshoJjo/8/W3o0v3wQOf668nEffhNmccTOnrb3jrxjv6gxYZSFOANtFk
 TB/oVgRdneqrPh9o=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ouF5L-006plU-19 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Nov 2022 15:39:53 +0000
Received: by mail-il1-f198.google.com with SMTP id
 d19-20020a056e020c1300b00300b5a12c44so7672322ile.15
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 13 Nov 2022 07:39:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=N5fQ73RjqVvxTs9vlCsZRDgeFywF6Mr6XM1ky1FHK6s=;
 b=Y7fL6NMSj6NYjTQ7ZWMI6ppCRN0vzV7J04VzQyrNWXUsswXVqFp64XmBmqzQ+8ZRV3
 Wh1lMbczcT+HMGsoJNr+pPZDE3O4iim/i3W84eUSKQEFaYstsFFuIhK/HyR8HxC0cFll
 a42HmP2589ZcW9z4LxOrgln+VTS5yv26GYxv/XUWwIHrmh7QtE4P72PRxhfs9ALNssrj
 F7VI34mpVwXYjyviWqtX+89MXfRSgc1sxIEor+yWAz7MXKCIEcfEV05tpQn6p2G2yvms
 Ir/mdia/omJJVRCLI9P5ufw0Wh9IMHBSc0n8x+JcQF/Y0lArnxNtKUeUJTDZdexhaBiP
 WBuw==
X-Gm-Message-State: ANoB5pmpL9XYaBs/dTeIa1ZaZNSryIv52lSTuK2SmPd4PUuu7Pzcf4r0
 j3GRGXkeJ+PpSYNjOcdASV65r3J8oLW1oWciFj9j6OSXAeJw
X-Google-Smtp-Source: AA0mqf5AzzQMQwu8cmFpfM77BpTnUz+LlZEofm/5x1ufMbCP40DQ3TQRWvztZLTGfGDD+93r+Ql5BDLRp/3sL4ad7xQAlSLQXqiw
MIME-Version: 1.0
X-Received: by 2002:a92:a007:0:b0:300:bb03:28df with SMTP id
 e7-20020a92a007000000b00300bb0328dfmr4486785ili.280.1668353985499; Sun, 13
 Nov 2022 07:39:45 -0800 (PST)
Date: Sun, 13 Nov 2022 07:39:45 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000aa58fb05ed5beed6@google.com>
From: syzbot <syzbot+0835e526215d5dcefaa9@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 mudongliangabcd@gmail.com, paskripkin@gmail.com, r33s3n6@gmail.com, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, wuhoipok@gmail.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: f8f60f322f06
 Add linux-next specific files for 20221111 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1641a035880000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1ouF5L-006plU-19
X-Mailman-Approved-At: Mon, 14 Nov 2022 14:30:40 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbMount
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

HEAD commit:    f8f60f322f06 Add linux-next specific files for 20221111
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1641a035880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=85ba52c07cd97289
dashboard link: https://syzkaller.appspot.com/bug?extid=0835e526215d5dcefaa9
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10cab285880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13ca88f1880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/6008df424195/disk-f8f60f32.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/394340525f66/vmlinux-f8f60f32.xz
kernel image: https://storage.googleapis.com/syzbot-assets/b13604a3343a/bzImage-f8f60f32.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/c509c1d4b329/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+0835e526215d5dcefaa9@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:201:29
shift exponent -1368651876 is negative
CPU: 1 PID: 5245 Comm: syz-executor195 Not tainted 6.1.0-rc4-next-20221111-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 dbMount.cold+0x17/0x38 fs/jfs/jfs_dmap.c:201
 jfs_mount+0x263/0x7b0 fs/jfs/jfs_mount.c:121
 jfs_fill_super+0x5a4/0xc70 fs/jfs/super.c:556
 mount_bdev+0x34d/0x410 fs/super.c:1401
 legacy_get_tree+0x105/0x220 fs/fs_context.c:610
 vfs_get_tree+0x89/0x2f0 fs/super.c:1531
 do_new_mount fs/namespace.c:3145 [inline]
 path_mount+0x1326/0x1e20 fs/namespace.c:3475
 do_mount fs/namespace.c:3488 [inline]
 __do_sys_mount fs/namespace.c:3696 [inline]
 __se_sys_mount fs/namespace.c:3673 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3673
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fea10c7d1fa
Code: 83 c4 08 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff879d2458 EFLAGS: 00000282 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007fea10c7d1fa
RDX: 0000000020005380 RSI: 0000000020000100 RDI: 00007fff879d2470
RBP: 00007fff879d2470 R08: 00007fff879d24b0 R09: 0000555556ef52c0
R10: 0000000000000000 R11: 0000000000000282 R12: 0000000000000004
R13: 00007fff879d24b0 R14: 0000000000000358 R15: 0000000020005240
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
