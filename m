Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDBB93B68F
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 Jul 2024 20:22:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sWgck-0000gM-Lw;
	Wed, 24 Jul 2024 18:22:02 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3YkKhZgkbAKcZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sWgMi-0004QO-Le for jfs-discussion@lists.sourceforge.net;
 Wed, 24 Jul 2024 18:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eEoF0zVZhiq5H6p01VB2UQ3xDmiLnSL9RDzTN9njhVI=; b=ms62IJRT0uj3Wpqr7zM3uWN5Hq
 buQDM6uiKRvFNjCSrtQOKkf4rccw/4EdoGcZTzkTzfgPq/DVhTkVT3oRMka3CRMZss3nAT9sH5aCy
 A03KmaM1VVB02ltcV881hK1xGT0idbvgxpuP0xenujO6m2KmoIGokE7i8YUP3orJotks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eEoF0zVZhiq5H6p01VB2UQ3xDmiLnSL9RDzTN9njhVI=; b=Q
 J5bCmgxwOc9wc6kwWKOXheWL7u5shLSJvyMgGs4e/CHO/zKyzixBGrA3sNSGXQfsw0J8mYbLL02qp
 RL4ijsBl+/eB01U1epXszy7RwEUKyGX/gakXegWQm7s/dsyUryZHEsf6qFLRAwqQ7Lwhx2YgFI5WA
 ADumccU7O5TwQGEs=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sWgMh-0007IJ-Se for jfs-discussion@lists.sourceforge.net;
 Wed, 24 Jul 2024 18:05:28 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-3971269bf67so414195ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 24 Jul 2024 11:05:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721844322; x=1722449122;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eEoF0zVZhiq5H6p01VB2UQ3xDmiLnSL9RDzTN9njhVI=;
 b=q3P2XuW9uWIw2cJJ/53V8p/90gcAhpqR4Va4zvGauuiU/6Nmild+raDk8sqX3Bik1Q
 ZcpUGVz8FsAZFReApHKOeyFKydH7OOd7VwGHG8/mEjPcDVCFaluPE9HzNEgt70vR1ld+
 lG4fp9hBUzRiZm0lubpN248uJpwRsaHrT8fvAWMzi2IC1mmxtxCL2VOgGTf++UM58J7f
 6ERNih/yg8De534mz5zV9ZegmNHNsMhDtSbRWFgoovTHJddgF26BWN27ItQxU7wgtE9T
 AbkWWloENZSkafaB8WsSVLgMpAIooz9O0mx2cBXs0kGVDuEgstKOikspMvK1MEUE8TS8
 GJNQ==
X-Gm-Message-State: AOJu0YyheSBUaLbNhb2gBqEB6lgG0ry1cFhIZ3I49e0H3EGfkXLia04p
 pjDpnkizDbfKGuvIzs3LA9d01VFmY/Avn+vEl5tuAdPOFZ1x9M9fVIh6sefwXHBVa5d717kEUgs
 L0gDG6uRcG65Wblqj0NES+1g6iTUzLEhCYrHgNpGWK7HaAzccGFY7b2g=
X-Google-Smtp-Source: AGHT+IHsVUCQhQIN404V07V2jB3iVrhLHqUph/Y69Ynxj4UsOfHPjt7poHUwgaAhW0Q8mOb2MFNsspii0XCpvAhUziDALw9Piwe9
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:152b:b0:397:35d4:3811 with SMTP id
 e9e14a558f8ab-39a21808fe4mr470825ab.3.1721844322226; Wed, 24 Jul 2024
 11:05:22 -0700 (PDT)
Date: Wed, 24 Jul 2024 11:05:22 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002f64da061e021fc2@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -4.7 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 2c9b3512402e
 Merge tag 'for-linus' of git://git.kernel.org.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=13ffb6b5980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (-4.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.166.199 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.199 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.199 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1sWgMh-0007IJ-Se
