Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 928C8A9FF90
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Apr 2025 04:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Bg9ahQHDmOWCDFFCVq27qUToSK7FAYkBrTg1oyL6dvY=; b=DGE2GWiz9uF2f4h1zo1Fss9ptT
	r1t356hj0mf9/Imk/99q7q4/ZGs/u479bAvxrvsZubBviweTf23AKCTKPWjPaB1diz2cBzRxYBexU
	HnKpDEdwF4Z84Ec7v96GZrUnSNUc4dx69vlqwG2qEtQqtdl2Zz3LNvjGxDdfBFunKyZA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u9aSC-0001Ez-FH;
	Tue, 29 Apr 2025 02:12:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luckd0g@163.com>) id 1u9aSA-0001Eq-QH
 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Apr 2025 02:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OOJEyNNIozxvUtkC8q39i19kPDutAv+II32wP9Kdf9w=; b=PaxRow5dtEHVM9msLGs7IJxj3T
 lKaMSb4hY/jihguWHD6dlIquzM2MyBGDLZvMU5XelawPdT0VpSdb1DPsdXH4B5o42uQQZPUcPnOWj
 lTzPpXQ2RmV+Tg/JIZfsgqllX8mU+YAwRfDqJ7tW5w3J3pT3vTBzV6JViqiwCegY/RPA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OOJEyNNIozxvUtkC8q39i19kPDutAv+II32wP9Kdf9w=; b=e
 N6jw64PuTu44tLCo/Vt+6+JYJkymhN1dI2YGyq2ht7aN4gjuSefXHmISuWHYLcr8P4oT+8DJcdKid
 bVxMbZ4yZpcua/Ze8XczCj0avxtQlR/KxFyp6TJ1zyb1yJfNmCtPbjwQt6EEvKA5k8xnWt4FKI0un
 3890dsQ6MeGHWj2s=;
Received: from m16.mail.163.com ([220.197.31.2])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u9aRt-0003MG-6M for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Apr 2025 02:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
 Message-ID; bh=MKYPBsTauSfu80f6bYX5seZZch4mAdg69P83Vpogko0=; b=o
 Xk1B3/vcnCJlanlww9d8UIXWrVobAQK/jzUX1MtaVSpYsBGRc5b49xSApqCJv9rY
 ECOg1Ms2mcQcE/kYRs71U4GVMIkR1ZD7aHr1sLJZtQUk3X2924ep0sba6A0MRtDU
 Y9qRwxaguc/QErwNUwmHqyRpZsU17W71ik2D/xrBDU=
Received: from luckd0g$163.com ( [183.205.138.3] ) by
 ajax-webmail-wmsvr-40-123 (Coremail) ; Tue, 29 Apr 2025 10:11:28 +0800
 (CST)
