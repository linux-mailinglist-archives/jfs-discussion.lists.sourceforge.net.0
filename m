Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0D57A52BB
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Sep 2023 21:09:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qiJcT-00074J-7Y;
	Mon, 18 Sep 2023 19:09:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3p5MIZQkbACAOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qiJBI-0005As-BY for jfs-discussion@lists.sourceforge.net;
 Mon, 18 Sep 2023 18:41:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/Pj2gflzChdTjSILey0wOqNwEyneT96tigxwfb0NNcI=; b=ImmCq6O41QfVzRFNy+uVkEYdhe
 R3o0bIz+Dge9HkMhHFsukuxezO7fs/ZWs69vuJ4UOsJf+/V2XzA0W5l1DrqsolLU+5wBvWVRxqo4+
 lJAHL1d/mVjdFmTy4v9wWuHN7Ljpe1f62Ll3pADIzIRToJ0iXgUhX6B9vpDw8W0d8GVo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/Pj2gflzChdTjSILey0wOqNwEyneT96tigxwfb0NNcI=; b=T
 Pal/BM5/3+GGCL+LL4jE2T2qKEJebQUjB/hXUaljS5JI7qmI9PomU+9jb0lNlbX9Z1wGgW5avxSGG
 S5IWDLbCUEs8XACvfSYj81nYPWiO4rPkA0UC5muL/fHbDIBN1PJtC5iwIquWDh4SiuFg6WAMCVD5p
 FaJH9u+pIz8Hn2aU=;
Received: from mail-oa1-f80.google.com ([209.85.160.80])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qiJBG-00DIrL-B4 for jfs-discussion@lists.sourceforge.net;
 Mon, 18 Sep 2023 18:41:11 +0000
Received: by mail-oa1-f80.google.com with SMTP id
 586e51a60fabf-1d64d665e38so6632626fac.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 18 Sep 2023 11:41:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695062464; x=1695667264;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/Pj2gflzChdTjSILey0wOqNwEyneT96tigxwfb0NNcI=;
 b=wLa5tBAkG2kMl6kLSuKqaoSaasnYqQOSWOTUHfqHuAwvwPqlNBTqWessUsJ8i6/ZkT
 8jDF1S8andu8L6dokVuKpg28udzbkQo8Fttx1P7MOyketBSLr6XMLBrAxa0dLUXEbFKU
 tsG8y90SPJhfBgeXJsHpZ4g+JgezgnfPCcGZcMhdjpS9/JOqKgd8FTl9Qn8i6qHsV2/x
 BWZpyjtUfNuRgfLaVrGwguS6tK+6t21+SWBIZcu1Q5I2bZLBq3OwAb8n8NYYR9mLu+LD
 JcSYVuxuOR0iJqvpDJhDmQShPDRIkeJN0O4NoeI/ho4z8rRXe9OeSc3bYLQLWJg3Vt5v
 vpnA==
X-Gm-Message-State: AOJu0YwpTcOZJ2GNgTx9pbQ4wlJcfBhywYNALkP5+Rh/o5vU4JSq5HL+
 EbkLPxK4i1iXobsa9aw+btHlAlgSID01r4AXKDYPqze/pmy+YvhLzQ==
X-Google-Smtp-Source: AGHT+IH/KlrUDvkFgo9hFBpByYArzSmPKdxJWL6YyFOfonnFx5CNvuIiVHkGgxAVgWkj2bXY1b+CLP8xf3F5PvfGjymwPk5ETPHG
MIME-Version: 1.0
X-Received: by 2002:a05:6808:13c6:b0:3a8:42ec:53b with SMTP id
 d6-20020a05680813c600b003a842ec053bmr4399697oiw.3.1695060903158; Mon, 18 Sep
 2023 11:15:03 -0700 (PDT)
Date: Mon, 18 Sep 2023 11:15:03 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000001752e0605a61fd8@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: aed8aee11130
 Merge tag 'pmdomain-v6.6-rc1' of git://git.ke.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=14eb20c4680000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.80 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.80 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1qiJBG-00DIrL-B4
X-Mailman-Approved-At: Mon, 18 Sep 2023 19:09:16 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbAlloc (2)
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
Reply-To: syzbot <syzbot+debee9ab7ae2b34b0307@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    aed8aee11130 Merge tag 'pmdomain-v6.6-rc1' of git://git.ke..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14eb20c4680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f4894cf58531f
dashboard link: https://syzkaller.appspot.com/bug?extid=debee9ab7ae2b34b0307
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/1e8c59eb8bd1/disk-aed8aee1.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/edab4b80fc33/vmlinux-aed8aee1.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0b280af46d8f/bzImage-aed8aee1.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+debee9ab7ae2b34b0307@syzkaller.appspotmail.com

loop3: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:799:12
shift exponent -16777216 is negative
CPU: 1 PID: 16087 Comm: syz-executor.3 Not tainted 6.6.0-rc1-syzkaller-00072-gaed8aee11130 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/04/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x125/0x1b0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x27a/0x600 lib/ubsan.c:387
 dbAlloc.cold+0x33/0x38 fs/jfs/jfs_dmap.c:799
 diNewExt+0x736/0x1a70 fs/jfs/jfs_imap.c:2252
 diAllocExt fs/jfs/jfs_imap.c:1946 [inline]
 diAllocAG+0x1707/0x2330 fs/jfs/jfs_imap.c:1663
 diAlloc+0x893/0x1a00 fs/jfs/jfs_imap.c:1584
 ialloc+0x8e/0xa70 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x240/0xb00 fs/jfs/namei.c:225
 vfs_mkdir+0x532/0x7e0 fs/namei.c:4120
 do_mkdirat+0x2a9/0x330 fs/namei.c:4143
 __do_sys_mkdirat fs/namei.c:4158 [inline]
 __se_sys_mkdirat fs/namei.c:4156 [inline]
 __x64_sys_mkdirat+0x115/0x170 fs/namei.c:4156
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x38/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fe9b047b5e7
Code: 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 b8 02 01 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fe9b124eee8 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fe9b047b5e7
RDX: 00000000000001ff RSI: 00000000200016c0 RDI: 00000000ffffff9c
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000200016c0
R13: 00007fe9b124ef40 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
================================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
