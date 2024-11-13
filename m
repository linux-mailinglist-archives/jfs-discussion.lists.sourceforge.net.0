Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D33A9CE13A
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Nov 2024 15:30:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tBxKi-0006GG-BF;
	Fri, 15 Nov 2024 14:30:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3V7Y0ZwkbANYKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tBEHL-0000aQ-9X for jfs-discussion@lists.sourceforge.net;
 Wed, 13 Nov 2024 14:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7unTAqHre4JVVGG6RaoB8jPlYK1uDTtb4sknNm+FhDA=; b=XZW8Yhd1w2T0aL+KOkr9c0zyxn
 ejWxjcuLcCzuozCIjsYSpgkVGacyT9R9fMd0y3sfIakatXBfG/3oRKNjtUj/wGDL7F0xHKTik5WW2
 zA4ULpU+dql60Brws1Puvh6qAPea86tFRgTJRMC6zQrxFdlrTH/vGiSK7+CUKmMbS8D0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7unTAqHre4JVVGG6RaoB8jPlYK1uDTtb4sknNm+FhDA=; b=i
 4grVbXadmnXwWSAPD1zNG9jQqzImgOuEDzeAZ4xBDQ69+fy7bV/3Ggtd8iIeyEo7W1z7rjjQwRM2f
 4xDQCs58G6dtwF+i/VO4BfLwX5UErhWX/u0ndSumGQV73nKJZtDt2DmVm1c4A5L065sFBJ0FiPze2
 F89014hf1R6rQ7WI=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tBEHJ-0005Xv-Tg for jfs-discussion@lists.sourceforge.net;
 Wed, 13 Nov 2024 14:23:31 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3a3fa97f09cso89327165ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 13 Nov 2024 06:23:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731507799; x=1732112599;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7unTAqHre4JVVGG6RaoB8jPlYK1uDTtb4sknNm+FhDA=;
 b=F0mhYxgu7HvGdwREmW8JapDfnHCVulqbwtJCiN+oMuq6CXhxVB3gKvoH/OoQ9R+aT5
 OYsouX4ENWZEao64k6CN/Ka+j85FKFAOQbG7bpFwL2TesNX7G/RMok+i9EX8fkm1wYr3
 rKyQzZncY52NmNGiE2x3ffakNCW90yQ0+RJXxufBI7qMuOf6KqD5ApCNhZIN0OAQqSoc
 uhrR5ZvBHhKu3Juehg8OVzwoOeRs008lmxy/Pg1b+8vEbyuweGbIfp7910Hmxdsdr/ON
 +WGM01EYM0ZPEZyCLXOfP0LwiGZ27yPDHP5zBN+Ir+lPm0FgAf55QNWx+YDL/FK13U4P
 ATBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX5/4+Li5kn6806XC+BhcxGaxPrINeuW4q04a18WUzXNs5DBWYnxww5gjYU1kQDFGi2zCfB4MWDEuaxgbMnuw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzFf+TyldnjnrSU9jDor6QjAtEfJaCasM+q5hvWf6uHGqoiZM2i
 fe1FYzSRa+YHqFK1l/upyxcwcIfNpcWWHQA+Z7NuUjMAiuk2Yb5iMCoNhw7JGeu9gBpx5ZkyQnG
 P7BaLfA7w7InZGbt7CLM/LKP+L24ekfQ9bc/A37apTxng0cjIN5F43E0=
X-Google-Smtp-Source: AGHT+IHyhq90/+5HBbm3XeFQ57RPHJKcZWQo/sHgHiI3k5DngEGlIZHGtSX99ujJP2S5olP8NSkamjHVZWuVS9QFj1Km/MsCyIWw
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3f0e:b0:3a7:1b59:a06b with SMTP id
 e9e14a558f8ab-3a71b59a42dmr13442105ab.8.1731507799140; Wed, 13 Nov 2024
 06:23:19 -0800 (PST)
