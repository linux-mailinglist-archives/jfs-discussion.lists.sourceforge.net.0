Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A57423F91
	for <lists+jfs-discussion@lfdr.de>; Wed,  6 Oct 2021 15:46:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mY7FM-0003Bm-GF; Wed, 06 Oct 2021 13:46:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sunhao.th@gmail.com>) id 1mY2Xz-0004WN-DN
 for jfs-discussion@lists.sourceforge.net; Wed, 06 Oct 2021 08:45:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CsCbYjz8dFz00N87257DDnN4ifuXdxMfNWH4KsglU/8=; b=TwwKEWYEA2n7C2Ee1SJECkqucI
 1GwKwqy2OyF6DUhRqm/74rZgJn+ptnyA9iojw7WMv+5SYkGEZHwGeomrCynuV2uDXwMGjZVQLjCig
 DkK9Rq/VRvvqrGLPGM8vCoVni2dJ8wdSl06aiAWUOJWnacsCwyfFxGAmZUUmpK2+ERsg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CsCbYjz8dFz00N87257DDnN4ifuXdxMfNWH4KsglU/8=; b=l
 hkerAKM8cX27OiuEFqBJSz8jlsbdqiXlD6UuEcRRdr/cIRRWEc5gYl5ekyDZyjvRoDFLhOk+ORqep
 FVSf3F2/Z0Cxr0lwwUeap/WohMmoUQY2xT1jWBEkND2t45bPhykKMqVL4GziRbLIZw3lkh1WI/aHo
 KEokXY6qAk2uMrN4=;
