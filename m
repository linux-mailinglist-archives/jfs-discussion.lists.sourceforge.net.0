Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AA765B568
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Jan 2023 17:58:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pCO8A-0003BH-7r;
	Mon, 02 Jan 2023 16:57:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3VauyYwkbAJoMSTE4FF8L4JJC7.AIIAF8OM8L6IHN8HN.6IG@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pCHcs-0007vp-L0 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Jan 2023 10:01:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZTn4K63RD1N7yaRtZbQN/Yyk0vdAWsKVbj+0GYE16Yg=; b=HK5Xpdr4k8Cdbp1LKts0oXHJ3V
 NfNhjZgOkQ3Rhbc4F9HRDLPoIplRI6hw7yqjj2CidQNeJVCb2x276QlJYCIO4dILBDOHgEAyZXduw
 fp9lJ7HGDCpVQqECPrguXjEwYuxIYLv0KdNrRcPOYoRaA5k01l8N1ReL66euhSd9EIvw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZTn4K63RD1N7yaRtZbQN/Yyk0vdAWsKVbj+0GYE16Yg=; b=h
 vdqxkwhT7QWRIgI/YRz5BeJwkChYeZG0B5c2kbAsdzFGaZDPKxbp299qauHPZTdGrTKZosQvDNom3
 2EhqyFt35mkO9h8csKehU6gg5nF0aSujC/6mp+m1rxFjg4yaRuVgOWVT03eF+VV406pMzlZkBq3eF
 zI8LBqBjVXCmfZWo=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pCHco-0007jE-T3 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Jan 2023 10:01:02 +0000
Received: by mail-io1-f70.google.com with SMTP id
 o22-20020a6b5a16000000b006e2d564944aso7506127iob.7
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 02 Jan 2023 02:00:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ZTn4K63RD1N7yaRtZbQN/Yyk0vdAWsKVbj+0GYE16Yg=;
 b=UPOb5estPWrBet4U5F5EUyIFy+96s6UUbAnAkzs/kWyzJNxfe+K3LDPyE3aq23Tztq
 M/sP8TtSzWSL96pcAR44T8Sw4Kk/LyEW+TQl7/NZDF/MB/HOxx+z11JueP0TezJVPFq6
 pFPd7h4pOkw9RZFo5bKI9X4c/IDJG57MotFsxDNQv+A8ddsYOamNWPpHq4F7tVOYlS+A
 7DXfNRbcIT821uxuxHTCNmrXRYXc3FTmSQ44619wern84pzI1WauHfoj/xdqvdr1lYcD
 pfMBJ4MqLgkO2k9sDOIpCDMulRrWIufqAiUEdlbg9lDNRuWWt7Bvz9UAHpEV6noBytZD
 k0cA==
X-Gm-Message-State: AFqh2krT7uEuq0M70HhfAOyz+DYQPqFR4CO/w91dsSW82PmbBOOoG2GQ
 e1COCMJJ88dNKIpc4OQJCxKnq6u4ihH+odf6Ssmn7v8DIv2C
X-Google-Smtp-Source: AMrXdXsaBRmcxwEVRbW+gvbCLhwcch0ZIggfJak2esGuQrce59pmhA4vt7r5/Yod39KmXhlJ6QlaMfXpYL6ssM6VVat/LUHedQ3z
MIME-Version: 1.0
X-Received: by 2002:a92:c608:0:b0:30b:fc34:f96a with SMTP id
 p8-20020a92c608000000b0030bfc34f96amr2426737ilm.277.1672653653360; Mon, 02
 Jan 2023 02:00:53 -0800 (PST)
Date: Mon, 02 Jan 2023 02:00:53 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d74cac05f1450646@google.com>
From: syzbot <syzbot+f1521383cec5f7baaa94@syzkaller.appspotmail.com>
To: axboe@kernel.dk, damien.lemoal@opensource.wdc.com, 
 jfs-discussion@lists.sourceforge.net, jlayton@kernel.org, kch@nvidia.com, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, willy@infradead.org
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 2f26e424552e
 Merge tag 'loongarch-6.2' of git://git.kernel.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=17152890480000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
