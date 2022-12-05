Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5220642AF7
	for <lists+jfs-discussion@lfdr.de>; Mon,  5 Dec 2022 16:05:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p2D1Q-0007Xp-PT;
	Mon, 05 Dec 2022 15:04:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3fbaNYwkbAEQy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1p27Yi-00052P-Mw for jfs-discussion@lists.sourceforge.net;
 Mon, 05 Dec 2022 09:14:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9OCCvnH6uv1l51v88/CU3IDqaUyGOYZt7ZdkI5+Fzfw=; b=P47wl3SVPLI5SxbN97kZI/znRb
 oaNWHHV+Vht70xEW+zBy4BmozvCWXVpqlMEFdcx1rSggwN2OejgUwcKjvwCvrIZqCp+XDE0InftwD
 8I8xV4SJ6WwyhoiM6VakrVcUUlX7hFRIAqzH+nw9EahtHfT4bRTGJadn+jVgA2QN9UR8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9OCCvnH6uv1l51v88/CU3IDqaUyGOYZt7ZdkI5+Fzfw=; b=C
 ycPlUixEvy4RIN+UeN5iMyGTIsv/rPi2L+YJt48/5TChsr6yD/Aq4+7gktV6U2RKN0k1OT+qtUVam
 kViaul795zmkEdFEilmyrlgWPmNXi1Vuc66yru3m4NMzXpsvnqRDGbCo2YR0fxBU606Do3E//0Z7N
 8kb91TVPUJ7TTuJ4=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p27Yg-006c8j-SI for jfs-discussion@lists.sourceforge.net;
 Mon, 05 Dec 2022 09:14:44 +0000
Received: by mail-il1-f200.google.com with SMTP id
 h20-20020a056e021d9400b00300581edaa5so11601085ila.12
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 05 Dec 2022 01:14:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9OCCvnH6uv1l51v88/CU3IDqaUyGOYZt7ZdkI5+Fzfw=;
 b=buMGYUMoIPVU/oLG+SlgVcG5fgne16Ix7RivZZD6FKKGlSlPpNsDclD4L/4xzJ7doW
 yWiFgqCb098ZoDsvaflEoDkbY7CpyBp2G5pI2BBjqKLVZX6ui8PsoEoJFAjsWyeuH1jI
 hQgF+VFe9rwMevj2FNzZ337hjngnM8caK3w1QUNC/JcCyy4V62H1nUosIrPkqeDZU2/6
 uHj2PWWvMW/6ByK2LocvApN0xZKCHIzPBSLjKTIFkIMSeWLe75gg+FNy7BCbUPYErqNo
 CB2aWTC0UINXaAgSb3KEStGJg1EpPX9oNkBMo1i7UcWpejtEjeCCIzlf4z9+FZjhaqdp
 8VJw==
X-Gm-Message-State: ANoB5pk3Z35lANF8N98VpIXJg3VZqObt4JqM2EZlaL47x2SDfLQchU8J
 RNpW0S2DvPzYA2qOOan5eZIQxXx3L8ydKxi6r24EarMxtZkV
X-Google-Smtp-Source: AA0mqf69NQh7ggeF9gM8lEdakOq3V+fPQlIthqQDWWS5LlF9TTyHRTKnyAEykT6MushBq0DtD+EzBSq5sCipun6LjHNzHzpqn8FY
MIME-Version: 1.0
X-Received: by 2002:a92:d741:0:b0:300:b96f:56a8 with SMTP id
 e1-20020a92d741000000b00300b96f56a8mr29109428ilq.213.1670231677277; Mon, 05
 Dec 2022 01:14:37 -0800 (PST)
Date: Mon, 05 Dec 2022 01:14:37 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d1205405ef111d3f@google.com>
From: syzbot <syzbot+e3f67d10138647b6effa@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: e3cb714fb489
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1p27Yg-006c8j-SI
X-Mailman-Approved-At: Mon, 05 Dec 2022 15:04:43 +0000
Subject: [Jfs-discussion] [syzbot] kernel BUG in LogSyncRelease
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

HEAD commit:    e3cb714fb489 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=1049346b880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ec7118319bfb771e
dashboard link: https://syzkaller.appspot.com/bug?extid=e3f67d10138647b6effa
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/832eb1866f2c/disk-e3cb714f.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/5fd572b7d96d/vmlinux-e3cb714f.xz
kernel image: https://storage.googleapis.com/syzbot-assets/34c82908beda/Image-e3cb714f.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e3f67d10138647b6effa@syzkaller.appspotmail.com

read_mapping_page failed!
BUG at fs/jfs/jfs_txnmgr.c:2790 assert(mp->nohomeok)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:2790!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 17148 Comm: syz-executor.2 Not tainted 6.1.0-rc7-syzkaller-33097-ge3cb714fb489 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : LogSyncRelease+0x120/0x240 fs/jfs/jfs_txnmgr.c:2790
lr : LogSyncRelease+0x120/0x240 fs/jfs/jfs_txnmgr.c:2790
sp : ffff80001366b9d0
x29: ffff80001366b9d0 x28: ffff80000efd4000 x27: 0000000000000000
x26: 0000000000003cc8 x25: ffff00011c6c5e60 x24: ffff80000efd4308
x23: ffff80000efd4000 x22: 000000000000000d x21: ffff80000d5a8b88
x20: 0000000000000000 x19: ffff00011c6c5e60 x18: 000000000000ba7e
x17: ffff80000c0cd83c x16: ffff80000dbe6158 x15: ffff00010eb99a40
x14: 0000000000000000 x13: 00000000ffffffff x12: ffff00010eb99a40
x11: ff808000081c4d64 x10: 0000000000000000 x9 : 878bda7d75e5d900
x8 : 878bda7d75e5d900 x7 : ffff80000816678c x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0001fefbecd0 x1 : 0000000100000000 x0 : 0000000000000034
Call trace:
 LogSyncRelease+0x120/0x240 fs/jfs/jfs_txnmgr.c:2790
 txAbort+0xf0/0x260 fs/jfs/jfs_txnmgr.c:2616
 txCommit+0x348/0x1824 fs/jfs/jfs_txnmgr.c:1349
 jfs_mkdir+0x450/0x490 fs/jfs/namei.c:290
 vfs_mkdir+0x1f8/0x2b0 fs/namei.c:4036
 do_mkdirat+0xe4/0x22c fs/namei.c:4061
 __do_sys_mkdirat fs/namei.c:4076 [inline]
 __se_sys_mkdirat fs/namei.c:4074 [inline]
 __arm64_sys_mkdirat+0x40/0x54 fs/namei.c:4074
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x140 arch/arm64/kernel/syscall.c:197
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:637
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:584
Code: 91097021 912ee063 52815cc2 94cbe7d5 (d4210000) 
---[ end trace 0000000000000000 ]---


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
