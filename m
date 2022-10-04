Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF615F4503
	for <lists+jfs-discussion@lfdr.de>; Tue,  4 Oct 2022 16:01:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ofiTe-0002UH-9l;
	Tue, 04 Oct 2022 14:00:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <35PM7YwkbANsPVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ofdda-0004E6-ST for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Oct 2022 08:50:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mFwuOFYdWVs0cNRuvJd+SgtJheoVJ15OPAHtEUyzi/o=; b=ewt7dDXRSVqSLtLmEeOcO5JdL2
 slMYcEeAgkzRABLw4AwfJP0vw7HFvahmrV6cN7SJNPNHzjyywLFiNq0WpybkK42ok0PCA6w5DJRUa
 gZoIlwitzQS5nAYog85lo8SJ95WqtOqq8tpCPfXYNb9oG/a04fyWYkH5KBoafCMngmiQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mFwuOFYdWVs0cNRuvJd+SgtJheoVJ15OPAHtEUyzi/o=; b=b
 9vMjBmX2dnr83SDUKzTPUP3I74bI1BXiNC4TgP3AKuPeoiw7Bl/+3x0Kt9COSDKLQiVWj3/97Ds8O
 0z5j8DoZ+5rgzzf0RHzj6zoA0KaradYzE6fmMSOlyTgQ350p6R5FzCaacXDHxcnoHs/xHAual2uNZ
 6BltoLEqsaUX5OMY=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ofdda-00C7T5-8c for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Oct 2022 08:50:50 +0000
Received: by mail-il1-f198.google.com with SMTP id
 h10-20020a92c26a000000b002f57c5ac7dbso10459601ild.15
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 04 Oct 2022 01:50:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=mFwuOFYdWVs0cNRuvJd+SgtJheoVJ15OPAHtEUyzi/o=;
 b=K/OIThow4/fx3+s2IVfpPPuPe9o/gmt5Pu8F4rgjdUccv8U5usyDUOwnpi2D9uwIlj
 qdCdtsxcZjuiJRLfNrHYn+mrwYQ5I6NAhR/5Ik7pbmQbuqI7zoEypOMTgzlPakhN2UXo
 j7yPBFb051VI7FH8zOBEkXdrF0hEF/aE3HPlZ6WpI3I5A/LXSI0zwQ6EYYJTX3fjlf7x
 DX7+CDraLTNAQSmAeRGqBxHetUT807r3GloGlVWSTzzCFDF6pAaSyi254F5AISGvx86s
 usiSPYdK7iWy3yj9EuP6H4CRSF2swjRTrDoFsHqP/Q+aOlUBk2rehY6tS7tjYScj25vC
 H9vQ==
X-Gm-Message-State: ACrzQf08XkhbxabfH1mLf/fnBuluMK/9zWzIX6A9fvK+TblGSiW37gD4
 22ywHLYaSCd3acZv9QsmxRdoAyJm2BExPB6rDkQhrWOCu/OS
X-Google-Smtp-Source: AMsMyM5xVl8vJ+/ouhp0JVkPM87d8EPdtJhtIgeHpw12QfLqnV0M+pR/Xi4gcPH1Fwm4FH8NXmM5c0lPsOJd/oMJNRB8dBo9Tjcb
MIME-Version: 1.0
X-Received: by 2002:a6b:8e43:0:b0:6a2:a115:7f01 with SMTP id
 q64-20020a6b8e43000000b006a2a1157f01mr10204379iod.47.1664873444775; Tue, 04
 Oct 2022 01:50:44 -0700 (PDT)
Date: Tue, 04 Oct 2022 01:50:44 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000459c6205ea318e35@google.com>
From: syzbot <syzbot+76a072c2f8a60280bd70@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: a962b54e162c
 Merge tag 'i2c-for-6.0-rc8' of git://git.kern.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1441fa0a880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1ofdda-00C7T5-8c
X-Mailman-Approved-At: Tue, 04 Oct 2022 14:00:52 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 xtSearch
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

HEAD commit:    a962b54e162c Merge tag 'i2c-for-6.0-rc8' of git://git.kern..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1441fa0a880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=76a072c2f8a60280bd70
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/7cf7771c181a/disk-a962b54e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/dcd5516984d8/vmlinux-a962b54e.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+76a072c2f8a60280bd70@syzkaller.appspotmail.com

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_xtree.c:360:4
index 19 is out of range for type 'xad_t [18]'
CPU: 1 PID: 1533 Comm: syz-executor.1 Not tainted 6.0.0-rc7-syzkaller-00250-ga962b54e162c #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 xtSearch+0x709/0x1cb0 fs/jfs/jfs_xtree.c:360
 xtLookup+0x235/0x880 fs/jfs/jfs_xtree.c:152
 extHint+0x204/0x630 fs/jfs/jfs_extent.c:215
 jfs_get_block+0x2e3/0xce0 fs/jfs/inode.c:246
 __block_write_begin_int+0x5f6/0x1ba0 fs/buffer.c:2006
 __block_write_begin fs/buffer.c:2056 [inline]
 block_write_begin+0x93/0x1e0 fs/buffer.c:2117
 jfs_write_begin+0x2d/0x60 fs/jfs/inode.c:304
 generic_perform_write+0x2a8/0x5b0 mm/filemap.c:3738
 __generic_file_write_iter+0x176/0x400 mm/filemap.c:3866
 generic_file_write_iter+0xab/0x310 mm/filemap.c:3898
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
RIP: 0033:0x7efc6de8a5a9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007efc6cddd168 EFLAGS: 00000246 ORIG_RAX: 0000000000000028
RAX: ffffffffffffffda RBX: 00007efc6dfac050 RCX: 00007efc6de8a5a9
RDX: 0000000000000000 RSI: 0000000000000007 RDI: 0000000000000003
RBP: 00007efc6dee5580 R08: 0000000000000000 R09: 0000000000000000
R10: 00008400fffffffa R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffe1677525f R14: 00007efc6cddd300 R15: 0000000000022000
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