Date: Wed, 13 Nov 2024 06:23:19 -0800
In-Reply-To: <671ae9ed.050a0220.2eb763.00cd.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6734b657.050a0220.2a2fcc.000e.GAE@google.com>
To: adilger.kernel@dilger.ca, gregkh@linuxfoundation.org, 
 jfs-discussion@lists.sourceforge.net, kent.overstreet@linux.dev, 
 linux-bcachefs@vger.kernel.org, linux-ext4@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, tj@kernel.org, tytso@mit.edu
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: f1b785f4c787 Merge tag 'for_linus' of git://git.kernel.org..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=15c78130580000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.198 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.198 listed in bl.score.senderscore.com]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1tBEHJ-0005Xv-Tg
X-Mailman-Approved-At: Fri, 15 Nov 2024 14:29:59 +0000
Subject: Re: [Jfs-discussion] [syzbot] [kernfs?] [jfs?] INFO: task hung in
 do_rmdir (6)
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
Reply-To: syzbot <syzbot+4128a26fb0f85ec9e76c@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    f1b785f4c787 Merge tag 'for_linus' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=15c78130580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1503500c6f615d24
dashboard link: https://syzkaller.appspot.com/bug?extid=4128a26fb0f85ec9e76c
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13c78130580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11f10b5f980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/0498fc027e02/disk-f1b785f4.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/e7fc27a5ed75/vmlinux-f1b785f4.xz
kernel image: https://storage.googleapis.com/syzbot-assets/f8db925dbfe1/bzImage-f1b785f4.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/afc6d52853ca/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4128a26fb0f85ec9e76c@syzkaller.appspotmail.com

INFO: task syz-executor120:5867 blocked for more than 143 seconds.
      Not tainted 6.12.0-rc7-syzkaller-00042-gf1b785f4c787 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor120 state:D stack:29104 pid:5867  tgid:5850  ppid:5846   flags:0x00004006
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5328 [inline]
 __schedule+0x17fa/0x4bd0 kernel/sched/core.c:6693
 __schedule_loop kernel/sched/core.c:6770 [inline]
 schedule+0x14b/0x320 kernel/sched/core.c:6785
 schedule_preempt_disabled+0x13/0x30 kernel/sched/core.c:6842
 rwsem_down_write_slowpath+0xeee/0x13b0 kernel/locking/rwsem.c:1176
 __down_write_common kernel/locking/rwsem.c:1304 [inline]
 __down_write kernel/locking/rwsem.c:1313 [inline]
 down_write_nested+0x1e0/0x220 kernel/locking/rwsem.c:1694
 inode_lock_nested include/linux/fs.h:850 [inline]
 do_rmdir+0x263/0x580 fs/namei.c:4387
 __do_sys_unlinkat fs/namei.c:4575 [inline]
 __se_sys_unlinkat fs/namei.c:4569 [inline]
 __x64_sys_unlinkat+0xde/0xf0 fs/namei.c:4569
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f5ab5ccabc9
RSP: 002b:00007f5ab5c60228 EFLAGS: 00000246 ORIG_RAX: 0000000000000107
RAX: ffffffffffffffda RBX: 00007f5ab5d5c6d8 RCX: 00007f5ab5ccabc9
RDX: 0000000000000200 RSI: 0000000020000100 RDI: 0000000000000003
RBP: 00007f5ab5d5c6d0 R08: 00007ffee618ebd7 R09: 00007f5ab5c606c0
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f5ab5d5c6dc
R13: 00007f5ab5d1f0c0 R14: 0030656c69662f2e R15: 00007ffee618ebd8
 </TASK>
INFO: task syz-executor120:5866 blocked for more than 144 seconds.
      Not tainted 6.12.0-rc7-syzkaller-00042-gf1b785f4c787 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor120 state:D stack:29104 pid:5866  tgid:5851  ppid:5847   flags:0x00004006
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5328 [inline]
 __schedule+0x17fa/0x4bd0 kernel/sched/core.c:6693
 __schedule_loop kernel/sched/core.c:6770 [inline]
 schedule+0x14b/0x320 kernel/sched/core.c:6785
 schedule_preempt_disabled+0x13/0x30 kernel/sched/core.c:6842
 rwsem_down_write_slowpath+0xeee/0x13b0 kernel/locking/rwsem.c:1176
 __down_write_common kernel/locking/rwsem.c:1304 [inline]
 __down_write kernel/locking/rwsem.c:1313 [inline]
 down_write_nested+0x1e0/0x220 kernel/locking/rwsem.c:1694
 inode_lock_nested include/linux/fs.h:850 [inline]
 do_rmdir+0x263/0x580 fs/namei.c:4387
 __do_sys_unlinkat fs/namei.c:4575 [inline]
 __se_sys_unlinkat fs/namei.c:4569 [inline]
 __x64_sys_unlinkat+0xde/0xf0 fs/namei.c:4569
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f5ab5ccabc9
RSP: 002b:00007f5ab5c60228 EFLAGS: 00000246 ORIG_RAX: 0000000000000107
RAX: ffffffffffffffda RBX: 00007f5ab5d5c6d8 RCX: 00007f5ab5ccabc9
RDX: 0000000000000200 RSI: 0000000020000100 RDI: 0000000000000003
RBP: 00007f5ab5d5c6d0 R08: 00007ffee618ebd7 R09: 00007f5ab5c606c0
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f5ab5d5c6dc
R13: 00007f5ab5d1f0c0 R14: 0030656c69662f2e R15: 00007ffee618ebd8
 </TASK>
