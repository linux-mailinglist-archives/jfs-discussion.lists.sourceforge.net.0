Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C13614F81
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Nov 2022 17:38:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1opuGV-0002pY-Ej;
	Tue, 01 Nov 2022 16:37:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3LkphYwkbAGkZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1opuC8-0007Ae-9f for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Nov 2022 16:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s9+A1ZjPI8JCoqYFEJU/fc9xB01d2XOFCR6s6RM/nQw=; b=gE32u+dioe9RISm1MACzqS4m1c
 n+WjyIz+gr8if54KSH9LUL1YLZu9tXbFbSMMzyV9zcS3nquUufl6LOWpz8vYGGsgNk08O6fetrC5J
 /yamIh9fUKQUobQCzZoaSDdXkfFwGe6KlQ8X8f4ebOeINTv5NcZ03SGECgjCOQdV8iBk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s9+A1ZjPI8JCoqYFEJU/fc9xB01d2XOFCR6s6RM/nQw=; b=O
 TY1HSH7r1OkoNZFl3MBhWXq1e1xrHshVcSZwGw9IHyVvVcJnciaLPyu2piptc9N7GZ+zqWxkTpaD+
 s+uY3wzDM64PK2k5nW1VTQ+bR4BOUdXh0o+FfVgOu6L79/UypYTBEJd6kM7i4ySPBFZZg7vcM01W9
 DnDIB16tFdMjxTbE=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1opuC4-0004XM-6x for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Nov 2022 16:32:52 +0000
Received: by mail-il1-f198.google.com with SMTP id
 j7-20020a056e02154700b003007885e7beso14202182ilu.20
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 01 Nov 2022 09:32:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=s9+A1ZjPI8JCoqYFEJU/fc9xB01d2XOFCR6s6RM/nQw=;
 b=c4yEa+h34qYM6x21LTlULmGm69S+mbA0XMEsdeKE4FKpMAu98kyfjDvmfeAY6bQIdF
 PFkiWC1Z06oKXTuC9FmT9+ZZkLQqJhsPv3o6EHhkgRjX1gKTfmqBSDO9OwB3Ow8VD79C
 +GfmD8Lb1V9xoeRpBNAf/fTSkiivrOIUZIMzwY0q+HvZnMA4kT3hE+I0obNUi4Vw+1j+
 7Lv5dfMXfcQD3buMHWYk/VQVIriHC1sJjTmx1B4TIF93sXqTVtvpfkShqSTvLzHVclO3
 kL5qG4pgEgNXSIz+/VqC3DcDXCvNKZyZxgoUAx2Y2riImYRRPq0zYjcxLz/hXhu22Lhu
 AgZg==
X-Gm-Message-State: ACrzQf2LhmXCX+g2IagAt5N2M0iaWJia2iw37YJXnW9p7n/nOj5PVbAV
 7dvrlYKBKrKXp9i3SETwsbH6/NabiQCAbK893y3iw8XHhK13
X-Google-Smtp-Source: AMsMyM7hUOz9Jd8wdvexGqdYx29NPMjY1vBYn3EPSbGaFCoVVhwTtKYuWKpTAPIyz4q/SuJ7oBgdYdQgfUt7/eU92zp8D/lDPZP0
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:787:b0:300:c853:a24e with SMTP id
 q7-20020a056e02078700b00300c853a24emr1001610ils.59.1667320366644; Tue, 01 Nov
 2022 09:32:46 -0700 (PDT)
Date: Tue, 01 Nov 2022 09:32:46 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002e45a805ec6b46a7@google.com>
From: syzbot <syzbot+0be96567042453c0c820@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 mudongliangabcd@gmail.com, paskripkin@gmail.com, r33s3n6@gmail.com, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, wuhoipok@gmail.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 4d48f589d294
 Add linux-next specific files for 20221021 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=12fd817a880000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1opuC4-0004XM-6x
X-Mailman-Approved-At: Tue, 01 Nov 2022 16:37:07 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in blkstol2
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

HEAD commit:    4d48f589d294 Add linux-next specific files for 20221021
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=12fd817a880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2c4b7d600a5739a6
dashboard link: https://syzkaller.appspot.com/bug?extid=0be96567042453c0c820
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12f70161880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=101ed1ce880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/0c86bd0b39a0/disk-4d48f589.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/074059d37f1f/vmlinux-4d48f589.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/b95b380256a7/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+0be96567042453c0c820@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2227:15
shift exponent -744642816 is negative
CPU: 0 PID: 3602 Comm: syz-executor202 Not tainted 6.1.0-rc1-next-20221021-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 blkstol2.cold-0x5/0x26
 dbAllocDmap+0x61/0x110 fs/jfs/jfs_dmap.c:2009
 dbAllocDmapLev+0x158/0x2c0 fs/jfs/jfs_dmap.c:1963
 dbAllocCtl+0x131/0x780 fs/jfs/jfs_dmap.c:1803
 dbAllocAny+0x10e/0x1a0 fs/jfs/jfs_dmap.c:1517
 dbAlloc+0x46d/0xa70 fs/jfs/jfs_dmap.c:869
 ea_write+0x4ed/0xc90 fs/jfs/xattr.c:232
 ea_put fs/jfs/xattr.c:610 [inline]
 __jfs_setxattr+0xea9/0xfc0 fs/jfs/xattr.c:783
 __jfs_xattr_set+0xc9/0x150 fs/jfs/xattr.c:917
 __vfs_setxattr+0x115/0x180 fs/xattr.c:182
 __vfs_setxattr_noperm+0x125/0x5f0 fs/xattr.c:216
 __vfs_setxattr_locked+0x1cf/0x260 fs/xattr.c:277
 vfs_setxattr+0x13f/0x330 fs/xattr.c:309
 setxattr+0x146/0x160 fs/xattr.c:617
 path_setxattr+0x197/0x1c0 fs/xattr.c:636
 __do_sys_setxattr fs/xattr.c:652 [inline]
 __se_sys_setxattr fs/xattr.c:648 [inline]
 __x64_sys_setxattr+0xc0/0x160 fs/xattr.c:648
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fa3cc94ee69
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc339e1fe8 EFLAGS: 00000246 ORIG_RAX: 00000000000000bc
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007fa3cc94ee69
RDX: 00000000200079c0 RSI: 0000000020004ec0 RDI: 0000000020004d40
RBP: 00007fa3cc90e630 R08: 0000000000000000 R09: 0000000000000000
R10: 000000000000fffe R11: 0000000000000246 R12: 0000001200030083
R13: 0000000000000000 R14: 00083878000000f0 R15: 0000000000000000
 </TASK>
================================================================================


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
