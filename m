Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCC660F90A
	for <lists+jfs-discussion@lfdr.de>; Thu, 27 Oct 2022 15:30:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oo2xZ-0006Te-Jz;
	Thu, 27 Oct 2022 13:30:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <37MJZYwkbAPktz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1onpqP-0001Si-UP for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Oct 2022 23:29:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TAbld4UtZoBRGRCs9SA2Vo9mf3zAKcvQiEVsqXN8F6Q=; b=itznAXjoPgt0fP7aHih25JUrcI
 OUSLjLmzNDarYFnrw1Y8sI3CdfuISb7VcS3mEYfx741U+W+Foj8ZjvqBemav8dwaU71QpRJUfHekA
 gQ+zoQPsV6P1CsaC3q+jbcF90kPa3qRtA+h1FTu/UK+mr+/P6TtkP44JVBS1UaHdOWOQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TAbld4UtZoBRGRCs9SA2Vo9mf3zAKcvQiEVsqXN8F6Q=; b=l
 AcvK99cx82yulhF99BEPH3GG9TCNsS0ZUGblRY/Eva7vGteG7DYpH7+WqUmFL5EyhNxNi2YkEuY3U
 BYi4XBV2N7Nxi0rNSvXxhahfFwPSO3dlA5CIQeoJkkH1ajsU6OFdGIQLK+qWzX94vX1mhdr9teaKO
 Pbat75dyVX9rgmZY=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1onpqL-0003cR-QP for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Oct 2022 23:29:57 +0000
Received: by mail-il1-f199.google.com with SMTP id
 y13-20020a056e021bed00b002faba3c4afbso15042656ilv.13
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 26 Oct 2022 16:29:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TAbld4UtZoBRGRCs9SA2Vo9mf3zAKcvQiEVsqXN8F6Q=;
 b=WdwxfCdWin4wGxyi0jVjuPmoihmyNPqVRqNKNgy3rPU14G6LM+xGD01xaCyea0i0AW
 SOgArsESLCLT9UbHKSPxeEsBMEBJ3l2iaLosuTPK71BjYUPikd63WbIhrnAmsWCR4NrB
 Zi3aXsxhEvVYxKZFFj+K4dohuQNRPlZ1G0wtWzhOp+VL64M2QQH5yXU7TDNZ0zvQHt/f
 3xWyDckG+Tcu76MewN+lbHGZvhm5BxjTHoVz76Le7XZ4AhkpIfZUmhW3Hq31vx3cMRwK
 WIOadL/oZL42H6nQ6h0YdmKcfO/Q8iL19ANKvkBaAd6uKiu2FOR6vevipygHa6DwWEzD
 cKiQ==
X-Gm-Message-State: ACrzQf2mXeDZGG6bVyu66PlnNyFb1IB939GSg1i06+AF9XF2RE7LN93a
 a5TfP5R03AzlrnpjXCc4zC2RmepnTH3unOxJEpUd5i+Q/FpL
X-Google-Smtp-Source: AMsMyM55HzvN5BpmI9JgGF1Q9rYeWQHGJsllqKVmeN/VrYcd+3KYVDs28wIPbLRnioYbJOovM0PkbvpKKuy1DyEY5hMdo7NbU/6p
MIME-Version: 1.0
X-Received: by 2002:a6b:6709:0:b0:6bc:269e:e81a with SMTP id
 b9-20020a6b6709000000b006bc269ee81amr27420312ioc.174.1666826988275; Wed, 26
 Oct 2022 16:29:48 -0700 (PDT)
Date: Wed, 26 Oct 2022 16:29:48 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000089d01005ebf866f2@google.com>
From: syzbot <syzbot+884094a86cde3d3e37ef@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 mudongliangabcd@gmail.com, paskripkin@gmail.com, r33s3n6@gmail.com, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 4d48f589d294
 Add linux-next specific files for 20221021 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=119b63d2880000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1onpqL-0003cR-QP
X-Mailman-Approved-At: Thu, 27 Oct 2022 13:30:11 +0000
Subject: [Jfs-discussion] [syzbot] kernel BUG in dbFindCtl
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

