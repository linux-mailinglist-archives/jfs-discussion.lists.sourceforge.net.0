Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C613B84B85C
	for <lists+jfs-discussion@lfdr.de>; Tue,  6 Feb 2024 15:50:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rXMmC-0003TS-Hd;
	Tue, 06 Feb 2024 14:50:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3WPzBZQkbAI09FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rXHnQ-0006ud-6D for jfs-discussion@lists.sourceforge.net;
 Tue, 06 Feb 2024 09:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H2L1A6fmofMmSXCOvCOTJZEDDig3DubXgKsoiNA5cGI=; b=AlE2rTA7w5J4oKbeebfCGH1bsS
 5ee983uqXzvpFjqvDM1pmlJTmrF57FMjdNLh3o+o5eRj4L4317Naw2nAd759xcAcFKUeO/EOdFxC8
 e/jMghZ6LgbGgd30pPMcmELZ9yV0wMKpnSonMsuCv+JdYemgkQBFRoT/4nOWOLye+l1k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H2L1A6fmofMmSXCOvCOTJZEDDig3DubXgKsoiNA5cGI=; b=a
 EyWdSKIuIjSdiz4bFe04CzmbTshh5lnBEIsWAgpWI2xpbThbm9ZSXVX4cpovGTYMJCzegc3tActg/
 f5k7bI3sNnB9p0izAAZRHTh/Khg3HMJtm1Cz2SaY5tuXcC1c2TbXiJ+q7p2d1QkQZoXBEwSh2khM9
 H+r3Wsd8Ko1g2MUE=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rXHnO-0000LZ-6A for jfs-discussion@lists.sourceforge.net;
 Tue, 06 Feb 2024 09:31:16 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-363bc4a8d38so25924695ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 06 Feb 2024 01:31:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707211864; x=1707816664;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=H2L1A6fmofMmSXCOvCOTJZEDDig3DubXgKsoiNA5cGI=;
 b=dN24j8nAbSjkIn5UOrIsE6tM/qp2L3oTjZgXSpJzlMQQSmBmaa8nKnpm7NLFoTRXLX
 tGXpar51WSHTUPO0A5XRD/Sal0R5i63zfpU9Q5EM+fokhccUk29InXTj0kpPZIeUAy7t
 Af0GjhxR1uxih2EDrVfNOrJCynorz4dqdOXKv4qFNkVcpjrZpQwqaLhoAA0dpp2qcZxL
 TSK9M7nV7JINzZ8jqNP+501zsg1C9eHAOVHSIKwF8OEFTZkpEKRrGER3IPuVuzJ2w3w/
 lDBpsFApwp1vvjvwmAKfiG5C1aihAE2V2JV8Khx4wYCz71rqhZmHXRU04aMD5zan3kio
 BpqA==
X-Gm-Message-State: AOJu0YwEsQDxnZW5EtHY1Bp4dIFhste6iM6zO/ttvWF5THpA9Wl+dVAJ
 7dGI38ly9uLQM1+zOojgAREi8OoQU7SgFE08cYekox29WLrjOe7Ma1B3Ueq8l1WtFhq2Scu00Tl
 ThEvsttwBxAa5wIDaB1n9SW8A1lK5OXTe3skiwhB6WZM0YLsAA5uZ4ow=
X-Google-Smtp-Source: AGHT+IGkA1pN6H7fqXDGAhmqsBYCD3ZyAqAW9h/Bl5enO4hn8vPkVckgxnIGxdeDch62mxmyUlU4QyaZeKkhfIIKtkA4EcMM5f6E
MIME-Version: 1.0
X-Received: by 2002:a92:cd83:0:b0:363:7bac:528e with SMTP id
 r3-20020a92cd83000000b003637bac528emr147749ilb.1.1707211864284; Tue, 06 Feb
 2024 01:31:04 -0800 (PST)
Date: Tue, 06 Feb 2024 01:31:04 -0800
In-Reply-To: <0000000000005a02da05ea31b295@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ba28410610b33cc5@google.com>
To: axboe@kernel.dk, brauner@kernel.org, ghandatmanas@gmail.com, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mushi.shar@gmail.com, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, syzkaller@googlegroups.com
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rXHnO-0000LZ-6A
X-Mailman-Approved-At: Tue, 06 Feb 2024 14:50:19 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbSplit
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
Reply-To: syzbot <syzbot+8c777e17f74c66068ffa@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=110ffd6c180000
start commit:   708283abf896 Merge tag 'dmaengine-6.6-rc1' of git://git.ke..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=26188a62745981b4
dashboard link: https://syzkaller.appspot.com/bug?extid=8c777e17f74c66068ffa
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=138fb834680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1399c448680000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
