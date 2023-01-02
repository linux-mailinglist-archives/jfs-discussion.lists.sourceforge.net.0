Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C49865B569
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Jan 2023 17:58:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pCO89-0003BD-R4;
	Mon, 02 Jan 2023 16:57:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3g2uyYwkbAEg289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pCDNP-00031w-7S for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Jan 2023 05:28:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C4uOy9OkEsZTHzkuQks1c5eDJDmK/nr6rd+3HMv9L8k=; b=fk1oGCG/2NVtQnjiNTvD5VsDz+
 avcxGZrVJJCS9msGGci4G3kxubiL1tNOUhy/AkkNhCBHfI/lJD3GAG7vQo6LlkI6XQcCjsZPsVjX5
 Vyv7nsxAusOfOn7shCOu5m8yTjBC1o9L413zQvwI1dRcFKztN+eEeA5LAp3i7JN7bdGA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=C4uOy9OkEsZTHzkuQks1c5eDJDmK/nr6rd+3HMv9L8k=; b=A
 gaZ2QZDVlFPRX2PcP74LhnBvlIE11PBFexRQF/Qh/uI3c/lWMokaW+1CbNlEzu43IWH9Ju0oFs5cX
 G8lrE0goRwtr8T0ZTO6J7wLS1pZQaWcZFVbynnyigO79RR+rjooCWBFLddBVRpZW4y+Jh1O3xCW2g
 0yrIa7rjRW6izM38=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pCDNM-00006x-13 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Jan 2023 05:28:47 +0000
Received: by mail-io1-f71.google.com with SMTP id
 h11-20020a6b7a0b000000b006e0004fc167so7383526iom.5
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 01 Jan 2023 21:28:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=C4uOy9OkEsZTHzkuQks1c5eDJDmK/nr6rd+3HMv9L8k=;
 b=nhamo1GxWn1bok+JCW9Q2aYEvE9M60Ir19jaLO+rQXcdzTIFAQ1vDo1ddIYa5xpewm
 aER8phpSkQ+dauk23+1WAXSwWOFHeuKUKiN7CqKvztPNvHwTGc6yotaz9qQzyxT3kI+n
 e6+yJRb+63IKTf24nsRZPCSC7dr2TDJKQjCKyWYtYl/eht2lmdbFgnR9s8pxjk4ivgLq
 d9fCmMjec7NVxqQq5Um/oU8+RgFcVWOBVPCE5jPYzmyt6zTkazgJCZ34d5DwumG+3NaI
 ByKIwCfjiFT4dx2p/lzMFZsoJ7VnC4rrXzbsaU76wiT8IymiR2TOUg6D0HqF6SKw4mRi
 lqOQ==
X-Gm-Message-State: AFqh2krXuS171TJpM1v1Nh6vgC56FNlf5NzaGfNZPHXCnLyfLRbCX3XT
 YEP/nsmclB72FTkM97ITJtYk/gi6JlrS0ZkUeY3TpCsv0/9B
X-Google-Smtp-Source: AMrXdXsZfYOGc83HgDZDj+gv/or1CgrEON3pQbuF8feBIlvRcoTkjLfZveu5esyNVSTO0Tohh+FVY3dtfkWM4/6syoyVas4kS856
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1566:b0:30b:d301:1ceb with SMTP id
 k6-20020a056e02156600b0030bd3011cebmr4124212ilu.23.1672637315826; Sun, 01 Jan
 2023 21:28:35 -0800 (PST)
Date: Sun, 01 Jan 2023 21:28:35 -0800
In-Reply-To: <00000000000032020805ec75ae69@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000c4df705f1413990@google.com>
From: syzbot <syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 mudongliangabcd@gmail.com, paskripkin@gmail.com, r33s3n6@gmail.com, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, wuhoipok@gmail.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: e4cf7c25bae5 Merge tag 'kbuild-fixes-v6.2' of git://git.ke..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=141a6274480000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1pCDNM-00006x-13
X-Mailman-Approved-At: Mon, 02 Jan 2023 16:57:42 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in dbFindLeaf
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

HEAD commit:    e4cf7c25bae5 Merge tag 'kbuild-fixes-v6.2' of git://git.ke..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=141a6274480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
dashboard link: https://syzkaller.appspot.com/bug?extid=aea1ad91e854d0a83e04
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10faef4c480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13170968480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/0a2dc7ed8cf1/disk-e4cf7c25.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b35476d531fc/vmlinux-e4cf7c25.xz
kernel image: https://storage.googleapis.com/syzbot-assets/a66192aa25a5/bzImage-e4cf7c25.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/78eabe0740c8/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2941:16
index 1381 is out of range for type 's8 [1365]'
CPU: 0 PID: 5067 Comm: syz-executor239 Not tainted 6.2.0-rc1-syzkaller-00095-ge4cf7c25bae5 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x290 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xe0/0x110 lib/ubsan.c:282
 dbFindLeaf+0x30a/0x440 fs/jfs/jfs_dmap.c:2941
 dbAllocDmapLev+0xa9/0x420 fs/jfs/jfs_dmap.c:1952
 dbAllocCtl+0x113/0x970 fs/jfs/jfs_dmap.c:1808
 dbAllocAG+0x28b/0x1100 fs/jfs/jfs_dmap.c:1349
 dbAlloc+0x661/0xc90 fs/jfs/jfs_dmap.c:873
 dtSplitUp fs/jfs/jfs_dtree.c:974 [inline]
 dtInsert+0xc0e/0x6b80 fs/jfs/jfs_dtree.c:863
 jfs_mkdir+0x757/0xb00 fs/jfs/namei.c:270
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4036
 do_mkdirat+0x25b/0x530 fs/namei.c:4061
 __do_sys_mkdirat fs/namei.c:4076 [inline]
 __se_sys_mkdirat fs/namei.c:4074 [inline]
 __x64_sys_mkdirat+0x85/0x90 fs/namei.c:4074
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f2ba532cb29
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 51 14 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fffd3c83968 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f2ba532cb29
RDX: 0000000000000000 RSI: 0000000020000180 RDI: 0000000000000004
RBP: 00007f2ba52ec130 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f2ba52ec1c0
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
================================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
