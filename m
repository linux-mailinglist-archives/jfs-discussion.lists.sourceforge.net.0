Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE3872177A
	for <lists+jfs-discussion@lfdr.de>; Sun,  4 Jun 2023 15:44:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q5o1X-0001bU-K5;
	Sun, 04 Jun 2023 13:44:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <oswalpalash@gmail.com>) id 1q5NJS-0001wV-9U
 for jfs-discussion@lists.sourceforge.net;
 Sat, 03 Jun 2023 09:12:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VvGvevK1DZh3VeG8nQiw1mon0qMeY/YAlPPjsFEFcBA=; b=bVavFI7Gi8PFG3vuMqSD9AETjc
 wh2BTQHjnlC80QiuyEq5vAq6VOw24JXAzFYLoSkFzbC66MA6Ew8D6PRiCRRNaeDYltr6ojnVTjLR3
 7NG5uqXYLlyKJMAlGRsofpI9uRjv4cyiw8Jgqff8gaBLBYJC0Vym+y11n4jrrWrEII1g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VvGvevK1DZh3VeG8nQiw1mon0qMeY/YAlPPjsFEFcBA=; b=m
 j9sc08j7crD0pT+c0y3hB79ImAefmFCbjLfeGhERkWqSiys1S79lE486SNcNI/FYAbcTCFT1+qRIk
 ovuRBWA2WnhmO6IcLB8C6WMLC48lYWwzLRjyLbpxOHhyennE4Rs1ELPnMDfzyV6C5MhR2Q7v0ysOp
 nvNBNntwOtFRQF68=;
