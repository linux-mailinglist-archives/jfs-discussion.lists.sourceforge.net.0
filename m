Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F432AB153D
	for <lists+jfs-discussion@lfdr.de>; Fri,  9 May 2025 15:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RRzrQGQOU8An1MR9J6OBtua5FqdMo+OlVH8nIWVIcwg=; b=Osv676z5I3DUGggFFAM5+VJUCn
	3uJGXlepsbm6WwGdAfnexEy9IQlIxbdB2YnTJCMl3NLhs/gelC08nWTpbKncjXjpNB+T73z564WA5
	BkZwfmgmUN++KjH4/Tchl/XOjNz5tpyE6sp/so9Yu2sPJ9Kvn7Tp/xZQ2BtO/uzg899w=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uDNq0-0001Re-EM;
	Fri, 09 May 2025 13:32:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <374cdaAkbALwu01mcnngtcrrkf.iqqingwugteqpvgpv.eqo@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uDFa9-0001Km-SU for jfs-discussion@lists.sourceforge.net;
 Fri, 09 May 2025 04:43:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xi0HR6ic3akJ+aF/aO4A0Ekh2qNadtT1uQ1LPMqp764=; b=Cl2bUHY37A4VWcr6C8itG2SOt0
 ScqGE7FHImKztrPwOu1KgDYntAExB6CAcbXdkoMv4MZJpJRBg+sNMnoblqJyzvdf1fSq7gNK83hEc
 lVe98dBtEdyLoV8RIJJlthdruiLgJb0155JaBcyv1vaYM1MRaQJXXnB/o3VaGI0MpngY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Xi0HR6ic3akJ+aF/aO4A0Ekh2qNadtT1uQ1LPMqp764=; b=K
 00Gk762pTaSyVltb2efPZiKKeX2NP8gVJFaEtsi0aFnJqfT54VQiHB/+pSLTMExNjK3/l/4u1C7cw
 kceUC+l2cUo1/bmXmnJM2zAqBvEgJzsq4Cfojb0t/MAGAwHTdfjUlrQ36rGDTXDo4Rz2HMp0GexNs
 BWoACh+aytrZ3qEU=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uDFa8-0007st-Q2 for jfs-discussion@lists.sourceforge.net;
 Fri, 09 May 2025 04:43:33 +0000
Received: by mail-il1-f205.google.com with SMTP id
 e9e14a558f8ab-3da76423b9cso22514685ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 08 May 2025 21:43:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746765807; x=1747370607;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Xi0HR6ic3akJ+aF/aO4A0Ekh2qNadtT1uQ1LPMqp764=;
 b=nw+RTzjuHSTcIIpRttmUpZdG5kzQ0rm06rQMRKT524Vg1ueqnzHr1wQ1qCjjIZ4QF8
 P0+OVx+RPEuoiw1IBQwgIQ7HQz3OuttV0rK98kRuJXv/EH9KbnxtafcwqvfQiFoowodu
 bS7HaYoTebPsRea5Hox1HmZjBSgU4bOGd556o3EYhMTEeYDtvH/J4QT3i//yhrmj42L3
 G26ZlGJjGNVi+zCH7dFc3hn0Xbc5Py0WOaksVclVa2X3Kd/Hi7TC32NN7mF30Dt9wYeH
 cFrHvPXlP3xlIPsD7afjlZTxbftyEueYTyV8PYYT9bZU1TQxEvxeE0WvUuexP1V+zFAJ
 NFpA==
X-Gm-Message-State: AOJu0YxasPtv8ay9TlE6bNP+QHbdfBCcc5hBCMBHVmn21e5EYjVYWM+S
 ykq1LVsTj9QMZUT47ZoCAMGZifuhiA9o0++fEVBmW5cxd5YlQ4wSxe+3XQniuWSjJpyDdLPajnZ
 qN1KR8US+eaniHEgRRdDOqDARA92yOnwEYqUu6UGs0m9IM5JGgW4+UNhT1Q==
