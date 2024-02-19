Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA21B85BDE7
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Feb 2024 14:57:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rcQcV-0002B1-3A;
	Tue, 20 Feb 2024 13:57:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3aebSZQkbALYouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rbwAM-0003g7-Pk for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Feb 2024 05:26:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NOFoFESmvlklSQbncNSApOvu+sIjkHC5FQZ3He6zZio=; b=WHpxdEwx3myOomblAqbYXHGP14
 1T2g04rsqFJGhY0PrBV/Ry8Xb3WDmqxoJez2vgZ3JW+kMCzFPIwGvyf24c7eq79W+vZzwFsmxS5YD
 dKDf+v620OxTWbf50DTWKEOfexKG9WnCRDKI8MBt5wchXaU8idW/EovrAwX/PjYYyB+E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NOFoFESmvlklSQbncNSApOvu+sIjkHC5FQZ3He6zZio=; b=X
 LCA8YRYv7S7n2SgUF/ZCWxGcK9gki8K0LQ4r/HKIzTmYEXWu7BLVn3fZVtPS3DGKN79r6xttXMTWB
 MzL1Wdq5uMS0JMVodXG3oGzY3INL8NHpmY5ATMPXDXorxJRKPG1wd4Ax299spE4AL9c2yV8QBFd7r
 crkxqJRCSRASHHTc=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rbwAI-0003HQ-62 for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Feb 2024 05:26:11 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-365026bbf10so37419695ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 18 Feb 2024 21:26:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708320362; x=1708925162;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NOFoFESmvlklSQbncNSApOvu+sIjkHC5FQZ3He6zZio=;
 b=GmdNJPNU8qXM11gWEqbW5aHCMHKZZKuen6QbBPQJenH7X+yZwjFRkVZdk+LnsCvozU
 zx34nayZ9UtRpR200RqPd/jqiVu+c9NnkJUGIK0SdwxSNqQ2YgRquBibl7kXjRAAKQgr
 ACdROnulwm9I1ivdTVGqyle3VvbwEpvqHGf82XrX1URi06kRKgo2KbUUr0Fr6zHtLkAy
 q8JoDOoyM3ANET4ipG2tpTnJDX1oLQBUwqPLfUEXZ+0iXSa0cpVILnSqbECmsETwMhMW
 v6bjNTxB9HXxuiIVs1wHvVor5WYvXXWfparqk71vsbqa2oBquRWgJauiOlG1/gRLkG/N
 VsaA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXxLuYsh+KobXEQGvURydnpCe3+J3LKylui37Wkg4yicktyqtuh9TMZ3uJYazHlmUJaiH7+LSyIPOgsb9PEy0OsajlGedagbahg8hs1INfqTpN2bOY=
X-Gm-Message-State: AOJu0YyhkKO91O25EwRyglKA00vIovWYNxI7H5cwtHcMwseMZ4YvdFBE
 bN1rDKlwvw2EOfoOZhb2nDjMYNncVYXCpi+xQaqVmjADgQorSHvKuzMmLncfGorjHD8NW1tVLuj
 g+SB+pQSwT/wjraHVoaMaVPCHD0q5dIr8qajNV8fjaBOpYoZYP4ajvRw=
X-Google-Smtp-Source: AGHT+IHSD6r+WANqHstIaCKHCJUTmPR9yzzjf/m9rmHwC3SEFCPekxM9WqAzHDkGdt/XQG/5sU2TdpvwzirUzbIFiKnXK8KWO+xb
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a2b:b0:365:3328:6324 with SMTP id
 g11-20020a056e021a2b00b0036533286324mr99180ile.5.1708320361966; Sun, 18 Feb
 2024 21:26:01 -0800 (PST)
Date: Sun, 18 Feb 2024 21:26:01 -0800
In-Reply-To: <0000000000004f9dd605eabee6dc@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000056790c0611b5548c@google.com>
To: axboe@kernel.dk, brauner@kernel.org, damien.lemoal@opensource.wdc.com, 
 jack@suse.cz, jfs-discussion@lists.sourceforge.net, jlayton@kernel.org, 
 kch@nvidia.com, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, willy@infradead.org
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
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rbwAI-0003HQ-62
X-Mailman-Approved-At: Tue, 20 Feb 2024 13:57:13 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in
 __get_metapage
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
Reply-To: syzbot <syzbot+84c274731411665e6c52@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13310158180000
start commit:   1b929c02afd3 Linux 6.2-rc1
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
dashboard link: https://syzkaller.appspot.com/bug?extid=84c274731411665e6c52
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1702dc54480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13b9eaf4480000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
