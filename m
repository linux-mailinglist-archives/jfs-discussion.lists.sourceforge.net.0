Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E94B8AFBD5
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 Apr 2024 00:37:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rzOlE-0005d4-Si;
	Tue, 23 Apr 2024 22:37:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3WTUoZgkbAJwOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rzOaL-0004iX-Eh for jfs-discussion@lists.sourceforge.net;
 Tue, 23 Apr 2024 22:25:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sedmCRB2uj77q0fSKeZqXQWSbzSs2fuWMeWh1CFXBaM=; b=lVCXZ+oCFHX/KwtPdbUnu1LZJl
 86abHf1NAJXCwXv9OifDFjAaIr1a9ATsfrYQo82sEXE8UNDaKDsSJqKs7M4MCDTok054z31zJw5pl
 BXzY4yRIN7PWFqaxY6yaWYgEhkeFMUyFJukn1gLJYCCm1YIP9isrCE5i7g9BR3fTX9eo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sedmCRB2uj77q0fSKeZqXQWSbzSs2fuWMeWh1CFXBaM=; b=Y
 4ysmbL+LU0uVUw0ZhR/AHlMszmRG4y8VbNVlkBUoZPxTGA1GWg+jizkzPsD+on5dYhBwzlo2pXHhn
 dkSfQT06c1/4zmvkV2Lo0x/RJs01WpPG4aLZ6RfLHI+NutE8+u3z/GKLWByd/s1VsDd7sNM3Y2VgD
 reQJOsgr9eRakoas=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rzOaB-0005hj-4b for jfs-discussion@lists.sourceforge.net;
 Tue, 23 Apr 2024 22:25:48 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7dad65e5613so254181039f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 23 Apr 2024 15:25:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713911129; x=1714515929;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=sedmCRB2uj77q0fSKeZqXQWSbzSs2fuWMeWh1CFXBaM=;
 b=b4+qKjCJFBMjZu5v1QkkNDjy0s3/X2KzFTwhAju9NWS6xR6lnx2Gq5X+R4lNTfOMOp
 vXJQHi4W9MvggcXdJycgviERD/SEcz3AQSYktYgsnjlPfNJx66rw7/oh/BrlMVeSCiqZ
 2FYTi41k1OizqBDF4+ASN2Rw1yGFEYcRRmc5OqUHXIpJLBWqiBD/hhT459EgKOJkFB9i
 ltmeEVSMvn3AllY7lnmSqj8SERA/660GdlkxM5OZup9UIT0a1tgOAFXsGtnfc/dbsx74
 iPjLlgKcUIXoCvnS004gNNqI8CMyCEpn7QBgCeN5X6ao68PlrH/SLj3jjrvmIbCx1ATG
 Jn7g==
X-Gm-Message-State: AOJu0YyuzuViFdDB3pS3a0mlebnLozM/3BLa7XJEPYWhNVEy7cplxZq5
 PMFJM+rdv9aEjjoLFIK+C6FbXC59DFeA1bp/KEqdA+fuMu7TdBT5FOFUMQcL8apcUOnQCHnT1aJ
 gXWdB85DZaZZfiE/dUcg5QKsC4dfIQuHx+gYlJGxbwA/pHAsYXfsVGjY=
X-Google-Smtp-Source: AGHT+IE67aMdA0tSXgLd6wNUNc5Qs/GVAVjjQKKTFh1BI8qt4IDBG2m2u4C2yNjHtD6EgyroMTQPGZidXRrviYu5qquW6nUdqssa
MIME-Version: 1.0
X-Received: by 2002:a05:6638:840a:b0:482:e78a:899c with SMTP id
 iq10-20020a056638840a00b00482e78a899cmr72874jab.3.1713911129199; Tue, 23 Apr
 2024 15:25:29 -0700 (PDT)
Date: Tue, 23 Apr 2024 15:25:29 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000866ea0616cb082c@google.com>
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
 syzbot found the following issue on: HEAD commit: 3cdb45594619
 Merge tag 's390-6.9-4' of git://git.kernel.or.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=115a2547180000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.72 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1rzOaB-0005hj-4b
X-Mailman-Approved-At: Tue, 23 Apr 2024 22:37:12 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in diFree
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
Reply-To: syzbot <syzbot+241c815bda521982cb49@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    3cdb45594619 Merge tag 's390-6.9-4' of git://git.kernel.or..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=115a2547180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f47e5e015c177e57
dashboard link: https://syzkaller.appspot.com/bug?extid=241c815bda521982cb49
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=109bb8f7180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17e54bab180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/4befd8e98bed/disk-3cdb4559.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/efc09f95602f/vmlinux-3cdb4559.xz
kernel image: https://storage.googleapis.com/syzbot-assets/29a54be03694/bzImage-3cdb4559.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/784deb2bb8a2/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14dc8b53180000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=16dc8b53180000
console output: https://syzkaller.appspot.com/x/log.txt?x=12dc8b53180000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+241c815bda521982cb49@syzkaller.appspotmail.com

------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_imap.c:886:2
index 524288 is out of range for type 'struct mutex[128]'
CPU: 1 PID: 111 Comm: jfsCommit Not tainted 6.9.0-rc4-syzkaller-00173-g3cdb45594619 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:415
 diFree+0x21c3/0x2fb0 fs/jfs/jfs_imap.c:886
 jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
 evict+0x2a8/0x630 fs/inode.c:667
 txUpdateMap+0x829/0x9f0 fs/jfs/jfs_txnmgr.c:2367
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x49a/0xb80 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2f0/0x390 kernel/kthread.c:388
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
---[ end trace ]---
Kernel panic - not syncing: UBSAN: panic_on_warn set ...
CPU: 1 PID: 111 Comm: jfsCommit Not tainted 6.9.0-rc4-syzkaller-00173-g3cdb45594619 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 panic+0x349/0x860 kernel/panic.c:348
 check_panic_on_warn+0x86/0xb0 kernel/panic.c:241
 ubsan_epilogue lib/ubsan.c:222 [inline]
 __ubsan_handle_out_of_bounds+0x141/0x150 lib/ubsan.c:415
 diFree+0x21c3/0x2fb0 fs/jfs/jfs_imap.c:886
 jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
 evict+0x2a8/0x630 fs/inode.c:667
 txUpdateMap+0x829/0x9f0 fs/jfs/jfs_txnmgr.c:2367
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x49a/0xb80 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2f0/0x390 kernel/kthread.c:388
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
Kernel Offset: disabled
Rebooting in 86400 seconds..


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
