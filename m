Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E625FA002
	for <lists+jfs-discussion@lfdr.de>; Mon, 10 Oct 2022 16:15:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ohtYg-0000IS-5r;
	Mon, 10 Oct 2022 14:15:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3S8tDYwkbABIAGH2s33w9s770v.y66y3wCAw9u65Bw5B.u64@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ohnKH-00063j-4m for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Oct 2022 07:35:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yvGLK7BFZQXPO6UYsdQpXLwU9WtlibEyuFOmtYBinVY=; b=hoBYmD//4Hyl3/BiL6drigSud4
 8YmxaX9O+J0jVQptGHVnbmxsCTjEdpq1pSLGHu2XbeiQZEGHyHxFnLP+lgSvfiJYCjDqB71E8zjQ9
 folvQS7EQks9YGENEKe4gubZFqWE62BS1WSzo2WaJ0FEsJ8ZC/8LcZLVsrpkCW37TXWk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yvGLK7BFZQXPO6UYsdQpXLwU9WtlibEyuFOmtYBinVY=; b=k
 HrVJ3gV6tn5v6dNzrKB0R2PMXDsEzixu5miXBIhw0k+d6CXYqv7TSaC047hrzqbNU7x57ZL0+rvmG
 ro/3GOeFpiwfRj5Xt3sslpmAylUD5hkghW1R6XzWVC3KBKUO8XUAGSWsHYsTpifEqJfm0vuYSwv7p
 +K/2IF6UQ73agc4Q=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohnKD-000163-0B for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Oct 2022 07:35:49 +0000
Received: by mail-io1-f70.google.com with SMTP id
 f25-20020a5d8799000000b006a44e33ddb6so6793132ion.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 10 Oct 2022 00:35:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yvGLK7BFZQXPO6UYsdQpXLwU9WtlibEyuFOmtYBinVY=;
 b=z8Xhz2mbwIKb9M9kNWWUjT85QSmsTnZNEgEqpOucKcxpUxHo7sR7+9jRpIGesFRRxV
 Qf7eOtNZxYefGh2Ns5OcX7AcsKkIJQE8Xs+PTOQNrNAfBLRfKekuu11xiGWsfxGGIxz5
 19BmhPK688HjqN7ug3nmWY4VP0a+Nunyxv91azRZa3zW9ASxUHGPYs1RYA2d9K/p1p8M
 ask+qddLCDhBez57m2pTkSj2KVwojrQ0Qa74MKU0XBxOnQUh4oqJLbRqyh51kwv/aNkI
 01fSooXTxdEgqYj/6KgN+9917R1EAqq1uLf3ddZkTM0TLywQtJZBaJt6KtpM1YGY2t76
 I8Aw==
X-Gm-Message-State: ACrzQf2MKRAmLUOiOq07PIyrZ5FrJkNm2UbIawN8GSXaVtU6lpkrlMGx
 lu+UerM5NQxMoZhEg0sIxZoPXB25uw/YtIs1IyuApMzbeSMH
X-Google-Smtp-Source: AMsMyM6hqCOvQYCJV54FsKZr5AJtxoj59WwbeeasWEouPpt1+Dodib9ZlQ/xn7sp7yH9p+I0hrDCERwWT9lVEE/MaPBCLGnpghEX
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:15c9:b0:2da:c33e:49c7 with SMTP id
 q9-20020a056e0215c900b002dac33e49c7mr8468301ilu.26.1665387339440; Mon, 10 Oct
 2022 00:35:39 -0700 (PDT)
Date: Mon, 10 Oct 2022 00:35:39 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c7e7be05eaa93401@google.com>
From: syzbot <syzbot+667a6d667592227b1452@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: aaa11ce2ffc8
 Add linux-next specific files for 20220923 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=10a9b134880000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
X-Headers-End: 1ohnKD-000163-0B
X-Mailman-Approved-At: Mon, 10 Oct 2022 14:15:03 +0000
Subject: [Jfs-discussion] [syzbot] KASAN: use-after-free Read in dbJoin
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

HEAD commit:    aaa11ce2ffc8 Add linux-next specific files for 20220923
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=10a9b134880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=186d1ff305f10294
dashboard link: https://syzkaller.appspot.com/bug?extid=667a6d667592227b1452
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/95c7bf83c07e/disk-aaa11ce2.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b161cd56a7a3/vmlinux-aaa11ce2.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+667a6d667592227b1452@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: use-after-free in dbJoin+0x23b/0x240 fs/jfs/jfs_dmap.c:2772
Read of size 1 at addr ffff88817cbdfa4c by task jfsCommit/123

CPU: 0 PID: 123 Comm: jfsCommit Not tainted 6.0.0-rc6-next-20220923-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:284 [inline]
 print_report+0x15e/0x45d mm/kasan/report.c:395
 kasan_report+0xbb/0x1f0 mm/kasan/report.c:495
 dbJoin+0x23b/0x240 fs/jfs/jfs_dmap.c:2772
 dbFreeBits+0x15d/0x8c0 fs/jfs/jfs_dmap.c:2305
 dbFreeDmap+0x61/0x1a0 fs/jfs/jfs_dmap.c:2054
 dbFree+0x250/0x540 fs/jfs/jfs_dmap.c:379
 txFreeMap+0x8f1/0xd70 fs/jfs/jfs_txnmgr.c:2529
 txUpdateMap+0x3cd/0xc50 fs/jfs/jfs_txnmgr.c:2325
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x5bb/0xaa0 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x2e4/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>

The buggy address belongs to the physical page:
page:ffffea0005f2f7c0 refcount:0 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x17cbdf
flags: 0x57ff00000000000(node=1|zone=2|lastcpupid=0x7ff)
raw: 057ff00000000000 ffffea0005f2f7c8 ffffea0005f2f7c8 0000000000000000
raw: 0000000000000000 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner info is not present (never set?)

Memory state around the buggy address:
 ffff88817cbdf900: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff88817cbdf980: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>ffff88817cbdfa00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
                                              ^
 ffff88817cbdfa80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff88817cbdfb00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
==================================================================


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
