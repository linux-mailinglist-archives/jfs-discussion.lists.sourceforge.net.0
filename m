Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F28AFAD2952
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Jun 2025 00:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d3lljrwnolrZVMBw6MCRNX1eAnkPCKeGOUpjYOMVmcc=; b=PA+1gEALhTjAyejaeHC/c5/hRy
	uKvKR+GEkuySvrMeluv3L2c0xUADbnkLc099KuyUVGwdKC8GGZ9tH3io4oCvru2Bv4YgI0j96i8aW
	YnJoBX8W6zudzXc7g6e+zO8Xntbfp9/8nbIF7sQArV7SAAbf/xPd+7yexNsFFcJqNFjU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uOkoh-0008T6-9X;
	Mon, 09 Jun 2025 22:18:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3XrM-aAkbAAk178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uMN5Y-00073u-NS for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Jun 2025 08:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PnDXQQ+eXJvD3MKBP/vy3SLNLiIY9oiD1zSTePQgx/0=; b=DUNmtZfCfF2zWRtvoG8FKnuhx+
 KDiXWa5rsBXr9bO4QwBLM+l+z44M/KEwIytPETLWzwRkximUL7hLxvpSvHlF1JbwzO+yzv+NkYn/v
 SBes+FpXnla6y/s+uJCDtS9ES6yVVWL92g+bkShMzZybokSGSocafpWwOvkmzAERRyUo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PnDXQQ+eXJvD3MKBP/vy3SLNLiIY9oiD1zSTePQgx/0=; b=j
 A78jTmboDNYZPuyZpevtdATUcWn1WwEg3X8aX6A5XVDiFAKFOxZjQCmVd1kzm3oiuUA5M8Rf/F5ms
 nKDHMvbzBrlmI+pFwDzOrtxta4OyjRvfWUNcKRGPmc2XQW7Y/jzKIKZqGleDRf104HM+aNhsebpMx
 +cegpr05+Wov237Y=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uMN5X-000839-TR for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Jun 2025 08:33:40 +0000
Received: by mail-il1-f205.google.com with SMTP id
 e9e14a558f8ab-3dda452174dso48330965ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 03 Jun 2025 01:33:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748939614; x=1749544414;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PnDXQQ+eXJvD3MKBP/vy3SLNLiIY9oiD1zSTePQgx/0=;
 b=LG2SWFo6nuAUr3Te/pku94mxW3KP7bx2ysq7h8uFHj1FIDyDHFydglBFx3pZWOXfqW
 36nUACFapwRRdMLJi4/ZjulbbWaMV5pebwxWwWzwMUH2gOSc2YrX7YNEJ3rs9dSutuiA
 +6BxLG2QOr+N+GHmTPt5ttlw+v15/0sQBKqhKb/cNQ+PO3llZLF4vu8pYoeINUKXdU/4
 sdoRwyztnK2svAntyW1HnE/GhVx7oF2wDq/ypKBXPRPO9f9LY5YCa57HZTedpchfZ2B/
 H2Jj/kQagkM35hhpj2VcGNlcdrKsBPhhi+13/Zg2aKBTRmloyTGLKlrC8j4taXRu05Gy
 kgNw==
X-Gm-Message-State: AOJu0Yxa0ihJ+u7qskC8QFaQ34CSmo0ub/BWLb3Kl6EfZyZkADo0gyPT
 Fkya0+cr/Sk+R1JZrhqHjmtljsliEZftUmfxhgc/HdEhwdeiU0eaS9oxxdwF3SafuIKbEh7gJJ8
 2qT2qc7ymB9mIJ53Be5f6a4Q6et/Bz2KBZEB8ar+1TQcc4IhH+qLIRVVjsruoRQ==
X-Google-Smtp-Source: AGHT+IFavsB8h7+yWi6f2dQJlVvPgrl8pLo7lS7OGVCB5+DuKHXjBTm7uok/halrKk/E/hlCNrUTXUhemXXgH/VrfnuZv6zSY1C6
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d99:b0:3dc:7fa4:804 with SMTP id
 e9e14a558f8ab-3dda3387dc3mr110544985ab.16.1748939614144; Tue, 03 Jun 2025
 01:33:34 -0700 (PDT)
