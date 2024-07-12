Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6C092FB39
	for <lists+jfs-discussion@lfdr.de>; Fri, 12 Jul 2024 15:22:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sSGEI-00032r-KH;
	Fri, 12 Jul 2024 13:22:31 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <39yeRZgkbAMY4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sSFpB-0002DZ-Ti for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Jul 2024 12:56:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TzEYZ9/KGZnyjIckX+IjZ1E5E0w/LVv8h31KnsqmR3E=; b=gcbCm9q9M9d21IGGS2EDCdNd7z
 8KrymZJYLEegcGWewT2JnAAyoqn3xHaBJ5rFpWx1SLfNCsEipp/2bo7fuOG4ZYIOCzpp66KEJOlDn
 7ElcHh3OhOcIQY4fk667+MlLPjsbW2RJKFLnQc1a+jfKjJxJgNqjxyNJ75TmCOErMOQE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TzEYZ9/KGZnyjIckX+IjZ1E5E0w/LVv8h31KnsqmR3E=; b=i
 mCGOcyt//x2tYbkKQ1jmWqu758WZG3SLbQDbpb3+Aj1PJCo/5VaSQi9J6DUQCSYxs/PJymmbtq3qo
 rzGY28R2MKL6AzazMtJvO59+t9OISP3RS32yovErTdpm8ptUf1pM3Hk7VU49QAiBGNKXDn0s+kHIc
 zXLVU3AXMmqpjQ18=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sSFpD-0004VW-4B for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Jul 2024 12:56:35 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-7fba8d323f9so190119439f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 12 Jul 2024 05:56:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720788983; x=1721393783;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TzEYZ9/KGZnyjIckX+IjZ1E5E0w/LVv8h31KnsqmR3E=;
 b=LxZh8zOfii7g6laGs8Q2aWh+Aa8fuRgOwvPvxGKBtKqIR9g52Jw6wdCb94AXdWG3sm
 A0mGDuaMZngD1hYDiqt5sG1t2F+SBcBLnuKYBPnzsHmSdnk3/BQtVoCx7g43HDN9se4s
 hiC+0tgZpbJhQnytybOJCYI68E629rxnZ0WjDeAvGpA5yAuoeK7G5bGrmjF9oKvZJPAI
 8MUxMPsVu0k+y2aVz/gLobfxhBE/Lu6HxX8CVqj8q3JZRcg8mmOB5MG7gRJ7hU4+V/Xd
 NwP9YB46fsdAh84WBBBauOQDBeH5J1wttgx7uoKt2Gv3q/RloX9VKRTVq6NgrYVzk0Yi
 z7Ew==
X-Gm-Message-State: AOJu0Yzhbv2R9EUfGvquslpEOeZdIcp6trFNhuJLctE6FE93F0EkcsvZ
 lOPbfrCO19Eo5zsgJI5S+BwwqdKxP4K3r3okXWaT8/OCknpMXsyBBRcpURUItu3MV4VtHV7jmM/
 dt40/wevd2ufVie6u2fsKkzdh6L1Ef6xCMtdC1Pep2icBjThjnJnEiro=
X-Google-Smtp-Source: AGHT+IFjx/daJIABMZzZiahUEJaMJNv96x24S6lL82RAo5ZGK0UofhpHnB3kxGUIHFpIkMQpXzclHAAZ2q4UUuvcQH9/rGeyxruq
MIME-Version: 1.0
X-Received: by 2002:a05:6638:6281:b0:4c0:a8a5:81cc with SMTP id
 8926c6da1cb9f-4c0b2af54damr779703173.3.1720788983660; Fri, 12 Jul 2024
 05:56:23 -0700 (PDT)
Date: Fri, 12 Jul 2024 05:56:23 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001ad247061d0c68b9@google.com>
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
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 7 new
 issues were detected and 0 were fixed. In total, 49 issues are still open
 and 40 have been fixed so far. 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.69 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.69 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1sSFpD-0004VW-4B
X-Mailman-Approved-At: Fri, 12 Jul 2024 13:22:30 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Jul 2024)
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
Reply-To: syzbot <syzbot+listbce8d688f46fc6adf428@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 7 new issues were detected and 0 were fixed.
In total, 49 issues are still open and 40 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  11460   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  5742    Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  3176    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<4>  2375    Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<5>  2145    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<6>  1361    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  1216    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<8>  1205    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<9>  713     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<10> 577     Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1

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
