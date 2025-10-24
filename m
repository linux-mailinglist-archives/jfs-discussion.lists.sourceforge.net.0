Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA4BC129FD
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Oct 2025 03:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Uad1t3MzhkSne19XR7wf+fzKWTfpdRxiYqWOzY2YluI=; b=RWMq+QCpWTIMT7GJUH53yedhzG
	NMrir2KVKgMBpXut3XDjSJpRFuCK5b9Kwf8ggUgnH9a1ssoBmgGteIUnaSPm0/kUVmKAflaHBqsvs
	AjDViFbRUM34Zb6XU6memmrkuQ7XYYvG3yPoLaWMBtVboJZOBawOB4CdS6uYemD+KZeA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vDZ2B-0002vi-K7;
	Tue, 28 Oct 2025 02:02:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3_Mn7aAkbAM0BHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vCMq7-000884-Qx for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 18:48:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lBfBqOqMn2Xkfx9qgn+oZUwCAFfhzvzOwcf8bk39Klo=; b=I9ZaS0DWPpw1fbxodmeJ6zvDlv
 V08bhaY6z0btDpZXbYzT4nr6y1ZmYY9T9sbjeFxQLXriisKNscEKx4x03tCPKCGpMJFWayl70GLEF
 73ZBWKrwaVod4yb8do6G6KfCQpNpxdgZRbNLXS2SlOIFwE8xCsaKULm/2Rg/9fazvqUI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lBfBqOqMn2Xkfx9qgn+oZUwCAFfhzvzOwcf8bk39Klo=; b=d
 kZrwO9a2NZlyE4dGZcFGfLeSCDm+6pXsRBYbyaWHLly0+IaJcRKL+LO4cquCZ4PwMrndP8buwfPrw
 ndizkK1PpEXffwC6h6y3zCh3ktav7SQ0DNSF1z5X8dPaZsbdYsbm3IJqnGfb3aDpahd6rRw/RH2h3
 3KoA9aJcjW250+UQ=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vCMq7-0000d5-D0 for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 18:48:39 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-430c8321bc1so33024205ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 24 Oct 2025 11:48:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761331708; x=1761936508;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lBfBqOqMn2Xkfx9qgn+oZUwCAFfhzvzOwcf8bk39Klo=;
 b=XjxJ09grZsqWpxI3qYa9i617LphrkSBVzGsWNEw69+dPCjurnjNBoJxV30yxplDllY
 LndhF6ZhHHY+/xc18X9qgzKVh1GVeHgmDvDaYe0ARH52Cav9QpIkiuKjkXX+137uVN++
 1FlGpZLOvbb3CbQp5IZue7fUj4FwUPaf2zXxxx43QRjcDSx8JGocPqzuH8V/f3nQ84a8
 9bFRiUd/9GHRTb9NQNxz76pZLnmCmUklCGKRJMu6OKKfuSCQGGLwPlkigYsuzRCaBKYo
 qqZOUul5m2eWKYrzYHa2EjYxpuTmOSqfEFfh/HEXnpl80cNPPgzo+VOkb0m5TNKwj2xT
 +wgg==
X-Gm-Message-State: AOJu0YzMSIQEVrg8pz0ZpxytgD3Q25BR405hRdHuE0F4JNOAEUtU9anK
 c7cbuJD9zdh4Zxn7GKYetpp7eZDxRoSGl2gZ1Ym92FHjeRPAk0DC/MNPnUTIM56rlseLXkjjL9F
 NHrTOKjE4h5nqWQOxanhj3FlijHhzUx49WthUpSnuLa9tC6SrKa4N1CUbN9M=
X-Google-Smtp-Source: AGHT+IGbgpbcCCHuMaVv7XrmFkj3UPVQGYBnO2C78bxStPm7JW5ig1iMfR+5V0ZXA7AJKD5pTAXHXR1QjbJvz/aSGTxZCWdJuhWT
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:480b:b0:431:d6fa:6c49 with SMTP id
 e9e14a558f8ab-431d6fa6db1mr117527405ab.24.1761331708702; Fri, 24 Oct 2025
 11:48:28 -0700 (PDT)
Date: Fri, 24 Oct 2025 11:48:28 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68fbc9fc.050a0220.346f24.0155.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 3 new
 issues were detected and 0 were fixed. In total, 55 issues are still open
 and 65 have already been fixed. 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1vCMq7-0000d5-D0
X-Mailman-Approved-At: Tue, 28 Oct 2025 02:02:00 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Oct 2025)
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
Reply-To: syzbot <syzbot+list127cbbd529863072e782@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 3 new issues were detected and 0 were fixed.
In total, 55 issues are still open and 65 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  70381   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  39568   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<3>  34245   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<4>  7355    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  5013    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  4079    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<7>  3712    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<8>  3569    Yes   KASAN: slab-use-after-free Write in dtSplitPage
                   https://syzkaller.appspot.com/bug?extid=a939a1121380d3212940
<9>  3395    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<10> 2801    Yes   general protection fault in jfs_flush_journal
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
