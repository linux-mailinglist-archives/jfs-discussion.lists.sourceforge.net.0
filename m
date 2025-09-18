Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6CAB8A8B1
	for <lists+jfs-discussion@lfdr.de>; Fri, 19 Sep 2025 18:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=oHS05Kfcuxa95/Ra/H72PBgvWzC+DZ2xciDoQ1AdgLQ=; b=lySosB35OThU4d+FoYLnklwk09
	cfkaAfEjztrs90QJOLmM8NdDLzBTXKI1otrc9pDjbtqepemEmfJEptrY+iKEs4xHlQ9p6ugO9EzCP
	jNNTmmT2VwNHDLvIdfwEzPjGn82UAkAoiFeYId0TSQwfTK99PlfQfRu0F2cBUwXnSv18=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uzdoV-0003zT-6Z;
	Fri, 19 Sep 2025 16:18:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3J3nMaAkbAJgKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uzM9k-0007XW-P1 for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Sep 2025 21:27:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vO3dnOquriC0id4bsNg8UcBS4t91sizOfvuwuJ4d2hw=; b=b6Nml68wxDbWeBIe+F71Bc9YkG
 SBks+C4afF9yH+pcqGep8losiKsDle/nk2r9lU3lHbrXXCXRdmU7/V2eTYL95RQCCOTYikJs5v1tP
 MWkjGZyOfj77URKLvVcNFn9jJRsSU+w5EEhlaxy9CsMjMKxK+idsf75sCqfyaf8bco2Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vO3dnOquriC0id4bsNg8UcBS4t91sizOfvuwuJ4d2hw=; b=j
 soZdCOMkH9o3G/80jejFJdmR0+Ynu+4j4bwBVi4i/lUHEfktfO16irlnIE03xCJX5NyP/xY05rDRZ
 fqcF8CNH7BRttsMGpvj8c/rJAjYjfivxcF4J3GrFQIvU+UohUh9mjpU4GEnyXr4ajfxo4ObmDKwCr
 d2HSJCx+qPE4DQTU=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uzM9l-0003NB-1D for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Sep 2025 21:27:09 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-424074f3f83so37093915ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 18 Sep 2025 14:27:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758230823; x=1758835623;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vO3dnOquriC0id4bsNg8UcBS4t91sizOfvuwuJ4d2hw=;
 b=hSonDt+2XV9o7ESqjVGiSE7NnYKgg/1K6hux2OQupE/CSeYmrfQF8a4Aqauo4EjiNT
 F0cCymW0jqY+a/heN1AoPb68PKHd/UaZJtM7rHsoowzBk2zEplQ/JafRbIb1aIyvO/dz
 k+qgxrE4UjEIfD2d8opr+TlApegDTkBLrZe3HLcSq5Gke9dOuwnOMn1+wWhYe4TkwzB0
 ieq8iJ543r4BnumcJVbqdWD5M+d+IX0oYU/ugyinewahcnq65/o2wBJTbcdaWy4IlgL8
 1cz7/B33Lb25KrdO9J8vTp3ch7hN8OXVzcdtxXS4PfzJQK6QqGCLeP8K+5UiDZ1b1q80
 guYw==
X-Gm-Message-State: AOJu0YxDR3SHq3gEsnW02nkOOdgTc80cOZf8U9/0LTOXlTm7neMUsjYv
 58pujkzgtpnR5YWwaCFqdbQyHEt6dMY8lj94evhbjromLyXgdbni7ljfHlDwudRMjwhZync86s8
 9LlmgNtF7042gcZxA4z+LcqyLsU1MFn0itRKds/R8tzEgjYr0vOnvTloFO9Y=
X-Google-Smtp-Source: AGHT+IGNHdEqmXZoE5Vu2n9If7dgxKsrMgYBqwzxl9DHXCARi+FNgAvOT6PJAZEqRqJK2c+LOG78Ac4PIcDjl6TOmCmnGN+AfYyK
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1b05:b0:424:8013:c7dd with SMTP id
 e9e14a558f8ab-4248190b458mr19985015ab.1.1758230823325; Thu, 18 Sep 2025
 14:27:03 -0700 (PDT)
