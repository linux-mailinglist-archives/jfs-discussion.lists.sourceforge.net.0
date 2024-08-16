Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E123954B46
	for <lists+jfs-discussion@lfdr.de>; Fri, 16 Aug 2024 15:43:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sexEa-0002pk-2R;
	Fri, 16 Aug 2024 13:43:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3hE-_ZgkbAF0NTUF5GG9M5KKD8.BJJBG9PN9M7JIO9IO.7JH@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sewi0-0003FO-5y for jfs-discussion@lists.sourceforge.net;
 Fri, 16 Aug 2024 13:09:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7WkmOB5HduR3wg14+jukSaAB2r1yyNeynhJJemjIT2M=; b=KhUZNx+DcCpNPNmMsjOOLPbkCb
 S43hs4mgtch12iKdEr7uuLzGIEUsIRssw0xiBRX3CZxvWEajWQZWNkMEOLkL+jYmhFfDP7Ozo8yQj
 aP7nKh8LLtsW/pyqPpAPuBiVgQ8njVpIH9tV1bLJehJOMBt+Qbk7+Ad64B9A8vL/Asyw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7WkmOB5HduR3wg14+jukSaAB2r1yyNeynhJJemjIT2M=; b=P
 fMxj+GBw2CHmMt4ZKK61f5j/DRo8u5fe8onJfISOvBiiZ5+S+jDn8fHIpdn66HEgpvsnGtHDnYJzN
 c8a1liihsak8XxLa3IcmDfPQ/EdyfjIHLNlVPV+SgqDvCRn7uUH4w8dlY871TvLZWFRQHkJL8ac/u
 jryNqA6AnAVaWHZ4=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sewhz-0007cd-4X for jfs-discussion@lists.sourceforge.net;
 Fri, 16 Aug 2024 13:09:36 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-81fa44764bbso220418139f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 16 Aug 2024 06:09:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723813764; x=1724418564;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7WkmOB5HduR3wg14+jukSaAB2r1yyNeynhJJemjIT2M=;
 b=re58QHhYL//vCZIOrkDMHKQ4QeAZryv7RYpVzmNVkKhk0ef2Zmlrk86xUaM5PdJuFm
 eukRNuvvOcrjbZRjok4KH6E/BUiB200PmwX9YCeCVHr+O8oQOQiwxGvcXFvH1cj/25Z1
 K8UAtNS3ZxIqahT/X+tUtVT0tzjdtixsrYHW1KWme2o6GuRcMEA+d5Az9vABzBbCz77h
 OjmHkfrmNfGJte88a2GnW6IxJmCbVbQ/4+CPIlg/xrpWK+0WEY8R7JS/whXJ7PG2ySzZ
 VsskbpHKq1R4wsMNXE3DBLWsQsNhPPJFNMl4ANn1QRnP6CwGF1QvIBcRnj3bgqF2q1G9
 rE7Q==
X-Gm-Message-State: AOJu0Yyf9cW+NN57bF099k2Z8up+7KI0+DAhUCEJHBPmvAbOmdjRn+rr
 qnSZhiAAc2Z1xh+BvCiauGmYCmhwDhFSpJpo9FwIvHT7VNNkrZgN4ItM++UFliKkVaBveGXPEfj
 2mW+j5DO0KHA151dYZpblHXFCZX3ZNmasiHckzqO6TxfRSFuUl10C7mE=
X-Google-Smtp-Source: AGHT+IH3qYduYq9S9r4gFf8KeMcrlw4rt+TzW6Dh8ebMaba5ccvQcq6xCupDpemjVCD1SLcKj7nzLMjtvMUukvx9WA+HC/iYbqV+
MIME-Version: 1.0
X-Received: by 2002:a05:6602:6428:b0:81f:c103:3e5f with SMTP id
 ca18e2360f4ac-824f2730046mr5160139f.3.1723813764174; Fri, 16 Aug 2024
 06:09:24 -0700 (PDT)
Date: Fri, 16 Aug 2024 06:09:24 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000012a63d061fccab65@google.com>
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
 syzbot found the following issue on: HEAD commit: d7a5aa4b3c00
 Merge tag 'perf-tools-fixes-for-v6.11-2024-08.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=105afe05980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in sa-accredit.habeas.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sewhz-0007cd-4X
