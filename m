Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FBB5F1099
	for <lists+jfs-discussion@lfdr.de>; Fri, 30 Sep 2022 19:15:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oeJbG-0008Ov-OM;
	Fri, 30 Sep 2022 17:14:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3CgM2YwkbAAk178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oe0Lw-0006Fu-GT for jfs-discussion@lists.sourceforge.net;
 Thu, 29 Sep 2022 20:41:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jEEoHwmh0z4dknk+NtlY2fx8RmUtjpmPjMMYb+1QyX4=; b=FssoAcT1nVQd3i9PTWTDzxBoIP
 6OPCZ4oOSPSUxyDRmX5F2qvhIXV6EaPGpiByYf4LHGp9Ir7FwIyIA7CvhEdkQfBOkY//OZL73UaEg
 ILVq74WHs/X96kW7S1miRR1npn3ZkfCYFtvM5A0F4xFgPHRzLAB6pnQRFwZVzJdUk7rc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jEEoHwmh0z4dknk+NtlY2fx8RmUtjpmPjMMYb+1QyX4=; b=T
 FPeSwLlVzD2lGvU0vrnAY5NcfB0rQGV1sKsYcFmB3BOytrxmYepz+qWqvZB+HjI5C3x4rNdfn6Ryk
 63bUQ3zpSMwzckbjyaO1EOE3O9xUpAw621GPrZhN+W2efdpcFseP2HTfRASLefLr2U9LkAwEzH/7S
 oozTQG1ttWcGpzzE=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oe0Lv-0005uv-Qi for jfs-discussion@lists.sourceforge.net;
 Thu, 29 Sep 2022 20:41:52 +0000
Received: by mail-il1-f200.google.com with SMTP id
 z4-20020a921a44000000b002f8da436b83so1956459ill.19
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 29 Sep 2022 13:41:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=jEEoHwmh0z4dknk+NtlY2fx8RmUtjpmPjMMYb+1QyX4=;
 b=5KIJcksmbyAbWCRpRYW5KtPpIRi2TokrTG1yale4lY+B/Z3Xx8DGyrnhlKIM1IQA0V
 La9+uVGb0pSKZmGx1h8WL5bOgAvRjh32reQhPzQO1OMHNWKtJhy70NEsRoTndbExEEl4
 87BIRTsDfsG3UBM66bwOUJtnNvWPhmfxtIBKPfN07QGKk4zSMnORIVxPWIu1sfco6r/K
 N+R9eqLJtKsznGvVI6atsnzxB/qds04t/d+OZLcEvxGxmVEx+lh5/t3Qk1sqGl3QDexE
 l6Mox7TurZa9++rjDgG7OPyLMYRGRW/6cLjEPwDnPivYsifL/yVVG9CZNlXEDrjP0pgw
 z6tA==
X-Gm-Message-State: ACrzQf13sqni+Na1PLWr8+2azzrYF4MtfjNGD05rnHfPt2TZnF37w+Dr
 7jMOwLPzokNgPy7zPHCkr+mq0sPCXEaScuqx8DCqPJEP30iM
X-Google-Smtp-Source: AMsMyM57Rx/9HOQeLnx36sU+MC2Dnlzw3YvcdQwUDDUpsd9XPIosdDxkQI3+Fd9rvxr330yek5itl9ut6GrodISexq74bBG9Og+g
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2c89:b0:67b:7e8c:11c1 with SMTP id
 i9-20020a0566022c8900b0067b7e8c11c1mr2519326iow.101.1664484106273; Thu, 29
 Sep 2022 13:41:46 -0700 (PDT)
Date: Thu, 29 Sep 2022 13:41:46 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e38e4105e9d6e741@google.com>
From: syzbot <syzbot+5dd35da975e32d9df9ab@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 49c13ed0316d
 Merge tag 'soc-fixes-6.0-rc7' of git://git.ke.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=14407848880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
X-Headers-End: 1oe0Lv-0005uv-Qi
X-Mailman-Approved-At: Fri, 30 Sep 2022 17:14:55 +0000
Subject: [Jfs-discussion] [syzbot] WARNING in ea_get
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

HEAD commit:    49c13ed0316d Merge tag 'soc-fixes-6.0-rc7' of git://git.ke..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=14407848880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=5dd35da975e32d9df9ab
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1173d7ff080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16a2ea70880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/418654aab051/disk-49c13ed0.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/49c501fc7ae3/vmlinux-49c13ed0.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5dd35da975e32d9df9ab@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
WARNING: CPU: 1 PID: 3608 at mm/page_alloc.c:5525 __alloc_pages+0x30a/0x560 mm/page_alloc.c:5525
Modules linked in:
CPU: 1 PID: 3608 Comm: syz-executor264 Not tainted 6.0.0-rc7-syzkaller-00068-g49c13ed0316d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
RIP: 0010:__alloc_pages+0x30a/0x560 mm/page_alloc.c:5525
Code: 5c 24 04 0f 85 f3 00 00 00 44 89 e1 81 e1 7f ff ff ff a9 00 00 04 00 41 0f 44 cc 41 89 cc e9 e3 00 00 00 c6 05 73 17 29 0c 01 <0f> 0b 83 fb 0a 0f 86 c8 fd ff ff 31 db 48 c7 44 24 20 0e 36 e0 45
RSP: 0018:ffffc900038cf000 EFLAGS: 00010246
RAX: ffffc900038cf060 RBX: 0000000000000013 RCX: 0000000000000000
RDX: 0000000000000028 RSI: 0000000000000000 RDI: ffffc900038cf088
RBP: ffffc900038cf110 R08: dffffc0000000000 R09: ffffc900038cf060
R10: fffff52000719e11 R11: 1ffff92000719e0c R12: 0000000000040cc0
R13: 1ffff92000719e08 R14: dffffc0000000000 R15: 1ffff92000719e04
FS:  0000555556726300(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055bf5095f740 CR3: 0000000070cdb000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 kmalloc_order+0x41/0x140 mm/slab_common.c:933
 kmalloc_order_trace+0x15/0x70 mm/slab_common.c:949
 kmalloc_large include/linux/slab.h:529 [inline]
 __kmalloc+0x26e/0x370 mm/slub.c:4418
 kmalloc include/linux/slab.h:605 [inline]
 ea_get+0x408/0x1290 fs/jfs/xattr.c:487
 __jfs_getxattr+0xc4/0x400 fs/jfs/xattr.c:807
 vfs_getxattr_alloc+0x47f/0x5d0 fs/xattr.c:384
 ima_read_xattr+0x35/0x60 security/integrity/ima/ima_appraise.c:228
 process_measurement+0xd5d/0x1bd0 security/integrity/ima/ima_main.c:319
 ima_file_check+0xd8/0x130 security/integrity/ima/ima_main.c:517
 do_open fs/namei.c:3559 [inline]
 path_openat+0x2642/0x2df0 fs/namei.c:3691
 do_filp_open+0x264/0x4f0 fs/namei.c:3718
 do_sys_openat2+0x124/0x4e0 fs/open.c:1313
 do_sys_open fs/open.c:1329 [inline]
 __do_sys_openat fs/open.c:1345 [inline]
 __se_sys_openat fs/open.c:1340 [inline]
 __x64_sys_openat+0x243/0x290 fs/open.c:1340
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f40146ebf59
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffcbf7a6878 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f40146ebf59
RDX: 0000000000161842 RSI: 000000002000c380 RDI: 00000000ffffff9c
RBP: 00007f40146ab720 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 0000000a00030083 R15: 0000000000000000
 </TASK>


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
