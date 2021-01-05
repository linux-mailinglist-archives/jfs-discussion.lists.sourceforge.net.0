Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 965E82EAD2C
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 Jan 2021 15:13:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kwn5P-00037m-0k; Tue, 05 Jan 2021 14:13:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3HWP0XwkbALox34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kwlxn-0007J4-Li
 for jfs-discussion@lists.sourceforge.net; Tue, 05 Jan 2021 13:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/MLmxfO00kG8Vz2FD5GixYYD/MCQqiaRhG+GjRUx0dw=; b=IMsPuVrXaMtNRsdtXVprBhZnDp
 os2m8FmkXAQxtQv5jw+T07TG9K4VO2Aj2MWOr5+W9kJUA29tJwby/tJuvo6sv3zBt61xP2SSrAMbp
 ijAAuIt+AN/3PM7lRLYoRffUuNXNXfsz5xlsrkVXTg7OFM7ZJjjk6dAGtoBKTFVtFEcE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/MLmxfO00kG8Vz2FD5GixYYD/MCQqiaRhG+GjRUx0dw=; b=d
 Bo/EyQunl09Vg9tgiRtp+B+zCZcpE86m2TDzYClTVWmTu8TXlBSL5tOEWWZ7XKucPrbppcV4q54pN
 EWuSwB4VQ515q4wDt65px6xZurgAMPqQKgFNAyuItuRfTawhRTBnLrLBJOToAz16sUe5Y1+WUg6Pq
 9LMo+Fdqks+XFAzg=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kwlxi-00G9Ov-Ip
 for jfs-discussion@lists.sourceforge.net; Tue, 05 Jan 2021 13:01:27 +0000
Received: by mail-io1-f70.google.com with SMTP id q140so13856851iod.5
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 05 Jan 2021 05:01:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=/MLmxfO00kG8Vz2FD5GixYYD/MCQqiaRhG+GjRUx0dw=;
 b=K6HPurjFvNuJb1flv8BbH2fb3wmul3pH360Ja/0P5liRSREMbOO+u2ZpQQolhL7YKg
 ZxruD6PDhCRN8Zf1JgOav7xATrTsSBtYhVJd0PX79cGgo3uNltoDLKNpWLka480Hri5W
 Y4kGlYb1ix4I9Bro02/OZyhduYheKsmOl2mv3E+OkNOXBIymRC1vffzW/xFOkT1dhpf9
 ZmRgOHIdWot/ypWP5VF/1BuVkJEfStFwhHzZi9gEPQMMB/l52fIRcLyTOGvFVhY92Dft
 3oflulXY57euE508ZBpGdcMT9YAxDCPChLk5s8Oc6LTmAywBVRjWfoujQ/lgXoqbFRb8
 ggEg==
X-Gm-Message-State: AOAM532+3bw63uBjGXwQZMZBaJMQVSi1JF+1lRD7Gb6hnT0j2yAw6vtE
 w4nJnuB1db4aMYTSfRLrW8+Yr8ymtOFKwgaINmikHsNRQZmd
X-Google-Smtp-Source: ABdhPJzpMzaz8sKKDn0AV8QoU1thqcOD4lAoiN7+cFrTHp8FA1YDc4R7RpHY4Ve/jJo2U4M6liMyQtKT9aa9OeRvcPrcqqGz2qHx
MIME-Version: 1.0
X-Received: by 2002:a6b:920b:: with SMTP id u11mr62715438iod.191.1609851677004; 
 Tue, 05 Jan 2021 05:01:17 -0800 (PST)
Date: Tue, 05 Jan 2021 05:01:16 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000059589a05b826cdad@google.com>
From: syzbot <syzbot+d0d8d1bfd19a85de7703@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 2.6 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 SHORT_SHORTNER Short body with little more than a link to a shortener
X-Headers-End: 1kwlxi-00G9Ov-Ip
X-Mailman-Approved-At: Tue, 05 Jan 2021 14:13:21 +0000
Subject: [Jfs-discussion] UBSAN: shift-out-of-bounds in diReadSpecial
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

HEAD commit:    614cb589 Merge tag 'acpi-5.11-rc1-2' of git://git.kernel.o..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=10e4ffbd500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=bf519e1e96191576
dashboard link: https://syzkaller.appspot.com/bug?extid=d0d8d1bfd19a85de7703
compiler:       gcc (GCC) 10.1.0-syz 20200507

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d0d8d1bfd19a85de7703@syzkaller.appspotmail.com

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_imap.c:445:7
shift exponent -19 is negative
CPU: 0 PID: 11254 Comm: syz-executor.2 Not tainted 5.10.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x107/0x163 lib/dump_stack.c:120
 ubsan_epilogue+0xb/0x5a lib/ubsan.c:148
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x181 lib/ubsan.c:395
 diReadSpecial.cold+0x1b/0x3e fs/jfs/jfs_imap.c:445
 jfs_mount+0x83/0x3d0 fs/jfs/jfs_mount.c:86
 jfs_fill_super+0x5b1/0xbc0 fs/jfs/super.c:562
 mount_bdev+0x34d/0x410 fs/super.c:1366
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1496
 do_new_mount fs/namespace.c:2875 [inline]
 path_mount+0x13ad/0x20c0 fs/namespace.c:3205
 do_mount fs/namespace.c:3218 [inline]
 __do_sys_mount fs/namespace.c:3426 [inline]
 __se_sys_mount fs/namespace.c:3403 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3403
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x460b9a
Code: b8 a6 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 ad 89 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 8a 89 fb ff c3 66 0f 1f 84 00 00 00 00 00
RSP: 002b:00007f2ed35f4a78 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007f2ed35f4b10 RCX: 0000000000460b9a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007f2ed35f4ad0
RBP: 00007f2ed35f4ad0 R08: 00007f2ed35f4b10 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000202 R12: 0000000020000000
R13: 0000000020000100 R14: 0000000020000200 R15: 000000002006d200
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
