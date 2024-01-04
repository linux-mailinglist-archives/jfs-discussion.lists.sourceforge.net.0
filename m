Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 928C48271A4
	for <lists+jfs-discussion@lfdr.de>; Mon,  8 Jan 2024 15:41:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rMqof-00066I-Gy;
	Mon, 08 Jan 2024 14:41:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3vKaWZQkbAJcJPQB1CC5I1GG94.7FF7C5LJ5I3FEK5EK.3FD@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rLMzU-00045l-Rl for jfs-discussion@lists.sourceforge.net;
 Thu, 04 Jan 2024 12:38:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=29vKqyfc3rV9TWRt2Gj1PJyuGORtA41yInRUncgp5D8=; b=JMEr0d1/dDR8/dz6X6Ft3ELWLP
 9vNkM6HolL603+sh7kxDNV1eKPXvxpb3/xAEwviEad4mdDQDRe9HCFTpI2MaTxAihEzfJomwFiT/j
 Py8LpVCcgt815eWblMIsqlC3VdZ+gsvkxKOQIXiDJznqMwAMtLp5lwxLXnjf9pGEwRTQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=29vKqyfc3rV9TWRt2Gj1PJyuGORtA41yInRUncgp5D8=; b=j
 tKD8GUw+DcZY5QPta4G1yz/QMZXrS9qFA9en2jAmzX0lDzRhb4t7h2a1Z3Xn8Qn6biUfTIQmW1jME
 hNrTBeG+IBRGiffudz2fxHwiNI/MrygI9GyYr8UeGBq69Dsxtsrjq3CknmVmy0fR12Pi982IDPxWa
 lIF65KF46oy695so=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rLMzS-0003db-0h for jfs-discussion@lists.sourceforge.net;
 Thu, 04 Jan 2024 12:38:29 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-36063568308so2297445ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 04 Jan 2024 04:38:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704371900; x=1704976700;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=29vKqyfc3rV9TWRt2Gj1PJyuGORtA41yInRUncgp5D8=;
 b=fQGYb/bqRypEjuoF0PlPLHGDeijPsCz6iQt8l67LilOPNohC2E+OnIPoGp+UzqBVsL
 Yhap7WbpKTou6nptOATAaXxp5YezI9eUgH/tYr9GhRMmvX1GNIY3jBS6jG1MIosyeOlq
 cZY3PS5wB1PHPsxndMacEDfB/Ns1sNxTstJmyX4geeRBkUXvWqFMBPsz7BD8KWyj79dZ
 IFzwknR3aOMyxt7TXpEIPkQdRvtBpc0mAY90vapvNGvwcR0iyZDLXtXmuK5BXDdFXmY+
 5gqsz6PKOq5WH4R+kDo5PpCwIP9G+UoA6QQYinQswg2e0IhuKa/MkjLVVkfE4lJSftBP
 BVNA==
X-Gm-Message-State: AOJu0Yz2v1pvyMtykdBvyZH1wJEcuMUpuVkxIAcRgaJXLJfi9o8cxRtj
 aOaiTyk7d84nIw32lIqlsRFkVmABPhAU9TSkA1QfGZH62phFuSQ=
X-Google-Smtp-Source: AGHT+IEUP00O8rJlVEPYvBOluunoX69MB19JiSdhuk1kONVA0rztCerYPwFQ5phiJB+3V2K+y5sss4t+z+WJIyyZ0jG5yB84LSgJ
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1b0f:b0:35f:bea3:c041 with SMTP id
 i15-20020a056e021b0f00b0035fbea3c041mr71618ilv.4.1704371900477; Thu, 04 Jan
 2024 04:38:20 -0800 (PST)
Date: Thu, 04 Jan 2024 04:38:20 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b17b66060e1e0151@google.com>
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
 issues were detected and 0 were fixed. In total, 39 issues are still open
 and 21 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rLMzS-0003db-0h
X-Mailman-Approved-At: Mon, 08 Jan 2024 14:41:23 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Jan 2024)
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
Reply-To: syzbot <syzbot+list79e3e44e965579bc0c82@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 0 new issues were detected and 0 were fixed.
In total, 39 issues are still open and 21 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  1579    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<2>  1247    Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<3>  930     Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<4>  567     Yes   WARNING in inc_nlink (3)
                   https://syzkaller.appspot.com/bug?extid=2b3af42c0644df1e4da9
<5>  479     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<6>  331     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<7>  239     Yes   KASAN: use-after-free Read in release_metapage
                   https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
<8>  234     Yes   UBSAN: array-index-out-of-bounds in dbAllocBits
                   https://syzkaller.appspot.com/bug?extid=ae2f5a27a07ae44b0f17
<9>  169     Yes   KASAN: null-ptr-deref Read in drop_buffers (2)
                   https://syzkaller.appspot.com/bug?extid=d285c6d0b23c6033d520
<10> 110     Yes   KASAN: use-after-free Read in diFree
                   https://syzkaller.appspot.com/bug?extid=1964c915c8c3913b3d7a

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
