Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7282A38676
	for <lists+jfs-discussion@lfdr.de>; Mon, 17 Feb 2025 15:34:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tk2BA-0004st-13;
	Mon, 17 Feb 2025 14:33:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3kF6yZwkbAFsLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tjmax-0000n4-T5 for jfs-discussion@lists.sourceforge.net;
 Sun, 16 Feb 2025 21:54:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q1Crmy7a9xCm7aNVnKFx6S+jtNEBvsFBDyI15nAmHR4=; b=EnVDCAEKTpNnKyaXyic2kdsx8w
 fN2bqh+kXXEh4Pf+ENHjSj56TilFFvf96Q5BLtEY68lBdSqGUWwCEUH/18CCjo/Kz38i2baYSWQr1
 yDGzaFVPlxtNt5p4y/7uDuyoo3k4bqqZwY4ZdZe2DUiqaTX+zUCO9KA8iuZwm/3P/k5Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=q1Crmy7a9xCm7aNVnKFx6S+jtNEBvsFBDyI15nAmHR4=; b=b
 KwIj/bunch3Jg+uiMgZdOOmkh7hhLSywdPYQzLOV1ZvTrNIVUGG8+rwbjtKEua3XqJnVH0yY4czd7
 oKiDG+FWWvku1F7+V7mtNYugWPC1MBu+FADXH32CvDzknbq4no3KwMpTKRvV7h0qKHbIZtQcqlAso
 1UltrB3+Q6Pkye9k=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tjmaw-0002qd-Un for jfs-discussion@lists.sourceforge.net;
 Sun, 16 Feb 2025 21:54:35 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3d197cf2ec9so23538745ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 16 Feb 2025 13:54:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739742864; x=1740347664;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=q1Crmy7a9xCm7aNVnKFx6S+jtNEBvsFBDyI15nAmHR4=;
 b=lquL4mEv+GGqgf4wg+87bhvhJcrh45sBKbWjhzre+soSZIwEB5WMa8XLpMbOyWi3o+
 tB+kAko7SYsLzXC+BbVdlcq9tqNjI0qESpI+BpxJSCzS+vghhm2H1QNOaZMAfE+i9riq
 UMXpPNV2hB3RYwObJJhdb8BHkixNI+48CEShZVy2/1Sgt9/BMjbIrS1ZP6TcJPnXs5Lc
 dioijdWnoCWWgAUTvvoxg2k07rc/zHRg2Qb+FDdof4QErFdBYqXCnl6L9t7+mvY8gsLt
 Ddkrp/Pg1oZqYemMMs9NxjXjVENJp3X4RnCAOXRqKIPoz4uYlTG7W3o37eSuhHlLEP+C
 4vxw==
X-Gm-Message-State: AOJu0YwDxmE4Qt6hEackQxx9rnz/EN8EiOT3zEDRXZIPJzXwBWQ5eS8i
 3r/C3FrLFlfGN7pAA04LTSkLD8m9i/xjfP/evzaU3n+uED/bbkckgp1yqud7NYv3UIk5tea2ODb
 N+NEFCaAlg9/Nyhx0sJnDm2/TZ3F8iHFDuUC/3VR79ewjsGUfgzEb6k0=
X-Google-Smtp-Source: AGHT+IFWVgiMNeI/LpE8gPYhVODsF0vL+ntVc/J8CXPK5k4/dc2Q23Zoi53UKLhRFBRBtLWOCeQ6fTGDCy/qQF0krAEEvRWO7SFW
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a4d:b0:3d1:97e1:cbac with SMTP id
 e9e14a558f8ab-3d2807b04afmr55494265ab.11.1739742864275; Sun, 16 Feb 2025
 13:54:24 -0800 (PST)
Date: Sun, 16 Feb 2025 13:54:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67b25e90.050a0220.173698.0019.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 2 new
 issues were detected and 0 were fixed. In total, 52 issues are still open
 and 51 have already been fixed. 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.197 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.197 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1tjmaw-0002qd-Un
X-Mailman-Approved-At: Mon, 17 Feb 2025 14:32:59 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Feb 2025)
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
Reply-To: syzbot <syzbot+list15fe4be5a738b4c9a456@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 2 new issues were detected and 0 were fixed.
In total, 52 issues are still open and 51 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  34280   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  18855   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  13371   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<4>  5489    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  3113    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  3027    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  2950    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<8>  2266    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<9>  1586    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<10> 1519    Yes   general protection fault in jfs_flush_journal
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
