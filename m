Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3948A85A7
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 16:13:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx61e-0004j3-9s;
	Wed, 17 Apr 2024 14:12:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <32lUaZgkbACcVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rva3q-0004Cr-93 for jfs-discussion@lists.sourceforge.net;
 Sat, 13 Apr 2024 09:52:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Id0toMuvL7as7L5ZND3mqsNLDkmdYxu+k83p1dlJR14=; b=VO1xnEZ1rKvRDNT91QCtBjBitW
 oODfwl+pjBbIxceP77t9ZgXAa9/ZQOefy+ohvE6pqBbBx14nIyNozx8hAOVQ8xDmISR+bIczmnE0B
 eyMT3ZLGxCm1pebE5+3jeBW25LnST6OV+zdQYAgEwbJW1WtUUM7OAGQ9FMzkQJ3mbJaY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Id0toMuvL7as7L5ZND3mqsNLDkmdYxu+k83p1dlJR14=; b=e
 PbReWgo+hqgqd3IM01JQYtaGUcaEk6OUcqaBwv9rC1b1eXYNfTnirX1NZbq53ziEvm8he/HSsPA4a
 XztaNJEEa+fdEGSxKN3AG4sFMorFZZXuNfJ/SpkR5GaNdekn1pgWGrDhJswtjiqGBfDu2kJW3EB0l
 YgnSOPVti3gZJRsU=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rva3o-0005aI-Uf for jfs-discussion@lists.sourceforge.net;
 Sat, 13 Apr 2024 09:52:38 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7c8a960bd9eso167806139f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 13 Apr 2024 02:52:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713001946; x=1713606746;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Id0toMuvL7as7L5ZND3mqsNLDkmdYxu+k83p1dlJR14=;
 b=GZhBp6+svYBC6Cp2fu1QQMR6sOyDFbE3b1inzKAP+TQXAHS2BFHxFYfwT+zNgf/bUp
 ludNge5fEQi/kg3VLROX4nPs5B9elUMlAOI2pZwhds2tcXe/OO3UXP+rFHR0h3FIMJ2E
 FkswrvEvkLJy4y1ugHfH2eSpwCl9oT0LAYcRIfYDm6vmT4vLBMDmHKnuUOeWXkb8tXrE
 aar0o3U85sMSu9ZPee3nT9gTbW1joiM+BiRf+UPKRhDpZmxdeM7rJWvB73nL19ZHitXE
 R4wR0EdvgPkcp+dHZdA+ktmV5ifoVwMZQumbqoUnh/73HyJ27GPlwtNVCiIeKFVSHKLV
 ZPkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWXxpSJ0qQRWZVgGEjIJbLZQPvCXNMZTJw6VCsElcYXLuGZbkaEzu+dKY7oFnbHQ4CT0+OPP3jlYeGLD6VpQzhB7c4pP7Sq9q+dVzYd1JlGjQ9gyAg=
X-Gm-Message-State: AOJu0YzlcMilkk9s+DUFzw7P575R/yyWLgOsAbU0v398BsQGts6Quz0F
 JUUsNmkuWd0YjBHxz7NsKx81NuoefsiocoM87Pd4Au3T+SE/YIKB3nVW01DWUWkF/3tdnt4Ybyk
 QJUQXrKpTz32Dt2ATqq7XFwxBpe0wHJqM3qQ1WuPbo1gt48J8GwLTOe8=
X-Google-Smtp-Source: AGHT+IGRsecqFpRXtTegGDI/g/U1QsDw+OTdMMQk1u8s00UWC5pHknrYQGLkApe6NpEisVI3+1oLVDiIvxoF+4l4ti2shO7ft0vT
MIME-Version: 1.0
X-Received: by 2002:a05:6602:164a:b0:7d6:5f6:831b with SMTP id
 y10-20020a056602164a00b007d605f6831bmr116095iow.1.1713001946490; Sat, 13 Apr
 2024 02:52:26 -0700 (PDT)
Date: Sat, 13 Apr 2024 02:52:26 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000085368e0615f7582f@google.com>
To: arnd@arndb.de, dhowells@redhat.com, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: fe46a7dd189e
 Merge tag 'sound-6.9-rc1' of git://git.kernel.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=11e238f3180000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1rva3o-0005aI-Uf