X-Google-Smtp-Source: AGHT+IEw2yaaxwXAzGeCMdhEnT3LTjros0TrLPonVDAHSnPBHEOZsWRw804PNHdUpE6S4MnvirtuJbfnC3IGTIKdv1JePb0vB+q9
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:154e:b0:3d6:d18b:868c with SMTP id
 e9e14a558f8ab-3da7e1e71a0mr24516985ab.10.1746765807123; Thu, 08 May 2025
 21:43:27 -0700 (PDT)
Date: Thu, 08 May 2025 21:43:27 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <681d87ef.050a0220.a19a9.0125.GAE@google.com>
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
 syzbot found the following issue on: HEAD commit: 14c55b7bb0a8
 Merge tag 'perf-tools-fixes-for-v6.15-2025-05.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=178078d4580000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.205 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.205 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.205 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.205 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1uDFa8-0007st-Q2
X-Mailman-Approved-At: Fri, 09 May 2025 13:32:26 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] WARNING in jfs_rename
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
Reply-To: syzbot <syzbot+9131ddfd7870623b719f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    14c55b7bb0a8 Merge tag 'perf-tools-fixes-for-v6.15-2025-05..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=178078d4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a42a9d552788177b
dashboard link: https://syzkaller.appspot.com/bug?extid=9131ddfd7870623b719f
compiler:       Debian clang version 20.1.2 (++20250402124445+58df0ef89dd6-1~exp1~20250402004600.97), Debian LLD 20.1.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16845a70580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1681d0f4580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/3edd34cd2f74/disk-14c55b7b.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/a6d9796beefe/vmlinux-14c55b7b.xz
kernel image: https://storage.googleapis.com/syzbot-assets/90e0c0a88995/bzImage-14c55b7b.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/cb4a6659212d/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=167008f4580000)

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14935a70580000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=16935a70580000
console output: https://syzkaller.appspot.com/x/log.txt?x=12935a70580000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9131ddfd7870623b719f@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
WARNING: CPU: 0 PID: 5815 at fs/inode.c:417 drop_nlink+0xc5/0x110 fs/inode.c:417
Modules linked in:
CPU: 0 UID: 0 PID: 5815 Comm: syz-executor240 Not tainted 6.15.0-rc4-syzkaller-00319-g14c55b7bb0a8 #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 04/29/2025
RIP: 0010:drop_nlink+0xc5/0x110 fs/inode.c:417
Code: 70 07 00 00 be 08 00 00 00 e8 b7 84 e8 ff f0 48 ff 83 70 07 00 00 5b 41 5c 41 5e 41 5f 5d c3 cc cc cc cc cc e8 0c b3 88 ff 90 <0f> 0b 90 eb 81 44 89 f1 80 e1 07 80 c1 03 38 c1 0f 8c 5b ff ff ff
RSP: 0018:ffffc9000403f8b0 EFLAGS: 00010293
RAX: ffffffff82371c54 RBX: ffff88807ab92910 RCX: ffff888068d38000
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: ffffea0001ebfef7 R09: 1ffffd40003d7fde
R10: dffffc0000000000 R11: fffff940003d7fdf R12: 1ffff1100f57252b
R13: 1ffff92000807f28 R14: ffff88807ab92958 R15: dffffc0000000000
FS:  0000555585560380(0000) GS:ffff8881260fd000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000066c7e0 CR3: 000000007eb1a000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_rename+0xbb3/0x1610 fs/jfs/namei.c:1247
 vfs_rename+0xb99/0xec0 fs/namei.c:5121
 do_renameat2+0x878/0xc50 fs/namei.c:5270
 __do_sys_rename fs/namei.c:5317 [inline]
 __se_sys_rename fs/namei.c:5315 [inline]
 __x64_sys_rename+0x82/0x90 fs/namei.c:5315
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xf6/0x210 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7ff16a8d0639
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc9b984ab8 EFLAGS: 00000246 ORIG_RAX: 0000000000000052
RAX: ffffffffffffffda RBX: 00007ffc9b984c98 RCX: 00007ff16a8d0639
RDX: 0000000000000000 RSI: 0000200000000780 RDI: 00002000000003c0
RBP: 00007ff16a949610 R08: 0000000000006221 R09: 0000000000000000
R10: 00007ffc9b984980 R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffc9b984c88 R14: 0000000000000001 R15: 0000000000000001
 </TASK>


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
