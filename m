Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC185F1F2D
	for <lists+jfs-discussion@lfdr.de>; Sat,  1 Oct 2022 22:14:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oeis2-00083X-4C;
	Sat, 01 Oct 2022 20:13:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3XE44YwkbAPktz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oedSr-0005pj-SJ for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Oct 2022 14:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ddyCZwJ1xLS8fRq1A9rfvPXjQ5bkJN6QtLD9WKdESPg=; b=TGeSLcMbdlH0vMwXtM7GoRWNzq
 ftBPi2ziE/CGTWTDxpJD4/4rVqbE9CNG8zE6N24QLMmXV2Y0NwlUgJ8QDMBMuT5xp32IGLy3nm6WS
 fJin5rPY5UoIr5kAQmZSl4odFTj+aufmWWy+qQdx+Iwx5oPV5NKYAkXj984bYCGhIkUc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ddyCZwJ1xLS8fRq1A9rfvPXjQ5bkJN6QtLD9WKdESPg=; b=H
 pOEyOJbMqru7A+1y0gVL/Wc+zG5rSXR1ueJUfBB6TN7Pt+Jp1pKt64wuwZIEPb/+uTGqaZpmYSXfe
 9QPREuRwo3vfcXpgxQ1PJxB/KCw1qiy9uAFJQAc9LQGlCSCmKykfiG3QjlI2ykNX+v5rIkUg9hMwg
 WHdgEI0m9B4zwBu4=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oedT1-0007Zo-65 for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Oct 2022 14:27:50 +0000
Received: by mail-io1-f72.google.com with SMTP id
 v4-20020a5ec204000000b006a32e713217so4492501iop.15
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 01 Oct 2022 07:27:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=ddyCZwJ1xLS8fRq1A9rfvPXjQ5bkJN6QtLD9WKdESPg=;
 b=YzFIaoSdxtgFjakHQzjSuNbOt9CGbxi3prmrKnM23vSoiPYRGB1mOJjw3VwW8mQmmy
 w6XJ6Kg204lgT0hwjnIMmwbbEkPlcWbZqsyv0S1ub2HCQF5o2cny8bwszs+fu5FQIHwA
 KyW9llwQg0CYYCGMmrZDhgn26+tpvfTJAG8SvS++cFfKZX70jdQZKG0fthuj0Oce2jNw
 hNOgcGHi9BWnsmgt4nAG8b2MO7zTx7lUBb4nWLNecg9flicVGQlqxtaCS/bJfgWgzilU
 Ld9bju/9NeOkF01k2YNTb2lT7lRESUtrGUrE+b/7R3/UcDgJQQFD6mcTZB9JDm04vTf3
 UTRw==
X-Gm-Message-State: ACrzQf00cm1IN+lSs8WKh/pKoPEhW5OTuAEsJOgG4goTExlktqZk9Oay
 1IYntZNRNaEjtIoJ997ij5Y5aaKzLS0EKN9n0izlqMUiqYLB
X-Google-Smtp-Source: AMsMyM5je81Hvri1UaRhPXMLRwfIRKA7+mprLc6gcu0qRp4kjoFqw5L9F6lV8ra9FKf9feq6aCIHB7BqSPvlGRJB+7QUZaHmgqie
MIME-Version: 1.0
X-Received: by 2002:a02:c047:0:b0:35a:5fdc:1793 with SMTP id
 u7-20020a02c047000000b0035a5fdc1793mr6820017jam.155.1664634460028; Sat, 01
 Oct 2022 07:27:40 -0700 (PDT)
Date: Sat, 01 Oct 2022 07:27:40 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000abc46005e9f9e943@google.com>
From: syzbot <syzbot+a63afa301d1258d09267@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 5911b92626df
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1oedT1-0007Zo-65
X-Mailman-Approved-At: Sat, 01 Oct 2022 20:13:51 +0000
Subject: [Jfs-discussion] [syzbot] kernel BUG in txUnlock
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

HEAD commit:    5911b92626df Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=161da2ec880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=aae2d21e7dd80684
dashboard link: https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/c50e57f66737/disk-5911b926.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f369b7b837e3/vmlinux-5911b926.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a63afa301d1258d09267@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_txnmgr.c:926 assert(mp->nohomeok > 0)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:926!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 1 PID: 88 Comm: jfsCommit Not tainted 6.0.0-rc7-syzkaller-18098-g5911b92626df #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : txUnlock+0x6f4/0x738 fs/jfs/jfs_txnmgr.c:926
lr : txUnlock+0x6f4/0x738 fs/jfs/jfs_txnmgr.c:926
sp : ffff80000fb33d30
x29: ffff80000fb33d70 x28: ffff800012222000 x27: 0000000000000008
x26: ffff80000ef36fd0 x25: ffff80000ef37000 x24: ffff0000c289aac8
x23: ffff80000ef37000 x22: 0000000000000048 x21: ffff80000ef36f7c
x20: ffff80000ef36000 x19: 0000000000000000 x18: 0000000000000340
x17: 0000000000000000 x16: ffff80000db49158 x15: ffff0000c104cf80
x14: 0000000000000000 x13: 00000000ffffffff x12: ffff0000c104cf80
x11: ff808000081c0d5c x10: 0000000000000000 x9 : da27545727afe500
x8 : da27545727afe500 x7 : ffff800008161d1c x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0001fefddcd0 x1 : 0000000100000000 x0 : 0000000000000037
Call trace:
 txUnlock+0x6f4/0x738 fs/jfs/jfs_txnmgr.c:926
 txLazyCommit fs/jfs/jfs_txnmgr.c:2677 [inline]
 jfs_lazycommit+0x228/0x4c8 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x12c/0x158 kernel/kthread.c:376
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:860
Code: 9114d021 912fec63 528073c2 94c92d60 (d4210000) 
---[ end trace 0000000000000000 ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
