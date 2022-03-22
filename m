Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C404E4231
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Mar 2022 15:45:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nWfkw-00082E-Vk; Tue, 22 Mar 2022 14:45:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3lcU5YgkbACAOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1nWdw7-0001WK-VU
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Mar 2022 12:48:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WZuJsNtOgUuUItIem3kdpk66hAcMwq+RcKjKTBfuo0o=; b=eAHguHL0mUqGjsMwKQxS7IL58s
 56+ZzS1GzwenqU0fdWV6xDOHbs991/g7OBkgqI/4H2GTKNfKd62p21XNtXIYg/0PyiETUd8DtMNSB
 m5DqZ6+DLhTK7ocwFoBWtMOLdI00G2UF7HmHYD8Au22tqldtIclVnsgmhusaVcMi/YHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WZuJsNtOgUuUItIem3kdpk66hAcMwq+RcKjKTBfuo0o=; b=P
 yUkTySlhEb1HT8c+b4LKpZGJPy7Svdi9fGyZsvLT4peQ1tlwbSRC8/BsG3ivx6UBb2YfTgQeUV39n
 gliQVogsPXg91aYcV30rcUbZcB1k/j+qgPrhhTI0n8L4vui0g8dNVO66aIN61tUXf4K7S2zy+2zzb
 b3MnzlqOOdiTUwBk=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nWdw2-008ZUw-KE
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Mar 2022 12:48:29 +0000
Received: by mail-io1-f72.google.com with SMTP id
 z16-20020a05660217d000b006461c7cbee3so12351051iox.21
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 22 Mar 2022 05:48:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=WZuJsNtOgUuUItIem3kdpk66hAcMwq+RcKjKTBfuo0o=;
 b=xVxAMoQMT1gleI3+ZqJOh9qUK1uY13Mc9p7iV4hq99YMLbSDZt/GICQrq6rFfnOxj7
 Qxi4lP92XNN/ay8Rq/SlFGUJjT0pRa4vhz2jgweBJ/8heDPcdYZryh5C7HN/hWL69APZ
 rBvywsTKlHq/XFw+4CHdbuhiHuo4ThKK6ijNHcLFAqy3/HagefJ+IOLHxuGwT1KGrCPT
 fSvLsokNyXm3eEq7+ehEg+K5bMOb3zqE/ScTmhD1aIF+iAxJqiSVO/kPijXobllPdTNc
 dS1ciR2kNzFKQUr3mWGczqSlqycDelSE6TGIzIyQeddeOEeWjem5oMKeSIB5GGdld9ed
 c3MQ==
X-Gm-Message-State: AOAM530iQCq5qZOc9sMBLwBB1pP9J04XKsU1fUKDLyGyzGRD9rqkjE4k
 7qGZdsMzYkWKtf/8QFZMcqKpLxdYPa5G+5nd8IDOBFup9h7G
X-Google-Smtp-Source: ABdhPJyGS+2VYKEwbvq02g1k8kyiwrTONaR9rngaRO8J/OIyisT/6m3DpKgzQJBwi9zUtJzuoo/dLA/4dtbdr5/mSXEPEU1oj04B
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1b09:b0:2c8:3fa3:d7a1 with SMTP id
 i9-20020a056e021b0900b002c83fa3d7a1mr1826881ilv.173.1647953301097; Tue, 22
 Mar 2022 05:48:21 -0700 (PDT)
Date: Tue, 22 Mar 2022 05:48:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001e547305dace07d4@google.com>
From: syzbot <syzbot+1964c915c8c3913b3d7a@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 91265a6da44d
 Add linux-next specific files for 20220303 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=156de84d700000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nWdw2-008ZUw-KE
X-Mailman-Approved-At: Tue, 22 Mar 2022 14:45:03 +0000
Subject: [Jfs-discussion] [syzbot] KASAN: use-after-free Read in diFree
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

