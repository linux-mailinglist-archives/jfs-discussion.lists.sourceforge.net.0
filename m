Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BE9955927
	for <lists+jfs-discussion@lfdr.de>; Sat, 17 Aug 2024 19:16:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sfN2D-0004MU-M6;
	Sat, 17 Aug 2024 17:16:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <35Om_ZgkbAPMntufVggZmVkkdY.bjjbgZpnZmXjioZio.Xjh@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sf6zM-0008GF-1Q for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Aug 2024 00:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q8+h+UYhIgx6SA9dj67GwMpfszzUP7FwDAYj8kWtHvE=; b=YhmbR4rbbMD40z27hPz4cWhtXD
 MDV5k4aIwIjDmgnbeNdnVeuSQb0/yxVy64SRx2hSK5a6ibOEbfQX2I2fXQTzsu1ODPjgHESuCjAcA
 Xj5E6QmpkPvxlgiScQxT4mRvj8oJeczwwSrAo34HCeK8gOj4fxOA9PjdAOYjQIV56kfA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=q8+h+UYhIgx6SA9dj67GwMpfszzUP7FwDAYj8kWtHvE=; b=h
 V+W//FIpz3VbUn7UFX9wcfGskRzCoawzRbZGZvqPUAkfC7s8jUOZ7batHMTqDm412tguNH1yCGJOZ
 Ea1DcDGAuT77V7vSjHxdb6iyc5dSpU2Qm0nQUyTtt3hdNmqEf28JpSkd2yCW3ukqCZJIQkzL5/SVg
 WMl0ZYMlI29L2HR0=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sf6zK-0008E1-Qa for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Aug 2024 00:08:11 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-39b3cd1813aso25626915ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 16 Aug 2024 17:08:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723853285; x=1724458085;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=q8+h+UYhIgx6SA9dj67GwMpfszzUP7FwDAYj8kWtHvE=;
 b=tyQ+GX7cXrF2ZvvIgZaBskbDlPig5r6NJwtwsNY1wH0pVEgFOFXLrO5TyA1WM4ouxz
 u2aN8XtPXfZ3O9pnoYaRTsZexSM8kcQSUFFV0hdrnEDEnhPAiUU5c1wCDpoaisolS5Jl
 zxjq6Dods/HNCdBU2Tpn5iwFj/8lMJ2Kbgsn++u4wK6bzt0iKF4mnUCc/NfqCm+PYoFJ
 fhxNLDJhEYLRY6F5eKbTS6K98MCLxp1ekZ6ghBv1cjz8WrS+Syiee79dvg+6kXhMp2TG
 EGMTJePCWnYozhyGWuc2IRpY1RJPw8y+q3odCku+yKYYINdIrfjaDIcamV++/kcO+gcF
 JUTA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWiiBp/IM9LSiH6VpjggoSewPO9ia33VFyMra59A0hhU5uMG3soN/rb5vxpY9jdFyIB18TvgUOwIECaJ7nsrTIaOzxYZ8YuSVpq810A5+JAJVC0Bgg=
X-Gm-Message-State: AOJu0Yz3zlH/Y3VExePwVxiH6gr7ut7XkCJV1ca6tEukrhfSp4kYGn1h
 wMgMJPYKNfSwXEnJVBgajin0uvIDGE6xFbicotALdwcm7gcqIat9o7XngZ1l0RA0DHwPh83siVU
 HgZX2M4xDatQ19LA+6ozuS+Le/VFHIsxO8dtD0RG9uL1w5pyP+LbKjDI=
X-Google-Smtp-Source: AGHT+IE4e/l8ryHrMJHbK42ym5lVt+Ue8iZ5+aOCXbtbdZsNfLBaLvJ+NnXDWMXIWC5jTOID/up/26bmXmsuhbcipqOIFdkBmzIc
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1989:b0:39b:2133:8ee5 with SMTP id
 e9e14a558f8ab-39d26ce2d21mr3786475ab.1.1723853284994; Fri, 16 Aug 2024
 17:08:04 -0700 (PDT)
Date: Fri, 16 Aug 2024 17:08:04 -0700
In-Reply-To: <00000000000012a63d061fccab65@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b28361061fd5de24@google.com>
To: akpm@linux-foundation.org, axboe@kernel.dk, eadavis@qq.com, 
 jfs-discussion@lists.sourceforge.net, kristian@klausen.dk, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot has bisected this issue to: commit
 2b9ac22b12a266eb4fec246a07b504dd4983b16b
 Author: Kristian Klausen <kristian@klausen.dk> Date: Fri Jun 18 11:51:57
 2021 +0000 loop: Fix missing discard support when using LOOP_CONFIGURE 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.200 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.200 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sf6zK-0008E1-Qa
X-Mailman-Approved-At: Sat, 17 Aug 2024 17:16:12 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-use-after-free
 Read in dbFreeBits
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
Reply-To: syzbot <syzbot+3c010e21296f33a5dc16@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has bisected this issue to:

commit 2b9ac22b12a266eb4fec246a07b504dd4983b16b
Author: Kristian Klausen <kristian@klausen.dk>
Date:   Fri Jun 18 11:51:57 2021 +0000

    loop: Fix missing discard support when using LOOP_CONFIGURE

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16f44605980000
start commit:   d7a5aa4b3c00 Merge tag 'perf-tools-fixes-for-v6.11-2024-08..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=15f44605980000
console output: https://syzkaller.appspot.com/x/log.txt?x=11f44605980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=92c0312151c4e32e
dashboard link: https://syzkaller.appspot.com/bug?extid=3c010e21296f33a5dc16
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=139469f5980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=100f7713980000

Reported-by: syzbot+3c010e21296f33a5dc16@syzkaller.appspotmail.com
Fixes: 2b9ac22b12a2 ("loop: Fix missing discard support when using LOOP_CONFIGURE")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
