Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECB4A18797
	for <lists+jfs-discussion@lfdr.de>; Tue, 21 Jan 2025 23:06:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1taMOC-0006Lm-S1;
	Tue, 21 Jan 2025 22:06:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3hAGQZwkbAAs39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1taKjg-0007O7-15 for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Jan 2025 20:20:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PX7GMR++r+g93NMFWlTs9q/9qaBvn6LpHDs0SZTIdAw=; b=H4L/MgWOThRIOX3Ig1g54iJqJ4
 fd03tdLr+lm1nEcdYO4h2ypKsiwM2ZgryzEekjFn7LW2UKxdYHaGX1R6FItJG9/PIzFhCYEbB9gyD
 X6hOFRauBGqs+6xX8UfMWnsJV/WpTJyWqgWM20RzN1HGM4oFhTUECcRkbFvWmmclvplM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PX7GMR++r+g93NMFWlTs9q/9qaBvn6LpHDs0SZTIdAw=; b=e
 A5Zcda7y1kPSrGiOnkLf7Zjl7Y7eQfKQek3/9ysNz5NA1zXLq9yhIqyz8hXb8SfEwI7JU5leMhJye
 9n7avmlAThYZB7vTiaYS+BihryNcmEXsG0cQJtbLk90ZAOkpk6cn8Oij4FhUWQXrxILCYMZ3VoAu0
 3KZ1vFattzyKSaXY=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1taKjf-0007Na-7o for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Jan 2025 20:20:31 +0000
Received: by mail-il1-f205.google.com with SMTP id
 e9e14a558f8ab-3cca581135dso95025765ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 21 Jan 2025 12:20:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737490820; x=1738095620;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PX7GMR++r+g93NMFWlTs9q/9qaBvn6LpHDs0SZTIdAw=;
 b=GBp6tn9gq3JyR8Qmbw23W8u3NWfh9YQPErtLVKKOwCQInH3loh6REQ12iN8odK6JJS
 Ql0PaLXf/d9CczzfvEyyjv582Wiyy6t5kNHyzc6kJVqjsJBxJpHWeTzugIlcRmNn3y16
 vGxKXXMsuFCTyJAJusUHplAE4SBTdk7xpb/R1Gu0wm0aBdxghFTznVNIE2GGgly8bm/0
 OcQf/jnZVOVzxqhr0Rl98mjRhA4GbawpUNw/ddYGWVW048zWagCQ9dRrGskueMuMNrHe
 uxGio/7JEBQFcoVwYMD2BllUXq+7NpmeAIyJkZ201NhD2zd4Ei23ENyXaKbS5mKku+w9
 v1Cg==
X-Gm-Message-State: AOJu0YwQodmxaSQ8Ek4Gb6uuN2BQp0uXJuocDgwvZw0XIxa2vYtMM6Bx
 7eV8+yknBlWU/zQA8ZIShpuUPiRvEKx7umgH9nfCAaT+Xy1BqhxKihvjafCUbS7Dhb+exGigSF4
 wp3y2OdC1rk4Rap8iNGPCWkH1b/5sQy9ldmWJgVlwX79AhSuPgVQ3EcR/Ig==
X-Google-Smtp-Source: AGHT+IE/U0DA2BFVTMtvEfFssNThBdU8HcoW2f5ylYH1uriOHuafy1sdigXyComnwBuuAPpqhajKFWNbEu80xJZosyZCfWqd1cRW
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3f03:b0:3ce:87e3:c26c with SMTP id
 e9e14a558f8ab-3cf743df88amr183524485ab.5.1737490820484; Tue, 21 Jan 2025
 12:20:20 -0800 (PST)
Date: Tue, 21 Jan 2025 12:20:20 -0800
In-Reply-To: <6745ebeb.050a0220.21d33d.001a.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67900184.050a0220.15cac.00db.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 1950a0af2d55 Merge tag 'arm64-upstream' into for-kernelci git
 tree: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot.co [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.205 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.205 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.205 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.205 listed in list.dnswl.org]
