Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F799FFA7B
	for <lists+jfs-discussion@lfdr.de>; Thu,  2 Jan 2025 15:26:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tTM8u-0001JA-9b;
	Thu, 02 Jan 2025 14:25:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3oQN2ZwkbAMI067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tTBbT-0006vW-UF for jfs-discussion@lists.sourceforge.net;
 Thu, 02 Jan 2025 03:10:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NSwPXv2rHg1HtQgjuv8cmGzHCYVU9HhW04UetACp9kY=; b=I6ZWGacrs3T+pQorbbiTJdjzHo
 YBCYhLNcd0km/TMwfe67nHrrYP7xIK0EVyXORFgMf7hQ1q8I9poAIKKGWLtA1hFSwn/rKtvy9O59p
 JlCfGuXdhzsKzjTQOzHrRMqIA/ET8/KbHOMtENxJ/L/lvn2/f6kFWFEKtLBtnk0GVmDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NSwPXv2rHg1HtQgjuv8cmGzHCYVU9HhW04UetACp9kY=; b=h
 wB2qJKXNTR36Rym+ptKmbj6t34MsycIFCmYgi0A0yQ1MXK1tsw8JtvZNEp8SWTKTBPDIR9fMYLBHO
 dt+KY5PTgtohGffDvrR7PyA+o/fZhfTX4xa7ZoOLMe76B5je76c8UoU9l6JIqcpuhtVpnyueXWot8
 Ui79toLJtkhwAoZE=;
Received: from mail-il1-f206.google.com ([209.85.166.206])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tTBbS-0001Xx-Vm for jfs-discussion@lists.sourceforge.net;
 Thu, 02 Jan 2025 03:10:31 +0000
Received: by mail-il1-f206.google.com with SMTP id
 e9e14a558f8ab-3a9d303a5ccso220507495ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 01 Jan 2025 19:10:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735787425; x=1736392225;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NSwPXv2rHg1HtQgjuv8cmGzHCYVU9HhW04UetACp9kY=;
 b=G2umMalZ+6OhIEBOihMB3upuogqygsbF2v8tAS9zqbm0RgXy1vsLQzX92WN61yh7hL
 /5giHVfh7WAYcQano7cByye2y25APisOl7Gr2oYiub/mPd5kvjewBCnC8194xJWgtR/4
 sSbbPFpuPA6RexLnWdHr7/BydV7nfgccYAYEIGgmClOjNQQuX7qUksfzSyPq99FgzJYQ
 GQCsLjvLwubWapEkuwJcuzDr9wXkvIL6nfEYtslR3kxERaqbeMZXba4HGcasRiktsG1C
 eRcDBH6PYoE1gL7+hZNgn00ow0r76hfH3HptndSNc7lXaamspHnDTlQWx5TeohU8aJt2
 QNZA==
X-Gm-Message-State: AOJu0YzY6EHDuk2e1WeV/jwERQW8hZ2thCHvqrXlhTF1cVNwZR/o9cH0
 eW1IQFoiZbzvtOLPUCg35ItUylSJlY13Riyvcqs+YZ3wCrP/JX6mr1zD1687fw1/WG/E5tuXkij
 Q/cMVt5u5fBT/Bn0WnrWKGmL0fm7pTKRVECB6zCdX1uw3QHS4p7AtHtkmXw==
X-Google-Smtp-Source: AGHT+IHED4wcq5GIx2HUgY8yQmTD/7aE8sh8n9S1laNH+Q5PSWHqr8kaL8vzwZQ0lDMKxELXQSley6DBsemKST6OvfqY8Me+f18l
MIME-Version: 1.0
X-Received: by 2002:a92:b710:0:b0:3a7:e732:471b with SMTP id
 e9e14a558f8ab-3c4fd09b311mr257592695ab.11.1735787425266; Wed, 01 Jan 2025
 19:10:25 -0800 (PST)
Date: Wed, 01 Jan 2025 19:10:25 -0800
In-Reply-To: <6775f3b1.050a0220.3a8527.0032.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <677603a1.050a0220.3a8527.0034.GAE@google.com>
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
 HEAD commit: 56e6a3499e14 Merge tag 'trace-v6.13-rc5' of git://git.kern..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1765b818580000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.206 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.206 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.206 listed in bl.score.senderscore.com]
