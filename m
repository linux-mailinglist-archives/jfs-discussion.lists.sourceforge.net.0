Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BE8702ED9
	for <lists+jfs-discussion@lfdr.de>; Mon, 15 May 2023 15:55:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pyYev-0000SA-Lr;
	Mon, 15 May 2023 13:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3061fZAkbANYKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pxrFn-000609-DL for jfs-discussion@lists.sourceforge.net;
 Sat, 13 May 2023 15:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aAgvi+hKTLEvn6404KesPduiFToAEOmz//Bkp7rH+nU=; b=Eene9u1bNzcVy+lIJDnzi6/QyX
 bPtejjXWNTjdqjJMeGEb8vX0v33gVSBw2289WvJvox2ObfccuWB0skDbEopPXC9G9/oWULNUgMKxA
 ETIlR/6FvnfEVv5lNFzcXs2AWUtD4LpkqPkBho4aiQPiM/oHuJwqLM7TbljWHNLotK/c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=aAgvi+hKTLEvn6404KesPduiFToAEOmz//Bkp7rH+nU=; b=R
 6sHb0/ceVZ1X5NhSWyNM22Ks1ddAru8Fu7QKBGZqcqC2i9m0cM37e3lPTwRYwNihn445Kqndv0UFI
 jtnmFdrevVGKnKNbXaNWPA1ItHxrAsKmzDOQQxMmIvurEg5f9MrM86khQVCwxHL/T0ic5vLTyeMxs
 Y0COPkBtwP9jzbOo=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pxrFk-006GjH-6X for jfs-discussion@lists.sourceforge.net;
 Sat, 13 May 2023 15:33:51 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-33456e0a12bso62180535ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 13 May 2023 08:33:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683992019; x=1686584019;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=aAgvi+hKTLEvn6404KesPduiFToAEOmz//Bkp7rH+nU=;
 b=A4C3fXn4uV+GghJjV4WEV5HVe5iYFvX67dJ0mCFFfY4+jGjknRMDFhFxpm+L4viNq+
 /2a1r4VAj4R5i03WBHz/SCT9yM8WSXPkYn433YNvK0Lx4Z7ZwHapUK8Y7toA+cIh3fau
 wxYK5Nnl+oYzKLdSPb0lHsjMVUjG7bIt41BOec4aHHD9Ma+cyG0RsUi716S2jAOcLMDk
 8W6YTSL6J34meRRhSEyBUCIdt4gqskDwMQnSx+5NsE9OI1uUSiR+eF39Skqd3/qHIuaI
 tM+9DuCZJuP1urY31rbJ3zEwKJ/r8JRPOAO3xD3dJo4/g/kHwo3QsB1PfslmKj2kPhTI
 j7Vg==
X-Gm-Message-State: AC+VfDwCO0g+34zK8vgpUEQegP+xWKqUMGGbZssuz1ofbZDvDiDIIGOq
 aouFlzeoArc/1FtieDmVRyVJZqiYr0Hhmrn7qK7E8U9JO1OVTek=
X-Google-Smtp-Source: ACHHUZ7WytFWQeobYVerIwdatJX6lGAhpMCO3F93mqFX77Q584A1/EoJwZsBLR6NU652JTvQTVBGlBEyM2Q/pNhB7E0NLqW9KtKB
MIME-Version: 1.0
X-Received: by 2002:a92:b106:0:b0:335:ba2a:c3d with SMTP id
 t6-20020a92b106000000b00335ba2a0c3dmr6483049ilh.5.1683992019328; Sat, 13 May
 2023 08:33:39 -0700 (PDT)
Date: Sat, 13 May 2023 08:33:39 -0700
In-Reply-To: <00000000000013dee605f4fedf8b@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001de64005fb94f2f1@google.com>
From: syzbot <syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mirimmad17@gmail.com, mirimmad@outlook.com, 
 shaggy@kernel.org, skhan@linuxfoundation.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 14f8db1c0f9a Merge branch 'for-next/core' into for-kernelci git
 tree: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pxrFk-006GjH-6X
X-Mailman-Approved-At: Mon, 15 May 2023 13:54:41 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: null-ptr-deref Read in
 txBegin
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

