Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4BB93B193
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 Jul 2024 15:25:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sWbzo-0001RV-Re;
	Wed, 24 Jul 2024 13:25:33 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3WzGgZgkbAHoqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sWOBS-00030y-I9 for jfs-discussion@lists.sourceforge.net;
 Tue, 23 Jul 2024 22:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tuj23c4ClzVXWf4TxC/cdJVB/gE1ITlvKVJTRiCxwf8=; b=Zp8N66d8/O1lvpsscwgXRtqD92
 8BUHQUV3Q8hQDVfeeAgmGVJLWkTv7PveyQfnfdZlcbbu8ZwkB+Xt3e2n8woXubaVM0Djs/+2VTD/N
 OpwaF0M1VwDz4OA4iQg1bgJ69C704kjtoefzxIT7d7FuGcOvh/kZnF9G5ryF6K3VnkOQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tuj23c4ClzVXWf4TxC/cdJVB/gE1ITlvKVJTRiCxwf8=; b=W
 b2f+syRnwBWTKbV0LR+27T4R1qYTgKJxOUM4k3TCXu0wIguiHUUUh9YVRKUHcXN0AUiEAgu5xZjGB
 4n22XTBnhDpGB1Io1FE3sdiEzHInc+6wLXepdVJm6J3Msy0j/iG9lPwNhrd4Ot5xly956iMlC+zzK
 i+J6L5dgfSAZ4REI=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sWOBS-0000aN-Di for jfs-discussion@lists.sourceforge.net;
 Tue, 23 Jul 2024 22:40:39 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-8152f0c4e1bso1067090039f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 23 Jul 2024 15:40:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721774427; x=1722379227;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tuj23c4ClzVXWf4TxC/cdJVB/gE1ITlvKVJTRiCxwf8=;
 b=rUxt3ggu54UJo2dGgVQnZBwGAIlCLCgYd29XpEd+kf1e+5YMClhAm6XuKBkmti7xPK
 xUR2M7gx5OCY7m3Y+GY66fm+RPnXlSoQ4vUs6Xd+Lho1qVCVrpshK0jlXUmJTrr7bwD4
 e8fSz6ectoQd/W0r90MFrDzTaxG6zU3neZbQdptkIGFz1pX/rkvJDG4w/jG3ofDTZ6Y/
 NYsC5ISchwCIRqvfWIJMUCPq7ZXIHZe5SRe1a1etE3Xs12D2hhkQrZe5hM8bLIFW01rw
 VWfa2sCdWyIr01DAuQRBTd7gARX87cjgN+g2PpX/5/hO8/ssAgdDzC44w3V/DhIUUVcV
 Tt3g==
X-Gm-Message-State: AOJu0Yw5Jmj5lnO/tjvF5YJRdZ4IUl8gScHtBUmthOI0Ko5OHQvoZp/h
 xl0Ql4ZP0tTuxpJ67ZlmEuVPVGSOzSGfTyt2/uhFK37TxXZC7pRpdEoKil74dRUvqqju2SFHvN1
 o6zgkYG3V6cMnva0fXnBlduMBGySzy1+9+LkdnikViTJZBOUfHDzvSXc=
X-Google-Smtp-Source: AGHT+IFAaPm9UajL6GXF7/pDH0JqTHiu3mXQYr4xniz5kwvXqYfladgB1ToZ2a08YupRumup6tA11VQCsqYcn6nz0h30N3sSP7/t
MIME-Version: 1.0
X-Received: by 2002:a05:6638:148d:b0:4c2:7f96:6f4 with SMTP id
 8926c6da1cb9f-4c28eed1b0emr9492173.4.1721774427680; Tue, 23 Jul 2024 15:40:27
 -0700 (PDT)
Date: Tue, 23 Jul 2024 15:40:27 -0700
In-Reply-To: <000000000000264c0d0617d88912@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000025403d061df1d927@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: -4.7 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 28bbe4ea686a Merge tag 'i2c-for-6.11-rc1-second-batch' of ..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=157aa8e3980000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (-4.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.72 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.72 listed in sa-trusted.bondedsender.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1sWOBS-0000aN-Di
X-Mailman-Approved-At: Wed, 24 Jul 2024 13:25:31 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: user-memory-access Read
 in jfs_statfs
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
Reply-To: syzbot <syzbot+cea4fad5485bc30243a9@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    28bbe4ea686a Merge tag 'i2c-for-6.11-rc1-second-batch' of ..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=157aa8e3980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=9d240b438cabdc8e
dashboard link: https://syzkaller.appspot.com/bug?extid=cea4fad5485bc30243a9
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13d35b1d980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=120152b1980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/cd50d9d26f43/disk-28bbe4ea.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/5cc17b9d307f/vmlinux-28bbe4ea.xz
kernel image: https://storage.googleapis.com/syzbot-assets/bfb78d6d09b6/bzImage-28bbe4ea.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/0522d99a5f0b/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cea4fad5485bc30243a9@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: user-memory-access in instrument_atomic_read include/linux/instrumented.h:68 [inline]
BUG: KASAN: user-memory-access in atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
BUG: KASAN: user-memory-access in jfs_statfs+0x20e/0x510 fs/jfs/super.c:140
Read of size 4 at addr 00000000000050c0 by task syz-executor415/5092

CPU: 1 UID: 0 PID: 5092 Comm: syz-executor415 Not tainted 6.10.0-syzkaller-12084-g28bbe4ea686a #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:93 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
 print_report+0xe8/0x550 mm/kasan/report.c:491
 kasan_report+0x143/0x180 mm/kasan/report.c:601
 kasan_check_range+0x282/0x290 mm/kasan/generic.c:189
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
 jfs_statfs+0x20e/0x510 fs/jfs/super.c:140
 statfs_by_dentry fs/statfs.c:66 [inline]
 vfs_statfs fs/statfs.c:90 [inline]
 user_statfs+0x213/0x460 fs/statfs.c:105
 __do_sys_statfs fs/statfs.c:195 [inline]
 __se_sys_statfs fs/statfs.c:192 [inline]
 __x64_sys_statfs+0xe8/0x1a0 fs/statfs.c:192
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fa111cece59
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 b1 18 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fa111c82218 EFLAGS: 00000246 ORIG_RAX: 0000000000000089
RAX: ffffffffffffffda RBX: 00007fa111d7b718 RCX: 00007fa111cece59
RDX: 00007fa111cece59 RSI: 0000000000000000 RDI: 00000000200003c0
RBP: 00007fa111d7b710 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fa111d4829c
R13: 0032656c69662f2e R14: a92483129444e42d R15: 00007ffecd531438
 </TASK>
==================================================================


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
