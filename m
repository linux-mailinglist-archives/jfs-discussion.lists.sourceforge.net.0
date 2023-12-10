Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4B880CF19
	for <lists+jfs-discussion@lfdr.de>; Mon, 11 Dec 2023 16:12:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rChws-00039m-Fu;
	Mon, 11 Dec 2023 15:11:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3VV11ZQkbABgGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rCDUI-0002HQ-P2 for jfs-discussion@lists.sourceforge.net;
 Sun, 10 Dec 2023 06:40:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xFFwRy2N/0G7JtfDFizFJ6sDME0Agg87dHPC6Ukv4hA=; b=ZBki16kMDsYgi7imb5EIHyQHLE
 8BrpHwxtixFsd9g5Qbg4HMS8yV9kvl2PJ13L8xoXw+j/2m6uUrWYcE0Z6gj6Co1QANqZvTzOuAojH
 BPD/M+WvZA34qWhBy2pmwp6UOKCMO29Rfzd0OenFXxuuj7EdiRmkw/eGz1acON9IE/eo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xFFwRy2N/0G7JtfDFizFJ6sDME0Agg87dHPC6Ukv4hA=; b=l
 YEeQ1P7/HPPdxX7w2pK1pKQieyLeCcegs+UJrXfJTsxXz/AQcq/gn1nLBt3eU+Gv3bITVyyT3IAEI
 DRbb70C4kHPnUDVwRJkuLSf400UPUVo5n5pqyfrAZvgg8h7oH2BWjaR1u15W6JLRw4uiIm3TTIygt
 qTZT11R2oVe4xtkQ=;
Received: from mail-oa1-f70.google.com ([209.85.160.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rCDUI-0000rN-Hv for jfs-discussion@lists.sourceforge.net;
 Sun, 10 Dec 2023 06:40:27 +0000
Received: by mail-oa1-f70.google.com with SMTP id
 586e51a60fabf-1fafbf42404so6447597fac.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 09 Dec 2023 22:40:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702190421; x=1702795221;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xFFwRy2N/0G7JtfDFizFJ6sDME0Agg87dHPC6Ukv4hA=;
 b=VnwQz0Whoiv4Z4S/chQeVLue09a8ZsenLnwxb9j4/bHO3ozBwMD0Le48CaoE4uWwdG
 r+afNENid4tgrWxcUflELIYTjHPMkPX+GhGITp6oDhrdt938EpCTiCk7vu/cTkJV0tnv
 9umECFOKcaLmW8AQjUiGvGwJs+zGjRkVe1f0kl3kM52pRr0EAbyqHjqEcyKYHIYo4lsk
 dtbiswzn4fC9UbqG+bqNiQQJ1TyAWjumaL1eoC/HmCaO5ALeTgYQgqmmcPUzf8KTd+fd
 AWA0c2f7UcdVH83ACsr58SPrie9SWUJQWqQ+J5D2o1+oKtTxMQ/niyA7GR02ExE65S3z
 CEtA==
X-Gm-Message-State: AOJu0YzGYLTLcdqIPYYTthWSYHpsFEL/FvmlgGm4TRgWpe1qCRxr/ESn
 dlZSNFairJl8NDFaYZOTmPOQ1+vy3JzQJkD3fss3S8T/j6ug2fk=
X-Google-Smtp-Source: AGHT+IGCIyoxMIK1pCg+Sf7WO5ZlCiJNt87mIJLCEcZMeArss0IgicVboiTl5pslJEOrUZg0to1SjbN+qQuRVEqyia8ytryejc1/
MIME-Version: 1.0
X-Received: by 2002:a05:6871:5214:b0:1fa:f432:231 with SMTP id
 ht20-20020a056871521400b001faf4320231mr3318822oac.3.1702190421024; Sat, 09
 Dec 2023 22:40:21 -0800 (PST)
Date: Sat, 09 Dec 2023 22:40:20 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000062a4cc060c2217de@google.com>
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
 syzbot found the following issue on: HEAD commit: bee0e7762ad2
 Merge tag 'for-linus-iommufd' of git://git.ke.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1088351ce80000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.70 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rCDUI-0000rN-Hv
X-Mailman-Approved-At: Mon, 11 Dec 2023 15:11:56 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in diNewExt
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
Reply-To: syzbot <syzbot+553d90297e6d2f50dbc7@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    bee0e7762ad2 Merge tag 'for-linus-iommufd' of git://git.ke..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1088351ce80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b45dfd882e46ec91
dashboard link: https://syzkaller.appspot.com/bug?extid=553d90297e6d2f50dbc7
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=122acc3ce80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=110a49b4e80000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/af357ba4767f/disk-bee0e776.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ae4d50206171/vmlinux-bee0e776.xz
kernel image: https://storage.googleapis.com/syzbot-assets/e12203376a9f/bzImage-bee0e776.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/d8974c833f6f/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=133caf54e80000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=10bcaf54e80000
console output: https://syzkaller.appspot.com/x/log.txt?x=173caf54e80000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+553d90297e6d2f50dbc7@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_imap.c:2360:2
index -878706688 is out of range for type 'struct iagctl[128]'
CPU: 1 PID: 5065 Comm: syz-executor282 Not tainted 6.7.0-rc4-syzkaller-00009-gbee0e7762ad2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 11/10/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_out_of_bounds+0x11c/0x150 lib/ubsan.c:348
 diNewExt+0x3cf3/0x4000 fs/jfs/jfs_imap.c:2360
 diAllocExt fs/jfs/jfs_imap.c:1949 [inline]
 diAllocAG+0xbe8/0x1e50 fs/jfs/jfs_imap.c:1666
 diAlloc+0x1d3/0x1760 fs/jfs/jfs_imap.c:1587
 ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x1c5/0xb90 fs/jfs/namei.c:225
 vfs_mkdir+0x2f1/0x4b0 fs/namei.c:4106
 do_mkdirat+0x264/0x3a0 fs/namei.c:4129
 __do_sys_mkdir fs/namei.c:4149 [inline]
 __se_sys_mkdir fs/namei.c:4147 [inline]
 __x64_sys_mkdir+0x6e/0x80 fs/namei.c:4147
 do_syscall_x64 arch/x86/entry/common.c:51 [inline]
 do_syscall_64+0x45/0x110 arch/x86/entry/common.c:82
 entry_SYSCALL_64_after_hwframe+0x63/0x6b
RIP: 0033:0x7fcb7e6a0b57
Code: ff ff 77 07 31 c0 c3 0f 1f 40 00 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff c3 66 0f 1f 44 00 00 b8 53 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd83023038 EFLAGS: 00000286 ORIG_RAX: 0000000000000053
RAX: ffffffffffffffda RBX: 00000000ffffffff RCX: 00007fcb7e6a0b57
RDX: 00000000000a1020 RSI: 00000000000001ff RDI: 0000000020000140
RBP: 0000000020000140 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000286 R12: 00007ffd830230d0
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
================================================================================


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
