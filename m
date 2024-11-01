Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C24B9B9323
	for <lists+jfs-discussion@lfdr.de>; Fri,  1 Nov 2024 15:27:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t6scG-0006S8-5M;
	Fri, 01 Nov 2024 14:27:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3UqskZwkbAHsrxyjZkkdqZoohc.fnnfkdtrdqbnmsdms.bnl@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1t6olK-0004Wz-FK for jfs-discussion@lists.sourceforge.net;
 Fri, 01 Nov 2024 10:20:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3eGCsrach8NHm1xot36+n5aQ0Y9q1AeV+fvWgjGpOpI=; b=EBt/+npWZS5dv/JI78bo4Nbv5U
 XQpojOvv1ZP8YBgR2lTkI17N6vkf+KbNxGS6c8nllvmR5AL7xzLR3u0h7F1Wxja1Um104zm9U82u4
 rst5IDA2zDcqvvyKVosUCgMva/zFz+yfBFUXAVmYZgEfoNANQ2z7aGIhuN8+AHXT9dsY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3eGCsrach8NHm1xot36+n5aQ0Y9q1AeV+fvWgjGpOpI=; b=W
 3uUE3j3mXUK5WuEMIm/eWLgan/J+wMOMcYwJFOhTVFeGGuyHQAs01LF8i91iXJs5zpqJy8fiuFGau
 +znZjW9QBzPhYUy8tPJyPr3mTQ7QFEaCxAhpl7L/tqIm61vVUvLBnbIHYvVwCZmU+Q+QtNkkCoyA6
 kvpI6m4OW6MU7v9A=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t6olJ-0005Um-QC for jfs-discussion@lists.sourceforge.net;
 Fri, 01 Nov 2024 10:20:14 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3a3b7d1e8a0so17199025ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 01 Nov 2024 03:20:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730456403; x=1731061203;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3eGCsrach8NHm1xot36+n5aQ0Y9q1AeV+fvWgjGpOpI=;
 b=lX0xtdQvdEAHEWGyl/ErWt4kPEDDFaftKzeRVXqPDiuFZ0Tw+Gcr3PCJIHkhlUHtK4
 2Gbn1vm3UzmCZ6iV9DoGqk/3rOPX4omkr94QMwbqS/7ehsLks+55NTclg+nIi9m54TO/
 /9BOFqSMJ+5nw6vxeZkGEKpr+uweArY6jzzP07/4F6ARXmLisk3U68i013NYgzq3EM5w
 G85dv+i2IwRrqmIZU1SlfveSPxRvXgJsUX5nV8j5lVatX+Q8QERIeuDOoO4M7pNZNBlJ
 pAXbuImTrt8ES6miCbfJDvRiEPR0fZIGEWuN6wAl/2ykjngreTbjMQXgdr6VAM8vM9sK
 ui1A==
X-Gm-Message-State: AOJu0Yx2oWCWS9Oo1TeSdFShsYcbbitvLQ3tqOqp73LIwzVuVaQkH+j8
 lDBw4h5TKUn1AT4dzJkTy1qsE5Nk3k/Cgb6+y7tZob2S6W4KeOlhMh2myNspxCSjzEm03bKovtk
 ZG2qY2AFnN0o4UMlqaTNT5c7qF8WiaXw75duev06yTPQNNT4fqSb6aD0=
X-Google-Smtp-Source: AGHT+IHUsB82AaDjlT/CUOuqkmMdDgqswU2rNhtr97SeQuwsmoASOHwnTSF3josRU0bHWz0+r3ZbMdkjgaXa8XaBNi9BItssMb8F
MIME-Version: 1.0
X-Received: by 2002:a92:c24a:0:b0:3a0:9f85:d74f with SMTP id
 e9e14a558f8ab-3a6b031a257mr35476215ab.16.1730456402996; Fri, 01 Nov 2024
 03:20:02 -0700 (PDT)
Date: Fri, 01 Nov 2024 03:20:02 -0700
In-Reply-To: <20241101095955.9786-1-zoo868e@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6724ab52.050a0220.3c8d68.0886.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, skhan@linuxfoundation.org, syzkaller-bugs@googlegroups.com, 
 zoo868e@gmail.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-by:
 syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
 Tested-by: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1t6olJ-0005Um-QC
X-Mailman-Approved-At: Fri, 01 Nov 2024 14:27:05 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbFindBits (2)
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
Reply-To: syzbot <syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-by: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
Tested-by: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com

Tested on:

commit:         6c52d4da Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=116eb2a7980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=35698c25466f388c
dashboard link: https://syzkaller.appspot.com/bug?extid=9e90a1c5eedb9dc4c6cc
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1293e6f7980000

Note: testing is done by a robot and is best-effort only.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
