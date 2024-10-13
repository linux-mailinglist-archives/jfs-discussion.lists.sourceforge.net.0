Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A47899F46F
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Oct 2024 19:53:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t0ljW-0002gZ-BX;
	Tue, 15 Oct 2024 17:53:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3PlELZwkbAE07DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1szqXZ-0007DI-Nv for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Oct 2024 04:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7ljVEo86yJP/c4o4FA//3yfRYuSBIbWPd1BmvVY9tXU=; b=em95s/1MXzV5ZveyVbrobml+Q0
 FeE7YMYMGNJphORzlxJp+xlqmoL9yxSQx2ug/m7mhnLRCi4ojWEGU3vUG5QHPLB8LNbdW+81VlAGa
 UOEzOjfoN8DeY4y4E8NfyYuhPj4ls/06eCFikAf0XudYTnDpvkmroC90ZREdnwzAqfHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7ljVEo86yJP/c4o4FA//3yfRYuSBIbWPd1BmvVY9tXU=; b=Q
 lAENQr8Slt6xCFzHBS8hsjzJJlUkpmTjG9/NWC1J/fhz2OMPi+PRuORz/unrUon4A9Nf75dCfz2km
 8sZM6j85vfJyor6MJw4Qh1f0OFG3giGa+RpRiL4IJtMjQ5Ip3LX5nh/k2xZUBvcVQs3Tss/nv7SxO
 5YV7CErU9+/EmmY8=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1szqXZ-00068l-4F for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Oct 2024 04:49:13 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-8353f8b7a16so454473539f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 12 Oct 2024 21:49:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728794942; x=1729399742;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7ljVEo86yJP/c4o4FA//3yfRYuSBIbWPd1BmvVY9tXU=;
 b=vD1FcZq7OmfeQOzJEiEMAhaiwVNAwsIthgeEbNT+DLoBnOUyYxuq7hu1s+5jh9dDt8
 Vmj7QZmTDtaqiwjyKr9vETbPUfzUe6zxhRhO+UqdsTpN0kI0FOYmql19H1sGOLg3xMRZ
 uGzmswiiUUripRD8oalJSEHXQT5j3Z2bkrmV2Ys5QB4xqQgEMjnBVLrra0zW1PDmBi+2
 Ww2NApoVvuY+VL/3oudR0dVxgUHTXQzwwZGvzeE21wtC4+Ax7CldCzzngAxZMPUOYkS/
 goeDJigluFyMF1XLJdwIjWzQmooArb6OnQUaxrc4X0Up3SwP8ymUphVT3fxUzm0vFWHQ
 bb4Q==
X-Gm-Message-State: AOJu0Yw/Hbj3oHpxKRj4x6KMI3jI2uYnCSz6J9T9eF5bXOdlp2Ok8ORJ
 ZOc9LHQW+RlGd17e4PLS3NmaPxTGJnbX2DVoThJ6Ja4pl1GzNYispukszNMCnxSeEt0cz0OdcH5
 py/rwZ7ccqtLy+1+5KYPgoEGPNQ/3v92j3ixmHRm+MpXWgEt/HWBlup8=
X-Google-Smtp-Source: AGHT+IFv0UdvNsYdyrNjpzTJDtM0TSFV6oUxVg9831YnAFaEylTartxyF072bX14/YOmWNXqYHJjOSxHRR/dorkuIAvekwfQmsHe
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1786:b0:3a3:b1c4:8197 with SMTP id
 e9e14a558f8ab-3a3b6053e14mr54866705ab.23.1728794942256; Sat, 12 Oct 2024
 21:49:02 -0700 (PDT)
Date: Sat, 12 Oct 2024 21:49:02 -0700
In-Reply-To: <Zws-so-6TnY_FUFH@fedora>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <670b513e.050a0220.3e960.0033.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 qianqiang.liu@163.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-by:
 syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com
 Tested-by: syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1szqXZ-00068l-4F
X-Mailman-Approved-At: Tue, 15 Oct 2024 17:53:20 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: use-after-free Read in
 jfs_lazycommit
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
Reply-To: syzbot <syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-by: syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com
Tested-by: syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com

Tested on:

commit:         36c25451 Merge tag 'powerpc-6.12-4' of git://git.kerne..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13d1bfd0580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7a3fccdd0bb995
dashboard link: https://syzkaller.appspot.com/bug?extid=885a4f3281b8d99c48d8
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
patch:          https://syzkaller.appspot.com/x/patch.diff?x=10951087980000

Note: testing is done by a robot and is best-effort only.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
