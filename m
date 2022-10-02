Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F3C5F315B
	for <lists+jfs-discussion@lfdr.de>; Mon,  3 Oct 2022 15:38:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ofLeU-00007I-5j;
	Mon, 03 Oct 2022 13:38:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3jXM5YwkbAHoqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oewzl-0006Ol-4V for jfs-discussion@lists.sourceforge.net;
 Sun, 02 Oct 2022 11:18:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YrXxoOGDz1iGBnoxTDB/uNAm6RmhQ/BKaHcl2JVIe7g=; b=VFgQVVmcsJ8IbBfEzzQgvvC4CG
 j8Br8tSXzVjNsCAWEBxvhS17T6u8eHgMP/540w1O1/CEnZaikXMpqsGwluFH5Riq6p1qEkIJCukQ1
 QI3fMlBZm4gWxYF1nB6xEWbIrPO2qwsgG8gPi9kLWQP7aFRashJhicHux8+SlMax8XMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YrXxoOGDz1iGBnoxTDB/uNAm6RmhQ/BKaHcl2JVIe7g=; b=L
 BzfCpA5lz3rg0pK42jMkCCiIHRUlRnCTLvr4S9KjDDVhPElKpYsnBFCH1CTRPr5MZX0vIvbfb33CT
 mxsW7Kr8HD5uMWUyAu8aU738lDVPgsCATkqHmQvvahSflyAwqpZKpmndE5fA48DkkvVhjVD912a7i
 5zfwuCdcQvpCBiYg=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oewza-00056E-HL for jfs-discussion@lists.sourceforge.net;
 Sun, 02 Oct 2022 11:18:49 +0000
Received: by mail-io1-f72.google.com with SMTP id
 e15-20020a5d8acf000000b006a3ed059e49so5331713iot.14
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 02 Oct 2022 04:18:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=YrXxoOGDz1iGBnoxTDB/uNAm6RmhQ/BKaHcl2JVIe7g=;
 b=3wjRtYntjkHpHajjWXqjCctz63PIsxx0zFFHK0ctGSg/OxSJvzvInuYomCxvMFC/QG
 9KRAjlJaSf0E6g5xrquBGgR4pyMnDHO1acxbmqGq+rotcLw4wkTz1R0pRUKBOPdmRkQP
 8xWva8CLtNvg0YR8KHTfWZJXqjTE1vg4YwoUFHeNtrYqB33u/4kwVQHTEy3Kt5B/pfgE
 e5klEG4V16CDCywQGKoPN219QNf9GNdbAQjE2l6S4ujoNhkor3tv0y5Vq3lTiNtaImz3
 MaiF8qifaLB+1t9uzAr3I7hMcGwAsnnp6d5jHKIRcCpkMIVp2UP4GK2lvGDJv34iKBPl
 qe/g==
X-Gm-Message-State: ACrzQf08tMAYJwGHvsMQU92SMGg3A9tdO/LO1o8ybRk6gv9D8ltNjss+
 0WbSChbjACo5PVBMatQ6TCU0Tqmp9i1A1d65pofG+6Ima4el
X-Google-Smtp-Source: AMsMyM5D2Fzb9QVvmrJhVhxIjyKH8VLSLDA5WbBT1hn4qwyxxAFCXPAArkkbGzuMxY02ojAuxPOP/LEEIeyu2juhdUwdJGTxZ/nl
MIME-Version: 1.0
X-Received: by 2002:a05:6602:15ce:b0:6a5:22db:950b with SMTP id
 f14-20020a05660215ce00b006a522db950bmr7049713iow.183.1664709517034; Sun, 02
 Oct 2022 04:18:37 -0700 (PDT)
Date: Sun, 02 Oct 2022 04:18:37 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006ad0d505ea0b63ee@google.com>
From: syzbot <syzbot+f0e5eba3996857670c88@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: ffb4d94b4314
 Merge tag 'drm-fixes-2022-10-01' of git://ano.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=15877ab8880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oewza-00056E-HL
X-Mailman-Approved-At: Mon, 03 Oct 2022 13:38:32 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbAllocCtl
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

HEAD commit:    ffb4d94b4314 Merge tag 'drm-fixes-2022-10-01' of git://ano..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=15877ab8880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=f0e5eba3996857670c88
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/b74f52232e47/disk-ffb4d94b.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b09212ee600a/vmlinux-ffb4d94b.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f0e5eba3996857670c88@syzkaller.appspotmail.com

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1785:12
shift exponent 711030885 is too large for 64-bit type 'long long'
CPU: 0 PID: 29745 Comm: syz-executor.2 Not tainted 6.0.0-rc7-syzkaller-00220-gffb4d94b4314 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 dbAllocCtl+0x93d/0x970 fs/jfs/jfs_dmap.c:1785
 dbAllocAG+0x28b/0x1100 fs/jfs/jfs_dmap.c:1334
 dbAlloc+0x661/0xc90 fs/jfs/jfs_dmap.c:858
 diNewIAG fs/jfs/jfs_imap.c:2500 [inline]
 diAllocExt fs/jfs/jfs_imap.c:1898 [inline]
 diAllocAG+0xaf6/0x1f80 fs/jfs/jfs_imap.c:1662
 diAlloc+0x3dd/0x1700 fs/jfs/jfs_imap.c:1583
 ialloc+0x8c/0xa80 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x141/0xb00 fs/jfs/namei.c:225
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4013
 do_mkdirat+0x279/0x550 fs/namei.c:4038
 __do_sys_mkdirat fs/namei.c:4053 [inline]
 __se_sys_mkdirat fs/namei.c:4051 [inline]
 __x64_sys_mkdirat+0x85/0x90 fs/namei.c:4051
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fd56248a5a9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fd563556168 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 00007fd5625abf80 RCX: 00007fd56248a5a9
RDX: 0000000000000000 RSI: 0000000020000540 RDI: 0000000000000004
RBP: 00007fd5624e5580 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffd10304c1f R14: 00007fd563556300 R15: 0000000000022000
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
