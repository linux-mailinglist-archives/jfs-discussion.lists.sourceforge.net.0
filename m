Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75415C29010
	for <lists+jfs-discussion@lfdr.de>; Sun, 02 Nov 2025 15:14:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=F+K+wqQD6Eh2s35HRFRUUSgmggrYQmw0QsUrxlDtdN8=; b=dZMSobljWn+3syWkHzRTSgrPiv
	NRCFn6i748oYbooBqisBHRJGvTD0rnA0trg2jTIhIYWYF/q5zM2Q3oPM/FzHq5v43/pjIbx0sMZCg
	/tDR3Oksv0GNiexJW80PF3BzcsiDVfAyfQHqgrlGE7NStQ3BNFGNmPU3AMCL1wJsOA2I=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vFYpu-00061z-TH;
	Sun, 02 Nov 2025 14:13:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3CVkGaQkbACQSYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vFGxo-0007zh-FX for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Nov 2025 19:08:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MAiywPjy7NLH9045EEUj3oLT+kun3yr5PB6bQ5IPlJo=; b=jMAG5acu62sbgi0ObtYzDyVMgC
 URyH3ijOxRh7jB31SiWy+o6Pk3wGMn0G5wqlfMXWK6hw9kaXK0h4RyUEO5Fiw/rRToe8KX400gOgt
 pqY6qDvyDth4579P+Wwm//7D1d8KU1fqobuz8MLVmBynWoz28XPS2YoXsHlPWHKXIltA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MAiywPjy7NLH9045EEUj3oLT+kun3yr5PB6bQ5IPlJo=; b=Q
 GFUnG6ZWI8JA46cYp08h+8jcRRCbULnlO6IJMho3bpLusiEALVwiHZAo/ODwWHf0GSJiDWQnfe8vU
 lxkYodVrOVAFP+lp4SxYwnpILYD5fCNbx03zrJzlvf3uf55nNm79FiR5tgY8zKgggc0QnIuM+M5eL
 jvIZZLzln3CAqU5E=;
