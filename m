Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D0B8C916D
	for <lists+jfs-discussion@lfdr.de>; Sat, 18 May 2024 16:23:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s8Kxq-0003jL-4I;
	Sat, 18 May 2024 14:23:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3LJ9IZgkbAMU39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1s8JC3-00089k-SM for jfs-discussion@lists.sourceforge.net;
 Sat, 18 May 2024 12:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yWHEF8V+gaWWBVFsVrOFR14VWki8ZARAWVvQbJIaMcg=; b=UbI+okVX25D61dPs9WSDVEh1py
 8XH0Bq5Aoie6Xf9tyezqcfP/Fne0YobtUF1QQpqqYfvXVvrbasCwDELJdwp5PJStgYG+G98Am/F+C
 Z+wG0GkZvlX4nMOY9NpmPU9mAAt+gXLoFb4Fu8ptZqOVg7BhpZcYOcniM/fqyCrRJoO0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yWHEF8V+gaWWBVFsVrOFR14VWki8ZARAWVvQbJIaMcg=; b=S
 miCKyHhRWmKr+Ly35eAm6VS+DzPG7hldzy6nj941zT77PBlYUrkOXuqsvrAzLNajr00H0pNRCnD86
 w+DCtlCRbyf9C0F1DSkvsQEc+BHWmDRN6Z9KWSHo8YWnPWavHufHbjGl68invsGG+t17pQ7TnPKqp
 4ZYMR12mV/aPHaO0=;
Received: from mail-io1-f80.google.com ([209.85.166.80])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s8JC4-0001Ij-6U for jfs-discussion@lists.sourceforge.net;
 Sat, 18 May 2024 12:29:44 +0000
Received: by mail-io1-f80.google.com with SMTP id
 ca18e2360f4ac-7e1d1c7229aso816978339f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 18 May 2024 05:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716035372; x=1716640172;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yWHEF8V+gaWWBVFsVrOFR14VWki8ZARAWVvQbJIaMcg=;
 b=SBHlp4gWBEQF4a5en5oGZf0VJuhn4fgH3/iiOv5l5ucP9OJAiQG1acXrr8R1sTQuwJ
 hhOZ2Hw2Jd5NVSNUoe2zgBxBAbu+1dCfUnwVqjCw2IvOPuwcGgL3uSxaEBp7+uF3M7NN
 FKg22Mb+WS9IcMN/nNUrzUdTTDbdeAaW9I3MKZ/8LP8sdhU5OheRzjxmKv5rlinQQ34e
 8/7dG5E3inLtE5KmsUmxCXO814Vhh0iMpDYww1X3+aSiTuwW8SKQsOptWT0+s0qq/xOc
 nH0YgBFpknVaycn7MQax1ZUsoWTtJmyjX24r9rffpnvbTaVLyIHUmAVoxKKe9xpZ/qZb
 TJew==
X-Gm-Message-State: AOJu0YxD8P61ad4ECo8Ersikl84QtQn/d1fDcPPD8hY7hynTAYWXZQlV
 8WApkoPrvgC0lqh/Llf4w18WcDWrCl2B/Z2+cf2/K7VHCbL2JdnIumOTFScSNB+IeMHtyZj9Gzr
 aJ95pgj9WtCnzCz/WZkDrL/JUZ+sY6FYwpgqim/MBHS+Xa5OWYqX4vD5ZSw==
X-Google-Smtp-Source: AGHT+IEgkzLeTubGk9iaHD7jHca9t2O+mUExst2fjK1oKz+DGHMpd8YJo7cIEwTpEZhapGgGhqSe++qOuOzgALY4wvDnbufkFRsS
MIME-Version: 1.0
X-Received: by 2002:a05:6638:210d:b0:488:e34a:5f72 with SMTP id
 8926c6da1cb9f-4895857588dmr2012339173.2.1716035372830; Sat, 18 May 2024
 05:29:32 -0700 (PDT)
Date: Sat, 18 May 2024 05:29:32 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d1e1180618b99e10@google.com>
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
 syzbot found the following issue on: HEAD commit: ea5f6ad9ad96
 Merge tag 'platform-drivers-x86-v6.10-1' of g.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=10e91bd4980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.80 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1s8JC4-0001Ij-6U
X-Mailman-Approved-At: Sat, 18 May 2024 14:23:08 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dbAdjTree (2)
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
Reply-To: syzbot <syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    ea5f6ad9ad96 Merge tag 'platform-drivers-x86-v6.10-1' of g..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=10e91bd4980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3e06a6259c6a4416
dashboard link: https://syzkaller.appspot.com/bug?extid=412dea214d8baa3f7483
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/db5d9201b572/disk-ea5f6ad9.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/8d8ed484f1b5/vmlinux-ea5f6ad9.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0de047f553aa/bzImage-ea5f6ad9.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com

UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2900:31
index -3 is out of range for type 's8 [1365]'
CPU: 0 PID: 111 Comm: jfsCommit Not tainted 6.9.0-syzkaller-08284-gea5f6ad9ad96 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 04/02/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x16c/0x1f0 lib/dump_stack.c:114
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x110/0x150 lib/ubsan.c:429
 dbAdjTree+0x383/0x3d0 fs/jfs/jfs_dmap.c:2900
 dbJoin+0x24b/0x2b0 fs/jfs/jfs_dmap.c:2841
 dbFreeBits+0x15c/0x8f0 fs/jfs/jfs_dmap.c:2338
 dbFreeDmap+0x62/0x1b0 fs/jfs/jfs_dmap.c:2087
 dbFree+0x266/0x550 fs/jfs/jfs_dmap.c:409
 txFreeMap+0x788/0xe60 fs/jfs/jfs_txnmgr.c:2515
 xtTruncate+0x1e57/0x2c80 fs/jfs/jfs_xtree.c:2467
 jfs_free_zero_link+0x372/0x4f0 fs/jfs/namei.c:759
 jfs_evict_inode+0x423/0x4b0 fs/jfs/inode.c:153
 evict+0x2f0/0x6c0 fs/inode.c:667
 iput_final fs/inode.c:1741 [inline]
 iput.part.0+0x5a8/0x7f0 fs/inode.c:1767
 iput+0x5c/0x80 fs/inode.c:1757
 txUpdateMap+0xaf3/0xd20 fs/jfs/jfs_txnmgr.c:2367
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x5e6/0xb20 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2c4/0x3a0 kernel/kthread.c:389
 ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
---[ end trace ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
