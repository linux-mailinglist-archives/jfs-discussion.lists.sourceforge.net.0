Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C67608FA7
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Oct 2022 23:04:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1omLfO-00040P-SS;
	Sat, 22 Oct 2022 21:04:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3I7JTYwkbAPYqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1omAQw-0004Xn-Co for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Oct 2022 09:04:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7xW5dbkCNbxwHkMv3yQFNNURiyChnL8UlXJR4JwK/Sc=; b=GMayRbeculD8bZ//0zfZqv5/0P
 SRkGhZg3Q7rQVNe8xfW/psi0HJqANmFbd90mCIaSk0OZtwfzR/hnK2AD3jYm02j/Y393e4G7y+mWU
 T9u5YBn9IPwmieXeqQtJfN7YNUQvFe1f5qlbuGIGXmdypuFqWuwE3bpqbZW1rAwEArL0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7xW5dbkCNbxwHkMv3yQFNNURiyChnL8UlXJR4JwK/Sc=; b=G
 VmTc7h9ccZPSUICFm1BQRTNulOWddpTkYQ+18maDGviXEAgtIZyzaEH4NOEc/Ke+JqQlOPOojxNd5
 VgzjfgCiehh87rqdrloIn+ory3QdWa8kN2aIbeF1KY5FMV3UX5bhTJjIVpNjx/OYlmiGxU0PlQfgI
 2Aq5A5tzKGpGnmDQ=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1omAQr-00DEax-2l for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Oct 2022 09:04:46 +0000
Received: by mail-il1-f199.google.com with SMTP id
 a20-20020a921a14000000b002ffb33924c5so974812ila.16
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Oct 2022 02:04:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7xW5dbkCNbxwHkMv3yQFNNURiyChnL8UlXJR4JwK/Sc=;
 b=W0O34Hj994y9R/bGUbe97Kfp9sF4tpygGaFE7dPkAn319Imo9NLDnRU9rP45coAuQp
 3AI9EMFyBIvZlnFjmMUuK71v7lftrrp5cFpTgpGZDtI9N+0jWLh2txphcyHCzT9ny60S
 rPjEi+jhrHdnRn7BSpaZVO4JMbpFPiYDlT7alSffQWIFJz7ynGCXLdKGa+bh3YDOmWNG
 og3TZLPeGygtbs0/8AJQ6P8msn4LKBe+T+NznzoslNn+ncrcLNtgExyr08DFfQ7xA6au
 6A8FI/ZZh9kTaA9xHuZ4QZWSaYc3jpYi7cbIk+1xIBqPxjBH3yoiQlCRuhjbc4YQsoDU
 +S/g==
X-Gm-Message-State: ACrzQf33sI6FpEf9AmYqMpeBs5ha8X63tMDVa140NKM571ceWg6TUbi7
 h6uPxTvK5Mr/pHaoEvekMqICDNbe5Bvz/ejL0TG56da2e+5S
X-Google-Smtp-Source: AMsMyM6UIyo8kQ7W0F1xUfc8UH3LYe9JzyRVh3VhfLo4MpQLwo0SPi1zDBprPGaUPKBjmcMf2BNsAUfNkIxo9p8HeahfeBtBHvwZ
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2ac9:b0:6bc:17dd:3800 with SMTP id
 m9-20020a0566022ac900b006bc17dd3800mr14640181iov.72.1666429475473; Sat, 22
 Oct 2022 02:04:35 -0700 (PDT)
Date: Sat, 22 Oct 2022 02:04:35 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000edd6c905eb9bd8c2@google.com>
From: syzbot <syzbot+c6357942fbe0fce51c76@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: bbed346d5a96
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1omAQr-00DEax-2l
X-Mailman-Approved-At: Sat, 22 Oct 2022 21:04:25 +0000
Subject: [Jfs-discussion] [syzbot] kernel BUG in dbAllocNear
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

HEAD commit:    bbed346d5a96 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=177d4f76880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3a4a45d2d827c1e
dashboard link: https://syzkaller.appspot.com/bug?extid=c6357942fbe0fce51c76
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1730f9b4880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14361c36880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e8e91bc79312/disk-bbed346d.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c1cb3fb3b77e/vmlinux-bbed346d.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/a968af44b418/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c6357942fbe0fce51c76@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
BUG at fs/jfs/jfs_dmap.c:2984 assert(bitno < 32)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_dmap.c:2984!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 1 PID: 3065 Comm: syz-executor423 Not tainted 6.0.0-rc7-syzkaller-18095-gbbed346d5a96 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : dbFindBits fs/jfs/jfs_dmap.c:2984 [inline]
pc : dbAllocNear+0x2d4/0x2d8 fs/jfs/jfs_dmap.c:1224
lr : dbFindBits fs/jfs/jfs_dmap.c:2984 [inline]
lr : dbAllocNear+0x2d4/0x2d8 fs/jfs/jfs_dmap.c:1224
sp : ffff8000126db790
x29: ffff8000126db790 x28: 0000000000000000 x27: 0000000000000000
x26: 0000000000000000 x25: 0000000000000020 x24: 0000000000000001
x23: 0000000000000020 x22: ffff0000cbd65000 x21: ffff0000cac8d000
x20: 0000000000000001 x19: ffff8000126db880 x18: 00000000000000c0
x17: ffff80000dd0b198 x16: ffff80000db49158 x15: ffff0000c68b4f80
x14: 0000000000000000 x13: 00000000ffffffff x12: ffff0000c68b4f80
x11: ff808000081c0d5c x10: 0000000000000000 x9 : 6b29d6d39c8a4400
x8 : 6b29d6d39c8a4400 x7 : ffff80000819545c x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0001fefddcd0 x1 : 0000000100000000 x0 : 0000000000000030
Call trace:
 dbFindBits fs/jfs/jfs_dmap.c:2984 [inline]
 dbAllocNear+0x2d4/0x2d8 fs/jfs/jfs_dmap.c:1224
 dbAlloc+0x4fc/0x694 fs/jfs/jfs_dmap.c:813
 ea_get+0x354/0x548 fs/jfs/xattr.c:514
 __jfs_setxattr+0x2ac/0x5f4 fs/jfs/xattr.c:718
 __jfs_xattr_set+0x84/0x108 fs/jfs/xattr.c:917
 jfs_xattr_set+0x58/0x70 fs/jfs/xattr.c:941
 __vfs_setxattr+0x250/0x260 fs/xattr.c:182
 __vfs_setxattr_noperm+0xcc/0x320 fs/xattr.c:216
 __vfs_setxattr_locked+0x16c/0x194 fs/xattr.c:277
 vfs_setxattr+0x174/0x280 fs/xattr.c:313
 do_setxattr fs/xattr.c:600 [inline]
 setxattr fs/xattr.c:623 [inline]
 path_setxattr+0x354/0x414 fs/xattr.c:642
 __do_sys_setxattr fs/xattr.c:658 [inline]
 __se_sys_setxattr fs/xattr.c:654 [inline]
 __arm64_sys_setxattr+0x2c/0x40 fs/xattr.c:654
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581
Code: 91052821 91110863 52817502 94c9993b (d4210000) 
---[ end trace 0000000000000000 ]---


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