X-Headers-End: 1taKjf-0007Na-7o
X-Mailman-Approved-At: Tue, 21 Jan 2025 22:06:28 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in add_missing_indices
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
Reply-To: syzbot <syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    1950a0af2d55 Merge tag 'arm64-upstream' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=113b2424580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cd5bb525e2b2bae
dashboard link: https://syzkaller.appspot.com/bug?extid=b974bd41515f770c608b
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11d0d618580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=153b2424580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/1ebe061fa55c/disk-1950a0af.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/943902875907/vmlinux-1950a0af.xz
kernel image: https://storage.googleapis.com/syzbot-assets/9b5110e82096/Image-1950a0af.gz.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/6e79f480238f/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com

 ... Log Wrap ... Log Wrap ... Log Wrap ...
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:2649:28
index -128 is out of range for type 'struct dtslot[128]'
CPU: 1 UID: 0 PID: 6414 Comm: syz-executor126 Not tainted 6.13.0-rc7-syzkaller-g1950a0af2d55 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call trace:
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:466 (C)
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0xe4/0x150 lib/dump_stack.c:120
 dump_stack+0x1c/0x28 lib/dump_stack.c:129
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0xf8/0x148 lib/ubsan.c:429
 add_missing_indices+0x6e4/0xa8c fs/jfs/jfs_dtree.c:2649
 jfs_readdir+0x18ac/0x3030 fs/jfs/jfs_dtree.c:3019
 wrap_directory_iterator+0xa8/0xf4 fs/readdir.c:65
 shared_jfs_readdir+0x30/0x40 fs/jfs/namei.c:1540
 iterate_dir+0x408/0x648 fs/readdir.c:108
 __do_sys_getdents64 fs/readdir.c:403 [inline]
 __se_sys_getdents64 fs/readdir.c:389 [inline]
 __arm64_sys_getdents64+0x1c0/0x490 fs/readdir.c:389
 __invoke_syscall arch/arm64/kernel/syscall.c:35 [inline]
 invoke_syscall+0x98/0x2b8 arch/arm64/kernel/syscall.c:49
 el0_svc_common+0x130/0x23c arch/arm64/kernel/syscall.c:132
 do_el0_svc+0x48/0x58 arch/arm64/kernel/syscall.c:151
 el0_svc+0x54/0x168 arch/arm64/kernel/entry-common.c:744
 el0t_64_sync_handler+0x84/0x108 arch/arm64/kernel/entry-common.c:762
 el0t_64_sync+0x198/0x19c arch/arm64/kernel/entry.S:600
---[ end trace ]---
==================================================================
BUG: KASAN: slab-out-of-bounds in diWrite+0xb48/0x15cc fs/jfs/jfs_imap.c:753
Read of size 32 at addr ffff0000dea84108 by task syz-executor126/6414

CPU: 1 UID: 0 PID: 6414 Comm: syz-executor126 Not tainted 6.13.0-rc7-syzkaller-g1950a0af2d55 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call trace:
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:466 (C)
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0xe4/0x150 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0x198/0x538 mm/kasan/report.c:489
 kasan_report+0xd8/0x138 mm/kasan/report.c:602
 kasan_check_range+0x268/0x2a8 mm/kasan/generic.c:189
 __asan_memcpy+0x3c/0x84 mm/kasan/shadow.c:105
 diWrite+0xb48/0x15cc fs/jfs/jfs_imap.c:753
 txCommit+0x750/0x5504 fs/jfs/jfs_txnmgr.c:1255
 add_missing_indices+0x760/0xa8c fs/jfs/jfs_dtree.c:2663
 jfs_readdir+0x18ac/0x3030 fs/jfs/jfs_dtree.c:3019
 wrap_directory_iterator+0xa8/0xf4 fs/readdir.c:65
 shared_jfs_readdir+0x30/0x40 fs/jfs/namei.c:1540
 iterate_dir+0x408/0x648 fs/readdir.c:108
 __do_sys_getdents64 fs/readdir.c:403 [inline]
 __se_sys_getdents64 fs/readdir.c:389 [inline]
 __arm64_sys_getdents64+0x1c0/0x490 fs/readdir.c:389
 __invoke_syscall arch/arm64/kernel/syscall.c:35 [inline]
 invoke_syscall+0x98/0x2b8 arch/arm64/kernel/syscall.c:49
 el0_svc_common+0x130/0x23c arch/arm64/kernel/syscall.c:132
 do_el0_svc+0x48/0x58 arch/arm64/kernel/syscall.c:151
 el0_svc+0x54/0x168 arch/arm64/kernel/entry-common.c:744
 el0t_64_sync_handler+0x84/0x108 arch/arm64/kernel/entry-common.c:762
 el0t_64_sync+0x198/0x19c arch/arm64/kernel/entry.S:600

The buggy address belongs to the object at ffff0000dea84088
 which belongs to the cache jfs_ip of size 2232
The buggy address is located 128 bytes inside of
 allocated 2232-byte region [ffff0000dea84088, ffff0000dea84940)

The buggy address belongs to the physical page:
page: refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x11ea80
head: order:3 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0x5ffc00000000040(head|node=0|zone=2|lastcpupid=0x7ff)
page_type: f5(slab)
raw: 05ffc00000000040 ffff0000c486ec80 dead000000000122 0000000000000000
raw: 0000000000000000 00000000800d000d 00000001f5000000 0000000000000000
head: 05ffc00000000040 ffff0000c486ec80 dead000000000122 0000000000000000
head: 0000000000000000 00000000800d000d 00000001f5000000 0000000000000000
head: 05ffc00000000003 fffffdffc37aa001 ffffffffffffffff 0000000000000000
head: 0000000000000008 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff0000dea84000: 00 fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff0000dea84080: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff0000dea84100: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
                      ^
 ffff0000dea84180: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff0000dea84200: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
==================================================================

 ... Log Wrap ... Log Wrap ... Log Wrap ...


 ... Log Wrap ... Log Wrap ... Log Wrap ...


 ... Log Wrap ... Log Wrap ... Log Wrap ...

ERROR: (device loop0): jfs_readdir: JFS:Dtree error: ino = 2, bn=0, index = 0

ERROR: (device loop0): remounting filesystem as read-only
JFS: Invalid stbl[1] = -128 for inode 2, block = 0


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
