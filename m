Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F12A9CE139
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Nov 2024 15:30:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tBxKi-0006GL-Ke;
	Fri, 15 Nov 2024 14:30:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3NCc3ZwkbAJ8RXYJ9KKDQ9OOHC.FNNFKDTRDQBNMSDMS.BNL@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tBttP-0008U2-PU for jfs-discussion@lists.sourceforge.net;
 Fri, 15 Nov 2024 10:49:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f+rlxtKG2aGkvlFRBMhtlmvZbAbGNeSTd8P0PcCyJfE=; b=UIlZ9qpvm4U/LcpoZLSXu/AMJn
 4fhMMKGrQLJbVjqevcueqe8Xk1F0s/wwopuLcdaXDD5TCyBkLrVPcgTdT6LVE2Twq9QB/oXHdMTm3
 CKtxG4F8InPSC3CkK6s0Hk/F61jhedC+pxXlPPPffgGhVaJmh6XYXIv7OUowv8ERSnK4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f+rlxtKG2aGkvlFRBMhtlmvZbAbGNeSTd8P0PcCyJfE=; b=l
 OVtlWPaMD9ZA3qKU87LVfekRPqduDxmxUDKoZk6dkaUPzQubJ2o+hpgA7kns9lHzIo8+Jl8j0MeAC
 qql71ul3lG5v6sTVR/IwxIdY6poW/h3IOTB8KgPbrYtnLqnN5ELCKHQk/6qzbSKzE4v7/4hatY8oE
 AnKkedPf5k5r7ZEY=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tBttO-0004Ig-VZ for jfs-discussion@lists.sourceforge.net;
 Fri, 15 Nov 2024 10:49:35 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-3a7158d5c8aso7470575ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 15 Nov 2024 02:49:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731667764; x=1732272564;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=f+rlxtKG2aGkvlFRBMhtlmvZbAbGNeSTd8P0PcCyJfE=;
 b=mDdsqhQUvTgj1u53lNJeyIf2WV/1PRoqD6qh4YbN+ilDG+F+VMt9BcaCFMdG87QzK8
 RV5eN9V+N1jiU2fooWBo8TGSzJoFK/vPRh4oRLJqOZdAS8Y40c/tmY9PRk4SeOvb0LWW
 QFepT0PHlWJbtcsNEiuG9up7omGRm9je7/EZMPTKe1I9ahI5iPmNbJtCUpzjjBdCy9fr
 y8vSaW0iFQc1ZIoFsyILoREepQe2i0RPYNyGOSbj4kZz4hTHGiY0RA4xXLn0EcRItyGv
 ud2rbCNOPz2+YcA/7Psa1J6gCWjuReqhQMV8cGKsKcUXBCavgOK1F8kzW3NGNGnjadlU
 Yp0A==
X-Gm-Message-State: AOJu0YyhqPeHkBv4oJJFk4/z8cxajPXp5jkZbe4a3cYL6N/eAxvL3tRo
 jiuWc+v6CzhQRIhgEZ/9ojdS+QwIjM9ojKwZEkX0fAxpOnHRxNzOJCqLstZoYs/Ou9Lc5q2+Izc
 fpllv8H8uz8mazN5mLneqZduHZem0uWhN1rTZHazi4Lyg61PxkZVqP6c=
X-Google-Smtp-Source: AGHT+IEk0v0Tl83Y60397ic2iMUG3lvC58jjO9vBypvdRBKMc5saVXpQ2Ag+VCBNGJAAvTQj/IvZnU8Dt/CXoZniX3Mq0+45VNtq
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d88:b0:3a6:ac4e:2659 with SMTP id
 e9e14a558f8ab-3a74800f183mr23740335ab.6.1731667764204; Fri, 15 Nov 2024
 02:49:24 -0800 (PST)
Date: Fri, 15 Nov 2024 02:49:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67372734.050a0220.2a2fcc.0078.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 2 new
 issues were detected and 0 were fixed. In total, 49 issues are still open
 and 47 have already been fixed. 
 Content analysis details:   (2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.199 listed in sa-trusted.bondedsender.org]
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.199 listed in psbl.surriel.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.199 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1tBttO-0004Ig-VZ
X-Mailman-Approved-At: Fri, 15 Nov 2024 14:29:59 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Nov 2024)
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
Reply-To: syzbot <syzbot+listf156ee00ba8a7b601a18@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 2 new issues were detected and 0 were fixed.
In total, 49 issues are still open and 47 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  24478   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  11810   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  5816    Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<4>  4529    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  2536    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<6>  2468    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  2316    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<8>  2206    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<9>  1085    Yes   KASAN: use-after-free Read in release_metapage
                   https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
<10> 970     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6

---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

To disable reminders for individual bugs, reply with the following command:
#syz set <Ref> no-reminders

To change bug's subsystems, reply with:
#syz set <Ref> subsystems: new-subsystem

You may send multiple commands in a single email message.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
