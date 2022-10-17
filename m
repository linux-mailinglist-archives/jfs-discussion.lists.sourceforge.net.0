Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2468A601023
	for <lists+jfs-discussion@lfdr.de>; Mon, 17 Oct 2022 15:25:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1okQ7Z-0007GD-3E;
	Mon, 17 Oct 2022 13:25:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3dwpNYwkbAOAUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1okKyV-000727-CI for jfs-discussion@lists.sourceforge.net;
 Mon, 17 Oct 2022 07:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LybfEo/Roi1WEbT75rYrCV7d1BsMH3weiJW7j1IZqds=; b=cYXnMolPgPLMKe0VuHjmJXLm40
 Y32WXY3mmuNyy4gK4etCBqzPoFxKHaPBDqrSEWYaEwhOaglOjWgmkaccWhdGm3J4cTozsblMQ6GAt
 iQbN6AOiDcxSVkT5LJbmV5jpyLmMdh11FmMIHByfKVQss/77pud2tVIOcoOTupZp4SVU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LybfEo/Roi1WEbT75rYrCV7d1BsMH3weiJW7j1IZqds=; b=Z
 8uz9uRKFOGtN4gO1TPCW46wFQcl7LeOcF4/0XwzZKzWBSSdgc9dqIShWItZYYFWofcMCy+2GSZlBZ
 Vu8014d3M4R9CL1XikqhOs4WC0S8f3vxVHz7JW2Y9ZFDXFyiU2BbuyynzaJ8VgVA/Ho78iBNCH1op
 KM4Vi/SOmGDUFNlk=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1okKyK-0007VI-Jb for jfs-discussion@lists.sourceforge.net;
 Mon, 17 Oct 2022 07:55:44 +0000
Received: by mail-io1-f72.google.com with SMTP id
 75-20020a6b144e000000b006bbed69b669so6551175iou.21
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 17 Oct 2022 00:55:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LybfEo/Roi1WEbT75rYrCV7d1BsMH3weiJW7j1IZqds=;
 b=YxsjeKb42z5b6OtpBIEhlWeadbH+4T98qCx4gdqnBtu4iEXu/+XIs8ShUN9u9USnL+
 RLsTnNpw1ahScjb+jK1T/PGiLyKvWMDY4TuJx+SFFPG+7ixNlyvn4si74HxTEQgRgX62
 IY5dMbHdxSc4IMlbiPP0Eg+JSvNM0kVCVzKj/3hDXyr15uQmIMCb6v4EI8h9GUgVe15T
 21wGaMdt7ll/jWn7ce6IXjBHDGsTD38LwBkbw/ysOTWAz0of1y8Dd73zR0X84vqwOn4d
 +eIW+7NBCcY48ba8eVnw4Uv/JcQUJyF3uinXERCutbJalLq485rJL4nPS32YUgxaX70i
 +saQ==
X-Gm-Message-State: ACrzQf2ZXHX8IPKi3M51RxeB07o5KXXdQttHoLYw/wnnRrC/zoZx9hiG
 A7uyrafEpbJOqEa54YMP+M3XIMpS8ZuNGUneAMOZXRnzxPtH
X-Google-Smtp-Source: AMsMyM5Z3edcvaaDmVKjK33q8v3PvwDh9SOWPTanWtmNPKIBRi99dPNR24Xb54YSZgjvrn6IjZQqPsKDwuUqSwR4fXvALZ2z1rQY
MIME-Version: 1.0
X-Received: by 2002:a05:6638:4304:b0:343:5953:5fc8 with SMTP id
 bt4-20020a056638430400b0034359535fc8mr4711928jab.123.1665993335651; Mon, 17
 Oct 2022 00:55:35 -0700 (PDT)
Date: Mon, 17 Oct 2022 00:55:35 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f841fb05eb364ce6@google.com>
From: syzbot <syzbot+0558d19c373e44da3c18@syzkaller.appspotmail.com>
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
 output: https://syzkaller.appspot.com/x/log.txt?x=15d11444880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
X-Headers-End: 1okKyK-0007VI-Jb
X-Mailman-Approved-At: Mon, 17 Oct 2022 13:25:32 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 txCommit
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
console output: https://syzkaller.appspot.com/x/log.txt?x=15d11444880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f1ff6481e26f/disk-493ffd66.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/101bd3c7ae47/vmlinux-493ffd66.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+0558d19c373e44da3c18@syzkaller.appspotmail.com

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_txnmgr.c:1738:5
index 18 is out of range for type 'xad_t [18]'
CPU: 1 PID: 11903 Comm: syz-executor.3 Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 xtLog fs/jfs/jfs_txnmgr.c:1738 [inline]
 txLog fs/jfs/jfs_txnmgr.c:1391 [inline]
 txCommit+0x3fb5/0x6d40 fs/jfs/jfs_txnmgr.c:1259
 jfs_commit_inode+0x342/0x5a0 fs/jfs/inode.c:108
 extAlloc+0xc93/0xff0 fs/jfs/jfs_extent.c:172
 jfs_get_block+0x342/0xce0 fs/jfs/inode.c:248
 get_more_blocks fs/direct-io.c:665 [inline]
 do_direct_IO fs/direct-io.c:953 [inline]
 __blockdev_direct_IO+0x17e7/0x3c90 fs/direct-io.c:1266
 blockdev_direct_IO include/linux/fs.h:3204 [inline]
 jfs_direct_IO+0xf6/0x1e0 fs/jfs/inode.c:336
 generic_file_direct_write+0x294/0x610 mm/filemap.c:3669
 __generic_file_write_iter+0x1c4/0x400 mm/filemap.c:3829
 generic_file_write_iter+0xab/0x310 mm/filemap.c:3905
 do_iter_write+0x6c2/0xc20 fs/read_write.c:861
 iter_file_splice_write+0x7fc/0xfc0 fs/splice.c:686
 do_splice_from fs/splice.c:764 [inline]
 direct_splice_actor+0xe6/0x1c0 fs/splice.c:931
 splice_direct_to_actor+0x4e4/0xc00 fs/splice.c:886
 do_splice_direct+0x279/0x3d0 fs/splice.c:974
 do_sendfile+0x5fb/0xf80 fs/read_write.c:1255
 __do_sys_sendfile64 fs/read_write.c:1323 [inline]
 __se_sys_sendfile64+0x14f/0x1b0 fs/read_write.c:1309
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fb2a168b5a9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fb2a05bc168 EFLAGS: 00000246 ORIG_RAX: 0000000000000028
RAX: ffffffffffffffda RBX: 00007fb2a17ac120 RCX: 00007fb2a168b5a9
RDX: 0000000000000000 RSI: 0000000000000008 RDI: 0000000000000003
RBP: 00007fb2a16e6580 R08: 0000000000000000 R09: 0000000000000000
R10: 000080001d00c0d0 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffd4c0de95f R14: 00007fb2a05bc300 R15: 0000000000022000
 </TASK>


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
