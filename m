Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5418D6046EA
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Oct 2022 15:23:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ol92O-0007nD-Gw;
	Wed, 19 Oct 2022 13:23:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3041PYwkbAE48EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ol1op-0004Ej-PL for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Oct 2022 05:40:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E0euC444GphM3Ky4TUWZPtkQzv94eUiH/s9cx8crkmw=; b=NZIzvVIi+B8g02brupCQKkTL4w
 5Aqklm3QZLsNla/fi+rSwgrtPjk00KGQI+Pm4/ZrY0uIuxsvVu18LpnEeVZ9qh6tN3O4TZZzQfmgJ
 ZyEADG8AIGANq2qHfQCYiAGAJ0Og9JfEmDM7SJZ+q3r/aes16XwFJ6JlYGsmObq1Dh5A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=E0euC444GphM3Ky4TUWZPtkQzv94eUiH/s9cx8crkmw=; b=T
 docc3rytUTgQs9ZRcApXMtISDhLra9epKxeHMU6N5DlvjAUXVukvSH/NdLvR5+IhwfHmHn1xXJqP1
 cjWMUO060oP/uvolfIbmeH2MG9ljiqd2E6t6Z/x4AyNx9bE9EUg9DQfrVilGJSQIRp1Y3paMms6cE
 57cG2FjH69xfWMWs=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ol1on-00073H-CH for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Oct 2022 05:40:42 +0000
Received: by mail-io1-f69.google.com with SMTP id
 j17-20020a5d93d1000000b006bcdc6b49cbso9732327ioo.22
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Oct 2022 22:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=E0euC444GphM3Ky4TUWZPtkQzv94eUiH/s9cx8crkmw=;
 b=N0rvJy+qqY7/RHUksRDN1W+sffXln87s/hKgYq4b1Jc0Oh3ba+5Q2xwbDs1QXbcHoL
 T4H3vxKDTxfwg2mNPLyBSWVFvQAEzBIjp9GNsDjKIL7X96mAQqMWYCsQ6+s6gykb4l6h
 AU5WnWMvnw3tMlkiX9kDGAZmMXcdXtbwdgicGS51nEyMJHEj9J7Sb9qt1foQm6zUNaHk
 PCxlOeuGvuN/L8ulNlM2Hd+BzOZwpY6n271F1tIuAgQTJXB4cXB6eFbwaqAIrow3k9Mj
 tYNJlSMvJoKzA6i9QQgfbGvnUDa9oMaeKkYQmP2qtE2dzQ8O0cjGRGLZNJwxVHrVfGcm
 2DBQ==
X-Gm-Message-State: ACrzQf0yO3u/YDzZSX6a6R8UmYOtMa+sSVrxOcyk+WzgSoKIwI1ydtVm
 unyJ0q4Vk9yAZ30w5bw+LJuHmAF4pAhtuPz/9FdIJhka+TTS
X-Google-Smtp-Source: AMsMyM4T9m8BwUnklZGcyg4fPhOp61ep3xdcuuwcU0V15MBJ0+Ytg6eDL3CT853iggs8sc2Tx4hW9ZLuPxUIimV1de/Yuwo/mz8N
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:20e3:b0:2fa:3db:3585 with SMTP id
 q3-20020a056e0220e300b002fa03db3585mr4496787ilv.238.1666158035825; Tue, 18
 Oct 2022 22:40:35 -0700 (PDT)
Date: Tue, 18 Oct 2022 22:40:35 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000dd7d5a05eb5ca523@google.com>
From: syzbot <syzbot+f0e0fcf3cd1047ae60ad@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 493ffd6605b2
 Merge tag 'ucount-rlimits-cleanups-for-v5.19'.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=114e4eaa880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
X-Headers-End: 1ol1on-00073H-CH
X-Mailman-Approved-At: Wed, 19 Oct 2022 13:23:10 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 dbDiscardAG
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

HEAD commit:    493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=114e4eaa880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=f0e0fcf3cd1047ae60ad
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f1ff6481e26f/disk-493ffd66.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/101bd3c7ae47/vmlinux-493ffd66.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f0e0fcf3cd1047ae60ad@syzkaller.appspotmail.com

ERROR: (device loop2): dbAllocAG: allocation request is larger than the allocation group size
ERROR: (device loop2): dbDiscardAG: -EIO
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:1567:12
index 128 is out of range for type 's64 [128]'
CPU: 1 PID: 26571 Comm: syz-executor.2 Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 dbDiscardAG+0x9d6/0xa50 fs/jfs/jfs_dmap.c:1567
 jfs_ioc_trim+0x433/0x660 fs/jfs/jfs_discard.c:100
 jfs_ioctl+0x2bd/0x3d0 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:870 [inline]
 __se_sys_ioctl+0xfb/0x170 fs/ioctl.c:856
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fa60c68b5a9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fa60d808168 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007fa60c7abf80 RCX: 00007fa60c68b5a9
RDX: 0000000020000140 RSI: 00000000c0185879 RDI: 0000000000000003
RBP: 00007fa60c6e6580 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffc54dd4dbf R14: 00007fa60d808300 R15: 0000000000022000
 </TASK>
================================================================================


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
