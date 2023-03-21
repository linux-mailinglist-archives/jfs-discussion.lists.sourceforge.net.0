Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 282536C3682
	for <lists+jfs-discussion@lfdr.de>; Tue, 21 Mar 2023 17:03:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1peeS0-0006wS-Gp;
	Tue, 21 Mar 2023 16:03:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3aboZZAkbAGwcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pecfS-0002xO-1Q for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Mar 2023 14:08:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+RdZX7FP0N8TAavVjx3r+pAC5QECi0TeLGUufWkWlMc=; b=FrN3sMJKjSMASDKA2dFyxm4eb/
 d77BnWamvtAPHjeFg+j/7lYXzlKHdy80dJJvjtlquUj+GZEIrXzkbPWGxYnKekj1jqcd9/DKdjGC/
 Ja7NlehVocGO4YkV2TTmsCJvs8W9Jb7+0KGQ2HKSoWzsWz2dvQ8JlTnClSgyRXAZaWSE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+RdZX7FP0N8TAavVjx3r+pAC5QECi0TeLGUufWkWlMc=; b=L
 nktrIwNYF8vNhDfl8OIfbaac22ND1hdr88MYoT7slcUokOx/SX+PU3d9GcK5hQrPsxIRW7XkURy/4
 L6MCVtiIKOO8wEvpuPaZ5PTEtUooCHeFQLgvrK3qNtcTL5fvrBuoopR86o34kEJgUdmNVGF2gvWV/
 wmTv54C1W0Ss1Ee0=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pecfP-0003jl-5I for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Mar 2023 14:08:50 +0000
Received: by mail-il1-f200.google.com with SMTP id
 b3-20020a056e02048300b003230de63373so7797547ils.10
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 21 Mar 2023 07:08:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679407721;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+RdZX7FP0N8TAavVjx3r+pAC5QECi0TeLGUufWkWlMc=;
 b=5NlHiX2NAD8MkVUAb1lXoXKh7yxw/ufuCYuPOjWrK9yxNlHsUjBESYOf0+Ej81fnti
 PxmY8t7QiRNBz6GP0oKz6t7jv/FB5skZU+uqrWN3X86aRE6NknCbspb/XTOlSTVUueZL
 gwynm/T8nhem90LVyoKksIx7a/bQQYlZJEUFdaAYWgPmmVA0S/JoU5rVaA2PMu4PdI6E
 9YLAbJe9PtXhahVF26UWW6Fw9Cg/PljyNLKXMz0dKcvSdPDK9yN3Zv+YX9OEaa+/oHfu
 Yo2rMyJOr0IYluD51SrT6tvtq/dEvLPFR8W91gP+/V4T5dUmpiEJEwJrg9lcUqJCrawO
 skAA==
X-Gm-Message-State: AO0yUKVje/FhrbMzGysWg8V+OlRvpiUaGDO+8bZpbJRtTk+i05KhiQXb
 QKu41KiiNxqOqzMElUWRsRB+IZv29a9dkMHLs8g2ZQd+cwaoZ9o=
X-Google-Smtp-Source: AK7set8+X/Jj4+N5r67AeIFYNbu2xn1KVh6wpQ1q4pulx8tHDn53Yp4cge6XRT+aejIveslYrYmFMPJcRQmpXuFPtAb7gq/Xicwv
MIME-Version: 1.0
X-Received: by 2002:a92:2e12:0:b0:315:459d:e6dd with SMTP id
 v18-20020a922e12000000b00315459de6ddmr955547ile.3.1679407721540; Tue, 21 Mar
 2023 07:08:41 -0700 (PDT)
Date: Tue, 21 Mar 2023 07:08:41 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ad151605f769947e@google.com>
From: syzbot <syzbot+b678a3f04e9bdedb6cba@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 478a351ce0d6
 Merge tag 'net-6.3-rc3' of git://git.kernel.o.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1231039ec80000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1pecfP-0003jl-5I
X-Mailman-Approved-At: Tue, 21 Mar 2023 16:02:57 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in jfs_flush_journal
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

