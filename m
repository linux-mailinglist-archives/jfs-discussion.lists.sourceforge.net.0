Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3BFA30EC1
	for <lists+jfs-discussion@lfdr.de>; Tue, 11 Feb 2025 15:48:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1thrYR-0003z7-8A;
	Tue, 11 Feb 2025 14:48:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3a5mqZwkbAIw8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1the7j-0004Uu-Om for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Feb 2025 00:27:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QwdoP5xDKeiD3xhc6dIZ6hGByqbJddUcA5ugMI1BuaI=; b=RDNIXMh3ccjBzibWXvhTULhcEU
 4DyNRL+zsMSCFKU6NnVJpViHGm2MfVnnlUhMZn8ZGneC5T07IGGmKp7/p+gEXQL0vbvuEaitS6f3c
 nKqUzBbnvZN5eRmuaxySlRHyKjkEwJ+8fme42CqTz6X85xRC3vDxCLV4ICczFZ+sVGOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QwdoP5xDKeiD3xhc6dIZ6hGByqbJddUcA5ugMI1BuaI=; b=F
 OLwoJjXG3xp1Ze1Bv9ublYcej3VaxBlHGfTsm6OirCI7ZRtIDHxTkF98ZpIgpRSgYbHT2RWUf2MR5
 V5PJu9WvBdi9iAxbZ3wDbmolPkYyOURlKa9FThgP0flzfRqFljIKS5kNKeysHgOMqybRAZ+NOoO43
 Bw2pShy4LT27k0gM=;
Received: from mail-io1-f80.google.com ([209.85.166.80])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1the7i-00072D-9P for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Feb 2025 00:27:36 +0000
Received: by mail-io1-f80.google.com with SMTP id
 ca18e2360f4ac-849d26dd331so409241239f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 10 Feb 2025 16:27:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739233643; x=1739838443;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QwdoP5xDKeiD3xhc6dIZ6hGByqbJddUcA5ugMI1BuaI=;
 b=wgIYZVu4DCf7mAPvonVkaND3Wh57lokCDwEZvlMGamyMqSpQPdLVTAd1Sx3Eo52QJP
 vnXZYLaloZLv3xs/gdaDlsEmYv/jMYgAnH8u321yOke8NrbdpOA6iK/rdDji011BjV5O
 8h1oehNI0M4f6iF06cGrQpoBxC6nPfvitELXAb0HxOWj/ul5K0MHrSrmu7ZVo/iRHxBX
 gZLAU5+WozG3pCuLxsQuvWwOSgf4X79RzTfwWwbQ6jGUxWUTtJMRcKvOqYjqV7gx1SSI
 J+6saL8iQEBBdo3ofrPlhhvjunmGNSrgsNHe5/isBR/sFE392AUniZEB1o2GxKK9c+Ff
 ColQ==
X-Gm-Message-State: AOJu0Ywl9f1t6Oukr6MheV/ASKvfr79LCzaWeoERlrFcOcnbeMrEfv7r
 6MS7o7ka4a7vhCh7uKdKVVd9YbTXs0wZTeDukDHlMPYxtg7wKc3xrsk0t0MIrhK8ojXaLT21OBV
 UJ8OP4sypSXGITGPxOSKrUL3xAGsbAWA7fdNKXgLQMevaqbcLagrWimXHug==
X-Google-Smtp-Source: AGHT+IGTGS7ia3PYzneaQLW+nT8/+EH1b+SsvE35s5ycLUV2tAF3AHXI2UGn1JWiY2226OEcvXE+jX+tqsksT2LZKLbizKvxS5Vx
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1282:b0:3d1:54ce:a8f9 with SMTP id
 e9e14a558f8ab-3d16f53eefamr11565025ab.10.1739233643578; Mon, 10 Feb 2025
 16:27:23 -0800 (PST)
Date: Mon, 10 Feb 2025 16:27:23 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67aa996b.050a0220.3d72c.0057.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 2014c95afece
 Linux 6.14-rc1 git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output:
 https://syzkaller.appspot.com/x/log.txt?x=10e40b18580000
 k [...] Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.80 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.80 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.80 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.80 listed in wl.mailspike.net]
X-Headers-End: 1the7i-00072D-9P
X-Mailman-Approved-At: Tue, 11 Feb 2025 14:47:53 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in lbmIODone (2)
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
Reply-To: syzbot <syzbot+856d1897cd91a6a435c9@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    2014c95afece Linux 6.14-rc1
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=10e40b18580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b8a65ac161350c5e
dashboard link: https://syzkaller.appspot.com/bug?extid=856d1897cd91a6a435c9
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/c767824b323f/disk-2014c95a.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/81289e194973/vmlinux-2014c95a.xz
kernel image: https://storage.googleapis.com/syzbot-assets/4a33d49982f5/Image-2014c95a.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+856d1897cd91a6a435c9@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_logmgr.c:2303 assert(bp->l_flag & lbmRELEASE)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_logmgr.c:2303!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 UID: 0 PID: 16 Comm: ksoftirqd/0 Not tainted 6.14.0-rc1-syzkaller-g2014c95afece #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 12/27/2024
pstate: 604000c5 (nZCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : lbmIODone+0x12c4/0x1318 fs/jfs/jfs_logmgr.c:2303
lr : lbmIODone+0x12c4/0x1318 fs/jfs/jfs_logmgr.c:2303
sp : ffff800097d778f0
x29: ffff800097d77980 x28: 1fffe0001b405141 x27: 1ffff00012037934
x26: 1fffe0001e20724f x25: dfff800000000000 x24: 0000000000000000
x23: ffff0000da028a08 x22: 0000000000000000 x21: 0000000000000000
x20: 0000000000000020 x19: ffff0000da028a00 x18: 0000000000000008
x17: 0000000000000000 x16: ffff8000832d977c x15: 0000000000000001
x14: 1ffff00012faee78 x13: 0000000000000000 x12: 0000000000000000
x11: 0000000000000102 x10: 0000000000ff0100 x9 : ac6013805dc83c00
x8 : ac6013805dc83c00 x7 : 0000000000000001 x6 : 0000000000000001
x5 : ffff800097d770b8 x4 : ffff80008fcbefc0 x3 : ffff800083275f78
x2 : 0000000000000001 x1 : 0000000100000101 x0 : 000000000000003f
Call trace:
 lbmIODone+0x12c4/0x1318 fs/jfs/jfs_logmgr.c:2303 (P)
 bio_endio+0x840/0x87c block/bio.c:1548
 blk_update_request+0x4ac/0xda0 block/blk-mq.c:983
 blk_mq_end_request+0x54/0x88 block/blk-mq.c:1145
 lo_complete_rq+0x188/0x2f4 drivers/block/loop.c:395
 blk_complete_reqs block/blk-mq.c:1220 [inline]
 blk_done_softirq+0x11c/0x168 block/blk-mq.c:1225
 handle_softirqs+0x320/0xd34 kernel/softirq.c:561
 run_ksoftirqd+0x70/0xc0 kernel/softirq.c:950
 smpboot_thread_fn+0x4b0/0x90c kernel/smpboot.c:164
 kthread+0x65c/0x7b0 kernel/kthread.c:464
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:862
Code: d004fd63 91188063 52811fe2 979153a6 (d4210000) 
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