X-Originating-IP: [183.205.138.3]
Date: Tue, 29 Apr 2025 10:11:28 +0800 (CST)
To: stable@vger.kernel.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
X-NTES-SC: AL_Qu2fB/SSvU4j7iCdZekfmU4Rhug7UMO3uf8n24JfPJ9wjAnp9wIAfHlFIHrNwsKdJiGJnh6RfyR++sdAc4Bceqw5b+kaYVCJiSQibuFJj7bURQ==
MIME-Version: 1.0
Message-ID: <70ae959e.21a4.1967f5040b6.Coremail.luckd0g@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eygvCgD3v1xQNRBoR4gQAA--.56744W
X-CM-SenderInfo: poxfyvkqj6il2tof0z/1tbiPRE9imgPaWMWlgADs1
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 I found a potential bug titled " kernel BUG in write_dev_supers
 " with modified syzkaller in the Linux6.15-rc1. If you fix this issue, please
 add the following tag to the commit: Reported-by: J [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [220.197.31.2 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [220.197.31.2 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [220.197.31.2 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [220.197.31.2 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luckd0g[at]163.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1u9aRt-0003MG-6M
Subject: [Jfs-discussion] kernel BUG in write_dev_supers in linux6.15-rc1
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
From: Jianzhou Zhao via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jianzhou Zhao <luckd0g@163.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello, I found a potential bug titled "  kernel BUG in write_dev_supers  " with modified syzkaller in the  Linux6.15-rc1.
If you fix this issue, please add the following tag to the commit:  Reported-by: Jianzhou Zhao <luckd0g@163.com>,    xingwei lee <xrivendell7@gmail.com>
The commit of the kernel is : 0af2f6be1b4281385b618cb86ad946eded089ac8
kernel config: https://syzkaller.appspot.com/text?tag=KernelConfig&x=4c918722cb7e3d7
compiler: gcc version 11.4.0

Unfortunately, we failed to generate the reproduction program of this bug.

------------[ cut here ]-----------------------------------------
 TITLE:   kernel BUG in write_dev_supers 
------------[ cut here ]------------
==================================================================
assertion failed: folio_order(folio) == 0, in fs/btrfs/disk-io.c:3856
------------[ cut here ]------------
kernel BUG at fs/btrfs/disk-io.c:3856!
Oops: invalid opcode: 0000 [#1] SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 9462 Comm: syz-executor Not tainted 6.15.0-rc1-dirty #9 PREEMPT(full) 
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
RIP: 0010:write_dev_supers+0x7f0/0x910 fs/btrfs/disk-io.c:3856
Code: e9 03 ff ff ff e8 70 a3 eb fd b9 10 0f 00 00 48 c7 c2 60 c0 d9 8b 48 c7 c6 60 c7 d9 8b 48 c7 c7 e0 c0 d9 8b e8 41 d4 ca fd 90 <0f> 0b 48 8b 7c 24 38 e8 04 f9 51 fe e9 3d f9 ff ff e8 3a f8 51 fe
RSP: 0018:ffffc900053ff7c0 EFLAGS: 00010286
RAX: 0000000000000045 RBX: ffff888029e60000 RCX: ffffffff819a5929
RDX: 0000000000000000 RSI: ffff88801eb9bc80 RDI: 0000000000000002
RBP: ffffea0001560a00 R08: fffffbfff1c4bb00 R09: fffff52000a7feb1
R10: fffff52000a7feb0 R11: ffffc900053ff587 R12: dffffc0000000000
R13: 0000000000000000 R14: 0000000000000002 R15: 0000000001000000
FS:  000055556e3c5500(0000) GS:ffff888097b41000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f8af4976080 CR3: 0000000076248000 CR4: 0000000000752ef0
PKRU: 80000000
Call Trace:
 <TASK>
 write_all_supers+0x921/0x3680 fs/btrfs/disk-io.c:4153
 btrfs_commit_transaction+0x2dad/0x4620 fs/btrfs/transaction.c:2541
 btrfs_sync_fs+0x130/0x760 fs/btrfs/super.c:1040
 sync_filesystem fs/sync.c:66 [inline]
 sync_filesystem+0x1d3/0x2a0 fs/sync.c:30
 generic_shutdown_super+0x74/0x390 fs/super.c:621
 kill_anon_super+0x3a/0x60 fs/super.c:1237
 btrfs_kill_super+0x3c/0x50 fs/btrfs/super.c:2100
 deactivate_locked_super+0xb8/0x130 fs/super.c:473
 deactivate_super fs/super.c:506 [inline]
 deactivate_super+0xb1/0xd0 fs/super.c:502
 cleanup_mnt+0x378/0x510 fs/namespace.c:1435
 task_work_run+0x16f/0x280 kernel/task_work.c:227
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:114 [inline]
 exit_to_user_mode_prepare include/linux/entry-common.h:329 [inline]
 __syscall_exit_to_user_mode_work kernel/entry/common.c:207 [inline]
 syscall_exit_to_user_mode+0x29e/0x2a0 kernel/entry/common.c:218
 do_syscall_64+0xdc/0x260 arch/x86/entry/syscall_64.c:100
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fe31fbadfcb
Code: a8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 90 f3 0f 1e fa 31 f6 e9 05 00 00 00 0f 1f 44 00 00 f3 0f 1e fa b8 a6 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 05 c3 0f 1f 40 00 48 c7 c2 a8 ff ff ff f7 d8
RSP: 002b:00007fff6eed1d98 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 00000000000000cf RCX: 00007fe31fbadfcb
RDX: 00007fe31fa4eb30 RSI: 0000000000000009 RDI: 00007fff6eed1e50
RBP: 00007fff6eed1e50 R08: 0000000000000000 R09: 00007fff6eed1c20
R10: 000055556e3d8673 R11: 0000000000000246 R12: 00007fe31fc44135
R13: 00007fff6eed2f20 R14: 000055556e3d8600 R15: 000000000003644b
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:write_dev_supers+0x7f0/0x910 fs/btrfs/disk-io.c:3856
Code: e9 03 ff ff ff e8 70 a3 eb fd b9 10 0f 00 00 48 c7 c2 60 c0 d9 8b 48 c7 c6 60 c7 d9 8b 48 c7 c7 e0 c0 d9 8b e8 41 d4 ca fd 90 <0f> 0b 48 8b 7c 24 38 e8 04 f9 51 fe e9 3d f9 ff ff e8 3a f8 51 fe
RSP: 0018:ffffc900053ff7c0 EFLAGS: 00010286
RAX: 0000000000000045 RBX: ffff888029e60000 RCX: ffffffff819a5929
RDX: 0000000000000000 RSI: ffff88801eb9bc80 RDI: 0000000000000002
RBP: ffffea0001560a00 R08: fffffbfff1c4bb00 R09: fffff52000a7feb1
R10: fffff52000a7feb0 R11: ffffc900053ff587 R12: dffffc0000000000
R13: 0000000000000000 R14: 0000000000000002 R15: 0000000001000000
FS:  000055556e3c5500(0000) GS:ffff8880eb341000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fa5b213e730 CR3: 0000000076248000 CR4: 0000000000752ef0
PKRU: 80000000
==================================================================

I hope it helps.
Best regards
Jianzhou Zhao
_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
