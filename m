Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8908B97A7FD
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Sep 2024 21:53:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sqHmt-0002fp-DW;
	Mon, 16 Sep 2024 19:53:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <36w3kZgkbANQIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sp39K-0000xQ-Ls for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Sep 2024 10:03:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6MbNjnzGBD+c48nqOdaJX6Kfy5r3ApeW+WnnKbCaAOE=; b=Dn7kQtbTeQGRmnJn0fSH0N5iNG
 1M9+wGVELCgLsRo/Z/E7tFEocNXR1rsXuUcsgorOrAxXzBach2HKPM7Emb+tAUrJbEIPsT/ib8a0n
 IMWO4yBERTMMSo3TJ4jqtb0Fe7VGGefNwT1AlruiMh8KJVbYhip9FTSPiEzuzr90sr58=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6MbNjnzGBD+c48nqOdaJX6Kfy5r3ApeW+WnnKbCaAOE=; b=O
 ni9TlwENe8q86B8hwj06AIurZYb1Cy9q7ntbOLTh3nXFPOduQi8OohTQDbrFQrKgOZ4+fNWKfe/VS
 qnsLyHNLcAs89ZoAZbHTIPA2I8bFQzbVKOFn9FNXt5I4xVP9wdcx4QBJ+fbQR00+NT3RGkY3onVdA
 3fCT5wIxvFgaVAiM=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sp39K-0006xK-BJ for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Sep 2024 10:03:35 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-39d49576404so20322845ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 13 Sep 2024 03:03:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726221803; x=1726826603;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6MbNjnzGBD+c48nqOdaJX6Kfy5r3ApeW+WnnKbCaAOE=;
 b=XTOLQKWLfnKDFnkqHWBTUs7RQe2n2j83pmLEw405nxh56I7Y0I8DPCgK7dmsK+KBIk
 UW3hnItakaZeDly9NP0EPZAiLzwagjsTnF3qIQMJ13u/dFz/vN2kCrAEQ37KojPsEHva
 T/CyCMR0xdlte7Aycsa0oB1Z9gp+xALqBZ5TSrvJPV8gQFtIZpi3T3yunMlWTKvHE+PA
 J7f9SSahujxvx7VMTJZ58rMACGi/jxVaXn9MuRM2pA4D0r3Cs7jzboStzaIuwBEKXmgt
 J3EhwMyl7LQyFURwgA5/hoCrzC7BC/OhUa9AUlmZ5KciY36DiLf0kGZZMMVFOWKjW+ae
 KIJA==
X-Gm-Message-State: AOJu0YxVyqJzhRMj5qoEncvFN8W3SzQSAiJHTBLEw2Gm3LXp7P8UpGo5
 ZV8Oua2iKwoWt+u4lBtzokyoXAev9AMgR8pRCULx6Owh6q8vmYx/+rj/EW+wG6BlAQ98+tJvmP4
 IxaPhdlpfzlaud5f6DLELPb22fi2V6A+MtaubHU7QH29WcDwVPTsGjUE=
X-Google-Smtp-Source: AGHT+IHV0q+2gAdFE5b7GHnfVLgMEhiugRjgmszAcWuWJvq+5tbsrfEa74JUfCulfRSXLpALkSsF2HhbQ5sfbPmdwecPkylm66al
MIME-Version: 1.0
X-Received: by 2002:a92:c56a:0:b0:3a0:8d8a:47c with SMTP id
 e9e14a558f8ab-3a08d8a07e8mr9091945ab.14.1726221803549; Fri, 13 Sep 2024
 03:03:23 -0700 (PDT)
Date: Fri, 13 Sep 2024 03:03:23 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006786970621fd5567@google.com>
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
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 3 new
 issues were detected and 0 were fixed. In total, 50 issues are still open
 and 43 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
X-Headers-End: 1sp39K-0006xK-BJ
X-Mailman-Approved-At: Mon, 16 Sep 2024 19:53:30 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Sep 2024)
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
Reply-To: syzbot <syzbot+listda4fc358991102c9f36e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 3 new issues were detected and 0 were fixed.
In total, 50 issues are still open and 43 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  19333   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  8182    Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<3>  3763    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<4>  2627    Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<5>  2159    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<6>  2001    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<7>  1775    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<8>  1542    Yes   KASAN: user-memory-access Write in __destroy_inode
                   https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
<9>  839     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<10> 756     Yes   KASAN: use-after-free Read in release_metapage
                   https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94

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
