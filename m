Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F44C8591A
	for <lists+jfs-discussion@lfdr.de>; Tue, 25 Nov 2025 15:53:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wpXzcGyh0XhRwGdldRzmmrT1K7rvhFMzP1dzdaZGAlo=; b=llvMiRma4M3+d8Ob63ijppTCPw
	o6zt/jfU5BMIByLBGjgmUmVBfHKgqo0w3Uo68mOOqbkq1iK8l2StWottsjHd33APMz8JRYc+OYjhq
	rYfFbwIBaZ7rmsKPPuoBZLsiF1rxYZ42/js+wYUw/CDy5Y7jzaQBSqlc2RCvG2yywsvU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vNuPp-0002MG-44;
	Tue, 25 Nov 2025 14:53:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <342wlaQkbAKIUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vNoh4-0005K5-AG for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Nov 2025 08:46:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1+lb/Op6Z1GcDB0Or6VLPa1Sfb1xEbqZ12Rt814yAW4=; b=WRYpZ5ux7U/RziM0kFC6lFvK37
 J6t7NF3UVp2JT/IYHBGhex0g2XufyuaMNXyfk3w5lvfh5seZHjhp1JFdN083SACxlhjgXhGTKsNFo
 v1cIv2rp+SrhClYyBi1+1xu1EUyDjlXRh1uYfRoEHHJwNlfPlLef1NebjtO6meaK49oM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1+lb/Op6Z1GcDB0Or6VLPa1Sfb1xEbqZ12Rt814yAW4=; b=W
 8uVJNzi9zkcfbyscA8RQjGzDLCX8jXr8fr4cISA8wdpWFAZmve1Wmaxzjrgx6FJ+r6pddhuV++cQF
 EcIOaGS3fKEatRkDOmzuzkS5ADux/t6QISKhZ9TJMHAwbr8kA2mCq4lnrdGFTmgqG6qhEzf2gajSi
 /6Vm9WNQYmTG9xR8=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vNoh3-0001jd-QZ for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Nov 2025 08:46:38 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-9489a3f6e3dso354529239f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 25 Nov 2025 00:46:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764060387; x=1764665187;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=1+lb/Op6Z1GcDB0Or6VLPa1Sfb1xEbqZ12Rt814yAW4=;
 b=U3ZNzCkDY86Z+crEXi3h01cTFNumJm5LUHHdF8IBlZc15crBU1brJwXXnih6qfWvC3
 zV5X4we5Kx8x3ECuotAEaGI6s1j2Qb+dpnXvdUgl5toeBngm7rVroutYQfbBH5zwM7yq
 rKzNaOSnyFhqv5ChzRIeVzvDhG/47k9EADby0n2kmvgGs9QzpiTmSKM1mgmH5Y2ZUVK3
 IZU4fFNK76rDdbIDODuVComRWEyAg17SzatnD1ZdCRDyNXq1SLg4QuvnUxN93HJyErAO
 NNHX1tRhyMXgDTA8GWQxS5L5kFOURkEajHFEx8nKEzjfhHTLBtuKq+TABNk5Dq3SPVju
 rw7Q==
X-Gm-Message-State: AOJu0Yx4Wnkr78b6Lm8Xc1iQR36AO4LaMWVZ8cevMIHRgapmU8HaQdH4
 KGutMTPGnksQky96w+yb6K2S1B98GEz7kFDBVgzPIycIPHiu5fgPdRJIUdL+T+vxVRX0GAR8327
 cK5CGUKq8I/EakDz9GTM3IvdD6VYS7nb4v0X0+/bDT1O3KJYIizlDmtKCNnw=
X-Google-Smtp-Source: AGHT+IGCRDfyvvnHDYqUJYBn4vCwYmEH5wCboPpHI2PPSd+PA45zmJ4bt1/fIz9v1HA46DVi37MzpCqJxhLD6fXxPjeIo7H3XHET
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3704:b0:433:2aad:9873 with SMTP id
 e9e14a558f8ab-435b98d7a33mr153188525ab.29.1764060387199; Tue, 25 Nov 2025
 00:46:27 -0800 (PST)
Date: Tue, 25 Nov 2025 00:46:27 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69256ce3.a70a0220.d98e3.00a1.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 6 new
 issues were detected and 0 were fixed. In total, 62 issues are still open
 and 65 have already been fixed. 
 Content analysis details:   (3.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.69 listed in psbl.surriel.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1vNoh3-0001jd-QZ
X-Mailman-Approved-At: Tue, 25 Nov 2025 14:53:12 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Nov 2025)
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
Reply-To: syzbot <syzbot+listdc105e02263ad5956c49@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 6 new issues were detected and 0 were fixed.
In total, 62 issues are still open and 65 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  74854   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  42995   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<3>  36252   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<4>  7592    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  5513    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  4342    Yes   KASAN: slab-use-after-free Write in dtSplitPage
                   https://syzkaller.appspot.com/bug?extid=a939a1121380d3212940
<7>  4079    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<8>  3783    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<9>  3460    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<10> 2934    Yes   general protection fault in jfs_flush_journal
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
