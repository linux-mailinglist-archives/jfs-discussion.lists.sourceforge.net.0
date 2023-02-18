Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F40569C3AC
	for <lists+jfs-discussion@lfdr.de>; Mon, 20 Feb 2023 01:35:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pTu8y-0006kh-3X;
	Mon, 20 Feb 2023 00:35:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3MS7xYwkbAHgouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pTTNA-0001y9-2B for jfs-discussion@lists.sourceforge.net;
 Sat, 18 Feb 2023 19:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pXywPTF4TFW1xlap95rMnZUmiADyD3ZS4ocYSqPDLgo=; b=bdCKR9JOWpEc7i4i1yrdmM3fHw
 Lckxc6l0g78bSlSARhMHGEs5ar1hfeKYmlRcAmajTzz9LdWIqO6dsnrFALVK5ukhYg8YfluIrDjWB
 IU4l2XpDlkv6E/+qmZlHpF5hBSbc783rzXMEYlJiFDeZ+z9uO4XxNMjLXBcgzzBectH4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pXywPTF4TFW1xlap95rMnZUmiADyD3ZS4ocYSqPDLgo=; b=e
 12Pfz/wE4PAlGH8EHXkPAXnuToWZpu585UzGerkYKQPk55rdgoQGBzW3xwga+GmuZLcIhJigVuZmY
 nkCXsdmFgFHcTMuQ4N4VcI2I21RAsT3/GtnfSv1MoCp18HQplzUkmvqeYk7ixGCG1ngjOUaxQT4LY
 AsIH1pYOHqZ+IQH0=;
Received: from mail-io1-f79.google.com ([209.85.166.79])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pTTN8-0091jy-Kn for jfs-discussion@lists.sourceforge.net;
 Sat, 18 Feb 2023 19:59:51 +0000
Received: by mail-io1-f79.google.com with SMTP id
 m23-20020a6bea17000000b007076e06ba3dso563487ioc.20
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 18 Feb 2023 11:59:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=pXywPTF4TFW1xlap95rMnZUmiADyD3ZS4ocYSqPDLgo=;
 b=fFl0s7di5Fit/mRqiSoFYzqbS2kDrOoIlJoNXrfo9C/d4a8pViF18scicN6nO2pgAR
 d3TQOkfr3Vkz5lss7vi0JIR0zr18FwCIxr1j5bjfT+wZF+zpxYjwIz+OvTRyCETTqAKM
 TRZnvDOkkFcexx3y7YYcF3lCkpREIjWiv+FudjaOZ/t7xylZFsDcWrtWD4DBSiX5zrWW
 y9rwvEWkBl07qzOBfxWGeBI2LEC50aTFTOOOUargik7Y7sc1Q/n2FX0XrgaqMs00nIK6
 yJciqJHo3nRZq+nOjAb0WAJRqxg4zZ0ScMBb0Nx118NOQNPFdofBOgtzjSzPl4ilfjMd
 CGzA==
X-Gm-Message-State: AO0yUKUntXnKBHxBg9U7HLeq/f2Pq8XKe987KxqX3/YvbYBKtr0Ne62k
 XXpzNKlxIoZRH1U0MutSFo4y2cr3cxhE0pAzg1RPCJR/VdBZOADnZw==
X-Google-Smtp-Source: AK7set8q/Ao2UbhKr6G89mfVyUf9BSu4q128HL/jf53SxGxcEWKRVQlOF1/2bbtfXNsD9l6OQPs2yoYa2vtYmTDA1YYvPxtjdT45
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1121:b0:3c5:139d:6097 with SMTP id
 f1-20020a056638112100b003c5139d6097mr2505027jar.5.1676750385042; Sat, 18 Feb
 2023 11:59:45 -0800 (PST)
Date: Sat, 18 Feb 2023 11:59:45 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000013dee605f4fedf8b@google.com>
From: syzbot <syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 82eac0c830b7
 Merge tag 'for-linus' of git://git.kernel.org.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=108c3220c80000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.79 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.79 listed in wl.mailspike.net]
X-Headers-End: 1pTTN8-0091jy-Kn
X-Mailman-Approved-At: Mon, 20 Feb 2023 00:34:58 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KASAN: null-ptr-deref Read in
 txBegin
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

HEAD commit:    82eac0c830b7 Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=108c3220c80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=42ba4da8e1e6af9f
dashboard link: https://syzkaller.appspot.com/bug?extid=f1faa20eec55e0c8644c
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12dea55f480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/da7d342f68c6/disk-82eac0c8.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/bc04dc7d5c40/vmlinux-82eac0c8.xz
kernel image: https://storage.googleapis.com/syzbot-assets/9cbbc3b0e69a/bzImage-82eac0c8.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/40deef8f8496/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com

read_mapping_page failed!
ERROR: (device loop0): txCommit: 
==================================================================
BUG: KASAN: null-ptr-deref in instrument_atomic_read include/linux/instrumented.h:72 [inline]
BUG: KASAN: null-ptr-deref in _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline]
BUG: KASAN: null-ptr-deref in txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366
Read of size 8 at addr 0000000000000040 by task syz-executor.0/5172

CPU: 0 PID: 5172 Comm: syz-executor.0 Not tainted 6.2.0-rc8-syzkaller-00019-g82eac0c830b7 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/21/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 print_report+0xe6/0x4f0 mm/kasan/report.c:420
 kasan_report+0x13a/0x170 mm/kasan/report.c:517
 kasan_check_range+0x283/0x290 mm/kasan/generic.c:189
 instrument_atomic_read include/linux/instrumented.h:72 [inline]
 _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline]
 txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366
 jfs_link+0x1ac/0x5e0 fs/jfs/namei.c:802
 vfs_link+0x662/0x810 fs/namei.c:4529
 do_linkat+0x5b4/0x9d0 fs/namei.c:4600
 __do_sys_linkat fs/namei.c:4628 [inline]
 __se_sys_linkat fs/namei.c:4625 [inline]
 __x64_sys_linkat+0xdd/0xf0 fs/namei.c:4625
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7ff38288c0f9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 19 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ff383575168 EFLAGS: 00000246 ORIG_RAX: 0000000000000109
RAX: ffffffffffffffda RBX: 00007ff3829abf80 RCX: 00007ff38288c0f9
RDX: 0000000000000004 RSI: 0000000020000040 RDI: 0000000000000004
RBP: 00007ff3828e7ae9 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000020000080 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffe4ad3d6bf R14: 00007ff383575300 R15: 0000000000022000
 </TASK>
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
