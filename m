Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DC098DC53
	for <lists+jfs-discussion@lfdr.de>; Wed,  2 Oct 2024 16:40:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sw0WG-0005J6-7h;
	Wed, 02 Oct 2024 14:40:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3-bf8ZgkbAJoMSTE4FF8L4JJC7.AIIAF8OM8L6IHN8HN.6IG@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1svpeG-0002yc-Mt for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Oct 2024 03:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I0QD8jg5SHtvvNbrGQIb1AX0c7yX5HrvNXSq3nfIERw=; b=AyGV18TvovRByO+GIAbp9uHRpG
 8y1LwHsvwvkOGqsmpd1Heg2F8HVqxx/lsBNAl0Pty6zfK2FF0DWVRZ5EmESd6TsRyXsvtf5d/5uSc
 5XFGFWAPXmdARzq1d/D0os4H1Iu0OOqyFr1sFUqaSiJZywCQosmrHOZmqT0km+FtNdvA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=I0QD8jg5SHtvvNbrGQIb1AX0c7yX5HrvNXSq3nfIERw=; b=V
 0bYdvOZITJX1adwcK+DJxAk/3aMfTpNJpaYY9RN50BV4VeBwp+Ak9gcTbEemSFFJvdJ9FO6xGaHH2
 bTMK2QEu0uHMFhu2IBSNH5lLca7yyLnP6Nw7+jIJzrR58bppHasy6Pr23FWaU19pMRAU1+3i1WLov
 imeL3nDn434KbyFU=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1svpeF-0008Nd-Vw for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Oct 2024 03:03:32 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-3a345a02c23so51111985ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 01 Oct 2024 20:03:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727838201; x=1728443001;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=I0QD8jg5SHtvvNbrGQIb1AX0c7yX5HrvNXSq3nfIERw=;
 b=FrpYpa3Jk+ojZgNyIOD5+iunEDcYYYsmMnO4XFjr3e1eKsXSO6GZxzdmB/MpyBiT/H
 6jvILP+CWOBdKR5tOntp3ZmLxXMZqKWyeXjsY+rKkQ/DCf7Lm//oFyqn2yAKHVrHvZVU
 dvDK7zsIz7pBIGNg2ExGeq7NqPx6GyOV/O9BRkl+6hRn0cJIKUmG1L3IIWMIgof4avR0
 WTcdPg1PT770Mf8SFyKxYOG++QWB7Fe31bKILE5uudojrhLKjay6xNdnubVhoKbnNVbP
 tJALRxp1b/iKHfvXdOQCibhrjf34H+O8HBhipdXxtmUvIt31vWN+oikylPSiAaH4K4U/
 +hvg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWLuRLFvBWqCDOY3R3HxaEH7bXbV4jpJLsXVzk0qnc6m2adSdieHwSE1+D6VxTWr7lKaCjk+mR+vOGNKJVXSw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzFDP65EgsLtqY5XsT2u7mSNEVR1n6L8sG/SQotRXYTQ3zqehbM
 4DRgO98NnXMYB0XExVon9H3HsS3r6B9IiSpKts3v0ktMIg3nPbDLYRfxzsBU4zPzbYSJ2AHeCTB
 YsixSJ+BDqLVOY3HPEx6n8XqzkeqeBCeuFO6EPD2/RmGJjdIr3rQD0gY=
X-Google-Smtp-Source: AGHT+IFiIUvUFVooEkm6DK801RPXnKK/MAoiUl347FytOqjzPOsO0LYWomMfHfbqgU+SmKrWRdSroPfkV1veBA/QGAONVDs8kOj8
MIME-Version: 1.0
X-Received: by 2002:a92:cda8:0:b0:3a0:9aef:4c2 with SMTP id
 e9e14a558f8ab-3a36594454fmr16660945ab.19.1727838201198; Tue, 01 Oct 2024
 20:03:21 -0700 (PDT)
Date: Tue, 01 Oct 2024 20:03:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <66fcb7f9.050a0220.f28ec.04e8.GAE@google.com>
To: brauner@kernel.org, jack@suse.cz, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: e32cde8d2bd7
 Merge tag 'sched_ext-for-6.12-rc1-fixes-1' of.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=17b18307980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1svpeF-0008Nd-Vw
X-Mailman-Approved-At: Wed, 02 Oct 2024 14:40:00 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: null-ptr-deref Read in
 drop_buffers (3)
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
Reply-To: syzbot <syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    e32cde8d2bd7 Merge tag 'sched_ext-for-6.12-rc1-fixes-1' of..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=17b18307980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=286b31f2cf1c36b5
dashboard link: https://syzkaller.appspot.com/bug?extid=de1498ff3a934ac5e8b4
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10718307980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12f3939f980000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-e32cde8d.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9c681f5609bc/vmlinux-e32cde8d.xz
kernel image: https://storage.googleapis.com/syzbot-assets/00b4d54de1d9/bzImage-e32cde8d.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/14b0b7eafa4c/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: null-ptr-deref in instrument_atomic_read include/linux/instrumented.h:68 [inline]
BUG: KASAN: null-ptr-deref in atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
BUG: KASAN: null-ptr-deref in buffer_busy fs/buffer.c:2881 [inline]
BUG: KASAN: null-ptr-deref in drop_buffers+0x6f/0x710 fs/buffer.c:2893
Read of size 4 at addr 0000000000000060 by task kswapd0/74

CPU: 0 UID: 0 PID: 74 Comm: kswapd0 Not tainted 6.12.0-rc1-syzkaller-00031-ge32cde8d2bd7 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_report+0xe8/0x550 mm/kasan/report.c:491
 kasan_report+0x143/0x180 mm/kasan/report.c:601
 kasan_check_range+0x282/0x290 mm/kasan/generic.c:189
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
 buffer_busy fs/buffer.c:2881 [inline]
 drop_buffers+0x6f/0x710 fs/buffer.c:2893
 try_to_free_buffers+0x295/0x5f0 fs/buffer.c:2947
 shrink_folio_list+0x240c/0x8cc0 mm/vmscan.c:1432
 evict_folios+0x549b/0x7b50 mm/vmscan.c:4583
 try_to_shrink_lruvec+0x9ab/0xbb0 mm/vmscan.c:4778
 shrink_one+0x3b9/0x850 mm/vmscan.c:4816
 shrink_many mm/vmscan.c:4879 [inline]
 lru_gen_shrink_node mm/vmscan.c:4957 [inline]
 shrink_node+0x3799/0x3de0 mm/vmscan.c:5937
 kswapd_shrink_node mm/vmscan.c:6765 [inline]
 balance_pgdat mm/vmscan.c:6957 [inline]
 kswapd+0x1ca3/0x3700 mm/vmscan.c:7226
 kthread+0x2f0/0x390 kernel/kthread.c:389
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
==================================================================


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
