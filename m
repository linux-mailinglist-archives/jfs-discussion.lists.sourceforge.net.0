Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D994685BDE8
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Feb 2024 14:57:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rcQcU-0002At-Qm;
	Tue, 20 Feb 2024 13:57:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3_UnRZQkbAAw4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rbUhR-0000j0-7A for jfs-discussion@lists.sourceforge.net;
 Sun, 18 Feb 2024 00:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j7CMKaRMfhFX+v2G9CiAC8fkL6ixX+GdxcXL1z+0VGs=; b=kfwg/s/66A8L7wpnskZ2LYe1Co
 mH1xHCPwP9L7oiXC/WWpOf8zMXVPyHu8BkQZY0h78O6+AU7jNhdmJLfgvFrFXFQXSyeGQzf4P4nkZ
 w953OFArsEHqCW+w4qWc198yapTxoFRg62Z2dX4QRUQurmy3efXQXTN+aGTxg7f/lJUc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j7CMKaRMfhFX+v2G9CiAC8fkL6ixX+GdxcXL1z+0VGs=; b=N
 Fr4O3MLwb4ptKzpUrv67zQjzslaubcdIs6NfFEtoUqoNuwexnY6hoi9XaOBlgQ1co9+oc420HUKFF
 Yn+jxyfO/nr9ZXdnsljwkLVbrL+K6/jQ6ZUYO5sKQ4pwN/5co6+IHLX2pfQy3yfiETNnNIbdT8m6b
 qoLNJKgSMOU/5EdA=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rbUhO-00050R-Sr for jfs-discussion@lists.sourceforge.net;
 Sun, 18 Feb 2024 00:06:29 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-364ff869140so20691995ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 17 Feb 2024 16:06:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708214781; x=1708819581;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=j7CMKaRMfhFX+v2G9CiAC8fkL6ixX+GdxcXL1z+0VGs=;
 b=wpQibDYHkb96ZpI9Pn5emyQ8b1A1WehQNjJF21dTBspiuPtO5xSZnfbaT9gZetuog/
 cxfIao4qTFYGpWAgTwOEOh9vvFGW3H7iR9IQOdwx225+mKzJl9DxvErCvPTS59ov3JVI
 kUS+6rn/zap6MF/OUpikqPaQ6EIZAMxEZQNxRFueGCrlr7MVLmg+UD6r85aDPD4ZISZu
 d2UF7AnY49Y+PkP534qPbr3IZ/fS9yJNbBsLbkNNeZf3m8DjckDsZkV+x0coYu2PhDee
 H7ZQO0bvU9TgwsK5L3gJGnCuM61JVfeteq3fJYk4Dpx0IIjE3guDGnqUk7aoIzxOcb2M
 jduQ==
X-Gm-Message-State: AOJu0Yyw5RnklLVntjcvd7Clvml3xpOJAPXQoM3B91f0TAN5998hewu/
 XWskXgNcsf0U+SS5FPf0mhHXjpqPtKw8yLd6FW+0RB7Lov2SNyBxUeq7szqGXaAuYc4H9TiPByX
 N04eOoTJvomFwYE96NGLXlNW84L4bI1ZcO0rArwwJspe9akUoXivE/09P9g==
X-Google-Smtp-Source: AGHT+IF5T/qirDu2nTmZv8Y18h0wnmTMxZZYv7QKYNahp343uFmJal0PeSCH9P9fiRJ5rUzFOeV0IHhW3HD/Yq6EgnqBJda+del0
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1b02:b0:365:2290:7785 with SMTP id
 i2-20020a056e021b0200b0036522907785mr127521ilv.0.1708214781278; Sat, 17 Feb
 2024 16:06:21 -0800 (PST)
Date: Sat, 17 Feb 2024 16:06:21 -0800
In-Reply-To: <000000000000a7761e0610c754b2@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000003d021006119cbf46@google.com>
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
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: ced590523156 Merge tag 'driver-core-6.8-rc5' of git://git...
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=15ee1872180000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rbUhO-00050R-Sr
X-Mailman-Approved-At: Tue, 20 Feb 2024 13:57:13 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-use-after-free
 Read in jfs_syncpt
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
Reply-To: syzbot <syzbot+c244f4a09ca85dd2ebc1@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    ced590523156 Merge tag 'driver-core-6.8-rc5' of git://git...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=15ee1872180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=64757d4899f04e1b
dashboard link: https://syzkaller.appspot.com/bug?extid=c244f4a09ca85dd2ebc1
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=118f3658180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=119df694180000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-ced59052.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/268f9dfca97a/vmlinux-ced59052.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d95591974e31/bzImage-ced59052.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/c890e5e09b22/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c244f4a09ca85dd2ebc1@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: slab-use-after-free in __mutex_waiter_is_first kernel/locking/mutex.c:197 [inline]
BUG: KASAN: slab-use-after-free in __mutex_lock_common kernel/locking/mutex.c:686 [inline]
BUG: KASAN: slab-use-after-free in __mutex_lock+0x8f4/0x9d0 kernel/locking/mutex.c:752
Read of size 8 at addr ffff8880272d2908 by task jfsCommit/131

