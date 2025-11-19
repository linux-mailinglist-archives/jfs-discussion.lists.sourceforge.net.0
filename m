Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 584CCC6F924
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Nov 2025 16:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=e25pHHocnqq2V+0HCYNrnHe7U/r+K8kqhJPYZmcbWsk=; b=M8bFe83+A5h6N+H+Np2fMNeyD9
	XuNkpKaNe7N+Ttt8mSqqgbLapSA0QSFr8CLCRdEi6os8nSo40whbLyHow16s8oGfttLLAz2/eC0Pw
	WafRnnNEc2vsQlwZ68gE17IXdr2qPydiA3wt236iQfXDtcMFAGa1MBH7pHozrUoSByhg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vLjqN-00033A-Gg;
	Wed, 19 Nov 2025 15:11:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3AFkdaQkbAHcntufVggZmVkkdY.bjjbgZpnZmXjioZio.Xjh@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vLayc-0006SR-SB for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Nov 2025 05:43:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ugR7X8HvV6e32qc5iZzJIRITvUVF04LyoLD2VL/Z8HE=; b=T1mPA7uCf8GAYW6V1Hf5ULY85T
 owLyJbg51fPa/aldaZCuKrOnGHtyry201BnYFCYjYm2JMSLYQLkmQUNDZ2qqfosv/+1JgIwGEgH5s
 j/4WBIrlgcQyRH8CubwrqWOxX822gDE1bXSJOAZnLwIKMn8AjWu3ExUXlUsQwaOQ4AvI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ugR7X8HvV6e32qc5iZzJIRITvUVF04LyoLD2VL/Z8HE=; b=H
 llOb+nOiK+OtRpyufTvP8RYB/nUONZ4LT013pKYT2omtHdzfPHjw6tqcHoYsDzzmEHG3tFIU21uMa
 CcD8srxKw4IVE1LQrnFtQ1hcmGkw/fyYuoMsKuN4wveeroxEJjyHBiY1Ue55LnZKB8xNgD1zhChkd
 GxwJNywsbGVspjxI=;
Received: from mail-io1-f79.google.com ([209.85.166.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vLayc-0001NJ-9t for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Nov 2025 05:43:34 +0000
Received: by mail-io1-f79.google.com with SMTP id
 ca18e2360f4ac-9490387e016so295444839f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Nov 2025 21:43:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763531008; x=1764135808;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ugR7X8HvV6e32qc5iZzJIRITvUVF04LyoLD2VL/Z8HE=;
 b=viv1XqrvA0/IXVpS3qnHEBqsekF62ff0nlIGjlQ8R4cGOuLWRDiEYozC2n6POgwreM
 RU1WBTbBidRtzcAPKQdqC+SgJJrck1UlCsdQ26CkfbwrmWPsARoSW820A4R2XeJk0fLw
 w7RyDYSQBMvKWWueF7hXzVsj0MyIfGc/htoJ7oBaAHFBNuFRosudmEO/00gWTewZf1YE
 hnLJMObEz0K07t8VvEj3obzCTc5G1M+VFyyZFAQT7WhDKTEYPhpJaMvkHfJdeVAKEfMn
 QemwBIcUPJD5idF2rq6+JV+7pROd5DTX+kDI4ZMahDgy/QWtJPJ3c9/hmZUJQfIFMqaj
 LZHw==
X-Gm-Message-State: AOJu0YyHSR1PVO4rdq2SjArcXQMD0EPAUeJVj7mWsRsKbA8aqtagJRD8
 57H1+DoKBWASMyS+KUp00vG2ZcI84EBlth856DSEeuHAK2RacF5h558U8lQcifjAPa/thyneL7v
 xjJ5ZdZWmfTlBlmK+Foy2gldoeZ6gyjmsPAg2Tzt4V2JK9xTacaRCEoHfaDvpyA==
X-Google-Smtp-Source: AGHT+IHVIHkUL+Iua/cTDN1l7FPF8dbunbgVIxlIcTH6IF2VoOBVygM+fSmEbxUdEebArp7DLbKONRihYXVerdZch4Ipp2Ymym7j
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c2a:b0:435:a148:cbd with SMTP id
 e9e14a558f8ab-435a1480e34mr8398755ab.42.1763531008592; Tue, 18 Nov 2025
 21:43:28 -0800 (PST)
Date: Tue, 18 Nov 2025 21:43:28 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <691d5900.a70a0220.2ea503.000e.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 7a0892d2836e
 Merge tag 'pci-v6.18-fixes-5' of git://git.ke.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1285760a580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vLayc-0001NJ-9t
X-Mailman-Approved-At: Wed, 19 Nov 2025 15:11:38 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in diAllocBit
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
Reply-To: syzbot <syzbot+015483fc71d1413f40ee@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7a0892d2836e Merge tag 'pci-v6.18-fixes-5' of git://git.ke..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1285760a580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=929790bc044e87d7
dashboard link: https://syzkaller.appspot.com/bug?extid=015483fc71d1413f40ee
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/d900f083ada3/non_bootable_disk-7a0892d2.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/a78c5c2efd8d/vmlinux-7a0892d2.xz
kernel image: https://storage.googleapis.com/syzbot-assets/5a51cc5df960/bzImage-7a0892d2.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+015483fc71d1413f40ee@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
netlink: 96 bytes leftover after parsing attributes in process `syz.0.0'.
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_imap.c:2105:2
index 8592359 is out of range for type 'struct iagctl[128]'
CPU: 0 UID: 0 PID: 5318 Comm: syz.0.0 Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 ubsan_epilogue+0xa/0x40 lib/ubsan.c:233
 __ubsan_handle_out_of_bounds+0xe9/0xf0 lib/ubsan.c:455
 diAllocBit+0xba2/0xd40 fs/jfs/jfs_imap.c:2105
 diAllocIno fs/jfs/jfs_imap.c:1844 [inline]
 diAllocAG+0x12d9/0x1df0 fs/jfs/jfs_imap.c:1676
 diAlloc+0x1d5/0x1680 fs/jfs/jfs_imap.c:1590
 ialloc+0x8c/0x8f0 fs/jfs/jfs_inode.c:56
 jfs_create+0x18d/0xa80 fs/jfs/namei.c:92
 lookup_open fs/namei.c:3796 [inline]
 open_last_lookups fs/namei.c:3895 [inline]
 path_openat+0x14f4/0x3830 fs/namei.c:4131
 do_filp_open+0x1fa/0x410 fs/namei.c:4161
 do_sys_openat2+0x121/0x1c0 fs/open.c:1437
 do_sys_open fs/open.c:1452 [inline]
 __do_sys_openat fs/open.c:1468 [inline]
 __se_sys_openat fs/open.c:1463 [inline]
 __x64_sys_openat+0x138/0x170 fs/open.c:1463
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xfa0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f0a7ef8f6c9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f0a7fed8038 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 00007f0a7f1e5fa0 RCX: 00007f0a7ef8f6c9
RDX: 000000000000275a RSI: 0000200000000080 RDI: ffffffffffffff9c
RBP: 00007f0a7f011f91 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f0a7f1e6038 R14: 00007f0a7f1e5fa0 R15: 00007ffde7416408
 </TASK>
---[ end trace ]---


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
