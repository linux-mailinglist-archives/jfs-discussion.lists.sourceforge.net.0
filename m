Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5875C733220
	for <lists+jfs-discussion@lfdr.de>; Fri, 16 Jun 2023 15:24:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qA9R6-00027O-2V;
	Fri, 16 Jun 2023 13:24:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3r5iLZAkbADoouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1q9vzq-00012c-QH for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Jun 2023 23:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uI/qin+IXEGRa3nylH1otRAWekGozAdq8GTVNCdVh5o=; b=YKBYuC3phe7i0Pr0jWOfgaxGFn
 sfC7fEAPQNajqFPFD3sKFFJd/pDG2AFCVgCwRGcZcBNrKpr7SyhIrt2Je1v5sOMhhL4JFA2bIMNSk
 b77pL3TGFzz2gixg5WRYZkeN5Lz2sNfd+J8c6CEqfdE46ZJmHQd1eUiO6rW4nbOHQFEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uI/qin+IXEGRa3nylH1otRAWekGozAdq8GTVNCdVh5o=; b=X
 zEdfuuSXDq5nSMrbw27GxPSR/oMLPAAzkn9SzD5qD8vN+4R6FpIwtVBF8ofej9YPyPcSR9psuWoGT
 S2e5aigiZr/JdZ7LH0BYUS2+17gC+NCzZ53TpuXvpISh/Doj3o4624YDgtIPVxwLsySfi1AyJ/Fge
 jj1UnHDvfLMS9Ljg=;
Received: from mail-io1-f79.google.com ([209.85.166.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q9vzp-0005iU-8D for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Jun 2023 23:03:19 +0000
Received: by mail-io1-f79.google.com with SMTP id
 ca18e2360f4ac-778d823038bso5090139f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 15 Jun 2023 16:03:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686870191; x=1689462191;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=uI/qin+IXEGRa3nylH1otRAWekGozAdq8GTVNCdVh5o=;
 b=gynyWTiMyejpRfdfX7/hb0FLvQcAWuNcXPkPqgDGpdm7nUx6C7SA6ywRp68/2zz/1U
 wHXhKI/SoJtmEj6RMCAIiKMfq1VpBW/eewreLIoZG8x+2N0DZ5KvIESGqBa3oTwTg+2v
 B2yS5KBu6X7DFuvSwGRKvHksn1B642sgSnAEorkXbFxnoybxmWPnaRKIk6YwxltY9dwA
 FWwkL/pBAQjtKVGZap7MdcMMPlsYLT3yLijvcjrI6Vz9QvhqcwOGmdcmk3UtBiU5SOI1
 eaJLrqdHI62OKTGiHnW4M6HxI72hm28syE5u63nvlQ8qM3y53zHaKgRRYkYFd/gFSpLO
 b9Qg==
X-Gm-Message-State: AC+VfDzyYrmq4UJkxBWU8lYgk73XTfa5DsmrEjTrapSvPbaAjpggqr3U
 PfnWmhL4VkM7Q8p3jb+owUr+NPqXSGKXtDlfhL3bN9vv1Nu8Lyq0pw==
X-Google-Smtp-Source: ACHHUZ4iIHMRj8/x9kKb4jIVvW4ik6IoN9ypPW/7WcMpCPeLryEytqJt4FNV1MSA9sIMbUA0ZgCKmFZq/0cej/haU0A7dpgST8dK
MIME-Version: 1.0
X-Received: by 2002:a6b:fd03:0:b0:763:dd01:e143 with SMTP id
 c3-20020a6bfd03000000b00763dd01e143mr280370ioi.2.1686870191727; Thu, 15 Jun
 2023 16:03:11 -0700 (PDT)
Date: Thu, 15 Jun 2023 16:03:11 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008f70d405fe331298@google.com>
From: syzbot <syzbot+91ad2b52815a08caf4ea@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 4c605260bc60
 Merge tag 'x86_urgent_for_v6.4_rc6' of git://.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=170c95b3280000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.79 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.79 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q9vzp-0005iU-8D
X-Mailman-Approved-At: Fri, 16 Jun 2023 13:24:17 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbUpdatePMap (2)
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

HEAD commit:    4c605260bc60 Merge tag 'x86_urgent_for_v6.4_rc6' of git://..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=170c95b3280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7474de833c217bf4
dashboard link: https://syzkaller.appspot.com/bug?extid=91ad2b52815a08caf4ea
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16bc032d280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14aa25b3280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/b8183c640f8a/disk-4c605260.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/66b85f02d905/vmlinux-4c605260.xz
kernel image: https://storage.googleapis.com/syzbot-assets/80073dbaded3/bzImage-4c605260.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/85d11f73be8a/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+91ad2b52815a08caf4ea@syzkaller.appspotmail.com

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:470:12
shift exponent 131072 is too large for 64-bit type 'long long'
CPU: 0 PID: 106 Comm: jfsCommit Not tainted 6.4.0-rc5-syzkaller-00313-g4c605260bc60 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/25/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c3/0x420 lib/ubsan.c:387
 dbUpdatePMap+0xe4e/0xf50 fs/jfs/jfs_dmap.c:470
 txAllocPMap+0x57b/0x6b0 fs/jfs/jfs_txnmgr.c:2420
 txUpdateMap+0x7cc/0x9e0 fs/jfs/jfs_txnmgr.c:2358
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x47a/0xb70 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x2b8/0x350 kernel/kthread.c:379
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308
 </TASK>
================================================================================
Kernel panic - not syncing: UBSAN: panic_on_warn set ...
CPU: 0 PID: 106 Comm: jfsCommit Not tainted 6.4.0-rc5-syzkaller-00313-g4c605260bc60 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/25/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 panic+0x30f/0x770 kernel/panic.c:340
 check_panic_on_warn+0x82/0xa0 kernel/panic.c:236
 ubsan_epilogue lib/ubsan.c:223 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3e2/0x420 lib/ubsan.c:387
 dbUpdatePMap+0xe4e/0xf50 fs/jfs/jfs_dmap.c:470
 txAllocPMap+0x57b/0x6b0 fs/jfs/jfs_txnmgr.c:2420
 txUpdateMap+0x7cc/0x9e0 fs/jfs/jfs_txnmgr.c:2358
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x47a/0xb70 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x2b8/0x350 kernel/kthread.c:379
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308
 </TASK>
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to change bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
