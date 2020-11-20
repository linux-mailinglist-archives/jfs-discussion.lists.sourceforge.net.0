Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E88D12BAECB
	for <lists+jfs-discussion@lfdr.de>; Fri, 20 Nov 2020 16:24:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kg8Gh-0006Rn-4l; Fri, 20 Nov 2020 15:24:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3iN23XwkbACcVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kg88H-0002ro-Rd
 for jfs-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 15:15:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OF6CiG/SEA3+wIoWj8RIQVN5WsLF1TtgPhPsr1W6Mv8=; b=Kzkvd6a5KTa6WmjYcVvMqVy1aV
 2qD7+CYn+Dqd/TFtN93umHXa2GDSLrsg0y0+3I5W4RJoLN8F2Lv0+JuZNfMbvP/LhrHCykdyeEH3q
 EUOLW5gKHsZ/KWbWWcVlMFQAKeI+AWiU5rhxzW8NfF0y0TCmdM18zRwApdip3KSU+CT4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OF6CiG/SEA3+wIoWj8RIQVN5WsLF1TtgPhPsr1W6Mv8=; b=J
 45V1AKXtLrmdLAT5g4NNeOCJ2Frs3c8yrHmda/LM8wnfU4Zg+++WwkefYulH0kqxi9Iuure+O2S7+
 RYtSR4APZdVW0YtBw/bqiKidcAI7XiCmVSIEu8K2G8BMmwBfOawz1roIWwH3B3iw9JBqpCVC+l4BS
 Ri9kv4KOhIKzUoPA=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kg88E-003C5g-JR
 for jfs-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 15:15:29 +0000
Received: by mail-io1-f70.google.com with SMTP id v15so7642587ioq.16
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 20 Nov 2020 07:15:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=OF6CiG/SEA3+wIoWj8RIQVN5WsLF1TtgPhPsr1W6Mv8=;
 b=F73UpxK1MwnBqpEbDGnDjiI225A8gOSBQcEdnRBxN7TBA6BYXaYYZyuY7xscoHYCsb
 IavsJEmYNAsLhjEiR9H/+mkTQA+gtQshE4LXY3rrZBqaLSKWFpDmW4A0pyXBX9Bx/eRy
 ZNewPykJF1bc5U7kdd/pnq39okyBThM+Tbxm68wunyNzSXh1Gz97puFxQrqmCE8VspFC
 icVWa1sYfFbDcPKBS/mxaHBsbRwlxIJu54pQ7nLu3QAmItAbTx5jx5ZH0Lmv+WYxrOKB
 WxfuIt0oz1LtLaq8kgY5FO7JJjDJOZW38QBIWaKd3vWEIXKMop+fA7Dtzzz9z+9gngVF
 mT2w==
X-Gm-Message-State: AOAM530CJ+zpfpacTnyA6VZiP7zAw9La1x1eag8HTIwHnzxZc0C4jqWF
 O+eFC7cH0GXV9b9Z2T7Kt5nnfiI0xwG2wbVzH9gDANXP5svn
X-Google-Smtp-Source: ABdhPJx12JrSVAVPAQQFWy+FWCXh+eEQKGbT2F9NBEefXtNUuGYl3APQZzstxDao66GEVac1ufo7IX3SsgN80cI57AGvL2aHdgTC
MIME-Version: 1.0
X-Received: by 2002:a92:ae0e:: with SMTP id s14mr23832161ilh.94.1605885320838; 
 Fri, 20 Nov 2020 07:15:20 -0800 (PST)
Date: Fri, 20 Nov 2020 07:15:20 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000019465505b48b50d1@google.com>
From: syzbot <syzbot+aa12d6106ea4ca1b6aae@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kg88E-003C5g-JR
X-Mailman-Approved-At: Fri, 20 Nov 2020 15:24:10 +0000
Subject: [Jfs-discussion] memory leak in new_inode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    c2e7554e Merge tag 'gfs2-v5.10-rc4-fixes' of git://git.ker..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1362415a500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=dc8ee843c1fc6693
dashboard link: https://syzkaller.appspot.com/bug?extid=aa12d6106ea4ca1b6aae
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13a79ea6500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15b62d72500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+aa12d6106ea4ca1b6aae@syzkaller.appspotmail.com

executing program
executing program
BUG: memory leak
unreferenced object 0xffff88810ecc2a80 (size 1280):
  comm "syz-executor002", pid 8495, jiffies 4294947195 (age 8.020s)
  hex dump (first 32 bytes):
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
  backtrace:
    [<00000000c920fbb4>] jfs_alloc_inode+0x18/0x60 fs/jfs/super.c:105
    [<00000000c664943b>] alloc_inode+0x27/0x100 fs/inode.c:234
    [<0000000072a6900b>] new_inode_pseudo fs/inode.c:930 [inline]
    [<0000000072a6900b>] new_inode+0x23/0x100 fs/inode.c:959
    [<0000000022579323>] diReadSpecial+0x28/0x1e0 fs/jfs/jfs_imap.c:424
    [<0000000035d6f1c1>] jfs_mount+0xa7/0x280 fs/jfs/jfs_mount.c:107
    [<00000000db4745f5>] jfs_fill_super+0x1ad/0x3a0 fs/jfs/super.c:562
    [<00000000deb24c86>] mount_bdev+0x223/0x260 fs/super.c:1419
    [<00000000355bbcf1>] legacy_get_tree+0x2b/0x90 fs/fs_context.c:592
    [<00000000b4778640>] vfs_get_tree+0x28/0x100 fs/super.c:1549
    [<00000000661148dd>] do_new_mount fs/namespace.c:2875 [inline]
    [<00000000661148dd>] path_mount+0xc5e/0x1170 fs/namespace.c:3205
    [<00000000184bf2c6>] do_mount fs/namespace.c:3218 [inline]
    [<00000000184bf2c6>] __do_sys_mount fs/namespace.c:3426 [inline]
    [<00000000184bf2c6>] __se_sys_mount fs/namespace.c:3403 [inline]
    [<00000000184bf2c6>] __x64_sys_mount+0x18e/0x1d0 fs/namespace.c:3403
    [<000000004af9fc85>] do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
    [<000000004cba2559>] entry_SYSCALL_64_after_hwframe+0x44/0xa9



---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
