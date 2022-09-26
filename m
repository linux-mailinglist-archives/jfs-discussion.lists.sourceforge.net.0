Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B955EACB5
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Sep 2022 18:38:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ocr7L-00066V-Km;
	Mon, 26 Sep 2022 16:38:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3atQxYwkbAPktz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ocr3L-00062j-L3 for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 16:33:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sH/T/5nf2i+jeNlSqZiHLFAU4DhNiChsnk0LGWVzHxQ=; b=N/+ySU0PNz9IBRQRrijpdC/MaQ
 /EmCTuQF9JISnjcJjfNcn74j+Cx6dxOk78BIsc5pG3pOzmxo3ND9EJJTOqnY26Pb0qT0AIeWTIrRX
 wAY/jIS10cREmQHbmhMlS55ipwi91qLWM6zW/1QztcGRUSu8mfW4XFC0fWx1ZzcYEL2Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sH/T/5nf2i+jeNlSqZiHLFAU4DhNiChsnk0LGWVzHxQ=; b=f
 +P+LmeWR6QN7mW5q9z+G1xOHkpt/ogyeez6dJNaCkU3VG4fH+G9GBMWlgyb1U9pDxFQGTjaWkDRfB
 7WiMexlvUn/OenrMDYmE0zh72d/GfC0rRrk106df3i9je6kYHKWO8mVr/45DZMrn3TwRn5cGBIEeR
 GXJbI6S1T2FGVnSo=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ocr3I-0001pW-7P for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 16:33:55 +0000
Received: by mail-il1-f199.google.com with SMTP id
 h10-20020a92c26a000000b002f57c5ac7dbso5537802ild.15
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Sep 2022 09:33:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=sH/T/5nf2i+jeNlSqZiHLFAU4DhNiChsnk0LGWVzHxQ=;
 b=MwH45nSepxgMcxDfg4Sz4EE+OEo8S8/WbfZAtyDAY5VeWiToEIRpc5EknLgRYjiSzH
 wDSX25P5HNdecGP/m2JXsssDeuAunMLl/DSUaSnUhDzMOlDsseNfbtTY4zGZs762J231
 kn0D3DHciI0EwgD93FS3gy/Wxb2jzMHVkowxpcYyeQ5Uzv0gz/iqzkwOvvZorKnXkszN
 F679+aMDRcbNH+ctqKem96tF22C7wT57bAbvyYwqwCpyhRLeQmGFPWF2/kCnIFWadqeh
 g1y+YFg+c0yKufubPjlxt7pt+sgltHrezPwNqVLS2L17Szty+rO2TIM5v6Hgo6xUafm6
 T/Fw==
X-Gm-Message-State: ACrzQf1KLqVR9kZRa4UkQ5kbDTVfctQFz3O598xAPDbdpCxfWx8fsTfT
 goRtZEfLhg2dy7XzJK8oMsY6Pp8Kg79jldSmDQ1TnX8KbC9u
X-Google-Smtp-Source: AMsMyM5yhMIxXjeRH2xGVyDxfsCSbKvYLZ0BJ6Tl2N7b8S8v/cZMzyoXx9f0UyI0beRfBt2N4wIibctCF2WQqcVageVxZOX4EulH
MIME-Version: 1.0
X-Received: by 2002:a92:c108:0:b0:2f6:b612:cbb5 with SMTP id
 p8-20020a92c108000000b002f6b612cbb5mr9896021ile.34.1664210026663; Mon, 26 Sep
 2022 09:33:46 -0700 (PDT)
Date: Mon, 26 Sep 2022 09:33:46 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007898e505e9971783@google.com>
From: syzbot <syzbot+c853277dcbfa2182e9aa@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: c194837ebb57
 Merge branch 'for-next/core', remote-tracking.. git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1ocr3I-0001pW-7P
X-Mailman-Approved-At: Mon, 26 Sep 2022 16:38:01 +0000
Subject: [Jfs-discussion] [syzbot] BUG: unable to handle kernel NULL pointer
 dereference in dtInsertEntry
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
console output: https://syzkaller.appspot.com/x/log.txt?x=1271d188880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=15a770deac0c935a
dashboard link: https://syzkaller.appspot.com/bug?extid=c853277dcbfa2182e9aa
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10d2d470880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14717b18880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/8d8ae425e7fa/disk-c194837e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c540d501ebe7/vmlinux-c194837e.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c853277dcbfa2182e9aa@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 65535
Unable to handle kernel NULL pointer dereference at virtual address 0000000000000008
Mem abort info:
  ESR = 0x0000000096000046
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x06: level 2 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000046
  CM = 0, WnR = 1
user pgtable: 4k pages, 48-bit VAs, pgdp=000000010b4bb000
[0000000000000008] pgd=080000010b405003, p4d=080000010b405003, pud=0800000107ba1003, pmd=0000000000000000
Internal error: Oops: 0000000096000046 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 3064 Comm: syz-executor267 Not tainted 6.0.0-rc6-syzkaller-17742-gc194837ebb57 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
pstate: 80400005 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : dtInsertEntry+0x470/0x660 fs/jfs/jfs_dtree.c:3708
lr : dtInsertEntry+0x468/0x660 fs/jfs/jfs_dtree.c:3708
sp : ffff80000ff7b820
x29: ffff80000ff7b8a0 x28: ffff0000ca10aed8 x27: ffff0000ca10aef8
x26: 0000000000000000 x25: 000000000000000d x24: 0000000000000001
x23: 0000000000000000 x22: 0000000000000073 x21: 0000000000000006
x20: ffff80000ff7b908 x19: 0000000000000079 x18: 00000000000000c0
x17: ffff80000dd0b198 x16: 0000000000000000 x15: 0000000000000000
x14: 0000000000000000 x13: 0000000000008000 x12: ffff80000d5335c0
x11: ff80800008d4c768 x10: 0000000000000000 x9 : 0000000000000000
x8 : 00000000000000ff x7 : ffff800008d5cfac x6 : 0000000000000000
x5 : 0000000000000000 x4 : ffff80000ff7b900 x3 : ffff80000ff7b908
x2 : ffff80000ff7b9b0 x1 : 0000000000000000 x0 : 0000000000000000
Call trace:
 dtInsertEntry+0x470/0x660
 dtInsert+0x21c/0x378 fs/jfs/jfs_dtree.c:886
 jfs_create+0x390/0x488 fs/jfs/namei.c:137
 lookup_open fs/namei.c:3413 [inline]
 open_last_lookups fs/namei.c:3481 [inline]
 path_openat+0x804/0x11c4 fs/namei.c:3688
 do_filp_open+0xdc/0x1b8 fs/namei.c:3718
 do_sys_openat2+0xb8/0x22c fs/open.c:1311
 do_sys_open fs/open.c:1327 [inline]
 __do_sys_openat fs/open.c:1343 [inline]
 __se_sys_openat fs/open.c:1338 [inline]
 __arm64_sys_openat+0xb0/0xe0 fs/open.c:1338
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190
Code: 370800d3 97d54f56 f9400fe9 52801fe8 (39002128) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	370800d3 	tbnz	w19, #1, 0x18
   4:	97d54f56 	bl	0xffffffffff553d5c
   8:	f9400fe9 	ldr	x9, [sp, #24]
   c:	52801fe8 	mov	w8, #0xff                  	// #255
* 10:	39002128 	strb	w8, [x9, #8] <-- trapping instruction


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
