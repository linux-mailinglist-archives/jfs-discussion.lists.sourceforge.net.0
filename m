Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFE35FFC8C
	for <lists+jfs-discussion@lfdr.de>; Sun, 16 Oct 2022 01:11:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ojqJB-0001XZ-Gt;
	Sat, 15 Oct 2022 23:11:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3RQhLYwkbAKIUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ojmjD-0004iR-Bu for jfs-discussion@lists.sourceforge.net;
 Sat, 15 Oct 2022 19:21:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NWHsC43iEG6MPCKtDHJwkZio3VcMNSzfJOfE5kahqoc=; b=feBHWO5nXyTLPkacHppDLBzoYQ
 5EFG10IeSj0MHrT2HuRX2D1pgd2+yK6gCvgfwsdyuAWPf3vshIJjhPkHWp2ww4kwgzMoIW8fnjdTd
 h7SmFqEKGjVH27GcLi+dXQ2E8SFzJU3c8KmjJ8Jnfc9UB65akM2gaHjR/jVmvWHTdF6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NWHsC43iEG6MPCKtDHJwkZio3VcMNSzfJOfE5kahqoc=; b=W
 br0i0RDSZ1hhI5PerEeZoEf3j90mdj/uIQLdDGHDbcfWRxzdGwrcHeG+wHTCwLz1CqHkiesgbKx7t
 nb0JPuPVptTIa5C6inEBjv/mFAKUBSoaTsznEYwoDuaG/Ippi3ylNZKdfSO9ryMMdZHA7X5RW7Q85
 tig/pJbcOpPVpAdE=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ojmjC-0004Rg-4y for jfs-discussion@lists.sourceforge.net;
 Sat, 15 Oct 2022 19:21:47 +0000
Received: by mail-io1-f69.google.com with SMTP id
 x21-20020a5d9455000000b006bc1172e639so4991773ior.18
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 15 Oct 2022 12:21:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=NWHsC43iEG6MPCKtDHJwkZio3VcMNSzfJOfE5kahqoc=;
 b=cX6FNnVl1oT4BW98M0UEVN6aUoEvKM24QPTnrstBqBYep6slNJLmuEwx3Y7FwlCaAP
 J3VF8t6cBBJKzthJNiBJqpBxwlrpAozLgfNI47+cA8GXAg3RPPJX2ogkBk+OsmQ2XMrN
 MV7FcoBuSUZFAZ+8768q0dPs2izaeUp+9uv4rJDWW43YF0VGUp1+94Sk+boLG4DQv5dH
 sqUb47Psp24XD8LnnLmTnNqngQb/p6pj24+Cz8rtTqZCuKyZ9njS+jm5nV2VT2CzoFbC
 /hwKu9sqiLZxuymPXNROfTvHeiRzKR2aTBVGxz/TAwctYxCrWGjMeRnNIARxKmcYFRPw
 k0zw==
X-Gm-Message-State: ACrzQf2iAcu1knxk/oFHpY5F2XjdBL/Y/iKInpDVtDonMbkOIiCsAJ42
 Q6hYk16J41jSTepwvwXWns1K86nqh3y5DFrmcdxOvanxYaFw
X-Google-Smtp-Source: AMsMyM44/o/C12kQv442hhHU7iDYjXBkvfQob131xYbqrzkpEOHC9ZlVmFj34dhffMxhYlQJ/rzIr3xH15ie9HAK3xbTHW0Mcr0S
MIME-Version: 1.0
X-Received: by 2002:a02:cc4c:0:b0:363:af6c:eb08 with SMTP id
 i12-20020a02cc4c000000b00363af6ceb08mr1966794jaq.39.1665861701115; Sat, 15
 Oct 2022 12:21:41 -0700 (PDT)
Date: Sat, 15 Oct 2022 12:21:41 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f0a30005eb17a675@google.com>
From: syzbot <syzbot+d4b1df2e9d4ded6488ec@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 493ffd6605b2
 Merge tag 'ucount-rlimits-cleanups-for-v5.19'.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1432b8d6880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1ojmjC-0004Rg-4y
X-Mailman-Approved-At: Sat, 15 Oct 2022 23:11:06 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 dtSplitRoot
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

HEAD commit:    493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1432b8d6880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=d4b1df2e9d4ded6488ec
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12caad8a880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17c0a42c880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f1ff6481e26f/disk-493ffd66.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/101bd3c7ae47/vmlinux-493ffd66.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/b2506efff88a/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d4b1df2e9d4ded6488ec@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:1971:9
index -2 is out of range for type 'struct dtslot [128]'
CPU: 0 PID: 3613 Comm: syz-executor270 Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 dtSplitRoot+0x8d8/0x1900 fs/jfs/jfs_dtree.c:1971
 dtSplitUp fs/jfs/jfs_dtree.c:985 [inline]
 dtInsert+0x1189/0x6b80 fs/jfs/jfs_dtree.c:863
 jfs_mkdir+0x757/0xb00 fs/jfs/namei.c:270
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4013
 do_mkdirat+0x279/0x550 fs/namei.c:4038
 __do_sys_mkdirat fs/namei.c:4053 [inline]
 __se_sys_mkdirat fs/namei.c:4051 [inline]
 __x64_sys_mkdirat+0x85/0x90 fs/namei.c:4051
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fcdc0113fd9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffeb8bc67d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fcdc0113fd9
RDX: 0000000000000000 RSI: 0000000020000340 RDI: 0000000000000003
RBP: 00007fcdc00d37a0 R08: 0000000000000000 R09: 00007fcdc00d37a0
R10: 00005555559a72c0 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00083878000000f8 R15: 0000000000000000
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