X-Mailman-Approved-At: Wed, 17 Apr 2024 14:12:36 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: trying to register
 non-static key in txEnd (2)
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
Reply-To: syzbot <syzbot+5b27962d84feb4acb5c1@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    fe46a7dd189e Merge tag 'sound-6.9-rc1' of git://git.kernel..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=11e238f3180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4d90a36f0cab495a
dashboard link: https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12cb7b55180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1717b623180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/72ab73815344/disk-fe46a7dd.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2d6d6b0d7071/vmlinux-fe46a7dd.xz
kernel image: https://storage.googleapis.com/syzbot-assets/48e275e5478b/bzImage-fe46a7dd.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/8b1302c5b3ec/mount_0.gz

The issue was bisected to:

commit 9c8ad7a2ff0bfe58f019ec0abc1fb965114dde7d
Author: David Howells <dhowells@redhat.com>
Date:   Thu May 16 11:52:27 2019 +0000

    uapi, x86: Fix the syscall numbering of the mount API syscalls [ver #2]

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1498c213180000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1698c213180000
console output: https://syzkaller.appspot.com/x/log.txt?x=1298c213180000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5b27962d84feb4acb5c1@syzkaller.appspotmail.com
Fixes: 9c8ad7a2ff0b ("uapi, x86: Fix the syscall numbering of the mount API syscalls [ver #2]")

ERROR: (device loop0): txCommit: 
 ... Log Wrap ... Log Wrap ... Log Wrap ...
 ... Log Wrap ... Log Wrap ... Log Wrap ...
ERROR: (device loop0): txBegin: read-only filesystem
jfs_dirty_inode called on read-only volume
Is remount racy?
jfs_dirty_inode called on read-only volume
Is remount racy?
jfs_dirty_inode called on read-only volume
Is remount racy?
INFO: trying to register non-static key.
The code is fine but needs lockdep annotation, or maybe
you didn't initialize this object before use?
turning off the locking correctness validator.
CPU: 1 PID: 5064 Comm: syz-executor231 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 assign_lock_key+0x238/0x270 kernel/locking/lockdep.c:976
 register_lock_class+0x1cf/0x980 kernel/locking/lockdep.c:1289
 __lock_acquire+0xda/0x1fd0 kernel/locking/lockdep.c:5014
 lock_acquire+0x1e4/0x530 kernel/locking/lockdep.c:5754
 __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:110 [inline]
 _raw_spin_lock_irqsave+0xd5/0x120 kernel/locking/spinlock.c:162
 __wake_up_common_lock+0x25/0x1e0 kernel/sched/wait.c:105
 txEnd+0x8c/0x560 fs/jfs/jfs_txnmgr.c:504
 jfs_create+0x371/0xb90 fs/jfs/namei.c:159
 lookup_open fs/namei.c:3497 [inline]
 open_last_lookups fs/namei.c:3566 [inline]
 path_openat+0x1425/0x3240 fs/namei.c:3796
 do_filp_open+0x235/0x490 fs/namei.c:3826
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1406
 do_sys_open fs/open.c:1421 [inline]
 __do_sys_openat fs/open.c:1437 [inline]
 __se_sys_openat fs/open.c:1432 [inline]
 __x64_sys_openat+0x247/0x2a0 fs/open.c:1432
 do_syscall_64+0xfb/0x240
 entry_SYSCALL_64_after_hwframe+0x6d/0x75
RIP: 0033:0x7f55e8f6b739
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffcc21e5d98 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f55e8f6b739
RDX: 000000000000275a RSI: 0000000020000080 RDI: 00000000ffffff9c
RBP: 00007f55e8fe4610 R08: 00007ffcc21e5f68 R09: 00007ffcc21e5f68
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffcc21e5f58 R14: 0000000000000001 R15: 0000000000000001
 </TASK>
general protection fault, probably for non-canonical address 0xdffffc0000000000: 0000 [#1] PREEMPT SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
CPU: 1 PID: 5064 Comm: syz-executor231 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
RIP: 0010:__wake_up_common_lock+0xcf/0x1e0 kernel/sched/wait.c:106
Code: fb 0f 84 d1 00 00 00 8b 6c 24 04 eb 13 48 ba 00 00 00 00 00 fc ff df 4c 39 fb 0f 84 b8 00 00 00 49 89 de 48 89 d8 48 c1 e8 03 <80> 3c 10 00 74 12 4c 89 f7 e8 83 23 86 00 48 ba 00 00 00 00 00 fc
RSP: 0018:ffffc9000398f610 EFLAGS: 00010046
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000001
RDX: dffffc0000000000 RSI: 0000000000000004 RDI: ffffc9000398f4e0
RBP: 0000000000000000 R08: 0000000000000003 R09: fffff52000731e9c
R10: dffffc0000000000 R11: fffff52000731e9c R12: dffffc0000000000
R13: 0000000000000000 R14: 0000000000000000 R15: ffffc90002651070
FS:  0000555565493380(0000) GS:ffff8880b9500000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000557a16608c70 CR3: 00000000683b8000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 txEnd+0x8c/0x560 fs/jfs/jfs_txnmgr.c:504
 jfs_create+0x371/0xb90 fs/jfs/namei.c:159
 lookup_open fs/namei.c:3497 [inline]
 open_last_lookups fs/namei.c:3566 [inline]
 path_openat+0x1425/0x3240 fs/namei.c:3796
 do_filp_open+0x235/0x490 fs/namei.c:3826
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1406
 do_sys_open fs/open.c:1421 [inline]
 __do_sys_openat fs/open.c:1437 [inline]
 __se_sys_openat fs/open.c:1432 [inline]
 __x64_sys_openat+0x247/0x2a0 fs/open.c:1432
 do_syscall_64+0xfb/0x240
 entry_SYSCALL_64_after_hwframe+0x6d/0x75
RIP: 0033:0x7f55e8f6b739
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffcc21e5d98 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f55e8f6b739
RDX: 000000000000275a RSI: 0000000020000080 RDI: 00000000ffffff9c
RBP: 00007f55e8fe4610 R08: 00007ffcc21e5f68 R09: 00007ffcc21e5f68
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffcc21e5f58 R14: 0000000000000001 R15: 0000000000000001
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__wake_up_common_lock+0xcf/0x1e0 kernel/sched/wait.c:106
Code: fb 0f 84 d1 00 00 00 8b 6c 24 04 eb 13 48 ba 00 00 00 00 00 fc ff df 4c 39 fb 0f 84 b8 00 00 00 49 89 de 48 89 d8 48 c1 e8 03 <80> 3c 10 00 74 12 4c 89 f7 e8 83 23 86 00 48 ba 00 00 00 00 00 fc
RSP: 0018:ffffc9000398f610 EFLAGS: 00010046
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000001
RDX: dffffc0000000000 RSI: 0000000000000004 RDI: ffffc9000398f4e0
RBP: 0000000000000000 R08: 0000000000000003 R09: fffff52000731e9c
R10: dffffc0000000000 R11: fffff52000731e9c R12: dffffc0000000000
R13: 0000000000000000 R14: 0000000000000000 R15: ffffc90002651070
FS:  0000555565493380(0000) GS:ffff8880b9500000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000557a16608c70 CR3: 00000000683b8000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	fb                   	sti
   1:	0f 84 d1 00 00 00    	je     0xd8
   7:	8b 6c 24 04          	mov    0x4(%rsp),%ebp
   b:	eb 13                	jmp    0x20
   d:	48 ba 00 00 00 00 00 	movabs $0xdffffc0000000000,%rdx
  14:	fc ff df
  17:	4c 39 fb             	cmp    %r15,%rbx
  1a:	0f 84 b8 00 00 00    	je     0xd8
  20:	49 89 de             	mov    %rbx,%r14
  23:	48 89 d8             	mov    %rbx,%rax
  26:	48 c1 e8 03          	shr    $0x3,%rax
* 2a:	80 3c 10 00          	cmpb   $0x0,(%rax,%rdx,1) <-- trapping instruction
  2e:	74 12                	je     0x42
  30:	4c 89 f7             	mov    %r14,%rdi
  33:	e8 83 23 86 00       	call   0x8623bb
  38:	48                   	rex.W
  39:	ba 00 00 00 00       	mov    $0x0,%edx
  3e:	00 fc                	add    %bh,%ah


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

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