HEAD commit:    14f8db1c0f9a Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=12f5764e280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a837a8ba7e88bb45
dashboard link: https://syzkaller.appspot.com/bug?extid=f1faa20eec55e0c8644c
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15b9e24e280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=105d3e46280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ad6ce516eed3/disk-14f8db1c.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/1f38c2cc7667/vmlinux-14f8db1c.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d795115eee39/Image-14f8db1c.gz.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/014681b264cc/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com

WARNING: The mand mount option has been deprecated and
         and is ignored by this kernel. Remove the mand
         option from the mount to silence this warning.
=======================================================
Unable to handle kernel paging request at virtual address dfff800000000008
KASAN: null-ptr-deref in range [0x0000000000000040-0x0000000000000047]
Mem abort info:
  ESR = 0x0000000096000006
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x06: level 2 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000006
  CM = 0, WnR = 0
[dfff800000000008] address between user and kernel address ranges
Internal error: Oops: 0000000096000006 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 5926 Comm: syz-executor228 Not tainted 6.3.0-rc7-syzkaller-g14f8db1c0f9a #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 04/14/2023
pstate: 80400005 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : generic_test_bit include/asm-generic/bitops/generic-non-atomic.h:128 [inline]
pc : txBegin+0x138/0x5e0 fs/jfs/jfs_txnmgr.c:366
lr : txBegin+0x104/0x5e0 fs/jfs/jfs_txnmgr.c:357
sp : ffff80001eb37660
x29: ffff80001eb37680 x28: dfff800000000000 x27: dfff800000000000
x26: ffff800016308bc8 x25: 0000000000000040 x24: 0000000000000000
x23: ffff800016306520 x22: ffff0000d6a57c30 x21: 0000000000000150
x20: 0000000000000008 x19: 0000000000000000 x18: ffff80001eb37360
x17: ffff800008ad82e4 x16: ffff80000831ae40 x15: 000000000000bb8c
x14: 000000003eb35159 x13: dfff800000000000 x12: ffff700003d66eb4
x11: 0000000000000001 x10: 0000000000000000 x9 : 0000000000000000
x8 : 1ffff00002c5f670 x7 : 0000000000000000 x6 : 0000000000000000
x5 : ffff800019238f80 x4 : 0000000000000008 x3 : ffff80000831af70
x2 : 0000000000000001 x1 : 0000000000000000 x0 : 0000000000000000
Call trace:
 txBegin+0x138/0x5e0 fs/jfs/jfs_txnmgr.c:362
 __jfs_xattr_set+0xc8/0x190 fs/jfs/xattr.c:915
 jfs_xattr_set+0x58/0x70 fs/jfs/xattr.c:941
 __vfs_setxattr+0x3d8/0x400 fs/xattr.c:203
 __vfs_setxattr_noperm+0x110/0x528 fs/xattr.c:237
 __vfs_setxattr_locked+0x1ec/0x218 fs/xattr.c:298
 vfs_setxattr+0x1a8/0x344 fs/xattr.c:324
 do_setxattr fs/xattr.c:609 [inline]
 setxattr+0x208/0x29c fs/xattr.c:632
 path_setxattr+0x17c/0x258 fs/xattr.c:651
 __do_sys_setxattr fs/xattr.c:667 [inline]
 __se_sys_setxattr fs/xattr.c:663 [inline]
 __arm64_sys_setxattr+0xbc/0xd8 fs/xattr.c:663
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall+0x98/0x2c0 arch/arm64/kernel/syscall.c:52
 el0_svc_common+0x138/0x258 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x64/0x198 arch/arm64/kernel/syscall.c:193
 el0_svc+0x4c/0x15c arch/arm64/kernel/entry-common.c:637
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:591
Code: 9400012e aa1703e0 95954bf6 350002f8 (387c6a88) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	9400012e 	bl	0x4b8
   4:	aa1703e0 	mov	x0, x23
   8:	95954bf6 	bl	0x6552fe0
   c:	350002f8 	cbnz	w24, 0x68
* 10:	387c6a88 	ldrb	w8, [x20, x28] <-- trapping instruction


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
