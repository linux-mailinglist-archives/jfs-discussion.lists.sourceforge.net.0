Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2550AB3A452
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Aug 2025 17:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NvZg6jVot/VGkUTWSjEzU53kLifEJsNSyysvikVJkDw=; b=i6nXFbhTg//f9DyCtr3ebErbZn
	1DOwd1GZ4DL1DRaOv3XV5kGdylJGnryoe9LMRPWDpe81gQyyDbgC2mgP91YWCkvgv+pkmNupNiBBV
	kuG2tZa2arDMdzC2UYk1D4Wv0fRbCvC4kVrKGF6osY4+MX0wTZDUpLExK0pEa6Og9tbo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ureUU-0005GG-5C;
	Thu, 28 Aug 2025 15:24:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <35OypaAkbALEjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1upr9W-0001Oj-Fw for jfs-discussion@lists.sourceforge.net;
 Sat, 23 Aug 2025 16:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hHv33q9ltfCocvMdwHSFsTpUPmOGS5z30Wm1W0NFv2w=; b=GalymBB5vA1AvUJfHng11+pDsP
 HYduXU3G+rpZU5i1eyUWvOxLNv2ZwnCgrwyVbhipn5ueYsiLNku65gHBJ39Y6KLymGZfRe8bPXAF+
 SmfnS1SbXDeJeQ4yWDKk7gFJQNQualuuajwlpG/B8Wf7UoATbOfXBhoGKdxYXM/Y35pM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hHv33q9ltfCocvMdwHSFsTpUPmOGS5z30Wm1W0NFv2w=; b=P
 FwMV6N4MUSBI/QjWhcYnO5xuwV+vUvp7diFL0CHbVmhzVUF/WpZnHn52GaWMEnxEnI2RlehJAFzMA
 80fo5QOLnadiinVhbFlatoqBN8frf1EtK2oWYIA0xfhI97Dqt2m1ZLrBBPPlWUQPelsfBBBz9ntIs
 lDhCkIZzn9SaxvEQ=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1upr9V-00067h-Vd for jfs-discussion@lists.sourceforge.net;
 Sat, 23 Aug 2025 16:31:38 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3e57006bfddso30707485ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 23 Aug 2025 09:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755966692; x=1756571492;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=hHv33q9ltfCocvMdwHSFsTpUPmOGS5z30Wm1W0NFv2w=;
 b=bvZkWUKlskoe/Vj7tI5JJ7UNu5kB9lkiKDc4HHwzEnbAeu/qJHwHN7CDhb0ERZawwT
 297c6ulFFgGoBXSMU6D9LWq0OmifROPkAr0e61IeKGQJD2mfmkjnwCVt9fuI2n3yME8S
 etohrTyXqx2h0bUWrvwsVQ2YJX+bWwOIi3l2cosjRZ8x5BVowLbXD6s5Baq3GvChTSpf
 ry/jtUJQQTZpom6bpJdLBoHprgh36F5XSenyHLGa+vsHn5ofuhQvfYdZBc4RJcgbnEMr
 Cj0mXRngdhdoj/CjPSRrl7QhUJ0ey9a47davzkPQtQFWvE6jXrg3BzF3WS+MHPHW06az
 LP1w==
X-Gm-Message-State: AOJu0Yy3PX6qst7AnZpOjGDyxDab4IEasd5S4UQ6xh68unjf/AuWy/U/
 CjtjM2r0zHzm+R+i9tKXJJdFSbTgpAmZS7ubiz7kRG1umftxJXi2/kIM6+kBLO79fHGehqAOd+2
 MhStShnNtaMpLyPBN09FPM8CHs4q1ssTjR2E1B6G22GhjRunn9NNzujj0bVQ=
X-Google-Smtp-Source: AGHT+IF6Tfp2VNYDcZUSmpcuYAeZn7vJwvVWCyMRTdvjlwAHlgV6P1Qi4eoDFtRInJTnca7iFFEha/J6U8xwWIHJZvYK6DoDy6/0
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:12e9:b0:3e5:75cb:44fc with SMTP id
 e9e14a558f8ab-3e921a5d155mr119122465ab.12.1755966692271; Sat, 23 Aug 2025
 09:31:32 -0700 (PDT)
Date: Sat, 23 Aug 2025 09:31:32 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68a9ece4.a00a0220.3557d1.001f.GAE@google.com>
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
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 1 new
 issues were detected and 0 were fixed. In total, 55 issues are still open
 and 64 have already been fixed. 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1upr9V-00067h-Vd
X-Mailman-Approved-At: Thu, 28 Aug 2025 15:24:39 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Aug 2025)
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
Reply-To: syzbot <syzbot+list00c376a6da959bb421c2@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 1 new issues were detected and 0 were fixed.
In total, 55 issues are still open and 64 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  62723   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  33520   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<3>  31065   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<4>  7046    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  4338    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  3652    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  3419    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<8>  3371    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<9>  2512    Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<10> 2416    Yes   general protection fault in write_special_inodes
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
