Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69816870486
	for <lists+jfs-discussion@lfdr.de>; Mon,  4 Mar 2024 15:51:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rh9ep-0000s7-PT;
	Mon, 04 Mar 2024 14:51:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3n0XlZQkbAPQouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rgzO9-0006fv-Kc for jfs-discussion@lists.sourceforge.net;
 Mon, 04 Mar 2024 03:53:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pHuPhokO987LIWAMy07DocWUyewbBZBGwrDGi0YLBU8=; b=DOeSvHFNFZqRWYomwQuxuBymak
 hd6nwhMCm6sgbpGrjoUdHFpXdoAQWT3RnMaG6GYk3j92GMGNyBTpUvLOkxtWQaAnn+PK9LRrTSGN3
 B39CkLO4aAmUcHRmOFoXz9O9huns0ud3YeKO3eCq0eVVV5Wh0VVW4fAxRARrhQa8KRhU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pHuPhokO987LIWAMy07DocWUyewbBZBGwrDGi0YLBU8=; b=A
 e5WeiSIUpJtfabkxJ6J6DckGcYZB4eenMTphvoaosh8bpYhNvqwH7FcCsioCNZFo1ypdt/jqSRxh9
 oce2tuCeQZ0Hck8wF5/Fj2ctzwDPozREcuFFTzaeBuaMEth17jsSQxNQEBbLTQrtk66pJRZcV4N5X
 /ZM7rnWiv64uXJkQ=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rgzNz-0006DC-PG for jfs-discussion@lists.sourceforge.net;
 Mon, 04 Mar 2024 03:53:17 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7c83a903014so145416939f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 03 Mar 2024 19:53:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709524383; x=1710129183;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pHuPhokO987LIWAMy07DocWUyewbBZBGwrDGi0YLBU8=;
 b=PkNV1JdeUoW+aeQZ7e09bzTR3oON0nwdat1vKCUdfjHA6YNcK4oSrRC5bk8tFkd4DM
 nNfgPZiY3M5Wis2hbKmCZ6tQLjueXCij931052mwPUBarrZPv3kYYKODwYXgtzNZVPoE
 58PgM9DuL9HdhTMMstgL/uk9cGBwJ4TilfaE8Nt94Uqv6Shb7PVb7Q9jYPDCyG+70e3D
 Vo5bXlI/1K4XNYJ8fjXw3Hu7Lfc78WEUlTMoZRyXGy0RwVtqIbsqas3nl3/dxZUWlP+t
 y6X1/SNoseZFWGn720aEvmLiS7ptMWg56WYSZEGhjRp5q9O9W3s+Gqf7/4QV9+8rB85k
 wo0Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFmt8IZ73BSi/MrD0alsT4dBVivSUbueJq4dfljSy4gOwswC1Yl8UcDkqKyG7093fK+dIpifwWPPCIlK6Uea0bLeThuvxB/MeNBhMdReEfRHcOX6M=
X-Gm-Message-State: AOJu0YyMfFxnXbxV9cbG/MiwAHlL53S5FkAJd4qm24ADaW+/k+VHAELz
 dBiSg6i/y9vZxfHMPkQTHbYP6lTHMobrwy0d1bSsmmW6bp+wxO8MQg+fIjT7Iqes/NJVOKZGMDu
 iUZFO7FbjPrPjie57JfjHcmJL7CHQzLvJgIgDoCEA7NNK82Jz6iRvTFA=
X-Google-Smtp-Source: AGHT+IF9zvXhtrwSgWUyTLSDHia5IEtUT+1Q17mqnVWSZXWM+MCcZ0pl6JK5Cu3dBEVjYHpwmsL47a2htool8caNNzxL6reCqKqu
MIME-Version: 1.0
X-Received: by 2002:a05:6638:22c4:b0:474:bc7d:544b with SMTP id
 j4-20020a05663822c400b00474bc7d544bmr226076jat.6.1709524383299; Sun, 03 Mar
 2024 19:53:03 -0800 (PST)
Date: Sun, 03 Mar 2024 19:53:03 -0800
In-Reply-To: <000000000000c4c9f105f2107386@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000099ff3f0612cda952@google.com>
To: axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 6f861765464f43a71462d52026fbddfc858239a5
 Author: Jan Kara <jack@suse.cz> Date: Wed Nov 1 17:43:10 2023 +0000 fs: Block
 writes to mounted block devices 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rgzNz-0006DC-PG
X-Mailman-Approved-At: Mon, 04 Mar 2024 14:51:10 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Read
 in jfs_readdir
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
Reply-To: syzbot <syzbot+f328fbf8718edb712341@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16b9e3ca180000
start commit:   2772d7df3c93 Merge tag 'riscv-for-linus-6.5-rc2' of git://..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=6d0f369ef5fb88c9
dashboard link: https://syzkaller.appspot.com/bug?extid=f328fbf8718edb712341
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10233f38a80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11d35c1aa80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