X-Mailman-Approved-At: Fri, 16 Aug 2024 13:43:07 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-use-after-free Read in
 dbFreeBits
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
Reply-To: syzbot <syzbot+3c010e21296f33a5dc16@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    d7a5aa4b3c00 Merge tag 'perf-tools-fixes-for-v6.11-2024-08..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=105afe05980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=92c0312151c4e32e
dashboard link: https://syzkaller.appspot.com/bug?extid=3c010e21296f33a5dc16
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=139469f5980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=100f7713980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/64022429061b/disk-d7a5aa4b.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f4aba88f7db8/vmlinux-d7a5aa4b.xz
kernel image: https://storage.googleapis.com/syzbot-assets/120456a2d9dc/bzImage-d7a5aa4b.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/8d22e7c73cc2/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+3c010e21296f33a5dc16@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
==================================================================
BUG: KASAN: slab-use-after-free in __mutex_lock_common kernel/locking/mutex.c:587 [inline]
BUG: KASAN: slab-use-after-free in __mutex_lock+0xfe/0xd70 kernel/locking/mutex.c:752
Read of size 8 at addr ffff8880229254b0 by task syz-executor357/5216

CPU: 0 UID: 0 PID: 5216 Comm: syz-executor357 Not tainted 6.11.0-rc3-syzkaller-00156-gd7a5aa4b3c00 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:93 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:488
 kasan_report+0x143/0x180 mm/kasan/report.c:601
 __mutex_lock_common kernel/locking/mutex.c:587 [inline]
 __mutex_lock+0xfe/0xd70 kernel/locking/mutex.c:752
 dbFreeBits+0x7ea/0xd90 fs/jfs/jfs_dmap.c:2390
 dbFreeDmap fs/jfs/jfs_dmap.c:2089 [inline]
 dbFree+0x35b/0x680 fs/jfs/jfs_dmap.c:409
 dbDiscardAG+0x8a9/0xa20 fs/jfs/jfs_dmap.c:1650
 jfs_ioc_trim+0x433/0x670 fs/jfs/jfs_discard.c:100
 jfs_ioctl+0x2d0/0x3e0 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:907 [inline]
 __se_sys_ioctl+0xfc/0x170 fs/ioctl.c:893
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f4b8c992809
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 81 18 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f4b8c948218 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007f4b8ca1f6c8 RCX: 00007f4b8c992809
RDX: 0000000020000680 RSI: 00000000c0185879 RDI: 0000000000000005
RBP: 00007f4b8ca1f6c0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f4b8c9ec0e4
R13: 00007f4b8c9e607e R14: 0037656c69662f2e R15: 0000200002000001
 </TASK>

Allocated by task 5216:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 poison_kmalloc_redzone mm/kasan/common.c:370 [inline]
 __kasan_kmalloc+0x98/0xb0 mm/kasan/common.c:387
 kasan_kmalloc include/linux/kasan.h:211 [inline]
 __kmalloc_cache_noprof+0x19c/0x2c0 mm/slub.c:4189
 kmalloc_noprof include/linux/slab.h:681 [inline]
 dbMount+0x58/0x9b0 fs/jfs/jfs_dmap.c:164
 jfs_mount+0x1e0/0x830 fs/jfs/jfs_mount.c:121
 jfs_fill_super+0x59c/0xc50 fs/jfs/super.c:556
 mount_bdev+0x20a/0x2d0 fs/super.c:1679
 legacy_get_tree+0xee/0x190 fs/fs_context.c:662
 vfs_get_tree+0x90/0x2a0 fs/super.c:1800
 do_new_mount+0x2be/0xb40 fs/namespace.c:3472
 do_mount fs/namespace.c:3812 [inline]
 __do_sys_mount fs/namespace.c:4020 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:3997
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Freed by task 5218:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 kasan_save_free_info+0x40/0x50 mm/kasan/generic.c:579
 poison_slab_object+0xe0/0x150 mm/kasan/common.c:240
 __kasan_slab_free+0x37/0x60 mm/kasan/common.c:256
 kasan_slab_free include/linux/kasan.h:184 [inline]
 slab_free_hook mm/slub.c:2252 [inline]
 slab_free mm/slub.c:4473 [inline]
 kfree+0x149/0x360 mm/slub.c:4594
 dbUnmount+0x11d/0x190 fs/jfs/jfs_dmap.c:278
 jfs_mount_rw+0x4ac/0x6a0 fs/jfs/jfs_mount.c:247
 jfs_remount+0x3d1/0x6b0 fs/jfs/super.c:454
 reconfigure_super+0x445/0x880 fs/super.c:1083
 vfs_cmd_reconfigure fs/fsopen.c:263 [inline]
 vfs_fsconfig_locked fs/fsopen.c:292 [inline]
 __do_sys_fsconfig fs/fsopen.c:473 [inline]
 __se_sys_fsconfig+0xb6e/0xf80 fs/fsopen.c:345
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

