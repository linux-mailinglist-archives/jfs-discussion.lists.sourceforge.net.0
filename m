Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE9783711C
	for <lists+jfs-discussion@lfdr.de>; Mon, 22 Jan 2024 19:55:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rRzRn-0006Sp-Hv;
	Mon, 22 Jan 2024 18:55:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3JB-qZQkbAD8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rQiwJ-0002pm-Bw for jfs-discussion@lists.sourceforge.net;
 Fri, 19 Jan 2024 07:05:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cHAoXMaxOaUZ8hGAc5thrJTPKmiHqe68fKrRjO5mByM=; b=e6iL4bCXCG1wmirSxuXw/aqpR2
 5uOCVPFKvz2ichRezxB5bQyp2YUw3QEH/WTJlmvYd0TdwTVtJbxYliJx1Jtx6msB1v9OGbhBwqVOD
 lmVojBW1ONMF8hE6V3vuBuMf8n1YNTjxQEV7aCVm3nvv8xQBQhp3XkLRIvaEme9EQhwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cHAoXMaxOaUZ8hGAc5thrJTPKmiHqe68fKrRjO5mByM=; b=k
 /NtmebMkLrcSl/OHEtGog7fRsQ992xmHd9r+lKUbHJQ/7iH+cV6734bvHJqXkh7rcYWO+Q+IzVX3S
 pVl2ZN+IlG/bRtkAz9sO8IbovYxE/KMsiGpAw2VxHgF0vu5M2AS0C/PZ7LP9jdM+X7ye0wBN/GVfK
 puVFQijkQDS5w3Fc=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rQiwH-0000EF-Tf for jfs-discussion@lists.sourceforge.net;
 Fri, 19 Jan 2024 07:05:19 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7bf5fe1ca9fso76666839f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 18 Jan 2024 23:05:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705647908; x=1706252708;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cHAoXMaxOaUZ8hGAc5thrJTPKmiHqe68fKrRjO5mByM=;
 b=OnN/SA8ldwqMaVIRnU8+1H1L4shHPdc1Hvi7pW0q4j6HD3ueikN0enaQbaZyN0Ids1
 z6cmRE+Ima7NYmwnLeAbtwP/hx4an8r+4v0gwqwi6RJoYQ14M4xrIVmIEDj9wAD6ClUl
 +7ASsNrRfcYp85QNn/uNBuJecVe0t30+Rxc8iRWxMZLK3bSqg5qayMkaiYpNYHV0w1Ao
 CeaGF6vYpCxsN7WcpJhVKrlB2yFSm6j7CdXH2X5iDZIbIIjRCtOFpx6kCgKc54l39FxL
 6Anx0IS3c/im+jjRE2rLKp9H8ksPHBjrVAQ35Ot8lwvcSOvZEyALJc86ieUJOWr7rPLW
 rFlQ==
X-Gm-Message-State: AOJu0YzT/azHjJZxGW/24+22ebOtOWp4bTdjjBvDLM1xZMA4+vZGm3iq
 p0PtVWBpYq9lrL+d4d71prxzbV3b6eepNS8qTgxt2My34Z00x1HdfoR6mxzUUkup90UKa4rhHpV
 dr5LJUettg1iSX6VrkbvriirhxZAenLHxb1qNaGBSrWxDCClMRcW2Cdc=
X-Google-Smtp-Source: AGHT+IFxmbK7qK6jiqTPmsRka4RwZvaBVbSkxnFcVZuSGO731Si1AsheewJm27UvDyBlCoamByT9xUL0ORVqiICJsAtkOp3Q6aS/
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1a8e:b0:46e:6716:e6a3 with SMTP id
 ce14-20020a0566381a8e00b0046e6716e6a3mr7025jab.3.1705647908011; Thu, 18 Jan
 2024 23:05:08 -0800 (PST)
Date: Thu, 18 Jan 2024 23:05:07 -0800
In-Reply-To: <000000000000e38e4105e9d6e741@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ab49d0060f4719a4@google.com>
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
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rQiwH-0000EF-Tf
X-Mailman-Approved-At: Mon, 22 Jan 2024 18:55:03 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs] WARNING in ea_get
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
Reply-To: syzbot <syzbot+5dd35da975e32d9df9ab@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12b95fdbe80000
start commit:   49c13ed0316d Merge tag 'soc-fixes-6.0-rc7' of git://git.ke..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=5dd35da975e32d9df9ab
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1173d7ff080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16a2ea70880000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
