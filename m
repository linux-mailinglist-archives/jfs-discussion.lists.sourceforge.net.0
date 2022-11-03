Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2E4618345
	for <lists+jfs-discussion@lfdr.de>; Thu,  3 Nov 2022 16:50:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oqcTf-0000Xl-Nr;
	Thu, 03 Nov 2022 15:49:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3B-BjYwkbAHgouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oqcGv-0004xB-DL for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Nov 2022 15:36:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SmBanKmH3B77hr7XKdZXp0mnnw6233CG5cr0B84kKMo=; b=Z7mQkW8uCdpljn00TniM20QDbh
 yuSrs5d/Dmn9iYtC8mRDzERfjhy2GdzER91Gx4XScDZK3g4hikSG6uPQK9UiXg++qVH5622CbqzM/
 N1nReg1JuEj3gI2erqmeKdYX4kw6+QT8Nael2m/Rb3767vPIcvEzxjJ5GLOHS8vp+QT0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SmBanKmH3B77hr7XKdZXp0mnnw6233CG5cr0B84kKMo=; b=F
 /GSg9R5xIvEtcaOwgmAnRoKH6OWM/QQ92cMvUi5KZA16COLul82UTaLUajBs1+rH7mZC7JPhkrGWO
 TO62Niz1PatY2vftsPcOUf24yAhRUnxJ37EurRL89YXbAp2yT//FmCF0WiUSPHhT4/H7E7dz7z6ml
 DALR4D3seh4ZKL3Q=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oqcGr-00AgHi-AI for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Nov 2022 15:36:49 +0000
Received: by mail-il1-f197.google.com with SMTP id
 x6-20020a056e021ca600b002ffe4b15419so1844034ill.4
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 03 Nov 2022 08:36:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=SmBanKmH3B77hr7XKdZXp0mnnw6233CG5cr0B84kKMo=;
 b=c/wWpVO7t+sNQeka/hYvuj2mUmCs0gjN6fkR0KBKfdKHdqGE6Jstj9tjWOxxoJqelK
 B54y6zhQPijPjetFlDXYU+t7hnjBINmqzT//zxu3Gzg8GYKtNncb/z469fBqCXk38BoZ
 pjVvCz5V0EWaByc23LO3/V9h1kiySWceTXYPCahY5oieBaV7j5kF5oPyTMVFZU0C0Qs2
 JBbZgPvJDiADp25o+qF3ekiqpAgeUYYZ5LlFUAIwdVOnxcOYB0dAwmtGZEl/Uky/BsyX
 5AtVpgRVY1agAGMaWCC7gnzEyVRCcgLGQnwJRAc1Is9mvTGQJzOHSbh/AMeI3H6SjIM4
 JNUg==
X-Gm-Message-State: ACrzQf39wBOeEj3c2dTw2RMfwsmV0FUXBTFyMB9J4nNMo5puRi3Im52y
 jBaCUcFUFKhw0MEZ473Ogp5l/viFSAnfmRwQp1hJmkWJ+t4w
X-Google-Smtp-Source: AMsMyM5+5MJe7Y/B16++THF4wH5AA2DXzrzhsHVfFR88Qo9qW55ymSH90H9Up1TE5QMfyiKRPlKhubPAYcIckFyIEPlVbIdFuipq
MIME-Version: 1.0
X-Received: by 2002:a92:d603:0:b0:300:941d:f302 with SMTP id
 w3-20020a92d603000000b00300941df302mr17232432ilm.176.1667489799717; Thu, 03
 Nov 2022 08:36:39 -0700 (PDT)
Date: Thu, 03 Nov 2022 08:36:39 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002ddd5805ec92b9f9@google.com>
From: syzbot <syzbot+3367cd73f9cc686a9763@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: bbed346d5a96
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
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
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
X-Headers-End: 1oqcGr-00AgHi-AI
X-Mailman-Approved-At: Thu, 03 Nov 2022 15:49:59 +0000
Subject: [Jfs-discussion] [syzbot] BUG: unable to handle kernel NULL pointer
 dereference in __get_metapage
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

HEAD commit:    bbed346d5a96 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=11143afc880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3a4a45d2d827c1e
dashboard link: https://syzkaller.appspot.com/bug?extid=3367cd73f9cc686a9763
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e8e91bc79312/disk-bbed346d.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c1cb3fb3b77e/vmlinux-bbed346d.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+3367cd73f9cc686a9763@syzkaller.appspotmail.com

Unable to handle kernel NULL pointer dereference at virtual address 0000000000000030
Mem abort info:
  ESR = 0x0000000096000006
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x06: level 2 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000006
  CM = 0, WnR = 0
user pgtable: 4k pages, 48-bit VAs, pgdp=0000000156537000
[0000000000000030] pgd=080000015320e003, p4d=080000015320e003, pud=08000001530cd003, pmd=0000000000000000
Internal error: Oops: 0000000096000006 [#1] PREEMPT SMP
Modules linked in:
CPU: 1 PID: 15207 Comm: syz-executor.2 Not tainted 6.0.0-rc7-syzkaller-18095-gbbed346d5a96 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
pstate: 80400005 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : __get_metapage+0xd4/0x7e0
lr : __get_metapage+0xa0/0x7e0 fs/jfs/jfs_metapage.c:600
sp : ffff80001f743a50
x29: ffff80001f743a50 x28: 000000000000000c x27: 0000000000000000
x26: ffff80000d532000 x25: 0000000000001000 x24: 000000000000000b
x23: 0000000000001000 x22: ffff0001122b1e88 x21: 0000000000000001
x20: 0000000000000000 x19: 000000000000000b x18: 00000000000000a5
x17: ffff80000bffd6bc x16: ffff80000db49158 x15: ffff0001233a3500
x14: 0000000000000008 x13: 00000000ffffffff x12: 0000000000040000
x11: 000000000000a262 x10: ffff800018655000 x9 : ffff800008d539c4
x8 : 0000000000000000 x7 : ffff8000085e8ba4 x6 : 0000000000000000
x5 : 0000000000000000 x4 : 0000000000000000 x3 : 0000000000000001
x2 : 0000000000001000 x1 : 0000000000000001 x0 : 0000000000000000
Call trace:
 __get_metapage+0xd4/0x7e0
 diReadSpecial+0xf0/0x218 fs/jfs/jfs_imap.c:443
 jfs_mount+0xf4/0x468 fs/jfs/jfs_mount.c:108
 jfs_fill_super+0x188/0x454 fs/jfs/super.c:556
 mount_bdev+0x1b8/0x210 fs/super.c:1400
 jfs_do_mount+0x44/0x58 fs/jfs/super.c:670
 legacy_get_tree+0x30/0x74 fs/fs_context.c:610
 vfs_get_tree+0x40/0x140 fs/super.c:1530
 do_new_mount+0x1dc/0x4e4 fs/namespace.c:3040
 path_mount+0x358/0x914 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __arm64_sys_mount+0x2c4/0x3c4 fs/namespace.c:3568
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581
Code: eb15033f 540006e2 97d53089 aa1603e8 (f9401915) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	eb15033f 	cmp	x25, x21
   4:	540006e2 	b.cs	0xe0  // b.hs, b.nlast
   8:	97d53089 	bl	0xffffffffff54c22c
   c:	aa1603e8 	mov	x8, x22
* 10:	f9401915 	ldr	x21, [x8, #48] <-- trapping instruction


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