The buggy address belongs to the object at ffff888022925000
 which belongs to the cache kmalloc-2k of size 2048
The buggy address is located 1200 bytes inside of
 freed 2048-byte region [ffff888022925000, ffff888022925800)

The buggy address belongs to the physical page:
page: refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x22920
head: order:3 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
anon flags: 0xfff00000000040(head|node=0|zone=1|lastcpupid=0x7ff)
page_type: 0xfdffffff(slab)
raw: 00fff00000000040 ffff888015442000 0000000000000000 dead000000000001
raw: 0000000000000000 0000000080080008 00000001fdffffff 0000000000000000
head: 00fff00000000040 ffff888015442000 0000000000000000 dead000000000001
head: 0000000000000000 0000000080080008 00000001fdffffff 0000000000000000
head: 00fff00000000003 ffffea00008a4801 ffffffffffffffff 0000000000000000
head: 0000000000000008 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask 0xd20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 61, tgid 61 (kworker/u8:4), ts 9893748899, free_ts 0
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x1f3/0x230 mm/page_alloc.c:1493
 prep_new_page mm/page_alloc.c:1501 [inline]
 get_page_from_freelist+0x2e4c/0x2f10 mm/page_alloc.c:3442
 __alloc_pages_noprof+0x256/0x6c0 mm/page_alloc.c:4700
 __alloc_pages_node_noprof include/linux/gfp.h:269 [inline]
 alloc_pages_node_noprof include/linux/gfp.h:296 [inline]
 alloc_slab_page+0x5f/0x120 mm/slub.c:2321
 allocate_slab+0x5a/0x2f0 mm/slub.c:2484
 new_slab mm/slub.c:2537 [inline]
 ___slab_alloc+0xcd1/0x14b0 mm/slub.c:3723
 __slab_alloc+0x58/0xa0 mm/slub.c:3813
 __slab_alloc_node mm/slub.c:3866 [inline]
 slab_alloc_node mm/slub.c:4025 [inline]
 __do_kmalloc_node mm/slub.c:4157 [inline]
 __kmalloc_noprof+0x25a/0x400 mm/slub.c:4170
 kmalloc_noprof include/linux/slab.h:685 [inline]
 kzalloc_noprof include/linux/slab.h:807 [inline]
 scsi_alloc_target+0x132/0xca0 drivers/scsi/scsi_scan.c:503
 __scsi_scan_target+0x17d/0x1080 drivers/scsi/scsi_scan.c:1740
 scsi_scan_channel drivers/scsi/scsi_scan.c:1845 [inline]
 scsi_scan_host_selected+0x37e/0x690 drivers/scsi/scsi_scan.c:1874
 do_scsi_scan_host drivers/scsi/scsi_scan.c:2013 [inline]
 do_scan_async+0x138/0x7a0 drivers/scsi/scsi_scan.c:2023
 async_run_entry_fn+0xa8/0x420 kernel/async.c:129
 process_one_work kernel/workqueue.c:3231 [inline]
 process_scheduled_works+0xa2c/0x1830 kernel/workqueue.c:3312
 worker_thread+0x86d/0xd40 kernel/workqueue.c:3390
 kthread+0x2f0/0x390 kernel/kthread.c:389
page_owner free stack trace missing

Memory state around the buggy address:
 ffff888022925380: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888022925400: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff888022925480: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                     ^
 ffff888022925500: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888022925580: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
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
