Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7A4870487
	for <lists+jfs-discussion@lfdr.de>; Mon,  4 Mar 2024 15:51:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rh9ep-0000s1-Gi;
	Mon, 04 Mar 2024 14:51:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <315XkZQkbAMo8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rgngC-0002y9-Rg for jfs-discussion@lists.sourceforge.net;
 Sun, 03 Mar 2024 15:23:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y2dolGX8lN9vIwo+jPRD948sICXcwQTFKCQ2jT8zcK0=; b=BxFWKnmMNO18KaSfHpTW1itzbA
 J7MPxGQt9o3sdeOcOCWSDV9b4CocXMVG/Ky2+Kf9WMJ0rH97L7AdSy4PM4QuVnIGRyrKdZ7BumhXL
 WReeQWkXEsH3vFe2XH6hk2i06pMSREnPsFnpfLyZpm268ABl0kmV22zvOHo+y6fSawDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y2dolGX8lN9vIwo+jPRD948sICXcwQTFKCQ2jT8zcK0=; b=Q
 hxYadTKcFtfl9WFHQXDgZTVugUqZh3HRQkPoKMGZOKjCtBMx0BhHrJF+0NnXNzrOG8QQAmwglVPRe
 1rXrAITOIa5K7WcZno2tVt9tpHd3qQYA5pNx7TG3NxvdbBy7hh4UQLqOQTpHr9aRbG5dVHWl20iIU
 BmwDdsyNLTXncjgg=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rgng7-0005Fy-0u for jfs-discussion@lists.sourceforge.net;
 Sun, 03 Mar 2024 15:23:09 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7c00a1374ecso327017939f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 03 Mar 2024 07:23:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709479383; x=1710084183;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Y2dolGX8lN9vIwo+jPRD948sICXcwQTFKCQ2jT8zcK0=;
 b=lX8wamVQgYixzHerarNCWaCNllambZHoRTa50zjn5l6neJ+ZCA9K4ZlExRsBLsso/b
 c9t7QS5j9HACC2IvhFZlNFwCFHgu0L13QwSywmd6Ce1Sm0W8IO5FiVXvY6KzU48W1YfR
 9b2iNvZE3Gmgo3BqDOvvoMokp1hWiZ+efsU+LNt9gcMeQbsDLVf9dTTjJpcyaZOZMy8b
 QBp3t6QDXeWNcy6rz4snCxwFFehQHl/Xwd7Gzxv9rxPyeCYDtywjwH6iOR03Xu1pYpG2
 gAowxEN3lJuyqtJv/AUMIRwSNNVLXw2rlfcdeD5EzceGtRkZZF5Y4Z3oyqxpuaY618zo
 kEyQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+GycZ3ty47M8B7MIQGfFL5SngeTGanANIEsnOV1OdzpPC9nVLZlBk9/Xma6qxF+gLCDZfKmhSMLZY8PKuukrn4TD0zz86Bz1utntZ1MxY/V05dg4=
X-Gm-Message-State: AOJu0YzxC6nfmpZ+BB0q3lPOfIXtDoCD5pxztB3tBcY0VQMx4kjcksbo
 7LW5mjr/BQjSJWS4IZ2FfqCD4rLBRI2WyiR4YOzilH1TNlNRGMNX6V+uEa0HI+3xVK0HVckNaeL
 LPGz8mJarqJMfhHUCwK8t4EFDqNyK30N5nO6R/BMBzIXe68awPPDezXk=
X-Google-Smtp-Source: AGHT+IFzHZd7RM8yH3KL7k0MA9PZACOPNm8lvtJ9xyqAE32YyTytIcecm/mi22z95pQbMVo9034e/Kg3RnqF7EYcTHBFgASo6zkb
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:b26:b0:363:d7d2:1ddd with SMTP id
 e6-20020a056e020b2600b00363d7d21dddmr343423ilu.0.1709479383496; Sun, 03 Mar
 2024 07:23:03 -0800 (PST)
Date: Sun, 03 Mar 2024 07:23:03 -0800
In-Reply-To: <000000000000c801280606a82e95@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006786560612c32ff9@google.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rgng7-0005Fy-0u
X-Mailman-Approved-At: Mon, 04 Mar 2024 14:51:10 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: trying to register
 non-static key in txEnd
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
Reply-To: syzbot <syzbot+ca4b16c6465dca321d40@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14e0e374180000
start commit:   c7402612e2e6 Merge tag 'net-6.7-rc6' of git://git.kernel.o..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=b6602324d4e5a4a9
dashboard link: https://syzkaller.appspot.com/bug?extid=ca4b16c6465dca321d40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16941c8ae80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13d9c3c1e80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
