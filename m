Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6665EA701
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Sep 2022 15:21:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oco2u-0000gr-Ir;
	Mon, 26 Sep 2022 13:21:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3jHQxYwkbAFsLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ockfU-0006Vw-3w for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 09:44:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5AcHl37dizQLDlu5f/ODMQgpAKb6ZWaYOq0BVW5S03c=; b=H0hPvx+UzEmFiDwOpb5jzx4CS7
 Qegn7RiJk8OESiGJz/74EcNsMar/W1UCiigTzuoDCjn2yLJUXcWj3DxjobEfHVMb5510veQOoMUEX
 WTYRtXUE8RIbC0P5cEZaS58+PjTggX8yS1pnZLmYd+6zAbmpm1alnom2Old7BRuZBDVU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5AcHl37dizQLDlu5f/ODMQgpAKb6ZWaYOq0BVW5S03c=; b=d
 HCjVwi7GQw1rEdiF/uYN9/VBZ3Ml65QFQuiU93oSeHeLwrQPwyYEk6g7D2jlA1ETZYTUDm6uU1jex
 Q4mkxxyb8Q8X66dc3OCtyAOwBvCURuvVgM+RrHL8eMnCTmhpQWkSGXOPBRt7FijoH4MGk3u1D4/v3
 2KDeu8SfO6+7Dwnc=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ockfS-0005m3-Ci for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 09:44:52 +0000
Received: by mail-il1-f197.google.com with SMTP id
 d6-20020a056e020be600b002dcc7977592so4689823ilu.17
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Sep 2022 02:44:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=5AcHl37dizQLDlu5f/ODMQgpAKb6ZWaYOq0BVW5S03c=;
 b=BxCd/fAn+6qDgwBukiUpT4UwNha+b3XPF0r8uKat0SmoUHcDRcRECrZ0yVyvmYGlhv
 sFHMrkhueNGcwDzhZHzWN8AVGOR2BIArhIQzL5Z3FCaZS+iIClpUezeeIw5Kb3cN04Af
 SDUuGd50tu6uMgBpknkKGkYPUHEo5ZmNgQmUvU/tY2JkGl10ndYCM03cN8A+Wkg0qIiO
 nzrQYv/EgpOms8hxh4xotkYW9GMxx204lPa+LY3wWDIGRdI+ijh/YdNav0+Vmt6HVD5Z
 NI7IJFzl1lsYdf7sIowGiT0yrdOJk+1mC8udTUjHeTKWGWWku/xAksw+o6ET47TSe+A+
 NHIQ==
X-Gm-Message-State: ACrzQf2JnSLaTg4NK/S9u2U6+S5w4ZqVIMs0VSlLuOaDyiApB7cNqz+v
 37ZziEgewQ5hGJWBh9piq73S4vOh5JwJwlAfPOHjoBiVcqYe
X-Google-Smtp-Source: AMsMyM7fDLT+epWJ8eBUjUpMp0JPd2pZmkyCrgymHnRY7WkWFjeYwXfCd9afbXgS4Jats1mksYzD4quvLbcSNYhASb6Wg4jID+Qs
MIME-Version: 1.0
X-Received: by 2002:a92:280f:0:b0:2f7:e5ad:63ad with SMTP id
 l15-20020a92280f000000b002f7e5ad63admr6573696ilf.59.1664185484852; Mon, 26
 Sep 2022 02:44:44 -0700 (PDT)
Date: Mon, 26 Sep 2022 02:44:44 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000aa458a05e991602c@google.com>
From: syzbot <syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 1a61b828566f
 Merge tag 'char-misc-6.0-rc7' of git://git.ke.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=141e2650880000 kernel config:
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
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
X-Headers-End: 1ockfS-0005m3-Ci
X-Mailman-Approved-At: Mon, 26 Sep 2022 13:21:13 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 dbAdjTree
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

HEAD commit:    1a61b828566f Merge tag 'char-misc-6.0-rc7' of git://git.ke..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=141e2650880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=122d7bd4fc8e0ecb
dashboard link: https://syzkaller.appspot.com/bug?extid=39ba34a099ac2e9bd3cb
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15dde8a8880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12018470880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/367e34e7ff83/disk-1a61b828.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/91a2819fe451/vmlinux-1a61b828.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2841:19
index 262145 is out of range for type 's8 [1365]'
CPU: 1 PID: 119 Comm: jfsCommit Not tainted 6.0.0-rc6-syzkaller-00309-g1a61b828566f #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_out_of_bounds.cold+0x62/0x6c lib/ubsan.c:283
 dbAdjTree+0x34c/0x360 fs/jfs/jfs_dmap.c:2841
 dbJoin+0x1f0/0x240 fs/jfs/jfs_dmap.c:2808
 dbFreeBits+0x15d/0x8c0 fs/jfs/jfs_dmap.c:2305
 dbFreeDmap+0x61/0x1a0 fs/jfs/jfs_dmap.c:2054
 dbFree+0x250/0x540 fs/jfs/jfs_dmap.c:379
 txFreeMap+0x8f1/0xd70 fs/jfs/jfs_txnmgr.c:2529
 txUpdateMap+0x3cd/0xc50 fs/jfs/jfs_txnmgr.c:2325
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x610/0xb70 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x2e4/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
================================================================================
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 119 Comm: jfsCommit Not tainted 6.0.0-rc6-syzkaller-00309-g1a61b828566f #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 panic+0x2c8/0x627 kernel/panic.c:274
 ubsan_epilogue+0x4a/0x50 lib/ubsan.c:158
 __ubsan_handle_out_of_bounds.cold+0x62/0x6c lib/ubsan.c:283
 dbAdjTree+0x34c/0x360 fs/jfs/jfs_dmap.c:2841
 dbJoin+0x1f0/0x240 fs/jfs/jfs_dmap.c:2808
 dbFreeBits+0x15d/0x8c0 fs/jfs/jfs_dmap.c:2305
 dbFreeDmap+0x61/0x1a0 fs/jfs/jfs_dmap.c:2054
 dbFree+0x250/0x540 fs/jfs/jfs_dmap.c:379
 txFreeMap+0x8f1/0xd70 fs/jfs/jfs_txnmgr.c:2529
 txUpdateMap+0x3cd/0xc50 fs/jfs/jfs_txnmgr.c:2325
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x610/0xb70 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x2e4/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
Kernel Offset: disabled
Rebooting in 86400 seconds..


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