INFO: task syz-executor120:5864 blocked for more than 145 seconds.
      Not tainted 6.12.0-rc7-syzkaller-00042-gf1b785f4c787 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor120 state:D stack:28240 pid:5864  tgid:5852  ppid:5845   flags:0x00004006
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5328 [inline]
 __schedule+0x17fa/0x4bd0 kernel/sched/core.c:6693
 __schedule_loop kernel/sched/core.c:6770 [inline]
 schedule+0x14b/0x320 kernel/sched/core.c:6785
 schedule_preempt_disabled+0x13/0x30 kernel/sched/core.c:6842
 rwsem_down_write_slowpath+0xeee/0x13b0 kernel/locking/rwsem.c:1176
 __down_write_common kernel/locking/rwsem.c:1304 [inline]
 __down_write kernel/locking/rwsem.c:1313 [inline]
 down_write_nested+0x1e0/0x220 kernel/locking/rwsem.c:1694
 inode_lock_nested include/linux/fs.h:850 [inline]
 do_rmdir+0x263/0x580 fs/namei.c:4387
 __do_sys_unlinkat fs/namei.c:4575 [inline]
 __se_sys_unlinkat fs/namei.c:4569 [inline]
 __x64_sys_unlinkat+0xde/0xf0 fs/namei.c:4569
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f5ab5ccabc9
RSP: 002b:00007f5ab5c60228 EFLAGS: 00000246 ORIG_RAX: 0000000000000107
RAX: ffffffffffffffda RBX: 00007f5ab5d5c6d8 RCX: 00007f5ab5ccabc9
RDX: 0000000000000200 RSI: 0000000020000100 RDI: 0000000000000003
RBP: 00007f5ab5d5c6d0 R08: 00007ffee618ebd7 R09: 00007f5ab5c606c0
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f5ab5d5c6dc
R13: 00007f5ab5d1f0c0 R14: 0030656c69662f2e R15: 00007ffee618ebd8
 </TASK>
INFO: task syz-executor120:5868 blocked for more than 145 seconds.
      Not tainted 6.12.0-rc7-syzkaller-00042-gf1b785f4c787 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor120 state:D stack:29104 pid:5868  tgid:5853  ppid:5849   flags:0x00004006
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5328 [inline]
 __schedule+0x17fa/0x4bd0 kernel/sched/core.c:6693
 __schedule_loop kernel/sched/core.c:6770 [inline]
 schedule+0x14b/0x320 kernel/sched/core.c:6785
 schedule_preempt_disabled+0x13/0x30 kernel/sched/core.c:6842
 rwsem_down_write_slowpath+0xeee/0x13b0 kernel/locking/rwsem.c:1176
 __down_write_common kernel/locking/rwsem.c:1304 [inline]
 __down_write kernel/locking/rwsem.c:1313 [inline]
 down_write_nested+0x1e0/0x220 kernel/locking/rwsem.c:1694
 inode_lock_nested include/linux/fs.h:850 [inline]
 do_rmdir+0x263/0x580 fs/namei.c:4387
 __do_sys_unlinkat fs/namei.c:4575 [inline]
 __se_sys_unlinkat fs/namei.c:4569 [inline]
 __x64_sys_unlinkat+0xde/0xf0 fs/namei.c:4569
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f5ab5ccabc9
RSP: 002b:00007f5ab5c60228 EFLAGS: 00000246 ORIG_RAX: 0000000000000107
RAX: ffffffffffffffda RBX: 00007f5ab5d5c6d8 RCX: 00007f5ab5ccabc9
RDX: 0000000000000200 RSI: 0000000020000100 RDI: 0000000000000003
RBP: 00007f5ab5d5c6d0 R08: 00007ffee618ebd7 R09: 00007f5ab5c606c0
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f5ab5d5c6dc
R13: 00007f5ab5d1f0c0 R14: 0030656c69662f2e R15: 00007ffee618ebd8
 </TASK>
