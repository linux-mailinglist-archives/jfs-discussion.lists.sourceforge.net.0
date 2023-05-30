Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFE671621E
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 15:36:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q3zWY-0005wE-TB;
	Tue, 30 May 2023 13:36:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3c7F1ZAkbANYKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1q3uZN-0002AA-7F for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 08:19:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9VFbEdwESq3AAXEqLMgm5rUgbu52wFONhvBqbsIgeuw=; b=OU5Ka3t0NHmbOhanUmLKMwaVZp
 KN8B7H0ivgIj73WTWpYeiX7NVLeU9EZ/N/xRjh3SBXYN0y5aX+r1AXwCVGRDJik7Uxc91x9CLUcaT
 0Yz726KPg4r6LH3gS42mRj9ncjzH+K0N4ZACcAq6rb6PJgbgqtk0AMrgU2CGJRRF8H9o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9VFbEdwESq3AAXEqLMgm5rUgbu52wFONhvBqbsIgeuw=; b=g
 U5nTzUb6c9dIM4MgI4NqoiE50Kyxr6Jc6sjPNoheMOnLeKwoF+H2TRNh8D8dzG0tfYdyGLVqooJql
 14DuP9BzGONgc+AUROyrc94LEskiKwkFzrcEqQI5xZ08ZJbTpar95VzIjhOjpQdDk1dzRYTBfe3EP
 EVzmCIGZYVh3oT1w=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q3uZN-006NSP-58 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 08:19:05 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-76c5c78bc24so596920039f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 30 May 2023 01:19:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685434739; x=1688026739;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9VFbEdwESq3AAXEqLMgm5rUgbu52wFONhvBqbsIgeuw=;
 b=LbN0jipCKE8Kp5lfmdpFe8Xlu271m7CBCOZV/MqI9k7hbyZfuU9TQSogV5XlQ1uGR6
 oXDyy/aAWkMQutqrBsYZ8XHx2huO+cOsQkgdn50D0iNwyHNCpzmoyV0tBVF7wDkRtefo
 jWNqevXgnaYk2seM6ZmQcrRTdl25RvUCM50suEkidN5at7b+Pc/n9JA5QuA5yhvjTaML
 vCzMHg7eLFLu/nj9N/I+X5ZoXjg/Heb/cFTc5JvGYbCGSd9s9T05miLwZHzstUa1+urF
 7aK+9AWm44EvYrKGGs6VayAh4IX/WaEEPPuNmMItan9FUNLrTl1FiGhB5BlHeJdCxxIg
 cXAQ==
X-Gm-Message-State: AC+VfDyPtQpJj+OWPGpwEm8kF2DlKqicy+RTUNV7Dw+BUy+ljcTH+SPK
 siepV7CBYzqd8lt1cwe2fbckPNQM+mtbcfd287QKFeCMZdvmjnU=
X-Google-Smtp-Source: ACHHUZ4ijF4g3pjtVkhQj+lrOrMmCbm0XMpt6i/skBPotrc56H/XE6eD3Csxcz81rWt5GXn452icWvqFQNiTXViDgMb/G9XzF68h
MIME-Version: 1.0
X-Received: by 2002:a05:6602:424f:b0:777:32fd:4f13 with SMTP id
 cc15-20020a056602424f00b0077732fd4f13mr739119iob.2.1685434739544; Tue, 30 May
 2023 01:18:59 -0700 (PDT)
Date: Tue, 30 May 2023 01:18:59 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f15a5105fce4daea@google.com>
From: syzbot <syzbot+list89f2ba4cb4fbb749b50b@syzkaller.appspotmail.com>
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
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 0 new
 issues were detected and 0 were fixed. In total, 59 issues are still open
 and 9 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q3uZN-006NSP-58
X-Mailman-Approved-At: Tue, 30 May 2023 13:36:29 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (May 2023)
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

During the period, 0 new issues were detected and 0 were fixed.
In total, 59 issues are still open and 9 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  4488    Yes   UBSAN: shift-out-of-bounds in extAlloc
                   https://syzkaller.appspot.com/bug?extid=5f088f29593e6b4c8db8
<2>  940     Yes   KASAN: slab-out-of-bounds Read in hex_dump_to_buffer
                   https://syzkaller.appspot.com/bug?extid=489783e0c22fbb27d8e9
<3>  923     Yes   UBSAN: array-index-out-of-bounds in xtInsert
                   https://syzkaller.appspot.com/bug?extid=55a7541cfd25df68109e
<4>  726     Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  523     Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<6>  382     Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<7>  256     Yes   UBSAN: array-index-out-of-bounds in txCommit
                   https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
<8>  253     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<9>  223     Yes   UBSAN: array-index-out-of-bounds in dbAllocBits
                   https://syzkaller.appspot.com/bug?extid=ae2f5a27a07ae44b0f17
<10> 165     Yes   general protection fault in jfs_flush_journal
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
