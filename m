Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63919903CE0
	for <lists+jfs-discussion@lfdr.de>; Tue, 11 Jun 2024 15:16:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sH1M5-0006AY-7o;
	Tue, 11 Jun 2024 13:16:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3bgpoZgkbAF0NTUF5GG9M5KKD8.BJJBG9PN9M7JIO9IO.7JH@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sGwqv-0003eq-PD for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Jun 2024 08:27:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e1uBULGiq/dLBXfkwxWBRdkcw0uIjnak6allGPE5n/g=; b=cw6AUnMiipIZtBYnZOMfIUA/OB
 KKeVUUlQmTIhTORYC0Lyq1IR/aV+Z5n2W9IVLK4sINZpJ4C2eD2NJAjOAdvwZK6in6+tldtabWf8c
 H1d3dMn74zLFJqeYip16hW1h83olzrO73W3VjMrLLvE1Sxd0HKIIWSMOXE7Wyhx7H3xQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=e1uBULGiq/dLBXfkwxWBRdkcw0uIjnak6allGPE5n/g=; b=i
 f+NmL8vJs5gG1588ST1hGZZPmYmvC593tw+dNQl6jeflVW4w4i9gNtzkAlke5nuWRtpK+cf4rarUu
 EUXgSwKkhCWciCHh4DV7m6CCXEJlFoT0KFkcLBCL/NtqDsM17I7U/xrT7OD1vw0LZWReJCpXyZvmc
 z+OVoA/aIuETJ1oo=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sGwqv-0002DB-QH for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Jun 2024 08:27:37 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7eb50e42c6aso586830639f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 11 Jun 2024 01:27:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718094446; x=1718699246;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=e1uBULGiq/dLBXfkwxWBRdkcw0uIjnak6allGPE5n/g=;
 b=OL+bL2ryk1R8prmhijKquUvXspG8mZyDJpSMAanJ97gU9edPebXuwk+ijuqAIIII4R
 NZhkaQxmzREQZ8YKroNXUq9pxlFnNVNZk4MzVfSEHFT1HY7lXiJ1rPZns751FFMVf6LR
 c+OxcB9AuMMv/HEwEHbR1dtHqhIMU/DfwsyrLd3gFPrLTBCfdqZVgqPVRBkrLgcAIv6t
 NCqZdFmqD1blETayHBn1MFO49zn5LXSQlLPdseTPJ2ytF483KT4NFkW1htXk4WJusLNM
 /sg0t1tu1faU2cs8atn9DJlIs4dtdgemzTHLjQMM4EbLU+RJRqk0feHse1SjtXYNH0bL
 CgpQ==
X-Gm-Message-State: AOJu0YyG+7ug55vhKYb/5VEiViLUHdrZY18lXcFU3V9IA2pTwBngFiL6
 gVAabgK3bct36RD6QWodV0JoY2wDYVoWnDJdkM27gmlXKVTtOozyI9/a+9qEKEmMzXdA6t5aQyt
 SJBLkGRJ3ZZp+FSnuz63TP6sL4r+X6n89lQRkZhedyJfQziafcRdlPIY=
X-Google-Smtp-Source: AGHT+IG99Gmf8lLMHXk6xxQi08jlUfn70kvOE408p88hIuXZfC+rG/hLfY4mqmHu2rNwoMzE8jqDPyiGGzEOalcgzjFux/h5u3Ac
MIME-Version: 1.0
X-Received: by 2002:a05:6602:6c10:b0:7eb:99c1:372d with SMTP id
 ca18e2360f4ac-7eb99c13c48mr9734039f.0.1718094446256; Tue, 11 Jun 2024
 01:27:26 -0700 (PDT)
Date: Tue, 11 Jun 2024 01:27:26 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000028f310061a990905@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 5 new
 issues were detected and 0 were fixed. In total, 42 issues are still open
 and 39 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sGwqv-0002DB-QH
X-Mailman-Approved-At: Tue, 11 Jun 2024 13:16:05 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Jun 2024)
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
Reply-To: syzbot <syzbot+list5d6661b816d5f1356109@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 5 new issues were detected and 0 were fixed.
In total, 42 issues are still open and 39 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  7179    Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  3896    Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  2955    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<4>  2307    Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<5>  2043    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<6>  1185    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  1029    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<8>  796     Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<9>  664     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<10> 386     Yes   UBSAN: shift-out-of-bounds in dbSplit (2)
                   https://syzkaller.appspot.com/bug?extid=b5ca8a249162c4b9a7d0

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
