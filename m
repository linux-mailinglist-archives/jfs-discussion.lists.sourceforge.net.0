Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D84563B34A
	for <lists+jfs-discussion@lfdr.de>; Mon, 28 Nov 2022 21:34:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ozkp5-0005J2-4W;
	Mon, 28 Nov 2022 20:33:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <36pCBYwkbADUjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oymTD-0001bQ-RL for jfs-discussion@lists.sourceforge.net;
 Sat, 26 Nov 2022 04:07:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Xlm0ihDzdy1MS5dffHdYdsawho2WoKhIqDxe/mjLS0=; b=VSRWGsOes2/+w3JfJ2F9/VBHuT
 k99nrO1O2GO2ptdtNrt9C+ggJA6ecNwkPvFZJ2iETW9kxRzGmjDhDQ/ErExLibAXltLZU2b8cDgWR
 +V5HnmP9dOGnrk+y2I6wIkOy+Wjgn2USieyMu2pPY93ARKUFzGS/IvR5TSNFEGtbHbAA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6Xlm0ihDzdy1MS5dffHdYdsawho2WoKhIqDxe/mjLS0=; b=n
 CI5nXIeCNSxRyRHe8ln5Ymyfv7bL0z2j2F5wIrCmDwYsToXJlANr1JnmCKmDCI5GAh3JBQnlGljef
 hAeEhyFwLrhd3c4YgQaOrrpuM7H8UqG+OoSwvfpSfYle78iUTNUhAsi8rYEpOZwGNj0OkO90xyn9J
 gHC2U6xt0UDDyF8Y=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oymTA-0004YB-5I for jfs-discussion@lists.sourceforge.net;
 Sat, 26 Nov 2022 04:07:15 +0000
Received: by mail-il1-f200.google.com with SMTP id
 o10-20020a056e02102a00b003006328df7bso4047336ilj.17
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 25 Nov 2022 20:07:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6Xlm0ihDzdy1MS5dffHdYdsawho2WoKhIqDxe/mjLS0=;
 b=fDOldfTvqCmJ7km1sxivR73xgwFc2AnLmjnTWd4ZeXJ1QPF4wMrJSkkK//f0bJtDw+
 iVOBmXYYl9hK+YUvP01q7FT6IW49HPC3SOhQBcJsjznHC3rL9GvppNQQkJQpRY8Hy0qs
 vkjotelEiNo1eau949NO8a1bRV0fO0co4/YvlW0jPJbPwW//byacUxF3PmmATfjl9k7F
 yKXn6Q1RJnbmNh/TKP6lomRbFvRtD2bfJrLy7hGmtfoaElTTndkc4Jd63ezZmP4/nMWu
 DWYZGkIMwSDHEOOxkAWsOBDuFHA20nLGytAbuqLjWEp5ulV36+wjVb9uyDg6toFilWqw
 hF/A==
X-Gm-Message-State: ANoB5plYmceK0h0AmmFQ5lCZqvVUYBJQMDDroOk4xF/6EK6YJitnae3p
 mTsTxGt7SuIfIFz2Drw41tfu2Tur6Mg6qYqyyrU6z2k3i0FM
X-Google-Smtp-Source: AA0mqf6HSfGRMDCDMsESzkAVqboet0zi9qQSj3SoY6AuYQvUVgyxoEqoMshqZLS8H+TqoSrHKRg9u8xFORRuFIq8rALt8QId/TmD
MIME-Version: 1.0
X-Received: by 2002:a92:b50c:0:b0:302:f954:e74 with SMTP id
 f12-20020a92b50c000000b00302f9540e74mr2622394ile.220.1669435626576; Fri, 25
 Nov 2022 20:07:06 -0800 (PST)
Date: Fri, 25 Nov 2022 20:07:06 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007f649605ee57c509@google.com>
From: syzbot <syzbot+47366a6b503c7edf6bbb@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: a77d28d13789
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oymTA-0004YB-5I
X-Mailman-Approved-At: Mon, 28 Nov 2022 20:33:41 +0000
Subject: [Jfs-discussion] [syzbot] WARNING in diUnmount
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

