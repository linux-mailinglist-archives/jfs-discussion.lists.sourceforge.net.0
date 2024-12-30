Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C77739FE8D8
	for <lists+jfs-discussion@lfdr.de>; Mon, 30 Dec 2024 17:01:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tSICG-0003xY-Ad;
	Mon, 30 Dec 2024 16:00:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <37uhxZwkbAMk7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tS3dB-0002aS-Mp for jfs-discussion@lists.sourceforge.net;
 Mon, 30 Dec 2024 00:27:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TIH+bkeEH98GfDanTKWSmh4Qw8Xudc9qq/9KorgmJDI=; b=edh+8I77oFOg5WJTuemA6YixLs
 QrOmEjZJy/jiLG7ascoWL/Zz1LOZtXgAYjRZ+It7Kkrrow+voSZnTwZ8dUlAUQF6NQ/XoiKoGGhOT
 jzP/F/Zvj49yyz9RAnppwODUCCzDjFunIFsrTzOW0vASMKsHuf0dtdhvJUmuFpg4uUg0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TIH+bkeEH98GfDanTKWSmh4Qw8Xudc9qq/9KorgmJDI=; b=f
 Qjp/bw9/NY8HI3MiMGRlNzovqjR0MSIeK8rhoMP6fULQcVIeegMrlEO9EBNc/b3sMA4i3l3eH4y6V
 GnLr8GWz8JCYOL+82zta/UETSPcTJRUPgPTEb7AMehIhcRG7adg+68gc1i9+IFcRI0Q2TC/oxtCRD
 oHrwFW/36SaUXyO4=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tS3dA-0007hR-Ub for jfs-discussion@lists.sourceforge.net;
 Mon, 30 Dec 2024 00:27:37 +0000
Received: by mail-il1-f205.google.com with SMTP id
 e9e14a558f8ab-3a819a4e83dso96440275ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 29 Dec 2024 16:27:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735518446; x=1736123246;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TIH+bkeEH98GfDanTKWSmh4Qw8Xudc9qq/9KorgmJDI=;
 b=xLXpxTuYeV/q0gtbrLsH01NwKABVwhL6urf5Lcf6z68uXlZRyNc6iWN6ee/FFSp1Sb
 lOZ3SMUaGsDfhV/DCp6V0KZeB5HSLZeSuVw4Y+R+lCabnmmLsEgMO8TbffExOex+76xM
 1xSTO1+7clciigOeaYChis7VSJkeORGxUOdkZWxsARcoLgvWbLAi3lUK37VFhbpEh/xo
 ZLjjlg8vSaHyDqyFJvy5eoigLcBPI2P+U059c5kjkpjG/hwKdmUlLwGqqDpiZhpp6/ze
 8KEh88PRPOSYQBVvtBTcGKAZN0gwCR78VSJeH3GRi0/gwttxCGZGh6e08/3vd7C2uDSs
 v2jg==
X-Gm-Message-State: AOJu0Yx/TKdpGJ8Mld8KQ/oJx2udVsyK4AP/EpHsjE0UTZKEOkAotxm7
 sWX16gLGYRN3Qv5S5pfu3NQPKlqX3EWtKSbHAguVmkSIyM9bbHoNGobR5xTq0lZcGFZhUhq/hNa
 kGUilqUxOjDsfhvajjkFkApakDopL880eeHeSBQ15330awIon4L04i4tHGQ==
X-Google-Smtp-Source: AGHT+IE32grr+XR9HYdUMjVAICYtc37l4RwgAz903tfYlh3nH1m6bt1CDAb5CXHVowMPWcyj7V6yE1+7oEUJ3hOmm+ZTDPIaeVDA
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:219c:b0:3a7:98c4:86a9 with SMTP id
 e9e14a558f8ab-3c2d5915ea4mr306396005ab.20.1735518446116; Sun, 29 Dec 2024
 16:27:26 -0800 (PST)
Date: Sun, 29 Dec 2024 16:27:26 -0800
In-Reply-To: <67666968.050a0220.25abdd.0127.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6771e8ee.050a0220.2f3838.04af.GAE@google.com>
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
 HEAD commit: 4099a71718b0 Merge tag 'sched-urgent-2024-12-29' of git://..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1313a818580000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.205 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.205 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.205 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.205 listed in wl.mailspike.net]
X-Headers-End: 1tS3dA-0007hR-Ub
X-Mailman-Approved-At: Mon, 30 Dec 2024 16:00:37 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in dtReadFirst (2)
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
Reply-To: syzbot <syzbot+9120834fc227768625ba@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    4099a71718b0 Merge tag 'sched-urgent-2024-12-29' of git://..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1313a818580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4c4096b0d467a682
dashboard link: https://syzkaller.appspot.com/bug?extid=9120834fc227768625ba
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15382ac4580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=146a70b0580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/c085f394f11d/disk-4099a717.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/5aac16cee3e0/vmlinux-4099a717.xz
kernel image: https://storage.googleapis.com/syzbot-assets/f9412e3c8aa0/bzImage-4099a717.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/3ac4b5cf3ab6/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9120834fc227768625ba@syzkaller.appspotmail.com

------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:3096:10
index 237 is out of range for type 'struct dtslot[128]'
CPU: 0 UID: 0 PID: 5822 Comm: syz-executor740 Not tainted 6.13.0-rc4-syzkaller-00110-g4099a71718b0 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dtReadFirst+0x622/0xc50 fs/jfs/jfs_dtree.c:3096
 dtReadNext fs/jfs/jfs_dtree.c:3147 [inline]
 jfs_readdir+0x9aa/0x3c50 fs/jfs/jfs_dtree.c:2862
 wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents64 fs/readdir.c:403 [inline]
 __se_sys_getdents64+0x1e2/0x4b0 fs/readdir.c:389
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f1a02212fa3
Code: c1 66 0f 1f 44 00 00 48 83 c4 08 48 89 ef 5b 5d e9 a2 48 fb ff 66 90 b8 ff ff ff 7f 48 39 c2 48 0f 47 d0 b8 d9 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 05 c3 0f 1f 40 00 48 c7 c2 b8 ff ff ff f7 d8
RSP: 002b:00007fffd5e0be18 EFLAGS: 00000293 ORIG_RAX: 00000000000000d9
RAX: ffffffffffffffda RBX: 000055557b4c7730 RCX: 00007f1a02212fa3
RDX: 0000000000008000 RSI: 000055557b4c7730 RDI: 0000000000000004
RBP: 000055557b4c7704 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000001000 R11: 0000000000000293 R12: ffffffffffffffb8
R13: 0000000000000010 R14: 000055557b4c7700 R15: 00007fffd5e0e090
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