HEAD commit:    91265a6da44d Add linux-next specific files for 20220303
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=156de84d700000
kernel config:  https://syzkaller.appspot.com/x/.config?x=617f79440a35673a
dashboard link: https://syzkaller.appspot.com/bug?extid=1964c915c8c3913b3d7a
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1792d44d700000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12f47491700000

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10467e9d700000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=12467e9d700000
console output: https://syzkaller.appspot.com/x/log.txt?x=14467e9d700000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1964c915c8c3913b3d7a@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 180
jfs_mount: dbMount failed w/rc = -5
Mount JFS Failure: -5
jfs_mount failed w/return code = -5
loop0: detected capacity change from 0 to 180
jfs_mount: diMount failed w/rc = -5
general protection fault, probably for non-canonical address 0xdffffc0000000000: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
CPU: 0 PID: 3828 Comm: syz-executor115 Not tainted 5.17.0-rc6-next-20220303-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:diFree+0x17f/0x2660 fs/jfs/jfs_imap.c:871
Code: 00 48 8b 44 24 18 48 8b 68 80 4c 89 e8 48 c1 e8 0c 48 89 04 24 48 b8 00 00 00 00 00 fc ff df 4c 8d 65 04 4c 89 e2 48 c1 ea 03 <0f> b6 14 02 4c 89 e0 83 e0 07 83 c0 03 38 d0 7c 08 84 d2 0f 85 26
RSP: 0018:ffffc90003aff8e0 EFLAGS: 00010247
RAX: dffffc0000000000 RBX: ffff88801ce21400 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff82ce6625 RDI: ffff8880718883b0
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff82cc0f85 R11: 0000000000000000 R12: 0000000000000004
R13: 0000000000000001 R14: ffffffff8a07aa60 R15: ffff8880718a2930
FS:  00005555569f3300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f1e855c0720 CR3: 0000000072fcb000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_evict_inode+0x392/0x470 fs/jfs/inode.c:155
 evict+0x2ed/0x6b0 fs/inode.c:664
 iput_final fs/inode.c:1744 [inline]
 iput.part.0+0x562/0x820 fs/inode.c:1770
 iput+0x58/0x70 fs/inode.c:1760
 diFreeSpecial+0x73/0x100 fs/jfs/jfs_imap.c:548
 jfs_mount+0x1c1/0x7b0 fs/jfs/jfs_mount.c:207
 jfs_fill_super+0x5a4/0xc70 fs/jfs/super.c:560
 mount_bdev+0x34d/0x410 fs/super.c:1367
 legacy_get_tree+0x105/0x220 fs/fs_context.c:610
 vfs_get_tree+0x89/0x2f0 fs/super.c:1497
 do_new_mount fs/namespace.c:3025 [inline]
 path_mount+0x1320/0x1fa0 fs/namespace.c:3355
 do_mount fs/namespace.c:3368 [inline]
 __do_sys_mount fs/namespace.c:3576 [inline]
 __se_sys_mount fs/namespace.c:3553 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3553
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f1e855ecdba
Code: 48 c7 c2 c0 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 a8 00 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe2176c5d8 EFLAGS: 00000282 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffe2176c640 RCX: 00007f1e855ecdba
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffe2176c600
RBP: 00007ffe2176c600 R08: 00007ffe2176c640 R09: 0000000000000002
R10: 0000000000000000 R11: 0000000000000282 R12: 0000000020000260
R13: 0000000000000003 R14: 0000000000000004 R15: 0000000000000004
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:diFree+0x17f/0x2660 fs/jfs/jfs_imap.c:871
Code: 00 48 8b 44 24 18 48 8b 68 80 4c 89 e8 48 c1 e8 0c 48 89 04 24 48 b8 00 00 00 00 00 fc ff df 4c 8d 65 04 4c 89 e2 48 c1 ea 03 <0f> b6 14 02 4c 89 e0 83 e0 07 83 c0 03 38 d0 7c 08 84 d2 0f 85 26
RSP: 0018:ffffc90003aff8e0 EFLAGS: 00010247
RAX: dffffc0000000000 RBX: ffff88801ce21400 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff82ce6625 RDI: ffff8880718883b0
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff82cc0f85 R11: 0000000000000000 R12: 0000000000000004
R13: 0000000000000001 R14: ffffffff8a07aa60 R15: ffff8880718a2930
FS:  00005555569f3300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f1e855c0720 CR3: 0000000072fcb000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	00 48 8b             	add    %cl,-0x75(%rax)
   3:	44 24 18             	rex.R and $0x18,%al
   6:	48 8b 68 80          	mov    -0x80(%rax),%rbp
   a:	4c 89 e8             	mov    %r13,%rax
   d:	48 c1 e8 0c          	shr    $0xc,%rax
  11:	48 89 04 24          	mov    %rax,(%rsp)
  15:	48 b8 00 00 00 00 00 	movabs $0xdffffc0000000000,%rax
  1c:	fc ff df
  1f:	4c 8d 65 04          	lea    0x4(%rbp),%r12
  23:	4c 89 e2             	mov    %r12,%rdx
  26:	48 c1 ea 03          	shr    $0x3,%rdx
* 2a:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx <-- trapping instruction
  2e:	4c 89 e0             	mov    %r12,%rax
  31:	83 e0 07             	and    $0x7,%eax
  34:	83 c0 03             	add    $0x3,%eax
  37:	38 d0                	cmp    %dl,%al
  39:	7c 08                	jl     0x43
  3b:	84 d2                	test   %dl,%dl
  3d:	0f                   	.byte 0xf
  3e:	85 26                	test   %esp,(%rsi)


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
