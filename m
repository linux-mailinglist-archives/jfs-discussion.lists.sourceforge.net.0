Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B1F62828F
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Nov 2022 15:30:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouaTx-0006G5-NW;
	Mon, 14 Nov 2022 14:30:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3VLdxYwkbAKsdjkVLWWPcLaaTO.RZZRWPfdPcNZYePYe.NZX@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ouQFG-0004FW-Gv for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Nov 2022 03:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kAMMFntmaYX8HHHcoBR1z0jYIUhesZs9GrMDen8+P0I=; b=TslurciVZmIhVSH0/xNK1YKJXi
 Qp/vCeleqCoS09S4t8QYkUlzS+IUezHwaaP4Z4E5ezsfnp0FCTQD9btUZoi0gNWnTnEA4KG5qRtCN
 FC3QrEwu5WemNaywifIpMk47vOTiRPxxlUZu+xqTI61B0oMxZzkDClOxsE1MVn0dYJig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kAMMFntmaYX8HHHcoBR1z0jYIUhesZs9GrMDen8+P0I=; b=T
 3dW6/gmdWk2HUJjT6PQDxOognAbih50A2CWRN1ubf8ShsCFyEIedqOMTN3ij9HpMy5pjzUq6YooD0
 95a0f3vPw9pW6P378Axroj+ll492NtiEjbLpMnWHiykQExb9UcEEOJkwZAg9GMM3J721teLLVeiuO
 S+QXZCuVvfSilSFg=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ouQFF-0004ih-Ot for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Nov 2022 03:34:50 +0000
Received: by mail-io1-f71.google.com with SMTP id
 j17-20020a5d93d1000000b006bcdc6b49cbso5332156ioo.22
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 13 Nov 2022 19:34:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kAMMFntmaYX8HHHcoBR1z0jYIUhesZs9GrMDen8+P0I=;
 b=NU793KWDThlrPcj6jFavC0JdtpEvTmvU3YZ/TnK/ex4mur9ysI+JdBKMysECK3PbCt
 awthPXncvE7qZlO/8cT6D/mg8PIHp+nGY6cYUq/ibeeQZtAo82Wc0NrNy8zfElAOVkrz
 2ORyuZVRqsaMOAdzGH1K3KlN5U0/DOf6BDgFaTSmaW5fllQig+Q0Kq2lNvcJvsWAYdFn
 7JG5zEBq4Ltnv8K2eHB1v2KNy6vEq1S2Nw9xvG/3z5d4ELqOw4esLsIl1MtYYt65OqHl
 YZN+3F4LgOpg3Fh80MFH0m7b9rLDhuYzL0BO1WVjFJ2gWaE5Ta2ROKwsEgIcdyX1+R6K
 1SYQ==
X-Gm-Message-State: ANoB5plgeb5uJcKjpTNyUQJu7hPmlHOa8ytC2XMaqfVH5N/F5nCifdj9
 Ag82r1jDWqmoQNsSiSOTuBCcSxaCg0xQ07b4hXcTES7kyjHu
X-Google-Smtp-Source: AA0mqf5ZNiwfE/qRoN4DEHPzmEsXTgglP5piaGa+wS3V+hQ7UOF8GnQWE+XvY52m4Q4ovF1VlXDu2dWE7tcgmaS4T02wmJWaLeQv
MIME-Version: 1.0
X-Received: by 2002:a6b:ef0e:0:b0:6c0:3ade:1c3e with SMTP id
 k14-20020a6bef0e000000b006c03ade1c3emr4723664ioh.63.1668396884194; Sun, 13
 Nov 2022 19:34:44 -0800 (PST)
Date: Sun, 13 Nov 2022 19:34:44 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a078ac05ed65eb00@google.com>
From: syzbot <syzbot+75c177aa1291e7fe423d@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: f67dd6ce0723
 Merge tag 'slab-for-6.1-rc4-fixes' of git://g.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=102b0615880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1ouQFF-0004ih-Ot
X-Mailman-Approved-At: Mon, 14 Nov 2022 14:30:40 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 xtTruncate
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

HEAD commit:    f67dd6ce0723 Merge tag 'slab-for-6.1-rc4-fixes' of git://g..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=102b0615880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=771b06c41e08f95b
dashboard link: https://syzkaller.appspot.com/bug?extid=75c177aa1291e7fe423d
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/0ddcda4f997e/disk-f67dd6ce.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ced709971cf5/vmlinux-f67dd6ce.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d35fb69a1976/bzImage-f67dd6ce.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+75c177aa1291e7fe423d@syzkaller.appspotmail.com

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_xtree.c:2304:9
index 19 is out of range for type 'xad_t [18]'
CPU: 0 PID: 4605 Comm: syz-executor.4 Not tainted 6.1.0-rc4-syzkaller-00020-gf67dd6ce0723 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 xtTruncate+0x2778/0x32d0 fs/jfs/jfs_xtree.c:2304
 jfs_truncate_nolock+0x192/0x390 fs/jfs/inode.c:393
 jfs_truncate+0xc6/0x140 fs/jfs/inode.c:417
 jfs_direct_IO+0x1b0/0x1e0 fs/jfs/inode.c:347
 generic_file_direct_write+0x294/0x610 mm/filemap.c:3677
 __generic_file_write_iter+0x1c4/0x400 mm/filemap.c:3837
 generic_file_write_iter+0xab/0x310 mm/filemap.c:3913
 do_iter_write+0x6c2/0xc20 fs/read_write.c:861
 iter_file_splice_write+0x7fc/0xfc0 fs/splice.c:686
 do_splice_from fs/splice.c:764 [inline]
 direct_splice_actor+0xe6/0x1c0 fs/splice.c:931
 splice_direct_to_actor+0x4e4/0xc00 fs/splice.c:886
 do_splice_direct+0x279/0x3d0 fs/splice.c:974
 do_sendfile+0x5fb/0xf80 fs/read_write.c:1255
 __do_sys_sendfile64 fs/read_write.c:1323 [inline]
 __se_sys_sendfile64+0x14f/0x1b0 fs/read_write.c:1309
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f22df88b639
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f22e0602168 EFLAGS: 00000246 ORIG_RAX: 0000000000000028
RAX: ffffffffffffffda RBX: 00007f22df9abf80 RCX: 00007f22df88b639
RDX: 0000000000000000 RSI: 0000000000000004 RDI: 0000000000000003
RBP: 00007f22df8e67e1 R08: 0000000000000000 R09: 0000000000000000
R10: 000080001d00c0d0 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffc01280fbf R14: 00007f22e0602300 R15: 0000000000022000
 </TASK>
================================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
