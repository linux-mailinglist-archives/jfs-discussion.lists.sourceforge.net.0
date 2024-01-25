Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9867983C5F1
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Jan 2024 16:01:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rT1E4-00006M-Kr;
	Thu, 25 Jan 2024 15:01:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3B02yZQkbAJ4QWXI8JJCP8NNGB.EMMEJCSQCPAMLRCLR.AMK@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rSyO6-0005eR-Da for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 11:59:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X/iub3MHAFwcdo/Gqv4i8H6fRbSsG4isv2FzsUCWJ2Q=; b=GsoC+GwWcgjLCVAEN8MQjVj/yX
 1PHxf7c3AWHBhKzVd2+NJ7edamx7jXtZisuP+2rTWXlBZNPkdff4M0HuJ1IBMr/wrK4cFQOvDLH+V
 0/T0rxu27If+Anav37TrCssavxNbInVLNVrjrDngTseXCuUXkTdoJghieIFhtGpqy4Pg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X/iub3MHAFwcdo/Gqv4i8H6fRbSsG4isv2FzsUCWJ2Q=; b=O
 cnTqgiC67Pqc0nBnokS5OQGyMT1KRDggTCht3upaDMtDDg3Ehs6tpASZsyWTp4jAhIgUB0lqqES7A
 25Pf2pzhUb4luJk3bwjneRcHjD3ry5rKare6fTmPrQ3qN3r6Vm+jdrWDVTzdn1o5+x5qZ1YrLIlaE
 IBeXQs5Qb1hZhLnk=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rSyO2-0006cX-66 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 11:59:18 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7bc3dd97ddaso694249039f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Jan 2024 03:59:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706183944; x=1706788744;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=X/iub3MHAFwcdo/Gqv4i8H6fRbSsG4isv2FzsUCWJ2Q=;
 b=fhOMi1QdaYD2SvpYDQbl7Ng2eFhwkWEu3k/uCPgL1zzueHjp2O4AT42Y1P2dWfOmMp
 mJXzKgSQwlHGgpcudsdvVoiPtCKYwBDXAxRedVihAidTMSSn4eMNIKfI0sDz3mwEjox0
 kXV/cZ09qpF+oM8siAdFN7itQr77/+MwSpKnRNwpN3V4D6EGZcYUhhHRNLFcpC6b2cvl
 BdKx0g1bmehSDljKebRh6bWkCkD+fOxYuc3ppsUXLusrsyaYjvkW6crfz4HTt9kl9KA4
 P9v3WdsX9BdB1I42i/LRC8aQ4pEvWDEjjLpBXOA7xAu/H8XJImbvIgBefuBImZn710RZ
 8Iyg==
X-Gm-Message-State: AOJu0Yzg1tHEE4PLkW9zZOr/T9Jah/BJqpO9+Hn2p/J/mNc7gBPeGHoi
 tPBdSBdMc2qppgfPj+wo9r8LbRtUMGMoSc/FL8fwQ/IKB92ghqUO6qEl7BOfYGVHk746nIc80xt
 gD01e+9ugMAiVvALhup8CnzVBkSiFUintT0KUQiPaUMdxFsz04FiKUnU=
X-Google-Smtp-Source: AGHT+IHyn2Qwd5HMJ7IxpvO0WYV/RjdhuSh6ltkRkTWpD1C389xewU6uddZnAn6Y8UCvfgydKDiM2O+RIWXKLEy9yto1g0WIYVHI
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1921:b0:46e:d83d:472f with SMTP id
 p33-20020a056638192100b0046ed83d472fmr57559jal.0.1706183943905; Thu, 25 Jan
 2024 03:59:03 -0800 (PST)
Date: Thu, 25 Jan 2024 03:59:03 -0800
In-Reply-To: <00000000000083513f060340d472@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e5e71a060fc3e747@google.com>
To: axboe@kernel.dk, brauner@kernel.org, hdanton@sina.com, jack@suse.cz, 
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rSyO2-0006cX-66
X-Mailman-Approved-At: Thu, 25 Jan 2024 15:01:07 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in path_mount
 (2)
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
Reply-To: syzbot <syzbot+fb337a5ea8454f5f1e3f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13175a53e80000
start commit:   2ccdd1b13c59 Linux 6.5-rc6
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=9c37cc0e4fcc5f8d
dashboard link: https://syzkaller.appspot.com/bug?extid=fb337a5ea8454f5f1e3f
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17ba5d53a80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14265373a80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
