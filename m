Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31562968F2B
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Sep 2024 23:36:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1slEix-0004rO-R3;
	Mon, 02 Sep 2024 21:36:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3SKLVZgkbACEPVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sl5IT-0004RB-Gi for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Sep 2024 11:32:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nfj7/unb5Y/8Jp60UCn4Zs1L6qkNzEH9kIrKvtPXpxo=; b=J3TH5xiTXZb6t2VZ4LgkZ7gPCu
 i9oswzNG2wYiANRJ/Dd0zoS7XBugF1jdOz+2WZ4cJtBEx/8YL5pkNQLQpL08PHzMklKmDp3dMvBfF
 LmRwYYhgKAPRlUHTbpojmbk45hxvgWcK3UsnIMqVToc0ywWJ5r71PxmomcdlQP1jY+9o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Nfj7/unb5Y/8Jp60UCn4Zs1L6qkNzEH9kIrKvtPXpxo=; b=K
 DnN5ngFiqDXqbPSYq1AdijEKjgRC5930dLzRCAs6V8iTweM0KzZ95aZHUOUETSiFODKJtD5uyWan2
 rb5OWTNSGcbwYY9cUi83sosJjoih0F9J3tu6Su+W71iH2GxC9EEVpx/mYVzHveT68ssptqA0Md857
 vzR+DLN9CkmCTHKc=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sl5IS-0007AL-0Y for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Sep 2024 11:32:36 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-82a14eb2247so501915039f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 02 Sep 2024 04:32:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725276745; x=1725881545;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Nfj7/unb5Y/8Jp60UCn4Zs1L6qkNzEH9kIrKvtPXpxo=;
 b=Fi8AMJBO0K5VND2S/lorYhA/1zWbJDvaQTpGIh+VfjPUd+ytksLe+KelI7NAuGcNPl
 doRZph4GW6ZnSRnYqle6S0IyPXIYqFk5f40AjZdpBWttKjI9q8rs4im7jP7YakfIbA40
 LfMahbBxKTFnhdtdRXMOk7rkkTzrDZUHzAhN9K8Y4S1HmV/yEJIxA1BXyLZ1WmYm8vyc
 mZShoO+3vBxjRBZ2a6w4Q2iC6OvsL8zLOMmAYR/muCqZYEj/TIDpgVos3WiUW0Sd1Px7
 lsQQenPa6T4Vw6Uc+RwywxUdVWtFjK5htPC/HtBG+Hj3tUic37TG0SOsDfmqnVxxecJA
 j8Ug==
X-Gm-Message-State: AOJu0YweJ+gyb2TqrlnQ3UeBhXN+JhXJ2ph8IWTUvFbScP8qg0yUKkmU
 ON+hcX0v3qDeQKBFSQnyuKr279fG/DWBzeA7gAmBXVHN7F2wVrmdu5B1zOBkSOXYq1H7V/v6Fru
 Rq6kNas2tDfNwc0+GN0FNFWex5/1GcDJee9fP6w0j63ZdlNYWkdI763o=
X-Google-Smtp-Source: AGHT+IElG8hBzyo5uPdCfIWS6oEEBGj5NX8Uk/2PB7g5lFKv2FIwWq0BJ/ToiGDaqITTK3WP5vuDgN1Jsdc5w3pU75PIUvWXxTu/
MIME-Version: 1.0
X-Received: by 2002:a05:6602:15cd:b0:82a:133e:c3d2 with SMTP id
 ca18e2360f4ac-82a26122876mr31817739f.0.1725276744954; Mon, 02 Sep 2024
 04:32:24 -0700 (PDT)
Date: Mon, 02 Sep 2024 04:32:24 -0700
In-Reply-To: <0000000000002f64da061e021fc2@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000085c6cd0621214be6@google.com>
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
 HEAD commit: c9f016e72b5c Merge tag 'x86-urgent-2024-09-01' of git://gi..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=14d09929980000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sl5IS-0007AL-0Y
