Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9281A13D09
	for <lists+jfs-discussion@lfdr.de>; Thu, 16 Jan 2025 15:59:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tYRKO-0000Ao-5r;
	Thu, 16 Jan 2025 14:58:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3SduIZwkbAGYWcdOEPPIVETTMH.KSSKPIYWIVGSRXIRX.GSQ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tYMqb-0001fv-R5 for jfs-discussion@lists.sourceforge.net;
 Thu, 16 Jan 2025 10:11:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WhY2qvU18S/AkI2NBk09NHoerLpWrdLfmwKWtM5S7ZU=; b=Z12x2ehY/Oerbqm0v41IW8rjvf
 DjhWTTCKK5nvObFux5A1HnJi3t+fVmpKZpHnn4Rtj2QPapbHN+NU6zXDzn5PH7f6KVPQQ3qyNd+YO
 vvoEu+4GE/vpV1WGZ/XKwclWiRMap5pw9VdBC61bTkp00ypruWVOhnh7Sf7BlytkEHec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WhY2qvU18S/AkI2NBk09NHoerLpWrdLfmwKWtM5S7ZU=; b=F
 lh2sh8684lQzInxURtbjm50D9Jz6uHK1J/LbWVRiB1PxzHUbEfPO2lf4nfKDsRPdlv+DvBrTe47Hk
 ixZ614gjT4x4KkVvomggO11eldGoTa73qOLpXt+ZzSdWIOdRdyoxeiNe3TuUeHb+R20WyqAD49GTW
 O4lQZ7ssfzGpOun4=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tYMqa-0001Z6-I2 for jfs-discussion@lists.sourceforge.net;
 Thu, 16 Jan 2025 10:11:33 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3ce8dadfb67so4476565ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 16 Jan 2025 02:11:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737022282; x=1737627082;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WhY2qvU18S/AkI2NBk09NHoerLpWrdLfmwKWtM5S7ZU=;
 b=PDY/JciUVNS+FOJQs8jPj0vFc7Bjrxm5nm0rp1Bttu+dWdKceyGq4Z+HHnl+VoATHl
 529miEkt75/12XJe4ko3svdnXqG7dKEWfdfD2pjX0lG+so2hqAyFBcpH7YEF6kyPHRh2
 Qbpj7HMbLLjNa3S+Ea/hy+hs8rjrv1apd6WxVlYoUtzRUkCBAS29FFT4/A+nFjkeFIIm
 3bqixPXQWMsEY8hK3nZCnoVrirtcsZhYA7VD6KbLlczZTzhiEXx9AOZdg4ItR4CtGdNh
 oFWefn1S0al29FKvjTyuz8FY7vPJa4sWWwfrR5PI/WZovmFgoYWjx2yyjAGjXwp10UUx
 GwMg==
X-Gm-Message-State: AOJu0YwYQ0zCtLiumBAzvRWuokm7YcvaS7QYUL7uH6IVZJ/oH7tgxY0h
 gscAopBBo0fk+TUr669G5EfePN7Ep6Kz1yO9eEn8sDr11QF2CKzNi8w51QXuAfFCGSYfh9BeD0e
 itctcnAHw8XjTcMKcY+Nj9sv/uZg5IESTTaeQ7qXdQ7cmhD/RAEBpAVY=
X-Google-Smtp-Source: AGHT+IGf6tk9hkWylmHE5LkXUaRHvcZpJsQNHSfNHik437FXL58SuRIMXuoi5OfZFNH0dRD0LNJnU2f52nEXYxIUIG5857MB3Nq1
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1fce:b0:3ce:7fc3:9f76 with SMTP id
 e9e14a558f8ab-3ce7fc3a131mr77821655ab.6.1737022281818; Thu, 16 Jan 2025
 02:11:21 -0800 (PST)
Date: Thu, 16 Jan 2025 02:11:21 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6788db49.050a0220.20d369.002b.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 4 new
 issues were detected and 0 were fixed. In total, 52 issues are still open
 and 51 have already been fixed. 
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.198 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.198 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1tYMqa-0001Z6-I2
X-Mailman-Approved-At: Thu, 16 Jan 2025 14:58:35 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Jan 2025)
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
Reply-To: syzbot <syzbot+listca4b16835e866857ef67@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 4 new issues were detected and 0 were fixed.
In total, 52 issues are still open and 51 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  29491   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  16532   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  10426   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<4>  5252    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  2945    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  2756    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  2630    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<8>  2243    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<9>  1486    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<10> 1435    Yes   general protection fault in jfs_flush_journal
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
