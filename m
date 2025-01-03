Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FED1A00AA8
	for <lists+jfs-discussion@lfdr.de>; Fri,  3 Jan 2025 15:38:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tTioY-0001aV-GK;
	Fri, 03 Jan 2025 14:38:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3AN53ZwkbAN0RXYJ9KKDQ9OOHC.FNNFKDTRDQBNMSDMS.BNL@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tThCG-0004q3-Ln for jfs-discussion@lists.sourceforge.net;
 Fri, 03 Jan 2025 12:54:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5ITWS9h7vtpoa0NpfmTsr8n6yLqz8WaLskcFWkh1/us=; b=JISQQyhXOUNz6Et5jXpll+Q1Qe
 jEUu/0aCH7+5O4v+/uuOnmfmTO9nA+ALcKg+LF1wO5AbTUYtSgPlbcL9znBI/G8nCh9PC3k389hTr
 8dvK9j6cEpGcGD+881/PK8D03xI7hMsQ08sZU3GiAoWwLVhFLAdxtIfdoz4ZueulTdD0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5ITWS9h7vtpoa0NpfmTsr8n6yLqz8WaLskcFWkh1/us=; b=Z
 4WylLBvJMu3u6LDil7GHzomv6Lm9FkclXDhWxfW/2FkYaPEGY4QxjPjTRQF6LXgDuvFZSywEjWiJw
 QehQxY0BNPta+tc3NgasrKFJQWcYgkAlwvSlU/HRl/qIgWQtk67QwrYPmUEOob9hPmEF+x2yLAh94
 yTl2FscYRRPv4+Vc=;
Received: from mail-io1-f77.google.com ([209.85.166.77])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tThCF-0007jn-7c for jfs-discussion@lists.sourceforge.net;
 Fri, 03 Jan 2025 12:54:35 +0000
Received: by mail-io1-f77.google.com with SMTP id
 ca18e2360f4ac-844dfe8dad5so2117772639f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 03 Jan 2025 04:54:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735908864; x=1736513664;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5ITWS9h7vtpoa0NpfmTsr8n6yLqz8WaLskcFWkh1/us=;
 b=KUGlOwPh8ylX2kE64NBmwMl2Dw+DQr1XfpjJwPaMg+Iumihzq1GCY6pQWbQLzrqoid
 6xIjotKd9/aEVtn8b1P3uxA6KzYQ+5c9sfNJ5vdJtXmC6Nuhjte1t7DUPkTbUstFGQU8
 eQSZPlRtVhcw1r8Jusb+S4ECfQODomHzG7V4gFGZ6cNvzYNk9vPMMwKovRaFc4+rDHrQ
 HQqvOtq5HQweFDyr3SNo9XrdmxG4wj7nTnNM4ms4Jx+1W55TZWt65qY+JjlnXxOkoAR1
 7I9jNakJBC2C2LgR/dEYfR939vRWKspM/QiRZnXO7HjJ4JC2qw5KDD2keOjlX46Oh9MF
 CJlw==
X-Gm-Message-State: AOJu0YxkANmFM2zMRxvrqVmDFzRvU62F/daL7/pNCQO9WpuqJjLi3MBg
 VNZoJ3WR2f0KAER6zv8shxTynwCV1/7thtFUkrKnu5TrysTP8AclXUnua89NtGBET6Rn3jw71Zm
 NfcLs7Gh9460EHnF/eooAPoDCrr5H6PDSalkErt/6byooVk6rZRcc4QVXUg==
X-Google-Smtp-Source: AGHT+IGnQp8EW6Ng7LLiurmcFtCOBZN6qk1XUU9+nqfxA8+dFfGCYqVedQ5O9u9FYdhlH8bikpWSDA6n1ov+Ff7tFmkbRj7L1/0m
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d0e:b0:3a7:87f2:b013 with SMTP id
 e9e14a558f8ab-3c2d1e7df90mr374816275ab.4.1735908864382; Fri, 03 Jan 2025
 04:54:24 -0800 (PST)
Date: Fri, 03 Jan 2025 04:54:24 -0800
In-Reply-To: <675f6309.050a0220.37aaf.0109.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6777de00.050a0220.178762.0044.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 0bc21e701a6f MAINTAINERS: Remove Olof from SoC maintainers git
 tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=132bbd0f980000
 kernel config: https://syzkaller.app [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.77 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.77 listed in sa-accredit.habeas.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.77 listed in wl.mailspike.net]
X-Headers-End: 1tThCF-0007jn-7c
X-Mailman-Approved-At: Fri, 03 Jan 2025 14:38:13 +0000
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

HEAD commit:    0bc21e701a6f MAINTAINERS: Remove Olof from SoC maintainers
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=132bbd0f980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba7cde9482d6bb6
dashboard link: https://syzkaller.appspot.com/bug?extid=a939a1121380d3212940
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10c758b0580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17d726f8580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/858bb9b76ee5/disk-0bc21e70.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f3c83ca1ab45/vmlinux-0bc21e70.xz
kernel image: https://storage.googleapis.com/syzbot-assets/813f2115e026/bzImage-0bc21e70.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/dfe2948d3efd/mount_0.gz

Bisection is inconclusive: the first bad commit could be any of:

781773e3b680 sched/fair: Implement ENQUEUE_DELAYED
a1c446611e31 sched,freezer: Mark TASK_FROZEN special
e1459a50ba31 sched: Teach dequeue_task() about special task states
f12e148892ed sched/fair: Prepare pick_next_task() for delayed dequeue
152e11f6df29 sched/fair: Implement delayed dequeue
2e0199df252a sched/fair: Prepare exit/cleanup paths for delayed_dequeue
54a58a787791 sched/fair: Implement DELAY_ZERO

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13f5fadf980000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a939a1121380d3212940@syzkaller.appspotmail.com

------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:1600:11
index 22 is out of range for type 'struct lv[20]'
CPU: 1 UID: 0 PID: 5819 Comm: syz-executor559 Not tainted 6.13.0-rc5-syzkaller-00012-g0bc21e701a6f #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dtSplitPage+0x3e5e/0x3ed0 fs/jfs/jfs_dtree.c:1600
 dtSplitUp fs/jfs/jfs_dtree.c:1091 [inline]
 dtInsert+0x14bd/0x6c10 fs/jfs/jfs_dtree.c:870
 jfs_rename+0xafe/0x1bf0 fs/jfs/namei.c:1225
 vfs_rename+0xbdb/0xf00 fs/namei.c:5067
 do_renameat2+0xd94/0x13f0 fs/namei.c:5224
 __do_sys_rename fs/namei.c:5271 [inline]
 __se_sys_rename fs/namei.c:5269 [inline]
 __x64_sys_rename+0x82/0x90 fs/namei.c:5269
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f57df948b79
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc55072638 EFLAGS: 00000246 ORIG_RAX: 0000000000000052
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f57df948b79
RDX: 00007f57df948b79 RSI: 0000000020000f40 RDI: 0000000020000300
RBP: 00007f57df9c1610 R08: 00007ffc55072808 R09: 00007ffc55072808
R10: 00007ffc55072808 R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffc550727f8 R14: 0000000000000001 R15: 0000000000000001
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