X-Headers-End: 1tTBbS-0001Xx-Vm
X-Mailman-Approved-At: Thu, 02 Jan 2025 14:25:43 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-use-after-free
 Read in jfs_readdir
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
Reply-To: syzbot <syzbot+a98891ce2318fe7baf05@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    56e6a3499e14 Merge tag 'trace-v6.13-rc5' of git://git.kern..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1765b818580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba7cde9482d6bb6
dashboard link: https://syzkaller.appspot.com/bug?extid=a98891ce2318fe7baf05
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=126136df980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=171d3af8580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e5f33d8e3542/disk-56e6a349.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b53906ddb840/vmlinux-56e6a349.xz
kernel image: https://storage.googleapis.com/syzbot-assets/115963cd9410/bzImage-56e6a349.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/b0dae106c522/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a98891ce2318fe7baf05@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: slab-use-after-free in jfs_readdir+0x1361/0x3c50 fs/jfs/jfs_dtree.c:2869
Read of size 8 at addr ffff88807510a128 by task syz-executor140/5820

CPU: 0 UID: 0 PID: 5820 Comm: syz-executor140 Not tainted 6.13.0-rc5-syzkaller-00006-g56e6a3499e14 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:489
 kasan_report+0x143/0x180 mm/kasan/report.c:602
 jfs_readdir+0x1361/0x3c50 fs/jfs/jfs_dtree.c:2869
 wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents fs/readdir.c:322 [inline]
 __se_sys_getdents+0x1fd/0x4e0 fs/readdir.c:308
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f5da6b29199
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffef1871898 EFLAGS: 00000246 ORIG_RAX: 000000000000004e
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f5da6b29199
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000004
RBP: 0000000000000000 R08: 00007ffef18718d0 R09: 00007ffef18718d0
R10: 00007ffef18718d0 R11: 0000000000000246 R12: 00007ffef18718d0
R13: 00007ffef1871b58 R14: 431bde82d7b634db R15: 00007f5da6b7203b
 </TASK>

Allocated by task 5820:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 unpoison_slab_object mm/kasan/common.c:319 [inline]
 __kasan_slab_alloc+0x66/0x80 mm/kasan/common.c:345
 kasan_slab_alloc include/linux/kasan.h:250 [inline]
 slab_post_alloc_hook mm/slub.c:4119 [inline]
 slab_alloc_node mm/slub.c:4168 [inline]
 kmem_cache_alloc_noprof+0x1d9/0x380 mm/slub.c:4175
 mempool_alloc_noprof+0x197/0x5a0 mm/mempool.c:402
 alloc_metapage fs/jfs/jfs_metapage.c:182 [inline]
 __get_metapage+0x5f4/0xdc0 fs/jfs/jfs_metapage.c:652
 dtSplitRoot+0x2af/0x1930 fs/jfs/jfs_dtree.c:1909
 dtSplitUp fs/jfs/jfs_dtree.c:992 [inline]
 dtInsert+0x12cd/0x6c10 fs/jfs/jfs_dtree.c:870
 jfs_mkdir+0x7fb/0xba0 fs/jfs/namei.c:270
 vfs_mkdir+0x2f9/0x4f0 fs/namei.c:4311
 do_mkdirat+0x264/0x3a0 fs/namei.c:4334
 __do_sys_mkdir fs/namei.c:4354 [inline]
 __se_sys_mkdir fs/namei.c:4352 [inline]
 __x64_sys_mkdir+0x6c/0x80 fs/namei.c:4352
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Freed by task 5820:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 kasan_save_free_info+0x40/0x50 mm/kasan/generic.c:582
 poison_slab_object mm/kasan/common.c:247 [inline]
 __kasan_slab_free+0x59/0x70 mm/kasan/common.c:264
 kasan_slab_free include/linux/kasan.h:233 [inline]
 slab_free_hook mm/slub.c:2353 [inline]
 slab_free mm/slub.c:4613 [inline]
 kmem_cache_free+0x195/0x410 mm/slub.c:4715
 free_metapage fs/jfs/jfs_metapage.c:197 [inline]
 drop_metapage fs/jfs/jfs_metapage.c:234 [inline]
 release_metapage+0x831/0xa90 fs/jfs/jfs_metapage.c:784
 dtReadNext fs/jfs/jfs_dtree.c:3189 [inline]
 jfs_readdir+0x102d/0x3c50 fs/jfs/jfs_dtree.c:2862
 wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents fs/readdir.c:322 [inline]
 __se_sys_getdents+0x1fd/0x4e0 fs/readdir.c:308
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

