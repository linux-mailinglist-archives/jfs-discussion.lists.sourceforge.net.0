Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F809FDB9C
	for <lists+jfs-discussion@lfdr.de>; Sat, 28 Dec 2024 16:59:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tRZDI-0000ND-W9;
	Sat, 28 Dec 2024 15:58:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3yKJuZwkbAAs39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tR9oN-0003D1-E7 for jfs-discussion@lists.sourceforge.net;
 Fri, 27 Dec 2024 12:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9h1oDNWT6JCnCPHSqLeyY4YjBRBPz5CRsTiwRbhYxcU=; b=S2d/4MFmMQP4MI5e8bANnrk8BB
 VMUnsn5pdDCm5W91Nl2mGo7rdcfRfsXQ2Pql48xk6YKa6QHmKb0vLQDKJ1EblCNRy4S6vAB0lhFIU
 ftOeXaAj7xQ3Giet00wXSDqdXgl8hLgbLIlbNEU8wOBPiKYmOXcJ5+g+j77Uf5heqX3c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9h1oDNWT6JCnCPHSqLeyY4YjBRBPz5CRsTiwRbhYxcU=; b=N
 7WW9ns7irRA9VrhYNsYAiuWnUoluHhhllxldVbPkiPZsaVxw/mYkQu9tBKZhJ4aH0MxVNTS5LpsFO
 MIYctthbgLsQ2gi5r7jEFVlk95GE+CWcwKX8UnHc7HeHd9Uvna59Ro634ZMki5x+VloVQn3DgGexO
 p4S5ZIBBEvoXdwhs=;
Received: from mail-il1-f207.google.com ([209.85.166.207])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tR9oM-0002OS-La for jfs-discussion@lists.sourceforge.net;
 Fri, 27 Dec 2024 12:51:27 +0000
Received: by mail-il1-f207.google.com with SMTP id
 e9e14a558f8ab-3a9cbe8fea1so74991085ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 27 Dec 2024 04:51:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735303881; x=1735908681;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9h1oDNWT6JCnCPHSqLeyY4YjBRBPz5CRsTiwRbhYxcU=;
 b=nKHkV5q749Wz9/vDEwv9/i7Xz25ozFzXEhd6m/rVWLJsT28tWxtKT68ZhX6gYsWidW
 t8G5aEcOcMIT2uMR16aEl+WFrPpaxoDjV4XlooeKCgBiSNjq0a1ZupImUjMFhx64CBuG
 RMXUDi1g7MgykHRBbjfjVritDqRcrhgzSBZnDkI9IoFm5sGSxz/fAu3efy5wB5VzKqnG
 Thluyx8P9vv13W9w3j/Ky+kX63WNXT8tQvuTnKzVi2b0TOSGsdg+oUo7xChYOWatYWPz
 HBm5ESqNnc6w+mER/3f2Z+GQ3jYqI9rby0bWDWHBjgNuXtqol8yPPaA3gitiGzjP+lnT
 VkAg==
X-Gm-Message-State: AOJu0YxXf1eQvh0iYlin+DBHxnjhXJbdb8kjCdufeqOv0LMOqMg3OCv6
 9edFhIDRsrur6C7Aed+hFWLVq/YpWXNTC7jtUNX4iqYCvIlP8BMpXiA9AWqyICPMzk205PST8H4
 JxZTlpo6zc0qBG7fUBzezEuecB6VDLV567uETzJmL5XKhy9SnITM62G4OIQ==
X-Google-Smtp-Source: AGHT+IHBIEdjGC7CkuMdE05w56XRFqNSC5LIMdN8U/jRQdE12ct2ZopBrih4uBkNyVEjZHKHnjn8kPW5VGqJLajHHxmic49iQhBl
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:20ed:b0:3a7:e592:55ee with SMTP id
 e9e14a558f8ab-3c2d5724dbemr226515745ab.20.1735303880941; Fri, 27 Dec 2024
 04:51:20 -0800 (PST)
Date: Fri, 27 Dec 2024 04:51:20 -0800
In-Reply-To: <675f6309.050a0220.37aaf.0109.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <676ea2c8.050a0220.2f3838.0481.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: d6ef8b40d075 Merge tag 'sound-6.13-rc5' of git://git.kerne..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=16ddd90f980000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.207 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.207 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.207 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.207 listed in list.dnswl.org]
X-Headers-End: 1tR9oM-0002OS-La
X-Mailman-Approved-At: Sat, 28 Dec 2024 15:58:51 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-use-after-free
 Write in dtSplitPage
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
Reply-To: syzbot <syzbot+a939a1121380d3212940@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    d6ef8b40d075 Merge tag 'sound-6.13-rc5' of git://git.kerne..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=16ddd90f980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=743927383a52aa3d
dashboard link: https://syzkaller.appspot.com/bug?extid=a939a1121380d3212940
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1346e0b0580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/fbe05b4b2f4e/disk-d6ef8b40.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/cd60b8a08817/vmlinux-d6ef8b40.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d8b74baeeae9/bzImage-d6ef8b40.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/a8b14cacf8f6/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a939a1121380d3212940@syzkaller.appspotmail.com

loop2: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:1600:21
index 26 is out of range for type 'lv [20]'
CPU: 1 UID: 0 PID: 6600 Comm: syz.2.264 Not tainted 6.13.0-rc4-syzkaller-00054-gd6ef8b40d075 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x16c/0x1f0 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x110/0x150 lib/ubsan.c:429
 dtSplitPage+0x387f/0x3930 fs/jfs/jfs_dtree.c:1600
 dtSplitUp+0x7da/0x5840 fs/jfs/jfs_dtree.c:1091
 dtInsert+0x8c5/0xb40 fs/jfs/jfs_dtree.c:870
 jfs_rename+0x10a8/0x1820 fs/jfs/namei.c:1225
 vfs_rename+0xf8b/0x21f0 fs/namei.c:5067
 do_renameat2+0xc5f/0xdd0 fs/namei.c:5224
 __do_sys_rename fs/namei.c:5271 [inline]
 __se_sys_rename fs/namei.c:5269 [inline]
 __x64_sys_rename+0x7d/0xa0 fs/namei.c:5269
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xcd/0x250 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fdcb5585d29
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fdcb6401038 EFLAGS: 00000246 ORIG_RAX: 0000000000000052
RAX: ffffffffffffffda RBX: 00007fdcb5775fa0 RCX: 00007fdcb5585d29
RDX: 0000000000000000 RSI: 0000000020000f40 RDI: 0000000020000300
RBP: 00007fdcb5601b08 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007fdcb5775fa0 R15: 00007ffe75efbb88
 </TASK>
---[ end trace ]---


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