X-Headers-End: 1pCHco-0007jE-T3
X-Mailman-Approved-At: Mon, 02 Jan 2023 16:57:41 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: use-after-free Read in
 release_metapage
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

HEAD commit:    2f26e424552e Merge tag 'loongarch-6.2' of git://git.kernel..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=17152890480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e4653f4fa0089644
dashboard link: https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f1521383cec5f7baaa94@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: use-after-free in drop_metapage fs/jfs/jfs_metapage.c:223 [inline]
BUG: KASAN: use-after-free in release_metapage+0xe08/0xf00 fs/jfs/jfs_metapage.c:757
Read of size 8 at addr ffff888000d80310 by task syz-executor.1/5579

CPU: 3 PID: 5579 Comm: syz-executor.1 Not tainted 6.1.0-syzkaller-13409-g2f26e424552e #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.14.0-2 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd1/0x138 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:306 [inline]
 print_report+0x15e/0x461 mm/kasan/report.c:417
 kasan_report+0xbf/0x1f0 mm/kasan/report.c:517
 drop_metapage fs/jfs/jfs_metapage.c:223 [inline]
 release_metapage+0xe08/0xf00 fs/jfs/jfs_metapage.c:757
 write_metapage fs/jfs/jfs_metapage.h:75 [inline]
 flush_metapage fs/jfs/jfs_metapage.h:81 [inline]
 ea_write+0x5d6/0xc90 fs/jfs/xattr.c:280
 ea_put fs/jfs/xattr.c:610 [inline]
 __jfs_setxattr+0xead/0xfc0 fs/jfs/xattr.c:783
 __jfs_xattr_set+0xc9/0x150 fs/jfs/xattr.c:917
 __vfs_setxattr+0x173/0x1e0 fs/xattr.c:202
 __vfs_setxattr_noperm+0x129/0x5f0 fs/xattr.c:236
 __vfs_setxattr_locked+0x1d3/0x260 fs/xattr.c:297
 vfs_setxattr+0x143/0x340 fs/xattr.c:323
 do_setxattr+0x151/0x190 fs/xattr.c:608
 setxattr+0x146/0x160 fs/xattr.c:631
 path_setxattr+0x197/0x1c0 fs/xattr.c:650
 __do_sys_setxattr fs/xattr.c:666 [inline]
 __se_sys_setxattr fs/xattr.c:662 [inline]
 __x64_sys_setxattr+0xc4/0x160 fs/xattr.c:662
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fb50cc8c0d9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 19 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fb50d94f168 EFLAGS: 00000246 ORIG_RAX: 00000000000000bc
RAX: ffffffffffffffda RBX: 00007fb50cdabf80 RCX: 00007fb50cc8c0d9
RDX: 0000000020000200 RSI: 00000000200000c0 RDI: 0000000020000080
RBP: 00007fb50cce7ae9 R08: 0000000000000000 R09: 0000000000000000
R10: 000000000000c001 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffcf4c5f19f R14: 00007fb50d94f300 R15: 0000000000022000
 </TASK>

