Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 340765FA000
	for <lists+jfs-discussion@lfdr.de>; Mon, 10 Oct 2022 16:15:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ohtYf-0000I4-Fo;
	Mon, 10 Oct 2022 14:15:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <328ZDYwkbAJgKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ohn1x-00058A-AC for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Oct 2022 07:16:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H21dKt7zHeW3eXNrfU61MPCo4gXmaQ/hiU57H2sUBfQ=; b=NK5SElmgpJRSUUO+Up5GVFiK+X
 YDJ9cGQX4vMRXZBOUJnNQXFUk1ab156qRYVjOLGS22pEwx5ycMyqSZAVbKpEnmZ8DlohAZD3GEEEU
 ClG8Y9ptA3rpyjj7zK/D54goqzUS49h1tQLHy3JfoYcGI6gBGL9iQgWr628XItsLtUgI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H21dKt7zHeW3eXNrfU61MPCo4gXmaQ/hiU57H2sUBfQ=; b=R
 H17veB0IVzQlaKmOctq8usOoVT6PmGZCPzR+13drSThXVZCJ1U1wEECQoYfnhMeowQ1Ez9sDZ/72c
 xt6pNsoDokPuW4MFEI8Tw4X9O/KW2IbADyjqr1FRNio0QGKC8f3zBKwhQAcexuYhCLpkivPuyXIxy
 nEf66LZGyN20sfZQ=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohn1s-000m8A-Hs for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Oct 2022 07:16:52 +0000
Received: by mail-il1-f197.google.com with SMTP id
 l5-20020a056e0212e500b002fa8ea32922so7955037iln.15
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 10 Oct 2022 00:16:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=H21dKt7zHeW3eXNrfU61MPCo4gXmaQ/hiU57H2sUBfQ=;
 b=DT4u+x/dwCQDSven5DwU2PX5jzbLMl8pFrVpN1ZOA0iP8uZPLMc0MR8lj20rSkR44o
 40GlsdYm4Vj3Zk4+zdDmXk/JxxnQu5OW0lC3iyYBagfH5KjMXJAsZuPq7B3tf2f1ODxE
 kViU8iDpenih1sTwwOkxsTiOHC1fQ3mHjGCAbmgAuatqxtXf1D6eR4flXPNwo078LPN7
 zWCGtpdlTIGHnrpXFCjj0uxlAG9/SrlSGJrJZ45sJOItGriS9YvjGo76+lgkuZMi6l63
 BIGcIkSImu0sZldgb1VtUSuB7mq6AyHlakdh7ImGtZ2X6om4KpKTQ/lKXdZqI801sQxM
 aqGw==
X-Gm-Message-State: ACrzQf3i+p3NwN80HSTBkNVzSB8F7UfwXHOxxLaJVmX8vHBqh54vKbYG
 tUQUQKAUhv2T//8wgauQVLeSyz+qS9p+2/7acHa7qxYRySH8
X-Google-Smtp-Source: AMsMyM6BKVX2UJRUTPQhHoglbD72mvUdio9qT88kkJTQQIWq4GHhyc5sxLLc7wS57NHHw/QvxLRtXCC3mlCZzwsgnvHJOzz1yWuW
MIME-Version: 1.0
X-Received: by 2002:a05:6638:14cb:b0:358:4759:be8c with SMTP id
 l11-20020a05663814cb00b003584759be8cmr8727885jak.13.1665386203047; Mon, 10
 Oct 2022 00:16:43 -0700 (PDT)
Date: Mon, 10 Oct 2022 00:16:43 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000bef6205eaa8f181@google.com>
From: syzbot <syzbot+411debe54d318eaed386@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 62e6e5940c0c
 Merge tag 'scsi-misc' of git://git.kernel.org.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=16347cc8880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
X-Headers-End: 1ohn1s-000m8A-Hs
X-Mailman-Approved-At: Mon, 10 Oct 2022 14:15:03 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbJoin
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

HEAD commit:    62e6e5940c0c Merge tag 'scsi-misc' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=16347cc8880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4c13637ccca17699
dashboard link: https://syzkaller.appspot.com/bug?extid=411debe54d318eaed386
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1768f51c880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=175885cc880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/b4f4f04cf38f/disk-62e6e594.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/dfb013b64867/vmlinux-62e6e594.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/64992a1b07af/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+411debe54d318eaed386@syzkaller.appspotmail.com

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2760:11
shift exponent 78 is too large for 32-bit type 'int'
CPU: 1 PID: 122 Comm: jfsCommit Not tainted 6.0.0-syzkaller-07362-g62e6e5940c0c #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 dbJoin+0x2e4/0x2f0 fs/jfs/jfs_dmap.c:2760
 dbAdjCtl+0x3b1/0x9c0 fs/jfs/jfs_dmap.c:2500
 dbFreeDmap fs/jfs/jfs_dmap.c:2064 [inline]
 dbFree+0x3c6/0x660 fs/jfs/jfs_dmap.c:379
 txFreeMap+0x97c/0xd70 fs/jfs/jfs_txnmgr.c:2510
 xtTruncate+0xe74/0x32d0 fs/jfs/jfs_xtree.c:2467
 jfs_free_zero_link+0x3f5/0x680 fs/jfs/namei.c:758
 jfs_evict_inode+0x35a/0x440 fs/jfs/inode.c:153
 evict+0x2a4/0x620 fs/inode.c:664
 txUpdateMap+0x8eb/0xaa0 fs/jfs/jfs_txnmgr.c:2362
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x433/0xba0 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
================================================================================


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
