Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E57DF742802
	for <lists+jfs-discussion@lfdr.de>; Thu, 29 Jun 2023 16:14:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEsPo-0002iL-E6;
	Thu, 29 Jun 2023 14:14:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3jUudZAkbAMQ289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qEoWy-0005vi-Rx for jfs-discussion@lists.sourceforge.net;
 Thu, 29 Jun 2023 10:05:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=guSeZzio6DeBpUvNz5ZbXE9spb2zWqeyg0XMCRqaFGc=; b=WdJRmffg04ZlC2mtJTVf8hgY74
 /Ap7IkC7mzuxACa0a+XupE749hkxegKX44oMwLuU0r8eQOzNKt/mvz1wkhKPjqIkUcae53jQy1qsE
 d56iM5Ew+Nj7wuOpSXyNm/9BJlbVMDVubNDPIB+l1PnsS4tRxlNj6dlLnnLCGa/V6KBY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=guSeZzio6DeBpUvNz5ZbXE9spb2zWqeyg0XMCRqaFGc=; b=M
 gl28i0M64lXqMDAtJ6ea9OLSQWD0TL8o0/2eAgIEGpihnBDblTurKHr9EEb1Kdb5qBZKlVQI/95Iq
 DRhFGcqhYX7X0oIiFBRVmlVa2FORm/AlS7ykVXIDdkwr224DXjQ0pXZkMX2GpW933dxJohzUOpW5o
 gunLfq5Qqjf7Med0=;
Received: from mail-qt1-f197.google.com ([209.85.160.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qEoWm-0000wU-SL for jfs-discussion@lists.sourceforge.net;
 Thu, 29 Jun 2023 10:05:34 +0000
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-4008e5f1dfbso5483481cf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 29 Jun 2023 03:05:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688033123; x=1690625123;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=guSeZzio6DeBpUvNz5ZbXE9spb2zWqeyg0XMCRqaFGc=;
 b=TxdVvQhKuoUkqaVyvb6m63hd4P0ZDmSiIFX4XqngDz8k2BEa9b+JbfS4Sa1K32JS7t
 nXn7gqcHPsnCzNjAGOPwaB5BJvzO0yuXQnuMjwhx0DZ8qRMnqfQO/TGNWqhRz3/Pz2aQ
 YEd4H+y9PZIBlH+J9leIBDjelKy7u1ICQxppwuW9WCdQzcaVFJKi/iaosH9u1zBxWWXm
 FUNtqd00QFQzIvo/MD7Ey65b+N/sWzIHQrMF6EHZ5qsieuxpY+ygbrpMlQ1MQkz6JoyP
 MrA3VzlFWEdzIddBDhKp2ITaQdbNWk3gsSI5b/YNrBcqgdmD7qjBXAHbyVBcMJfWXS6E
 87EQ==
X-Gm-Message-State: AC+VfDy6mxtszXQD407ebrYGVwxSwczoRrmoLN+mLa2AMm36lyJLMITd
 8hiU/tsBh8W7PBz+7gqR6afU5kHC0+NcXgm2Z2vDgw5vfA8kj/c=
X-Google-Smtp-Source: ACHHUZ7zwyea4dRcV572ExkN3Nn0grVzvDPd2A9OfjCiGSWEMaCIxRs4HxY4ZL5YDA/OtjyrmPgBOsTEvSP1Dinya+qErSIKeZvq
MIME-Version: 1.0
X-Received: by 2002:a05:6808:1902:b0:3a1:f2d4:a3bf with SMTP id
 bf2-20020a056808190200b003a1f2d4a3bfmr3898435oib.4.1688030093010; Thu, 29 Jun
 2023 02:14:53 -0700 (PDT)
Date: Thu, 29 Jun 2023 02:14:52 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000106e2405ff4122ba@google.com>
From: syzbot <syzbot+listf4063fb66388de6326a1@syzkaller.appspotmail.com>
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
 issues were detected and 0 were fixed. In total, 54 issues are still open
 and 12 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.197 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qEoWm-0000wU-SL
X-Mailman-Approved-At: Thu, 29 Jun 2023 14:14:31 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Jun 2023)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 2 new issues were detected and 0 were fixed.
In total, 54 issues are still open and 12 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  5157    Yes   UBSAN: shift-out-of-bounds in extAlloc
                   https://syzkaller.appspot.com/bug?extid=5f088f29593e6b4c8db8
<2>  962     Yes   UBSAN: array-index-out-of-bounds in xtInsert
                   https://syzkaller.appspot.com/bug?extid=55a7541cfd25df68109e
<3>  885     Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<4>  610     Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<5>  475     Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<6>  307     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<7>  289     Yes   UBSAN: array-index-out-of-bounds in txCommit
                   https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
<8>  202     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<9>  137     Yes   KASAN: use-after-free Read in release_metapage
                   https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
<10> 95      Yes   KASAN: invalid-free in dbUnmount
                   https://syzkaller.appspot.com/bug?extid=6a93efb725385bc4b2e9

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
