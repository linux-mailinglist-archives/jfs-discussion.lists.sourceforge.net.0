Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29302B003E9
	for <lists+jfs-discussion@lfdr.de>; Thu, 10 Jul 2025 15:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=Ufc+AKUu+e5iss7s1akrtH+j4NFrcvsN5aupzhS7Tgc=; b=MnZyAq6c8F6eUkyCKckWyPvoGS
	7uyuse6PYbFPxzFWaq1IheGU89diirhUq6g3bXq68O6OiXDYGSRuAqxF4Lw1A8gg2jgl2NawE1WHv
	/XYxw6ayGHS1gUDiWMvL0VC3dNApe6IwcS9LVj8EDXsiTinOJSuFcLculeLVHKxWAP98=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uZrXj-0003uI-MT;
	Thu, 10 Jul 2025 13:42:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3a4xvaAkbAIw8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uZntP-0007DX-10 for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Jul 2025 09:48:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Th7Zhin8QPUH3N06DLsdoISRDrdM3Ozfgu5cmTbMOjo=; b=Z519fKpY0HDdz+D5DO7sv9W2+a
 CTx6c0rU3CNEeaObBOjKZ/Z+m0XjOu7NU/SycugVf7tqhS5Da1LJaX8Hc1B6egZJoVFHaqZos0eRs
 bI3duDzJe+RPxG/MDggN0EXI+bdrgESAqDKSRgHBxgfbTAayG53/8opIt9daNmpFy95I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Th7Zhin8QPUH3N06DLsdoISRDrdM3Ozfgu5cmTbMOjo=; b=c
 H+Piq70GhYdsT2mbcFR29RZLjfgOZQ3+CuCUXT4LtY8t+79doenOaFDE5CUTZBjRpEFQzwM1WvwQa
 /ThphlkjclyMXV8dS7Te35j7kxv9nGGasFEz7SS0DBHKPF+pw8nB5w+o2Qepe8zkr7k/shFLrMTUQ
 tb90CgIg5RYQpYS0=;
Received: from mail-il1-f207.google.com ([209.85.166.207])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uZntO-0000eK-HT for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Jul 2025 09:48:38 +0000
Received: by mail-il1-f207.google.com with SMTP id
 e9e14a558f8ab-3e059add15eso9548875ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 10 Jul 2025 02:48:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752140908; x=1752745708;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Th7Zhin8QPUH3N06DLsdoISRDrdM3Ozfgu5cmTbMOjo=;
 b=MobuNq7jdXZbKXSYe67hjqUV8uNi5qG89c2onghtJNoJp9HGCH7D2rN9wUK7awmbOp
 nPklvCjmqJ5P43r9BIb8SevRLz41RdgjtC3Pi9UNdmgvToWkprKI8b53Hs8pNiUX8t5H
 xFuBq7Zp5QjfIQv+THZ6kAxHZp4KUXzCD10NmPIfUoKzKnI2rfse+foI5lGQerEEJl3H
 ZwfHEZrcAKexYes2L9qBqJRz7dKwC+L5MnJ+sO/bF1XwTdUp7IohApc/h9gJPWqE+7Nu
 RRR6Sq3zwRlWHNMzoANwqffVFuj/VfwM+2FR1ZLtSduVVjAYNuMFKxWcDd6tIJrzHXMt
 5fjA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0JiqlFosrbTbLMZUyQVStBK499cpSFPfjqS64rQkdB9vnAPO/rYb5C2xxigswj5npH7ffUT+9IWkJW7oVag==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yyw6SwmPxKWEmk4lSpq3RNokOX5QHwcBQNR8Nodh8/DAa9oXHq5
 +FURbkDYZKk+nfTEdx5ySmbA6JZA9NfS1tTYxDIc7wrQz0EiuQdgMVb0Dg+IGaBmd/pNPaxW4DC
 qR6h6fpI7FAv6hEG6ZK88fmPkDrj4Mm/dO9rHM6Fca4K1bEAcS0kXIhCNRuI=
X-Google-Smtp-Source: AGHT+IHIwms0CBlclfEP762gb3HSmOTXv+nfCV7EKukKEdvS5ODM4IecXCP+5KGxqYRP+I3iJhND3FNZ2XHx/rEJ0dfHFloWlJQL
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3192:b0:3dd:d1bc:f08c with SMTP id
 e9e14a558f8ab-3e1670fe7f6mr68367135ab.20.1752140907815; Thu, 10 Jul 2025
 02:48:27 -0700 (PDT)
