Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C135ECFA0
	for <lists+jfs-discussion@lfdr.de>; Tue, 27 Sep 2022 23:54:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1odIWm-0006gR-8Y;
	Tue, 27 Sep 2022 21:54:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3A3AzYwkbANAEKL6w770DwBB4z.2AA270GE0DyA9F09F.yA8@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1odISn-0004vt-GZ for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Sep 2022 21:50:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t7n6NgdEt64WMJHmFOGwpy0sdeA+FQhPjaVwhNj/KWY=; b=MzBbfIMkXKYYwVcu4SDjwuGc4v
 v6v2OV/f2hNainF285Iz5cSx6EBkb2pLgqqVAnidsgK9Xhk6R1j/txEHLDyE5I42P5GVavxFluJU+
 mIifhrb3p5ud1jbbQPQAr4Lr+0jL3EN5ZHqedicvCy6+ytTK9pqy1ZBal9R77AffKQrs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=t7n6NgdEt64WMJHmFOGwpy0sdeA+FQhPjaVwhNj/KWY=; b=R
 t0u243fal5U9X5vtIASEjrqB4gbP2kRPpdDVQmhOowpEntgY1N5WxjDHd9gH/WXCeDnKQvmA1ANSZ
 iALACbqAWC3fQ9kdEEotfVlz1PR3nhaQxjnLE/9n7nb02ly7G9N2D4jEVf9o6ydlj740wlLk1MZVl
 LTVn/EHGG5A3KqA4=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1odISm-004vLR-O4 for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Sep 2022 21:50:01 +0000
Received: by mail-io1-f72.google.com with SMTP id
 y187-20020a6bc8c4000000b006a4014e192fso6679574iof.21
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 27 Sep 2022 14:50:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=t7n6NgdEt64WMJHmFOGwpy0sdeA+FQhPjaVwhNj/KWY=;
 b=7A196Owr9JtZU7NmPRq/vmc96H3rr8IghUYLw0UvRVpzjvjSrTybv9UiBA10wjvodY
 HHPDuCjBNEyrfyOZJXkg72M7BSfZidyGwUrTtbcJZq1+KbnjB5W7E4ERhVtBzHjcVZEs
 BB5KIDiQhC4mifWe2Cm/2ZFAISemWTFAJ0LsY6v0qCMv+Bd78PGjz5eYhMnU/uBvhHG2
 PjMPEhxDz7iNLZyU3CF5uHhn0HKIDp04QM4DtWL/uJ46a+IpQX74khEDta9hcxvYyCAY
 58LXzXduf77TuwGwpreooMN1GqSOgmrO87V5BCYEVodge98gbgKMPmEVS+/h65x+hP3h
 fWQw==
X-Gm-Message-State: ACrzQf3lS8aEIwX9dNXTv8QKoeBmHAqUSmUK2xQZVm8qT3Q/aQYPiOTc
 Nd7FtY+zbqYrNuFWr1nTtLyBcBOho7GVixKRlk5SlOMjFqVp
X-Google-Smtp-Source: AMsMyM4f9kGwLOhUyympIIOPzw9J6bJHDrpBTm/O9FCy4D1dN2Nabi9vn8dZ8NKXq4AIlu4YP6ovf1xIiQ+dxwMlSI1WG0GbyRbL
MIME-Version: 1.0
X-Received: by 2002:a02:b788:0:b0:356:7430:fd30 with SMTP id
 f8-20020a02b788000000b003567430fd30mr15693521jam.27.1664315395104; Tue, 27
 Sep 2022 14:49:55 -0700 (PDT)
Date: Tue, 27 Sep 2022 14:49:55 -0700
In-Reply-To: <000000000000df57ee05e9978cce@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000eb6db305e9af9f59@google.com>
From: syzbot <syzbot+027aa1f5f8487ba60a97@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 3800a713b607 Merge tag 'mm-hotfixes-stable-2022-09-26' of ..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=1073ecd4880000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1odISm-004vLR-O4
X-Mailman-Approved-At: Tue, 27 Sep 2022 21:54:20 +0000
Subject: Re: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in jfs_open
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

HEAD commit:    3800a713b607 Merge tag 'mm-hotfixes-stable-2022-09-26' of ..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1073ecd4880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=027aa1f5f8487ba60a97
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=103ceaa8880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=125bd024880000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+027aa1f5f8487ba60a97@syzkaller.appspotmail.com

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/file.c:65:20
shift exponent 8205 is too large for 64-bit type '__u64' (aka 'unsigned long long')
CPU: 1 PID: 3690 Comm: syz-executor342 Not tainted 6.0.0-rc7-syzkaller-00029-g3800a713b607 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 jfs_open+0x3a2/0x3d0 fs/jfs/file.c:65
 do_dentry_open+0x777/0x1180 fs/open.c:880
 do_open fs/namei.c:3557 [inline]
 path_openat+0x25fc/0x2df0 fs/namei.c:3691
 do_filp_open+0x264/0x4f0 fs/namei.c:3718
 do_sys_openat2+0x124/0x4e0 fs/open.c:1313
 do_sys_open fs/open.c:1329 [inline]
 __do_sys_openat fs/open.c:1345 [inline]
 __se_sys_openat fs/open.c:1340 [inline]
 __x64_sys_openat+0x243/0x290 fs/open.c:1340
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f2044cd6ed9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f2044c4c278 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 00007f2044d624b0 RCX: 00007f2044cd6ed9
RDX: 0000000000161842 RSI: 000000002000c380 RDI: 00000000ffffff9c
RBP: 00007f2044d2de4c R08: 00007f2044c4c700 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f2044d29108
R13: 0030656c69662f2e R14: 00007f2044c4c400 R15: 00007f2044d624b8
 </TASK>
================================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
