Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 377BB78E085
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Aug 2023 22:22:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qbRhY-00034p-ME;
	Wed, 30 Aug 2023 20:22:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <36RHvZAkbAPYqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qbHuZ-00020x-Sn for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Aug 2023 09:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7dOnceopneHFIwGJjPr+ZbkIEpTrg3pEXAn0bK5utkU=; b=BKoTJYQxjqDVfRqi09tDKlM3HC
 XL+ueUSz6da1VflcrydDB4XyWohPyonndvt+SkjiuFjNFMfy6SgAD9/xf85LklME9Jqj5SdY2U99H
 IF9xKcPw/r/tWItYRVYT9XcW/ImOLwIVJtJxQEtxnYkhERFY0JUptb6+UPdzOFszmmok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7dOnceopneHFIwGJjPr+ZbkIEpTrg3pEXAn0bK5utkU=; b=m
 S80BuOGEj6Dyrf2vq94zC6gNb7ilIJsxgy0Sl84C1mqbRL+cXGjIidGqrathB32Ubxmtu8kXJdIdO
 TCnGJPSJM6+Ch68+/s1C5Qad8QWf1TMvhQK6kcLSBeYmK/+56heKJnCr3xZd/pmG8N5hn/S74QFwL
 tZv53/zU9L9nHWtA=;
Received: from mail-pj1-f72.google.com ([209.85.216.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qbHuZ-003P90-57 for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Aug 2023 09:54:56 +0000
Received: by mail-pj1-f72.google.com with SMTP id
 98e67ed59e1d1-26b3d43a0bfso4944110a91.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 30 Aug 2023 02:54:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693389289; x=1693994089;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7dOnceopneHFIwGJjPr+ZbkIEpTrg3pEXAn0bK5utkU=;
 b=FH7Dm64mLrZ3tJreCGeMvoHf+Q+A/UQNXJJiH/78ihnuj+aqdk/Fz+Uj8sMH7wrUFz
 xetyzSIeg0iP3397Z67ycAVvqkTbay21/jm3lG1t69Xv+PQhRAJQhQ6Cj2UDk9ceRqNN
 NcWxjIiWx40BmOm5iEkTSAm8L/lyc9yzmSxtjM+H0T/ngUzWnQHJJCMRAJ+W6w5SLTAq
 8vnWnFP82Hv8W8CZ+dKpz7OJ/BPaJXO7hH2aCz0ES//e02DGXxpLWrOBizV1rc0kPUEb
 U5qf3phlrtYRMcGW5He/AEl80sVG6LfCev3C7nSHIC5HrWeghBXgt4PWqRbCSchz6iiO
 vsUw==
X-Gm-Message-State: AOJu0YyjniAPxL9hGaWB70w7uBK618TrwjDG90j8kevOMDOGd2Rrlgzc
 anldTReWsgi5/Lf2UdMZEHVSz5uGA0eo56h7ILYNc6etVezur3I=
X-Google-Smtp-Source: AGHT+IHE+85JmPsj7CXySs2bvJEktSQoEz/ARlemBnkgj1ziRCIw4KCxlNzjzGCoOWMvtjg+n6+IMzBASXi68eZPJ0QSHVnNW3o2
MIME-Version: 1.0
X-Received: by 2002:a17:90b:314:b0:262:da02:8a27 with SMTP id
 ay20-20020a17090b031400b00262da028a27mr426994pjb.6.1693389289674; Wed, 30 Aug
 2023 02:54:49 -0700 (PDT)
Date: Wed, 30 Aug 2023 02:54:49 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000013deeb060420eb13@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 1 new
 issues were detected and 0 were fixed. In total, 52 issues are still open
 and 14 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.72 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qbHuZ-003P90-57
X-Mailman-Approved-At: Wed, 30 Aug 2023 20:22:03 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Aug 2023)
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
Reply-To: syzbot <syzbot+list2602cd20bb7c69a5a167@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 1 new issues were detected and 0 were fixed.
In total, 52 issues are still open and 14 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  1086    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<2>  759     Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<3>  629     Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<4>  362     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<5>  352     Yes   UBSAN: array-index-out-of-bounds in txCommit
                   https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
<6>  236     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<7>  162     Yes   KASAN: use-after-free Read in release_metapage
                   https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
<8>  102     Yes   UBSAN: array-index-out-of-bounds in xtSearch
                   https://syzkaller.appspot.com/bug?extid=76a072c2f8a60280bd70
<9>  96      Yes   KASAN: use-after-free Read in diFree
                   https://syzkaller.appspot.com/bug?extid=1964c915c8c3913b3d7a
<10> 87      Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e

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
