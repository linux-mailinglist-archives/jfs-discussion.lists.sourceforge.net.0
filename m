Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8142E950839
	for <lists+jfs-discussion@lfdr.de>; Tue, 13 Aug 2024 16:53:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sdstW-0008MH-BP;
	Tue, 13 Aug 2024 14:53:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3zh67ZgkbADUjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sdnGj-0000WP-HV for jfs-discussion@lists.sourceforge.net;
 Tue, 13 Aug 2024 08:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MxCz8Eby8KQ7jnQK1qi3zgA2Q4cwBTTBeHl6KMvYRpA=; b=W5m/eZBzmD2mk3QKBTH5f7+nRl
 d5B1oAe4ThI2JYX1Vt1oD7uMF+f5rXiN7YpESlX/sZjBx/d56IPi2EY+KyZIGI0auWgGo4DuI9i8d
 GsL83ZLPm6wen9+mTC/UrZrKuTC+jpwktCGqGTUcp/ahcqzVtyDyRLqekklrcCSGmFBI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MxCz8Eby8KQ7jnQK1qi3zgA2Q4cwBTTBeHl6KMvYRpA=; b=h
 XSEA7c36Oy4WyaQjQexloSdi+ZqaP1T5kCk4JIiQaTdMMPQM9wHbnO4O3d5nI+aRXlDDhfnoSGdMp
 vbo3bNKv8oq123b6KQvoBU6/+5xEVjGiYw779smUmQ9V25OQP6Nsy/XntdBE5JeMIPIvLK4tRfs0y
 C3R+lgLp39Eb8CoM=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sdnGi-0002sW-Pj for jfs-discussion@lists.sourceforge.net;
 Tue, 13 Aug 2024 08:52:41 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-81f93601444so735350339f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 13 Aug 2024 01:52:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723539150; x=1724143950;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MxCz8Eby8KQ7jnQK1qi3zgA2Q4cwBTTBeHl6KMvYRpA=;
 b=GzF0VMsbXLrDz/WmP20sLIoxJmWucN1qC5waJ1UKx6SW1HVhqR5fc5ISDyLCDGouQe
 +6SXVkHozIJebC1MOw/IVQNU3qy3M+IVL0reWNvephAAMt+0/4KGB6zqdI6DKfubEsN/
 AhtUsH/HItMMyfLKAk+h8WrUd7o8HB1k0JuoRAs29/zV3ktBMFKDyu143E09sNQDiE2k
 Jtfd89m7xLYIMYpriDQHfDgH3jOuRHjFsSHJzfAtxZv99kg4Jjp0o9gpz+8UZdTaJOBJ
 E+29aAL44V50nsYjcfjuX4RGiZZbJ9BwXPt9KQD3dJLwmK4T99RJR2YWPjaO+jpIfOH5
 4HoQ==
X-Gm-Message-State: AOJu0YzzHKY9Ck1MheZ78e+z/W9TZ5hzXmXnnxJ+nBiUsShJ1OKQzxta
 tE0EDFaFkTO5ArP2lVOyV/zORfBIgeeeVbwxnoLqdSRbEJqbyKvArF5UJdxCjRftAlVj8hAfHwu
 XiCgMjZpGO5pg/p3jMxgizdfTHievDihBZzx12KUZhLdNWdNcMVNR6GE=
X-Google-Smtp-Source: AGHT+IG5LjLCaltlZi/+xGhkmf5g4xJjA7k6ZEE4LQyEOQKrO7meo5oqmYRFwdLkhNAg6BRcx9d3X7+to+5uMR8WK5Q1qu8DOHbq
MIME-Version: 1.0
X-Received: by 2002:a05:6602:6c0f:b0:80f:81f5:b469 with SMTP id
 ca18e2360f4ac-824c99fb90bmr8207639f.2.1723539150004; Tue, 13 Aug 2024
 01:52:30 -0700 (PDT)
Date: Tue, 13 Aug 2024 01:52:29 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000caef11061f8cba67@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 4 new
 issues were detected and 0 were fixed. In total, 52 issues are still open
 and 43 have been fixed so far. 
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
 for more information. [209.85.166.72 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdnGi-0002sW-Pj
X-Mailman-Approved-At: Tue, 13 Aug 2024 14:53:04 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Aug 2024)
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
Reply-To: syzbot <syzbot+listf7efaa67dc7c45e77bd4@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 4 new issues were detected and 0 were fixed.
In total, 52 issues are still open and 43 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  13937   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  6809    Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  3462    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<4>  2508    Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<5>  2152    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<6>  1572    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  1514    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<8>  1413    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<9>  798     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<10> 602     Yes   INFO: trying to register non-static key in txEnd (2)
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
