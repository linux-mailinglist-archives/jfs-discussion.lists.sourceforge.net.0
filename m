Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F134F5EE6E8
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Sep 2022 22:58:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ode7v-0007A4-3F;
	Wed, 28 Sep 2022 20:58:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3-7E0YwkbAFICIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oddu4-0006xN-Of for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Sep 2022 20:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nstnZIDjGjtGExNjTIDmjV9nq6K+84XmwWh9HIHAZLg=; b=JPretQUlH2UclATtjuS9BZnyDq
 db7Mzb/CYTsQ1HOeRJPkM8pBIo0geS8Z14pBKn6durjp/UtsvftYCXzRywTrYliIPUkih6XoeVX6E
 H9NaCnoEXAoAzJTrOt+XAgiMNccjRg64vp5/WvM+pz4XpsznEet3NyVmzyhJeR3OOIHs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nstnZIDjGjtGExNjTIDmjV9nq6K+84XmwWh9HIHAZLg=; b=b
 Kv7Q9OUmR1wuy11+L1VoMpZ4+qkeC5qtcfBsdMlU6Pc1uFIuIxJuzR6jL2es+CTis/ovqbqBEoyOH
 IRy76HKTDwhzKtOcsKGT9fI3d1dpKg4SypGCnEN/+zIgtSXRrRQ+9nZFvsN31L7ZsqZtgpqHotjIq
 foqRZVAmdA1L38aQ=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1odduD-0000IB-6U for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Sep 2022 20:43:49 +0000
Received: by mail-il1-f200.google.com with SMTP id
 i13-20020a056e02152d00b002f58aea654fso10862170ilu.20
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 28 Sep 2022 13:43:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=nstnZIDjGjtGExNjTIDmjV9nq6K+84XmwWh9HIHAZLg=;
 b=QLebB4ym0zIhUAl1MCWeB9g2W34TZRbsKRhu4vqHqvgDcKa0Mvz2Ra49XX0L3v9LY6
 uwaYQkARALH/1iYHLUeNOzgQtHYfJBF0YAVm4dUdG/CHHm2kh1/zfzwq8N8OBsL38OE+
 5vvHJ3RVYYYSPbmuW1Tl9dG0/U+bGyVMs5+AmFBoa8DV3VvwdfxIecOMf3hLpgytV42Z
 mxkNjK20uj3+t2b7pF1qs/bb/a6lXMEsRI5BV3PhDfDAUZEr0zYUrq7aiSN6J+qBQ7y/
 f/D5gnWlMj74s2I2F8qECOqjEEwoL09Ov79vN6hbQWMJFHfspujfRvL+twvXee9hFwKw
 FpdQ==
X-Gm-Message-State: ACrzQf3jy9qH5Pn9hGRKVBj4H8R5VN9SfT5NLmY/Y95Co7DQVR1qbS7+
 LaXlQju3n/79UrSXVU1JOJOVmPc9HCwwOXyWUuoPTSSiiw65
X-Google-Smtp-Source: AMsMyM4uZ5DgjycIi3Jt1GAyaf9KJQOhVWRAICGi/t0+htTcLLtl6tYx7Povvsh1wpXNiTkQ2Zw4+rmUdmqm6yTQYpgTErwEZw9L
MIME-Version: 1.0
X-Received: by 2002:a92:c6c9:0:b0:2f6:d00c:8ab0 with SMTP id
 v9-20020a92c6c9000000b002f6d00c8ab0mr13392756ilm.85.1664397819685; Wed, 28
 Sep 2022 13:43:39 -0700 (PDT)
Date: Wed, 28 Sep 2022 13:43:39 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ceb2fa05e9c2d0e3@google.com>
From: syzbot <syzbot+15342c1aa6a00fb7a438@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 3800a713b607
 Merge tag 'mm-hotfixes-stable-2022-09-26' of .. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1513bdc4880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1odduD-0000IB-6U
X-Mailman-Approved-At: Wed, 28 Sep 2022 20:58:06 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbAllocAG
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

HEAD commit:    3800a713b607 Merge tag 'mm-hotfixes-stable-2022-09-26' of ..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1513bdc4880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=15342c1aa6a00fb7a438
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14e7836c880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16fc20e0880000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+15342c1aa6a00fb7a438@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 97743
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1313:21
shift exponent 8345714 is too large for 64-bit type 's64' (aka 'long long')
CPU: 1 PID: 3614 Comm: syz-executor252 Not tainted 6.0.0-rc7-syzkaller-00029-g3800a713b607 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 dbAllocAG+0xf3d/0x1100 fs/jfs/jfs_dmap.c:1313
 dbAlloc+0x661/0xc90 fs/jfs/jfs_dmap.c:858
 diNewIAG fs/jfs/jfs_imap.c:2500 [inline]
 diAllocExt fs/jfs/jfs_imap.c:1898 [inline]
 diAllocAG+0xaf6/0x1f80 fs/jfs/jfs_imap.c:1662
 diAlloc+0x3dd/0x1700 fs/jfs/jfs_imap.c:1583
 ialloc+0x8c/0xa80 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x141/0xb00 fs/jfs/namei.c:225
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4013
 do_mkdirat+0x279/0x550 fs/namei.c:4038
 __do_sys_mkdir fs/namei.c:4058 [inline]
 __se_sys_mkdir fs/namei.c:4056 [inline]
 __x64_sys_mkdir+0x6a/0x80 fs/namei.c:4056
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f533bcccf49
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffffbdf0e58 EFLAGS: 00000246 ORIG_RAX: 0000000000000053
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f533bcccf49
RDX: 00007f533bc8b443 RSI: 0000000000000000 RDI: 00000000200052c0
RBP: 00007f533bc8c710 R08: 0000000000000000 R09: 0000000000000000
R10: 00007ffffbdf0d20 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00080000000000f8 R15: 0000000000000000
 </TASK>
================================================================================


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
