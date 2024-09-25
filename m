Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29644985D5D
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Sep 2024 15:08:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1stRl1-0006B2-6k;
	Wed, 25 Sep 2024 13:08:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3kbrzZgkbABQCIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1stMNh-0000XM-F5 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 07:24:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z/A3o4UVQs5NAn318rkcVw0SNvHvy2CSk8QVGSxPhsQ=; b=cyIoW3HRyhSJcWOPP5EZ5ZGUZI
 kE3yhTRI+Sarsxr+C86ZutcpLnHUnRDDvwdqN2NU2yNwHyyM6qRhI6IcFhUz0+U+xrUxQSajhiE4g
 QmPxSih0fHyeeeVNuO1XATvm+8AVJbGHJR24bXRTLup4yZYQsJt35JDwTDheKGsFe1FE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=z/A3o4UVQs5NAn318rkcVw0SNvHvy2CSk8QVGSxPhsQ=; b=f
 fD23mFEIcHiDwR1cw4AkJbq+abK9FUjA6giuuVOdvt74sx/jfZ7RQmarN7M0P7Tus26j4Ols39wEp
 WpX+qusKsaNTtnyxP5YO58Gin5oZTHqXD4cQb4lQ4mDCw88MWYOI1onSlyk6MmtweHFDG/DYP1//I
 wkpZN9hROuBKBz/k=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1stMNg-0007sG-Oo for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 07:24:13 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-82cd9c20b2bso862510039f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Sep 2024 00:24:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727249042; x=1727853842;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=z/A3o4UVQs5NAn318rkcVw0SNvHvy2CSk8QVGSxPhsQ=;
 b=sFbtDd05iKIozrbh1gFck2vAsEml72yspmrcwkHIXgab8MKApmdJqe0pn8K/gg4Pr8
 gV0qqwNxx2Pkc7dK1JwtbYc9P9AWttoo3fpFaCa0YZiBG+1fKdYxK5w8k/fxEtP9RfkB
 YRb6y42DZSdgh0lAoAcG3NqRXb8HSTuxyJo/bYpKTw3F+tO8olGVeq8cZN/jcRz+gwgT
 31KAPCjcHE7ddnAwid6VQjNNo+tquUT32GG8cCef42WheFEedmxU6GwD9XV3r/gQ2n9d
 DHyo9kOQoIhOSuCvCkHbOHdCbYxM6bJKnMUrj2klOZhBZullw7p2fJCQtDUoLkd2qiy8
 /hBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVWT4S7JDGyL1ALS/wOqEh/RgchAssLo2fk0GxpF4eedrmfThntjhB6kRNqvwHQlr372pEikMZk0chwCEjfXA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw15VxNiVg50X+yBT4ls7CSOYdAy/jQ8n/5VP9IkrmuorqtHgqp
 jr3SHVFm3jQ1SDEDN+VRxoW4AOP/43wqUeDiUyZJWOzYqtD8013U5DFGsEyiNpwMVQlxTMGV1lN
 H3eFPknoulHaBaR3ZHPU5hahobA7G1YB6f/+D0aFt6G5jnkiFJj++ECw=
X-Google-Smtp-Source: AGHT+IEPpJLOMCaCb92K68J/cy1pD5OdA22rcpbcvYEB5cQSsPAy9r/VXZbw5kMVeJw+fKgDc5Tgm4uxiRh5RTa1mGOndjSeboQb
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1566:b0:3a1:a179:bb54 with SMTP id
 e9e14a558f8ab-3a26d5e8bf2mr23514285ab.0.1727249041866; Wed, 25 Sep 2024
 00:24:01 -0700 (PDT)
Date: Wed, 25 Sep 2024 00:24:01 -0700
In-Reply-To: <000000000000dbda9806203851ba@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <66f3ba91.050a0220.30ac7d.0010.GAE@google.com>
To: brauner@kernel.org, eadavis@qq.com, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, kent.overstreet@linux.dev, 
 linux-bcachefs@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 2.2 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot has bisected this issue to: commit
 d97de0d017cde0d442c3d144b4f969f43064cc0f
 Author: Kent Overstreet <kent.overstreet@linux.dev> Date: Tue Aug 13 01:31:25
 2024 +0000 bcachefs: Make bkey_fsck_err() a wrapper around fsck_err() 
 Content analysis details:   (2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1stMNg-0007sG-Oo
X-Mailman-Approved-At: Wed, 25 Sep 2024 13:08:37 +0000
Subject: Re: [Jfs-discussion] [syzbot] [bcachefs?] kernel BUG in vfs_get_tree
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
Reply-To: syzbot <syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has bisected this issue to:

commit d97de0d017cde0d442c3d144b4f969f43064cc0f
Author: Kent Overstreet <kent.overstreet@linux.dev>
Date:   Tue Aug 13 01:31:25 2024 +0000

    bcachefs: Make bkey_fsck_err() a wrapper around fsck_err()

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=147a0989980000
start commit:   2004cef11ea0 Merge tag 'sched-core-2024-09-19' of git://gi..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=167a0989980000
console output: https://syzkaller.appspot.com/x/log.txt?x=127a0989980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=38d475ce6711b8b4
dashboard link: https://syzkaller.appspot.com/bug?extid=c0360e8367d6d8d04a66
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=171f769f980000

Reported-by: syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com
Fixes: d97de0d017cd ("bcachefs: Make bkey_fsck_err() a wrapper around fsck_err()")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