HEAD commit:    4d48f589d294 Add linux-next specific files for 20221021
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=119b63d2880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2c4b7d600a5739a6
dashboard link: https://syzkaller.appspot.com/bug?extid=884094a86cde3d3e37ef
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16cd2386880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15bbbf6a880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/0c86bd0b39a0/disk-4d48f589.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/074059d37f1f/vmlinux-4d48f589.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/8b860bb9b972/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+884094a86cde3d3e37ef@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
BUG at fs/jfs/jfs_dmap.c:2994 assert(bitno < 32)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_dmap.c:2994!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 3608 Comm: syz-executor549 Not tainted 6.1.0-rc1-next-20221021-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
RIP: 0010:dbFindCtl.cold-0x2/0x57
Code: fa e9 5f aa 87 f9 e8 ae c8 28 f8 48 c7 c1 80 b2 09 8a ba b2 0b 00 00 48 c7 c6 00 b1 09 8a 48 c7 c7 40 b1 09 8a e8 66 6f f8 ff <0f> 0b e8 88 c8 28 f8 49 63 d4 48 89 ee 48 c7 c7 c0 74 2c 8c e8 a6
RSP: 0018:ffffc90003cdf008 EFLAGS: 00010286
RAX: 0000000000000030 RBX: 0000000000000000 RCX: 0000000000000000
RDX: ffff88801d9d0000 RSI: ffffffff81621a58 RDI: fffff5200079bdf3
RBP: 0000000000000000 R08: 0000000000000030 R09: 0000000000000000
R10: 0000000080000000 R11: 6620746120475542 R12: 0000000000000001
R13: 0000000000000020 R14: 0000000000000000 R15: 0000000000000001
FS:  0000555555d65300(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f73e30a0020 CR3: 000000001e2d3000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 dbAllocDmapLev+0x223/0x2c0 fs/jfs/jfs_dmap.c:1960
 dbAllocCtl+0x131/0x780 fs/jfs/jfs_dmap.c:1803
 dbAllocAG+0x8da/0xd20 fs/jfs/jfs_dmap.c:1344
 dbAlloc+0x40d/0xa70 fs/jfs/jfs_dmap.c:868
 dtSplitUp+0x365/0x5130 fs/jfs/jfs_dtree.c:974
 dtInsert+0x82b/0xa10 fs/jfs/jfs_dtree.c:863
 jfs_create+0x5b7/0xac0 fs/jfs/namei.c:137
 lookup_open.isra.0+0xf05/0x12a0 fs/namei.c:3413
 open_last_lookups fs/namei.c:3481 [inline]
 path_openat+0x990/0x2850 fs/namei.c:3710
 do_filp_open+0x1b6/0x400 fs/namei.c:3740
 do_sys_openat2+0x16d/0x4c0 fs/open.c:1310
 do_sys_open fs/open.c:1326 [inline]
 __do_sys_open fs/open.c:1334 [inline]
 __se_sys_open fs/open.c:1330 [inline]
 __x64_sys_open+0x119/0x1c0 fs/open.c:1330
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f73e30c7f09
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff2dfe1fd8 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f73e30c7f09
RDX: 0000000000000000 RSI: 00000000000000f0 RDI: 0000000020000140
RBP: 00007f73e30876d0 R08: 0000555555d652c0 R09: 0000000000000000
R10: 00007fff2dfe1ea0 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00083878000000f8 R15: 0000000000000000
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:dbFindCtl.cold-0x2/0x57
Code: fa e9 5f aa 87 f9 e8 ae c8 28 f8 48 c7 c1 80 b2 09 8a ba b2 0b 00 00 48 c7 c6 00 b1 09 8a 48 c7 c7 40 b1 09 8a e8 66 6f f8 ff <0f> 0b e8 88 c8 28 f8 49 63 d4 48 89 ee 48 c7 c7 c0 74 2c 8c e8 a6
RSP: 0018:ffffc90003cdf008 EFLAGS: 00010286
RAX: 0000000000000030 RBX: 0000000000000000 RCX: 0000000000000000
RDX: ffff88801d9d0000 RSI: ffffffff81621a58 RDI: fffff5200079bdf3
RBP: 0000000000000000 R08: 0000000000000030 R09: 0000000000000000
R10: 0000000080000000 R11: 6620746120475542 R12: 0000000000000001
R13: 0000000000000020 R14: 0000000000000000 R15: 0000000000000001
FS:  0000555555d65300(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055f5e9479d28 CR3: 000000001e2d3000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


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
