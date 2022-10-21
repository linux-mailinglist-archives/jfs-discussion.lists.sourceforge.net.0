Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 189DD607769
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Oct 2022 14:58:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1olrbD-00041t-Li;
	Fri, 21 Oct 2022 12:58:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3hXlSYwkbAOIWcdOEPPIVETTMH.KSSKPIYWIVGSRXIRX.GSQ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1olpc6-0001cC-88 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Oct 2022 10:50:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L7U1sqwK0qgiWwV3vBjnPUoEzYf+gnjLnDUe9Z5mNRg=; b=jkc0xgSv6dPpqMRWDbyI41sDT7
 sBS00p+hlD3RsnIuizoCx2baEn6insUX8yEoAAUdp1LLZKzSc4EK3+ovO9/dMtTtpKO4wdW+zW/DO
 q9HauNoRpWDAZtvAkXP4sh+oynN11y6iejlEF+iNDftqs7mXB9Kih2Rn4sHc8Sbccm3A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=L7U1sqwK0qgiWwV3vBjnPUoEzYf+gnjLnDUe9Z5mNRg=; b=P
 Px7dFDSdABLaaTmFyGB+nUyqfAlXPGDVeXhZloNejeAJWN45SN/JWcXiZ7TJqvob5EMgI3kEllHQL
 rQuR913UiyHwihIennXGRJk9CMs8rLFnInZHct+fLrLRh4S8snEOgZb/gWlHeUfPGQqztMNnic9P7
 WQsAIvpKI+qFEyfs=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1olpc4-0004os-9F for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Oct 2022 10:50:54 +0000
Received: by mail-io1-f72.google.com with SMTP id
 u11-20020a6b490b000000b006bbcc07d893so2425268iob.9
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 21 Oct 2022 03:50:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=L7U1sqwK0qgiWwV3vBjnPUoEzYf+gnjLnDUe9Z5mNRg=;
 b=72KSkiFeKfSD+fwaNliRhqJXWQLsR2aTf63PBrh0nNf0bAjjm5YX1QeerHbyRTPvw1
 oKO0lC7h7oBox4jJVVEAV3k2JW7aRx6iIRiPbnUtERpjl7ikiPFeEpMksoRc7TQb+c0u
 zm1MjGou6UZdWWk44i1f7MFBnc1/eYqwXQtbVlj1o31XFB9LbtRMKYVRWaAJ6MIPb3YY
 PtN9nNXv05kGmQe/2YI5KqPY1N3PZ/+nWe1RRwmrXSRQQHrkCYBFzl6xsG17o9bmCGOA
 hPDJ827NGvX0jG/mknduktUQcKopfkMwWHNo1mnzDsarZT+aA49WqW70EyZ9xtdUaXSq
 Qgtw==
X-Gm-Message-State: ACrzQf04DCvtgX+bup2piOQ7XQkHhx6DmZbywGk16QjdqbFyPuLRFk/2
 iQRI02bULrq3bTLb5asUXGnjZ0v/39bMDofQxZRQkOQffPDI
X-Google-Smtp-Source: AMsMyM6p++tCZH4Ww1eD/ap+IaTSlmeXAMQzK31J3Ua7ZpfRswm6unslYn+/fF8eIKwCQbAskQX6tRyXAILy7FgyYq3dYZYLoq4+
MIME-Version: 1.0
X-Received: by 2002:a05:6638:24d1:b0:363:fa8f:1e2a with SMTP id
 y17-20020a05663824d100b00363fa8f1e2amr15258088jat.99.1666349445843; Fri, 21
 Oct 2022 03:50:45 -0700 (PDT)
Date: Fri, 21 Oct 2022 03:50:45 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ca93e205eb893680@google.com>
From: syzbot <syzbot+cf96cd135c5e00252e3b@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 mudongliangabcd@gmail.com, paskripkin@gmail.com, r33s3n6@gmail.com, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 4d48f589d294
 Add linux-next specific files for 20221021 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=173129e2880000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1olpc4-0004os-9F
X-Mailman-Approved-At: Fri, 21 Oct 2022 12:58:05 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbFreeBits
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
console output: https://syzkaller.appspot.com/x/log.txt?x=173129e2880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2c4b7d600a5739a6
dashboard link: https://syzkaller.appspot.com/bug?extid=cf96cd135c5e00252e3b
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/0c86bd0b39a0/disk-4d48f589.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/074059d37f1f/vmlinux-4d48f589.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cf96cd135c5e00252e3b@syzkaller.appspotmail.com

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1681:12
shift exponent -256 is negative
CPU: 0 PID: 26587 Comm: syz-executor.3 Not tainted 6.1.0-rc1-next-20221021-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 dbFreeBits.cold-0x5/0x72
 dbAllocAny+0xa4/0x1a0 fs/jfs/jfs_dmap.c:1512
 dbAlloc+0x46d/0xa70 fs/jfs/jfs_dmap.c:869
 extBalloc fs/jfs/jfs_extent.c:321 [inline]
 extAlloc+0x4e7/0xeb0 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x661/0xa90 fs/jfs/inode.c:248
 __block_write_begin_int+0x3b9/0x14b0 fs/buffer.c:1991
 __block_write_begin fs/buffer.c:2041 [inline]
 block_write_begin+0xb5/0x440 fs/buffer.c:2102
 jfs_write_begin+0x2d/0xd0 fs/jfs/inode.c:304
 generic_perform_write+0x252/0x570 mm/filemap.c:3771
 __generic_file_write_iter+0x2aa/0x4d0 mm/filemap.c:3899
 generic_file_write_iter+0xdf/0x350 mm/filemap.c:3931
 call_write_iter include/linux/fs.h:2191 [inline]
 do_iter_readv_writev+0x20b/0x3b0 fs/read_write.c:735
 do_iter_write+0x182/0x700 fs/read_write.c:861
 vfs_writev+0x1aa/0x630 fs/read_write.c:934
 do_pwritev+0x1b6/0x270 fs/read_write.c:1031
 __do_sys_pwritev2 fs/read_write.c:1090 [inline]
 __se_sys_pwritev2 fs/read_write.c:1081 [inline]
 __x64_sys_pwritev2+0xeb/0x150 fs/read_write.c:1081
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fa59e48b5a9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fa59f693168 EFLAGS: 00000246 ORIG_RAX: 0000000000000148
RAX: ffffffffffffffda RBX: 00007fa59e5abf80 RCX: 00007fa59e48b5a9
RDX: 0000000000000002 RSI: 0000000020003380 RDI: 0000000000000003
RBP: 00007fa59e4e6580 R08: 0000000002000000 R09: 0000000000000003
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffccdcc3d2f R14: 00007fa59f693300 R15: 0000000000022000
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