The buggy address belongs to the object at ffff88807510a0f8
 which belongs to the cache jfs_mp of size 184
The buggy address is located 48 bytes inside of
 freed 184-byte region [ffff88807510a0f8, ffff88807510a1b0)

The buggy address belongs to the physical page:
page: refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x7510a
flags: 0xfff00000000000(node=0|zone=1|lastcpupid=0x7ff)
page_type: f5(slab)
raw: 00fff00000000000 ffff8881476dc8c0 dead000000000122 0000000000000000
raw: 0000000000000000 0000000080100010 00000001f5000000 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 0, migratetype Unmovable, gfp_mask 0xd2800(GFP_NOWAIT|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 5820, tgid 5820 (syz-executor140), ts 62287500316, free_ts 55275390556
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x1f3/0x230 mm/page_alloc.c:1558
 prep_new_page mm/page_alloc.c:1566 [inline]
 get_page_from_freelist+0x3651/0x37a0 mm/page_alloc.c:3476
 __alloc_pages_noprof+0x292/0x710 mm/page_alloc.c:4753
 alloc_pages_mpol_noprof+0x3e8/0x680 mm/mempolicy.c:2269
 alloc_slab_page+0x6a/0x110 mm/slub.c:2423
 allocate_slab+0x5a/0x2b0 mm/slub.c:2589
 new_slab mm/slub.c:2642 [inline]
 ___slab_alloc+0xc27/0x14a0 mm/slub.c:3830
 __slab_alloc+0x58/0xa0 mm/slub.c:3920
 __slab_alloc_node mm/slub.c:3995 [inline]
 slab_alloc_node mm/slub.c:4156 [inline]
 kmem_cache_alloc_noprof+0x268/0x380 mm/slub.c:4175
 mempool_alloc_noprof+0x197/0x5a0 mm/mempool.c:402
 alloc_metapage fs/jfs/jfs_metapage.c:182 [inline]
 __get_metapage+0x5f4/0xdc0 fs/jfs/jfs_metapage.c:652
 ea_get+0xb6f/0x12e0 fs/jfs/xattr.c:528
 __jfs_setxattr+0x4ba/0x1190 fs/jfs/xattr.c:722
 jfs_initxattrs+0x128/0x1d0 fs/jfs/xattr.c:1035
 security_inode_init_security+0x29c/0x480 security/security.c:1847
 jfs_init_security+0xa9/0x110 fs/jfs/xattr.c:1047
page last free pid 5809 tgid 5809 stack trace:
 reset_page_owner include/linux/page_owner.h:25 [inline]
 free_pages_prepare mm/page_alloc.c:1127 [inline]
 free_unref_page+0xd2c/0x1000 mm/page_alloc.c:2659
 __folio_put+0x2b3/0x360 mm/swap.c:112
 pipe_buf_release include/linux/pipe_fs_i.h:219 [inline]
 pipe_update_tail fs/pipe.c:224 [inline]
 pipe_read+0x6ed/0x13e0 fs/pipe.c:344
 new_sync_read fs/read_write.c:484 [inline]
 vfs_read+0x991/0xb70 fs/read_write.c:565
 ksys_read+0x18f/0x2b0 fs/read_write.c:708
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Memory state around the buggy address:
 ffff88807510a000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff88807510a080: fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc fa
>ffff88807510a100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                  ^
 ffff88807510a180: fb fb fb fb fb fb fc fc fc fc fc fc fc fc 00 00
 ffff88807510a200: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
==================================================================


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
