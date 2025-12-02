Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A39C9BC9D
	for <lists+jfs-discussion@lfdr.de>; Tue, 02 Dec 2025 15:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=35TZbdyWTug9bVjmHVl6uEqUThUURkUrmIiEXgpYPrQ=; b=DPzvzcAkYw4Z+xf79XvwxBSE/v
	/9pX8DIY2424b35n2WDkWwNdXs5YXrTZ1P6TysvoL/WZMqduRFbs8AKAOUeVccuo3eDXAs9s4eW5c
	JC5ifkWtBxLhuTQ9k2/LTAG3bhOdCUvgFvHr/vQ1Du/E0QAPFkTdjGYHMW+IBechDSyM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vQRQV-0006sJ-0h;
	Tue, 02 Dec 2025 14:32:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3sqguaQkbAA87DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vQNuM-000149-9B for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Dec 2025 10:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mx6v3TQF9TgfCDRZY10iGizMmcvez2MANL1B6JqjjS4=; b=E83flfwVtjM0r6kt90VmwekRjo
 fvbIqxSpL1GGGA1XKzsj2wbyHe7Cauvza/IfJmIQWCOa0XXwr2UoqveaQ/0ub3TfySMIztbKx3NzI
 yPP3OTzcEBt88ss0RbQSg4abnmG1H9pXcdhUuy1NFehu9BV360GSZNzmcYle2J+0sg9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mx6v3TQF9TgfCDRZY10iGizMmcvez2MANL1B6JqjjS4=; b=L
 F0pT+tODOS2uOjkKRotmPOmzwkReD3mdMtyz9LBZIrfplBlgxQvbW8+zgMxbWd8JXlcviHzzYERnE
 c8OWQ4OQ+VGGboXKEnT7xrtZa95OQs69TCtWhwwzvS+I3cYjbnAoWEzSOEArZpqM5KRUlNdI/XP/d
 DJbMw0WgONLfElzc=;
Received: from mail-pg1-f198.google.com ([209.85.215.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vQNuL-0001Pn-Jb for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Dec 2025 10:46:58 +0000
Received: by mail-pg1-f198.google.com with SMTP id
 41be03b00d2f7-bce224720d8so8168793a12.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 02 Dec 2025 02:46:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764672412; x=1765277212;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mx6v3TQF9TgfCDRZY10iGizMmcvez2MANL1B6JqjjS4=;
 b=A0YNUc2TpJhChGVFzBG0ZKJVfgVvug0FRpxZBzvbq1rQSaiUow0lMIswSWOO2P4tmP
 YsYhPeOAppxexd+ENe37RvkDBhTPgJhYv2FXbof35/4h0PNzm+/k11oJbcx/KdaRSIkH
 ZTOp6kbCNoMvfWKYNlkFkAEN8csc1gmPhYQVCmvtBp38k6ymc528ZXiM8CpvPlZMto5m
 nuBr6+v13VpgI3tOQULXj3ureR7OjjLXUa9wB5/uMfNrOjtD2jJQqU6yPtTWCJ1L8Q+A
 1sv+Jqv83t1yyeSBBCOxKihM7u7KfLNBai2AyfEL4K/ypoOoZXQWv/qsdCXtYD2xnVoR
 SwZg==
X-Gm-Message-State: AOJu0YzohjU4trmeQn2xw0YmANvfXYM3Yy92piyMYPWykiOjbquvAc78
 7kGERFP4+l4Skc1/wOVNl/wGunBRSckBS6XOX7ycgr4aJ/YngdLfdmiCUGRovApMLdCPXGOCFxV
 TNMcOLvZQKvBXD8gm0+WKOOmSuwDb97p8Dp9t96BZaX5rjwz/Xi19PAk49bU=
X-Google-Smtp-Source: AGHT+IHQL5VlnPh4TUe2kJwx5vzPR27SH1dKgiHwerpgqADdVb8KGXaqpEdKz+4UKZTE7c+nLZfKcrPPNvttrlAkvTl5O1t/EqUz
MIME-Version: 1.0
X-Received: by 2002:a05:6808:6713:b0:44d:b72e:ec1a with SMTP id
 5614622812f47-45112d14293mr16083257b6e.45.1764665522203; Tue, 02 Dec 2025
 00:52:02 -0800 (PST)
Date: Tue, 02 Dec 2025 00:52:02 -0800
In-Reply-To: <20251202081424.173730-1-junjie.cao@intel.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <692ea8b2.a70a0220.d98e3.0198.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, junjie.cao@intel.com, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-by:
 syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com
 Tested-by: syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com 
 Content analysis details:   (0.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.198 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vQNuL-0001Pn-Jb
X-Mailman-Approved-At: Tue, 02 Dec 2025 14:32:19 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in jfs_evict_inode
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
Reply-To: syzbot <syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-by: syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com
Tested-by: syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com

Tested on:

commit:         e1503481 jfs: fix kernel BUG in jfs_evict_inode
git tree:       https://github.com/Junjie650/linux.git fix-jfs-evict-inode
console output: https://syzkaller.appspot.com/x/log.txt?x=17986192580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7f95b06c4c0e55d5
dashboard link: https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8

Note: no patches were applied.
Note: testing is done by a robot and is best-effort only.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
