Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6430B0F4CE
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Jul 2025 16:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZlPjl8N3fNbCMMg7GZAAOd1rLagixQVadA3szyA0DUY=; b=P1/PuNk2FPmGvEzNKUsJjahf/V
	KyFhY1xxj8WgHWL40JRF/do836V2IxPhNERJxn8clOw60yVPcVk5fEp5ztZgRPUKyfBKkKO2Tn63f
	wdNhG6nDRhsiLmsbGrDSxxnWpBuRbxxfCNTSZgWQB6ZCqlgkMRSrCoChouHAZ9LtDDUg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uea3i-0003H3-VR;
	Wed, 23 Jul 2025 14:03:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3dod_aAkbAM0BHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ueCLR-0007tr-VE for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Jul 2025 12:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yCK/CoDQa4+fiUlH5iG7Umnl8iLRsK5lK8skAbpq76I=; b=BI4r9+QtdWBYtJJpOQ2o4MMK41
 9BzQt1bCZ/LaJB0XsZCyaVFvaxfB+rwpHKRhDwUGRoAeqrPCx+xZGXXIIlcd7ncKi0nr6/eaigASj
 +iL3DcUARJMblrcSOQjFhZK0KBBkwxZLio0WTqJu7Ja0OOLbmKaJql3DMvPbQf5pYD54=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yCK/CoDQa4+fiUlH5iG7Umnl8iLRsK5lK8skAbpq76I=; b=G
 rmqYwE4o8ig7cEIgNZqgImlqVa5OB1gyDXMftkLfwYMdIeyiMqj2Ml/5ymlWYn0blNS2aCRsmGgWQ
 A9dOY0s2/J3QpjPyV1ZsF/h7JEszloSOR5P2K83M84O9C0vU0uw0TzMNC3mj9wNMd/tyqzdLpMq/m
 hkRgqaeFF9SjdA40=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ueCLR-0001K5-Go for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Jul 2025 12:43:45 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-87c2b11be82so291394239f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 22 Jul 2025 05:43:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753188215; x=1753793015;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yCK/CoDQa4+fiUlH5iG7Umnl8iLRsK5lK8skAbpq76I=;
 b=D+y8tIT4/shSqhl5e2+t6IAo292z2Ho9djv1vKxqes3/Xna9TEckeSy+sanhl06SD1
 Fi9GoSESTNA4e9uTWtWAQ+ehKYLc7mV/GV+kruDqrOm2rVCME40bG44I0Yqiq89J322a
 ylqnOv9h6j/dFFF+yyePUCO2POHN+gRmpUpxltmJZPynzTghdX8VsjFOzLKQ8zwfAlMi
 pyyZlU7UUmjXZR38o+zNuNNHkwmPGPzKR8bkD7zkyRnYLegSjEP8qKL+9KX2Ct5z1BXs
 zuVhoBYcp5ZjPQFsC8/1USsOwSWBfEu0VOkJa1Kwvt5pXCIsmASsoJA44oLaCLUaSU7j
 r0Fg==
X-Gm-Message-State: AOJu0YwqpwwXFbwSCIXwC78BPSi0RS0/mjRcUG7pwVPJHq5idieHgJ/N
 iIvigSknS6wWIOJo4hrC/UNyNrTz4GiEo5O6qWpaWqWIH2tLF0rNae0RvSP/noaZuET8x8RfIR9
 hipS8ufeKNpK+XkfyphS6U/GClVBEqyRbm9A1bI0/Ytr84pH2505ZzlX4LeM=
X-Google-Smtp-Source: AGHT+IFJQbh/pzXQNp9St2OMEZQF7qEK8sDQHk1iqLkUqW77BKWGwVl/IhabTazb6kYBuQBXMUajXBW6sDifu8RTq5PooVRf+KlE
MIME-Version: 1.0
X-Received: by 2002:a6b:5110:0:b0:87c:bf5:c242 with SMTP id
 ca18e2360f4ac-87c0bf5c480mr1943777739f.3.1753188214817; Tue, 22 Jul 2025
 05:43:34 -0700 (PDT)
Date: Tue, 22 Jul 2025 05:43:34 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <687f8776.a70a0220.693ce.0102.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 1 new
 issues were detected and 0 were fixed. In total, 53 issues are still open
 and 60 have already been fixed. 
 Content analysis details:   (3.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.69 listed in psbl.surriel.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.166.69 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1ueCLR-0001K5-Go
X-Mailman-Approved-At: Wed, 23 Jul 2025 14:03:02 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Jul 2025)
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
Reply-To: syzbot <syzbot+list7cfc8445997df7df0f0f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 1 new issues were detected and 0 were fixed.
In total, 53 issues are still open and 60 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  57987   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  30948   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<3>  28598   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<4>  6827    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  4026    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  3466    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  3309    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<8>  3083    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<9>  2413    Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<10> 2364    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916

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
