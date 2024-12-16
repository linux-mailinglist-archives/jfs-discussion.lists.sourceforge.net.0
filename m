Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 474669F3375
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Dec 2024 15:46:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tNCMB-0005Oa-NP;
	Mon, 16 Dec 2024 14:46:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3tPZfZwkbAGMTZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tN7fX-0000k4-Ql for jfs-discussion@lists.sourceforge.net;
 Mon, 16 Dec 2024 09:45:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=frZhY6vqqExPDCyABVxZfOkud9Jo0Qj0ke4cTnmE9uk=; b=UFo+VbHGRby6AfjBpUQLEznNRu
 wGmZd1wmukdUSAIHYiG8caipkYILZz8SUxm5sw1tGOmN6Ro6O70INJB5WnyDajSGKZD0qe9ozMMY6
 TBx94JUakzINb9vWOI5hWCRqknF/USebRmXIBSb4B8rFunLNJhSXuUjxgIQ6LZlTu6iM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=frZhY6vqqExPDCyABVxZfOkud9Jo0Qj0ke4cTnmE9uk=; b=M
 /FAoXRwaYkj/2f75u7ILncFd2FabnXxDi7ovBC3iX4xsUcAuAwPo5LS2PyAHYbhUX1MH503tnu67Q
 qTP0UGmx1ERxR8JgLsBAYFFBai/m6DN76CPiG5ybj4o98M7VIR6Zzcm5wTbhJprOVTGgvrd9wgPd9
 edbAPGtDAwDJ12UE=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tN7fS-0000QD-QW for jfs-discussion@lists.sourceforge.net;
 Mon, 16 Dec 2024 09:45:35 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-3a7cf41b54eso69138485ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 16 Dec 2024 01:45:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734342324; x=1734947124;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=frZhY6vqqExPDCyABVxZfOkud9Jo0Qj0ke4cTnmE9uk=;
 b=UWV2NNiykfNiyzONRn+gUPJtt8IBQ7fAj7Ov6veXD+OfCmMYnP5pBB/zJOuikaGuCk
 1rwclZhxZCU06TQkjhohPyUQG5r6CK+yZYIXHSwUmt3xnfRiu5cXQF5C7h/cr6ymxIMr
 AUHFqHeoN3o80Lp4pFIY7z+ORtOwQYL9odGTsGerkYFQmDwB51Fqss/5EOTpHiz6eeQV
 Dlw39i1I/Qsh2l4ZNRVTzkWi3uLB8bFSb74vBnG8gUnUcGEE5lrYTpMHPBzWYjpg/mCB
 Mue5wOtmbAdKX/9PMof759YVLbLnvAEbYPJtfNbt5njFxP+nO1S8nuhWBvmNtTCPccFQ
 qsBw==
X-Gm-Message-State: AOJu0Yzv9pVFrFzX4TJHU62zos5cQ5ulhJnwe9YNoEWojvzIwHB/WKi8
 N3wcQ+0Oxf23X0MdGby1iC3WNNDxxdDE8jEz/KOcs8lTaanIV9RLZ5kOSxIzyEto6oz/a861hYB
 doF/tt5daary3JuegW6HmmQD/WOHsmQRwwM7odXh7k8LEHkPzw1PIf8Q=
X-Google-Smtp-Source: AGHT+IHg8wCQ3njcbec1Ku/E57d+qhPCQ7zkrkNn5GeasVKOJrvaFGj+yk3HAmXPLEVyYsZkCHueqbRG3TMW3ypqe0xocYBRIMg9
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:348a:b0:3a7:e01b:6410 with SMTP id
 e9e14a558f8ab-3aff0c4d934mr123692415ab.18.1734342324143; Mon, 16 Dec 2024
 01:45:24 -0800 (PST)
Date: Mon, 16 Dec 2024 01:45:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <675ff6b4.050a0220.37aaf.0128.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 5 new
 issues were detected and 0 were fixed. In total, 52 issues are still open
 and 51 have already been fixed. 
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.200 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.200 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -1.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1tN7fS-0000QD-QW
X-Mailman-Approved-At: Mon, 16 Dec 2024 14:45:58 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Dec 2024)
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
Reply-To: syzbot <syzbot+list6a0dba1c3237fe630d77@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 5 new issues were detected and 0 were fixed.
In total, 52 issues are still open and 51 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  26463   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  14151   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  7614    Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<4>  4891    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  2640    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<6>  2635    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  2570    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<8>  2228    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<9>  1301    Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<10> 1139    Yes   INFO: trying to register non-static key in txEnd (2)
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
