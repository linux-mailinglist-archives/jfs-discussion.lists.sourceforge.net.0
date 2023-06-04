Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78796721779
	for <lists+jfs-discussion@lfdr.de>; Sun,  4 Jun 2023 15:44:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q5o1X-0001bY-S8;
	Sun, 04 Jun 2023 13:44:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3KkV8ZAkbAM8DJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1q5ihX-0005x3-Kq for jfs-discussion@lists.sourceforge.net;
 Sun, 04 Jun 2023 08:02:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pX3JrkxK3bl4mL5qQRzJ3YzJ93nC54ATg72Z3TueWFg=; b=WFYruOaTQshdyMXq96blSQhH4G
 wZggzwdRYLaSi7Ax3axKkmohifrL4mkPUCL27aYONy8UFSKkHvolW1mc6WJfHHAic2JTsPr/1HeEa
 rwTq8wYMoHQdAESzoRqAstPc06EHQLtKkcPvl6+xNuOHRLFv94cnTgOb06w9/w2U1RbE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pX3JrkxK3bl4mL5qQRzJ3YzJ93nC54ATg72Z3TueWFg=; b=e
 VCN4Nyp8qDS5KpR8FRmYcxSQgVh56j3BgojSeMhcskWW/creJ8SUODJdw9V89POOI3OS4phRU3pdw
 O/URqQpSKc/Nqwe4szjzuQGTMzQim586fbhC8LSYJDCSLe6mG/G9rlnarNmyKhMbOS4/q0isf30iw
 z7kjKEDrVlAxh9So=;
Received: from mail-io1-f79.google.com ([209.85.166.79])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q5ihU-00AgFd-2D for jfs-discussion@lists.sourceforge.net;
 Sun, 04 Jun 2023 08:02:59 +0000
Received: by mail-io1-f79.google.com with SMTP id
 ca18e2360f4ac-77567c00a37so279627939f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 04 Jun 2023 01:02:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685865770; x=1688457770;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pX3JrkxK3bl4mL5qQRzJ3YzJ93nC54ATg72Z3TueWFg=;
 b=HeZa1NibdjrX8q7Xkji9PkfZ+/75L0Cx0mPVdXFB6R/JBbpVacmPxukX3Sz9nPgvj2
 XZNrQbSlcQZ0zY0G0lLJmmd8cXEQ5jlix3ElRoEDQzrKJ4/LTVYi4b2qo1HdsWLKqA+P
 4GRXepwNaDCwfmd2cDnrrj0kuz1bLs42S8V7pWgv/8jXeEVoSiR1Dln9tSy9iBuy+ueI
 EODfqGFoyc0EGW7SiV9FWA8GIIP6McIYxFF0pM6MjOeI6pLm0c2uEE/Q6lHZEMb00Y0v
 XWXxTMlCkfF1z5NssgxUeQDKnHqzVImmvht/bkfkd16Xfxj5MSc9EUbd5cm9Qipgq1TJ
 A4XA==
X-Gm-Message-State: AC+VfDyr741Xdls/cUyQ2rWi61dr6IGi3J98qkGjiw2ywL+5JOjmOCVj
 PcKI4bCvaBHPtML5Z/bocONyYqmNiyv3VtPgYuu50TOfeOIh1/96Pw==
X-Google-Smtp-Source: ACHHUZ7qk0MWucJ4G9ALaHbToQi4eroKlaw30e7bZ4ghmojvQqN8CxQfvRbeszVQphZZMrO/BeyBLwC1EifGg3Yweyz2eooA6Ya1
MIME-Version: 1.0
X-Received: by 2002:a02:29c5:0:b0:41c:feac:7a9c with SMTP id
 p188-20020a0229c5000000b0041cfeac7a9cmr6425394jap.6.1685865770507; Sun, 04
 Jun 2023 01:02:50 -0700 (PDT)
