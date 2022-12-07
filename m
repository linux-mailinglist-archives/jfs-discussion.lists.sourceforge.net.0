Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5C4646150
	for <lists+jfs-discussion@lfdr.de>; Wed,  7 Dec 2022 19:55:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p2zZi-0005yb-Vu;
	Wed, 07 Dec 2022 18:55:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3zt-QYwkbAPMntufVggZmVkkdY.bjjbgZpnZmXjioZio.Xjh@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1p2zSR-0004ay-SV for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Dec 2022 18:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rs71y7QKLfj2uRinZF+lNM9YoVBsWdlmF+pf7glxx8M=; b=ZLqr4topzLlZ9D/vlJQRiRVj9F
 YzlFMP6l7HXxd/S8hq40ICSZ7lB9ET1TKqHvZ7OqeYuLGj0MjAWCNzm8P/lIEHo470nOZdFVjSPVx
 C9/DRgLPfWgl/i97OdKWt4Ha6X8eQko+txS7wcIU2/THpxM4dFzm7+uGJMy3wEvw9NSw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rs71y7QKLfj2uRinZF+lNM9YoVBsWdlmF+pf7glxx8M=; b=M
 mxxhSZbjucXU0MGALHCDHJPvdTBAFKPLRTKdGd6x3DO1ZBNe5fDE5k0a04YTQK7XVjBqXWFNZh9kF
 FWFNNz/83ywlH+w6IBGpVAaN9XtFcPuoMsdEEp8aruYXxG9ecf2tEMJ+2zc/Vn3c5bKFZyTXisSwm
 Jw27OsB/7HRu0hO8=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p2zSN-009Rp4-Nk for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Dec 2022 18:47:51 +0000
Received: by mail-io1-f72.google.com with SMTP id
 b24-20020a056602219800b006e2bf9902cbso1236921iob.4
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 07 Dec 2022 10:47:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rs71y7QKLfj2uRinZF+lNM9YoVBsWdlmF+pf7glxx8M=;
 b=arynObotoc9Ssl+xegUTs6wNL50pg1yU+3OZ8MbreQ6qQZDxJ0uxpT9bzFwxQAIJoc
 r89U20YWee1zz3N6edSBsvKiUlQdL927IMW+KzwfB9KlGQ3cHbdP0vUJct4CVzhiAEcd
 Vk8ULSZZbBCPn9vy9axCXr0dgeowwtlrXN0F5jZRr2FxXJgyMBqGMx7v3G+fM4SKLdqX
 6tD2Obie6hDmx/WGVxeFUgaWna+Vtmr/rLtQh5WFwCq1jRz6YGXuRY3kHkdjE/t0S2Vz
 NVyU48tmKcrx6VSE5Qe+4LtRBwqqQUnHTUYfeAjzoxf28d2fYXDpjGr+4kbf4+4w7mCs
 TyQA==
X-Gm-Message-State: ANoB5pltUETklVodmh/ipO+lZf7pR3uqo+nk7n6bQPyldmxyd6i2nRfh
 ixR8d9TC6QxtjqKqFEQsApVAAUA8ORIUXg1faaPzaGItKB/D
X-Google-Smtp-Source: AA0mqf7xiGmR9GF+wcN28IhT5wJKt39Ua3ry32LEpi0/eu0G3HVI5DMU133w3SFKp5MLw2fWDNCwI3iCWoUuSTyohVhnQJBMvSDc
MIME-Version: 1.0
X-Received: by 2002:a6b:f015:0:b0:6e2:bed4:c2d5 with SMTP id
 w21-20020a6bf015000000b006e2bed4c2d5mr1409593ioc.177.1670438862091; Wed, 07
 Dec 2022 10:47:42 -0800 (PST)
Date: Wed, 07 Dec 2022 10:47:42 -0800
In-Reply-To: <000000000000a078ac05ed65eb00@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000fe7bd605ef415ab2@google.com>
From: syzbot <syzbot+75c177aa1291e7fe423d@syzkaller.appspotmail.com>
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
 HEAD commit: 8ed710da2873 Merge tag 'arm64-fixes' of git://git.kernel.o..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=13629e23880000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1p2zSN-009Rp4-Nk
X-Mailman-Approved-At: Wed, 07 Dec 2022 18:55:10 +0000
Subject: Re: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 xtTruncate
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    8ed710da2873 Merge tag 'arm64-fixes' of git://git.kernel.o..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13629e23880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d58e7fe7f9cf5e24
dashboard link: https://syzkaller.appspot.com/bug?extid=75c177aa1291e7fe423d
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10f7a51d880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/001d14ca1b9a/disk-8ed710da.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/97699f90e9af/vmlinux-8ed710da.xz
kernel image: https://storage.googleapis.com/syzbot-assets/2d0dbab75d43/bzImage-8ed710da.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/ce0ea7b966d5/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+75c177aa1291e7fe423d@syzkaller.appspotmail.com

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_xtree.c:2304:9
index 19 is out of range for type 'xad_t [18]'
CPU: 1 PID: 4024 Comm: syz-executor.2 Not tainted 6.1.0-rc8-syzkaller-00014-g8ed710da2873 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 xtTruncate+0x2778/0x32d0 fs/jfs/jfs_xtree.c:2304
 jfs_truncate_nolock+0x192/0x390 fs/jfs/inode.c:393
 jfs_truncate+0xc6/0x140 fs/jfs/inode.c:417
 jfs_setattr+0x59f/0x7d0 fs/jfs/file.c:119
 notify_change+0xe38/0x10f0 fs/attr.c:420
 do_truncate+0x1fb/0x2e0 fs/open.c:65
 handle_truncate fs/namei.c:3216 [inline]
 do_open fs/namei.c:3561 [inline]
 path_openat+0x2770/0x2df0 fs/namei.c:3714
 do_filp_open+0x264/0x4f0 fs/namei.c:3741
 do_sys_openat2+0x124/0x4e0 fs/open.c:1310
 do_sys_open fs/open.c:1326 [inline]
 __do_sys_open fs/open.c:1334 [inline]
 __se_sys_open fs/open.c:1330 [inline]
 __x64_sys_open+0x221/0x270 fs/open.c:1330
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fad9288c0d9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 19 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fad93556168 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 00007fad929ac1f0 RCX: 00007fad9288c0d9
RDX: 0000000000000000 RSI: 000000000014d27e RDI: 0000000020000180
RBP: 00007fad928e7ae9 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffcbcc0bcff R14: 00007fad93556300 R15: 0000000000022000
 </TASK>
================================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
