Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C959C642AF8
	for <lists+jfs-discussion@lfdr.de>; Mon,  5 Dec 2022 16:05:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p2D1R-0007Xu-2n;
	Mon, 05 Dec 2022 15:04:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3_v2NYwkbAFUFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1p2CK0-0000kP-1r for jfs-discussion@lists.sourceforge.net;
 Mon, 05 Dec 2022 14:19:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/8Jk8KOOFBxQyZWRhL6bo/qrStKvX/xfP+IaTpaySrc=; b=YSRmLher348aXqhIAnzoAJxZXf
 ZB5lXB0ncpa5K2bz9GBXGYwSFiSjLW28OEO6FgqVWyB/1+7Q+Vum9nZgG35kGj/NYWUe0nzsFAp9k
 nsq6758HMxuVBoS3UqydW47l9r0OCmVMJy8BC9jHExJB3p96VnF8pxzVNGNhcQDRev+Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/8Jk8KOOFBxQyZWRhL6bo/qrStKvX/xfP+IaTpaySrc=; b=Q
 HF3BxB4Y0DbyLjUxte7LG2eRrbtJBpk1EWCNqIgfPnPQTzGnO1Ns1WpeSwSlamifJ+eImNpzCec0L
 GCpc6DYOOXyBrcl1hNDU84D+sJdudOXPtRYbUuOAOzPayy5BYLsguzZCLSOr11xy+zFyHLtjDRI2B
 erhtzvp6ORG915Ik=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p2CJv-0004cs-UX for jfs-discussion@lists.sourceforge.net;
 Mon, 05 Dec 2022 14:19:52 +0000
Received: by mail-il1-f197.google.com with SMTP id
 l16-20020a056e02067000b0030325bbd570so12096817ilt.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 05 Dec 2022 06:19:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/8Jk8KOOFBxQyZWRhL6bo/qrStKvX/xfP+IaTpaySrc=;
 b=0RkesgAG+Df1iV+U/J8R/nJwTNZMGaPjnJ1akxznbURW9VkVS4twEJNGsxi/+CEqmZ
 DHA8qtdoqBHIVzCphtewGCstwdc5Wr5bzCna3btB8COjJV18XCXWN+HvuY+4J1d4hzM3
 p1yHVcb7PhbJTOWfOnN2cqAJsI6+7AYv1sExSqksEqq6T9fUgJDPRz9V0/E8BTPmsVfS
 5RIGgP2gZGdSvliIj7dfD2naH5pYjEfZHpxA4drz8pyAxZ/iTX0SfiXxLSmaJ1oKKfSt
 Y76xzyuzN0hoL43xio3lzkAeVIG/78xfevqi6br7X5X11d8uIAS0+tY1pBZ1/0mwktal
 66UA==
X-Gm-Message-State: ANoB5pmtkTpQ9ZhLVHAZTV0xBxX5GeOAI+yzTKp91VKZ3+d2azLggDEH
 c0ta9AMXGWgpTQyv/tvoNG/HaJ55Rsz/E2GgB/8rL1ZBJM3Z
X-Google-Smtp-Source: AA0mqf6nJfXe1VS1PVIyKS0X/i2Qm5cE4J7MVXPFd+/DAvBa0aMgqaJDYbQ0rkWZULR2oqOK7DDJsoSqjaxIlovg/tVXWn/TPHGR
MIME-Version: 1.0
X-Received: by 2002:a02:2206:0:b0:371:d6e:c33a with SMTP id
 o6-20020a022206000000b003710d6ec33amr38687666jao.204.1670249982365; Mon, 05
 Dec 2022 06:19:42 -0800 (PST)
Date: Mon, 05 Dec 2022 06:19:42 -0800
In-Reply-To: <0000000000007f649605ee57c509@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e29cae05ef1560ab@google.com>
From: syzbot <syzbot+47366a6b503c7edf6bbb@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 okanatov@gmail.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 9e46a7996732 Add linux-next specific files for 20221125 git tree:
 linux-next console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=17e16583880000
 kernel config: https://syzkaller.apps [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1p2CJv-0004cs-UX