HEAD commit:    a77d28d13789 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=15e01df9880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c4c990190d758078
dashboard link: https://syzkaller.appspot.com/bug?extid=47366a6b503c7edf6bbb
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/7c4b04ddbeb3/disk-a77d28d1.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/3ecedb0cf6ca/vmlinux-a77d28d1.xz
kernel image: https://storage.googleapis.com/syzbot-assets/44c59c4393c7/Image-a77d28d1.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+47366a6b503c7edf6bbb@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 0 PID: 3130 at mm/slab_common.c:923 free_large_kmalloc+0x3c/0x144 mm/slab_common.c:924
Modules linked in:
CPU: 0 PID: 3130 Comm: syz-executor.5 Not tainted 6.1.0-rc6-syzkaller-32651-ga77d28d13789 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : free_large_kmalloc+0x3c/0x144 mm/slab_common.c:924
lr : kfree+0xb8/0x118 mm/slab_common.c:1001
sp : ffff800012dcbba0
x29: ffff800012dcbba0 x28: ffff0000c4169a40 x27: 0000000000000000
x26: 00000000000000c0 x25: 0000000000000002 x24: ffff0000eccb8800
x23: ffff80000d5d8000 x22: ffff0000f2113018 x21: 0000000040000000
x20: ffff800008d57fd4 x19: fffffc0004768200 x18: 000000000000017a
x17: 0000000000000000 x16: 0000000000000000 x15: 0000000000000000
x14: 0000000000000000 x13: 0000000000000406 x12: ffff80000d4f7298
x11: ff8080000805b050 x10: 0000000000000000 x9 : fffffc0000000000
x8 : ffff80000d990000 x7 : ffff8000083e0fd4 x6 : 0000000000000000
x5 : 0000000000000000 x4 : 0000000000000000 x3 : 0000000000000002
x2 : 0000000000000008 x1 : ffff00011da08000 x0 : fffffc0004768200
Call trace:
 free_large_kmalloc+0x3c/0x144 mm/slab_common.c:924
 kfree+0xb8/0x118 mm/slab_common.c:1001
 diUnmount+0x74/0x8c fs/jfs/jfs_imap.c:195
 jfs_umount+0x94/0x190 fs/jfs/jfs_umount.c:63
 jfs_put_super+0x6c/0x104 fs/jfs/super.c:194
 generic_shutdown_super+0x94/0x198 fs/super.c:492
 kill_block_super+0x30/0x78 fs/super.c:1428
 deactivate_locked_super+0x70/0xe8 fs/super.c:332
 deactivate_super+0xd0/0xd4 fs/super.c:363
 cleanup_mnt+0x184/0x1c0 fs/namespace.c:1186
 __cleanup_mnt+0x20/0x30 fs/namespace.c:1193
 task_work_run+0x100/0x148 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 do_notify_resume+0x174/0x1f0 arch/arm64/kernel/signal.c:1127
 prepare_exit_to_user_mode arch/arm64/kernel/entry-common.c:137 [inline]
 exit_to_user_mode arch/arm64/kernel/entry-common.c:142 [inline]
 el0_svc+0x9c/0x150 arch/arm64/kernel/entry-common.c:638
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:584
irq event stamp: 3932962
hardirqs last  enabled at (3932961): [<ffff80000c0b6d44>] __raw_spin_unlock_irqrestore include/linux/spinlock_api_smp.h:151 [inline]
hardirqs last  enabled at (3932961): [<ffff80000c0b6d44>] _raw_spin_unlock_irqrestore+0x48/0x8c kernel/locking/spinlock.c:194
hardirqs last disabled at (3932962): [<ffff80000c0a4074>] el1_dbg+0x24/0x80 arch/arm64/kernel/entry-common.c:405
softirqs last  enabled at (3932812): [<ffff80000801c38c>] local_bh_enable+0x10/0x34 include/linux/bottom_half.h:32
softirqs last disabled at (3932810): [<ffff80000801c358>] local_bh_disable+0x10/0x34 include/linux/bottom_half.h:19
---[ end trace 0000000000000000 ]---
object pointer: 0x000000001b0e773b
page:00000000b707f24b refcount:0 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x15da08
flags: 0x5ffc00000000000(node=0|zone=2|lastcpupid=0x7ff)
raw: 05ffc00000000000 fffffc0003bf0008 ffff0001feff4c20 0000000000000000
raw: 0000000000000000 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: VM_BUG_ON_PAGE(page_ref_count(page) == 0)
------------[ cut here ]------------
kernel BUG at include/linux/mm.h:757!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 3130 Comm: syz-executor.5 Tainted: G        W          6.1.0-rc6-syzkaller-32651-ga77d28d13789 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : put_page_testzero include/linux/mm.h:757 [inline]
pc : __free_pages+0xc0/0x168 mm/page_alloc.c:5640
lr : put_page_testzero include/linux/mm.h:757 [inline]
lr : __free_pages+0xc0/0x168 mm/page_alloc.c:5640
sp : ffff800012dcbb70
x29: ffff800012dcbb70 x28: ffff0000c4169a40 x27: 0000000000000000
x26: 00000000000000c0 x25: 0000000000000002 x24: ffff0000eccb8800
x23: ffff80000d5d8000 x22: 0000000000000000 x21: fffffffffffff000
x20: 0000000000000000 x19: fffffc0004768200 x18: 00000000000001ba
x17: 3030303030303030 x16: ffff80000dc18158 x15: ffff0000c4169a40
x14: 0000000000000000 x13: 00000000ffffffff x12: ffff0000c4169a40
x11: ff808000081c4d40 x10: 0000000000000000 x9 : 0db713de61b9aa00
x8 : 0db713de61b9aa00 x7 : ffff80000c0b1cb4 x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : 0000000000000000 x1 : 0000000100000000 x0 : 000000000000003e
Call trace:
 put_page_testzero include/linux/mm.h:757 [inline]
 __free_pages+0xc0/0x168 mm/page_alloc.c:5640
 free_large_kmalloc+0xac/0x144 mm/slab_common.c:932
 kfree+0xb8/0x118 mm/slab_common.c:1001
 diUnmount+0x74/0x8c fs/jfs/jfs_imap.c:195
 jfs_umount+0x94/0x190 fs/jfs/jfs_umount.c:63
 jfs_put_super+0x6c/0x104 fs/jfs/super.c:194
 generic_shutdown_super+0x94/0x198 fs/super.c:492
 kill_block_super+0x30/0x78 fs/super.c:1428
 deactivate_locked_super+0x70/0xe8 fs/super.c:332
 deactivate_super+0xd0/0xd4 fs/super.c:363
 cleanup_mnt+0x184/0x1c0 fs/namespace.c:1186
 __cleanup_mnt+0x20/0x30 fs/namespace.c:1193
 task_work_run+0x100/0x148 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 do_notify_resume+0x174/0x1f0 arch/arm64/kernel/signal.c:1127
 prepare_exit_to_user_mode arch/arm64/kernel/entry-common.c:137 [inline]
 exit_to_user_mode arch/arm64/kernel/entry-common.c:142 [inline]
 el0_svc+0x9c/0x150 arch/arm64/kernel/entry-common.c:638
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:584
Code: d0023861 91245021 aa1303e0 97fe88b8 (d4210000) 
---[ end trace 0000000000000000 ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
