Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CE593906E
	for <lists+jfs-discussion@lfdr.de>; Mon, 22 Jul 2024 16:16:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sVtpq-0006EV-Cw;
	Mon, 22 Jul 2024 14:16:19 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <31gGbZgkbAIEx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sUxm5-0006HK-A1 for jfs-discussion@lists.sourceforge.net;
 Sat, 20 Jul 2024 00:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w3f8fiUb/1e0isq2qYD5vOSUdPdevzcO7aUauU++Wsg=; b=DVU2xe3rM6BcZtwsNZmi76r4we
 ZuMOSb8o+PdmgjpO1gAvrj2pIe9kgoi/Buu5nXYYLzPte3Mrx5/vTtNf7xx6r9V/MYp6SUTgM1Qp+
 d9vM6eECcXVpkyZEIGcdSgw9wAHD5095dUUMZrnGYJVybjdpGSRmvNTvTej21iOCVB9g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=w3f8fiUb/1e0isq2qYD5vOSUdPdevzcO7aUauU++Wsg=; b=R
 VCrHamL4EdNJglirOWmtl83qiOA0QOuCv+1QAdqenZAwgOkmbWI7HLiFY7c5LPYcc03J90mZ3sj/j
 ZEhH6bzpZ3f1drxVr00EZr597dPIq/b6IcPT5Pt6gv4tlsFg1A9cFujRLtawoITdkaAmnHI7A/W6L
 x/Bazdhbu92l047I=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sUxm4-0006bc-Bb for jfs-discussion@lists.sourceforge.net;
 Sat, 20 Jul 2024 00:16:33 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-803621a51c9so384082039f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 19 Jul 2024 17:16:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721434582; x=1722039382;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=w3f8fiUb/1e0isq2qYD5vOSUdPdevzcO7aUauU++Wsg=;
 b=oz7TQPsSLDpdKbuJ3QD7Rh0bDKAMQCdtyX3d43mNkMZiQ2tyXfENO0iI+qjZZARpdy
 DuW2PKjLMTROmsVyLyIDF5hcD6YBBKWs4n4ualG5jqVsv6s5x6qtVTfQo3raerjwCZNu
 Fbe6qgTq7bNts0ivSVjGhR/2r1H+fJZ9Ayj6aTE2GiO38xNhp8dkJ0vnBkXZwh0E/OXd
 SJiqhD6DiKOq0ZXe+WnzSQ5TGA/U0rAsYQtWRWomf2xXARry0mspPvzMD1iHhqB/jhJs
 utXxb89qd0MNI/G7IYvZnOhpu4uKi2IP0IrbkjsKbSnVYbLt+dZml/ndZzfdO7q7+p5E
 Egog==
X-Forwarded-Encrypted: i=1;
 AJvYcCVfoopr9f72MKqHAF0iMJjiV0DU4xzrHXPcixYIqPjTReOabv3lRlKXdpg1Lj9nVDe6PAKjcIo19H9+CV8hMbi7Z8f6AILOjv5OSbkIimQbaiL3X0A=
X-Gm-Message-State: AOJu0Yyi/wp458LQ42EfvvCuUCsg4q2PtRkyrHwXANjtDpVXCpPMppRO
 6xQK/wbZJzJqT5V/BLf9pG3hha9Qwt0rzQ8Xfq6JuJdDIcoyJS8xYc6w+cPncUbsxF4lqzOW9W/
 5yeId5SJjRw2G2uyVUC0NctqwtTAcaYC8v2GLAFtQHde4YO88hPa39iU=
X-Google-Smtp-Source: AGHT+IEhVky9gVVBl4vehk6StGC4USpYibqa4QqoBDdnT0yWEFWMLvfyvxi1KujjOZzF/iezaHnx1iyL5dw7o2ZUHLeKPBk/63Sh
MIME-Version: 1.0
X-Received: by 2002:a05:6638:8522:b0:4b9:ad20:51ff with SMTP id
 8926c6da1cb9f-4c23fc73789mr67570173.1.1721434582238; Fri, 19 Jul 2024
 17:16:22 -0700 (PDT)
Date: Fri, 19 Jul 2024 17:16:22 -0700
In-Reply-To: <000000000000a8bd7b060f8ce57d@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c758e1061da2b880@google.com>
To: brauner@kernel.org, eadavis@qq.com, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, jlayton@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 samsun1006219@gmail.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com, 
 xrivendell7@gmail.com
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 4305ca0087dd Merge tag 'scsi-misc' of git://git.kernel.org..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=119980b1980000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.70 listed in list.dnswl.org]
X-Headers-End: 1sUxm4-0006bc-Bb
X-Mailman-Approved-At: Mon, 22 Jul 2024 14:16:17 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] general protection fault in
 diRead (2)
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
Reply-To: syzbot <syzbot+8f731999dc47797f064f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    4305ca0087dd Merge tag 'scsi-misc' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=119980b1980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=dfaf0ab1b18403fe
dashboard link: https://syzkaller.appspot.com/bug?extid=8f731999dc47797f064f
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14d09349980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1748fa5e980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/dd4bd188fcdc/disk-4305ca00.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/d60a35331483/vmlinux-4305ca00.xz
kernel image: https://storage.googleapis.com/syzbot-assets/8a5740b15da1/bzImage-4305ca00.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/fb21716fe5a7/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+8f731999dc47797f064f@syzkaller.appspotmail.com

