Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85961A851CF
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Apr 2025 04:58:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u34aU-0007kA-S8;
	Fri, 11 Apr 2025 02:57:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Dv_3ZwkbADMhnoZPaaTgPeeXS.VddVaTjhTgRdciTci.Rdb@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1u2vf5-0005h4-VT for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Apr 2025 17:26:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FoVgCYDUD0+uE1VYC6Sn5rqQTiN3FEiBrYJUJ1MXaZg=; b=ej789N97xFhBvrfkn9dJQlHnWQ
 GOSz6UN0lSfdPJ+hm/Anes/B9G7qAFujGx0pht88IZHB4Pq8thajroK6t3Fln5QwKLS5/BJo5bWcV
 ddIpGSj9DIoz09ctBtmhcaW1n/7VrfMikS27UNjoIcNA0frmRUYQaKc7JCZRgSY3Q3ak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FoVgCYDUD0+uE1VYC6Sn5rqQTiN3FEiBrYJUJ1MXaZg=; b=F
 nNhcOsoCcy3/A0oVUPHuy1MWATodoii5F8YsKzAO4+QtWjHN2T/R1XWfn6BnY8dYlnZu5KKwBehK1
 2JqFrhCDTWiMoBoynCFvWqkJB+VtdEEKck4nfVjv1w22iSD5TtVox9Ny2vyJtS8TQJlpJCAiHRcfz
 U6wIORc2Ea87qri4=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u2veq-0000pf-Tp for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Apr 2025 17:26:00 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-3d43b460962so21993985ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 10 Apr 2025 10:25:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744305934; x=1744910734;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FoVgCYDUD0+uE1VYC6Sn5rqQTiN3FEiBrYJUJ1MXaZg=;
 b=j9CJuBa2K8bhBqb97nwwiuRjnWCMJrjRFPR9l40J7pKE1tkdeWpNXR316ILXbRgF63
 Z/yANkIWmuDB7qSmKOLlC+vdjjz006UsunFdmkWKJxa6i6cCKT0FAznYt/+tFh+W5iY8
 mDW+tEtCq8HN0zFmxpJYdI0Fpqu+b8ZKn5WE0DnWb/w+Bphwrt9YiUBWyamn0K45CSws
 be1a461jCR/i3NvVQSuphXhe9fPxAGuDQsxsY+rn2zmKg3FffX+Go+08RBLO6KKphqYi
 SkTCD9s4T+wtSAAS5WHsIxj9+SgNbdefje4Yz0PtMa34H/vJweD5HxHYxavGsuh3tC1S
 Ct5Q==
X-Gm-Message-State: AOJu0Yw5kKo4f9Mmr/WsKmOnccBTUj4ssx4I81dnD1DV8NwMozt/NVWK
 eVO2OI+ippLAmGhp3g/UG6gAZFUzfO3p2xBUiiVZcokI/sDxdevg3SjsrutPjgbKDRd8F6s9Upf
 JnMoL7o92hCHO1P99dCxN8VGCrpJy0UjrtTydpchaaNWxMZ5jp1lyh8P60Q==
X-Google-Smtp-Source: AGHT+IHgr+FpDzW4hkFLEuJPVzDeUjF0WL9ps6DWhsmQl4JQrx/I7/WimW9x27YpejGxIFX+OdRIw33PQg1QdN7H6J5j5/e11pN0
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3:b0:3d4:3fed:81f7 with SMTP id
 e9e14a558f8ab-3d7e4782225mr44049295ab.19.1744305934215; Thu, 10 Apr 2025
 10:25:34 -0700 (PDT)
Date: Thu, 10 Apr 2025 10:25:34 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67f7ff0e.050a0220.355867.0009.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: bec7dcbc242c
 Merge tag 'probes-fixes-v6.14' of git://git.k.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=14245070580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: storage.googleapis.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.208 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.208 listed in wl.mailspike.net]
