Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 416EE985D5E
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Sep 2024 15:08:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1stRl0-0006Av-TU;
	Wed, 25 Sep 2024 13:08:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3rTrzZgkbAC4cijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1stDrZ-0002sz-9I for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Sep 2024 22:18:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bMuTEepIq0t9B9L7ttWRYuUpbo1Juj0UT6RiKDkd2Ao=; b=Lc9a0g3KhjlUFX8SL+ZcRTqZLT
 2pEehi8BsvFNUnWtYWMfL7WbiUwRmrrEJmLTAHHS2Qzc/VF1DzbiDnuUJbDqDO2/87nR8jZv/rWdC
 p8NoEleA5FY8CLTl7b+csZd0L7t4x34PUcqBiyGqUTLnHK8MGYzxcs8t0dVTDQRHxSck=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bMuTEepIq0t9B9L7ttWRYuUpbo1Juj0UT6RiKDkd2Ao=; b=L
 zebR47pIBTYuz061viOhOozFXfKQfi2pZg/NEFfwkOJf3VGj5wIJVRAkOVJM3+MVB7yScWQse5GSL
 EjboWLHpmg18snuyhqEh6dkTS3cZEpVjlB1va0LIgdbqFbdIMJZoyE6svVJr+asTMvMgHEgaP0rDr
 LOiN1yn2gLKYbFHM=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1stDrX-0003MM-Md for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Sep 2024 22:18:28 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-8324396d0abso105812039f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 24 Sep 2024 15:18:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727216302; x=1727821102;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bMuTEepIq0t9B9L7ttWRYuUpbo1Juj0UT6RiKDkd2Ao=;
 b=tSulQq/5il3eplSa6DIRSXgJhGXJe4l/fP99ZU//8610TtgStBu2zAngtBh0g3peBK
 F1NmTZgV6G15h1Ns8iDPGqGrvo8VxXgFoYQuWmUmq+fmshRMy6D3Cw4+b/a07VELse8q
 /yz8Fny88Ww/vxN4Uoz5pr/vzPUixJ8qUlwZGfzzOhQ+FlLTiiiuz2mC8pOzZwc8dz8Y
 TiabIz9WGigPsuygFRzZtJSUImZNSOdWLVQK3CDZQ7f+Cgl7nmbl8DmuZX46yDJN56LB
 KwV6kbySLZuv3DQ+uG8E8BAqa0clD9w2yyTCk+YJlKBiFB0z70I2hENbgYkY+m5h/fuw
 SMJw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWwvt4gsHVDgdmfbrwQhpA4w7WrW82oe1XnTAEqP06SEdffKjSyfwXmiPhUngyf25tZ0qn/NAYTGiXoFxmerA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzOR4naWE1lL0AeEbQ5JPAGCrJ2QBrbmkEdy+TL/mOHN9X2ygly
 errKddj8sYh50okRBykjJPff8AljN8MllVRvDvBdBp0MdJSjpM+63dH9Hlx6tYY7GypyYuM81cF
 TuMKa1blqCeO21jWzfboQs9cLeArGBLdz/gg4Ao7kzUG4xQ6C77FaCzw=
X-Google-Smtp-Source: AGHT+IEwidmnpzqHY8uI1Q6InGxNzhTsDc/xpIR11yJ0X1O8dHgN2WdhgNEiqQIxWY/49qLA2FnqohH1UDdCFqJAw27T1wgHR0ZY
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c8c:b0:3a0:922f:8e9a with SMTP id
 e9e14a558f8ab-3a26d7be171mr11592935ab.17.1727216301945; Tue, 24 Sep 2024
 15:18:21 -0700 (PDT)
Date: Tue, 24 Sep 2024 15:18:21 -0700
In-Reply-To: <000000000000dbda9806203851ba@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <66f33aad.050a0220.457fc.0030.GAE@google.com>
To: brauner@kernel.org, jack@suse.cz, jfs-discussion@lists.sourceforge.net, 
 kent.overstreet@linux.dev, linux-bcachefs@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 2.2 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: abf2050f51fd Merge tag 'media/v6.12-1' of git://git.kernel..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=11f08a80580000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.9 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1stDrX-0003MM-Md
