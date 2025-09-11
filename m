Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9DFB53E14
	for <lists+jfs-discussion@lfdr.de>; Thu, 11 Sep 2025 23:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HVmmHTJ6IgrQ/a8k6ml2RH9iSTikx1S4exgKtzXfIek=; b=G1wddCgKK8nABE8wqvaGTS2+5k
	GgYDf0yCrxhej8abbhcxPjTw3VdTSNrgdnHsbDTqDpiRwYklp7R9KmDWP/mV+lwOuUWC1kad1iCfF
	tldbRtwYtzeD4BEGrbESFhkCPMJ42bH6QQvsNOdf/RvJoG+LF5M3KVmVu9jdHyBDO0Rs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uwpB1-0005Fm-LK;
	Thu, 11 Sep 2025 21:50:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3gzPDaAkbAEQy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uwo4w-0001Wh-Kn for jfs-discussion@lists.sourceforge.net;
 Thu, 11 Sep 2025 20:39:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5jJzln9Oxv++8k8GF8gqWoPMM+xkj0dtehYwHya0GB4=; b=YPlX8EU/ptKmLVFIfnnyOHAcRO
 94AxdyjEmv926o2fYyeFQxlz5iFbDTemRIGf49Pwfw4k7luIHgXrJSoWgZN8aYhg1X6JRru2uHeCN
 Q4fBt6UtarI68GWBx80RF1qGeYuw7bZTZL3NDYO3b2+n6TvVhN/tgos2eFtNRdBwKC74=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5jJzln9Oxv++8k8GF8gqWoPMM+xkj0dtehYwHya0GB4=; b=H
 eUz208diz3P4A9az4UO7M9ywKgpkMHMEL1Vnlq5+7bNbdLf2+M2/Zhj+GQEhr2sw7TZ7/9h7VKcU5
 dfqk2+fI07Fuascz1QvH6wSlj8nlyOmWaxIMcn/wuQ4aqWYuvtETY4knCV9wBN06lK4voub3VNOi/
 ScVEZBVuiwhTmhS8=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uwo4w-0004ef-Pb for jfs-discussion@lists.sourceforge.net;
 Thu, 11 Sep 2025 20:39:39 +0000
Received: by mail-il1-f205.google.com with SMTP id
 e9e14a558f8ab-4048726387fso30403115ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 11 Sep 2025 13:39:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757623171; x=1758227971;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5jJzln9Oxv++8k8GF8gqWoPMM+xkj0dtehYwHya0GB4=;
 b=XXIGGcX0OVKDIyu/BsNmzM/L+TkQfvixsBzfRhvEVgscrZdpMk26gKlz0ny+PsXQNw
 QuXytRJLbnvRfwL225PxcbcH3/mLStX3WkRGiafTpTDTmN9qB0yE8s886LrYCz+0yVW5
 dV1fd6kwR2TG+yZCZF6cS5vRgjpeIskBIntwoCBrZcjSIUvtAU8Ijrmp7aR4zOFIpL63
 uvEWZiZCYizZaJaR7GXadD/6ctT2weVsqTZLbaIn9rzzcKJtdoyuJsyOP15d26QhWx16
 6Liwz+aoEFSIWrDxmju2jChtlVfw4+i00119ma00ULIu4hqZwZAysf3ulbZ01uM9/dM1
 sQVg==
X-Gm-Message-State: AOJu0YzsFHc+M1egnGQFrB/Npwx8ZJi05fWvOX7OrvXd3xxur1MME62i
 9kssFmv9xpW1gBrX77sqVR7VmbPaYLJnSpGCCE/A0uO02wAHJ+8BxA0UlDqN3ujOzpvlEbVlUSK
 C7fxFBI72CUZ0Qzq5rTUySfCC1/7IqwExDXNGh6v4oZxEyLJ3U9bvsbInJ124EQ==
