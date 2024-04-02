Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC88895549
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 Apr 2024 15:25:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rre8s-0001UT-V1;
	Tue, 02 Apr 2024 13:25:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3rv8LZgkbABUDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rrdda-000065-DB for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Apr 2024 12:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dDFD6hPb2m34Jatgwto+6Sh/QU8P295nFH21ySfga5U=; b=I7Et1Bj8cqrcd6e1nQuZcKG6c7
 Eirtu4RlsIrlkWBaFJOuOHayfZi4TjQGypkn+QbF9B8tpnk5qdXKYi4nXO0PIGZRJucUfesaLXg/U
 w2sLglR0zZzOgH/4sOOjQjwnJJFIsM6M7Xry33OT0oHtwHblgD3zREou06UMowf/nHN8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dDFD6hPb2m34Jatgwto+6Sh/QU8P295nFH21ySfga5U=; b=F
 rDbRXgTx5tdLh4kb29TIkyB2fxTf4OViyzvCNEoCWEE6oDklYauWzHJ8qII6oGWXxPa7RFjHZonuI
 eb8UnsV4qfT2vV1kHkSTw+fjBSiy1hphMeip5AaBEBmolYlWA+OFXJag/+D43d8TziXfKsH86+TQS
 aR5DLYOMh/uamaGw=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rrddY-000888-Gn for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Apr 2024 12:53:14 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-368a41081baso48475625ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 02 Apr 2024 05:53:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712062382; x=1712667182;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dDFD6hPb2m34Jatgwto+6Sh/QU8P295nFH21ySfga5U=;
 b=O76Y1c3L45LTk5WnzllSfiX85cIRwVXLR7Frar2+Ny7YRDDcGv7uK1mpYF5DFsZUcK
 ofj9Yj7zd+RtsssRhW5hOJwA+oP8SGYQte2dx+rZxOfBeoP5BddvBq7ioWRrLL4H4ucl
 TF2hSfMHr8YbF/RCb0dbMsAT0WUoEACs+SZih9fpUyJgVlR8YiFfYIuQlQ6Cg6mvLSkF
 0UfgILvCFWvHsCXlg802DG0n6RVF8MtbXeMXTilkzsWcQ5F/F+twJdcgWKDlYUJTwEMK
 /hWXNoO6Auh2HT/tnAmmrLJlyMli2itzUwxLls3IcH/jxPG6yFtIQx3McA2YEZ3myyff
 X2iA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWF+t4G+dg6V+lpl5dDhBv33rMyXtOcUgMTwZNWIudvF9L9KHKrKuH7hanTt15sd6WbxBmk94KhyNx2gIR0qjE1o+cmnyslXuu5t5+sYm9Tg1DLKrk=
X-Gm-Message-State: AOJu0YyYY6HIB/bIKhDdY5VDsGd4E+E7zLuxLmdqw4qfJX1Znv1Coc9f
 nMmbKeoT1GDAXKZJfTmnaFL36+TFx4cIzH6vwccPSRpVsryxBhKcXnMabSR0r1UnDyX/gM/taBC
 A9Oj/Bsr6o0xwkyKCgKOu+O5Th1+tASJasHSfioaIb39qFEGjBJWF74M=
X-Google-Smtp-Source: AGHT+IENf7UMfM52wKZGqfUzY+0pbi7hSTUlEJlOvyacgpVivWnyIVILUDtKttcgoxSiNmEyIDZASTB7sqvysDNHZGqOVMBszIjR
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:218f:b0:369:9361:5b6a with SMTP id
 j15-20020a056e02218f00b0036993615b6amr458434ila.5.1712062382117; Tue, 02 Apr
 2024 05:53:02 -0700 (PDT)
Date: Tue, 02 Apr 2024 05:53:02 -0700
In-Reply-To: <00000000000082de1c05f81467ed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001ea9dc06151c9630@google.com>
To: axboe@kernel.dk, boqun.feng@gmail.com, brauner@kernel.org, 
 dvyukov@google.com, hdanton@sina.com, jack@suse.com, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, penguin-kernel@i-love.sakura.ne.jp, 
 reiserfs-devel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, torvalds@linux-foundation.org
X-Spam-Score: 3.1 (+++)
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
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1rrddY-000888-Gn
X-Mailman-Approved-At: Tue, 02 Apr 2024 13:25:34 +0000
Subject: Re: [Jfs-discussion] [syzbot] [reiserfs?] INFO: task hung in
 deactivate_super (2)
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
Reply-To: syzbot <syzbot+aa7397130ec6a8c2e2d9@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16799ab5180000
start commit:   ac865f00af29 Merge tag 'pci-v6.7-fixes-2' of git://git.ker..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=655f8abe9fe69b3b
dashboard link: https://syzkaller.appspot.com/bug?extid=aa7397130ec6a8c2e2d9
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1669644de80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=137d7db5e80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