Date: Sun, 04 Jun 2023 01:02:50 -0700
In-Reply-To: <00000000000050314505d3429981@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000063e8d005fd493617@google.com>
From: syzbot <syzbot+52ddb6c83a04ca55f975@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 715abedee4cd Add linux-next specific files for 20230515 git tree:
 linux-next console output:
 https://syzkaller.appspot.com/x/log.txt?x=16769f33280000
 kernel config: https://syzkaller.apps [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.79 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.79 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q5ihU-00AgFd-2D
X-Mailman-Approved-At: Sun, 04 Jun 2023 13:43:59 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in lbmIODone
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

HEAD commit:    715abedee4cd Add linux-next specific files for 20230515
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=16769f33280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6a2745d066dda0ec
dashboard link: https://syzkaller.appspot.com/bug?extid=52ddb6c83a04ca55f975
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1262d159280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14e3b42d280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/d4d1d06b34b8/disk-715abede.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/3ef33a86fdc8/vmlinux-715abede.xz
kernel image: https://storage.googleapis.com/syzbot-assets/e0006b413ed1/bzImage-715abede.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/e03edfdf992b/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+52ddb6c83a04ca55f975@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_logmgr.c:2298 assert(bp->l_flag & lbmRELEASE)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_logmgr.c:2298!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 15 Comm: ksoftirqd/0 Not tainted 6.4.0-rc2-next-20230515-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/25/2023
RIP: 0010:lbmIODone+0x111a/0x11d0 fs/jfs/jfs_logmgr.c:2298
Code: fe e9 97 f3 ff ff e8 25 70 95 fe 48 c7 c1 80 ac 89 8a ba fa 08 00 00 48 c7 c6 c0 aa 89 8a 48 c7 c7 00 ab 89 8a e8 26 58 79 fe <0f> 0b e8 df 70 e8 fe e9 09 f2 ff ff e8 f5 6f 95 fe 48 c7 c1 c0 ac
RSP: 0018:ffffc90000147c70 EFLAGS: 00010086
RAX: 000000000000003f RBX: ffff88814aa95200 RCX: 0000000000000100
RDX: 0000000000000000 RSI: ffffffff81689ddc RDI: 0000000000000005
RBP: 0000000000000020 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000080000101 R11: 0000000000000001 R12: 0000000000000246
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f5731f31000 CR3: 00000000219b5000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 bio_endio+0x5af/0x6c0 block/bio.c:1608
 req_bio_endio block/blk-mq.c:761 [inline]
 blk_update_request+0x56a/0x14f0 block/blk-mq.c:906
 blk_mq_end_request+0x59/0x4c0 block/blk-mq.c:1023
 lo_complete_rq+0x1c6/0x280 drivers/block/loop.c:370
 blk_complete_reqs+0xad/0xe0 block/blk-mq.c:1101
 __do_softirq+0x1d4/0x905 kernel/softirq.c:553
 run_ksoftirqd kernel/softirq.c:921 [inline]
 run_ksoftirqd+0x31/0x60 kernel/softirq.c:913
 smpboot_thread_fn+0x659/0x9f0 kernel/smpboot.c:164
 kthread+0x344/0x440 kernel/kthread.c:379
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:lbmIODone+0x111a/0x11d0 fs/jfs/jfs_logmgr.c:2298
Code: fe e9 97 f3 ff ff e8 25 70 95 fe 48 c7 c1 80 ac 89 8a ba fa 08 00 00 48 c7 c6 c0 aa 89 8a 48 c7 c7 00 ab 89 8a e8 26 58 79 fe <0f> 0b e8 df 70 e8 fe e9 09 f2 ff ff e8 f5 6f 95 fe 48 c7 c1 c0 ac
RSP: 0018:ffffc90000147c70 EFLAGS: 00010086
RAX: 000000000000003f RBX: ffff88814aa95200 RCX: 0000000000000100
RDX: 0000000000000000 RSI: ffffffff81689ddc RDI: 0000000000000005
RBP: 0000000000000020 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000080000101 R11: 0000000000000001 R12: 0000000000000246
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f5731f31000 CR3: 00000000219b5000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
