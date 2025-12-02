Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B11FFC9D04C
	for <lists+jfs-discussion@lfdr.de>; Tue, 02 Dec 2025 22:12:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=Cx5JK0+nJORSNtzVP65Ko6c5GR9/IUr7Jv0U4xHumTw=; b=TRpRX4KfrX01H6aT4q5j4xKlI5
	KWSdkR1TKaTM1KLh+ejNSDULu9Ye+UFyRWQ6FxPfMrYa2mS0Jf+0O07xWmKQRPQYcQCX1BwdCr1ZM
	hPGCnL1r0gVK+xhB6xoN+JbELkD7njVXm4fhESi3oZCKgnijcCSK/KzvbCpkRb435lOE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vQXfL-0006uA-TU;
	Tue, 02 Dec 2025 21:12:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3PkMvaQkbANEFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vQWPV-0001wp-Jx for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Dec 2025 19:51:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vrTA8/Ib4dqg468mg7sXdU5lKN1300g4eFvAGgrlg20=; b=VrSbDz1lSoaDtIihKHUNgYbrns
 RqIi7U7GVQlySr1znfIvmyAr2TXi5ueDUsIv396ZV71RzYqfb+6gZcUA9hmJgfeNWdxoA795K23wU
 RVD71sIPe9vOejRTFINUz/lERLT5Yiglbe/cRmhrs6elYUkh824rRXKsAblkYDeewvRM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vrTA8/Ib4dqg468mg7sXdU5lKN1300g4eFvAGgrlg20=; b=P
 85fvCikJYa7WCFO5W9jFDEpjeuBtts1JvE0eFPDungUH8kl6zsxFlY0F85lSd8vAVII2+8O1+lxpD
 W36HkfhUKBYsJnHbmMiiyHouTaauYT095vb0CBPzyHz1dwGZHcnxq2GIUKjP6NzfvN2hQ/cKA1EvN
 Cah4WrV5EPBqe+0A=;
