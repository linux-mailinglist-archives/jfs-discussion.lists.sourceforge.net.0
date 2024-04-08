Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD1A89CE57
	for <lists+jfs-discussion@lfdr.de>; Tue,  9 Apr 2024 00:14:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rtxFX-0007Hs-0p;
	Mon, 08 Apr 2024 22:13:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3I6sTZgkbAP4y45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rtkOn-000341-CB for jfs-discussion@lists.sourceforge.net;
 Mon, 08 Apr 2024 08:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PYp6meHrV7SDBZGv0nvYZyr3yCM2oLscgHmCYKKOr+Y=; b=LpNktue32rHiXO+c8bk9R44mC4
 SQOxnbAdsm5lnSR/mGK1iGnVktyFNEOQxTNV5UWiXEgy4FGPs2PPeWbxDwCrccxcD6B76wXlmFYDU
 x9a6sb5ayrH9bz9e4+RpklKHx1zICCdxw6qWDd6xIIos9myhBoFC/EU4hEkJ0FtHVFGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PYp6meHrV7SDBZGv0nvYZyr3yCM2oLscgHmCYKKOr+Y=; b=Q
 isIstOhPYMEg6fiv70gTqTlEaAfg9Fdmicj6/ICTYvtdCaXDLE420noNHAE/6Ekej8ohmfSUzOKmm
 40dzdOciofvi8UiIb95fPHVc+xtdgMd3Q193nMgEwvxKvgCh862r6Yo6v5h+gHtA1UemnXIk44obq
 i/FjqdOL0F2QhYl0=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rtkOj-0002pG-Gb for jfs-discussion@lists.sourceforge.net;
 Mon, 08 Apr 2024 08:30:41 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-36660582091so49015555ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 08 Apr 2024 01:30:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712565027; x=1713169827;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PYp6meHrV7SDBZGv0nvYZyr3yCM2oLscgHmCYKKOr+Y=;
 b=orrfFyIClAJX3tg8HRPGIEuUbHpU1BqmrBDmO8cVA8S/LaUt++0QvWe6GDXlgrxAGI
 i0UF2Edscvj4cGMU4nvx56i0jY5vNDYdUH6jEPxI0D8qZdmRJyv1qRa4ySYM6d2lpsBC
 V0VoksdCs0Zvd1YLhdZF31PGpRVytGUQv8Qbq/WUIrZNsf9ytGwGug4auVSKe9PzEfhX
 /A/2Zg8y9GPWfLykOY9Sd1iTZpTdF6lTeZrRh+Vuhf1/CIeK5vt4hBg6sfy4Z+1Jertm
 allXHf2naxtA4pnbCEVsNqNZkvFP9KOMrvMwECHmnYQwKsrI0peeyuTHWpyyR4Tc8tnZ
 IG9w==
X-Gm-Message-State: AOJu0YxLsBPjFc/PfNJgVhIpDXxMhhh6MUNnCpLQQWdsEX/rH0xEu9eb
 0hUJmOaG8sBRaEfaCYfDeT5sIRYUMa1tzZYPdFTFGquAJvZ8UALk1wATxxgpae5HVQXN6qqduX7
 u+VHKXNTg1X6SwvDTuV1b9i6+LoNpq1moqJCSuwWkUah1+0X3JU28c/QnWw==
X-Google-Smtp-Source: AGHT+IE0LkOkZrbY/Ax4wld/wm2B12jY/C3Yr7wTVd62FXGRgS4wS4LErl/8peIS1PNZ4hb06CRil+kngxLj6DzqtYmnJO+CEbJi
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1b0d:b0:36a:2a29:5b4a with SMTP id
 i13-20020a056e021b0d00b0036a2a295b4amr46139ilv.5.1712565027174; Mon, 08 Apr
 2024 01:30:27 -0700 (PDT)
Date: Mon, 08 Apr 2024 01:30:27 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000198fc20615919e19@google.com>
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
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 4 new
 issues were detected and 0 were fixed. In total, 26 issues are still open
 and 39 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1rtkOj-0002pG-Gb
X-Mailman-Approved-At: Mon, 08 Apr 2024 22:13:57 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Apr 2024)
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
Reply-To: syzbot <syzbot+list5219cabcace6cc8e0864@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 4 new issues were detected and 0 were fixed.
In total, 26 issues are still open and 39 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  1934    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<2>  1762    Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<3>  1098    Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<4>  598     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<5>  583     Yes   WARNING in inc_nlink (3)
                   https://syzkaller.appspot.com/bug?extid=2b3af42c0644df1e4da9
<6>  412     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<7>  233     Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<8>  92      Yes   kernel BUG in lbmIODone
                   https://syzkaller.appspot.com/bug?extid=52ddb6c83a04ca55f975
<9>  82      Yes   KASAN: use-after-free Read in lbmIODone (2)
                   https://syzkaller.appspot.com/bug?extid=aca408372ef0b470a3d2
<10> 74      Yes   KASAN: use-after-free Read in jfs_lazycommit
                   https://syzkaller.appspot.com/bug?extid=885a4f3281b8d99c48d8

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