X-Mailman-Approved-At: Wed, 25 Sep 2024 13:08:37 +0000
Subject: Re: [Jfs-discussion] [syzbot] [bcachefs?] kernel BUG in vfs_get_tree
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
Reply-To: syzbot <syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    abf2050f51fd Merge tag 'media/v6.12-1' of git://git.kernel..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11f08a80580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=bc30a30374b0753
dashboard link: https://syzkaller.appspot.com/bug?extid=c0360e8367d6d8d04a66
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15fad2a9980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17b7b107980000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-abf2050f.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2179ebeade58/vmlinux-abf2050f.xz
kernel image: https://storage.googleapis.com/syzbot-assets/f05289b5cf7c/bzImage-abf2050f.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/326532b68b88/mount_1.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com

bcachefs: bch2_fs_get_tree() error: EPERM
Filesystem bcachefs get_tree() didn't set fc->root, returned 1
------------[ cut here ]------------
kernel BUG at fs/super.c:1810!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 5200 Comm: syz-executor203 Not tainted 6.11.0-syzkaller-09959-gabf2050f51fd #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:vfs_get_tree+0x29f/0x2b0 fs/super.c:1810
Code: 1e 48 89 d8 48 c1 e8 03 42 80 3c 28 00 74 08 48 89 df e8 14 c4 ec ff 48 8b 33 48 c7 c7 20 d4 18 8c 44 89 e2 e8 22 b3 ae 09 90 <0f> 0b 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 90 90 90 90 90
RSP: 0018:ffffc9000b457d08 EFLAGS: 00010246
RAX: 000000000000003e RBX: ffffffff8ef58520 RCX: 12995cb9c2040600
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 1ffff11008249016 R08: ffffffff81746c8c R09: 1ffff11003f8519a
R10: dffffc0000000000 R11: ffffed1003f8519b R12: 0000000000000001
R13: dffffc0000000000 R14: ffff888041248098 R15: ffff8880412480b0
FS:  0000555567b69480(0000) GS:ffff88801fc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555567b72918 CR3: 000000004ebe6000 CR4: 0000000000350ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 do_new_mount+0x2be/0xb40 fs/namespace.c:3507
 do_mount fs/namespace.c:3847 [inline]
 __do_sys_mount fs/namespace.c:4055 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:4032
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7ff4a950680a
Code: d8 64 89 02 48 c7 c0 ff ff ff ff eb a6 e8 7e 09 00 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffdb635bea8 EFLAGS: 00000282 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffdb635bec0 RCX: 00007ff4a950680a
RDX: 0000000020005d80 RSI: 0000000020005dc0 RDI: 00007ffdb635bec0
RBP: 0000000000000004 R08: 00007ffdb635bf00 R09: 0000000000005dc5
R10: 0000000000000000 R11: 0000000000000282 R12: 0000000000000000
R13: 00007ffdb635bf00 R14: 0000000000000003 R15: 0000000001000000
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:vfs_get_tree+0x29f/0x2b0 fs/super.c:1810
Code: 1e 48 89 d8 48 c1 e8 03 42 80 3c 28 00 74 08 48 89 df e8 14 c4 ec ff 48 8b 33 48 c7 c7 20 d4 18 8c 44 89 e2 e8 22 b3 ae 09 90 <0f> 0b 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 90 90 90 90 90
RSP: 0018:ffffc9000b457d08 EFLAGS: 00010246
RAX: 000000000000003e RBX: ffffffff8ef58520 RCX: 12995cb9c2040600
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 1ffff11008249016 R08: ffffffff81746c8c R09: 1ffff11003f8519a
R10: dffffc0000000000 R11: ffffed1003f8519b R12: 0000000000000001
R13: dffffc0000000000 R14: ffff888041248098 R15: ffff8880412480b0
FS:  0000555567b69480(0000) GS:ffff88801fc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ff4a1141000 CR3: 000000004ebe6000 CR4: 0000000000350ef0
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