Received: from mail-pj1-f44.google.com ([209.85.216.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mY2Xy-008IuQ-Aq
 for jfs-discussion@lists.sourceforge.net; Wed, 06 Oct 2021 08:45:07 +0000
Received: by mail-pj1-f44.google.com with SMTP id
 cs11-20020a17090af50b00b0019fe3df3dddso3387209pjb.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 06 Oct 2021 01:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=CsCbYjz8dFz00N87257DDnN4ifuXdxMfNWH4KsglU/8=;
 b=du3XiuPXZsJp3KNSSLGlhwG2xCw1DtESyh3x3vyqD4E7NLXDeuj8fRaNex4c2GEqpQ
 WnlFnjcNxbDBT7yj+F88RnSfyqQ04AYuOig/1kVotz97lv/9y4t6zI7Fb6+eIvhPmHr8
 7J9HNBC2Ddci9lxwAtUq505xNbhP6nMDFNGV6rDPMebVdEHPnfAYuL8NWuSmEplK9lzS
 6mYN4q5GOlr9VMekfpk7f3wka+8KKNf2EglxrD6AOMZovsEwrzvBd0QwXYPRGvRP0qY9
 9j2Svl7PyfcLeXhpiaT2EwEeVQea/UnJ3PgRmwRMYRaRXvLSARqjar6pSmTHWa38pWBx
 qnug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=CsCbYjz8dFz00N87257DDnN4ifuXdxMfNWH4KsglU/8=;
 b=FdoNy2Why3xaMJAg9RVpW9KFCCON7dQ5g5y6RkYAiajdjhbfIWI3CipcZoIruYaHNI
 R3MOPqqLZMSaS31i7qdRuyPtttPNlKlKi4GK6kmco559vIYJDzQGNPO7JW39AaRJeXBp
 vjZ8uopypJ7/XlpHu83yErelt9byNqqOh/MD8ISyqk1rYxkiFBPEF236X7b8KSyIHi2q
 SL1WARzLG9MFDQDIuC0i4BQWAh7R2qHpt+Dm8T2UwFphBx0vV72m8s3jG1ng5ivpRWk+
 iNHySE1/65hHHiYuxlwH4poh3gglvho9s8r3LZeqkcRJuXwsO2sxZhxo2XnfeY8wcpKQ
 rmLA==
X-Gm-Message-State: AOAM5310abyN0Z+5Qbzb3E9phbZL8DbaE1PXSdyev6wIiHlrstk16QWn
 GTl7LtXQIoolqj2vhYgFOsW/5LtEdVOJg7/hH99hAfxC2LrD83M=
X-Google-Smtp-Source: ABdhPJzMmEs1ZhGyHEZwEduVCp/vaUPJr7zme16UC0oAK7UArY3e1SHJ+JoKRVO8RiWgaNHvTI9P8l7Biaqo9uo6VGE=
X-Received: by 2002:a17:903:2341:b0:13e:ae30:412 with SMTP id
 c1-20020a170903234100b0013eae300412mr9876635plh.15.1633509900415; Wed, 06 Oct
 2021 01:45:00 -0700 (PDT)
MIME-Version: 1.0
From: Hao Sun <sunhao.th@gmail.com>
Date: Wed, 6 Oct 2021 16:44:49 +0800
Message-ID: <CACkBjsYganRrN=WjgcotH1RdZ99_6mPuy=GhsFrq2CUNOUrpbA@mail.gmail.com>
To: jfs-discussion@lists.sourceforge.net, shaggy@kernel.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, When using Healer to fuzz the latest Linux kernel,
 the following crash was triggered. HEAD commit: 0513e464f900 Merge tag
 'perf-tools-fixes-for-v5.15-2021-09-27'
 git tree: upstream console output:
 https://drive.google.com/file/d/1NSVdsjViaEUbSeaWVC-UYThJlWp0lvVW/view?usp=sharing
 kernel [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sunhao.th[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.44 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qemu.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mY2Xy-008IuQ-Aq
X-Mailman-Approved-At: Wed, 06 Oct 2021 13:46:11 +0000
Subject: [Jfs-discussion] kernel BUG in jfs_evict_inode
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

When using Healer to fuzz the latest Linux kernel, the following crash
was triggered.

HEAD commit: 0513e464f900 Merge tag 'perf-tools-fixes-for-v5.15-2021-09-27'
git tree: upstream
console output:
https://drive.google.com/file/d/1NSVdsjViaEUbSeaWVC-UYThJlWp0lvVW/view?usp=sharing
kernel config: https://drive.google.com/file/d/1Jqhc4DpCVE8X7d-XBdQnrMoQzifTG5ho/view?usp=sharing
C reproducer: https://drive.google.com/file/d/184Rm6ijCSvoPQ5yHX7LOzbjXVtx7lyvN/view?usp=sharing
Syzlang reproducer:
https://drive.google.com/file/d/12c_LoGNiQQOutVwi3b2XL83fDTG_BpdB/view?usp=sharing

If you fix this issue, please add the following tag to the commit:
Reported-by: Hao Sun <sunhao.th@gmail.com>

------------[ cut here ]------------
kernel BUG at fs/jfs/inode.c:168!
invalid opcode: 0000 [#1] PREEMPT SMP
CPU: 0 PID: 2759 Comm: syz-executor Not tainted 5.15.0-rc3+ #21
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
rel-1.12.0-59-gc9ba5276e321-prebuilt.qemu.org 04/01/2014
RIP: 0010:jfs_evict_inode+0x157/0x1a0 fs/jfs/inode.c:168
Code: 83 78 28 00 74 0d e8 48 b5 7f ff 48 89 df e8 c0 de 00 00 e8 3b
b5 7f ff 48 89 df e8 33 25 b1 ff e9 fb fe ff ff e8 29 b5 7f ff <0f> 0b
e8 22 b5 7f ff 48 89 df e8 1a 34 00 00 eb b4 e8 13 b5 7f ff
RSP: 0018:ffffc90000867d68 EFLAGS: 00010293
RAX: 0000000000000000 RBX: ffff888018cb41a8 RCX: 0000000000000000
RDX: ffff8880167ec500 RSI: ffffffff81b7dc37 RDI: ffff888018cb41a8
RBP: ffffffff81b7dae0 R08: 0000000000000001 R09: 0000000000000001
R10: ffffc90000867ce8 R11: 0000000000000001 R12: ffffffff84964600
R13: ffffffff853a64cd R14: ffff88801a91d980 R15: ffff88801a91d000
FS:  00000000025cb940(0000) GS:ffff88807dc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffc3c3d0da4 CR3: 0000000016458000 CR4: 0000000000750ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
PKRU: 55555554
Call Trace:
 evict+0xfd/0x1e0 fs/inode.c:588
 dispose_list+0x61/0x90 fs/inode.c:621
 evict_inodes+0x194/0x1f0 fs/inode.c:671
 generic_shutdown_super+0x45/0x170 fs/super.c:454
 kill_block_super+0x2c/0x60 fs/super.c:1395
 deactivate_locked_super+0x43/0x80 fs/super.c:335
 deactivate_super+0x53/0x80 fs/super.c:366
 cleanup_mnt+0x138/0x1b0 fs/namespace.c:1137
 task_work_run+0x86/0xd0 kernel/task_work.c:164
 tracehook_notify_resume include/linux/tracehook.h:189 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:175 [inline]
 exit_to_user_mode_prepare+0x271/0x280 kernel/entry/common.c:207
 __syscall_exit_to_user_mode_work kernel/entry/common.c:289 [inline]
 syscall_exit_to_user_mode+0x19/0x60 kernel/entry/common.c:300
 do_syscall_64+0x40/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x46c777
Code: ff d0 48 89 c7 b8 3c 00 00 00 0f 05 48 c7 c1 bc ff ff ff f7 d8
64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 b8 a6 00 00 00 0f 05 <48> 3d
01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc3c3d14d8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 000000000046c777
RDX: 0000000000404e22 RSI: 0000000000000002 RDI: 00007ffc3c3d15a0
RBP: 00007ffc3c3d15a0 R08: 00000000025d5033 R09: 000000000000000b
R10: 00000000fffffffb R11: 0000000000000246 R12: 00000000004e38c6
R13: 00007ffc3c3d2650 R14: 00007ffc3c3d264c R15: 0000000000000010
Modules linked in:
Dumping ftrace buffer:
   (ftrace buffer empty)
---[ end trace a937ecc93c68ee05 ]---
RIP: 0010:jfs_evict_inode+0x157/0x1a0 fs/jfs/inode.c:168
Code: 83 78 28 00 74 0d e8 48 b5 7f ff 48 89 df e8 c0 de 00 00 e8 3b
b5 7f ff 48 89 df e8 33 25 b1 ff e9 fb fe ff ff e8 29 b5 7f ff <0f> 0b
e8 22 b5 7f ff 48 89 df e8 1a 34 00 00 eb b4 e8 13 b5 7f ff
RSP: 0018:ffffc90000867d68 EFLAGS: 00010293
RAX: 0000000000000000 RBX: ffff888018cb41a8 RCX: 0000000000000000
RDX: ffff8880167ec500 RSI: ffffffff81b7dc37 RDI: ffff888018cb41a8
RBP: ffffffff81b7dae0 R08: 0000000000000001 R09: 0000000000000001
R10: ffffc90000867ce8 R11: 0000000000000001 R12: ffffffff84964600
R13: ffffffff853a64cd R14: ffff88801a91d980 R15: ffff88801a91d000
FS:  00000000025cb940(0000) GS:ffff88807dc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffc3c3d0da4 CR3: 0000000016458000 CR4: 0000000000750ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
PKRU: 55555554


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