R10: 0000000000000000 R11: 0000000000000246 R12: 00007fff9841c06c
R13: 0000000000000001 R14: 431bde82d7b634db R15: 00007fff9841c0b0
 </TASK>
read_mapping_page failed!
jfs_mount_rw: diMount failed!
Oops: general protection fault, probably for non-canonical address 0xdffffc0000000104: 0000 [#1] PREEMPT SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000820-0x0000000000000827]
CPU: 0 PID: 5094 Comm: syz-executor169 Not tainted 6.10.0-syzkaller-09061-g4305ca0087dd #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
RIP: 0010:diIAGRead fs/jfs/jfs_imap.c:2662 [inline]
RIP: 0010:diRead+0x158/0xae0 fs/jfs/jfs_imap.c:316
Code: 8d 5d 80 48 89 d8 48 c1 e8 03 42 80 3c 38 00 74 08 48 89 df e8 a9 e5 d7 fe 4c 8b 2b 49 8d 9d 20 08 00 00 48 89 d8 48 c1 e8 03 <42> 80 3c 38 00 74 08 48 89 df e8 89 e5 d7 fe 4c 8b 3b 49 8d 5f 28
RSP: 0018:ffffc900020bf738 EFLAGS: 00010202
RAX: 0000000000000104 RBX: 0000000000000820 RCX: 0000000000000001
RDX: 0000000000000001 RSI: 0000000000000008 RDI: 0000000000000001
RBP: ffff88805a2bcdf0 R08: ffff88805a2bca97 R09: 1ffff1100b457952
R10: dffffc0000000000 R11: ffffed100b457953 R12: 0000000000000004
R13: 0000000000000000 R14: ffff88805a2bca88 R15: dffffc0000000000
FS:  00005555843c1380(0000) GS:ffff8880b9400000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f13f837b0f8 CR3: 000000005a8e8000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_iget+0x8c/0x3b0 fs/jfs/inode.c:35
 jfs_lookup+0x226/0x410 fs/jfs/namei.c:1469
 __lookup_slow+0x28c/0x3f0 fs/namei.c:1718
 lookup_slow+0x53/0x70 fs/namei.c:1735
 walk_component+0x2e1/0x410 fs/namei.c:2039
 lookup_last fs/namei.c:2542 [inline]
 path_lookupat+0x16f/0x450 fs/namei.c:2566
 filename_lookup+0x256/0x610 fs/namei.c:2595
 user_path_at+0x3a/0x60 fs/namei.c:3002
 do_mount fs/namespace.c:3809 [inline]
 __do_sys_mount fs/namespace.c:4020 [inline]
 __se_sys_mount+0x297/0x3c0 fs/namespace.c:3997
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f13f8304bd9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 01 1b 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff9841c048 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007fff9841c070 RCX: 00007f13f8304bd9
RDX: 0000000000000000 RSI: 0000000020000380 RDI: 0000000000000000
RBP: 0000000000000001 R08: 0000000000000000 R09: 00007fff9841c090
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fff9841c06c
R13: 0000000000000001 R14: 431bde82d7b634db R15: 00007fff9841c0b0
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:diIAGRead fs/jfs/jfs_imap.c:2662 [inline]
RIP: 0010:diRead+0x158/0xae0 fs/jfs/jfs_imap.c:316
Code: 8d 5d 80 48 89 d8 48 c1 e8 03 42 80 3c 38 00 74 08 48 89 df e8 a9 e5 d7 fe 4c 8b 2b 49 8d 9d 20 08 00 00 48 89 d8 48 c1 e8 03 <42> 80 3c 38 00 74 08 48 89 df e8 89 e5 d7 fe 4c 8b 3b 49 8d 5f 28
RSP: 0018:ffffc900020bf738 EFLAGS: 00010202
RAX: 0000000000000104 RBX: 0000000000000820 RCX: 0000000000000001
RDX: 0000000000000001 RSI: 0000000000000008 RDI: 0000000000000001
RBP: ffff88805a2bcdf0 R08: ffff88805a2bca97 R09: 1ffff1100b457952
R10: dffffc0000000000 R11: ffffed100b457953 R12: 0000000000000004
R13: 0000000000000000 R14: ffff88805a2bca88 R15: dffffc0000000000
FS:  00005555843c1380(0000) GS:ffff8880b9400000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f13f837b0f8 CR3: 000000005a8e8000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	8d 5d 80             	lea    -0x80(%rbp),%ebx
   3:	48 89 d8             	mov    %rbx,%rax
   6:	48 c1 e8 03          	shr    $0x3,%rax
   a:	42 80 3c 38 00       	cmpb   $0x0,(%rax,%r15,1)
   f:	74 08                	je     0x19
  11:	48 89 df             	mov    %rbx,%rdi
  14:	e8 a9 e5 d7 fe       	call   0xfed7e5c2
  19:	4c 8b 2b             	mov    (%rbx),%r13
  1c:	49 8d 9d 20 08 00 00 	lea    0x820(%r13),%rbx
  23:	48 89 d8             	mov    %rbx,%rax
  26:	48 c1 e8 03          	shr    $0x3,%rax
* 2a:	42 80 3c 38 00       	cmpb   $0x0,(%rax,%r15,1) <-- trapping instruction
  2f:	74 08                	je     0x39
  31:	48 89 df             	mov    %rbx,%rdi
  34:	e8 89 e5 d7 fe       	call   0xfed7e5c2
  39:	4c 8b 3b             	mov    (%rbx),%r15
  3c:	49 8d 5f 28          	lea    0x28(%r15),%rbx


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