X-Headers-End: 1u2veq-0000pf-Tp
X-Mailman-Approved-At: Fri, 11 Apr 2025 02:57:49 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] WARNING: locking bug in
 release_metapage (2)
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
Reply-To: syzbot <syzbot+07d59279835a55269ddf@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    bec7dcbc242c Merge tag 'probes-fixes-v6.14' of git://git.k..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14245070580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=eecd7902e39d7933
dashboard link: https://syzkaller.appspot.com/bug?extid=07d59279835a55269ddf
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-bec7dcbc.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/6dbb5378ce1a/vmlinux-bec7dcbc.xz
kernel image: https://storage.googleapis.com/syzbot-assets/f01322799bc7/bzImage-bec7dcbc.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+07d59279835a55269ddf@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
ERROR: (device loop0): xtSearch: XT_GETPAGE: xtree page corrupt
ERROR: (device loop0): remounting filesystem as read-only
------------[ cut here ]------------
DEBUG_LOCKS_WARN_ON(!test_bit(class_idx, lock_classes_in_use))
WARNING: CPU: 0 PID: 5326 at kernel/locking/lockdep.c:5205 __lock_acquire+0xc6e/0xd80 kernel/locking/lockdep.c:5205
Modules linked in:
CPU: 0 UID: 0 PID: 5326 Comm: syz.0.0 Not tainted 6.15.0-rc1-syzkaller-00025-gbec7dcbc242c #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:__lock_acquire+0xc6e/0xd80 kernel/locking/lockdep.c:5205
Code: ff ff 90 e8 a4 67 62 03 85 c0 74 22 83 3d 5d 11 c1 0e 00 75 19 90 48 c7 c7 56 ce 4f 8e 48 c7 c6 3d de 4f 8e e8 53 79 e3 ff 90 <0f> 0b 90 90 90 45 31 ed e9 9c fe ff ff 90 0f 0b 90 e9 3f fe ff ff
RSP: 0018:ffffc9000d2e6fa0 EFLAGS: 00010046
RAX: e24de4b222594700 RBX: 0000000000000002 RCX: 0000000000100000
RDX: ffffc9000dc42000 RSI: 00000000000026e8 RDI: 00000000000026e9
RBP: 00000000ffffffff R08: ffffffff81827a12 R09: 1ffff11003f847d2
R10: dffffc0000000000 R11: ffffed1003f847d3 R12: ffff88801f72d3e0
R13: 0000000000000000 R14: ffff88801f72d3c0 R15: 0000000000000002
FS:  00007f73b3df56c0(0000) GS:ffff88808c596000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f73b86e3000 CR3: 0000000034f1c000 CR4: 0000000000352ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 lock_acquire+0x116/0x2f0 kernel/locking/lockdep.c:5866
 __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:110 [inline]
 _raw_spin_lock_irqsave+0xd8/0x130 kernel/locking/spinlock.c:162
 __wake_up_common_lock+0x25/0x1e0 kernel/sched/wait.c:105
 unlock_metapage fs/jfs/jfs_metapage.c:39 [inline]
 release_metapage+0x158/0xa90 fs/jfs/jfs_metapage.c:763
 xtTruncate+0x1026/0x32a0 fs/jfs/jfs_xtree.c:-1
 jfs_truncate_nolock+0x364/0x420 fs/jfs/inode.c:373
 jfs_truncate fs/jfs/inode.c:412 [inline]
 jfs_write_failed+0x11a/0x190 fs/jfs/inode.c:289
 jfs_write_begin+0x64/0x70 fs/jfs/inode.c:301
 generic_perform_write+0x329/0xa10 mm/filemap.c:4102
 generic_file_write_iter+0x10e/0x5e0 mm/filemap.c:4245
 aio_write+0x56d/0x7d0 fs/aio.c:1633
 __io_submit_one fs/aio.c:-1 [inline]
 io_submit_one+0x8a9/0x18b0 fs/aio.c:2052
 __do_sys_io_submit fs/aio.c:2111 [inline]
 __se_sys_io_submit+0x17a/0x2e0 fs/aio.c:2081
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f73b798d169
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f73b3df5038 EFLAGS: 00000246 ORIG_RAX: 00000000000000d1
RAX: ffffffffffffffda RBX: 00007f73b7ba5fa0 RCX: 00007f73b798d169
RDX: 0000200000000540 RSI: 0000000000000001 RDI: 00007f73b86e3000
RBP: 00007f73b7a0e2a0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007f73b7ba5fa0 R15: 00007fff52080d38
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

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