Received: from mail-yw1-f178.google.com ([209.85.128.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q5NJS-0001VL-0x for jfs-discussion@lists.sourceforge.net;
 Sat, 03 Jun 2023 09:12:42 +0000
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-568bb833462so32170767b3.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 03 Jun 2023 02:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685783556; x=1688375556;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=VvGvevK1DZh3VeG8nQiw1mon0qMeY/YAlPPjsFEFcBA=;
 b=OhUXBASmjr+1EdRQScFm5mzIBwpEqSzMZhcQ/1HLIHQ6R7MRwAQGV4P2sM/6nI9nRO
 atHx/kv50XrzSSTZBcMi7Ib7KW94S5At2m+2E4oPhmhxzbjZoO4OMsQgu1/nrpHsacmm
 AYs9B2lLAla6Or+xfJPjHy6qR3FzVNXZrusfZvxwIfQLhBIkI4yq1E0v7I6wUQxZTeJP
 3yJBOfOxRw7RGLs9mEFRiVQeXP4ZJa8JJKp+A0U1cwjlpik3HmKMlQjr2P8ur3YvQLQZ
 K3qpU3EzgIwCgzbbGX4mvk5+vAxHMvIVIa6+2+7eUHo+tZhHH9rm21Gtz1L45Pt5ardd
 HCNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685783556; x=1688375556;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=VvGvevK1DZh3VeG8nQiw1mon0qMeY/YAlPPjsFEFcBA=;
 b=WnBSFCs4S/OOOilOOZ+o3gJ5BZFlUajBI0nQRqb/HEJ4hOYUVERqMLXkEM38ps3ldk
 /BZwMhxaISyFKcw2IFzrnfPV8P96YRzs6XLlrjP7ju6W0dUToLPhtVTwZc9M4Dxc3tNH
 iUdyj3ZKCmcw34H7IxAk7tS0qNZSjsd++sIzW+LmTpaFzcIgngz7CFrwSBHWaWjhml+z
 PsgrSDwjs7W8/SQRqwoQIATMAEvXE6ohPYApdYSJXntEkkCnvsRDMA4txkMFTkrd7HMg
 4wJA6VFrqshZf+ZC35hue/cCgAQmIV0MLfN/q87R2eIXFfWP+D/WIE+Kd5tU4/MuOg5g
 1Yag==
X-Gm-Message-State: AC+VfDx+MPXqYSjT6JQBPbpfEaFQeNGrD90JuXYePymvnpjMfAx2/I2L
 7VR0Lhe5ls3Lu17ZcxHSGiU54du2WXuv5wYKMA4=
X-Google-Smtp-Source: ACHHUZ6ZKwVVFm5QBTMpd2I3LPh5rKu94ytSDHwSktz3kwDGeWZsRNKin3Y0dNnJ4sp6t+cbXvmSVkEZaOtMjbQvErY=
X-Received: by 2002:a81:9251:0:b0:55a:7c7:6ff7 with SMTP id
 j78-20020a819251000000b0055a07c76ff7mr2953760ywg.11.1685783555990; Sat, 03
 Jun 2023 02:12:35 -0700 (PDT)
MIME-Version: 1.0
From: Palash Oswal <oswalpalash@gmail.com>
Date: Sat, 3 Jun 2023 02:12:24 -0700
Message-ID: <CAGyP=7czgoq8V+v09uAJWLXM4sRYsMGQ6YGF2eFARXxmcg8xTw@mail.gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net, 
 LKML <linux-kernel@vger.kernel.org>, 
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 I found the following issue using syzkaller with enriched
 corpus[1] on: HEAD commit : 0bcc4025550403ae28d2984bddacafbca0a2f112 git
 tree: linux C Reproducer : I do not have a C reproducer yet. I [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.178 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.178 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oswalpalash[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q5NJS-0001VL-0x
X-Mailman-Approved-At: Sun, 04 Jun 2023 13:43:59 +0000
Subject: [Jfs-discussion] KASAN: use-after-free Read in dtSearch
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
I found the following issue using syzkaller with enriched corpus[1] on:
HEAD commit : 0bcc4025550403ae28d2984bddacafbca0a2f112
git tree: linux
C Reproducer : I do not have a C reproducer yet. I will update this
thread when I get one.
Kernel .config :
https://gist.github.com/oswalpalash/d9580b0bfce202b37445fa5fd426e41f

Link:
1. https://github.com/cmu-pasta/linux-kernel-enriched-corpus

Console log :
==================================================================
BUG: KASAN: use-after-free in dtSearch+0x1c87/0x20b0
Read of size 1 at addr ffff8881272d16f4 by task syz-executor.0/21592

CPU: 1 PID: 21592 Comm: syz-executor.0 Not tainted
6.3.0-rc6-pasta-00035-g0bcc40255504 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.13.0-1ubuntu1.1 04/01/2014
Call Trace:
 <TASK>
 dump_stack_lvl+0xd9/0x150
 print_address_description.constprop.0+0x2c/0x3c0
 kasan_report+0x11c/0x130
 dtSearch+0x1c87/0x20b0
 jfs_lookup+0x180/0x340
 __lookup_slow+0x24c/0x460
 walk_component+0x33f/0x5a0
 path_lookupat+0x185/0x760
 filename_lookup+0x1d2/0x590
 user_path_at_empty+0x46/0x60
 __x64_sys_mount+0x1ee/0x300
 do_syscall_64+0x39/0xb0
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f4547e8eacd
Code: 02 b8 ff ff ff ff c3 66 0f 1f 44 00 00 f3 0f 1e fa 48 89 f8 48
89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d
01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f4548b8abf8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007f4547fbbf80 RCX: 00007f4547e8eacd
RDX: 0000000000000000 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 00007f4547efcb05 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007fffdef4763f R14: 00007fffdef477e0 R15: 00007f4548b8ad80
 </TASK>

The buggy address belongs to the physical page:
page:ffffea00049cb440 refcount:0 mapcount:0 mapping:0000000000000000
index:0x2 pfn:0x1272d1
flags: 0x57ff00000000000(node=1|zone=2|lastcpupid=0x7ff)
raw: 057ff00000000000 ffffea00049c8fc8 ffffea0004cca408 0000000000000000
raw: 0000000000000002 ffff8881272d1000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as freed
page last allocated via order 0, migratetype Reclaimable, gfp_mask
0x242050(__GFP_IO|__GFP_NOWARN|__GFP_COMP|__GFP_THISNODE|__GFP_RECLAIMABLE),
pid 17911, tgid 17910 (syz-executor.0), ts 959645805638, free_ts
962549035260
 get_page_from_freelist+0x1190/0x2e20
 __alloc_pages+0x1cb/0x4a0
 cache_grow_begin+0x9b/0x3b0
 cache_alloc_refill+0x27f/0x380
 kmem_cache_alloc+0x397/0x3f0
 jbd2__journal_start+0x190/0x850
 __ext4_journal_start_sb+0x411/0x5d0
 ext4_dirty_inode+0xa5/0x130
 __mark_inode_dirty+0x1e0/0xd60
 generic_write_end+0x354/0x440
 ext4_da_write_end+0x172/0x8e0
 generic_perform_write+0x316/0x570
 ext4_buffered_write_iter+0x15b/0x460
 ext4_file_write_iter+0xbd8/0x1720
 __kernel_write_iter+0x262/0x7a0
 dump_user_range+0x234/0x700
page last free stack trace:
 free_pcp_prepare+0x5d5/0xa50
 free_unref_page+0x1d/0x490
 slabs_destroy+0x85/0xc0
 ___cache_free+0x2ae/0x3d0
 qlist_free_all+0x4f/0x1a0
 kasan_quarantine_reduce+0x192/0x220
 __kasan_slab_alloc+0x63/0x90
 kmem_cache_alloc+0x1bd/0x3f0
 getname_flags.part.0+0x50/0x4f0
 getname_flags+0x9e/0xe0
 user_path_at_empty+0x2f/0x60
 do_readlinkat+0xcd/0x2f0
 __x64_sys_readlinkat+0x97/0x100
 do_syscall_64+0x39/0xb0
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Memory state around the buggy address:
 ffff8881272d1580: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff8881272d1600: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>ffff8881272d1680: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
                                                             ^
 ffff8881272d1700: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff8881272d1780: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
==================================================================


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