Received: from mail-oo1-f78.google.com ([209.85.161.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vQWPR-0001yt-6Q for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Dec 2025 19:51:37 +0000
Received: by mail-oo1-f78.google.com with SMTP id
 006d021491bc7-656ed76017aso248877eaf.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 02 Dec 2025 11:51:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764705086; x=1765309886;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vrTA8/Ib4dqg468mg7sXdU5lKN1300g4eFvAGgrlg20=;
 b=mpjCm1XfXt8aVDKFtCGpqCyAbVXPXt8ds6gNhivlB8FSYiEO8PgTrw3FhiZowHtyBE
 F19BxCpAJgWUuAAeqZJvLPU0AxWhIrnzWSXraKmqjU007wIOausTxEnxW3okSbbc/SH1
 B/IgljXw5vKoiEKAqlekD6+/Bztvhf8/8wsqPJR7tOr28oXOwqkaUYirMwNX31w+ux0+
 9P9n3K7H98hwthmYe1kVe/N9bY6VZz32910RqV1wq+5N+1xAtY+dMsTVJsQf41PHC58+
 FqNCX9vS7hdQ9IAjdPyR11nOs+UnnbxZC7lAU8BzNHl0aiH+154vPOaxpKQGVgJfOi9E
 7oBg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWytgt5Wmp6E1w4H3LV1yVjqEIKilprHOw0xs7LDEB8IrlvU5MEpZl1mnciqrMtzbHCWArmNsYcpcX7hrR0iQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx8ZaESk3qsXYQOD/ktlR6xNn/KEi1dEqL21v4ltN96S5xhAKfV
 kDt3xxx4jQbTmvppzrFB531fu9NO2chwAnU046cKn2idco30zqSdohkvyXkE1YUYnsX6tQNvpMl
 Vglq4f6DKdJ4bv7chkgh0W2MPo5dy0dvLz3tyrknOsFqZQirixP/E9Bj4EKY=
X-Google-Smtp-Source: AGHT+IHSDhpAfgj8NpXYE1+938IBzEeH6v2xujWW6bryC6W1Kbk/To6d4FkOrTPq7It6EsLEB7nSzYosBkgZ0W4B75A5ZUSymq+V
MIME-Version: 1.0
X-Received: by 2002:a05:6808:2f14:b0:43d:2e06:4e84 with SMTP id
 5614622812f47-4535d2f36b5mr2523422b6e.13.1764705086559; Tue, 02 Dec 2025
 11:51:26 -0800 (PST)
Date: Tue, 02 Dec 2025 11:51:26 -0800
In-Reply-To: <690e2846.a70a0220.22f260.0057.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <692f433e.a70a0220.d98e3.01a3.GAE@google.com>
To: akpm@linux-foundation.org, david.hunter.linux@gmail.com, david@redhat.com, 
 dsterba@suse.com, jfs-discussion@lists.sourceforge.net, jlbec@evilplan.org,
 joseph.qi@linux.alibaba.com, khalid@kernel.org, 
 linux-kernel-mentees@lists.linux.dev, linux-kernel@vger.kernel.org, 
 mark@fasheh.com, ocfs2-devel@lists.linux.dev, 
 penguin-kernel@i-love.sakura.ne.jp, shaggy@kernel.org, shivankg@amd.com, 
 skhan@linuxfoundation.org, ssrane_b23@ee.vjti.ac.in, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 4a26e7032d7d Merge tag 'core-bugs-2025-12-01' of git://git..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=111c14c2580000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.78 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vQWPR-0001yt-6Q
X-Mailman-Approved-At: Tue, 02 Dec 2025 21:12:07 +0000
Subject: Re: [Jfs-discussion] [syzbot] [ocfs2?] memory leak in
 ocfs2_new_path_from_path
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
Reply-To: syzbot <syzbot+cfc7cab3bb6eaa7c4de2@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    4a26e7032d7d Merge tag 'core-bugs-2025-12-01' of git://git..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=111c14c2580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cbf343972ee89096
dashboard link: https://syzkaller.appspot.com/bug?extid=cfc7cab3bb6eaa7c4de2
compiler:       gcc (Debian 12.2.0-14+deb12u1) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16833512580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=151c14c2580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/3f4ff8b7d65f/disk-4a26e703.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2fbb585ef1ac/vmlinux-4a26e703.xz
kernel image: https://storage.googleapis.com/syzbot-assets/dfdc58db78d3/bzImage-4a26e703.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/ef2db83daf44/mount_0.gz
  fsck result: OK (log: https://syzkaller.appspot.com/x/fsck.log?x=14cae192580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cfc7cab3bb6eaa7c4de2@syzkaller.appspotmail.com

BUG: memory leak
unreferenced object 0xffff8881292668a0 (size 96):
  comm "syz.1.52", pid 6365, jiffies 4294945684
  hex dump (first 32 bytes):
    01 00 00 00 00 00 00 00 80 0e 31 82 ff ff ff ff  ..........1.....
    50 e7 58 27 81 88 ff ff c0 54 eb 33 81 88 ff ff  P.X'.....T.3....
  backtrace (crc d3d62878):
    kmemleak_alloc_recursive include/linux/kmemleak.h:44 [inline]
    slab_post_alloc_hook mm/slub.c:4983 [inline]
    slab_alloc_node mm/slub.c:5288 [inline]
    __kmalloc_cache_noprof+0x3a6/0x5b0 mm/slub.c:5766
    kmalloc_noprof include/linux/slab.h:957 [inline]
    kzalloc_noprof include/linux/slab.h:1094 [inline]
    ocfs2_new_path fs/ocfs2/alloc.c:688 [inline]
    ocfs2_new_path_from_path+0x4f/0x90 fs/ocfs2/alloc.c:702
    ocfs2_get_left_path.constprop.0+0x182/0x390 fs/ocfs2/alloc.c:3491
    ocfs2_merge_rec_left+0x426/0xe60 fs/ocfs2/alloc.c:3543
    ocfs2_try_to_merge_extent+0x3cb/0xe90 fs/ocfs2/alloc.c:3794
    ocfs2_split_extent+0xd2e/0x1330 fs/ocfs2/alloc.c:5139
    ocfs2_change_extent_flag+0x2ed/0x720 fs/ocfs2/alloc.c:5230
    ocfs2_mark_extent_written+0x1e3/0x2c0 fs/ocfs2/alloc.c:5276
    ocfs2_dio_end_io_write+0x5bc/0xaa0 fs/ocfs2/aops.c:2350
    ocfs2_dio_end_io+0x8c/0x180 fs/ocfs2/aops.c:2404
    dio_complete+0x12e/0x4b0 fs/direct-io.c:281
    __blockdev_direct_IO+0x1782/0x1b40 fs/direct-io.c:1303
    ocfs2_direct_IO+0xf6/0x100 fs/ocfs2/aops.c:2441
    generic_file_direct_write+0xb4/0x180 mm/filemap.c:4234
    __generic_file_write_iter+0xa1/0x130 mm/filemap.c:4403
    ocfs2_file_write_iter+0x68a/0x15a0 fs/ocfs2/file.c:2469

connection error: failed to recv *flatrpc.ExecutorMessageRawT: EOF


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
