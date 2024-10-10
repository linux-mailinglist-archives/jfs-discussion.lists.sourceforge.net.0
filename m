Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8799D99895B
	for <lists+jfs-discussion@lfdr.de>; Thu, 10 Oct 2024 16:24:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1syu59-0007hD-GM;
	Thu, 10 Oct 2024 14:24:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3KcEHZwkbAAo289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1syrnZ-00065k-DC for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Oct 2024 11:57:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E7BVJPzn00GP8MlvjyIVBuV6OLbqf66PANXGmxIHvu8=; b=Yc+nNPmmzbctIVI8P5pv8hdjQr
 qsq1/2SY/xb/+tf4HcfBs2vZIj4knXeQTCDaGBld2yQIDxkeQsntweC7hJFw3GKuScACoCzz79KBh
 cqCKgo3xkLvDOUHCbu23Tn/h9fLGnHYx+7Dq4fS7umqWdWAuOVD++7YBxnw6YRisMhXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=E7BVJPzn00GP8MlvjyIVBuV6OLbqf66PANXGmxIHvu8=; b=h
 au6F9N0tBC0UPszLQfUr9SnQgnJ6OWucw4VMJtchoA06aGyEpJe1LwIQbmCKZXYXyKo1M9DD1C1t2
 GZZCUe9MTFjiJDVvqyyjVo4SBafHpnurZATaQajsjUXAamd/NQL7o1QQVn3MJ5E48Bis18nenA9OR
 DpFa4ih7lFOKpNpY=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1syrnY-0000De-I7 for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Oct 2024 11:57:41 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-3a3ae3c2cacso7311315ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 10 Oct 2024 04:57:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728561450; x=1729166250;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=E7BVJPzn00GP8MlvjyIVBuV6OLbqf66PANXGmxIHvu8=;
 b=Bda8v2lZSBvZDsNRrNlMKcq5N7PspRzUKsahhWboKxuUOwO2JfeGWo6UEOA2jNyAB5
 CX4gDJNJ7EUnMWLcMEPeuqtpb4+UCntqyi8c7291EkvZa+ed/ca1HOuzqL4LO1/bJlnX
 /jYK+EatvmOkK0GjQCW1r4D71Swf08FcrLCn5UNFWjz+uZWqSVCx8oLb18GAOrPW753R
 3v6B1G6b/V+cyoxDY0B5sphy3JVq9nrslWM0F0C7HVY4gRkn0cvHiidwqlXDZa0+bxFO
 YfWOYlf5uApBmcR38SIMcQSSQMPJ5a1s92AneQPjBSjhHFUNTJZ32GKZHZF4NtfKlM+Q
 76qA==
X-Gm-Message-State: AOJu0YySAeYqBLq7ihx6IOpMlLNUTy0aTuV94Nt3PrnwH4gd9FdsOo46
 1h3oV4afIm0mArju59WL+OlaRYzAQjTU0fb9FnWCld16YnYrDc9XcrCOGGGtxHdK5SZCiLul8cu
 QmU2uJJ8Yyuv8w3n6uv7A7tv1mT9oXHwQOVsgh/fgvNpoxuHmYjMaV+4=
X-Google-Smtp-Source: AGHT+IEQPcUNvrJLEU7d7xlJ0ZQq++hRsnZQ1POdFHrA5/4/IztvyioxlOWkApLGwBivdU2vRJ6Qydzvs9jABzdQlAmKxRQfFs21
MIME-Version: 1.0
X-Received: by 2002:a92:b745:0:b0:3a3:b256:f31f with SMTP id
 e9e14a558f8ab-3a3b256f33cmr7929745ab.19.1728561449731; Thu, 10 Oct 2024
 04:57:29 -0700 (PDT)
Date: Thu, 10 Oct 2024 04:57:29 -0700
In-Reply-To: <66feec23.050a0220.9ec68.0059.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6707c129.050a0220.64b99.0017.GAE@google.com>
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
 HEAD commit: d3d1556696c1 Merge tag 'mm-hotfixes-stable-2024-10-09-15-4..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1354cb27980000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1syrnY-0000De-I7
X-Mailman-Approved-At: Thu, 10 Oct 2024 14:23:59 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in dtInsertEntry
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
Reply-To: syzbot <syzbot+5f7f0caf9979e9d09ff8@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    d3d1556696c1 Merge tag 'mm-hotfixes-stable-2024-10-09-15-4..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1354cb27980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7a3fccdd0bb995
dashboard link: https://syzkaller.appspot.com/bug?extid=5f7f0caf9979e9d09ff8
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12f66fd0580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12ed005f980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ea459972f07f/disk-d3d15566.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b8dcb9ab73d3/vmlinux-d3d15566.xz
kernel image: https://storage.googleapis.com/syzbot-assets/686f1b595c23/bzImage-d3d15566.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/73f0c7d76431/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5f7f0caf9979e9d09ff8@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:3624:7
index -1 is out of range for type 'struct dtslot[128]'
CPU: 0 UID: 0 PID: 5218 Comm: syz-executor135 Not tainted 6.12.0-rc2-syzkaller-00074-gd3d1556696c1 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dtInsertEntry+0x1735/0x1780 fs/jfs/jfs_dtree.c:3624
 dtInsert+0xbc1/0x6c10 fs/jfs/jfs_dtree.c:893
 jfs_create+0x7ba/0xbb0 fs/jfs/namei.c:137
 lookup_open fs/namei.c:3595 [inline]
 open_last_lookups fs/namei.c:3694 [inline]
 path_openat+0x1c03/0x3590 fs/namei.c:3930
 do_filp_open+0x235/0x490 fs/namei.c:3960
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1415
 do_sys_open fs/open.c:1430 [inline]
 __do_sys_open fs/open.c:1438 [inline]
 __se_sys_open fs/open.c:1434 [inline]
 __x64_sys_open+0x225/0x270 fs/open.c:1434
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f2b371c0639
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff164f4418 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 00007fff164f45f8 RCX: 00007f2b371c0639
RDX: 0000000000000000 RSI: 0000000000141042 RDI: 0000000020000000
RBP: 00007f2b37239610 R08: 0000000000005d93 R09: 0000000000000000
R10: 00007fff164f42e0 R11: 0000000000000246 R12: 0000000000000001
R13: 00007fff164f45e8 R14: 0000000000000001 R15: 0000000000000001
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
