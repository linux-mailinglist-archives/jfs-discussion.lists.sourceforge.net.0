Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB3D9DEB27
	for <lists+jfs-discussion@lfdr.de>; Fri, 29 Nov 2024 17:37:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tH3zF-0002IJ-07;
	Fri, 29 Nov 2024 16:36:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3piNJZwkbAFMDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tGqXJ-0003V0-TU for jfs-discussion@lists.sourceforge.net;
 Fri, 29 Nov 2024 02:15:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1U5Vwk+xmgUg16bNI7cgcYet1n9cVlG4cMl+uwsNt68=; b=WEMQr22AVUmfM/3HuQPyzU1y3J
 k/TmU4MtWQWKQss2LjLFd93u/7NA8h64XSjRD1uAN3ZNnBh7KKF8e+pExJ6MV2rq6gk/wy50lxCH7
 ARLc6dOjwt7kRlA+K9f1cH1zwB20NQAgfLBg0spms19Vao23hye6LBEnh+wE+Mvll2OE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1U5Vwk+xmgUg16bNI7cgcYet1n9cVlG4cMl+uwsNt68=; b=h
 MXO65/Rye4QURCpdQDb7la0V1U0j4vYO8kAQRgtXREbiBnKTOAEceflEVptsgKyTNBvct1LUD4/xC
 GmMSzEm0qpfJo4EhBIXQAx/gSOVlXbhFOC2dyyzRzYhAQcJ8iAL+82c5qGO6DyrceRXcQypdm1xbk
 7uP246XZqI8nH5Ic=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tGqXJ-0006IE-7q for jfs-discussion@lists.sourceforge.net;
 Fri, 29 Nov 2024 02:15:13 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-8418612c3b5so118108439f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 28 Nov 2024 18:15:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732846502; x=1733451302;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1U5Vwk+xmgUg16bNI7cgcYet1n9cVlG4cMl+uwsNt68=;
 b=mIfEAphq69tt6obnY0XFyHl6lt4dccfWk63cJMgs9QE/2tBu4J3WDXVtLhytfVsboH
 03nixANiy6LHWT4pRQAOigrCXWF6HFqk26wEN1bIg6REOWz+fghKFGwoQQJHQsMlYufB
 Y4VaFC6HREB8su6KL3KjWa+rhC8C1mS88SNIW13YesQlgAgxPVgVsuna3M97G6e8bL/U
 6u9pbPGMeDB/mZWWZQPTx8gZ2pEipkkno5vAwnSbxwFjtGVdoR6x64ZHUE5Mwolvcd/Y
 wrW0ME2xV5SPgcBx6tJO88XFH8y7R18g3JG6xB+63s6ALhXdjLe/QTnGLZV4RxHi1y9L
 +92A==
X-Gm-Message-State: AOJu0Yz+fEcRl1Jh09AeZtRGDOk7tzusE0TjpknQCX6jOh2D5nrS/NY0
 fPQA5C/Se0jHRDSksO6gfmqduufye2QaJA+xWy8LyIa2GVp9U7zzEInPjAaUdXwELUJ/1BPfsmi
 JvDDmDFRMpziley+4EkqzERLR+7+ibVYF/iFDiARxS4nZBWqVyruJbEU=
X-Google-Smtp-Source: AGHT+IH/DdTz75isy8RV/37m6tD/qSowhIshhif9giIusPOeKOKFPh2HQQTbcQx13udkFzvJLhnmeLfBsIR8JGrJlRIPU6rpVBop
MIME-Version: 1.0
X-Received: by 2002:a92:cda2:0:b0:3a7:86ab:be6d with SMTP id
 e9e14a558f8ab-3a7c55d9ab6mr103087595ab.16.1732846502474; Thu, 28 Nov 2024
 18:15:02 -0800 (PST)
Date: Thu, 28 Nov 2024 18:15:02 -0800
In-Reply-To: <20241129015151.595085-1-lizhi.xu@windriver.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <674923a6.050a0220.253251.009e.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 lizhi.xu@windriver.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-by:
 syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com
 Tested-by: syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.9 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
X-Headers-End: 1tGqXJ-0006IE-7q
X-Mailman-Approved-At: Fri, 29 Nov 2024 16:36:54 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in dtSplitRoot (2)
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
Reply-To: syzbot <syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-by: syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com
Tested-by: syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com

Tested on:

commit:         7af08b57 Merge tag 'trace-v6.13-2' of git://git.kernel..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13b489e8580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=8d9390a3931bdb72
dashboard link: https://syzkaller.appspot.com/bug?extid=99491d74a9931659cf48
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
patch:          https://syzkaller.appspot.com/x/patch.diff?x=137f8d30580000

Note: testing is done by a robot and is best-effort only.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