Date: Tue, 03 Jun 2025 01:33:34 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <683eb35e.a00a0220.d8eae.0062.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Headers-End: 1uMN5X-000839-TR
X-Mailman-Approved-At: Mon, 09 Jun 2025 22:18:06 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in jfs_truncate_nolock
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
Reply-To: syzbot <syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    f66bc387efbe Merge tag 'scsi-misc' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=14ccbff4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5035170c334b10e0
dashboard link: https://syzkaller.appspot.com/bug?extid=630f6d40b3ccabc8e96e
compiler:       Debian clang version 20.1.6 (++20250514063057+1e4d39e07757-1~exp1~20250514183223.118), Debian LLD 20.1.6
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1725f7f4580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=158147f4580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/fd515d0ab520/disk-f66bc387.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/02091b462a17/vmlinux-f66bc387.xz
kernel image: https://storage.googleapis.com/syzbot-assets/963425e89030/bzImage-f66bc387.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/41b7b3dad955/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=10a93482580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
BUG at fs/jfs/inode.c:370 assert(length >= 0)
------------[ cut here ]------------
kernel BUG at fs/jfs/inode.c:370!
Oops: invalid opcode: 0000 [#1] SMP KASAN PTI
CPU: 1 UID: 0 PID: 5823 Comm: syz-executor203 Not tainted 6.15.0-syzkaller-08486-gf66bc387efbe #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/07/2025
RIP: 0010:jfs_truncate_nolock+0x33b/0x340 fs/jfs/inode.c:370
Code: e8 aa a9 25 08 e8 25 01 89 fe 48 c7 c7 80 6f c3 8b 48 c7 c6 a0 6b c3 8b ba 72 01 00 00 48 c7 c1 c0 6f c3 8b e8 76 4f f0 fd 90 <0f> 0b 0f 1f 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 66
RSP: 0018:ffffc900043af860 EFLAGS: 00010246
RAX: 000000000000002d RBX: ffff8880770d1fd8 RCX: 6cc80c570e63f800
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc900043af910 R08: ffffc900043af547 R09: 1ffff92000875ea8
R10: dffffc0000000000 R11: fffff52000875ea9 R12: fffffa000000000a
R13: dffffc0000000000 R14: ffff8880770d1fd8 R15: 1ffff92000875f10
FS:  0000555593cd0380(0000) GS:ffff888125d98000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fd7dd58a000 CR3: 00000000338e4000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_truncate fs/jfs/inode.c:412 [inline]
 jfs_write_failed+0x119/0x190 fs/jfs/inode.c:289
 jfs_direct_IO+0x1f4/0x220 fs/jfs/inode.c:342
 generic_file_direct_write+0x1d8/0x3e0 mm/filemap.c:4037
 __generic_file_write_iter+0x11d/0x230 mm/filemap.c:4206
 generic_file_write_iter+0x10f/0x540 mm/filemap.c:4246
 new_sync_write fs/read_write.c:593 [inline]
 vfs_write+0x548/0xa90 fs/read_write.c:686
 ksys_write+0x145/0x250 fs/read_write.c:738
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0x3b0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fce1ba0eb99
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd0e6719b8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fce1ba0eb99
RDX: 00000000000000a0 RSI: 0000200000000340 RDI: 0000000000000004
RBP: 00007fce1ba875f0 R08: 0000000000000000 R09: 0000555593cd14c0
R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffd0e6719e0
R13: 00007ffd0e671c08 R14: 431bde82d7b634db R15: 00007fce1ba5703b
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:jfs_truncate_nolock+0x33b/0x340 fs/jfs/inode.c:370
Code: e8 aa a9 25 08 e8 25 01 89 fe 48 c7 c7 80 6f c3 8b 48 c7 c6 a0 6b c3 8b ba 72 01 00 00 48 c7 c1 c0 6f c3 8b e8 76 4f f0 fd 90 <0f> 0b 0f 1f 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 66
RSP: 0018:ffffc900043af860 EFLAGS: 00010246
RAX: 000000000000002d RBX: ffff8880770d1fd8 RCX: 6cc80c570e63f800
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc900043af910 R08: ffffc900043af547 R09: 1ffff92000875ea8
R10: dffffc0000000000 R11: fffff52000875ea9 R12: fffffa000000000a
R13: dffffc0000000000 R14: ffff8880770d1fd8 R15: 1ffff92000875f10
FS:  0000555593cd0380(0000) GS:ffff888125c98000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055923e290368 CR3: 00000000338e4000 CR4: 00000000003526f0
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