X-Mailman-Approved-At: Mon, 05 Dec 2022 15:04:43 +0000
Subject: Re: [Jfs-discussion] [syzbot] WARNING in diUnmount
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    9e46a7996732 Add linux-next specific files for 20221125
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=17e16583880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=11e19c740a0b2926
dashboard link: https://syzkaller.appspot.com/bug?extid=47366a6b503c7edf6bbb
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12170129880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10d77d6b880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/758d818cf966/disk-9e46a799.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f7c8696b40a5/vmlinux-9e46a799.xz
kernel image: https://storage.googleapis.com/syzbot-assets/810f9750b87f/bzImage-9e46a799.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/87349f941ac3/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+47366a6b503c7edf6bbb@syzkaller.appspotmail.com

R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
jfs_mount_rw: diMount failed!
------------[ cut here ]------------
WARNING: CPU: 1 PID: 5299 at mm/slab_common.c:923 mod_lruvec_page_state include/linux/vmstat.h:563 [inline]
WARNING: CPU: 1 PID: 5299 at mm/slab_common.c:923 free_large_kmalloc+0xad/0xe0 mm/slab_common.c:930
Modules linked in:
CPU: 1 PID: 5299 Comm: syz-executor293 Not tainted 6.1.0-rc6-next-20221125-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
RIP: 0010:free_large_kmalloc+0xad/0xe0 mm/slab_common.c:923
Code: ee 48 89 ef 5d 41 5c 41 5d e9 cf bd 0d 00 e8 3a 22 d1 ff 44 89 e2 be 06 00 00 00 48 89 ef e8 2a fc 1f 00 e8 95 23 d1 ff eb c6 <0f> 0b 80 3d 06 a4 a6 0c 00 0f 84 e5 75 0b 08 48 8b 74 24 20 4c 89
RSP: 0018:ffffc90003dafbc8 EFLAGS: 00010246
RAX: 00fff00000000000 RBX: ffff8880765b2930 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffff88801d468000 RDI: ffffea0000751a00
RBP: ffffea0000751a00 R08: 0000000000000007 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: ffff88801d468000
R13: ffff88802009c200 R14: ffff8880765b0d70 R15: ffff8880765b2930
FS:  0000000000000000(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000559d632cbd28 CR3: 000000000c48e000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 diUnmount+0xf1/0x130 fs/jfs/jfs_imap.c:195
 jfs_umount+0x189/0x410 fs/jfs/jfs_umount.c:63
 jfs_put_super+0x85/0x1a0 fs/jfs/super.c:194
 generic_shutdown_super+0x158/0x410 fs/super.c:492
 kill_block_super+0x9b/0xf0 fs/super.c:1428
 deactivate_locked_super+0x98/0x160 fs/super.c:332
 deactivate_super+0xb1/0xd0 fs/super.c:363
 cleanup_mnt+0x2ae/0x3d0 fs/namespace.c:1291
 task_work_run+0x16f/0x270 kernel/task_work.c:179
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0xaa8/0x28d0 kernel/exit.c:820
 do_group_exit+0xd4/0x2a0 kernel/exit.c:950
 __do_sys_exit_group kernel/exit.c:961 [inline]
 __se_sys_exit_group kernel/exit.c:959 [inline]
 __x64_sys_exit_group+0x3e/0x50 kernel/exit.c:959
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fdcfc9f6ce9
Code: Unable to access opcode bytes at 0x7fdcfc9f6cbf.
RSP: 002b:00007ffe9b47d4c8 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
RAX: ffffffffffffffda RBX: 00007fdcfca713f0 RCX: 00007fdcfc9f6ce9
RDX: 000000000000003c RSI: 00000000000000e7 RDI: 0000000000000001
RBP: 0000000000000001 R08: ffffffffffffffc0 R09: 00007ffe9b47d6b8
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fdcfca713f0
R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
 </TASK>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