HEAD commit:    478a351ce0d6 Merge tag 'net-6.3-rc3' of git://git.kernel.o..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1231039ec80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=9688428cfef5e8d5
dashboard link: https://syzkaller.appspot.com/bug?extid=b678a3f04e9bdedb6cba
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/6ed6e770a183/disk-478a351c.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/534bea112600/vmlinux-478a351c.xz
kernel image: https://storage.googleapis.com/syzbot-assets/67569395f0b5/bzImage-478a351c.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b678a3f04e9bdedb6cba@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_logmgr.c:1588 assert(list_empty(&log->cqueue))
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_logmgr.c:1588!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 5110 Comm: syz-executor.1 Not tainted 6.3.0-rc2-syzkaller-00363-g478a351ce0d6 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/02/2023
RIP: 0010:jfs_flush_journal+0xeb7/0xec0 fs/jfs/jfs_logmgr.c:1588
Code: ff e8 dd 70 99 07 e8 b8 81 83 fe 48 c7 c7 40 20 21 8b 48 c7 c6 40 1b 21 8b ba 34 06 00 00 48 c7 c1 80 20 21 8b e8 79 51 97 07 <0f> 0b 0f 1f 80 00 00 00 00 f3 0f 1e fa 55 41 56 53 49 be 00 00 00
RSP: 0018:ffffc90004abfae0 EFLAGS: 00010246
RAX: 0000000000000040 RBX: ffff88805be811a8 RCX: a0f2929d95c89200
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc90004abfc20 R08: ffffffff816dfe9c R09: fffff52000957f15
R10: 0000000000000000 R11: dffffc0000000001 R12: 1ffff92000957f68
R13: dffffc0000000000 R14: ffff88805be81000 R15: ffff88805be81000
FS:  0000555556a18400(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000c002c99000 CR3: 0000000061716000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 jfs_umount+0x170/0x3a0 fs/jfs/jfs_umount.c:58
 jfs_put_super+0x8a/0x190 fs/jfs/super.c:194
 generic_shutdown_super+0x134/0x340 fs/super.c:491
 kill_block_super+0x7e/0xe0 fs/super.c:1398
 deactivate_locked_super+0xa4/0x110 fs/super.c:331
 cleanup_mnt+0x426/0x4c0 fs/namespace.c:1177
 task_work_run+0x24a/0x300 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 exit_to_user_mode_loop+0xd9/0x100 kernel/entry/common.c:171
 exit_to_user_mode_prepare+0xb1/0x140 kernel/entry/common.c:203
 __syscall_exit_to_user_mode_work kernel/entry/common.c:285 [inline]
 syscall_exit_to_user_mode+0x64/0x280 kernel/entry/common.c:296
 do_syscall_64+0x4d/0xc0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fe2aba8d567
Code: ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffde8e74ca8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007fe2aba8d567
RDX: 00007ffde8e74d7b RSI: 000000000000000a RDI: 00007ffde8e74d70
RBP: 00007ffde8e74d70 R08: 00000000ffffffff R09: 00007ffde8e74b40
R10: 0000555556a198b3 R11: 0000000000000246 R12: 00007fe2abae6b74
R13: 00007ffde8e75e30 R14: 0000555556a19810 R15: 00007ffde8e75e70
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:jfs_flush_journal+0xeb7/0xec0 fs/jfs/jfs_logmgr.c:1588
Code: ff e8 dd 70 99 07 e8 b8 81 83 fe 48 c7 c7 40 20 21 8b 48 c7 c6 40 1b 21 8b ba 34 06 00 00 48 c7 c1 80 20 21 8b e8 79 51 97 07 <0f> 0b 0f 1f 80 00 00 00 00 f3 0f 1e fa 55 41 56 53 49 be 00 00 00
RSP: 0018:ffffc90004abfae0 EFLAGS: 00010246
RAX: 0000000000000040 RBX: ffff88805be811a8 RCX: a0f2929d95c89200
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc90004abfc20 R08: ffffffff816dfe9c R09: fffff52000957f15
R10: 0000000000000000 R11: dffffc0000000001 R12: 1ffff92000957f68
R13: dffffc0000000000 R14: ffff88805be81000 R15: ffff88805be81000
FS:  0000555556a18400(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000c002c99000 CR3: 0000000061716000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


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