X-Mailman-Approved-At: Mon, 02 Sep 2024 21:36:33 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in jfs_unlink
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    c9f016e72b5c Merge tag 'x86-urgent-2024-09-01' of git://gi..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=14d09929980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=8926d683f62db53e
dashboard link: https://syzkaller.appspot.com/bug?extid=41b43444de86db4c5ed1
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=106934fb980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15617f2f980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e47617e91522/disk-c9f016e7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/69d8aef7dff1/vmlinux-c9f016e7.xz
kernel image: https://storage.googleapis.com/syzbot-assets/dd5392c61560/bzImage-c9f016e7.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/7111d4efcae8/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+41b43444de86db4c5ed1@syzkaller.appspotmail.com

BUG at fs/jfs/namei.c:513 assert(ip->i_nlink)
------------[ cut here ]------------
kernel BUG at fs/jfs/namei.c:513!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI
CPU: 1 UID: 0 PID: 5224 Comm: syz-executor204 Not tainted 6.11.0-rc6-syzkaller-00017-gc9f016e72b5c #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/06/2024
RIP: 0010:jfs_unlink+0xafd/0xb30 fs/jfs/namei.c:513
Code: e8 c8 5d 91 08 e8 83 f0 73 fe 48 c7 c7 20 9c 22 8c 48 c7 c6 e0 99 22 8c ba 01 02 00 00 48 c7 c1 60 9c 22 8c e8 64 5e 8e 08 90 <0f> 0b e8 5c f0 73 fe 48 c7 c7 20 9c 22 8c 48 c7 c6 e0 99 22 8c ba
RSP: 0018:ffffc9000344fbe0 EFLAGS: 00010246
RAX: 000000000000002d RBX: 0000000000000000 RCX: 44cfc770ad800100
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc9000344fd10 R08: ffffffff8174016c R09: 1ffff92000689f1c
R10: dffffc0000000000 R11: fffff52000689f1d R12: 0000000000000000
R13: ffffc9000344fc60 R14: 1ffff92000689f8c R15: ffff888072c33248
FS:  0000555577bcd380(0000) GS:ffff8880b8900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000045bdd0 CR3: 000000007ab8a000 CR4: 00000000003506f0
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
RIP: 0033:0x7f69ef25fad7
Code: 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 b8 57 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff4544dac8 EFLAGS: 00000206 ORIG_RAX: 0000000000000057
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f69ef25fad7
RDX: 00007fff4544daf0 RSI: 00007fff4544db80 RDI: 00007fff4544db80
RBP: 00007fff4544db80 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000100 R11: 0000000000000206 R12: 00007fff4544ec70
R13: 0000555577bd6700 R14: 0000000000000001 R15: 431bde82d7b634db
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:jfs_unlink+0xafd/0xb30 fs/jfs/namei.c:513
Code: e8 c8 5d 91 08 e8 83 f0 73 fe 48 c7 c7 20 9c 22 8c 48 c7 c6 e0 99 22 8c ba 01 02 00 00 48 c7 c1 60 9c 22 8c e8 64 5e 8e 08 90 <0f> 0b e8 5c f0 73 fe 48 c7 c7 20 9c 22 8c 48 c7 c6 e0 99 22 8c ba
RSP: 0018:ffffc9000344fbe0 EFLAGS: 00010246
RAX: 000000000000002d RBX: 0000000000000000 RCX: 44cfc770ad800100
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc9000344fd10 R08: ffffffff8174016c R09: 1ffff92000689f1c
R10: dffffc0000000000 R11: fffff52000689f1d R12: 0000000000000000
R13: ffffc9000344fc60 R14: 1ffff92000689f8c R15: ffff888072c33248
FS:  0000555577bcd380(0000) GS:ffff8880b8900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000045bdd0 CR3: 000000007ab8a000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
