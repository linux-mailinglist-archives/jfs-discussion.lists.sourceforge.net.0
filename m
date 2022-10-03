Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCF55F3820
	for <lists+jfs-discussion@lfdr.de>; Mon,  3 Oct 2022 23:52:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ofTMP-0002fo-Qi;
	Mon, 03 Oct 2022 21:52:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3s1g7YwkbAHIiopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ofTIn-00010u-Bw for jfs-discussion@lists.sourceforge.net;
 Mon, 03 Oct 2022 21:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wLZsbe7ZmTnE9G212gTvxpJOOUYL5XML37732RJycqs=; b=QaeXDHRFYOkz82XqcbXkCre9FJ
 BBstdf27HqeJABcjHUo/IFdM/8C4SyLgoQeFJAmZvIqKCvUncewVazkjiPykoT+1lqf6ZuRhVZoFS
 wR2fZ0gSDkl2Dav2bbBYLo8r0vuZfy05f2LQbtNCJPf2VW946QOwMLMmenirAOxd7ego=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wLZsbe7ZmTnE9G212gTvxpJOOUYL5XML37732RJycqs=; b=X
 d3+XniW5xqi+6dvo2Gbz9oUlNnoMisJ4C4WC5fXBhwfeNVlRCelD/oFPVdX5F02T1oe/TvUXNJKN8
 T4/4NfKnDeKydSXgZaJKKs+WCr2BItK3OKWP9vLFlcrky6ZDE3FZayytspK2ZZp33FAMxsNGmdF8o
 Tk2rimhOnhYCV0+s=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ofTIm-0000TZ-Gq for jfs-discussion@lists.sourceforge.net;
 Mon, 03 Oct 2022 21:48:41 +0000
Received: by mail-io1-f70.google.com with SMTP id
 f25-20020a5d8799000000b006a44e33ddb6so7739623ion.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 03 Oct 2022 14:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=wLZsbe7ZmTnE9G212gTvxpJOOUYL5XML37732RJycqs=;
 b=Eqf9bq0fkPYeRvntlxkBHJNSVXfOhSLWoE1Kp381zxIFr7gR1UzOB5YhF4SZKBk8LG
 y/379/9s9hPwPjCs9A0okNdRJbts4WngwAbYiq5NXw02XeHKA4X1Yghr6/dJjbLoM3yX
 AvpNrNNo/A+VVT+Ry2bNShU1027JJgb5BMgdA7YRROReQR0zbVjk6sikiF+RSdAuJMUr
 OElyy2vq9q5wNkj5gdhrE2S9I8pauuy0T6IWPqOg0JHBk/d9Pi06ZBYANEtTVvsOCl7h
 6h+gOhBr/KM1iI3hHLtU8DjH0DZRgSio1XAej5xrxMAi1iykDJJdo69i2lRC9Tls1YFc
 2ZUw==
X-Gm-Message-State: ACrzQf0SREbzIWTeGFCF7pZ9b4KWMF93cB0LUIuoM1BH+Jk26BvhZnXb
 BqTLdk9g0+x0nLCemfkvfGmVvF/mymTnQOjIzKqftsW0hdiU
X-Google-Smtp-Source: AMsMyM7e8C4zCP+elAA/KM9EH8v5YSPI9+GNc5bgbHjCzC46WkKvEYB0LhQkFRpneDstZXmEgwdB7brVUUiladG+L/EhyvB3s0W6
MIME-Version: 1.0
X-Received: by 2002:a05:6638:2188:b0:35a:47c3:4784 with SMTP id
 s8-20020a056638218800b0035a47c34784mr11070778jaj.223.1664833715023; Mon, 03
 Oct 2022 14:48:35 -0700 (PDT)
Date: Mon, 03 Oct 2022 14:48:35 -0700
In-Reply-To: <0000000000006ad0d505ea0b63ee@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000031b62205ea284e99@google.com>
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
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: aaa11ce2ffc8 Add linux-next specific files for 20220923 git tree:
 linux-next console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=120fd4cc880000
 kernel config: https://syzkaller.apps [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
X-Headers-End: 1ofTIm-0000TZ-Gq
X-Mailman-Approved-At: Mon, 03 Oct 2022 21:52:25 +0000
Subject: Re: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in
 dbAllocCtl
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    aaa11ce2ffc8 Add linux-next specific files for 20220923
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=120fd4cc880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=186d1ff305f10294
dashboard link: https://syzkaller.appspot.com/bug?extid=f0e5eba3996857670c88
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=140d5a0a880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12a2f712880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/95c7bf83c07e/disk-aaa11ce2.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b161cd56a7a3/vmlinux-aaa11ce2.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f0e5eba3996857670c88@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1785:12
shift exponent 1635280253 is too large for 64-bit type 'long long int'
CPU: 0 PID: 3609 Comm: syz-executor492 Not tainted 6.0.0-rc6-next-20220923-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 dbAllocCtl.cold+0x75/0x7a fs/jfs/jfs_dmap.c:1785
 dbAllocAG+0x8da/0xd20 fs/jfs/jfs_dmap.c:1334
 dbAlloc+0x40d/0xa70 fs/jfs/jfs_dmap.c:858
 diNewIAG fs/jfs/jfs_imap.c:2500 [inline]
 diAllocExt fs/jfs/jfs_imap.c:1898 [inline]
 diAllocAG+0xb93/0x2200 fs/jfs/jfs_imap.c:1662
 diAlloc+0x82d/0x1730 fs/jfs/jfs_imap.c:1583
 ialloc+0x89/0xaa0 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x1f0/0xab0 fs/jfs/namei.c:225
 vfs_mkdir+0x489/0x740 fs/namei.c:4013
 do_mkdirat+0x28c/0x310 fs/namei.c:4038
 __do_sys_mkdirat fs/namei.c:4053 [inline]
 __se_sys_mkdirat fs/namei.c:4051 [inline]
 __x64_sys_mkdirat+0x115/0x170 fs/namei.c:4051
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f732d8ecdd9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff2953b988 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f732d8ecdd9
RDX: 0000000000000000 RSI: 0000000020000540 RDI: 0000000000000003
RBP: 00007f732d8ac5a0 R08: 0000000000000000 R09: 00007f732d8ac5a0
R10: 000055555602c2c0 R11: 0000000000000246 R12: 0000000200000004
R13: 0000000000000000 R14: 00080000000000f4 R15: 0000000000000000
 </TASK>
================================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
