Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A863D853C21
	for <lists+jfs-discussion@lfdr.de>; Tue, 13 Feb 2024 21:21:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rZzHD-0002Jf-9W;
	Tue, 13 Feb 2024 20:21:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3BjjLZQkbANcLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rZpD8-000220-GP for jfs-discussion@lists.sourceforge.net;
 Tue, 13 Feb 2024 09:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ejmJHoSutOTLtAXSDyUaj9KDqD1qf6XgyfbLUi69VDI=; b=L/y1kmAJggMyPHy8FdC29F05Z9
 mvickCaZFgjKk/4Ic16whptwbMDVfcH8SdtFKOuJTbdSHAnN3JW9wfquyP9w1quRzApzKn+58ykbq
 wDxc8QsCsKVj6siQGkh4WANjYyNhybH23DCQL3t19xskVKfi9rzRWb9CXBO9JoMqyQZk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ejmJHoSutOTLtAXSDyUaj9KDqD1qf6XgyfbLUi69VDI=; b=m
 ZKVqKryRrpWHexjqJSGaD3hUbhHuj4ymxIcRr+riGuMhdpq7UQX6iVV8gpMFx1kC2fjY+n+Yp8QUN
 cToXs4II2fTpup/n+Kfd+/Ocnie5YApnPJl2ZPP47trmTf5LwMnvFjcLCu1ZHQKw58kopzUEYpINA
 85lfG50OX58lZGzU=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rZpD6-0007rF-0J for jfs-discussion@lists.sourceforge.net;
 Tue, 13 Feb 2024 09:36:18 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7c43aeb2970so331402339f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 13 Feb 2024 01:36:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707816966; x=1708421766;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ejmJHoSutOTLtAXSDyUaj9KDqD1qf6XgyfbLUi69VDI=;
 b=u6q/pB4brUsKi77dcVJvfN2MJ6m1ABCovx0A96cE9OQpRl6CgK4HAUDGcQuikKLKQj
 kioyrDLGEBDOooW7g7Fz3Vgz9BtzT+dqbzl9fb91BrJu3ksWueREh+t3+n4TOb/wqG9r
 5+b58xrJg+xI6mYLKKKjSr2Ez1SBx5O/tV2lbkw6XVEHYQY/W+c4EZiEtyZX8d7YV5fY
 lA4p8iAakFuy9MFklZLNpquHABGthTPJBbrkXC9pYpWzOccehQ4u9rh+onj+v88W12Df
 X+HK27596Hd0P1pEk2iR1CSut843itbd1W3gIkNxas3vLTbOfY+DDmaWyIDStRZYya/A
 1nkA==
X-Gm-Message-State: AOJu0YydkjaHnQUUQpvTSGYOoATZvPfJ4YZwAOIc+UMh9FastkcLv7Al
 R3tmat3acGd/12tM4+E+fpX4u8MLbSE0Gxe3vwMGN2a3vVOXk7KHFLXjJPBPjOLo4HrXhfXmoj/
 R9cipeyyQfGztG0qEfBR65fmcaJDXyEygQOKBjz2QHX8EITw29aq84bM=
X-Google-Smtp-Source: AGHT+IEnypRnnduK0++8Kzb3OZ3IgCZSNrsFE6lWS8ZuFX+JdVG46nZmpYa2s1v0Ens4vt7ghmy7mqj915xOsfZ0xHJrPxrbY6Bt
MIME-Version: 1.0
X-Received: by 2002:a05:6638:6d15:b0:471:107d:6708 with SMTP id
 he21-20020a0566386d1500b00471107d6708mr126223jab.1.1707816966146; Tue, 13 Feb
 2024 01:36:06 -0800 (PST)
Date: Tue, 13 Feb 2024 01:36:06 -0800
In-Reply-To: <00000000000079c7640604eefa47@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000009bd5560611401f9d@google.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rZpD6-0007rF-0J
X-Mailman-Approved-At: Tue, 13 Feb 2024 20:21:09 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txLock
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
Reply-To: syzbot <syzbot+451384fb192454e258de@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1588d6ec180000
start commit:   65d6e954e378 Merge tag 'gfs2-v6.5-rc5-fixes' of git://git...
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=ff0db7a15ba54ead
dashboard link: https://syzkaller.appspot.com/bug?extid=451384fb192454e258de
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=140b48c8680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15276fb8680000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
