Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C113061F440
	for <lists+jfs-discussion@lfdr.de>; Mon,  7 Nov 2022 14:25:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1os27s-00027G-Qh;
	Mon, 07 Nov 2022 13:25:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <35hJoYwkbAM0BHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1orlr4-0008R0-0t for jfs-discussion@lists.sourceforge.net;
 Sun, 06 Nov 2022 20:02:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kW1a4fRbEa1SEBmyH4rjxoqQpC2WFDzr69iE3nyWhiU=; b=mN2warsjO3JhfKxCmv+O+vsojh
 g9zwsV884vejnebiFsqqPH+jf/EDXmpJ+9vF+w+lCHTWa3S5MxAZl/cWnLiXd6hltlN+jt4wGxmL+
 jMiYeBK0iYBRvqSoCvoKTz7mo9uyPRIUjZm5vvuBpXYlUSLaDy3Sl40lRuSbfvO++vfI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kW1a4fRbEa1SEBmyH4rjxoqQpC2WFDzr69iE3nyWhiU=; b=R
 4/3IsojH9fUTY6G3qb62mT/tboF1lgcxSxI/vpN7D19BRD3N9aWMRYc/dgK5JgLHwKxjZqJdjjuYZ
 XMzRS6jMLRHxm2TgoDW2dtH1xMvp71RE9VsP02KqNYToqdHbptTCpJ5OG1TvCi+PCFtK1Vl0We1SJ
 nHTdrMqk/xoqVzuY=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1orlr2-00024v-2t for jfs-discussion@lists.sourceforge.net;
 Sun, 06 Nov 2022 20:02:53 +0000
Received: by mail-il1-f199.google.com with SMTP id
 n7-20020a056e02148700b002ffbfe5a9aeso7337549ilk.19
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 06 Nov 2022 12:02:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kW1a4fRbEa1SEBmyH4rjxoqQpC2WFDzr69iE3nyWhiU=;
 b=Pa9Kwsdigp6yc8Kdhf6s0Y9dYw7pHxXreqNLCRDkx9wkGYuKfCTk/pA41a1d9HVNcG
 Lp1X8ity8ynUyQ7Mn9rmN1dibbElU032oxHARa5dMQg/MWwe5bXfJIP4ktNmfZvvuSe7
 5c1FYjX6EaM8yGgDuqg9ZAE1IQ7nnQrbeqVptQOpJFBx0/sZ40hTxFpkOKXT213MKeYC
 qsZU8QgCrPv7mdPeaIxNFh5c3Nl2nTsw+K3FqxuxDYqLtFiNoXbhZMaRnhpcfmUqt2io
 HKwHiKABQX5jQ6u9U0kxyhX8PBbfx/B1KMkY1iYuP4fqTBVsMqOW337R498DNkMY6GMZ
 8W0w==
X-Gm-Message-State: ACrzQf2qT5fjWqGYMsIUYfUp6qxB6LQOzOapIOPdNnM8NwfmaGC0E33V
 1svPTkrOrCXyoqtLx8TylAwdkAwg4z2zy7n4t+wPx0gx4DaU
X-Google-Smtp-Source: AMsMyM4ky7JZui9hRI4tDDDeI3wLOKEV1GDV4vqhkIUxR1RGQiu+ldEcDus+Dwu/dHlag9wbgVkUkiX3e2BUNFwt4pzJg1zXP/pF
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1688:b0:2fc:50d7:6966 with SMTP id
 f8-20020a056e02168800b002fc50d76966mr26208240ila.51.1667764966542; Sun, 06
 Nov 2022 12:02:46 -0800 (PST)
Date: Sun, 06 Nov 2022 12:02:46 -0800
In-Reply-To: <000000000000c7e7be05eaa93401@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006653e305ecd2ca03@google.com>
From: syzbot <syzbot+667a6d667592227b1452@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: b208b9fbbcba Merge tag 'arm64-fixes' of git://git.kernel.o..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=162c2866880000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
X-Headers-End: 1orlr2-00024v-2t
X-Mailman-Approved-At: Mon, 07 Nov 2022 13:25:19 +0000
Subject: Re: [Jfs-discussion] [syzbot] KASAN: use-after-free Read in dbJoin
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

HEAD commit:    b208b9fbbcba Merge tag 'arm64-fixes' of git://git.kernel.o..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=162c2866880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f7e100ed8aaa828e
dashboard link: https://syzkaller.appspot.com/bug?extid=667a6d667592227b1452
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12f7ffb1880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17f9a066880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/92fde6d92d82/disk-b208b9fb.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ae3dbdb3faf8/vmlinux-b208b9fb.xz
kernel image: https://storage.googleapis.com/syzbot-assets/bbf4da09683c/bzImage-b208b9fb.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/69e8cbb81983/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+667a6d667592227b1452@syzkaller.appspotmail.com

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2745:24
index 1426063360 is out of range for type 's8 [1365]'
CPU: 0 PID: 122 Comm: jfsCommit Not tainted 6.1.0-rc3-syzkaller-00288-gb208b9fbbcba #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 dbJoin+0x2c7/0x2f0 fs/jfs/jfs_dmap.c:2745
 dbFreeBits+0x50d/0xd40 fs/jfs/jfs_dmap.c:2305
 dbFreeDmap fs/jfs/jfs_dmap.c:2054 [inline]
 dbFree+0x35e/0x660 fs/jfs/jfs_dmap.c:379
 txFreeMap+0x97c/0xd70 fs/jfs/jfs_txnmgr.c:2510
 xtTruncate+0xe74/0x32d0 fs/jfs/jfs_xtree.c:2467
 jfs_free_zero_link+0x3f5/0x680 fs/jfs/namei.c:758
 jfs_evict_inode+0x35a/0x440 fs/jfs/inode.c:153
 evict+0x2a4/0x620 fs/inode.c:664
 txUpdateMap+0x8eb/0xaa0 fs/jfs/jfs_txnmgr.c:2362
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x488/0xb80 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
================================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