X-Mailman-Approved-At: Wed, 24 Jul 2024 18:22:00 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in jfs_unlink
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
Reply-To: syzbot <syzbot+41b43444de86db4c5ed1@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    2c9b3512402e Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13ffb6b5980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f4925140c45a2a50
dashboard link: https://syzkaller.appspot.com/bug?extid=41b43444de86db4c5ed1
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/3c29a41eae6b/disk-2c9b3512.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/938da4f6bc30/vmlinux-2c9b3512.xz
kernel image: https://storage.googleapis.com/syzbot-assets/4f9521f6c1ef/bzImage-2c9b3512.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+41b43444de86db4c5ed1@syzkaller.appspotmail.com

BUG at fs/jfs/namei.c:513 assert(ip->i_nlink)
------------[ cut here ]------------
kernel BUG at fs/jfs/namei.c:513!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI
CPU: 1 PID: 9192 Comm: syz-executor Not tainted 6.10.0-syzkaller-11185-g2c9b3512402e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
RIP: 0010:jfs_unlink+0xafd/0xb30 fs/jfs/namei.c:513
Code: e8 18 6f 6a 08 e8 53 c2 76 fe 48 c7 c7 e0 96 02 8c 48 c7 c6 a0 94 02 8c ba 01 02 00 00 48 c7 c1 20 97 02 8c e8 d4 6f 67 08 90 <0f> 0b e8 2c c2 76 fe 48 c7 c7 e0 96 02 8c 48 c7 c6 a0 94 02 8c ba
RSP: 0018:ffffc90003367be0 EFLAGS: 00010246
RAX: 000000000000002d RBX: 0000000000000000 RCX: f6009ee609a28400
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc90003367d10 R08: ffffffff8173a15c R09: 1ffff9200066cf1c
R10: dffffc0000000000 R11: fffff5200066cf1d R12: 0000000000000000
R13: ffffc90003367c60 R14: 1ffff9200066cf8c R15: ffff88807a381fd8
FS:  000055558b529500(0000) GS:ffff8880b9500000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055f20933a178 CR3: 0000000065f88000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 vfs_unlink+0x365/0x650 fs/namei.c:4422
 do_unlinkat+0x4ae/0x830 fs/namei.c:4486
 __do_sys_unlink fs/namei.c:4534 [inline]
 __se_sys_unlink fs/namei.c:4532 [inline]
 __x64_sys_unlink+0x47/0x50 fs/namei.c:4532
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fbcb13751a7
Code: 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 b8 57 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffeb18f8828 EFLAGS: 00000206 ORIG_RAX: 0000000000000057
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fbcb13751a7
RDX: 00007ffeb18f8850 RSI: 00007ffeb18f88e0 RDI: 00007ffeb18f88e0
RBP: 00007ffeb18f88e0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000100 R11: 0000000000000206 R12: 00007ffeb18f99d0
R13: 00007fbcb13e344c R14: 000000000005216e R15: 0000000000051cc6
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:jfs_unlink+0xafd/0xb30 fs/jfs/namei.c:513
Code: e8 18 6f 6a 08 e8 53 c2 76 fe 48 c7 c7 e0 96 02 8c 48 c7 c6 a0 94 02 8c ba 01 02 00 00 48 c7 c1 20 97 02 8c e8 d4 6f 67 08 90 <0f> 0b e8 2c c2 76 fe 48 c7 c7 e0 96 02 8c 48 c7 c6 a0 94 02 8c ba
RSP: 0018:ffffc90003367be0 EFLAGS: 00010246
RAX: 000000000000002d RBX: 0000000000000000 RCX: f6009ee609a28400
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc90003367d10 R08: ffffffff8173a15c R09: 1ffff9200066cf1c
R10: dffffc0000000000 R11: fffff5200066cf1d R12: 0000000000000000
R13: ffffc90003367c60 R14: 1ffff9200066cf8c R15: ffff88807a381fd8
FS:  000055558b529500(0000) GS:ffff8880b9400000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffcdd237ef0 CR3: 0000000065f88000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

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
