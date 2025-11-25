Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E66F3C86DCB
	for <lists+jfs-discussion@lfdr.de>; Tue, 25 Nov 2025 20:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=4kElQcPskIpKD2D52625SUF0KBuTxIWoyAvWC/CQmAA=; b=cSi1e57p6zeJVGjAV7pA0Qngen
	Psv6A80lZHeOJ4dANw8Ebfa2sOx7W4qZutamDY4kxe5+J21RaCyY6i//cFtf058VTugrAjUv0mkzw
	jnhl3I+zjlvmPs2axAvdQ8MsVEw5DtvLq2myFzLQkq6bzTdsenZLXLL1/Jf8qszNmqrQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vNz2k-0001Cr-8F;
	Tue, 25 Nov 2025 19:49:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3MAgmaQkbACkXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vNz2J-0008Ox-GS for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Nov 2025 19:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0suTsaHS9OKo+zbXDTRwLZdsTZmylkxdtRkwBxXcsLM=; b=RHmLrdVTWFpo4MQTirKrbc4hND
 FEkLL7SAQ83fxvymq7sORmtN9Tk9YDcj1YIgFdlwS9+XiGICxb7iwnhC63KP/YEk+jvauC/skmerq
 AgAtUup0kWO5byiETIIgkoyV5kMUxotqEleFM9vx7bqqwo2eNOjzy/5rPxtwZ0pvksOI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0suTsaHS9OKo+zbXDTRwLZdsTZmylkxdtRkwBxXcsLM=; b=c
 4P/0xQnhqunzSp7Ae1FPfKszqXQitpAgaafR99u5ixwo9eyo5VaPOuVx1wv4HFVv38k3nZZUjUXLH
 RPSiQYakQaXBA9T2AVuxulJ15jJ+74icmuB9pqKPS8Dj1A8X9ApQG2LI7YcFn89K08rQjc1sq8Pmj
 QR1JXi+MiDthObjo=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vNz2I-00058g-Qa for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Nov 2025 19:49:15 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-43373024b5eso51763715ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 25 Nov 2025 11:49:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764100144; x=1764704944;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0suTsaHS9OKo+zbXDTRwLZdsTZmylkxdtRkwBxXcsLM=;
 b=Qx5acG8BMkGGjm97vkayXIxIcgq8c8m1z4r31NV5B1bPpdGsVysDoypMR6j61dTuDC
 /mYxrWNTaCFIox/w6jNfCYpoCLRZ498W0V1Mi+EFU4Z/+M8H4AEgkYeF1oyRGQI4LkYT
 WB+hzWPQJlYUPxNkbktPwwb2UMfiSHTkDJBQrwJMGiFQtKaRDuDV+Xo4cjrQ56e7TXyM
 LY2DgZ4xeSL2ruG7daAFA7ZgwgHrcS9vyWSFABFcoYmbU2/+5eaJ7n2RDK5pvXZqC2QI
 jx6WSnOzF4+vWuyBsdmOn2jZTkGm0N/wsgIdf3/IFpVqGiR/3pjMxw/Bmz7IEOuYV1l6
 JRaw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVycG9tCVDS48OWCp2TOAEp9K1GyaXnKZjLl+sn0vUhKwuqRZsaJ7wiWK4rftgsag7QBNFUYxMzmiu7MKi2eQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxVQqqmoSZfS2U9M/on7USq67Knt3we1cvZuCWByFr2CADADIQe
 AYuqyHFpIDGEuGByoUfwVRYknfY96q+77JC+iSYb6KJFxAFi19rdO1HMV7jI8oTgDm9NSxaiSu6
 hPWY5d0IMWGmglnrI3chDVl09d1BKTXcXxdH8yovmaxjIcBrKZQZZjYtHMJE=
X-Google-Smtp-Source: AGHT+IE5b3CnFwA3/3BNre8Q2AlOoz7KO01d3A3C6N9A0rdawtkoCHiEHwHNpGfY0WoejeWlgxWxO+GEIgMKTGVFGDk10meM2CJT
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:2684:b0:433:2660:6856 with SMTP id
 e9e14a558f8ab-435dd10563amr39324545ab.31.1764100144127; Tue, 25 Nov 2025
 11:49:04 -0800 (PST)
Date: Tue, 25 Nov 2025 11:49:04 -0800
In-Reply-To: <20251125192824.151904-1-activprithvi@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69260830.a70a0220.d98e3.00b3.GAE@google.com>
To: activprithvi@gmail.com, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-by:
 syzbot+0be47376a6acbcba7f0d@syzkaller.appspotmail.com
 Tested-by: syzbot+0be47376a6acbcba7f0d@syzkaller.appspotmail.com 
 Content analysis details:   (3.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.200 listed in psbl.surriel.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1vNz2I-00058g-Qa
X-Mailman-Approved-At: Tue, 25 Nov 2025 19:49:40 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Read
 in dbAllocBits
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
Reply-To: syzbot <syzbot+0be47376a6acbcba7f0d@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-by: syzbot+0be47376a6acbcba7f0d@syzkaller.appspotmail.com
Tested-by: syzbot+0be47376a6acbcba7f0d@syzkaller.appspotmail.com

Tested on:

commit:         7367539a Merge tag 'cxl-fixes-6.9-rc7' of git://git.ke..
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
console output: https://syzkaller.appspot.com/x/log.txt?x=119fc57c580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c5c1288953a7c923
dashboard link: https://syzkaller.appspot.com/bug?extid=0be47376a6acbcba7f0d
compiler:       gcc (Debian 12.2.0-14+deb12u1) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
patch:          https://syzkaller.appspot.com/x/patch.diff?x=10a45612580000

Note: testing is done by a robot and is best-effort only.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
