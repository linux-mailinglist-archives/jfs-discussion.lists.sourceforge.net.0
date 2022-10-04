Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2748F5F4502
	for <lists+jfs-discussion@lfdr.de>; Tue,  4 Oct 2022 16:01:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ofiTJ-0007C1-2j;
	Tue, 04 Oct 2022 14:00:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3QfY7YwkbAD4x34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ofdnB-0001FR-P1 for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Oct 2022 09:00:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WsrlFetaOvBbJzIoI+7wVQaiq4OvqdIyUFgG94TQ3jY=; b=mN5N4t74sVja3JK5XqajBpjU28
 TrBQBTR0YAI/FwYghzEiPdgivxZJLFqdpVwlA95YG6VAMqC+YBPIOFlU+xk9JWYLHOE5B2WuBuiix
 rZrkhYgzh1Caz74hdlEx5ZHHGWDZyV1U7W1StVAF0GRyS9kNcd+v6hQ7j079c/zXI4og=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WsrlFetaOvBbJzIoI+7wVQaiq4OvqdIyUFgG94TQ3jY=; b=e
 F8kw0KupaelS106HtousT7GIVoECJhUxFhHke3VcKW5z7T8XZonrxA1buZ3mVvPgPQIIjdpm3wvJS
 vksZTCS16coSa+v9Bbq5WsACfDzBGbuUS5LSBDPrmliKdJHIdJEdmon0uneQ1ssNRpFiFE0rSyhoA
 ERHinWSBUHBRuQWA=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ofdnL-0002O3-BK for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Oct 2022 09:00:57 +0000
Received: by mail-il1-f198.google.com with SMTP id
 k6-20020a92c246000000b002f80993e780so10458033ilo.13
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 04 Oct 2022 02:00:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=WsrlFetaOvBbJzIoI+7wVQaiq4OvqdIyUFgG94TQ3jY=;
 b=iRvsNwegm879Ue72cYd5C3gFXJLsFqyqaowMzzVSxKhOkiVHZERRHZBe31TA5M02tT
 VffegMutRzmzV0pCtE+8UXCJ+f0p4Ktq5kHMgwCT+Hx3yW0jG9RK3vyNrwE4+pEnWcKl
 ASZ779cq3x4EnvO+JPslzJKq+SorgQMJCxgzGszAJrsQwnn4ZBwm2yJkhb6Au2i4hHQt
 1w3Mrp7xSjvCKZqFZ88UictAmv532/cOlCOBhpasyAQTES/L7afyUdwswDjV6cjgZzFG
 om1SiUEkfGsCj2f2qKZ9UMhVsd2Kq8M3OtJ0E4PU2POGmmk0nbFCJPIT/b61ZCTb10Tk
 5v2g==
X-Gm-Message-State: ACrzQf1sVTC5wzfEzE4pwi2Urliw/yClZZTiaz4hFo1Dz+NAs/dMPNWm
 292CXlV4/i8ehqFpDLVFLaZb4AhEyD1AlUrXOutVE1rvFdgW
X-Google-Smtp-Source: AMsMyM5Q+eZ6BWWdAs87hFCMRIMcdkD1u5GMwovcCqFi69vMv/FAdDqBZ0jBBF8nJ1p3kbL44u8/WOjApjeqFY8oheF4gNFaLUmr
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3b4:b0:363:37b4:2cde with SMTP id
 z20-20020a05663803b400b0036337b42cdemr3606694jap.150.1664874049806; Tue, 04
 Oct 2022 02:00:49 -0700 (PDT)
Date: Tue, 04 Oct 2022 02:00:49 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000055a5be05ea31b2af@google.com>
From: syzbot <syzbot+ae2f5a27a07ae44b0f17@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 4fe89d07dcc2
 Linux 6.0 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=123b2034880000
 kernel config: https://syzkaller.appspot.com/x/.config?x=a1c7bd9b9b7d4c4
 [...] Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1ofdnL-0002O3-BK
X-Mailman-Approved-At: Tue, 04 Oct 2022 14:00:43 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 dbAllocBits
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

HEAD commit:    4fe89d07dcc2 Linux 6.0
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=123b2034880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a1c7bd9b9b7d4c47
dashboard link: https://syzkaller.appspot.com/bug?extid=ae2f5a27a07ae44b0f17
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=122f6fc0880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12330ccc880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/90e404873893/disk-4fe89d07.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/010b08fa7faf/vmlinux-4fe89d07.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+ae2f5a27a07ae44b0f17@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2222:23
index 128 is out of range for type 's64 [128]'
CPU: 0 PID: 3605 Comm: syz-executor514 Not tainted 6.0.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_out_of_bounds.cold+0x62/0x6c lib/ubsan.c:283
 dbAllocBits+0x50f/0x5f0 fs/jfs/jfs_dmap.c:2222
 dbAllocDmap+0x61/0x110 fs/jfs/jfs_dmap.c:1999
 dbAllocNext+0x34a/0x410 fs/jfs/jfs_dmap.c:1152
 dbAlloc+0x323/0xa70 fs/jfs/jfs_dmap.c:786
 extBalloc fs/jfs/jfs_extent.c:321 [inline]
 extAlloc+0x4e7/0xeb0 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x661/0xa90 fs/jfs/inode.c:248
 __block_write_begin_int+0x3ca/0x1520 fs/buffer.c:2006
 __block_write_begin fs/buffer.c:2056 [inline]
 block_write_begin+0xb5/0x4d0 fs/buffer.c:2117
 jfs_write_begin+0x2d/0xd0 fs/jfs/inode.c:304
 generic_perform_write+0x246/0x560 mm/filemap.c:3738
 __generic_file_write_iter+0x2aa/0x4d0 mm/filemap.c:3866
 generic_file_write_iter+0xdf/0x350 mm/filemap.c:3898
 call_write_iter include/linux/fs.h:2187 [inline]
 new_sync_write fs/read_write.c:491 [inline]
 vfs_write+0x9e9/0xdd0 fs/read_write.c:584
 ksys_write+0x127/0x250 fs/read_write.c:637
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fc695c29e59
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd7dbbb058 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fc695c29e59
RDX: 000000000208e24b RSI: 0000000020000040 RDI: 0000000000000003
RBP: 00007fc695be9620 R08: 0000000000000000 R09: 00007fc695be9620
R10: 00005555574562c0 R11: 0000000000000246 R12: 0000000200000004
R13: 0000000000000000 R14: 00080000000000f8 R15: 0000000000000000
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
