Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8646879A38
	for <lists+jfs-discussion@lfdr.de>; Tue, 12 Mar 2024 18:08:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rk5bs-0002IU-Vh;
	Tue, 12 Mar 2024 17:08:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3arztZQkbAM8DJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rjJgq-00067X-2r for jfs-discussion@lists.sourceforge.net;
 Sun, 10 Mar 2024 13:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E7Pfnp5j39cfC/fSqSZPc3kGFvrwJmOZXFYwh42T5KY=; b=aflaoIy4nJXktcDSZvbFThofVN
 f+AtBxTMwpevZhyUuFUtItOGpPtm546cEOweMj3DNXyhT8/y+Y8+qRfoW0QUe9MTmejMICmSDVXI5
 KaAMKh7ZceMmPmzJzIa7lClPt68hCUWgh34oEZ7T3b9OdCtKyNXT1tWEDGckQ8JsQiEM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=E7Pfnp5j39cfC/fSqSZPc3kGFvrwJmOZXFYwh42T5KY=; b=E
 6PNiP/AmLhOlZsUZn2kQn2WQ2ix827nhPpg4hdVULuFaX4i2/IA6WjwGDb3ObnTSgz40gkko7HOY/
 4sLMoFWAzzC4JnKCwgAaWOetf1PyxCjsGBzN6ZsYIe9a35Xshdz9Rk3XyNcTUCPenaCgNAzpoYuXL
 4ajqnx9Zm7paDRpU=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rjJgf-0002Gy-LQ for jfs-discussion@lists.sourceforge.net;
 Sun, 10 Mar 2024 13:58:12 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-366483b78c4so7246385ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 10 Mar 2024 06:58:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710079082; x=1710683882;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=E7Pfnp5j39cfC/fSqSZPc3kGFvrwJmOZXFYwh42T5KY=;
 b=jFxonrz8wmnBJsbM2YFcqBErCXGmjPMH3/hT7i7bhSkkltAUWAlB/+Abbc2p0RQxaJ
 yChg79SWzN6cXia4BE3t3kBCIww5mKX3/cjevd90VZn+QGnyCrjoB7oK+q2X/W4MOk4S
 4xoiQlSu4XomMe1uY2BXmgHTWRQrp0nlDkw2dQMLhMcvtdcG4X2xBt7663+0NYGPoG+c
 HpfjuTPl0KQasIAetcllFBDd6xc4ZKH1EbHIVoj1Uhkj8R/kWzCyQOYBObnEtX7PGpz/
 Hv/aJIf7V91ieE+MSclM9gDxcz8Ld8Wj/GQPpv/kHXeMZgRHRPb11BPTnfslWOk14hnC
 9YNQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtF5wkUFlPjOlv6vaHrC0plBY/8RCmogiDZZfu2khaB+93I7+s8qYIljL8Il8TzJlMQowMBZLZ2cbGbILN45UzJHlmyplrDlluh4N6Em7CzcaO+rA=
X-Gm-Message-State: AOJu0YxDsUQ7rs6Xe4JGag3/ypVZ56HLWFwYydJrMo5srNw1uLJt7qKR
 6fK4TH6VH7vvg9avM1WTsyTp43zc/gq3Dkir8JPOcySg92nB9qFbWAZ2naQvm/2P+rZHOxeeJpW
 LI9WIofSiO1mih6/oEZZMWqUXb1hrsQepUjy+VHb+v76B82YxuR5WCR8=
X-Google-Smtp-Source: AGHT+IExp4lwXhNhAd5/3buXSf98psR5D7lEbmBh/I8nG3rHvlv7l+v7cW1K/yhJZmdwAlLr/Tjob2ioIYNPPYX5UR/n1ISmSGkT
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:214c:b0:363:b9d6:1261 with SMTP id
 d12-20020a056e02214c00b00363b9d61261mr309014ilv.0.1710079082223; Sun, 10 Mar
 2024 06:58:02 -0700 (PDT)
Date: Sun, 10 Mar 2024 06:58:02 -0700
In-Reply-To: <0000000000007898e505e9971783@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000003becc106134ed015@google.com>
To: axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rjJgf-0002Gy-LQ
X-Mailman-Approved-At: Tue, 12 Mar 2024 17:08:16 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] BUG: unable to handle kernel
 NULL pointer dereference in dtInsertEntry
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
Reply-To: syzbot <syzbot+c853277dcbfa2182e9aa@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16cb0da6180000
start commit:   a4d7d7011219 Merge tag 'spi-fix-v6.4-rc5' of git://git.ker..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=7474de833c217bf4
dashboard link: https://syzkaller.appspot.com/bug?extid=c853277dcbfa2182e9aa
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15cc622d280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1762cf83280000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
