Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B34B93D40F
	for <lists+jfs-discussion@lfdr.de>; Fri, 26 Jul 2024 15:21:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sXKsY-0002Af-AP;
	Fri, 26 Jul 2024 13:21:01 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <38TejZgkbACoYefQGRRKXGVVOJ.MUUMRKaYKXIUTZKTZ.IUS@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sXDll-0000eq-Ea for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Jul 2024 05:45:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DZcaH5okJTNj2VAL4oorr93ZBcU8Ex5+owgFpt6K9nc=; b=SCQeSAwcFcbHkNsNIs6eR7/8cV
 hgF9AetUuckSUbI3uWd8SRJRk6tmCtKFT/qzmMCFeUWNY2Zx0YoYD+5oyVOlehwmAqGqwqLo/CS3b
 UKj7D0W9wDYcbg4/4dWFZIWhUb9zEdjGpDKfmaqy8x5+J/NsegRC3L1VmjV+2ysPwao0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DZcaH5okJTNj2VAL4oorr93ZBcU8Ex5+owgFpt6K9nc=; b=N
 /oxBciVD7eWfsVRwJ+7q0E0bFBVqe7Kpdc//LnHOl/taMQUpxMJwKRe2B/9ykkTL8A3WZ6w+Rfm6q
 M25VZBO5qaHsWsgazpMrWWNhnAVJIrrFQEM92WN2OY7KJUjAxM+T/LyRLlCjw5rd6yr5pXlku2eyE
 HwjP0LbXMJ71fpVY=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sXDlk-0007ob-Jo for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Jul 2024 05:45:33 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3988d01a236so20777875ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Jul 2024 22:45:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721972722; x=1722577522;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=DZcaH5okJTNj2VAL4oorr93ZBcU8Ex5+owgFpt6K9nc=;
 b=flyEEZROG5asbb9MhmOUpfnHVGNM0U4pYtNC5zzypPFS7hzoLk/xfNqdUerXURDXFJ
 UztwmZXPnJ4JuHweSbW8BTJiXImGHX17C76JM3l04+sVMFRdCxuXMn/PsbMeRz+PH7im
 6xWUU5qAeCraQUIZCnVKfSnYpan3NwaPF00Y/8SY9Azf/TiDw8rppuNP8lH8Si8W3egZ
 UUzkC3rU0W8MvTMoRJvNnfWbvaFLrixFIzDtJsno7fnMqulfIdmCNSmXEOhPqEjDiTbF
 WZwtk1eyegNEhF6d8l+NyWI6KdzpIyQ1kLwYLOaUa3gb59Vla4Wzi+MJrXqSDLBhXGv2
 Ow5w==
X-Gm-Message-State: AOJu0YwV4+PWgCrcvZTUZed4HHNvH3SWm2WJ9IzxHqYT/E9BctA/C/9Q
 zMNNJR81EtjsxC+TAE8xNs6J/2g45DU6Vov2gDeAQvtZzxts+aVpRIhel0Sgv0KmCKl/ojl3ERb
 2+A65/aBIjj9A93T+QNKCQdXNSoKYbjfcgEjXDUFlxIIaVdS/Y72WRn0=
X-Google-Smtp-Source: AGHT+IEMOt5qA+PaIFHYI84FHgyOcl+1QMlA8NhttYDLRzsq7P4g3brP7Zcp0/Gnv89zLWybjo6PttkopSA5q6nI8EzmHdZv6P4H
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d90:b0:396:2d57:b1cb with SMTP id
 e9e14a558f8ab-39a23d14de9mr3124455ab.0.1721972721759; Thu, 25 Jul 2024
 22:45:21 -0700 (PDT)
Date: Thu, 25 Jul 2024 22:45:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000064c7a0061e2004d6@google.com>
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
 syzbot found the following issue on: HEAD commit: 7846b618e0a4
 Merge tag 'rtc-6.11' of git://git.kernel.org/.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=169ade0d980000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.198 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.198 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1sXDlk-0007ob-Jo
X-Mailman-Approved-At: Fri, 26 Jul 2024 13:20:59 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dbSplit
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
Reply-To: syzbot <syzbot+dca05492eff41f604890@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7846b618e0a4 Merge tag 'rtc-6.11' of git://git.kernel.org/..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=169ade0d980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f4925140c45a2a50
dashboard link: https://syzkaller.appspot.com/bug?extid=dca05492eff41f604890
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=165876b5980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1453ee95980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/43e8dc30bfe7/disk-7846b618.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2563411f0b58/vmlinux-7846b618.xz
kernel image: https://storage.googleapis.com/syzbot-assets/19d3b69b2212/bzImage-7846b618.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/97777a7e85e9/mount_0.gz

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13f21c65980000
console output: https://syzkaller.appspot.com/x/log.txt?x=17f21c65980000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
loop0: detected capacity change from 32768 to 32745
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2628:27
index 4294967295 is out of range for type 's8[1365]' (aka 'signed char[1365]')
CPU: 0 PID: 5087 Comm: syz-executor157 Not tainted 6.10.0-syzkaller-11323-g7846b618e0a4 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dbSplit+0x1fd/0x220 fs/jfs/jfs_dmap.c:2628
 dbAllocBits+0x4e5/0x9a0 fs/jfs/jfs_dmap.c:2191
 dbAllocDmap fs/jfs/jfs_dmap.c:2032 [inline]
 dbAllocDmapLev+0x250/0x4a0 fs/jfs/jfs_dmap.c:1986
 dbAllocCtl+0x113/0x920 fs/jfs/jfs_dmap.c:1823
 dbAllocAG+0x28f/0x10b0 fs/jfs/jfs_dmap.c:1364
 dbAlloc+0x658/0xca0 fs/jfs/jfs_dmap.c:888
 dtSplitUp fs/jfs/jfs_dtree.c:979 [inline]
 dtInsert+0xda7/0x6b00 fs/jfs/jfs_dtree.c:868
 jfs_create+0x7ba/0xbb0 fs/jfs/namei.c:137
 lookup_open fs/namei.c:3578 [inline]
 open_last_lookups fs/namei.c:3647 [inline]
 path_openat+0x1a9a/0x3470 fs/namei.c:3883
 do_filp_open+0x235/0x490 fs/namei.c:3913
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1416
 do_sys_open fs/open.c:1431 [inline]
 __do_sys_openat fs/open.c:1447 [inline]
 __se_sys_openat fs/open.c:1442 [inline]
 __x64_sys_openat+0x247/0x2a0 fs/open.c:1442
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7ff80ad14019
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffcebdf6708 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 00007ff80ad5d095 RCX: 00007ff80ad14019
RDX: 000000000000275a RSI: 0000000020000080 RDI: 00000000ffffff9c
RBP: 00007ff80ad8e5f0 R08: 00005555712cc4c0 R09: 00005555712cc4c0
R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffcebdf6730
R13: 00007ffcebdf6958 R14: 431bde82d7b634db R15: 00007ff80ad5d03b
 </TASK>
---[ end trace ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

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