CPU: 3 PID: 131 Comm: jfsCommit Not tainted 6.8.0-rc4-syzkaller-00388-gced590523156 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.2-debian-1.16.2-1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd9/0x1b0 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0xc4/0x620 mm/kasan/report.c:488
 kasan_report+0xda/0x110 mm/kasan/report.c:601
 __mutex_waiter_is_first kernel/locking/mutex.c:197 [inline]
 __mutex_lock_common kernel/locking/mutex.c:686 [inline]
 __mutex_lock+0x8f4/0x9d0 kernel/locking/mutex.c:752
 jfs_syncpt+0x2a/0xa0 fs/jfs/jfs_logmgr.c:1039
 txEnd+0x30d/0x5a0 fs/jfs/jfs_txnmgr.c:549
 txLazyCommit fs/jfs/jfs_txnmgr.c:2684 [inline]
 jfs_lazycommit+0x77d/0xb20 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2c6/0x3b0 kernel/kthread.c:388
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1b/0x30 arch/x86/entry/entry_64.S:242
 </TASK>

Allocated by task 5178:
 kasan_save_stack+0x33/0x60 mm/kasan/common.c:47
 kasan_save_track+0x14/0x30 mm/kasan/common.c:68
 poison_kmalloc_redzone mm/kasan/common.c:372 [inline]
 __kasan_kmalloc+0xaa/0xb0 mm/kasan/common.c:389
 kmalloc include/linux/slab.h:590 [inline]
 kzalloc include/linux/slab.h:711 [inline]
 open_inline_log fs/jfs/jfs_logmgr.c:1159 [inline]
 lmLogOpen+0x571/0x1410 fs/jfs/jfs_logmgr.c:1069
 jfs_mount_rw+0x2ea/0x700 fs/jfs/jfs_mount.c:257
 jfs_fill_super+0x9d6/0xd20 fs/jfs/super.c:565
 mount_bdev+0x1e3/0x2d0 fs/super.c:1663
 legacy_get_tree+0x109/0x220 fs/fs_context.c:662
 vfs_get_tree+0x8f/0x380 fs/super.c:1784
 do_new_mount fs/namespace.c:3352 [inline]
 path_mount+0x14ea/0x1f20 fs/namespace.c:3679
 do_mount fs/namespace.c:3692 [inline]
 __do_sys_mount fs/namespace.c:3898 [inline]
 __se_sys_mount fs/namespace.c:3875 [inline]
 __x64_sys_mount+0x297/0x320 fs/namespace.c:3875
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xd5/0x270 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x6f/0x77

Freed by task 5177:
 kasan_save_stack+0x33/0x60 mm/kasan/common.c:47
 kasan_save_track+0x14/0x30 mm/kasan/common.c:68
 kasan_save_free_info+0x3f/0x60 mm/kasan/generic.c:640
 poison_slab_object mm/kasan/common.c:241 [inline]
 __kasan_slab_free+0x121/0x1c0 mm/kasan/common.c:257
 kasan_slab_free include/linux/kasan.h:184 [inline]
 slab_free_hook mm/slub.c:2121 [inline]
 slab_free mm/slub.c:4299 [inline]
 kfree+0x124/0x370 mm/slub.c:4409
 lmLogClose+0x585/0x710 fs/jfs/jfs_logmgr.c:1461
 jfs_umount+0x2f0/0x440 fs/jfs/jfs_umount.c:114
 jfs_put_super+0x88/0x1d0 fs/jfs/super.c:194
 generic_shutdown_super+0x159/0x3d0 fs/super.c:646
 kill_block_super+0x3b/0x90 fs/super.c:1680
 deactivate_locked_super+0xbe/0x1a0 fs/super.c:477
 deactivate_super+0xde/0x100 fs/super.c:510
 cleanup_mnt+0x222/0x450 fs/namespace.c:1267
 task_work_run+0x14f/0x250 kernel/task_work.c:180
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:108 [inline]
 exit_to_user_mode_prepare include/linux/entry-common.h:328 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:201 [inline]
 syscall_exit_to_user_mode+0x281/0x2b0 kernel/entry/common.c:212
 do_syscall_64+0xe5/0x270 arch/x86/entry/common.c:89
 entry_SYSCALL_64_after_hwframe+0x6f/0x77

