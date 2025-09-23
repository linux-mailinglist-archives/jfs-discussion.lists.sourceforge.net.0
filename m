Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72352B96674
	for <lists+jfs-discussion@lfdr.de>; Tue, 23 Sep 2025 16:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/LXdDtSXhx4FnJ4/5641DY6SRnQj2YkROGW2xPcjqm4=; b=UV2VuMIX7XxqoyijCul24xmth4
	vgbSoMWhzF9uM+a4+gBGOlURjzO+paw9IsZHk3hfIRWuDtlxlF+aRvm1sMsmb6W/aUuC1ykhsBVUL
	h+ZDKu5v5ds6UMU6KQTf1FprFFVqqsNiaxtxwSKTTu1FoMLSdtZAPpHbM5EFBEQqJm3c=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v14Kr-0006iW-K9;
	Tue, 23 Sep 2025 14:49:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <39kLSaAkbABMBHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1v0wqC-0002y5-GS for jfs-discussion@lists.sourceforge.net;
 Tue, 23 Sep 2025 06:49:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fp8qKM4BrjWQru6ag0msdw9SrawryFPII+VRZhnNmTc=; b=l121+/JpYxs4wQ83pp7+BFUtTf
 Oq9ni+zU1apdPKIbMhjdJ+/7lndNg/A+ko5MbChF3VCg3QpVA3W31lP2TaHIwIpgc4d+WCY42WhFs
 cEwLkk/mqs+rXKZVI5IWUsClvMkbTMgsUXhgSf+ikmOS1/HJQ0QMfweobowF/1v6sIXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fp8qKM4BrjWQru6ag0msdw9SrawryFPII+VRZhnNmTc=; b=S
 VaKbnqy29SHouu+it0YrQLkb9KYOEhpbvUByodbl82pCKQk8u2auEKh5DQUPUQCNhgCUl8Ocp2GbH
 uYQHJjrJNRyIZIv2qE0/rXgR6tLRG1uPxra9kMANqpR2XCuKurosn1FENYQsggxnI/RooVVe4/81J
 rEQuQ2RYCSL/R+Fk=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v0wqC-0001Wa-1p for jfs-discussion@lists.sourceforge.net;
 Tue, 23 Sep 2025 06:49:32 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-4257626a814so30279835ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 22 Sep 2025 23:49:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758610166; x=1759214966;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fp8qKM4BrjWQru6ag0msdw9SrawryFPII+VRZhnNmTc=;
 b=QFXTM0QySaNNLiPEokpS7/NI40y3uWIyqf7wBgjUaCEjD2LNZnkcu+mE8xu1kzAuAr
 9oKltbWQLjh3Z/WyOpCs2/C9evxf8Icp0pB1UA1H/42a/pzOP7F9APl5ar3y2eeTIxAZ
 TMdfRqIarERYXo01i1m1vSdymmqMkLXhMQZobxcq2ocQ8urlexFG+Ru6Z7GdJ2NxA+NB
 wURBxZoQ2BKA8LIh8MCJVNaj/fYu/oCPdlsFnhSnjKADNvI3Bg7Okl4tzBtVT6+dKGG4
 aGKLe3XxI0HUwIzzbJCX/zxW1HI1fd4rFAQIpSM9gRHRqNmSZVAA2sMqBYtU6HVWRNBJ
 OOSw==
X-Gm-Message-State: AOJu0Yzg/IO12WLuoenh7arqlip0CIOAXtorHWwF4c4YyB8PNjyv2K1O
 fr2wNyswXFBBQ/aJLGUou9IQYm/kZEELkoZMjg8PwnzITEge0Yj01+UPUfNy+1RvFvR5uQ2bTXj
 3ZxtfiMm+UfbPQizYRhIXhkmZF48NT5BYvZYK6L6HNg2PZqzGf8efu7c8ONc=
X-Google-Smtp-Source: AGHT+IEBGF24zzOyubeneeFGtitQGCJWusqzPv2WHH8CjVfNVGRFNz6pN9Bdydodfv+1iOjpxp/pCH7PstDLtqYTIkBOrF+9/PRC
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a25:b0:424:89d:5add with SMTP id
 e9e14a558f8ab-42581e301fbmr20526255ab.10.1758610166402; Mon, 22 Sep 2025
 23:49:26 -0700 (PDT)
Date: Mon, 22 Sep 2025 23:49:26 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68d242f6.a70a0220.1b52b.0054.GAE@google.com>
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
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 2 new
 issues were detected and 0 were fixed. In total, 54 issues are still open
 and 64 have already been fixed. 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1v0wqC-0001Wa-1p
X-Mailman-Approved-At: Tue, 23 Sep 2025 14:49:40 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Sep 2025)
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
Reply-To: syzbot <syzbot+listafc63eacd78064f7d062@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 2 new issues were detected and 0 were fixed.
In total, 54 issues are still open and 64 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  66285   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  36894   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<3>  32836   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<4>  7150    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  4620    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  3815    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<7>  3690    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<8>  3382    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<9>  2907    Yes   KASAN: slab-use-after-free Write in dtSplitPage
                   https://syzkaller.appspot.com/bug?extid=a939a1121380d3212940
<10> 2596    Yes   general protection fault in jfs_flush_journal
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
