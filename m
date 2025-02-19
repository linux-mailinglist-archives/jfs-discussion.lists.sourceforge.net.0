Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A147A3C23C
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 15:34:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkl8u-0003dN-Hu;
	Wed, 19 Feb 2025 14:33:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ftC1ZwkbADspvwhXiiboXmmfa.dlldibrpboZlkqbkq.Zlj@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tkjKP-0005KF-Rh for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 12:37:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CV8UhaeaHQzGOcLoJQO51E4uQ6mLpnmwrYcZ81MLIQg=; b=igxU6k29L6laSsAbsTIwWM9g6n
 Ed4gzOeeBToiCJh+J405pkgZvV+uBjY+jV5Yxpe2wN13R3bLx378Gzd4e3fuitzfpnRKQUO53CdBW
 WmYAlo2R58nF60k5D3vWNvtssU6h07aXm4OFMDyv0J73dYsy/ArChuRzc0/AIDWl1Tcs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CV8UhaeaHQzGOcLoJQO51E4uQ6mLpnmwrYcZ81MLIQg=; b=K
 vM6FXQAw6gIYnpVUBfaGyehWj8TBa0iYRLrrKG7Bi88k+QX7ldkhFf9zdXR0EarLwGWc3ueK7P8hZ
 ADGm5+zEAwKZo9xxNf14v3K81NZ7THKvm/O7tuvrD6zTZkNOi6BKPma/64Uikdnay4ln4b814Ldb+
 SJCUqtXv3YX88edw=;
Received: from mail-il1-f207.google.com ([209.85.166.207])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tkjKO-0005fG-GE for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 12:37:25 +0000
Received: by mail-il1-f207.google.com with SMTP id
 e9e14a558f8ab-3d2b6d933c1so12947615ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Feb 2025 04:37:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739968639; x=1740573439;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=CV8UhaeaHQzGOcLoJQO51E4uQ6mLpnmwrYcZ81MLIQg=;
 b=GpZJWGrRk+73wgAbr/AgK3fgRDMuQBrV/iNYTkEw12mrGUtNX2pG2ouS86AZtnUDZD
 bWKAiGYceaKJEcVqA89kvrK1+yjlNsFdPga7W/avZB11coJN7rqypjR8NSwph9FT7jVP
 JNih2McMhFGIpOVGQT7FOpNbeCLsxe0+u1kc0kA6i9ngWlUKI+SBEdsNShD+8KeVqqAy
 undrqztNQs44SHnR0RRbtjhoxuSh275bpXhtQOxm9gInswYtjmgI4okSUhyRNtRiMwpA
 zIKPWL2tJn63XsqtUylpX0XABxhI/ItEV4SOrfmHPKEzed3FTWI8koaS86LypuUNMoFa
 pySw==
X-Gm-Message-State: AOJu0YznfkwjYIO77UVqr8d4i6GVTIdWMWXQGBad2Nt2tbmaCrTDUeoU
 qgWaJnQo38OMYArqwt2AnTc5MepMtHwM6aho6pQCdCDbLiRa2sDcN3moiw9KNRW+jS/+qUthbxW
 VBeE/YY+yN6I0G7v8hjXVzIcJgBYAXf6LY90qmOgz/GyfNQ8zzx9G5B6XSw==
X-Google-Smtp-Source: AGHT+IGldWd8pvHkwlYNMlExcruiWqubcvG79XG//cybN0VmTtnfRuAD5iUVgnHZOQ1R6Jh33IoTdawSI3G9JZC1GBNlEG5qU1Sl
MIME-Version: 1.0
X-Received: by 2002:a92:ca0c:0:b0:3d0:618c:1b22 with SMTP id
 e9e14a558f8ab-3d28088673emr146166245ab.11.1739968638545; Wed, 19 Feb 2025
 04:37:18 -0800 (PST)
Date: Wed, 19 Feb 2025 04:37:18 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67b5d07e.050a0220.14d86d.00e6.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 6537cfb395f3
 Merge tag 'sound-6.14-rc4' of git://git.kerne.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=103bc7f8580000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.207 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.207 listed in bl.score.senderscore.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.207 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.207 listed in wl.mailspike.net]
X-Headers-End: 1tkjKO-0005fG-GE
X-Mailman-Approved-At: Wed, 19 Feb 2025 14:33:34 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KMSAN: uninit-value in diFree
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
Reply-To: syzbot <syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    6537cfb395f3 Merge tag 'sound-6.14-rc4' of git://git.kerne..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=103bc7f8580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=8cf1217edc1cc7da
dashboard link: https://syzkaller.appspot.com/bug?extid=df6cdcb35904203d2b6d
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=131d2fdf980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16321498580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/0b4a6e38bb6d/disk-6537cfb3.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/96b70942c42c/vmlinux-6537cfb3.xz
kernel image: https://storage.googleapis.com/syzbot-assets/fd3dc281a360/bzImage-6537cfb3.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/f4c577f978b2/mount_1.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=14d09ae4580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com

ERROR: (device loop0): diUpdatePMap: the iag is outside the map
ERROR: (device loop0): remounting filesystem as read-only
=====================================================
BUG: KMSAN: uninit-value in hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
 hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
 print_hex_dump+0x13d/0x3e0 lib/hexdump.c:276
 diFree+0x5ba/0x4350 fs/jfs/jfs_imap.c:876
 jfs_evict_inode+0x510/0x550 fs/jfs/inode.c:156
 evict+0x723/0xd10 fs/inode.c:796
 iput_final fs/inode.c:1946 [inline]
 iput+0x97b/0xdb0 fs/inode.c:1972
 txUpdateMap+0xf3e/0x1150 fs/jfs/jfs_txnmgr.c:2367
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x627/0x11d0 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x6b9/0xef0 kernel/kthread.c:464
 ret_from_fork+0x6d/0x90 arch/x86/kernel/process.c:148
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244

Uninit was created at:
 slab_post_alloc_hook mm/slub.c:4121 [inline]
 slab_alloc_node mm/slub.c:4164 [inline]
 __kmalloc_cache_noprof+0x8e3/0xdf0 mm/slub.c:4320
 kmalloc_noprof include/linux/slab.h:901 [inline]
 diMount+0x61/0x7f0 fs/jfs/jfs_imap.c:105
 jfs_mount+0xa8e/0x11d0 fs/jfs/jfs_mount.c:176
 jfs_fill_super+0xa47/0x17c0 fs/jfs/super.c:523
 get_tree_bdev_flags+0x6ec/0x910 fs/super.c:1636
 get_tree_bdev+0x37/0x50 fs/super.c:1659
 jfs_get_tree+0x34/0x40 fs/jfs/super.c:635
 vfs_get_tree+0xb1/0x5a0 fs/super.c:1814
 do_new_mount+0x71f/0x15e0 fs/namespace.c:3560
 path_mount+0x742/0x1f10 fs/namespace.c:3887
 do_mount fs/namespace.c:3900 [inline]
 __do_sys_mount fs/namespace.c:4111 [inline]
 __se_sys_mount+0x71f/0x800 fs/namespace.c:4088
 __x64_sys_mount+0xe4/0x150 fs/namespace.c:4088
 x64_sys_call+0x39bf/0x3c30 arch/x86/include/generated/asm/syscalls_64.h:166
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xcd/0x1e0 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

CPU: 1 UID: 0 PID: 113 Comm: jfsCommit Not tainted 6.14.0-rc3-syzkaller-00060-g6537cfb395f3 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 12/27/2024
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
