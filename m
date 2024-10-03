Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 612F39905AA
	for <lists+jfs-discussion@lfdr.de>; Fri,  4 Oct 2024 16:13:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1swj3n-0003nK-E7;
	Fri, 04 Oct 2024 14:13:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3I-z-ZgkbADYkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1swRDj-0004Nx-5Z for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Oct 2024 19:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hDlR7B+s3yTh+LBBOJNrKl0WkULGNN+JmGj33uBpDo4=; b=fONi2Yr8Bjp9yqq1By3tPFzGWV
 rWMiiYyDZNAzumh3DkOh7JW72YlJUUQqMvHyj+UN1Z2IVVLqH/UNrCnDMd97sXGEPGy/9Wfp/qES6
 p/9yfPUmbUq8Bcwsr2DA1li4e+ek6cZWKQrY/A1O1ryCWVJIlEckbYw26/J8l+uoMl+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hDlR7B+s3yTh+LBBOJNrKl0WkULGNN+JmGj33uBpDo4=; b=h
 odpqEhv/ZetOze6yRaP8FOka/kxENZa66Oe1y07TXA7cycAsuq9pNo41ql9/Ot3W5KbB1YGM+Bk0L
 yxgrflGLPGgnXW3ecdMCNT734JnbjAGysPuuyOXlFRTIJyvPdUzYLrnayZkctNzDn+yOdKdRd5gwk
 b4i4lt+drpNeRs/I=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1swRDi-0005Z0-BF for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Oct 2024 19:10:39 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-3a36a8fa836so11543635ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 03 Oct 2024 12:10:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727982627; x=1728587427;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=hDlR7B+s3yTh+LBBOJNrKl0WkULGNN+JmGj33uBpDo4=;
 b=kXl3YwYC1mLqYJmH6/2I5u32DgvJZnPJtEylCxSvtLqfZl7CrkWx3WV14jsMTo7N5Q
 lEIyZHQGfoQ9LhMUH0WVcDEyFuNdk012SHKGpANVjXjDkRNb1G1k/AC1XqEOOhVMJ2GP
 SvRBwT8vwB88pbMj+VGNPPlKd/ORP5edjA1NYIkmzIXN9A4d5B0ctCgpW5cp/tqyPTTs
 YlRo+nzK4MgO96MdSbTuigtEgP/1foeM1Gb8Wq4jwXDngWrkvH7uJCgO/w/ZzXDm4PZm
 GnBH7of7593MVW7o6gITrtiF/h7Q6yLc7fyeIk4S1JZZfBW3nUubBSrOin2yg7rvRueH
 DdkQ==
X-Gm-Message-State: AOJu0YzXBjuN5ANFFB3uID6LD3ZjM9YS4G0fmXj+8POPf0pGyV1PUvTb
 FpBZ1o2rIq5Ne8RP9vAMG8p+a+V7LBhtBc4zrbJFw5UxOWhI9FqHaWPj35lB4Evnaog39xeRk2K
 4TQ150ovbdlRwNtEMmf1DdZ9JaIaIRV0CqwyV4Kba2wK/VPTuR/MhFdA=
X-Google-Smtp-Source: AGHT+IE0siJiLWIH8n/SO8mPn6X3uCZ9RtjNk7UsJqNla/63RlbC80qmifd0FxO7JjAMcbd2Xeh8zUsHaPetEELlkln9+4Flx1/L
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1ca1:b0:3a0:9fc6:5437 with SMTP id
 e9e14a558f8ab-3a375bb7c44mr2383345ab.18.1727982627496; Thu, 03 Oct 2024
 12:10:27 -0700 (PDT)
Date: Thu, 03 Oct 2024 12:10:27 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <66feec23.050a0220.9ec68.0059.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: e7ed34365879
 Merge tag 'mailbox-v6.12' of git://git.kernel.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=164e8127980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1swRDi-0005Z0-BF
X-Mailman-Approved-At: Fri, 04 Oct 2024 14:13:34 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dtInsertEntry
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
Reply-To: syzbot <syzbot+5f7f0caf9979e9d09ff8@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    e7ed34365879 Merge tag 'mailbox-v6.12' of git://git.kernel..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=164e8127980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=84a3f3ed29aaafa0
dashboard link: https://syzkaller.appspot.com/bug?extid=5f7f0caf9979e9d09ff8
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/eb021424c7db/disk-e7ed3436.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2f5f0d22ea96/vmlinux-e7ed3436.xz
kernel image: https://storage.googleapis.com/syzbot-assets/47176809b11c/bzImage-e7ed3436.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5f7f0caf9979e9d09ff8@syzkaller.appspotmail.com

------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:3632:9
index 27 is out of range for type 'struct lv[20]'
CPU: 1 UID: 0 PID: 5469 Comm: syz.1.37 Not tainted 6.11.0-syzkaller-12113-ge7ed34365879 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dtInsertEntry+0x174e/0x1780 fs/jfs/jfs_dtree.c:3632
 dtSplitPage+0x2d99/0x3ed0 fs/jfs/jfs_dtree.c:1595
 dtSplitUp fs/jfs/jfs_dtree.c:1091 [inline]
 dtInsert+0x14bd/0x6c10 fs/jfs/jfs_dtree.c:870
 jfs_create+0x7ba/0xbb0 fs/jfs/namei.c:137
 lookup_open fs/namei.c:3595 [inline]
 open_last_lookups fs/namei.c:3694 [inline]
 path_openat+0x1c03/0x3590 fs/namei.c:3930
 do_filp_open+0x235/0x490 fs/namei.c:3960
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1415
 do_sys_open fs/open.c:1430 [inline]
 __do_sys_creat fs/open.c:1506 [inline]
 __se_sys_creat fs/open.c:1500 [inline]
 __x64_sys_creat+0x123/0x170 fs/open.c:1500
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f2c1f97dff9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f2c20746038 EFLAGS: 00000246 ORIG_RAX: 0000000000000055
RAX: ffffffffffffffda RBX: 00007f2c1fb35f80 RCX: 00007f2c1f97dff9
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000020000e00
RBP: 00007f2c1f9f0296 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007f2c1fb35f80 R15: 00007ffdc44cf8d8
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
