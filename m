Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25193AA4D7D
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Apr 2025 15:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mxyaf0qBPmUdw2OJNTUlxWDBSqDJFAYWod3BVC29BS0=; b=mSAqKzXE8iNcm6EGScUqOS7CNv
	B3KOVx4DGLPTfG6RlW8+MB5i8FQXNwUiB4W+eGQY4NwmZ3R8rYrYh7FQSdlbk9pdB5bE17vdoacvQ
	DoIf1Lkxju0n9oIEboVKfQvtimsT2co4/zzH+RytwnUOyfHPLIT5E2+vYDjxi3HEzMIM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uA7VB-00035n-Ly;
	Wed, 30 Apr 2025 13:29:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ByUSaAkbAOAUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uA7Sf-0004P5-01 for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 13:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G+237LQ5iDTpGgWqsmXhiKAIuePyLHF0GBZhVW2IFIM=; b=j3fdY5CEKY4rXFI4z87BfI8asZ
 0JJYQch0sipHSmNNmQznuE0ddRmu+FKs9K7BVJNAYcdK8k03JOnaz3/Mr4sVFNXfXIIx5G1ZZan3w
 MBBLz9PtUK+gqDnDRunxwg2h2+WPrlHPRbc9fOwozCBEjnaEsyPUiRvsWWLYD130Spy4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=G+237LQ5iDTpGgWqsmXhiKAIuePyLHF0GBZhVW2IFIM=; b=A
 zgLvIZBM3rIFtvIopWJ3djiwATMF5Y/nu3QoS9UrNx6S25OYuLsS7YXlGoVqcds/7mx1qGnsjXWTh
 li3EC0qmD7wXz13u/nVUSSVVKXHEcQllvPiQCMsq4mJmsz+ELksqoSTVtanmiC7ogEwvzhP7AGIke
 jheVLtq8yCub5X2A=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uA7SP-0000pG-5t for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 13:26:52 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-3d8dd0c9143so112064595ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 30 Apr 2025 06:26:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746019591; x=1746624391;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=G+237LQ5iDTpGgWqsmXhiKAIuePyLHF0GBZhVW2IFIM=;
 b=JvLXo1AIe5iIguuT6nemHdzpC1Y6nJwu858lFpBvAVTXt6+kWQUrsmXIhZ5MxeV5uT
 M1qtXoUdRtu/OXeuLmlgwbGodEAnFv99LJWFbwPPY2k2DwAb2AM7US5J/Zw7DcYLPWrH
 pYjlm+4pDoF2GXRwLXaAz7XX/pHApXho83cchWhFRsiJ8w5msc15fUQaj8gCQrNyjPYh
 fbW1ROyv+T2bioTt1ws/GT5rV8hHTq66rQsAf9Gqb6A5yM7DIHLz/FQhVSb2RJuo5byI
 0I8Hygd62CsIUTJnzg2juNEjVX9/WJQW1BN7W1AuaLvgL+8MEbXk5k26Scds23L/ihy8
 /7zg==
X-Gm-Message-State: AOJu0Yz/X/YPxZp4qScpO5MqCLRzspbFsfPztnQ8C5VVubI7FjaARSWA
 z+Ms6vrc7EtmyOTQ2+p5hfrhghTwGrhA/NvCPzztA6oEuZBJccdetQ5hxYyqYgZDhnZjOofLiM5
 Hpu9w3yZKy9nnzFTc5t942A9/pSrJs9P8ETZX+e9H5T9flbNLMU+W1dQV1Q==
X-Google-Smtp-Source: AGHT+IHGbfhQQEPzUz/dA5V7wtEkPe7oRP8F8ANZhTN+H60vE9AaujMpDbZMmkEMdnQtHG85jwPtGBMDh2oJABDF16VyoEvP1BXU
MIME-Version: 1.0
X-Received: by 2002:a92:cd84:0:b0:3d9:666f:486d with SMTP id
 e9e14a558f8ab-3d9677192b4mr32545115ab.15.1746019591545; Wed, 30 Apr 2025
 06:26:31 -0700 (PDT)