Allocated by task 5579:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 kasan_set_track+0x25/0x30 mm/kasan/common.c:52
 __kasan_slab_alloc+0x7f/0x90 mm/kasan/common.c:325
 kasan_slab_alloc include/linux/kasan.h:201 [inline]
 slab_post_alloc_hook mm/slab.h:761 [inline]
 slab_alloc_node mm/slab.c:3261 [inline]
 slab_alloc mm/slab.c:3270 [inline]
 __kmem_cache_alloc_lru mm/slab.c:3447 [inline]
 kmem_cache_alloc+0x225/0x460 mm/slab.c:3456
 mempool_alloc+0x158/0x360 mm/mempool.c:398
 alloc_metapage fs/jfs/jfs_metapage.c:176 [inline]
 __get_metapage+0x73d/0xf00 fs/jfs/jfs_metapage.c:651
 ea_write+0x6d7/0xc90 fs/jfs/xattr.c:256
 ea_put fs/jfs/xattr.c:610 [inline]
 __jfs_setxattr+0xead/0xfc0 fs/jfs/xattr.c:783
 __jfs_xattr_set+0xc9/0x150 fs/jfs/xattr.c:917
 __vfs_setxattr+0x173/0x1e0 fs/xattr.c:202
 __vfs_setxattr_noperm+0x129/0x5f0 fs/xattr.c:236
 __vfs_setxattr_locked+0x1d3/0x260 fs/xattr.c:297
 vfs_setxattr+0x143/0x340 fs/xattr.c:323
 do_setxattr+0x151/0x190 fs/xattr.c:608
 setxattr+0x146/0x160 fs/xattr.c:631
 path_setxattr+0x197/0x1c0 fs/xattr.c:650
 __do_sys_setxattr fs/xattr.c:666 [inline]
 __se_sys_setxattr fs/xattr.c:662 [inline]
 __x64_sys_setxattr+0xc4/0x160 fs/xattr.c:662
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Freed by task 5583:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 kasan_set_track+0x25/0x30 mm/kasan/common.c:52
 kasan_save_free_info+0x2b/0x40 mm/kasan/generic.c:518
 ____kasan_slab_free mm/kasan/common.c:236 [inline]
 ____kasan_slab_free+0x13b/0x1a0 mm/kasan/common.c:200
 kasan_slab_free include/linux/kasan.h:177 [inline]
 __cache_free mm/slab.c:3394 [inline]
 __do_kmem_cache_free mm/slab.c:3580 [inline]
 kmem_cache_free mm/slab.c:3605 [inline]
 kmem_cache_free+0x108/0x4c0 mm/slab.c:3598
 mempool_free+0xe7/0x3b0 mm/mempool.c:507
 free_metapage fs/jfs/jfs_metapage.c:191 [inline]
 metapage_release_folio+0x2b5/0x3c0 fs/jfs/jfs_metapage.c:551
 filemap_release_folio+0x13f/0x1b0 mm/filemap.c:3967
 shrink_folio_list+0x1ea9/0x3a60 mm/vmscan.c:2000
 shrink_inactive_list mm/vmscan.c:2526 [inline]
 shrink_list mm/vmscan.c:2767 [inline]
 shrink_lruvec+0xd0e/0x27a0 mm/vmscan.c:5951
 shrink_node_memcgs mm/vmscan.c:6138 [inline]
 shrink_node+0x8f2/0x1f40 mm/vmscan.c:6169
 shrink_zones mm/vmscan.c:6407 [inline]
 do_try_to_free_pages+0x3b4/0x17a0 mm/vmscan.c:6469
 try_to_free_pages+0x2e5/0x960 mm/vmscan.c:6704
 __perform_reclaim mm/page_alloc.c:4750 [inline]
 __alloc_pages_direct_reclaim mm/page_alloc.c:4772 [inline]
 __alloc_pages_slowpath.constprop.0+0x8b6/0x23d0 mm/page_alloc.c:5178
 __alloc_pages+0x4aa/0x5b0 mm/page_alloc.c:5562
 alloc_pages+0x1aa/0x270 mm/mempolicy.c:2285
 folio_alloc+0x20/0x70 mm/mempolicy.c:2295
 filemap_alloc_folio+0x362/0x450 mm/filemap.c:972
 __filemap_get_folio+0x32c/0xd80 mm/filemap.c:1966
 pagecache_get_page+0x2e/0x280 mm/folio-compat.c:98
 find_or_create_page include/linux/pagemap.h:612 [inline]
 grow_dev_page fs/buffer.c:946 [inline]
 grow_buffers fs/buffer.c:1011 [inline]
 __getblk_slow+0x1f4/0x1030 fs/buffer.c:1038
 __getblk_gfp+0x72/0x80 fs/buffer.c:1333
 sb_getblk include/linux/buffer_head.h:356 [inline]
 search_by_key+0x3ac/0x3bf0 fs/reiserfs/stree.c:672
 reiserfs_read_locked_inode+0x158/0x2160 fs/reiserfs/inode.c:1549
 reiserfs_fill_super+0x1273/0x2e90 fs/reiserfs/super.c:2071
 mount_bdev+0x351/0x410 fs/super.c:1359
 legacy_get_tree+0x109/0x220 fs/fs_context.c:610
 vfs_get_tree+0x8d/0x2f0 fs/super.c:1489
 do_new_mount fs/namespace.c:3145 [inline]
 path_mount+0x132a/0x1e20 fs/namespace.c:3475
 do_mount fs/namespace.c:3488 [inline]
 __do_sys_mount fs/namespace.c:3697 [inline]
 __se_sys_mount fs/namespace.c:3674 [inline]
 __x64_sys_mount+0x283/0x300 fs/namespace.c:3674
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

