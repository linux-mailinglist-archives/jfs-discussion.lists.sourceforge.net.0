Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BBC768819
	for <lists+jfs-discussion@lfdr.de>; Sun, 30 Jul 2023 22:57:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qQDTn-0002Xd-QF;
	Sun, 30 Jul 2023 20:57:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3wmLGZAkbAM0BHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qQ6I9-0000hV-Kg for jfs-discussion@lists.sourceforge.net;
 Sun, 30 Jul 2023 13:17:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oGVUirxVTDZ7vJHx7E2WkvsFtu2tIh0g/z5nRixG5LQ=; b=W8FCvPDNg8pb4glWdI9eZCWR3U
 gVKxpQJ5k3L8gDC+MGEnh3k5uDKSZ9as5psNPu5exCPd2A3abyviahKIMiNV8+7pmT9UnMC60DUL0
 vGnC88YzAslJc0deGySpb0knI499k7tAhSjxuehIizVwro8Jz0con7yw48/Iv2NWFqFo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oGVUirxVTDZ7vJHx7E2WkvsFtu2tIh0g/z5nRixG5LQ=; b=I
 LRW4zaXq5kFQHDWJicli3swxeEwsEQkJjoEH99siRzgQuTGmVd8t8OuPdrqFlYjG5AWeUklXAwXtX
 YsrA7nJyxiJZESm+Z691H0HnD8A1YqmYKHhrs4CTX0XH6u/k0apUzWCPdhRlD55jWnLiS44SUdai1
 J0p+SvMFUVJa56x8=;
Received: from mail-ot1-f69.google.com ([209.85.210.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qQ6I4-007ibu-Eo for jfs-discussion@lists.sourceforge.net;
 Sun, 30 Jul 2023 13:17:00 +0000
Received: by mail-ot1-f69.google.com with SMTP id
 46e09a7af769-6bb31a92b44so7124703a34.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 30 Jul 2023 06:16:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690723011; x=1691327811;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=oGVUirxVTDZ7vJHx7E2WkvsFtu2tIh0g/z5nRixG5LQ=;
 b=O4uD2luezqQelmEqmtUr4Jk/RuAWIKgnLTLbxuko+7hv0WTL5H0Yhzr9R2TVp6/r20
 J2jZa8Fv3PaaUz/itJP0JfMEJxOZPJBqPQi/UvQvJntf+DAo0VlOLzblkYwdIJAAThhL
 pRrNtdZCJZZT891wIMKkW+6QTtrkJaqIkFOJOFdynip3Xg6xBxCPDQSRcUiI+rl1hGXQ
 36d4Th/1/kkdhNCRrvl8UhTY4l6kjgol7u1P3ItY2V3VAEG47res2rBoDOcEQhsNS+jG
 cP5jXYnyYfo4Z9VVsvAqMJx+OCQ256E5JgYppCZJX2J/ibrGBI8uAazRrEmeEFzhWoU0
 2L6Q==
X-Gm-Message-State: ABy/qLY1jPfZpYumaWGuGa0FDr3kjUREhuhgXZWW5HIS/E7zVKjP+sPG
 wkCDbIxfiyBFkIyvRBP2XT1oqp4ai6rgYli37UP4Zt3fc2yPaXs=
X-Google-Smtp-Source: APBJJlELZvKOcEMzlyL5FN02V7iwD/Wiz1fiY/pl6RhA5Z/G4zWxNMQ1IKl1Kngkm7uBKI1zTQfgrnzcsrHqxLvCLOctEzlZdobJ
MIME-Version: 1.0
X-Received: by 2002:a9d:4e9a:0:b0:6bb:2244:cb72 with SMTP id
 v26-20020a9d4e9a000000b006bb2244cb72mr8840045otk.2.1690723010882; Sun, 30 Jul
 2023 06:16:50 -0700 (PDT)
Date: Sun, 30 Jul 2023 06:16:50 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007a34010601b420d6@google.com>
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
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 0 new
 issues were detected and 0 were fixed. In total, 50 issues are still open
 and 13 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.69 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.69 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qQ6I4-007ibu-Eo
X-Mailman-Approved-At: Sun, 30 Jul 2023 20:57:30 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Jul 2023)
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
Reply-To: syzbot <syzbot+listd87de47c524d3cfa086b@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 0 new issues were detected and 0 were fixed.
In total, 50 issues are still open and 13 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  1009    Yes   UBSAN: array-index-out-of-bounds in xtInsert
                   https://syzkaller.appspot.com/bug?extid=55a7541cfd25df68109e
<2>  992     Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<3>  686     Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<4>  560     Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<5>  343     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<6>  312     Yes   UBSAN: array-index-out-of-bounds in txCommit
                   https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
<7>  215     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<8>  150     Yes   KASAN: use-after-free Read in release_metapage
                   https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
<9>  93      Yes   KASAN: use-after-free Read in diFree
                   https://syzkaller.appspot.com/bug?extid=1964c915c8c3913b3d7a
<10> 90      Yes   UBSAN: array-index-out-of-bounds in xtSearch
                   https://syzkaller.appspot.com/bug?extid=76a072c2f8a60280bd70

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
