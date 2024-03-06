Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C934874277
	for <lists+jfs-discussion@lfdr.de>; Wed,  6 Mar 2024 23:10:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rhzSa-0001xa-OE;
	Wed, 06 Mar 2024 22:10:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3XenoZQkbAAo289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rhzRI-0001w5-NJ for jfs-discussion@lists.sourceforge.net;
 Wed, 06 Mar 2024 22:08:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dP5mf6ppaJeeeqDuDdgoLYu4nUp5wMZfTV0hczsj3VE=; b=kostxiSCHKjtzaaTDbARMrgd0g
 OPAnmIHrTqM4yRnQdOasEmw4Q08aRtCDLsnmmiCbtD9hEVIEbXeybava5Gco+UZ0vS8Uyti6OS+dj
 wky0PAigIgYagUpuvbJNWxq+qPrIUdox/Y7Qoy08OWcSwiLe8TkvwLS7Olzpeg6ogpvY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dP5mf6ppaJeeeqDuDdgoLYu4nUp5wMZfTV0hczsj3VE=; b=D
 ovCiqIjXdE2bDy+VkTsTykubsGxIKa87mwNnms8DE2TvBa1VASuXARUpVCCbm9A9shypdCHqLWn6+
 RAUiX9VSf6WVg7BSv7pHCc4YNqJ2hn/qCP7krPi6X+pti1lyYAvUhKqAQ4Vs/ZiWtXpFoodaxJRlk
 vzhp2l/Aj+NDGvz0=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rhzRC-0001wv-6B for jfs-discussion@lists.sourceforge.net;
 Wed, 06 Mar 2024 22:08:41 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7c874fb2baaso35493039f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 06 Mar 2024 14:08:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709762909; x=1710367709;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=dP5mf6ppaJeeeqDuDdgoLYu4nUp5wMZfTV0hczsj3VE=;
 b=dkdB2Nc32kZNDZ8fmPxtqmazG4XJre1Yas/Q+XtTPNTk+yAOlrbJ2vZQvYJ76jmgfb
 /9bVB9dVCFTUXia+JXJQUBzCfg6YkSF1XLo55tUEEeH09/vgg960L6c0xbL2rZbnt7Zl
 EqZbHX8snZDK76KeldKvYYbkr4oXKBPN6OpTwWJ22ph4M+MgeZylkuhjhYFNyPeTPyJb
 zIhFicIP8A8GPESdkVG2K2URpyaYR60se/y3NBVDqD/NezZc1jnx+RYRlbigfbkA0l9Y
 ypwPJWpw8zt1L5FLvRQOM4TMLsRMgTCIuflqHUZx1PUQIR4pn/GO0/EIO8jen01BkamJ
 pORw==
X-Gm-Message-State: AOJu0YwCcrBo9Q+2XJ5/ZKqPuOtq9Yg2jXelGh6sOgLVz0scu4rWgSCo
 MEHhW3hpJSa7VzllPPp2FmMJBcUXrunJtxSlsZViQPaXz1qo0qx5jWfhgdRN5Ch8nmPw/GioQgw
 0U8MioJ0VG8MoPp2aLlE7oPRg83n7UasiOLhXpnPmBfbDCMpiLeb3gJcHHg==
X-Google-Smtp-Source: AGHT+IFPqSCvF/0U8pDf7pIswMxHcFHvDUPvrvqAjK+q5PYCkNfskzE7xmuQEyTGAK8OtumE6ovM9gu4ZydBpcx5uQUSMQs6fwxE
MIME-Version: 1.0
X-Received: by 2002:a05:6638:2584:b0:474:76c9:b667 with SMTP id
 s4-20020a056638258400b0047476c9b667mr877556jat.6.1709762909035; Wed, 06 Mar
 2024 14:08:29 -0800 (PST)
Date: Wed, 06 Mar 2024 14:08:29 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d7ecf606130532ae@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 2 new
 issues were detected and 0 were fixed. In total, 28 issues are still open
 and 36 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhzRC-0001wv-6B
X-Mailman-Approved-At: Wed, 06 Mar 2024 22:09:59 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Mar 2024)
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
Reply-To: syzbot <syzbot+list454fdd6114742843b8e5@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 2 new issues were detected and 0 were fixed.
In total, 28 issues are still open and 36 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  1815    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<2>  1621    Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<3>  1031    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<4>  576     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<5>  390     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<6>  299     Yes   KASAN: use-after-free Read in release_metapage
                   https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
<7>  252     Yes   KASAN: null-ptr-deref Read in drop_buffers (2)
                   https://syzkaller.appspot.com/bug?extid=d285c6d0b23c6033d520
<8>  144     Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<9>  130     Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<10> 87      Yes   kernel BUG in lbmIODone
                   https://syzkaller.appspot.com/bug?extid=52ddb6c83a04ca55f975

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