Date: Wed, 30 Apr 2025 06:26:31 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68122507.050a0220.3a872c.0001.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: c72692105976
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.208 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.208 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1uA7SP-0000pG-5t
X-Mailman-Approved-At: Wed, 30 Apr 2025 13:29:27 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 jfs_statfs (3)
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
Reply-To: syzbot <syzbot+13ba7f3e9a17f77250fe@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    c72692105976 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=16b1f574580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2a6efb1b6b7e84ef
dashboard link: https://syzkaller.appspot.com/bug?extid=13ba7f3e9a17f77250fe
compiler:       Debian clang version 20.1.2 (++20250402124445+58df0ef89dd6-1~exp1~20250402004600.97), Debian LLD 20.1.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/bc4c947b6a4c/disk-c7269210.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/26198601f51b/vmlinux-c7269210.xz
kernel image: https://storage.googleapis.com/syzbot-assets/426ac395cf1d/Image-c7269210.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+13ba7f3e9a17f77250fe@syzkaller.appspotmail.com

 ... Log Wrap ... Log Wrap ... Log Wrap ...
------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/super.c:140:14
shift exponent 770 is too large for 64-bit type 's64' (aka 'long long')
CPU: 1 UID: 0 PID: 6605 Comm: syz.1.10 Not tainted 6.15.0-rc2-syzkaller-gc72692105976 #0 PREEMPT 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2025
Call trace:
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:466 (C)
 __dump_stack+0x30/0x40 lib/dump_stack.c:94
 dump_stack_lvl+0xd8/0x12c lib/dump_stack.c:120
 dump_stack+0x1c/0x28 lib/dump_stack.c:129
 ubsan_epilogue+0x14/0x48 lib/ubsan.c:231
 __ubsan_handle_shift_out_of_bounds+0x2b0/0x34c lib/ubsan.c:492
 jfs_statfs+0x400/0x484 fs/jfs/super.c:140
 statfs_by_dentry fs/statfs.c:66 [inline]
 vfs_statfs+0x13c/0x2b0 fs/statfs.c:90
 ovl_check_namelen fs/overlayfs/super.c:388 [inline]
 ovl_get_upper fs/overlayfs/super.c:506 [inline]
 ovl_fill_super+0x5b8/0x2bac fs/overlayfs/super.c:1387
 vfs_get_super fs/super.c:1280 [inline]
 get_tree_nodev+0xb4/0x144 fs/super.c:1299
 ovl_get_tree+0x28/0x38 fs/overlayfs/params.c:701
 vfs_get_tree+0x90/0x28c fs/super.c:1759
 do_new_mount+0x228/0x814 fs/namespace.c:3879
 path_mount+0x5b4/0xde0 fs/namespace.c:4206
 do_mount fs/namespace.c:4219 [inline]
 __do_sys_mount fs/namespace.c:4430 [inline]
 __se_sys_mount fs/namespace.c:4407 [inline]
 __arm64_sys_mount+0x3e8/0x468 fs/namespace.c:4407
 __invoke_syscall arch/arm64/kernel/syscall.c:35 [inline]
 invoke_syscall+0x98/0x2b8 arch/arm64/kernel/syscall.c:49
 el0_svc_common+0x130/0x23c arch/arm64/kernel/syscall.c:132
 do_el0_svc+0x48/0x58 arch/arm64/kernel/syscall.c:151
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:744
 el0t_64_sync_handler+0x78/0x108 arch/arm64/kernel/entry-common.c:762
 el0t_64_sync+0x198/0x19c arch/arm64/kernel/entry.S:600
---[ end trace ]---
read_mapping_page failed!
ERROR: (device loop1): txAbort: 

ERROR: (device loop1): remounting filesystem as read-only
overlayfs: failed to create directory ./file0/work (errno: 5); mounting read-only
overlayfs: failed to set uuid (/file2, err=-30); falling back to uuid=null.
netlink: 277 bytes leftover after parsing attributes in process `syz.1.10'.


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
