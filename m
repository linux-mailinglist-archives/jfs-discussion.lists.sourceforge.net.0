Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C60CE0292
	for <lists+jfs-discussion@lfdr.de>; Sat, 27 Dec 2025 23:16:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OO2w7d1lF5LY78Z2SQXh7jjGSIqhEEW9EFRzJFqwNiA=; b=L84U4nN6y+YUyp3YXoig6UDOb+
	S42WcuKq0H/dzrGkTPgwQVRxwnS7IEflNp91+BP9veU0dICrAXMzjzsgvnP6boDXfQw9Y9IqF2Bgb
	MIlXQqUH+4XeuDrwQbm6vsio661jkzinY2vcj4GuJ89Ha7aD9DcYbbXRGaL0YwfgZFBw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vZcZK-0000Y4-9e;
	Sat, 27 Dec 2025 22:15:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3xj1OaQkbAMs9FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vZ3dl-0003f1-G1 for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Dec 2025 08:57:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ir3RX/Uy9mA4Q0MfcnZbiYXBaaO0AyvP0KlMRuuBQpo=; b=JgVuy0GFBuplz+z1HH2MC8gGbo
 i0E19ATTeW8nNbu5VenrirbtBEoJxDYqVIQvFNPoorfOACJtNeDY4VnZTAN4JxgMPQbaEE5W+rBvg
 z5OkCaMDblpfp2z2JRg04v+VCjLyqcTHW7enm0G2obwOi0kNtgAHvMeYV8GLsnaqYPX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ir3RX/Uy9mA4Q0MfcnZbiYXBaaO0AyvP0KlMRuuBQpo=; b=U
 M+9sqVUf54g74PCgOyzQ2dO2/lEqffvdKEu3ax2tJDt0mR/TARaZ0M/tqlLro6FO0s8KRIKAOqsPz
 +yoPNAYSAmmWhh4flWO50DTRfra4nz3KqNUKvVSW+t/OIjsigFLu3c42OFgbp6MsAuhKvGDuNXAZ0
 1k84zpqFsTZa5XDM=;
Received: from mail-ua1-f72.google.com ([209.85.222.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vZ3dk-0002eo-M9 for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Dec 2025 08:57:41 +0000
Received: by mail-ua1-f72.google.com with SMTP id
 a1e0cc1a2514c-93723fdb00fso14399273241.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 26 Dec 2025 00:57:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766739450; x=1767344250;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ir3RX/Uy9mA4Q0MfcnZbiYXBaaO0AyvP0KlMRuuBQpo=;
 b=Rnv8U3J7SDhz4Da9+6Wy2v56hFVQ5/DImAJQANR8OwwEAsjKPK60lKx9OJWFkraS6g
 cMafjXvyFDaGUsUZIxwNb7z+25WSDSPDa1z5tcQkyQPc57yLG9gJYk6vGHaOqc5sbhHa
 /rcORHfn0ljskjJIjnsnhKdIU2WGwWAjVYnUcyhVasvM9dNECZJD4GipShGdQFswm9e9
 +2X12yxwWR94EApuYzZgontinMK322g+FKBbDdAAhXsoWcQ4uHtx9p3UhT+/ZEylw74Z
 3OalkeX6XKajnroV7+2RRb1lIBftOAPf0NtG5YDEIWnW/cS2e0hs1K9sUn07XqlI50sA
 QXDA==
X-Gm-Message-State: AOJu0YySLOd3UtVnj5sfEnugTVV+/wAEiThz+SX0zxJuwMQhKOuUckyE
 3Z+nr1G9APobnCR4CHTczzJu/PEpgmn/bjw3e7kBSDGuhuen7PbqCgQgDf25O8gMIY+NG2qUMlY
 vBkwlO62SMJawGZBp5dPjct0NpX3dO3iImoVUEGGJ5JkgAr7FefRk6Pi7HMI=
X-Google-Smtp-Source: AGHT+IF6JB8O1ld68VPOCSKRjaTSe7cdqtXwgYr9k0n0kA0HK3uDxXpsfe/VC3PDgWW2vL1pCYT2YlD1L5eb5MR2rwzmnjCe8nY1
MIME-Version: 1.0
X-Received: by 2002:a05:6820:6e87:b0:65c:f046:bb76 with SMTP id
 006d021491bc7-65d0e9a3a14mr6354842eaf.29.1766735302879; Thu, 25 Dec 2025
 23:48:22 -0800 (PST)
Date: Thu, 25 Dec 2025 23:48:22 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <694e3dc6.050a0220.35954c.0068.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 5 new
 issues were detected and 0 were fixed. In total, 67 issues are still open
 and 65 have already been fixed. 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: goo.gl] [URI: syzkaller.appspot.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.72 listed in wl.mailspike.net]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vZ3dk-0002eo-M9
X-Mailman-Approved-At: Sat, 27 Dec 2025 22:15:23 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Dec 2025)
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
Reply-To: syzbot <syzbot+list88894042dba283b50d90@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 5 new issues were detected and 0 were fixed.
In total, 67 issues are still open and 65 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  80685   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  45006   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<3>  7741    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<4>  5943    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<5>  4187    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<6>  3483    Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<7>  3416    Yes   general protection fault in txEnd
                   https://syzkaller.appspot.com/bug?extid=1d096d31de6a0491b55e
<8>  2752    Yes   KASAN: use-after-free Read in jfs_lazycommit
                   https://syzkaller.appspot.com/bug?extid=885a4f3281b8d99c48d8
<9>  2574    Yes   UBSAN: array-index-out-of-bounds in dtInsertEntry
                   https://syzkaller.appspot.com/bug?extid=5f7f0caf9979e9d09ff8
<10> 2467    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916

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
