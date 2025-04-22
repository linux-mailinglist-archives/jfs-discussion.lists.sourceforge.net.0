Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1725A96D51
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Apr 2025 15:46:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7Dwz-0006gR-4q;
	Tue, 22 Apr 2025 13:46:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3VmsHaAkbAJEDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1u7Abg-00053u-F0 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 10:12:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FADM+Vy3LutHRpNz0gFtPgLujcJmoJ8oLUzcU/ytsmY=; b=joGZwPcs1JPHJIHZoMPBYaKxpl
 4ljP/mNYTBN4vH1Ppi7d1w8THJcglJ3M49z7C0PGL4LNHTRk3drvL1XxWulYfXTnsUYFQgp/mV7Js
 VzfqbGNfeXnA0igQ++djUycyfatDy/3oQsv54CB/mL5qeT46EM0c0UzZpD3nk2WwRQGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FADM+Vy3LutHRpNz0gFtPgLujcJmoJ8oLUzcU/ytsmY=; b=O
 WwEwvZgkSRzmPwgbowkJT3qJnic3qPlQkaMO+2KN4OsbxhoRk09KuMgKsp+g8FTZeiqUlg66eCjBA
 icRdVitz2CExNUg053ZF+0vKRtXRCFhcvJ9NOvA8G3rN0oBDuelAssgnqzjrLZwnPWVLxgsd7n7kh
 7Ma4nH8nf13D+w/c=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7AbR-00047J-7o for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 10:12:00 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-3d44dc8a9b4so51314135ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 22 Apr 2025 03:11:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745316694; x=1745921494;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FADM+Vy3LutHRpNz0gFtPgLujcJmoJ8oLUzcU/ytsmY=;
 b=DPnE7IaFSiuCH96cq+iKBmBulyq10B4xcwyBEeLaK++zFZ4ocdH0+w/FuR6lBC/uUU
 ZGwXzDBTtvNhv+Lj8u5ogY47L2W/8wxAGMSlnTsLlFdIlW/RNoAxcfOW3p2fwZOkEeyY
 qXbra62ShLZfRf6yBhdAmoX/3ylHwDbW5sku7OF08/sXth7VuM8XH+Gz7ezV7MkuQHJw
 ozTGxT8TpYzK5SMAZzNHBz/ZB3xMA1SUM/FZLAxs0+U9Z+c9ITDXjCutb0Ufw8BjU6rA
 KSvkjUtmQG5sbdtl9x7ENkRgV/ErND2EdafchbUtLRroHaWF8brUow4eMtVrL/I1Kaj6
 orFw==
X-Gm-Message-State: AOJu0YzfBNwCzY5aZvvfEPaT1ZPLv4vAvfj+2QkAvObk7wZkGr1UWm+Y
 Yqt2xAFBFPzLVjQqBfsGTYFnJqEXzhrIi0jET30XMjBnc9IijN2Dc7ReGiqJIWDmddjiCZpbNfy
 7BIzPA1bwV/bKfr0TOq722aTIP1XU7Ivj4ZcHqU0pVq2i958sG2U+Taw=
X-Google-Smtp-Source: AGHT+IFNm9cGi4tsJsanVXLkVKg+U7t9k53jRGjSUrv2cpc+P/Ea+iEJRcRvu3Ao1HEcqHpoLcLcGYj6H/j6aFCUn6py+CHxL+v/
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d8d:b0:3d8:1ed0:e167 with SMTP id
 e9e14a558f8ab-3d88fccbc02mr132124355ab.14.1745316694529; Tue, 22 Apr 2025
 03:11:34 -0700 (PDT)
Date: Tue, 22 Apr 2025 03:11:34 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68076b56.050a0220.8500a.0006.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 1 new
 issues were detected and 0 were fixed. In total, 49 issues are still open
 and 58 have already been fixed. 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.200 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.200 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1u7AbR-00047J-7o
X-Mailman-Approved-At: Tue, 22 Apr 2025 13:46:11 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Apr 2025)
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
Reply-To: syzbot <syzbot+list1b5f7ff719cd6cb71b9f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 1 new issues were detected and 0 were fixed.
In total, 49 issues are still open and 58 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  42836   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  22019   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  18817   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<4>  6017    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  3510    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  3155    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  3134    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<8>  2294    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<9>  1903    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<10> 1831    Yes   general protection fault in jfs_flush_journal
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