Received: from mail-io1-f78.google.com ([209.85.166.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vFGxn-0000LE-V0 for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Nov 2025 19:08:36 +0000
Received: by mail-io1-f78.google.com with SMTP id
 ca18e2360f4ac-940e4cf730aso908052239f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 01 Nov 2025 12:08:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762024110; x=1762628910;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MAiywPjy7NLH9045EEUj3oLT+kun3yr5PB6bQ5IPlJo=;
 b=n7R+VJSafFmSiTCqY2/3GbMgEMkYcyCVynb+iIewman1YFeYGXQviI5kOXwOuwV2pO
 QkHaCeP5syFaIq+vCL+E03GjCNXhsZ0Cs7m32MgAjtnnzJZNt4v1rZbFdc0aon6+OD4Z
 qaEP3hC8q6m8vkRoU4lu5VPK+mFz1I8HEeIdNmRfav2l+A+jLpV4m6jp6wgQoK3BIOPg
 spehpVof514mqJjhCma+1gP5os9FutBm6GtKJirVudX+hVVtAHrxrsgdCPXgNdEemwXv
 2SnrgEdQGDCxSP4L6Lb5sBQlMJMicWaIFQapiEM7xJEUUIGGrZKsjHCumNbhLlIYBc3Q
 UhOg==
X-Gm-Message-State: AOJu0YxMYVFL2o+8fEoqE4M3kj+5kao10wkga/BXF9ym6PdiHxjCo6rE
 L5Y0NryiNtB+XEDk/uJa88TrVQemcJs2Qfbb77sjGytVDS+jiPb+TMBXxCSBd0vbiB0JvZ9LyUB
 fQl9xF0HaFRc+0wYKqb1nixKChn+5TKfHavd9L4cG6YbtDVu8ey+xWT6qJ8gQxA==
X-Google-Smtp-Source: AGHT+IEEq1rXevZwsSiYkKzWhOWFF9h5mipACKb7FI1QJG/76X5i4aNC6OBjLGE3hSaw60+fxWLDr9R+jTG90daerREWWSzn4lHF
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3e8c:b0:430:b05a:ecb3 with SMTP id
 e9e14a558f8ab-4330d12c9bdmr120428095ab.9.1762023689072; Sat, 01 Nov 2025
 12:01:29 -0700 (PDT)
Date: Sat, 01 Nov 2025 12:01:29 -0700
In-Reply-To: <6906424b.050a0220.29fc44.0007.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69065909.050a0220.29fc44.000a.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: ba36dd5ee6fd Merge tag 'bpf-fixes' of git://git.kernel.org..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=16032342580000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.78 listed in wl.mailspike.net]
X-Headers-End: 1vFGxn-0000LE-V0
X-Mailman-Approved-At: Sun, 02 Nov 2025 14:13:37 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] stack segment fault in
 dbUpdatePMap
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
Reply-To: syzbot <syzbot+f5a5b157b7336d1fda1d@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    ba36dd5ee6fd Merge tag 'bpf-fixes' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=16032342580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=41ad820f608cb833
dashboard link: https://syzkaller.appspot.com/bug?extid=f5a5b157b7336d1fda1d
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1760b932580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16ca3258580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/b151a6a8b947/disk-ba36dd5e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ddc072fd4513/vmlinux-ba36dd5e.xz
kernel image: https://storage.googleapis.com/syzbot-assets/7cdcc5b6e230/bzImage-ba36dd5e.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/d873406bb3bb/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=113b4292580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f5a5b157b7336d1fda1d@syzkaller.appspotmail.com

Oops: stack segment: 0000 [#1] SMP KASAN PTI
CPU: 1 UID: 0 PID: 122 Comm: jfsCommit Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/02/2025
RIP: 0010:__list_add_valid_or_report+0x3e/0x130 lib/list_debug.c:29
Code: 00 00 00 48 89 d3 48 85 d2 0f 84 93 00 00 00 49 89 f6 49 89 ff 49 bd 00 00 00 00 00 fc ff df 4c 8d 63 08 4c 89 e5 48 c1 ed 03 <42> 80 7c 2d 00 00 74 08 4c 89 e7 e8 32 c4 9d fd 4d 39 34 24 75 71
RSP: 0018:ffffc900039e7a20 EFLAGS: 00010a06
RAX: 0000000000000000 RBX: dead000000000100 RCX: ffff88801ff1bc00
RDX: dead000000000100 RSI: ffffc90003229330 RDI: ffff88814729dc40
RBP: 1bd5a00000000021 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffffbfff1dac5cf R12: dead000000000108
R13: dffffc0000000000 R14: ffffc90003229330 R15: ffff88814729dc40
FS:  0000000000000000(0000) GS:ffff888126ef9000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fffcb89299c CR3: 0000000035922000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 __list_add_valid include/linux/list.h:96 [inline]
 __list_add include/linux/list.h:158 [inline]
 list_add include/linux/list.h:177 [inline]
 dbUpdatePMap+0x7e4/0xeb0 fs/jfs/jfs_dmap.c:577
 txAllocPMap+0x57d/0x6b0 fs/jfs/jfs_txnmgr.c:2426
 txUpdateMap+0x2a2/0x9c0 fs/jfs/jfs_txnmgr.c:2309
 txLazyCommit fs/jfs/jfs_txnmgr.c:2665 [inline]
 jfs_lazycommit+0x3f1/0xa10 fs/jfs/jfs_txnmgr.c:2734
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x4bc/0x870 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__list_add_valid_or_report+0x3e/0x130 lib/list_debug.c:29
Code: 00 00 00 48 89 d3 48 85 d2 0f 84 93 00 00 00 49 89 f6 49 89 ff 49 bd 00 00 00 00 00 fc ff df 4c 8d 63 08 4c 89 e5 48 c1 ed 03 <42> 80 7c 2d 00 00 74 08 4c 89 e7 e8 32 c4 9d fd 4d 39 34 24 75 71
RSP: 0018:ffffc900039e7a20 EFLAGS: 00010a06
RAX: 0000000000000000 RBX: dead000000000100 RCX: ffff88801ff1bc00
RDX: dead000000000100 RSI: ffffc90003229330 RDI: ffff88814729dc40
RBP: 1bd5a00000000021 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffffbfff1dac5cf R12: dead000000000108
R13: dffffc0000000000 R14: ffffc90003229330 R15: ffff88814729dc40
FS:  0000000000000000(0000) GS:ffff888126ef9000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fffcb89299c CR3: 0000000035922000 CR4: 00000000003526f0
----------------
Code disassembly (best guess):
   0:	00 00                	add    %al,(%rax)
   2:	00 48 89             	add    %cl,-0x77(%rax)
   5:	d3 48 85             	rorl   %cl,-0x7b(%rax)
   8:	d2 0f                	rorb   %cl,(%rdi)
   a:	84 93 00 00 00 49    	test   %dl,0x49000000(%rbx)
  10:	89 f6                	mov    %esi,%esi
  12:	49 89 ff             	mov    %rdi,%r15
  15:	49 bd 00 00 00 00 00 	movabs $0xdffffc0000000000,%r13
  1c:	fc ff df
  1f:	4c 8d 63 08          	lea    0x8(%rbx),%r12
  23:	4c 89 e5             	mov    %r12,%rbp
  26:	48 c1 ed 03          	shr    $0x3,%rbp
* 2a:	42 80 7c 2d 00 00    	cmpb   $0x0,0x0(%rbp,%r13,1) <-- trapping instruction
  30:	74 08                	je     0x3a
  32:	4c 89 e7             	mov    %r12,%rdi
  35:	e8 32 c4 9d fd       	call   0xfd9dc46c
  3a:	4d 39 34 24          	cmp    %r14,(%r12)
  3e:	75 71                	jne    0xb1


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
