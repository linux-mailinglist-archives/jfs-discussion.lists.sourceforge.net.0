Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3CE8B2A9C
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Apr 2024 23:23:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s06Yb-0002lo-Vh;
	Thu, 25 Apr 2024 21:23:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3vcYqZgkbAC4cijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1s06MS-0004m3-QP for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 21:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Awl4G1u/auHXjLB5NOihyiXmRDtZVea07DBWxvT5zMA=; b=EUlpHawLGzKpweV0uvofRmMnww
 Me/qh3Fubgp3z7A1JUFqBhJwyXLFT96r3udo909KeX012JuJGYA5CvgVUUgyp2LEfbFJi2XDXP3V1
 9DXLnTAHFuOjxkp/RIN8WP3/dBbQzCAmjqkXlj0iRI32fGRGkE3gIqpuydbymEOhmu6E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Awl4G1u/auHXjLB5NOihyiXmRDtZVea07DBWxvT5zMA=; b=A
 mAP6S42x9Fg4cUg4tFVBG1/sN68tYa+UekMI0Flm17WF8LuVz3eghwLF+e+D2IqhK3iFQJFVd7GE8
 necl3k0mXcSPcJ9bqpJvWT0IfC8PGfmWooZuPdWaLe1WQTMwOpLfbjl18f3cCFOJsmSEZaE6bYfE1
 Xt6V/wRUhrqqb+rE=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s06MR-0000JA-9C for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 21:10:32 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-36c0f8200ffso15575065ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Apr 2024 14:10:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714079421; x=1714684221;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Awl4G1u/auHXjLB5NOihyiXmRDtZVea07DBWxvT5zMA=;
 b=rwXHnW53dJoniffMjEJ7txsSjO6SgiYIuzRP6saf18DNw3fKOp1JlOlJtHI/Gz4AZb
 PZdRFs22PzJJkpFKzcLgkmQccMU1jJb+fDrP6soiu9+swjz0M74FPStZBkFBOpvte56m
 Q1SfoTcH24amYcrQKhgoIuqi1jdv2TpkMLsBpfGpUuTv2X5yPfi4lPzQ75gw90J2Xo4c
 Gpf1NaCSqajbC3mXvWwE7I2875iou+5kA7q404etU+skL/+WX7eOX2UhMyd6ioZFPbJC
 L7aJKK5dBQEUdtfi70JzXBSC16GrTXi5RIdVZRv6MHwcEE5x6Jytv9WsEWq/3mIRGQMs
 hKnQ==
X-Gm-Message-State: AOJu0YyWKVh62ovP7ktaD0vDk50GWCAQ79jmeSptFiN/uJqpvlCkGl6r
 +5lgnW2Q7HDFhV0CSwkczxvgSjLqek4lb7PvRewk1GfWx5wqHw31GXt4aD4Y4UN6I2fi0GhjlLF
 tbt2HicYylKHxZLntX2T8wvetXsDB0RXbeDLTpKlyr08fGLEBgpMAC30=
X-Google-Smtp-Source: AGHT+IGJ8AXUicSt79v4XiNYxjpZPaCx+uwJKmj7BiQOLsTnDp6HDz68qIgWNU76R6KyqYS8xao9MyZZIYDndneXHI6f8kYwKT8X
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3008:b0:486:ec11:3b8a with SMTP id
 r8-20020a056638300800b00486ec113b8amr40107jak.6.1714079421010; Thu, 25 Apr
 2024 14:10:21 -0700 (PDT)
Date: Thu, 25 Apr 2024 14:10:20 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000001ab730616f23768@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 7b4f2bc91c15
 Add linux-next specific files for 20240418 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=1181b910980000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1s06MR-0000JA-9C
X-Mailman-Approved-At: Thu, 25 Apr 2024 21:23:05 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Write in
 diWrite
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
Reply-To: syzbot <syzbot+aa6df9d3b383bf5f047f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7b4f2bc91c15 Add linux-next specific files for 20240418
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=1181b910980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ae644165a243bf62
dashboard link: https://syzkaller.appspot.com/bug?extid=aa6df9d3b383bf5f047f
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=108f21c7180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=128532bb180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/524a18e6c5be/disk-7b4f2bc9.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/029f1b84d653/vmlinux-7b4f2bc9.xz
kernel image: https://storage.googleapis.com/syzbot-assets/c02d1542e886/bzImage-7b4f2bc9.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/b09f946202a4/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10dec06b180000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=12dec06b180000
console output: https://syzkaller.appspot.com/x/log.txt?x=14dec06b180000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+aa6df9d3b383bf5f047f@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
==================================================================
BUG: KASAN: use-after-free in diWrite+0xde3/0x19b0 fs/jfs/jfs_imap.c:750
Write of size 32 at addr ffff888076cee0c0 by task syz-executor949/5083

