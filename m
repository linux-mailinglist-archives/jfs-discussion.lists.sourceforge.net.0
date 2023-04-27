Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E8E6F0668
	for <lists+jfs-discussion@lfdr.de>; Thu, 27 Apr 2023 15:11:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ps1Ov-0006y0-Ti;
	Thu, 27 Apr 2023 13:11:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3SVBKZAkbADwqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pryzr-0004Gt-3y for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Apr 2023 10:37:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RnKvJRGuTj19/qeFfCObJ1mKSwbZtyjNqHI5nsZidCI=; b=WRF8riVQmrWKq9OT+YB0+84Phw
 ps+1U5mmeo2hK2Ce0aed8mL6WswjIwjWp9uqg9vnr/3KfUbJkxNobgybQ9i1J5yXp3A+O2evXWJGf
 b1RmyuZQ7kyklh/oRxKFeZSUWoLqCuBIo7covNP6v//5hLqtgmWzkOxzh9qo8PlKHW3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RnKvJRGuTj19/qeFfCObJ1mKSwbZtyjNqHI5nsZidCI=; b=F
 TIidK2blKHpocFv8TCPanZutrw7jhdJUNVYFrgD3deFXT91VYN3l5qHm2EQbN9U6e6d3hQGaUAwTr
 1weMtBgtuGqcP4q5nUpZc8oWgosczNdnpo5ngzenEOM1UgPZLLFbR1rDrYa75kbrKPAIhJldwaCuL
 UmB7adpHJ0xiKB/M=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pryzn-0032k1-BS for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Apr 2023 10:37:07 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-32b58d571a8so59116495ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 27 Apr 2023 03:37:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682591817; x=1685183817;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=RnKvJRGuTj19/qeFfCObJ1mKSwbZtyjNqHI5nsZidCI=;
 b=kgq6gZ2mwjFivX/AOpY1xDDj5/dW3VzPdOqb7jQA+aSM6WM/1ypawA/15TvLxGB1L/
 lDl9cgH0vQHDSYnB3cUbLW+dlfFDwLLndWY+ljwrVLfa8SwmZEzUUOeEwIEI2wSVdRlK
 y3OzJCVfFtdi0SuOd6JHiRHCT2F4NOcDK8KO1JUFJY09wXPM1zGlpC92Uy8OcADEJr37
 szLo1enTtKK221Oy2ShTb5/XwBhvBMh20+OpNqQRtXNRXGXnCbhnkCL51lGTLve/ocYl
 Q50GQ8Iwrib/hps1liGXmoTITeV58fO995X+gXB61fukyuMVxLfhucSUULBKIe8GNyv9
 D1Yg==
X-Gm-Message-State: AC+VfDxMYJaH9jknyzXJmgqhH44c8ZAEwq0X07DOodOzqGM1hWlKl+LE
 qBiHhBwFD2PyQq4JCFXsnzahuln2k+S6SGPO/SfVZhp4zd83txc=
X-Google-Smtp-Source: ACHHUZ6SwoeQT/XLmwNrFtRoV/YVN3rzG4Cw/+wZIzYcGxb+fsStPZfJnPBiq+lGfhD2+Ahvdv2JuYGT2BXSEPie7N6Dbd3PO8G1
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:548:b0:32a:9e86:242f with SMTP id
 i8-20020a056e02054800b0032a9e86242fmr996137ils.6.1682591817801; Thu, 27 Apr
 2023 03:36:57 -0700 (PDT)
Date: Thu, 27 Apr 2023 03:36:57 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000009a2a1b05fa4eef8f@google.com>
From: syzbot <syzbot+listfa7b6ec26861d7b6f193@syzkaller.appspotmail.com>
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
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 1 new
 issues were detected and 0 were fixed. In total, 63 issues are still open
 and 9 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1pryzn-0032k1-BS
X-Mailman-Approved-At: Thu, 27 Apr 2023 13:11:03 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Apr 2023)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 1 new issues were detected and 0 were fixed.
In total, 63 issues are still open and 9 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  4032    Yes   UBSAN: shift-out-of-bounds in extAlloc
                   https://syzkaller.appspot.com/bug?extid=5f088f29593e6b4c8db8
<2>  940     Yes   KASAN: slab-out-of-bounds Read in hex_dump_to_buffer
                   https://syzkaller.appspot.com/bug?extid=489783e0c22fbb27d8e9
<3>  871     Yes   UBSAN: array-index-out-of-bounds in xtInsert
                   https://syzkaller.appspot.com/bug?extid=55a7541cfd25df68109e
<4>  594     Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  455     Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<6>  306     Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<7>  229     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<8>  221     Yes   UBSAN: array-index-out-of-bounds in dbAllocBits
                   https://syzkaller.appspot.com/bug?extid=ae2f5a27a07ae44b0f17
<9>  202     Yes   UBSAN: array-index-out-of-bounds in txCommit
                   https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
<10> 136     Yes   general protection fault in jfs_flush_journal
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
