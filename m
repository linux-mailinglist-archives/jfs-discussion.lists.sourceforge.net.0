Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F146046EB
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Oct 2022 15:23:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ol92O-0007nH-Qm;
	Wed, 19 Oct 2022 13:23:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3RZJPYwkbAMg6CDyozzs5o33wr.u22uzs86s5q217s17.q20@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ol279-00080i-Ks for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Oct 2022 05:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xzvk70GSoy8v6g/xMQR0hh15OGuFCcc8W8bi0WPq9/w=; b=AnKNHOfOMOGRYHZv9hDJkswXXm
 F7bYVDeH5fXS2AUz0vmMHDbVDIiT+xrkQbNKqHHGMQfW0faG+J4A+ivnid3uFibhuGMN2YWUyoaib
 ie3tltbcLrvyAM8gzIxHPXrNBUYdn19f24cke6DvhDQGkvyFzQDXJ7pnYlh1ARl280hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Xzvk70GSoy8v6g/xMQR0hh15OGuFCcc8W8bi0WPq9/w=; b=l
 Yib093lZElX2GbrqZ5V/leAFRTx+8tfJwdLjsRb2J4Mbb4MenHqZGvwmIn82XOsqXTC1V+VQWv82b
 dYH1phZ4/kYcbYp7xat8D3q8iCGY9BCF4C+1zs9iUHhDmsNy03ebK3Vf9l26Mt1lbaVqahm9yAZR1
 Sy5/nL/awYHhBAAM=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ol278-0007r4-SA for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Oct 2022 05:59:39 +0000
Received: by mail-il1-f198.google.com with SMTP id
 u2-20020a056e021a4200b002f9ecfa353cso15303388ilv.20
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Oct 2022 22:59:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Xzvk70GSoy8v6g/xMQR0hh15OGuFCcc8W8bi0WPq9/w=;
 b=ijZKwn8udeDgWG/UwcmqBh71fAxbsGwflh+HKgWvPFe8V5cek1qWle+VutmF9HlNen
 RCGRghPrkCzOpQfvARFn3+rv3z5Ty2plLKfi73fTHdhoQxTZiGcXpOq8pn17laxEO4wM
 EMuRfDg3/8AViQhoruZNVLuzMqcSLEr0kfdb07e4t8eiB2q/8HhTcf+6yR01auXKS336
 PbVUNc1a4TtKiPevOYSKU+wckwxrEdNNxJMkwAGUBXySr9Is0HETxaUWoNRBENbtWXfq
 J3i5m33UhPMsYpE3gAmqBQUMPZ7jrztxATna35FsylJRULZWL5xqtnOQH4q5rq8kSWer
 7tww==
X-Gm-Message-State: ACrzQf10j3aSecNCTWSBgwxDCsBvtF4jAE6WkObEHUNsKpcd13InncGb
 vC2YY81xdnKXloYK2MLuadBsKFMVqIO4mDEc1nFs9Zr9BfsD
X-Google-Smtp-Source: AMsMyM7YQxaymmcL7aiWLNJbM0Xf1OGkjfIPzAyP7stDCdYOt8Usgkk+hFkQy0pE6/4tv+C0hgeFG9StgwVJcFSJ51urxXvOCDrx
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:184f:b0:2fc:ec3c:98ec with SMTP id
 b15-20020a056e02184f00b002fcec3c98ecmr4552277ilv.188.1666159173332; Tue, 18
 Oct 2022 22:59:33 -0700 (PDT)
Date: Tue, 18 Oct 2022 22:59:33 -0700
In-Reply-To: <000000000000dd7d5a05eb5ca523@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000aa768a05eb5ce9c2@google.com>
From: syzbot <syzbot+f0e0fcf3cd1047ae60ad@syzkaller.appspotmail.com>
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
 HEAD commit: 493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=12410be6880000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1ol278-0007r4-SA
X-Mailman-Approved-At: Wed, 19 Oct 2022 13:23:10 +0000
Subject: Re: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 dbDiscardAG
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

HEAD commit:    493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=12410be6880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=f0e0fcf3cd1047ae60ad
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1408aae2880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=123f717c880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f1ff6481e26f/disk-493ffd66.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/101bd3c7ae47/vmlinux-493ffd66.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/3472d2d58c3a/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f0e0fcf3cd1047ae60ad@syzkaller.appspotmail.com

ERROR: (device loop0): dbAllocAG: allocation request is larger than the allocation group size
ERROR: (device loop0): dbDiscardAG: -EIO
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:1567:12
index 128 is out of range for type 's64 [128]'
CPU: 1 PID: 3614 Comm: syz-executor131 Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 dbDiscardAG+0x9d6/0xa50 fs/jfs/jfs_dmap.c:1567
 jfs_ioc_trim+0x433/0x660 fs/jfs/jfs_discard.c:100
 jfs_ioctl+0x2bd/0x3d0 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:870 [inline]
 __se_sys_ioctl+0xfb/0x170 fs/ioctl.c:856
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f0cc1ffdda9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffdd75ab778 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f0cc1ffdda9
RDX: 0000000020000140 RSI: 00000000c0185879 RDI: 0000000000000003
RBP: 00007f0cc1fbd570 R08: 0000000000000000 R09: 00007f0cc1fbd570
R10: 00005555566902c0 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00083878000000f8 R15: 0000000000000000
 </TASK>
================================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
