Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1041D6163F4
	for <lists+jfs-discussion@lfdr.de>; Wed,  2 Nov 2022 14:40:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oqDyB-0001yN-Qx;
	Wed, 02 Nov 2022 13:39:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3xfhhYwkbAGAQWXI8JJCP8NNGB.EMMEJCSQCPAMLRCLR.AMK@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oq5p0-0002xG-GB for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Nov 2022 04:57:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sIrJULyCcKOvinRg1r2QBsSeL9J+zEjVDIrjrZIw4GE=; b=F8ffBC8/mgM8yri+faOdd5THo9
 AkO/ry/1ZHj1qYfoJvptwsBUJuagtluuPnynAs2FwawBota3yLao5vRfLJjqAKMicAwAtHA9qMkJw
 oQ4vDPUQ7My/LGzNuczT5MHZgwRCEJvy1t7Wx+rJnFQfZCae+bfmtO5O9pYRRy50fKsA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sIrJULyCcKOvinRg1r2QBsSeL9J+zEjVDIrjrZIw4GE=; b=H
 j8/5aNI0TIzPyzYsZfZ+3PHF+iPRMiPn2yWWqkfBr2XE1iqnQ1304egyLn1ZkX6k2i+VIl9gd6J4Q
 0mjVEpiWfN8/GEUVphfWDgGlytH5brkt0b3+8WUL6gD3Ryg1k66P4Nr+aoOO4DQhOha8WAMLeqbT2
 mD1X84dVJRTGKjOc=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oq5ow-00925s-Ti for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Nov 2022 04:57:50 +0000
Received: by mail-il1-f199.google.com with SMTP id
 o10-20020a056e02102a00b003006328df7bso16287461ilj.17
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 01 Nov 2022 21:57:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=sIrJULyCcKOvinRg1r2QBsSeL9J+zEjVDIrjrZIw4GE=;
 b=LSU6B6zJuFz1CxgfgXH59SI74XB4EjxbZNIGD3QgwRsgdppDfsM7B+e3tNHccPWU/i
 OCBXk0uMDCl5MYqBr6p8IMVc7SnQkokxjEAtc5+bBr1vn0QzwHyU0MMgVIYC1c/raOA5
 b5ejx4K/APBHE+XaIepAsm6Mn3KP1P5mCd7dEnNpg3SDm8eLfUMrmH40c8uVSW7RRIkH
 pcaTEj3zAuUFcWDNOH2i1BjwRaumgHrduOzp2MBh+1qabzyb3tMsCSmwsHeV7xxW758v
 JWZsP+YGsf318OLwle+0cS4+I4GyQkGAD5Yp1aqYj++ZQgRKPCPggOSMiVrBKZrd0LiU
 msTg==
X-Gm-Message-State: ACrzQf144o++LT3NfDlzyzpaqKbXFT1bcf/W/Afh9ISyH+YDPDLA59tp
 HiBpYpNcZOEMQz9VOTQmvJ7hywbSTyOzqkVNBP0rGvG6zt/+
X-Google-Smtp-Source: AMsMyM6yTLH+FE1WBpO9/p4+7usG3/ua93YsWpm74Ea5iqnRQE0SxC2pSmEBI1KLlaUZH6LWBAoAHnhoxRgrXlkguk6Nn5PwMIGf
MIME-Version: 1.0
X-Received: by 2002:a05:6602:3ca:b0:6a4:16a0:9862 with SMTP id
 g10-20020a05660203ca00b006a416a09862mr15279453iov.217.1667365061392; Tue, 01
 Nov 2022 21:57:41 -0700 (PDT)
Date: Tue, 01 Nov 2022 21:57:41 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000032020805ec75ae69@google.com>
From: syzbot <syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: b229b6ca5abb
 Merge tag 'perf-tools-fixes-for-v6.1-2022-10-.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=156d7cee880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oq5ow-00925s-Ti
X-Mailman-Approved-At: Wed, 02 Nov 2022 13:39:50 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 dbFindLeaf
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

HEAD commit:    b229b6ca5abb Merge tag 'perf-tools-fixes-for-v6.1-2022-10-..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=156d7cee880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a66c6c673fb555e8
dashboard link: https://syzkaller.appspot.com/bug?extid=aea1ad91e854d0a83e04
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ba5b49fa77de/disk-b229b6ca.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/7c061f2ae4dc/vmlinux-b229b6ca.xz
kernel image: https://storage.googleapis.com/syzbot-assets/bc45c1300e9b/bzImage-b229b6ca.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com

loop5: detected capacity change from 0 to 96859
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2926:29
index 1365 is out of range for type 's8 [1365]'
CPU: 1 PID: 14172 Comm: syz-executor.5 Not tainted 6.1.0-rc2-syzkaller-00105-gb229b6ca5abb #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_out_of_bounds.cold+0x62/0x6c lib/ubsan.c:283
 dbFindLeaf+0x21d/0x260 fs/jfs/jfs_dmap.c:2926
 dbAllocDmapLev+0xa3/0x2c0 fs/jfs/jfs_dmap.c:1937
 dbAllocCtl+0x131/0x780 fs/jfs/jfs_dmap.c:1793
 dbAllocAG+0x8da/0xd20 fs/jfs/jfs_dmap.c:1334
 dbAlloc+0x40d/0xa70 fs/jfs/jfs_dmap.c:858
 dtSplitUp+0x365/0x5130 fs/jfs/jfs_dtree.c:974
 dtInsert+0x82b/0xa10 fs/jfs/jfs_dtree.c:863
 jfs_rename+0x1059/0x1a20 fs/jfs/namei.c:1219
 vfs_rename+0x115e/0x1a90 fs/namei.c:4778
 do_renameat2+0xb5e/0xc80 fs/namei.c:4929
 __do_sys_rename fs/namei.c:4975 [inline]
 __se_sys_rename fs/namei.c:4973 [inline]
 __x64_sys_rename+0x7d/0xa0 fs/namei.c:4973
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f734da8b5a9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f734e81d168 EFLAGS: 00000246 ORIG_RAX: 0000000000000052
RAX: ffffffffffffffda RBX: 00007f734dbabf80 RCX: 00007f734da8b5a9
RDX: 0000000000000000 RSI: 0000000020005240 RDI: 00000000200001c0
RBP: 00007f734dae67b0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffdd3afd17f R14: 00007f734e81d300 R15: 0000000000022000
 </TASK>
================================================================================


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
