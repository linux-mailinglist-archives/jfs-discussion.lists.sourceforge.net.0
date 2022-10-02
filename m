Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6655F315D
	for <lists+jfs-discussion@lfdr.de>; Mon,  3 Oct 2022 15:38:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ofLeU-00007M-Di;
	Mon, 03 Oct 2022 13:38:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3q9M5YwkbAFoKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1of3OX-0004TC-P8 for jfs-discussion@lists.sourceforge.net;
 Sun, 02 Oct 2022 18:08:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0SaUqsDcZKozmWwBlE5zdA1339u9LhJ2gmtJd2haGuw=; b=RjcHjet1AzOgwIdXWvLLVTFAd3
 k/lvEKX8TEXzA9BrO9XxH28ia9bn2ctVHQ/hSwDl3BOsfbjg5948yS7ZJfAdtPleEQM67y4LrWkQI
 YMyRXv4KzBdlW/6IVvyctrbZ3mmOU5lUvpW6N+6vm82zE/kocjnicUWpZC9ZfN3xbRP4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0SaUqsDcZKozmWwBlE5zdA1339u9LhJ2gmtJd2haGuw=; b=b
 cQ6XVVNDhFNj3ckLppN0/s8xqj02IwHLn7N/RVcWAwhxsTXb7CK6bhqZxG4czDs9ci4ZjJBmxrxhw
 eOg65aObCXN3Xva0YJVoUO4GxCS726b7FxZSGJKSx5CbmaASRZqvJrzEFVZtsuVzi+ZmaSkef+C1L
 47c9znrFqZh6z2g8=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1of3OT-00A6yQ-93 for jfs-discussion@lists.sourceforge.net;
 Sun, 02 Oct 2022 18:08:53 +0000
Received: by mail-il1-f197.google.com with SMTP id
 a8-20020a92c548000000b002f6440ff96bso7119373ilj.22
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 02 Oct 2022 11:08:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=0SaUqsDcZKozmWwBlE5zdA1339u9LhJ2gmtJd2haGuw=;
 b=ffEfqnKWramaD2+h4dfaEd4WVguydni6s2ZLkjdZfmDbH8aVJkD/JYGjuO/kRp6zDE
 nbJT9fVFGux2pKMO5v7mbitPdiBvpdLl+qef4QpBksH+2XtYf9SROeCdgrkCMVr8Qlri
 naqZ1d7j8WhBK1vwaB19MK2JEmEZ4JswW3/ftpKCWKrUrfnky1+xZp4I23n56cg+nvwd
 tIWbhCmxr5feywaBoIhOR4vcSFOFSDyRsctx703BjKBjuu7eHS0QCa7qTFQa2Nb7q8sw
 1hS7kQDr2hzjVK0aq53rsghvlPmvM+e9ltvLO7v1zB6dPawAcvkg+Pf9G2IFw9ZANWgd
 b3jw==
X-Gm-Message-State: ACrzQf2/o2/+4gxB7/Zg+Z17Me2ZY8noMiWnlGpN8aZ33gDUrKVhDIX+
 7Y4rbwS3WjNo+Wo4Kcu8ExXgbsdH2U2sFHaGJr46L/hC3zTJ
X-Google-Smtp-Source: AMsMyM6MyFKS85AfyCFtnmN93TR/C6cvQPLpVOLmIGTYC/OiXxVOX8E8iUJRZmORgKmfsA8q+bFkHx1K5DrYVUbyXxPFd9sg00pK
MIME-Version: 1.0
X-Received: by 2002:a05:6638:40a3:b0:35a:3f2d:a21c with SMTP id
 m35-20020a05663840a300b0035a3f2da21cmr8626469jam.221.1664734123744; Sun, 02
 Oct 2022 11:08:43 -0700 (PDT)
Date: Sun, 02 Oct 2022 11:08:43 -0700
In-Reply-To: <00000000000050314505d3429981@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000017657505ea111e44@google.com>
From: syzbot <syzbot+52ddb6c83a04ca55f975@syzkaller.appspotmail.com>
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
 HEAD commit: bbed346d5a96 Merge branch 'for-next/core' into for-kernelci git
 tree: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1of3OT-00A6yQ-93
X-Mailman-Approved-At: Mon, 03 Oct 2022 13:38:33 +0000
Subject: Re: [Jfs-discussion] [syzbot] kernel BUG in lbmIODone
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

HEAD commit:    bbed346d5a96 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=17935e48880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=aae2d21e7dd80684
dashboard link: https://syzkaller.appspot.com/bug?extid=52ddb6c83a04ca55f975
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=111ad268880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/11078f50b80b/disk-bbed346d.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/398e5f1e6c84/vmlinux-bbed346d.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+52ddb6c83a04ca55f975@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_logmgr.c:2298 assert(bp->l_flag & lbmRELEASE)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_logmgr.c:2298!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 14 Comm: ksoftirqd/0 Not tainted 6.0.0-rc7-syzkaller-18095-gbbed346d5a96 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
pstate: 604000c5 (nZCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : lbmIODone+0x2ec/0x340 fs/jfs/jfs_logmgr.c:2298
lr : lbmIODone+0x2ec/0x340 fs/jfs/jfs_logmgr.c:2298
sp : ffff80000f22bc20
x29: ffff80000f22bc20 x28: ffff80000d2609e0 x27: 000000000000000a
x26: 0000000000000001 x25: 0000000000000000 x24: 0000000000000020
x23: 0000000000000000 x22: ffff0000d0968c00 x21: 0000000000000020
x20: 0000000000000000 x19: ffff0000d0b7d600 x18: 00000000000000c0
x17: ffff80000dd0b198 x16: ffff80000db49158 x15: ffff0000c02d9a80
x14: 0000000000000000 x13: 00000000ffffffff x12: ffff0000c02d9a80
x11: ff808000081c0d5c x10: 0000000000000000 x9 : f6a2b00d81307a00
x8 : f6a2b00d81307a00 x7 : ffff80000819545c x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0001fefbecd0 x1 : 0000000100000101 x0 : 000000000000003f
Call trace:
 lbmIODone+0x2ec/0x340 fs/jfs/jfs_logmgr.c:2298
 bio_endio+0x28c/0x2d8 block/bio.c:1564
 req_bio_endio block/blk-mq.c:695 [inline]
 blk_update_request+0x25c/0x570 block/blk-mq.c:825
 blk_mq_end_request+0x2c/0x58 block/blk-mq.c:951
 lo_complete_rq+0xb8/0x138 drivers/block/loop.c:370
 blk_complete_reqs block/blk-mq.c:1022 [inline]
 blk_done_softirq+0x70/0xa0 block/blk-mq.c:1027
 _stext+0x168/0x37c
 run_ksoftirqd+0x4c/0x21c kernel/softirq.c:934
 smpboot_thread_fn+0x248/0x3e4 kernel/smpboot.c:164
 kthread+0x12c/0x158 kernel/kthread.c:376
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:860
Code: 9137e821 91101063 52811f42 94c93ef6 (d4210000) 
---[ end trace 0000000000000000 ]---



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