The buggy address belongs to the object at ffff888000d802e8
 which belongs to the cache jfs_mp of size 184
The buggy address is located 40 bytes inside of
 184-byte region [ffff888000d802e8, ffff888000d803a0)

The buggy address belongs to the physical page:
page:ffffea0000036000 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0xd80
flags: 0x7ff00000000200(slab|node=0|zone=0|lastcpupid=0x7ff)
raw: 007ff00000000200 ffff888043795600 ffffea000057a090 ffffea00006b5d90
raw: 0000000000000000 ffff888000d80000 0000000100000010 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 0, migratetype Unmovable, gfp_mask 0x2d2000(__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_THISNODE), pid 5532, tgid 5531 (syz-executor.2), ts 318971103348, free_ts 315871259807
 prep_new_page mm/page_alloc.c:2531 [inline]
 get_page_from_freelist+0x119c/0x2ce0 mm/page_alloc.c:4283
 __alloc_pages_slowpath.constprop.0+0x36b/0x23d0 mm/page_alloc.c:5084
 __alloc_pages+0x4aa/0x5b0 mm/page_alloc.c:5562
 __alloc_pages_node include/linux/gfp.h:237 [inline]
 kmem_getpages mm/slab.c:1363 [inline]
 cache_grow_begin+0x94/0x390 mm/slab.c:2574
 cache_alloc_refill+0x27f/0x380 mm/slab.c:2947
 ____cache_alloc mm/slab.c:3023 [inline]
 ____cache_alloc mm/slab.c:3006 [inline]
 __do_cache_alloc mm/slab.c:3206 [inline]
 slab_alloc_node mm/slab.c:3254 [inline]
 slab_alloc mm/slab.c:3270 [inline]
 __kmem_cache_alloc_lru mm/slab.c:3447 [inline]
 kmem_cache_alloc+0x366/0x460 mm/slab.c:3456
 mempool_alloc+0x158/0x360 mm/mempool.c:398
 alloc_metapage fs/jfs/jfs_metapage.c:176 [inline]
 __get_metapage+0x73d/0xf00 fs/jfs/jfs_metapage.c:651
 diReadSpecial+0x191/0x6d0 fs/jfs/jfs_imap.c:443
 jfs_mount+0xd1/0x7b0 fs/jfs/jfs_mount.c:87
 jfs_fill_super+0x5a8/0xc80 fs/jfs/super.c:556
 mount_bdev+0x351/0x410 fs/super.c:1359
 legacy_get_tree+0x109/0x220 fs/fs_context.c:610
 vfs_get_tree+0x8d/0x2f0 fs/super.c:1489
 do_new_mount fs/namespace.c:3145 [inline]
 path_mount+0x132a/0x1e20 fs/namespace.c:3475
 do_mount fs/namespace.c:3488 [inline]
 __do_sys_mount fs/namespace.c:3697 [inline]
 __se_sys_mount fs/namespace.c:3674 [inline]
 __x64_sys_mount+0x283/0x300 fs/namespace.c:3674
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1446 [inline]
 free_pcp_prepare+0x65c/0xc00 mm/page_alloc.c:1496
 free_unref_page_prepare mm/page_alloc.c:3369 [inline]
 free_unref_page+0x1d/0x490 mm/page_alloc.c:3464
 __vunmap+0x85d/0xd30 mm/vmalloc.c:2727
 free_work+0x5c/0x80 mm/vmalloc.c:100
 process_one_work+0x9bf/0x1710 kernel/workqueue.c:2289
 worker_thread+0x669/0x1090 kernel/workqueue.c:2436
 kthread+0x2e8/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308

Memory state around the buggy address:
 ffff888000d80200: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888000d80280: fb fb fb fb fb fc fc fc fc fc fc fc fc fa fb fb
>ffff888000d80300: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                         ^
 ffff888000d80380: fb fb fb fb fc fc fc fc fc fc fc fc fb fb fb fb
 ffff888000d80400: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


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
