Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FDEA69AE4
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Mar 2025 22:33:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tv11J-0003AP-PB;
	Wed, 19 Mar 2025 21:32:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3NTfbZwkbAFYGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tv0yh-00035s-Dm for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Mar 2025 21:29:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2dDDQzC3zAiXNSSKolDKsj/rYgJ5nWbTr3QpkC1PGlo=; b=Ay5ULotZ/A5WaDb8RyHPADcGIR
 yEPKVNJL5C6xkccnZXlVa+/OdeBmIHQ5hawn4HMkLZA9SJyxvzYrxuX6BpTWG48JTI44vrb2fGFd9
 G6BzsMfV5SFUk9yNKrsma+ihaH4NOR5atzMH2vE3MN9fHzdM9A6w255szxJmDDTaiJMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2dDDQzC3zAiXNSSKolDKsj/rYgJ5nWbTr3QpkC1PGlo=; b=W
 6FxS1U4POD/ytcgwX519comskTgmL6/IfqTXM9jddVx7X1XYExwgZcVmNJEsM6NtB3w+/ds2y86CG
 6CkbQvLxc0BsuFNhFHWI+1QjmWQlOhVT13mWzrW52pIc/qnchtmB71l38abwNWoq8dgs4qXp/z803
 9o7Aw8QfacKI6WLc=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tv0yh-0007JN-6U for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Mar 2025 21:29:31 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3d43c0dbe6aso2523235ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Mar 2025 14:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742419765; x=1743024565;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2dDDQzC3zAiXNSSKolDKsj/rYgJ5nWbTr3QpkC1PGlo=;
 b=BQu+9gVnnm7Aa4k7SH5/pf8hw/UC5Rl8z6q3rOri4INjXZKSpUeAEY3YS2qY/BHf4D
 6VU5bQ/GgFWQXVLzDxYfYouCUv9EkbyEBFVowXl/okICHF1x+JIaUs3JgeSdWEQptBE1
 XOHjG8suNgNzEmBDGw54jS9+PvgET+jNXEzLGXLYgkf2GtuZ44kg1pFKn2O8ma1nMswr
 dX7qQm97Bf8l9ILCsm86KOIq+ysA/RvGkABQSX62Qv6XWKN0DlkG6y9JkSs8qOSNQ1Rj
 FoaWaib/sXRxzY8VBjTCxJlmOZFewtI/SHZhAakMZegpa5d6sLzci0vmXTRbA/dTjNCG
 UtKA==
X-Gm-Message-State: AOJu0Yy+igG3UakI3RNoqelRnw4enDYd3znD1C1LWL6yjhoFw8YHp0r5
 eLdI/c+N2wi22n1OH1c/bvvZvZG3eeu5RkYUDTdDc1tdor/Dk5yXsFeEmBoXX49yhP9yb0J0VJd
 ZL9zZqukenTyteu4KBrmRPfvNPDb0NUX8KbvIc01vKNp1uZlge5INRGc=
X-Google-Smtp-Source: AGHT+IHfZAsHI335RXi6BMggSOGezH85UzpwPNmDSAWHyWkdaX6WrnlZgsFXb57bM1bGvi4Dz92BsMVg597ZQa0waNQQoaTzLKgg
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:2787:b0:3d4:712e:29eb with SMTP id
 e9e14a558f8ab-3d586b2ab41mr49128935ab.5.1742419765531; Wed, 19 Mar 2025
 14:29:25 -0700 (PDT)
Date: Wed, 19 Mar 2025 14:29:25 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67db3735.050a0220.3657bb.0146.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 4 new
 issues were detected and 0 were fixed. In total, 50 issues are still open
 and 51 have already been fixed. 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.198 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.198 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1tv0yh-0007JN-6U
X-Mailman-Approved-At: Wed, 19 Mar 2025 21:32:12 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Mar 2025)
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
Reply-To: syzbot <syzbot+listb6d66f57a78401653965@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 4 new issues were detected and 0 were fixed.
In total, 50 issues are still open and 51 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  38640   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  20043   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  16537   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<4>  5721    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  3361    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  3122    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  3111    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<8>  2279    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<9>  1672    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<10> 1597    Yes   general protection fault in jfs_flush_journal
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
