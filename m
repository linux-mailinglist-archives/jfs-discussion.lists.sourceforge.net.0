Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B748FBF46
	for <lists+jfs-discussion@lfdr.de>; Wed,  5 Jun 2024 00:46:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sEcuu-0005mF-W5;
	Tue, 04 Jun 2024 22:46:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3doNfZgkbADUjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sEbTO-0002cp-Sa for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Jun 2024 21:13:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X02K38cZL0DbnosXLg9Rsk7c+qtdoxUw/8K9g7MIdgE=; b=fi3wjJsPLRipTNuS0EsJagnxpE
 D8A7zhZyw7FaU01en/OhhZp6MNwo03SxxyBC1tuEmwlyBKvv6oN85pXN91mmyAevj1rgwDYCLLzqf
 ykPLgYhbbqEnaLBS3il2rxFseRd7x+/yX5BNGQ8fRjA1j3JNDFkHdOtlTX6YPIZQPiOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X02K38cZL0DbnosXLg9Rsk7c+qtdoxUw/8K9g7MIdgE=; b=l
 F8Z80gkQIij5o5p7umKX9g66+OOkSV4VNjHeu+auJIGm/6DBnuwCJxwrRhO6N++JMTKzjgHNI6myB
 m5WQREDC7gvgTW/dzFyiCab8uoI2UXCuw9CH3Q3xD1mfVShDq3GMLZMrhUlbGltJdBQ2PS7yQJBGi
 rlqZGxYD2GJ/VwbM=;
Received: from mail-il1-f207.google.com ([209.85.166.207])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sEbTN-0005hG-T5 for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Jun 2024 21:13:38 +0000
Received: by mail-il1-f207.google.com with SMTP id
 e9e14a558f8ab-3738732f988so56809825ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 04 Jun 2024 14:13:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717535606; x=1718140406;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=X02K38cZL0DbnosXLg9Rsk7c+qtdoxUw/8K9g7MIdgE=;
 b=cR9hb9Pj31EPvrZWk33tJD4KYDLXakGWsSKxytzcAuyXzoI6OzWK4fN+PFFr04Nw2n
 2BIXj45MefPFz2/zajPWnn6tDu4RxanEfFYvgMCTwC/e5llb1PcnVVxOMIs+/v5w0XAm
 D/n/+ez4+v5xeny07eWl1edsGOtbPMIdK1NpoiN1N019oAa+UYeXN7iSn/CH+hZibpW3
 zfKYOUMS7pfZUERb5Hv7mKs/FAl9Y/eUy58kNNy5QAmX2ajQHSJnhfK7G34RuRk3gL3y
 26NvS4bCe+ycfrji3bnUJ0KBSjCLbedvJ37kuJ68FyKFBwDVU4l3qHQz7I0Yq894zose
 rOhg==
X-Gm-Message-State: AOJu0YzhxrZa4Q7bcBSdvSMNUp7rWB5wMc9nRPOMJtdNcWdHB1OQHSLM
 wDyRVa6aSWoCxOIGXitdhgDajoHgwuDYxLUVRkkyJYQv6kixC7tGpwV/u5R3zeWIGcI5FPItCoQ
 cuo3u4aCGI7Hwo9x2Qk9zxDN+Gk3V1djprF/rL+KuLz84PhEVcdVz2474tw==
X-Google-Smtp-Source: AGHT+IFYJLbdIpkFirEVMTc6tK9RBxgA1XVYj8S9yeKxwETlTpQmsH6fRiahC60hevkQnvOKVlS2LawmhzLmmwy53ho1hqKlz4y3
MIME-Version: 1.0
X-Received: by 2002:a92:c26a:0:b0:36c:c4ce:8448 with SMTP id
 e9e14a558f8ab-374b1f83a64mr323165ab.6.1717535606440; Tue, 04 Jun 2024
 14:13:26 -0700 (PDT)
Date: Tue, 04 Jun 2024 14:13:26 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b6111e061a16ebc8@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: d8ec19857b09
 Merge tag 'net-6.10-rc2' of git://git.kernel... git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=13086d3a980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.207 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.207 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.207 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sEbTN-0005hG-T5
X-Mailman-Approved-At: Tue, 04 Jun 2024 22:46:08 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in jfs_flush_journal (2)
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
Reply-To: syzbot <syzbot+e66452054e1f161e8d29@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    d8ec19857b09 Merge tag 'net-6.10-rc2' of git://git.kernel...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13086d3a980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=47d282ddffae809f
dashboard link: https://syzkaller.appspot.com/bug?extid=e66452054e1f161e8d29
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/42229dacbe9b/disk-d8ec1985.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/963a405f2e94/vmlinux-d8ec1985.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d861a4407dce/bzImage-d8ec1985.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e66452054e1f161e8d29@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_logmgr.c:1588 assert(list_empty(&log->cqueue))
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_logmgr.c:1588!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI
CPU: 1 PID: 29917 Comm: syz-executor.4 Not tainted 6.10.0-rc1-syzkaller-00104-gd8ec19857b09 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 04/02/2024
RIP: 0010:jfs_flush_journal+0xeba/0xec0 fs/jfs/jfs_logmgr.c:1588
Code: e8 eb 77 57 08 e8 66 07 70 fe 48 c7 c7 40 9d 02 8c 48 c7 c6 40 98 02 8c ba 34 06 00 00 48 c7 c1 80 9d 02 8c e8 c7 7a 54 08 90 <0f> 0b 0f 1f 40 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
RSP: 0018:ffffc90004757b20 EFLAGS: 00010246
RAX: 0000000000000040 RBX: ffff88802538e1a8 RCX: b07b599e2cc86b00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc90004757c50 R08: ffffffff8176803c R09: fffffbfff1c3998c
R10: dffffc0000000000 R11: fffffbfff1c3998c R12: 1ffff920008eaf70
R13: dffffc0000000000 R14: ffff88802538e000 R15: ffff88802538e000
FS:  000055557b2d6480(0000) GS:ffff8880b9500000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555562804978 CR3: 000000007e4b2000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_umount+0x170/0x3a0 fs/jfs/jfs_umount.c:58
 jfs_put_super+0x8a/0x190 fs/jfs/super.c:194
 generic_shutdown_super+0x136/0x2d0 fs/super.c:642
 kill_block_super+0x44/0x90 fs/super.c:1676
 deactivate_locked_super+0xc4/0x130 fs/super.c:473
 cleanup_mnt+0x41f/0x4b0 fs/namespace.c:1267
 task_work_run+0x24f/0x310 kernel/task_work.c:180
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:114 [inline]
 exit_to_user_mode_prepare include/linux/entry-common.h:328 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:207 [inline]
 syscall_exit_to_user_mode+0x168/0x370 kernel/entry/common.c:218
 do_sys


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
