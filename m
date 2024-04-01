Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E435489463B
	for <lists+jfs-discussion@lfdr.de>; Mon,  1 Apr 2024 22:48:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rrOZV-0001J0-PE;
	Mon, 01 Apr 2024 20:48:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3PPoKZgkbAJMFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rrME0-0000Yq-1t for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Apr 2024 18:17:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EJlEndQEIzeEpe1fH5ecDqbiBNhCkTHqvRITIB+hE1o=; b=hja2nE682yVApJtSmzCK2jlkyL
 yWoEY+8HorlA1QEJyaiossmDxly2RzCtT186r6/htgs7yfXmJXZVRMcrWOc8FB6asC1y4xwKUrXub
 6V1sbOGPHkGfGz1vU+orkWhc3klwgCBlWd//8IOAPV+TrOpLWL91wGEtu9f3c3C7OY00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EJlEndQEIzeEpe1fH5ecDqbiBNhCkTHqvRITIB+hE1o=; b=W
 AZ6xmVJasDq2ECOG6w00gujrY2UDqhBupNfaGZvDrTChMD3BJbFhZbQ44qXQ+wr9l+foxougFNnKk
 CoQcgBHwTpwUq/5Ag9rftGFfrEcwmvAU9hDqfcaenDWFYq0n1pyyiW09V9UNZHppgecSzAX2BOKoB
 yM6JsZpGjJ2TcmWE=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rrMDz-0002Wq-84 for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Apr 2024 18:17:40 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7c7e21711d0so312043439f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 01 Apr 2024 11:17:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711995454; x=1712600254;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=EJlEndQEIzeEpe1fH5ecDqbiBNhCkTHqvRITIB+hE1o=;
 b=AjtwtQMH8P3+BvEUgBgYl2rMqq/VulEiD20Az98wWXg7ynzKymK8Q4RUQUTtIv6iwx
 M4AfjEdZcz+WcL+6q3eecRSTx/z6xBDUj8RbbIBDxvgifyquHODp35oN+wBuFYw2JoFx
 1TIIASSzD2SxeWbAGNNCjn8HMBGz8R0yJgzEoVfEofUhImz9rGxvGn6wr9Qd00PLOR0P
 oDBd0Zvc0vQTkX6T6LSdijeJyQdFShNgtFayYyFhB0dYlarRoAwxrJ9J9mvmsj3KYvLV
 THcVaBR0ZpNHmVnQ3ijCrQ51uDGz06s9iywKPE6XKIAJZOcXIXaLAzoZUz2W+1NQjqtO
 tnUA==
X-Gm-Message-State: AOJu0Yz/k0lCcgTZKSspWdBMhdrK51byZ5wKFTR4jUSji/zaup1Rw+IO
 WpTUmX/RaCKoQDItg78POywzakf2J2iLDDkz5rtfxBFyb3ubJ0KB1KDvOdetQENqgM7ipuNJPdk
 ufNdCZ3kCkEWJF8R/isrp+SbOcTWBLIdjEg+nfe+Nl7uwvj1z+WUCgSqlEw==
X-Google-Smtp-Source: AGHT+IFEGWgQDwItsI3Up41wsO/M+n4dRqh5NjCYKEq5pkmMs7ZwpVG+VeSxDvQ2a3yXoh1JRjrzhmcJVaGp3bu1VntcEsZVY7fr
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3488:b0:47c:195d:16f6 with SMTP id
 t8-20020a056638348800b0047c195d16f6mr429616jal.6.1711995452391; Mon, 01 Apr
 2024 11:17:32 -0700 (PDT)
Date: Mon, 01 Apr 2024 11:17:32 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cc14b006150d005a@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: a6bd6c933339
 Add linux-next specific files for 20240328 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=179ebb76180000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1rrMDz-0002Wq-84
X-Mailman-Approved-At: Mon, 01 Apr 2024 20:48:01 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbSplit (2)
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
Reply-To: syzbot <syzbot+b5ca8a249162c4b9a7d0@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    a6bd6c933339 Add linux-next specific files for 20240328
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=179ebb76180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b0058bda1436e073
dashboard link: https://syzkaller.appspot.com/bug?extid=b5ca8a249162c4b9a7d0
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13ef71f9180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=132cf70d180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/7c1618ff7d25/disk-a6bd6c93.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/875519f620fe/vmlinux-a6bd6c93.xz
kernel image: https://storage.googleapis.com/syzbot-assets/ad92b057fb96/bzImage-a6bd6c93.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/0e8af372eab3/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b5ca8a249162c4b9a7d0@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2639:11
shift exponent 121 is too large for 32-bit type 'int'
CPU: 0 PID: 5079 Comm: syz-executor118 Not tainted 6.9.0-rc1-next-20240328-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c8/0x420 lib/ubsan.c:454
 dbSplit+0x21a/0x220 fs/jfs/jfs_dmap.c:2639
 dbAllocBits+0x4e5/0x9a0 fs/jfs/jfs_dmap.c:2191
 dbAllocDmap fs/jfs/jfs_dmap.c:2032 [inline]
 dbAllocDmapLev+0x250/0x4a0 fs/jfs/jfs_dmap.c:1986
 dbAllocCtl+0x113/0x920 fs/jfs/jfs_dmap.c:1823
 dbAllocAG+0x28f/0x10b0 fs/jfs/jfs_dmap.c:1364
 dbAlloc+0x658/0xca0 fs/jfs/jfs_dmap.c:888
 dtSplitUp fs/jfs/jfs_dtree.c:979 [inline]
 dtInsert+0xda7/0x6b00 fs/jfs/jfs_dtree.c:868
 jfs_create+0x7ba/0xb90 fs/jfs/namei.c:137
 lookup_open fs/namei.c:3497 [inline]
 open_last_lookups fs/namei.c:3566 [inline]
 path_openat+0x1425/0x3240 fs/namei.c:3796
 do_filp_open+0x235/0x490 fs/namei.c:3826
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1406
 do_sys_open fs/open.c:1421 [inline]
 __do_sys_open fs/open.c:1429 [inline]
 __se_sys_open fs/open.c:1425 [inline]
 __x64_sys_open+0x225/0x270 fs/open.c:1425
 do_syscall_64+0xfb/0x240
 entry_SYSCALL_64_after_hwframe+0x6d/0x75
RIP: 0033:0x7faf13ba19b9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff9504bea8 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 00007fff9504c088 RCX: 00007faf13ba19b9
RDX: 0000000000000000 RSI: 0000000000000040 RDI: 0000000020000400
RBP: 00007faf13c1a610 R08: 00000000000060cc R09: 0000000000000000
R10: 00007fff9504bd70 R11: 0000000000000246 R12: 0000000000000001
R13: 00007fff9504c078 R14: 0000000000000001 R15: 0000000000000001
 </TASK>
---[ end trace ]---


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
