Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E02EAAE45B3
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Jun 2025 15:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZC8mAvOPv/JAoElXXpvaLyvPRpO5+wyvokN74C1D9r4=; b=BRSVUkNHbukCrKVF6mc6UgCR29
	cdxYCrpqU2uejntDefBiIvAJhSSYBD/WG5XDaJK9EcZA7Z08dge9xfz9pOzc3E6joHGY8QgWXKaG5
	bcNAz5a3OsX6gFOqNvVbedHEodgkGzvF5DKFNFREie8xb1H7/JmcH5UFDV621Fqc5S/0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uThhM-0002jv-Mt;
	Mon, 23 Jun 2025 13:59:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3zQJZaAkbAIAw23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uTbeX-0001hA-Mr for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Jun 2025 07:31:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yMrG7D0IFeHrM2AqL8rEB+iEl8IrcIBlu1rsb+uQF6w=; b=iQ1DGX2Rdnt0A1C0uowJC2QrNZ
 WfQ9T0LiOYhjrBqSQGjkRjEK/i5YwvxS3xYY/T7zmvDeBvY3ng6epeKDnAfkDDI9/R8sLRml9zHLo
 Kc3zOX2HpVho7p4phWR2dGsAkD+9la1YbApS9k3LSbbxHoFpZGQNMc5Rm2X+iMQbVh0o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yMrG7D0IFeHrM2AqL8rEB+iEl8IrcIBlu1rsb+uQF6w=; b=g
 nicTA3qAau0w6Y42fHB0XfrWX2690d8DxfbesTtcxyIWUcffu47belhgQsq34vrexLKULNTJXs5qX
 +t9qwT+ryJGlAx/RicvT1QPiX301pxWCfyGgqKVAxHlGYZCte4JA4iJAiPEkd7ZUi3SDeP5Cz78Xb
 Eq+Fqj1JFlEIlquo=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uTbeS-0003qy-BI for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Jun 2025 07:31:36 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-873fd6e896bso280517739f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 23 Jun 2025 00:31:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750663885; x=1751268685;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yMrG7D0IFeHrM2AqL8rEB+iEl8IrcIBlu1rsb+uQF6w=;
 b=uQbylXEHgX3DToHU+9DI5G3sbUrYPMV+HLUonU82m/+gaNPzByzn2809qUHIuisTbL
 k6H1PsCplUzQ2xjqtMmmsKX3H4A49rxZ45GzukVGOLsRuBijOs2ZXKXkDhFK2Oc7OWMf
 z8vg1ngFL+cKKy0QWL+N0FrxKFCfLwOfl378CC9w8f89QOVyKta3B851XkCIkLz2czFU
 QzL9BrGRkzNbNLVR3KSTfP6k48POVUjHz2gUw/H7kCpmQAyJ1RUtFnbKbSdr1CRBAeZY
 0UOdVSB+BuolCAmL8w01Bym0LH07Fz2vXf4cJgnNX7fBsmqiueD4clt6u+A7RGMFhjd+
 aHYw==
X-Gm-Message-State: AOJu0YxEPCvwoGpUVZD0t2OcK9L+Ka+4GtPfe423EJyYS5fjsu0C2+/X
 iFeIlnOv5VgT4/t0wnhMRwGLdHpv3B7NevejSdWgfV8RjbXjJ4JAeksao9zdO0/RbrfrtpTrCVh
 Jqmx1AVjz1Gyw7LxO3Ug92RlZKpJIfyPzX7aYj2RPdJ42MNpgsHW2Hq05AmE=
X-Google-Smtp-Source: AGHT+IEmeDmP++QWX1ZXO/Pgou/1/mlIusLtFx3LZxR7jT/rIgMNOX7js7tZNVrhPZ0dQUnoGszkqAjM6C6wShyBgZZJalGJeEWf
MIME-Version: 1.0
X-Received: by 2002:a05:6602:3f03:b0:86c:ee8b:c088 with SMTP id
 ca18e2360f4ac-8762d2250aemr1117834139f.11.1750663885731; Mon, 23 Jun 2025
 00:31:25 -0700 (PDT)
Date: Mon, 23 Jun 2025 00:31:25 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <685902cd.a00a0220.2e5631.0010.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 2 new
 issues were detected and 0 were fixed. In total, 57 issues are still open
 and 60 have already been fixed. 
 Content analysis details:   (3.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.72 listed in psbl.surriel.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1uTbeS-0003qy-BI
X-Mailman-Approved-At: Mon, 23 Jun 2025 13:58:59 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Jun 2025)
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
Reply-To: syzbot <syzbot+listcc392c3218f8e5980dac@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 2 new issues were detected and 0 were fixed.
In total, 57 issues are still open and 60 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  53069   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  27793   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<3>  26283   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<4>  6508    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  3778    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  3324    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  3223    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<8>  2728    Yes   INFO: trying to register non-static key in txEnd (2)
                   https://syzkaller.appspot.com/bug?extid=5b27962d84feb4acb5c1
<9>  2337    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<10> 2336    Yes   general protection fault in jfs_flush_journal
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