INFO: task syz-executor120:5865 blocked for more than 146 seconds.
      Not tainted 6.12.0-rc7-syzkaller-00042-gf1b785f4c787 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor120 state:D stack:28088 pid:5865  tgid:5854  ppid:5848   flags:0x00004006
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5328 [inline]
 __schedule+0x17fa/0x4bd0 kernel/sched/core.c:6693
 __schedule_loop kernel/sched/core.c:6770 [inline]
 schedule+0x14b/0x320 kernel/sched/core.c:6785
 schedule_preempt_disabled+0x13/0x30 kernel/sched/core.c:6842
 rwsem_down_write_slowpath+0xeee/0x13b0 kernel/locking/rwsem.c:1176
 __down_write_common kernel/locking/rwsem.c:1304 [inline]
 __down_write kernel/locking/rwsem.c:1313 [inline]
 down_write_nested+0x1e0/0x220 kernel/locking/rwsem.c:1694
 inode_lock_nested include/linux/fs.h:850 [inline]
 do_rmdir+0x263/0x580 fs/namei.c:4387
 __do_sys_unlinkat fs/namei.c:4575 [inline]
 __se_sys_unlinkat fs/namei.c:4569 [inline]
 __x64_sys_unlinkat+0xde/0xf0 fs/namei.c:4569
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f5ab5ccabc9
RSP: 002b:00007f5ab5c60228 EFLAGS: 00000246 ORIG_RAX: 0000000000000107
RAX: ffffffffffffffda RBX: 00007f5ab5d5c6d8 RCX: 00007f5ab5ccabc9
RDX: 0000000000000200 RSI: 0000000020000100 RDI: 0000000000000003
RBP: 00007f5ab5d5c6d0 R08: 00007ffee618ebd7 R09: 00007f5ab5c606c0
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f5ab5d5c6dc
R13: 00007f5ab5d1f0c0 R14: 0030656c69662f2e R15: 00007ffee618ebd8
 </TASK>

Showing all locks held in the system:
1 lock held by khungtaskd/30:
 #0: ffffffff8e937da0 (rcu_read_lock){....}-{1:2}, at: rcu_lock_acquire include/linux/rcupdate.h:337 [inline]
 #0: ffffffff8e937da0 (rcu_read_lock){....}-{1:2}, at: rcu_read_lock include/linux/rcupdate.h:849 [inline]
 #0: ffffffff8e937da0 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x55/0x2a0 kernel/locking/lockdep.c:6720
1 lock held by kswapd0/89:
2 locks held by getty/5586:
 #0: ffff88803521a0a0 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x25/0x70 drivers/tty/tty_ldisc.c:243
 #1: ffffc900032332f0 (&ldata->atomic_read_lock){+.+.}-{3:3}, at: n_tty_read+0x6a6/0x1e00 drivers/tty/n_tty.c:2211
3 locks held by syz-executor120/5859:
2 locks held by syz-executor120/5867:
 #0: ffff88807b4ee420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
 #1: ffff888071e4c6c0 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
 #1: ffff888071e4c6c0 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: do_rmdir+0x263/0x580 fs/namei.c:4387
2 locks held by syz-executor120/5858:
2 locks held by syz-executor120/5866:
 #0: ffff88807b0e2420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
 #1: ffff888071e4c180 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
 #1: ffff888071e4c180 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: do_rmdir+0x263/0x580 fs/namei.c:4387
4 locks held by syz-executor120/5856:
2 locks held by syz-executor120/5864:
 #0: ffff8880339e2420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
 #1: ffff888071e10180 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
 #1: ffff888071e10180 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: do_rmdir+0x263/0x580 fs/namei.c:4387
2 locks held by syz-executor120/5860:
2 locks held by syz-executor120/5868:
 #0: ffff8880339ce420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
 #1: ffff888071e10c00 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
 #1: ffff888071e10c00 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: do_rmdir+0x263/0x580 fs/namei.c:4387
2 locks held by syz-executor120/5857:
2 locks held by syz-executor120/5865:
 #0: ffff88807b61a420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
 #1: ffff888071e106c0 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
 #1: ffff888071e106c0 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: do_rmdir+0x263/0x580 fs/namei.c:4387

=============================================