The buggy address belongs to the object at ffff8880272d2800
 which belongs to the cache kmalloc-1k of size 1024
The buggy address is located 264 bytes inside of
 freed 1024-byte region [ffff8880272d2800, ffff8880272d2c00)

The buggy address belongs to the physical page:
page:ffffea00009cb400 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x272d0
head:ffffea00009cb400 order:3 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0xfff00000000840(slab|head|node=0|zone=1|lastcpupid=0x7ff)
page_type: 0xffffffff()
raw: 00fff00000000840 ffff888014c42dc0 dead000000000100 dead000000000122
raw: 0000000000000000 0000000080100010 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask 0xd20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 4910, tgid 4910 (dhcpcd-run-hook), ts 31763109865, free_ts 31737584223
 set_page_owner include/linux/page_owner.h:31 [inline]
 post_alloc_hook+0x2d4/0x350 mm/page_alloc.c:1533
 prep_new_page mm/page_alloc.c:1540 [inline]
 get_page_from_freelist+0xa28/0x3780 mm/page_alloc.c:3311
 __alloc_pages+0x22f/0x2440 mm/page_alloc.c:4567
 __alloc_pages_node include/linux/gfp.h:238 [inline]
 alloc_pages_node include/linux/gfp.h:261 [inline]
 alloc_slab_page mm/slub.c:2190 [inline]
 allocate_slab mm/slub.c:2354 [inline]
 new_slab+0xcc/0x3a0 mm/slub.c:2407
 ___slab_alloc+0x4af/0x19a0 mm/slub.c:3540
 __slab_alloc.constprop.0+0x56/0xb0 mm/slub.c:3625
 __slab_alloc_node mm/slub.c:3678 [inline]
 slab_alloc_node mm/slub.c:3850 [inline]
 __do_kmalloc_node mm/slub.c:3980 [inline]
 __kmalloc+0x3b8/0x440 mm/slub.c:3994
 kmalloc include/linux/slab.h:594 [inline]
 load_elf_phdrs+0x103/0x210 fs/binfmt_elf.c:526
 load_elf_binary+0x14dc/0x4e40 fs/binfmt_elf.c:955
 search_binary_handler fs/exec.c:1783 [inline]
 exec_binprm fs/exec.c:1825 [inline]
 bprm_execve fs/exec.c:1877 [inline]
 bprm_execve+0x70a/0x1980 fs/exec.c:1853
 do_execveat_common.isra.0+0x5cf/0x750 fs/exec.c:1984
 do_execve fs/exec.c:2058 [inline]
 __do_sys_execve fs/exec.c:2134 [inline]
 __se_sys_execve fs/exec.c:2129 [inline]
 __x64_sys_execve+0x8c/0xb0 fs/exec.c:2129
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xd5/0x270 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x6f/0x77
page last free pid 4909 tgid 4909 stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1140 [inline]
 free_unref_page_prepare+0x527/0xb10 mm/page_alloc.c:2346
 free_unref_page+0x33/0x3c0 mm/page_alloc.c:2486
 qlink_free mm/kasan/quarantine.c:160 [inline]
 qlist_free_all+0x58/0x150 mm/kasan/quarantine.c:176
 kasan_quarantine_reduce+0x192/0x1e0 mm/kasan/quarantine.c:283
 __kasan_slab_alloc+0x69/0x90 mm/kasan/common.c:324
 kasan_slab_alloc include/linux/kasan.h:201 [inline]
 slab_post_alloc_hook mm/slub.c:3813 [inline]
 slab_alloc_node mm/slub.c:3860 [inline]
 kmem_cache_alloc+0x136/0x320 mm/slub.c:3867
 getname_flags.part.0+0x50/0x4f0 fs/namei.c:140
 getname_flags include/linux/audit.h:322 [inline]
 getname+0x90/0xe0 fs/namei.c:219
 do_sys_openat2+0x104/0x1e0 fs/open.c:1398
 do_sys_open fs/open.c:1419 [inline]
 __do_sys_openat fs/open.c:1435 [inline]
 __se_sys_openat fs/open.c:1430 [inline]
 __x64_sys_openat+0x175/0x210 fs/open.c:1430
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xd5/0x270 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x6f/0x77

Memory state around the buggy address:
 ffff8880272d2800: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff8880272d2880: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff8880272d2900: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                      ^
 ffff8880272d2980: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff8880272d2a00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
