Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04854A6CA6F
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Mar 2025 15:07:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tvzV7-0006Dd-Vj;
	Sat, 22 Mar 2025 14:07:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3krDeZwkbALMlrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tvyD9-0008Sg-Fg for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 12:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gVF+PwONIaTJdkFX0hhjlzVj5s/XoXR24BPkRfJDqIA=; b=fdHrSK89gVJ29yr4f3lm8HwLbN
 oJg/zxjwEnn8Db2Zgu4JMaNOIV9jtKnQW53oOaV8VRf6ETc/RdpsPN4Tag9ccNZMt733vSX26jbP1
 SHAd0gXP7nhIrBuuPykHGfs/trrADo98Vsg+TFqh4njHmRUciJtjgv7/lc2do80oUiLE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gVF+PwONIaTJdkFX0hhjlzVj5s/XoXR24BPkRfJDqIA=; b=j
 hAGKneyaDJg316q98qcJnQKRF973H33R/wbwM0DzufoJQC84Nuxy+dhAAerAYa5/PA5f7mROK1HlW
 5d/890TIciGOyiG+GWwtCdbqoQy2LMDcCDvLXC7saSl5IDPV1rfs2WIBR8DLVMEwhjMQEerTXP39G
 27ZX71gqKKmd4Wck=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tvyCy-0003A8-Sw for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 12:44:23 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-85dad58e80fso583406239f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Mar 2025 05:44:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742647442; x=1743252242;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gVF+PwONIaTJdkFX0hhjlzVj5s/XoXR24BPkRfJDqIA=;
 b=kSqV6Km3SBULXihwRmfmdrd049lgQcY2jk9MljK9gSpsg0bAyscHJVr3QvXjlYafSP
 fO1AhMBGfX1Pq/bC8bBukqJoQyLe25iZObWu6O99xxlzetOpANWAXrxibTTVMyF//3VQ
 47cp6lXvC43UrP0Yipz5Rg7stlwRqNy4ZP3BEU4JUaW3T4/6idbnPg3NarFxO0JjLIWn
 Jqx//eSGNly8fa0TmyETpQmUsRgjEKPFRGcHYgESYe6RFrSFVlyO65saEkLIWO7JTnXX
 BLSlfRiUcoe+LcR2Yx083ogaUkjv76WZTPVODw2jrYzaGkVRf3bMXVeWbaSXWa0nR2Ki
 9ZHg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUy3c3Injt8q/X39rE9gZSpN3KR38B/jSzaM2dSL1TOI1k9CuTBCiuihhiHTPrMAaqyLMrgX9r2I+GUmp7xDw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzsaZR1l8Dhvt/yL/rkguY1SH/y8mSIcmCoR2VKpklCUzzTz6vY
 j8iUDyUHC4eiDXvRPLYh72IvOfJZCqcJwuyjDtdN8ahFKA7RAyzVfnXBKBjzHwoxu6Ed/rPi6ZC
 ztL+k1yucRsjKlf1GWVhXrAIno7dKxPr4ymexLSiGnVYEmzPFsA0HGmA=
X-Google-Smtp-Source: AGHT+IEXA/MzJF+RIcAtENhkT/H575Y1nUCgQruEQpzFyIBHuJiMFT7lE+2HMIwkv1oUnuLpBKoKAPZ/2cKAzbbNH6aEZYDwzdRA
MIME-Version: 1.0
X-Received: by 2002:a92:ca45:0:b0:3d4:244b:db1d with SMTP id
 e9e14a558f8ab-3d5960f5b15mr63113585ab.6.1742647442222; Sat, 22 Mar 2025
 05:44:02 -0700 (PDT)
Date: Sat, 22 Mar 2025 05:44:02 -0700
In-Reply-To: <20250322122233.218306-1-duttaditya18@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67deb092.050a0220.31a16b.0039.GAE@google.com>
To: duttaditya18@gmail.com, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch but the reproducer
 is still triggering an issue: unregister_netdevice: waiting for DEV to become
 free unregister_netdevice: waiting for batadv0 to become free. Usage count
 = 3 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
X-Headers-End: 1tvyCy-0003A8-Sw
X-Mailman-Approved-At: Sat, 22 Mar 2025 14:06:58 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in add_missing_indices
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
Reply-To: syzbot <syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch but the reproducer is still triggering an issue:
unregister_netdevice: waiting for DEV to become free

unregister_netdevice: waiting for batadv0 to become free. Usage count = 3


Tested on:

commit:         9388ec57 Add linux-next specific files for 20250321
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=147b043f980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b4f3153a0a8b9aaf
dashboard link: https://syzkaller.appspot.com/bug?extid=b974bd41515f770c608b
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: arm64
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1054b004580000



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
