Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D43AD5EADA1
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Sep 2022 19:07:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ocrZs-0006bx-Um;
	Mon, 26 Sep 2022 17:07:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <36dsxYwkbAIg4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ocrYF-0004rG-Nn for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 17:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y28CCcBuJ1ylNWh8a512gzTxThjJ7xoc0njafP1n4Lk=; b=cZLfzyPar2H9ghhRbzbnPyb9aM
 7LEnPYd/xeC0wQvxW5xDAOpXi6+b0Vx2ITp6VVmiE8C1TIFh+Njr1DwHL7zwwqvpt35Z2K8Z3IipC
 Dd7uEEEHSIXLQkC+8t7XUxYMSOl7ClrrZRJgD32mqIUQTDEfhJaqQeeGkiQofN8h5/rs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y28CCcBuJ1ylNWh8a512gzTxThjJ7xoc0njafP1n4Lk=; b=G
 hQiTq6l4qdXjFDRoIDvSpeq1Cb0Ak4M7PhZnwtUZXiwjNDm3rSHqDY7Sui7HAsyhwI4yNv+BMz2V8
 ttvD+HL5TQxVF1yw940ol9x0ggpqZ1NaXTkudFFLnrv2Hoh+Tf/8usEUfavHmUj2lpWz+IvRGKL+v
 +9bjBgb+ZIoiTAIM=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ocrYF-003bvf-2M for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 17:05:51 +0000
Received: by mail-io1-f70.google.com with SMTP id
 f11-20020a5d858b000000b006a17b75af65so4232305ioj.13
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Sep 2022 10:05:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=y28CCcBuJ1ylNWh8a512gzTxThjJ7xoc0njafP1n4Lk=;
 b=skVEVslyPV2FLZItH0A/1N7b70veUkQDylAu9T0CQfOItTZMkZihZLM35Di2orWGxW
 +YPWRSRG5d0HTZwFbwb+lIoH3mCbHNYKdafOgzZ2SjAFd/a9r8A6K2WLhVqYHq3yJk3a
 BBqsaxpYn13n2ICABPNkncMeb0wLf0OXWxn63++jLHctOCDLYNfFJQqHzdns4qoHZTfR
 WtV6sg8UqnqGT2lTHW/YRghdAMq3M7xTqp3mHe1MLZgXROKYUP92JZMEBQQjz5PrcBwv
 e+z+/kQvSKl7wNT9Yrm98asBHT7eu+Gs2j2yK39KpOEmWmnj7RKQyN+LH6gZXlMJArY0
 uszw==
X-Gm-Message-State: ACrzQf2+/bbRSMJ2Q9F3NY8aNg/i8m0SoRBFwUWoHLMjyokJgG9cgJMQ
 s0YM+VgFWukD6vkq53NbMJFfoANGAa6neKEeir7ClrTaDDgM
X-Google-Smtp-Source: AMsMyM5a/dR1igz98v9x/QuvU++r0t3bOtDiGDqubbY/vXledqC4nj+kfqJEoJWSr5sLzgvxZExw/wcqju6Xt5+ffLIslvzgIFl+
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d92:b0:2f6:a470:cb4f with SMTP id
 h18-20020a056e021d9200b002f6a470cb4fmr10448434ila.221.1664211945555; Mon, 26
 Sep 2022 10:05:45 -0700 (PDT)
Date: Mon, 26 Sep 2022 10:05:45 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d890a405e997896e@google.com>
From: syzbot <syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: c194837ebb57
 Merge branch 'for-next/core', remote-tracking.. git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
X-Headers-End: 1ocrYF-003bvf-2M
X-Mailman-Approved-At: Mon, 26 Sep 2022 17:07:24 +0000
Subject: [Jfs-discussion] [syzbot] kernel BUG in jfs_evict_inode
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

HEAD commit:    c194837ebb57 Merge branch 'for-next/core', remote-tracking..
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=117dbdc4880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=15a770deac0c935a
dashboard link: https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11f2e288880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=127d1ae4880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/8d8ae425e7fa/disk-c194837e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c540d501ebe7/vmlinux-c194837e.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 264192
ERROR: (device loop0): xtTruncate: XT_GETPAGE: xtree page corrupt
ERROR: (device loop0): remounting filesystem as read-only
------------[ cut here ]------------
kernel BUG at fs/jfs/inode.c:169!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 1 PID: 3065 Comm: syz-executor105 Not tainted 6.0.0-rc6-syzkaller-17742-gc194837ebb57 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
pstate: 80400005 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : jfs_evict_inode+0x1c0/0x1e8 fs/jfs/inode.c:169
lr : jfs_evict_inode+0x1c0/0x1e8 fs/jfs/inode.c:169
sp : ffff8000126f3ac0
x29: ffff8000126f3ac0 x28: ffff0000cb292a00 x27: ffff0000ca9e85f8
x26: ffff0000c759b500 x25: ffff0000cb292a00 x24: ffff8000126f3b38
x23: ffff0000ca9eba98 x22: ffff0000ca9eb4b0 x21: ffff800008d32a0c
x20: 0000000000000001 x19: ffff0000ca9eb8e0 x18: 00000000000000c0
x17: ffff80000dd0b198 x16: ffff80000db49158 x15: ffff0000c759b500
x14: 0000000000000050 x13: 00000000ffffffff x12: ffff0000c759b500
x11: ff80800008d32bcc x10: 0000000000000000 x9 : ffff800008d32bcc
x8 : ffff0000c759b500 x7 : ffff8000085e852c x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : 0000000000000006 x1 : 0000000000000000 x0 : ffff0000ca9eb8c0
Call trace:
 jfs_evict_inode+0x1c0/0x1e8 fs/jfs/inode.c:169
 evict+0xec/0x334 fs/inode.c:665
 dispose_list fs/inode.c:698 [inline]
 evict_inodes+0x2e0/0x354 fs/inode.c:748
 generic_shutdown_super+0x50/0x190 fs/super.c:480
 kill_block_super+0x30/0x78 fs/super.c:1427
 deactivate_locked_super+0x70/0xe8 fs/super.c:332
 deactivate_super+0xd0/0xd4 fs/super.c:363
 cleanup_mnt+0x1f8/0x234 fs/namespace.c:1186
 __cleanup_mnt+0x20/0x30 fs/namespace.c:1193
 task_work_run+0xc4/0x14c kernel/task_work.c:177
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0x26c/0xbe0 kernel/exit.c:795
 do_group_exit+0x60/0xe8 kernel/exit.c:925
 __do_sys_exit_group kernel/exit.c:936 [inline]
 __se_sys_exit_group kernel/exit.c:934 [inline]
 __wake_up_parent+0x0/0x40 kernel/exit.c:934
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190
Code: aa1303e0 97e62ca1 17ffffaf 97d5b63d (d4210000) 
---[ end trace 0000000000000000 ]---


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
