Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1188EABF93D
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 May 2025 17:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=47ciUys+/W8DAVFZLCD/fDKErwnzsXiR+WyqaBN3c1c=; b=WgIB0kbxzsfdot9BuseT7PdaSa
	zBJDAWiZA8rGCTZlDqpFoCf1bLMP7XIFd2zN2cXyIBcKiIlUtrwALKpVu3gS4FuUGx5y1p3M4bFHG
	dcORGDTIoq4Y5ePPFohUDjFzgByc1YWgxiyskqwo5jRFPXr9Jp8g2x/o/uq/fQ03okFg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uHlMT-0005BP-Ja;
	Wed, 21 May 2025 15:28:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3l-ktaAkbAGoaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uHkru-0001Vl-8a for jfs-discussion@lists.sourceforge.net;
 Wed, 21 May 2025 14:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0olR8O5HiA8HNUIc6t8hwoBdi9YUjVcD7dob8mUdSJc=; b=ajdwXxCzFebyigg6y3mFUQ0dV4
 bYOS9xkIHs+2tOw4NeeqtB3zMYEpcgR8kYWajYMyrhuE+/MzuHSExSuKJWneNeD+EWaYsCyYQLR38
 ODVtgHenjOcdI2r8gJeo9L3bfMp27UMK0/+vFtCd35gFY4j8960P/J35/oW4x5cXnSsY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0olR8O5HiA8HNUIc6t8hwoBdi9YUjVcD7dob8mUdSJc=; b=K
 Hrl5xtuVwc33lkRrWhp/eKz1sKE6xym415SgsSaqrNhTUPW3n3BEpaM4giD6C4JNBZBD+8LVFdP9V
 BWkHY5rlkv+7docLGKN+Ev3B0H2l7eBktLFJhzsgQIXCB0v5+HfPmL/kctCcZ6Snc04lMpkKyAc9n
 vm05YvsYEWkV+MVc=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uHkrt-0006tB-JD for jfs-discussion@lists.sourceforge.net;
 Wed, 21 May 2025 14:56:30 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-3ce8dadfb67so68490375ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 21 May 2025 07:56:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747839384; x=1748444184;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0olR8O5HiA8HNUIc6t8hwoBdi9YUjVcD7dob8mUdSJc=;
 b=T+6hHwmTFZF7bHY3KmBapyvbvixzY1GTZOLco4tDBn4PN9MoMke6dD024ab9PTETNs
 /in4FzRf7+80zvRHoEuf34fDa4wU0ltXm5C40DYrz3/6XC9tvoLO8ZJRqmDh4bMcBA3J
 GKH/qOO+8ShnBXWGP9iuGW2GWO8FoZkSqvE0J41t9qb1T2AXJuu3WJKU9AXk6U1iomNs
 UAkyGYW1S5NVgCZS+AXjtmIq0NJ6oaMJmMW8bXmy26FHvdV9IvfUKx5aYmrOkg2kr9JU
 2Wsd3r8WrkREcH7sWX1/8clckMKJVhyxeXJ84AjtS1B3EunrV+oHooKK9SgmAaejl8nL
 wc2A==
X-Gm-Message-State: AOJu0Yw3vKAP0yOBpxoKhhsJ/lIAfbYiz0Bdxz/lHuFFueOCfkbPEjYa
 JdV2y7QZmLES2oRMb/fl8RTe0yp5omdqSuHIFSRg5SuITvRYyXK8wGwVeGn0gmyvLLblhlI6u5u
 1ZmR+TJl0Ril5CAcBhcRdZg9HMnpa9+vFXqJta8DpO7aCv0BByC4M1i77R4Y=
X-Google-Smtp-Source: AGHT+IHFilunlwHcwb0PkB0yDlSFdRbTj//8BkuCJ/F+lEEbP4rj7Dnkh2cZoV2gSElNyhVrxWISv1VMVtmSsxlrnnWri6VazGxD
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:4506:20b0:3dc:7240:94a6 with SMTP id
 e9e14a558f8ab-3dc72409e86mr72031465ab.3.1747839383860; Wed, 21 May 2025
 07:56:23 -0700 (PDT)
Date: Wed, 21 May 2025 07:56:23 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <682de997.050a0220.ade60.09ce.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 4 new
 issues were detected and 0 were fixed. In total, 52 issues are still open
 and 58 have already been fixed. 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.200 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.200 listed in bl.score.senderscore.com]
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.200 listed in psbl.surriel.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1uHkrt-0006tB-JD
X-Mailman-Approved-At: Wed, 21 May 2025 15:28:03 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (May 2025)
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
Reply-To: syzbot <syzbot+listb820ab440d2c475644a6@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 4 new issues were detected and 0 were fixed.
In total, 52 issues are still open and 58 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  47298   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  23836   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  21946   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<4>  6265    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  3646    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  3260    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  3173    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<8>  2411    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<9>  2325    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<10> 2253    Yes   general protection fault in jfs_flush_journal
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