NMI backtrace for cpu 0
CPU: 0 UID: 0 PID: 30 Comm: khungtaskd Not tainted 6.12.0-rc7-syzkaller-00042-gf1b785f4c787 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/30/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 nmi_cpu_backtrace+0x49c/0x4d0 lib/nmi_backtrace.c:113
 nmi_trigger_cpumask_backtrace+0x198/0x320 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:162 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:223 [inline]
 watchdog+0xff4/0x1040 kernel/hung_task.c:379
 kthread+0x2f0/0x390 kernel/kthread.c:389
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 UID: 0 PID: 5859 Comm: syz-executor120 Not tainted 6.12.0-rc7-syzkaller-00042-gf1b785f4c787 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/30/2024
RIP: 0010:check_wait_context kernel/locking/lockdep.c:4840 [inline]
RIP: 0010:__lock_acquire+0x724/0x2050 kernel/locking/lockdep.c:5152
Code: 84 db 40 0f b6 c5 0f b6 cb 0f 44 c8 89 4c 24 54 48 8b 44 24 38 0f b6 04 10 84 c0 0f 85 74 13 00 00 41 8b 6d 00 41 89 ec ff cd <0f> 88 a2 00 00 00 89 eb 83 fd 31 73 79 48 8d 04 9b 48 8d 5c c6 20
RSP: 0018:ffffc90004077170 EFLAGS: 00000002
RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000001
RDX: dffffc0000000000 RSI: ffff8880305c0ae0 RDI: 000000000000000f
RBP: 0000000000000002 R08: ffffffff94298807 R09: 1ffffffff2853100
R10: dffffc0000000000 R11: fffffbfff2853101 R12: 0000000000000003
R13: ffff8880305c0ad8 R14: 1ffff110060b816f R15: ffff8880305c0b78
FS:  00007f5ab5c816c0(0000) GS:ffff8880b8700000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005611646182f8 CR3: 000000007437c000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <NMI>
 </NMI>
 <TASK>
 lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5825
 rcu_lock_acquire include/linux/rcupdate.h:337 [inline]
 rcu_read_lock include/linux/rcupdate.h:849 [inline]
 page_ref_add_unless include/linux/page_ref.h:235 [inline]
 folio_ref_add_unless include/linux/page_ref.h:248 [inline]
 folio_try_get+0x3b/0x350 include/linux/page_ref.h:264
 filemap_get_entry+0x240/0x3b0 mm/filemap.c:1852
 __filemap_get_folio+0x71/0xbd0 mm/filemap.c:1887
 __find_get_block_slow fs/buffer.c:203 [inline]
 __find_get_block+0x28a/0x1150 fs/buffer.c:1404
 bdev_getblk+0x33/0x550 fs/buffer.c:1431
 __bread_gfp+0x86/0x400 fs/buffer.c:1491
 sb_bread include/linux/buffer_head.h:346 [inline]
 get_branch+0x2c3/0x6e0 fs/sysv/itree.c:102
 get_block+0x180/0x16d0 fs/sysv/itree.c:222
 block_read_full_folio+0x418/0xcd0 fs/buffer.c:2401
 filemap_read_folio+0x14b/0x630 mm/filemap.c:2367
 do_read_cache_folio+0x3f5/0x850 mm/filemap.c:3825
 read_mapping_folio include/linux/pagemap.h:1011 [inline]
 dir_get_folio fs/sysv/dir.c:64 [inline]
 sysv_readdir+0x193/0x540 fs/sysv/dir.c:93
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents64 fs/readdir.c:407 [inline]
 __se_sys_getdents64+0x1d3/0x4a0 fs/readdir.c:392
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f5ab5ccabc9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 b1 18 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f5ab5c81228 EFLAGS: 00000246 ORIG_RAX: 00000000000000d9
RAX: ffffffffffffffda RBX: 00007f5ab5d5c6c8 RCX: 00007f5ab5ccabc9
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000003
RBP: 00007f5ab5d5c6c0 R08: 00007f5ab5c816c0 R09: 00007f5ab5c816c0
R10: 00007f5ab5c816c0 R11: 0000000000000246 R12: 00007f5ab5d5c6cc
R13: 00007f5ab5d1f0c0 R14: 0030656c69662f2e R15: 00007ffee618ebd8
 </TASK>
INFO: NMI handler (nmi_cpu_backtrace_handler) took too long to run: 1.655 msecs


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