Date: Thu, 10 Jul 2025 02:48:27 -0700
In-Reply-To: <686a8143.a00a0220.c7b3.005b.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <686f8c6b.a00a0220.26a83e.000e.GAE@google.com>
To: adilger.kernel@dilger.ca, jfs-discussion@lists.sourceforge.net, 
 linkinjeon@kernel.org, linux-ext4@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, sj1557.seo@samsung.com, syzkaller-bugs@googlegroups.com, 
 tytso@mit.edu
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 835244aba90d Add linux-next specific files for 20250709 git tree:
 linux-next console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=10535a8c580000
 kernel config: https://syzkaller.apps [...] 
 Content analysis details:   (2.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.207 listed in wl.mailspike.net]
X-Headers-End: 1uZntO-0000eK-HT
X-Mailman-Approved-At: Thu, 10 Jul 2025 13:42:30 +0000
Subject: Re: [Jfs-discussion] [syzbot] [ext4?] WARNING in bdev_getblk
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
Reply-To: syzbot <syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    835244aba90d Add linux-next specific files for 20250709
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=10535a8c580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=8396fd456733c122
dashboard link: https://syzkaller.appspot.com/bug?extid=01ef7a8da81a975e1ccd
compiler:       Debian clang version 20.1.7 (++20250616065708+6146a88f6049-1~exp1~20250616065826.132), Debian LLD 20.1.7
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=115c40f0580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11856a8c580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e5c5711c47f9/disk-835244ab.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/dd2453f9f672/vmlinux-835244ab.xz
kernel image: https://storage.googleapis.com/syzbot-assets/a81cc03651e7/bzImage-835244ab.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/e3888e058fbc/mount_0.gz
  fsck result: OK (log: https://syzkaller.appspot.com/x/fsck.log?x=12856a8c580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: fs/buffer.c:1125 at __getblk_slow fs/buffer.c:1125 [inline], CPU#0: syz-executor261/5880
WARNING: fs/buffer.c:1125 at bdev_getblk+0x580/0x660 fs/buffer.c:1461, CPU#0: syz-executor261/5880
Modules linked in:
CPU: 0 UID: 0 PID: 5880 Comm: syz-executor261 Not tainted 6.16.0-rc5-next-20250709-syzkaller #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/07/2025
RIP: 0010:__getblk_slow fs/buffer.c:1125 [inline]
RIP: 0010:bdev_getblk+0x580/0x660 fs/buffer.c:1461
Code: 26 fb ff ff e8 81 ee 78 ff 48 c7 c7 20 08 9a 8b 48 c7 c6 02 1b a0 8d 4c 89 fa 4c 89 e9 e8 38 d7 e0 fe eb bd e8 61 ee 78 ff 90 <0f> 0b 90 48 b8 00 00 00 00 00 fc ff df 41 80 3c 07 00 74 08 48 89
RSP: 0018:ffffc9000403f620 EFLAGS: 00010293
RAX: ffffffff8246c6ff RBX: ffff888022d0b998 RCX: ffff888078b31e00
RDX: 0000000000000000 RSI: 0000000000000400 RDI: 0000000000000000
RBP: 0000000000000400 R08: ffff888078b31e00 R09: 0000000000000003
R10: 0000000000000406 R11: 0000000000000000 R12: dffffc0000000000
R13: ffff888022d0b980 R14: 0000000000000400 R15: 1ffff110045a1733
FS:  000055558d712380(0000) GS:ffff888125bd4000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f5b0e5d6000 CR3: 00000000227ea000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 ext4_sb_breadahead_unmovable+0x6f/0xf0 fs/ext4/super.c:270
 __ext4_get_inode_loc+0xcc9/0x1040 fs/ext4/inode.c:4879
 __ext4_get_inode_loc_noinmem fs/ext4/inode.c:4909 [inline]
 __ext4_iget+0x450/0x4260 fs/ext4/inode.c:5168
 __ext4_fill_super fs/ext4/super.c:5500 [inline]
 ext4_fill_super+0x4592/0x6080 fs/ext4/super.c:5724
 get_tree_bdev_flags+0x40e/0x4d0 fs/super.c:1681
 vfs_get_tree+0x8f/0x2b0 fs/super.c:1804
 do_new_mount+0x2a2/0x9e0 fs/namespace.c:3805
 do_mount fs/namespace.c:4133 [inline]
 __do_sys_mount fs/namespace.c:4344 [inline]
 __se_sys_mount+0x317/0x410 fs/namespace.c:4321
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0x3b0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f457044b7da
Code: d8 64 89 02 48 c7 c0 ff ff ff ff eb a6 e8 5e 04 00 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd924f6f58 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffd924f6f70 RCX: 00007f457044b7da
RDX: 0000200000000040 RSI: 0000200000000000 RDI: 00007ffd924f6f70
RBP: 0000200000000000 R08: 00007ffd924f6fb0 R09: 00007ffd924f6fb0
R10: 000000000000088e R11: 0000000000000246 R12: 0000200000000040
R13: 00007ffd924f6fb0 R14: 0000000000000003 R15: 000000000000088e
 </TASK>


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