CPU: 1 PID: 5083 Comm: syz-executor949 Not tainted 6.9.0-rc4-next-20240418-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:488
 kasan_report+0x143/0x180 mm/kasan/report.c:601
 kasan_check_range+0x282/0x290 mm/kasan/generic.c:189
 __asan_memcpy+0x40/0x70 mm/kasan/shadow.c:106
 diWrite+0xde3/0x19b0 fs/jfs/jfs_imap.c:750
 txCommit+0xa1a/0x6a20 fs/jfs/jfs_txnmgr.c:1255
 add_missing_indices fs/jfs/jfs_dtree.c:2661 [inline]
 jfs_readdir+0x28e9/0x4660 fs/jfs/jfs_dtree.c:3009
 wrap_directory_iterator+0x94/0xe0 fs/readdir.c:67
 iterate_dir+0x65e/0x820 fs/readdir.c:110
 __do_sys_getdents64 fs/readdir.c:409 [inline]
 __se_sys_getdents64+0x20d/0x4f0 fs/readdir.c:394
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf5/0x240 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7ff57c567679
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fffddcb47e8 EFLAGS: 00000246 ORIG_RAX: 00000000000000d9
RAX: ffffffffffffffda RBX: 00007fffddcb49b8 RCX: 00007ff57c567679
RDX: 000000000000005d RSI: 00000000200002c0 RDI: 0000000000000005
RBP: 00007ff57c5e0610 R08: 0000000000000000 R09: 00007fffddcb49b8
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000001
R13: 00007fffddcb49a8 R14: 0000000000000001 R15: 0000000000000001
 </TASK>

The buggy address belongs to the physical page:
page: refcount:0 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x76cee
flags: 0xfff80000000000(node=0|zone=1|lastcpupid=0xfff)
raw: 00fff80000000000 ffffea0001db3bc8 ffffea0001dcea48 0000000000000000
raw: 0000000000000000 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as freed
page last allocated via order 0, migratetype Unmovable, gfp_mask 0x500cc2(GFP_HIGHUSER|__GFP_ACCOUNT), pid 5078, tgid 397447660 (sshd), ts 5078, free_ts 51945391130
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x1f3/0x230 mm/page_alloc.c:1476
 prep_new_page mm/page_alloc.c:1484 [inline]
 get_page_from_freelist+0x2ce2/0x2d90 mm/page_alloc.c:3446
 __alloc_pages_noprof+0x256/0x6c0 mm/page_alloc.c:4704
 alloc_pages_mpol_noprof+0x3e8/0x680 mm/mempolicy.c:2265
 pipe_write+0x657/0x1a40 fs/pipe.c:513
 new_sync_write fs/read_write.c:497 [inline]
 vfs_write+0xa72/0xc90 fs/read_write.c:590
 ksys_write+0x1a0/0x2c0 fs/read_write.c:643
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf5/0x240 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
page last free pid 5080 tgid 5080 stack trace:
 reset_page_owner include/linux/page_owner.h:25 [inline]
 free_pages_prepare mm/page_alloc.c:1096 [inline]
 free_unref_page+0xd22/0xea0 mm/page_alloc.c:2609
 __folio_put+0x3b9/0x620 mm/swap.c:129
 pipe_buf_release include/linux/pipe_fs_i.h:219 [inline]
 pipe_update_tail fs/pipe.c:224 [inline]
 pipe_read+0x6f2/0x13e0 fs/pipe.c:344
 new_sync_read fs/read_write.c:395 [inline]
 vfs_read+0x9c4/0xbd0 fs/read_write.c:476
 ksys_read+0x1a0/0x2c0 fs/read_write.c:619
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf5/0x240 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Memory state around the buggy address:
 ffff888076cedf80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff888076cee000: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>ffff888076cee080: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
                                           ^
 ffff888076cee100: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff888076cee180: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

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