X-Google-Smtp-Source: AGHT+IEKo2i6gsqDbr7f9ef/ZJegwOu6Gj24s140BtY1OYu2xELtUBOFNc9xaY32a8rWUzDw0ng4jgtQUocBmXi78ZBwSUD05pvY
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:4806:b0:421:3a23:7099 with SMTP id
 e9e14a558f8ab-4213a2373f9mr3572755ab.19.1757623171591; Thu, 11 Sep 2025
 13:39:31 -0700 (PDT)
Date: Thu, 11 Sep 2025 13:39:31 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68c33383.050a0220.2ff435.024c.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: b320789d6883
 Linux 6.17-rc4 git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output:
 https://syzkaller.appspot.com/x/log.txt?x=13ea0642580000
 k [...] Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.205 listed in wl.mailspike.net]
X-Headers-End: 1uwo4w-0004ef-Pb
X-Mailman-Approved-At: Thu, 11 Sep 2025 21:49:59 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in lbmIODone (3)
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
Reply-To: syzbot <syzbot+a5bcc0f04f7131679010@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    b320789d6883 Linux 6.17-rc4
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=13ea0642580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=39f8a155475bc42d
dashboard link: https://syzkaller.appspot.com/bug?extid=a5bcc0f04f7131679010
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/c497ec86c8e2/disk-b320789d.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b1d08f5d7b1c/vmlinux-b320789d.xz
kernel image: https://storage.googleapis.com/syzbot-assets/4a27a997250a/Image-b320789d.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a5bcc0f04f7131679010@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_logmgr.c:2303 assert(bp->l_flag & lbmRELEASE)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_logmgr.c:2303!
Internal error: Oops - BUG: 00000000f2000800 [#1]  SMP
Modules linked in:
CPU: 0 UID: 0 PID: 15 Comm: ksoftirqd/0 Not tainted syzkaller #0 PREEMPT 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/30/2025
pstate: 634000c5 (nZCv daIF +PAN -UAO +TCO +DIT -SSBS BTYPE=--)
pc : lbmIODone+0x1294/0x12e8 fs/jfs/jfs_logmgr.c:2303
lr : lbmIODone+0x1294/0x12e8 fs/jfs/jfs_logmgr.c:2303
sp : ffff800097c678d0
x29: ffff800097c67960 x28: 1fffe00018c38ca1 x27: 0000000000000020
x26: 1fffe0001a4f064f x25: dfff800000000000 x24: 0000000000000000
x23: ffff0000c61c6508 x22: ffff0000d2783278 x21: 0000000000000000
x20: 0000000000000020 x19: ffff0000c61c6500 x18: 1fffe00033797688
x17: ffff80008f7de000 x16: ffff80008b00ff28 x15: 0000000000000001
x14: 1ffff00012f8ce90 x13: 0000000000000000 x12: 0000000000000000
x11: ffff700012f8ce91 x10: 0000000000ff0100 x9 : 4257e84271db6d00
x8 : 4257e84271db6d00 x7 : ffff800080563d2c x6 : 0000000000000000
x5 : 0000000000000001 x4 : 0000000000000000 x3 : ffff8000807de8f0
x2 : 0000000000000001 x1 : 0000000100000101 x0 : 000000000000003f
Call trace:
 lbmIODone+0x1294/0x12e8 fs/jfs/jfs_logmgr.c:2303 (P)
 bio_endio+0x858/0x894 block/bio.c:1651
 blk_update_request+0x474/0xba8 block/blk-mq.c:989
 blk_mq_end_request+0x54/0x88 block/blk-mq.c:1151
 lo_complete_rq+0x124/0x274 drivers/block/loop.c:314
 blk_complete_reqs block/blk-mq.c:1226 [inline]
 blk_done_softirq+0x11c/0x168 block/blk-mq.c:1231
 handle_softirqs+0x328/0xc88 kernel/softirq.c:579
 run_ksoftirqd+0x70/0xc0 kernel/softirq.c:968
 smpboot_thread_fn+0x4d8/0x9cc kernel/smpboot.c:160
 kthread+0x5fc/0x75c kernel/kthread.c:463
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:844
Code: f004c2c3 911c0063 52811fe2 9793a804 (d4210000) 
---[ end trace 0000000000000000 ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
