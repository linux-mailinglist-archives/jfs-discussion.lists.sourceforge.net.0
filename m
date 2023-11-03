Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7527E0434
	for <lists+jfs-discussion@lfdr.de>; Fri,  3 Nov 2023 15:03:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qyule-0004i5-V8;
	Fri, 03 Nov 2023 14:03:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <33clEZQkbALQmsteUffYlUjjcX.aiiafYomYlWihnYhn.Wig@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qyrJv-0000vO-7f for jfs-discussion@lists.sourceforge.net;
 Fri, 03 Nov 2023 10:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vW0KEqPNNJIso/cnw+xQDqj8FClModaPNPhY7C7BkL4=; b=fxTa76Ejjfknnv/CAbyf+obMtx
 4kixMF5wqBFXyaGAMasMfeQg/6lrd1NgXh1mvD4c9taYo/acUYbfpbJbMV+aYqFi7k4Nj1SW40qYT
 mDTKtd9RBU1CturuF10kOP5t6L/2YCNWYl51YR9q1D99RN9PggltY8gNDuXwR3/hq6BM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vW0KEqPNNJIso/cnw+xQDqj8FClModaPNPhY7C7BkL4=; b=b
 ib7YiaNf9skIvgLdwSKZgP9s/Q0BDk1358zoQqW1B5xO0Q5rZ1A9uonzHdQYBA8R/tbVAGxlIOtMC
 x7Wh6LTEIJgJDPpXVVsEwiTSI5zSRbEBlSOgxeNG25EZzV9teLgjWKKEjvbG4Eo4fR8mj7phNEMw0
 EhuXijGG6EwGWJL4=;
Received: from mail-oi1-f197.google.com ([209.85.167.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qyrJr-0023Mu-3J for jfs-discussion@lists.sourceforge.net;
 Fri, 03 Nov 2023 10:22:31 +0000
Received: by mail-oi1-f197.google.com with SMTP id
 5614622812f47-3b565d23148so2833476b6e.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 03 Nov 2023 03:22:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699006941; x=1699611741;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=vW0KEqPNNJIso/cnw+xQDqj8FClModaPNPhY7C7BkL4=;
 b=BtnabSeQIdaXoZevI5zJVH1x4v1YIkcbIzC6i/TAUc1r9TG9Z1YwtSoNK1i2LJN+rk
 R1taiRXfdaztY0ZtAxvIxazdQylrSp2RjdAaw91NGEoRkfKTsmibmbNtuLrXzs1uMdjl
 DXNkhHSQwnn0hrZStVHV7MEb/U90ltjUrFGX04H1wU3EacY6SyFeDT9pO4/2U8HgLeGm
 kneaw1k4X7VWyXQK2q7Xiws3uhVtdfDZPm5+ynlHtZ272Sre2bCwxImXFtwHgOXK04vS
 JBQCtP1jRCw9zieY8iahpoawVBN4VaZGLGCIkJekub9BGIIisQL/PPBo1RSJOYO025nK
 SQLg==
X-Gm-Message-State: AOJu0YyN2DBxU0hbqSxY5t3O/MLMwDdvLRrNUT1/ZvtNlhH/LAk1QUfg
 /1YntHIT+WAHJEDRVHAqx7Aky2BbAAU9oD4MZzlSiCNcRTGjoAA=
X-Google-Smtp-Source: AGHT+IFZK2q6ypq/7RXSMlSaODwy1MIDOUy9zPLACOry0IqFLPjPG9pbj1TDx0sReOPaILHlmM4QOl+/9XSQ6RSEaINVNXWS+TnX
MIME-Version: 1.0
X-Received: by 2002:a05:6808:128a:b0:3ae:5aab:a6f3 with SMTP id
 a10-20020a056808128a00b003ae5aaba6f3mr7785282oiw.5.1699006941543; Fri, 03 Nov
 2023 03:22:21 -0700 (PDT)
Date: Fri, 03 Nov 2023 03:22:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000038c4fa06093ce1d0@google.com>
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
 issues were detected and 1 were fixed. In total, 47 issues are still open
 and 23 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.197 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qyrJr-0023Mu-3J
X-Mailman-Approved-At: Fri, 03 Nov 2023 14:03:21 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Nov 2023)
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
Reply-To: syzbot <syzbot+list84080861d145927aa825@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 1 new issues were detected and 1 were fixed.
In total, 47 issues are still open and 23 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  1274    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<2>  1173    Yes   UBSAN: array-index-out-of-bounds in xtInsert
                   https://syzkaller.appspot.com/bug?extid=55a7541cfd25df68109e
<3>  935     Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<4>  767     Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<5>  563     Yes   WARNING in inc_nlink (3)
                   https://syzkaller.appspot.com/bug?extid=2b3af42c0644df1e4da9
<6>  419     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<7>  396     Yes   UBSAN: array-index-out-of-bounds in txCommit
                   https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
<8>  269     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<9>  231     Yes   UBSAN: array-index-out-of-bounds in dbAllocBits
                   https://syzkaller.appspot.com/bug?extid=ae2f5a27a07ae44b0f17
<10> 224     No    INFO: task hung in path_openat (7)
                   https://syzkaller.appspot.com/bug?extid=950a0cdaa2fdd14f5bdc

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
