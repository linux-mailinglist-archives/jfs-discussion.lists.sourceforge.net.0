Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C580C84B85B
	for <lists+jfs-discussion@lfdr.de>; Tue,  6 Feb 2024 15:50:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rXMmC-0003TM-90;
	Tue, 06 Feb 2024 14:50:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3cZG_ZQkbAMY4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rWcZu-000875-Fc for jfs-discussion@lists.sourceforge.net;
 Sun, 04 Feb 2024 13:30:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tzM0gFWX358jgiBmOqZtwQSB/F2tsNwCbyAEBJz63Vc=; b=m+c1osFIGH3VOTxTfmE9VFDW6p
 MUdVA3ANVAEp0Qzd67lFyvEeAAjqCTyHt3qewiiZidHi/QIG5SVTNTLgj6LlnVV9eY9VdznZhBfEg
 1hx59ytM04AOsrm5mkEb5+ZIa+vNsauqH95xgK25bUZKyqnPaN8rLv0KdyNl9hsYbzWc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tzM0gFWX358jgiBmOqZtwQSB/F2tsNwCbyAEBJz63Vc=; b=M
 c4KRBpC5Y53w9Ifka8ZwNTqFi3iUFDqyJcd7WVCejRyUc4UCfTIYIorGk6RFdrwzNhZla1MK6gDP5
 viI6SFcaN83rDZe2sZDMotLeBqDpRQHo84YaayQSGveweMuWh6QzLA7dvyFIZzCkCyW3NA2yz8nyq
 JAuisK2EQsF9BPuM=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rWcZq-000533-Ip for jfs-discussion@lists.sourceforge.net;
 Sun, 04 Feb 2024 13:30:34 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7baa6cc3af2so395438239f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 04 Feb 2024 05:30:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707053425; x=1707658225;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tzM0gFWX358jgiBmOqZtwQSB/F2tsNwCbyAEBJz63Vc=;
 b=q0ddH/tnSw38X7aLLP7Z5HHLCwx6gKhHMZfRz5oZrzppfh7yZjh5kn0t+6znLmTbVx
 7ea5qp7FsowiOXwdh+NplJJ8pYpa+T+uDCAAccNPGooMHF84+VgccCOqrlIrlrROttby
 aindTQ1jPJfYDtAu2p5XzrWrJODgr/hbvQOLp/KtFlr2MvUDxjpYUXRC+GRlDk7zc+9e
 9CAncWKfr9Jm0XGx/4rKqiehkGeObXMJSBo5W9q9R1YiqZ5KqppIlrwIvyBOrACViYMm
 dWPCjbAFHt+L5V/ebZ+vMOt096vEJONa+XDZmHjjq6lpEDmcbGnssdYIeDKG7/vd3Pfo
 qD3Q==
X-Gm-Message-State: AOJu0YzJVheXlqCYxB5og4/6TUBI1O8mnsH8GE3HdAP/U0pIs1o92aQ/
 gEpFUM7n0VAhEpUWL40k7Gy2Mg9m5ZVr1+z6r6w36ws7Ru6TvwxjwDOs9sz71OeXCZdFu7Vp/QH
 fMRgLHPPRTdxiXvV+D6wsKqlhpyJ830lB2GhXhA3qamm1FFhUz4RujI2ilg==
X-Google-Smtp-Source: AGHT+IHCw+64iELG79qhBXYxXl02VqldZ1Z1z7ljzrHWmEXSfj/t9tLgEWnk5meIw7bn7d7KKARtlDI3i6cpUlTad/3ij0mEVaHC
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d11:b0:363:c8ba:ea5a with SMTP id
 i17-20020a056e021d1100b00363c8baea5amr46326ila.6.1707053425706; Sun, 04 Feb
 2024 05:30:25 -0800 (PST)
Date: Sun, 04 Feb 2024 05:30:25 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000d4e8006108e5989@google.com>
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
 issues were detected and 0 were fixed. In total, 34 issues are still open
 and 31 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rWcZq-000533-Ip
X-Mailman-Approved-At: Tue, 06 Feb 2024 14:50:19 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Feb 2024)
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
Reply-To: syzbot <syzbot+list857c7d203040989b10bd@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 2 new issues were detected and 0 were fixed.
In total, 34 issues are still open and 31 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  1661    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<2>  1416    Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<3>  985     Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<4>  574     Yes   WARNING in inc_nlink (3)
                   https://syzkaller.appspot.com/bug?extid=2b3af42c0644df1e4da9
<5>  527     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<6>  357     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<7>  279     Yes   KASAN: use-after-free Read in release_metapage
                   https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
<8>  109     Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<9>  104     Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<10> 84      Yes   kernel BUG in lbmIODone
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