Date: Thu, 18 Sep 2025 14:27:03 -0700
In-Reply-To: <20250918210414.15022-1-pedrodemargomes@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68cc7927.a00a0220.37dadf.000b.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 pedrodemargomes@gmail.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch but the reproducer
 is still triggering an issue: kernel BUG in jfs_evict_inode [ cut here ]
 kernel BUG at fs/jfs/inode.c:169! Oops: invalid opcode: 0000 [#1] SMP KASAN
 NOPTI CPU: 0 UID: 0 PID: 5829 Comm: syz-executor Not tainted syzkaller #0
 PREEMPT(full) [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1uzM9l-0003NB-1D
X-Mailman-Approved-At: Fri, 19 Sep 2025 16:18:22 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in dtDelete
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
Reply-To: syzbot <syzbot+4f9c823a6f63d87491ba@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch but the reproducer is still triggering an issue:
kernel BUG in jfs_evict_inode

------------[ cut here ]------------
kernel BUG at fs/jfs/inode.c:169!
Oops: invalid opcode: 0000 [#1] SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 5829 Comm: syz-executor Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:jfs_evict_inode+0x438/0x440 fs/jfs/inode.c:169
Code: fe e9 e0 fd ff ff 44 89 f1 80 e1 07 80 c1 03 38 c1 0f 8c 23 fe ff ff 4c 89 f7 e8 53 32 e8 fe e9 16 fe ff ff e8 a9 30 83 fe 90 <0f> 0b 66 0f 1f 44 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90
RSP: 0018:ffffc9000294fae0 EFLAGS: 00010293
RAX: ffffffff833c7ea7 RBX: ffff888040f50430 RCX: ffff888000b00000
RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff888040f50430
RBP: 0000000000000001 R08: ffffffff8fa1dc37 R09: 1ffffffff1f43b86
R10: dffffc0000000000 R11: ffffffff833c5ba0 R12: dffffc0000000000
R13: dffffc0000000000 R14: ffff888040f500b8 R15: ffffffff833c7a70
FS:  0000555570297500(0000) GS:ffff88808d261000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffd8d810d68 CR3: 00000000594b6000 CR4: 0000000000352ef0
Call Trace:
 <TASK>
 evict+0x504/0x9c0 fs/inode.c:810
 dispose_list fs/inode.c:852 [inline]
 evict_inodes+0x64c/0x6d0 fs/inode.c:906
 generic_shutdown_super+0x9a/0x2c0 fs/super.c:628
 kill_block_super+0x44/0x90 fs/super.c:1766
 deactivate_locked_super+0xb9/0x130 fs/super.c:474
 cleanup_mnt+0x425/0x4c0 fs/namespace.c:1375
 task_work_run+0x1d1/0x260 kernel/task_work.c:227
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 exit_to_user_mode_loop+0xec/0x110 kernel/entry/common.c:43
 exit_to_user_mode_prepare include/linux/irq-entry-common.h:225 [inline]
 syscall_exit_to_user_mode_work include/linux/entry-common.h:175 [inline]
 syscall_exit_to_user_mode include/linux/entry-common.h:210 [inline]
 do_syscall_64+0x2bd/0x3b0 arch/x86/entry/syscall_64.c:100
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fd644f8e497
Code: a8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 01 c3 48 c7 c2 a8 ff ff ff f7 d8 64 89 02 b8
RSP: 002b:00007ffd8d811518 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 00007fd64500e08c RCX: 00007fd644f8e497
RDX: 0000000000000000 RSI: 0000000000000009 RDI: 00007ffd8d8115d0
RBP: 00007ffd8d8115d0 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000246 R12: 00007ffd8d812660
R13: 00007fd64500e08c R14: 0000000000023de4 R15: 00007ffd8d8126a0
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:jfs_evict_inode+0x438/0x440 fs/jfs/inode.c:169
Code: fe e9 e0 fd ff ff 44 89 f1 80 e1 07 80 c1 03 38 c1 0f 8c 23 fe ff ff 4c 89 f7 e8 53 32 e8 fe e9 16 fe ff ff e8 a9 30 83 fe 90 <0f> 0b 66 0f 1f 44 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90
RSP: 0018:ffffc9000294fae0 EFLAGS: 00010293
RAX: ffffffff833c7ea7 RBX: ffff888040f50430 RCX: ffff888000b00000
RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff888040f50430
RBP: 0000000000000001 R08: ffffffff8fa1dc37 R09: 1ffffffff1f43b86
R10: dffffc0000000000 R11: ffffffff833c5ba0 R12: dffffc0000000000
R13: dffffc0000000000 R14: ffff888040f500b8 R15: ffffffff833c7a70
FS:  0000555570297500(0000) GS:ffff88808d261000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000c009bee020 CR3: 00000000594b6000 CR4: 0000000000352ef0


Tested on:

commit:         cbf658dd Merge tag 'net-6.17-rc7' of git://git.kernel...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1261cf62580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=839dff357af8f40d
dashboard link: https://syzkaller.appspot.com/bug?extid=4f9c823a6f63d87491ba
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
patch:          https://syzkaller.appspot.com/x/patch.diff?x=11123f62580000



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
