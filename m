Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 536735FA001
	for <lists+jfs-discussion@lfdr.de>; Mon, 10 Oct 2022 16:15:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ohtYe-0000Hi-NH;
	Mon, 10 Oct 2022 14:15:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3jddCYwkbAGgYefQGRRKXGVVOJ.MUUMRKaYKXIUTZKTZ.IUS@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ohX5n-0004PV-RY for jfs-discussion@lists.sourceforge.net;
 Sun, 09 Oct 2022 14:15:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=faTXIRropJugVTggYO/9etOH41t1DT94LEw64aOP+tU=; b=UclXI+KtbINxqFAQtNehYOLwFb
 SJloXYNU+Glaz+SrBsWRs1VfPP10GxYRNVYj1MyjbfOBNPyA5JEgkEkE/vuSFJwe5TesbSYK69MGu
 ZKn2X3BG+kkB2+ym0XzvqcdMBl/Ub8D/EMuNsusSFf6gvbHoNxNucb80Ziicy/OCcP+Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=faTXIRropJugVTggYO/9etOH41t1DT94LEw64aOP+tU=; b=b
 NGw9gEGvwgGwrzD0w4KF+2PbwSgTZVK/Y4aAiMAs6u2PkeMAzRJa2zMwn1+I6Sm7Vm9Pc3yrPdSIJ
 6DW+btybYldv015WTRUXxA/BXkBrGvCncdEGd3Wmfc/cloVW4k2gQSocYLRs+VV7NkOHMCWqFWe9I
 C0ViF9UOItwnPKCw=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohX5n-0006Mb-1V for jfs-discussion@lists.sourceforge.net;
 Sun, 09 Oct 2022 14:15:47 +0000
Received: by mail-io1-f69.google.com with SMTP id
 w24-20020a6bf018000000b006bb92798e80so4539264ioc.12
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 09 Oct 2022 07:15:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=faTXIRropJugVTggYO/9etOH41t1DT94LEw64aOP+tU=;
 b=s5ePeU8OIVLwpjgthmzjCiIkAWYbZYGmhWYxmAn04Lwl1vkOf+nTbSbQhOn0mMwDIN
 llHi11C+e8dgqTpgy09QTz0HYQVADpLt6XcvSrx4X/bwY0nVfNcm6W3U3freIZNx/zWP
 LOJZ4IGldY9r2aYzkhCAWrvtVVWmu7Fxhh4yYuO402KhMWkzaUVI4+tKaMvcmDA5g3iG
 +5Cr3GrV1HUKZ27+F0Tw5xMmoKJPsjRLdvqmj0vriDNLYl+K3q89pznJzlj6N+2YbT8z
 60uEmdUT+t5ZzD76xzN+bwVwMTi7SS2Zui5rMsQEl86BG1eyE4zOweejMWMhhzpTTjZr
 0ijw==
X-Gm-Message-State: ACrzQf0riD/PiryqhGmzNTom+AR3xbaD9ZmRePRDz322JcrFbLapBL6p
 IU405f93urjBO5yoL0ef8r8GCYAzBm8MRfFqOkOhMEX0aogM
X-Google-Smtp-Source: AMsMyM7xthTrLipNJU/j0ql7ahPbDuKjaUviEQsaWmx81Aq8qU+lWmoVZd4z0nI1u/uGYBJ0wpz1WkqqNQTQGVqRG9RC9M1PvtFT
MIME-Version: 1.0
X-Received: by 2002:a92:cd83:0:b0:2f9:c29a:9107 with SMTP id
 r3-20020a92cd83000000b002f9c29a9107mr7128369ilb.271.1665324941508; Sun, 09
 Oct 2022 07:15:41 -0700 (PDT)
Date: Sun, 09 Oct 2022 07:15:41 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000093079705ea9aada2@google.com>
From: syzbot <syzbot+7edb85bc97be9f350d90@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 62e6e5940c0c
 Merge tag 'scsi-misc' of git://git.kernel.org.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1767b062880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1ohX5n-0006Mb-1V
X-Mailman-Approved-At: Mon, 10 Oct 2022 14:15:03 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbFindCtl
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

HEAD commit:    62e6e5940c0c Merge tag 'scsi-misc' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1767b062880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4c13637ccca17699
dashboard link: https://syzkaller.appspot.com/bug?extid=7edb85bc97be9f350d90
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/b4f4f04cf38f/disk-62e6e594.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/dfb013b64867/vmlinux-62e6e594.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+7edb85bc97be9f350d90@syzkaller.appspotmail.com

loop3: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1671:12
shift exponent 1635280253 is too large for 64-bit type 'long long'
CPU: 0 PID: 15905 Comm: syz-executor.3 Not tainted 6.0.0-syzkaller-07362-g62e6e5940c0c #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 dbFindCtl+0x426/0x590 fs/jfs/jfs_dmap.c:1671
 dbAllocAny fs/jfs/jfs_dmap.c:1502 [inline]
 dbAlloc+0x31b/0xc90 fs/jfs/jfs_dmap.c:732
 extBalloc fs/jfs/jfs_extent.c:321 [inline]
 extAlloc+0x4b9/0xff0 fs/jfs/jfs_extent.c:122
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
RIP: 0033:0x7f7e2c68a5a9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f7e2d775168 EFLAGS: 00000246 ORIG_RAX: 0000000000000028
RAX: ffffffffffffffda RBX: 00007f7e2c7abf80 RCX: 00007f7e2c68a5a9
RDX: 0000000000000000 RSI: 0000000000000004 RDI: 0000000000000003
RBP: 00007f7e2c6e5580 R08: 0000000000000000 R09: 0000000000000000
R10: 000080001d00c0d0 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffcebd1439f R14: 00007f7e2d775300 R15: 0000000000022000
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
