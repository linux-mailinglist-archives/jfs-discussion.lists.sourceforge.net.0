Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDEE99F46D
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Oct 2024 19:53:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t0ljW-0002gv-UJ;
	Tue, 15 Oct 2024 17:53:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <393INZwkbAFICIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1t0Qst-0002lR-Ei for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Oct 2024 19:37:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZtM4iEdHicrMwv5gQKudIG1n3DgEExvY3relJ9nM2LY=; b=IgxGZYeO7ndKzms+gYmp/bqaGa
 e79WWYTib+X3X7fVOH2haLsYbcs3T7jTSJ2xd3YQKmHAXC3QHy0c3l7aPs7kas+yFffNZc19ets+h
 9+44/5SkjmWtced/iDLJgYx39sNwM/xnM6tIHBoeSFcN40472IagOaJCaLLejDBc6fnk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZtM4iEdHicrMwv5gQKudIG1n3DgEExvY3relJ9nM2LY=; b=g
 9jZX+hxnpQ+WMHKqOdgu9136vloqcekwduHnIkEzKwCMyMLVKJPwjmz3BX6j3yhS7XRx+UFGptm7n
 3Aj9n9XA1UYI6KNSIvqy27AKdMaLuBKwqT5ooRkUwiaAG1nsVyGupeDhZBoZaziLifKTKXCt+EPIb
 cUOVEyQL299mKiYk=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t0Qss-0001zA-1z for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Oct 2024 19:37:38 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3a3c3ecaaabso19920985ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 14 Oct 2024 12:37:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728934647; x=1729539447;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ZtM4iEdHicrMwv5gQKudIG1n3DgEExvY3relJ9nM2LY=;
 b=a88mdLF7Tt1WaRWvGa16HNVWIGbPt9iqv3uFTThujuyl/FY+B5zS0tYpQA/Z7rtc2b
 I0CgHotBHZJ7PGEOG2rIIUuo3Mt83Vn7YKcerFhlFg5g8lqVJtqq2eNyjaEzldlaegau
 oLGTG4Tf6Czm1WC+5dc+32d4Z/ftnYeE96SRrwHrgkBNiWSt5WSFU8fJOmeoQ3MJ8cfU
 SCTr4/mC/zO3Est1ARroeD/HbWedrKc+TiaTJIQEEYLuCeXr7Wff6vNfWLU3nG1mUuIp
 UK3IUZC7+PDMw2c+2pq19CQfgvdABH03vgxYby1/vzGyf14QHfJa+HuU9SEWH+cmv14j
 enTg==
X-Gm-Message-State: AOJu0Ywg9x+zforX1cTdhP/3qOStCQuirKHzv+kG1irHBsRDTHT4+HV2
 W+ldX3VvUFWbCIpzaoclDgo458RhoMwyRs5eNXR17xY947imV4JSAo7TvGBbUhMDYXsgj2W/ORp
 dcXXjAG49cYYxeUGF14lUj9+nEb5NiuhWfb3kTZqESjGcdB1M3Cb5vpQ=
X-Google-Smtp-Source: AGHT+IGQAbrgLL/TFdTYt+kTOkUzdaVBuNTQWBtfMLsc9tG4vaMPBwq/rKyRYlwo9GaQi42No11RzEdircxZekonHXhuR6ddScGe
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:b2b:b0:3a0:9952:5fcb with SMTP id
 e9e14a558f8ab-3a3b5fb6490mr95978835ab.17.1728934647268; Mon, 14 Oct 2024
 12:37:27 -0700 (PDT)
Date: Mon, 14 Oct 2024 12:37:27 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <670d72f7.050a0220.3e960.00db.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 5 new
 issues were detected and 0 were fixed. In total, 53 issues are still open
 and 47 have been fixed so far. 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -1.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1t0Qss-0001zA-1z
X-Mailman-Approved-At: Tue, 15 Oct 2024 17:53:20 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Oct 2024)
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
Reply-To: syzbot <syzbot+list47b21a48b702e3bbf3ac@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 5 new issues were detected and 0 were fixed.
In total, 53 issues are still open and 47 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  21984   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  9592    Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  4135    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<4>  3333    Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<5>  2354    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<6>  2169    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<7>  2031    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<8>  1946    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<9>  1021    Yes   KASAN: use-after-free Read in release_metapage
                   https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
<10> 907     Yes   general protection fault in jfs_flush_journal
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
