Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 931B88C0076
	for <lists+jfs-discussion@lfdr.de>; Wed,  8 May 2024 16:51:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s4idt-000324-N3;
	Wed, 08 May 2024 14:51:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3jIs7ZgkbAMk7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1s4iFV-0003SR-Kv for jfs-discussion@lists.sourceforge.net;
 Wed, 08 May 2024 14:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ggX7JfzxabWB+vmWXTbMblhOWD2FBIwHUcIiLQVCmEY=; b=QLp7j6Fg8a0cM1BfDbpEWO5Qdk
 KTKFelJ28Tjch7QVQ8uY6Th+ahoMrx74lVEa/unrQwSjr1xyTxUisUHhzLVQQIV3oZeWjb60ufuE5
 +zsRIY/F8OoAISPA71VHLHWujllXCl+4sMT+KpypXSr4+kQdQIaWOqQWZKGNUjhZirVY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ggX7JfzxabWB+vmWXTbMblhOWD2FBIwHUcIiLQVCmEY=; b=N
 enHoxkB6T4Pulkfb0ntlJFAz3dfjnAht4DnZyFHFn98aLShsTIOdMNY+wHhHvumvThg9UhVyTgWLq
 EOCpHG0pFeQjqdjKT8leJI/ECaYZzMH6f9yOT4BfjZf4KDmfSXLsctCYOeANjpirPBKZqepuAjoPI
 sqHhYuf657yVvE+I=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s4iFW-00086q-SO for jfs-discussion@lists.sourceforge.net;
 Wed, 08 May 2024 14:26:26 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-36c5ed3322aso42978665ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 08 May 2024 07:26:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715178380; x=1715783180;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ggX7JfzxabWB+vmWXTbMblhOWD2FBIwHUcIiLQVCmEY=;
 b=rReOe4A62bCbww/PzeDSJZHjrJ+00F9mrdxAs4JK+K+nTJIPY/sRv69ul9gqNTZLef
 PPJZ9pnKtIwqwXf8haFBwVogVpXhnKvwqI4WYx7otaIgCOrnL62oWSRPkP8M/tWPoOuy
 89I7UmtrZ46svphgckePZkDo0uqfVFGj9opgTmKvyaVOjr0Esa9F3x1tr52b0qFpzzSx
 kI3VGaMU5Z/h2M+EFn/E1FyEZUxj5li3q4CCE1Kud1nfAXKCTf6AswASHk9LY83/YAbs
 rujcvAIVKQNxqgZWrlEu1/9IdOLCetyFl4o6vVMUJ4hAzagHz11TK11xJkkT9Z1ETb10
 /mmg==
X-Gm-Message-State: AOJu0YxPy3/zprMfYUsydkZqNHp+M0kWQ5jeYL8gU6lauL3m7yTonKdV
 6OsvVIsFD56Amysid9BuwB+xJiefHYhAYJgVYyz7ZZWfKIZQrF9HgfygRtVoemTS2wtT/SZYll/
 HuffOSYB3X33s98k7upb2gNCdXzTXA+NDcD+cenSEWdTstn6qFhvHKog=
X-Google-Smtp-Source: AGHT+IE3irFr0EarejwE4ZUfo63P6rsADopPw0Tyws7UdKSafF9C+DV9+qZmahh9Xs5+4US62vYMjrQQgAEiQLPuZjpLQBNTdTUf
MIME-Version: 1.0
X-Received: by 2002:a92:c549:0:b0:36c:5bd2:6b92 with SMTP id
 e9e14a558f8ab-36caeb3f298mr1304065ab.0.1715178380480; Wed, 08 May 2024
 07:26:20 -0700 (PDT)
Date: Wed, 08 May 2024 07:26:20 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001863ff0617f21661@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 12 new
 issues were detected and 0 were fixed. In total, 39 issues are still open
 and 39 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.198 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1s4iFW-00086q-SO
X-Mailman-Approved-At: Wed, 08 May 2024 14:51:36 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (May 2024)
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
Reply-To: syzbot <syzbot+list96c21f4b86afe479c7ee@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 12 new issues were detected and 0 were fixed.
In total, 39 issues are still open and 39 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  3656    Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  2347    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<3>  1710    Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<4>  1654    Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<5>  1439    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<6>  882     Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  750     Yes   WARNING in inc_nlink (3)
                   https://syzkaller.appspot.com/bug?extid=2b3af42c0644df1e4da9
<8>  606     Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<9>  500     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<10> 410     Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3

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
