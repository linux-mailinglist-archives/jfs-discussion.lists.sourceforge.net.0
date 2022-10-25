Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8693B60D0C4
	for <lists+jfs-discussion@lfdr.de>; Tue, 25 Oct 2022 17:37:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1onLzC-0005HV-Ci;
	Tue, 25 Oct 2022 15:37:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3_FJXYwkbACEPVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1onAIA-0003U2-7D for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Oct 2022 03:07:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uggnLmBJSzHLqm98nE0GRsAgmEiYaXNQ2tVvy7eGOXA=; b=QJVKt92ize36dzp4jSNKXOmnKq
 WwFF+TO5T6QXN195t0sLgEB8olw9Lkvq18Um0En0y2pZZD/ZO7flRhSGgA6m6rqvqRK5AS3PlAZfA
 87PFpLDooD5/jo/R7IBSRL54w+UBqlhSFxcwAdaHvPWzuY2fVcXv0sFlc9/P2Sjz3Bjo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uggnLmBJSzHLqm98nE0GRsAgmEiYaXNQ2tVvy7eGOXA=; b=W
 vXZ/1uwput+tKUiXoDly0tZmvBqr9YeAq7sjkiVghwnBb7Bh9juirP4OM0GzRhflI6vAN6B/HPUe4
 bZc8dwNyIUXs6lcnJCsP2erKM+eBkVt4Meb9poifhCdzn1DVC/zeIcsdog+/2/Bu5TYLUCtEeT7te
 pVrxB4IV5cPqd+/M=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1onAI6-00GK0K-It for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Oct 2022 03:07:50 +0000
Received: by mail-il1-f198.google.com with SMTP id
 l4-20020a056e021aa400b003000df80c3aso2686683ilv.7
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 24 Oct 2022 20:07:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=uggnLmBJSzHLqm98nE0GRsAgmEiYaXNQ2tVvy7eGOXA=;
 b=hJUnn9M4M1AR60MOcWCg2NQoYmOSz5r5gtz4XZ0Wj50FJ3T78q0wS86m/dViwWxpgW
 cKDXkAKFODF9kyoS7Ju1qhb7yEkCP+XGKWsKBJhILEMC1A6yzkbf/WWe/fQRooMTvwGA
 KqQqhfewN+20PZAcctOzuuD3ctwopgP8xdgYyUg7q9lyEW2D6IQicpCYwaHdOy0mZcLj
 BoQZYy04DA17Luu+R7Yc6T2yWRONQj5cfV24PGZMVg9pNRpF9f2cyODASfFL0ClZMdiC
 rWgZGCUtasyP34NklVz9bJRju2mDMJhM+JWNCgPBqGdYPVj6n6k80U0ebjX1jYdLkS3E
 QYAA==
X-Gm-Message-State: ACrzQf3mhW1VTqAO1W3BWWDE29u2M3DmGTSbG/k4XhnO8I0hsKkAQgpi
 kxGKvtR28s9obrY+/TJ4YPBAmzFAwG8lVGFBzy8JG/Wlch6/
X-Google-Smtp-Source: AMsMyM4+L2O/DH///G/6y8H5F48vGrGki/m7ptVO4Dbj7szoHnfxtPxQDXjQ9lm6SGEaAh259VsEB9DHh+voyG8OzKuYpGYzeDQ3
MIME-Version: 1.0
X-Received: by 2002:a05:6638:2103:b0:365:cea9:efbe with SMTP id
 n3-20020a056638210300b00365cea9efbemr22915809jaj.234.1666667260771; Mon, 24
 Oct 2022 20:07:40 -0700 (PDT)
Date: Mon, 24 Oct 2022 20:07:40 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000009854205ebd33650@google.com>
From: syzbot <syzbot+3424c9550a49659f1704@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 247f34f7b803
 Linux 6.1-rc2 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=11904f2c880000
 kernel config: https://syzkaller.appspot.com/x/.config?x=1d3548a4365 [...]
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1onAI6-00GK0K-It
X-Mailman-Approved-At: Tue, 25 Oct 2022 15:36:59 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in jfs_statfs
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

HEAD commit:    247f34f7b803 Linux 6.1-rc2
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11904f2c880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1d3548a4365ba17d
dashboard link: https://syzkaller.appspot.com/bug?extid=3424c9550a49659f1704
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/a5f39164dea4/disk-247f34f7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/8d1b92f5a01f/vmlinux-247f34f7.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+3424c9550a49659f1704@syzkaller.appspotmail.com

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/super.c:140:14
shift exponent -236023038 is negative
CPU: 0 PID: 3985 Comm: syz-executor.4 Not tainted 6.1.0-rc2-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 jfs_statfs+0x503/0x510 fs/jfs/super.c:140
 statfs_by_dentry fs/statfs.c:66 [inline]
 vfs_statfs+0x136/0x310 fs/statfs.c:90
 user_statfs fs/statfs.c:105 [inline]
 __do_sys_statfs fs/statfs.c:195 [inline]
 __se_sys_statfs fs/statfs.c:192 [inline]
 __x64_sys_statfs+0x120/0x230 fs/statfs.c:192
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f96a5a8b5f9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f96a6bce168 EFLAGS: 00000246 ORIG_RAX: 0000000000000089
RAX: ffffffffffffffda RBX: 00007f96a5babf80 RCX: 00007f96a5a8b5f9
RDX: 0000000000000000 RSI: 0000000020005380 RDI: 0000000020005340
RBP: 00007f96a5ae67b0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007fff54f044bf R14: 00007f96a6bce300 R15: 0000000000022000
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
