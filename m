Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E0975642E
	for <lists+jfs-discussion@lfdr.de>; Mon, 17 Jul 2023 15:17:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qLO5f-0002GC-T9;
	Mon, 17 Jul 2023 13:16:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3VzyzZAkbAMg6CDyozzs5o33wr.u22uzs86s5q217s17.q20@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qKpnp-0002dt-Er for jfs-discussion@lists.sourceforge.net;
 Sun, 16 Jul 2023 00:39:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2HRENWUX6473hWOYfvczN63G7wz7qzxxc9sTMX76Qkk=; b=IfD6mCFyFjGN1Qp51S/oaWYp/D
 e5CczuMWfx3eYcFDLKwowLRBmnvm+tf1tHPMf+LqDJoUM1oskMRTOy8LfXki5vTCSuZgVsF/4ROEZ
 sNtwNj2YNQcZCJqIKP+WW8QzErVaH4sCSjAFb2DojQjWVZt64bd91soHSu2KnYmNkHws=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2HRENWUX6473hWOYfvczN63G7wz7qzxxc9sTMX76Qkk=; b=E
 V7mJsSbjGj0puIjXf7s6cNMLKyM4w9jt7tLoA8hU+EqGDTR/0HYJkqa4/4Aj5vY0XLlLri8GP6BBm
 Qcgk/hm3rbAewy5dMyjhpQNyyz3RMZMPJNv+piUlRDnWy4+gk2j+g+ezu9jhd14S4OVlDcAV++pAc
 bSJDiYUt6GxFVfQk=;
Received: from mail-ot1-f79.google.com ([209.85.210.79])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qKpno-00964i-Mk for jfs-discussion@lists.sourceforge.net;
 Sun, 16 Jul 2023 00:39:58 +0000
Received: by mail-ot1-f79.google.com with SMTP id
 46e09a7af769-6b885d53a09so4389454a34.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 15 Jul 2023 17:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689467991; x=1692059991;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2HRENWUX6473hWOYfvczN63G7wz7qzxxc9sTMX76Qkk=;
 b=XngfPJayIg07X1mKXECspmegEqKzTiPqGaiVaxO/9qrqyjSvmVzQEMtQcl6+R9xc6Y
 O02CMVjJuovLYCpubOjQ2ZTvhJLRzdV8g3WnqMX4ezAgV1P3H4prrXtuwGb3FO83HxDz
 grxx+yH3mVImyteGaipQjbHk/R3hl7fer7vd+ysSeFOfq56lrbfiRDWav3/sq8xgajto
 hDoHKClpf9Hn2e3WKUaruXiSkd6MrevFuP0SVf+FT1vuWmGpJDvVYvl8Sm9UspHF7uqZ
 txqhhxhWfpX+e48xiSNJcG5GF0mPSLti9S5k1dTG60krwXxp+xbsKh0gxi1qc5+4tqrO
 7DuA==
X-Gm-Message-State: ABy/qLYWtgWzXx5nSb302U2KHP2c4H2dFRXphI/i396eE7PCLHYRJsfG
 5kznJnYpZIk/TX++j+pob8vvoYlXLNSVjyiRTYTwt2BcqTJCkgQ/Vg==
X-Google-Smtp-Source: APBJJlFWfKTYuvIOAsszfL9DrcUI56VvQS5qJlyU+vqlkFsCpMxoySifryMf7F2v6fiIrN/bJNLnflZmnz8yXbS0iEJmDIWQ/Avd
MIME-Version: 1.0
X-Received: by 2002:a05:6871:6a97:b0:1ba:5296:a97f with SMTP id
 zf23-20020a0568716a9700b001ba5296a97fmr3041132oab.9.1689467991100; Sat, 15
 Jul 2023 17:39:51 -0700 (PDT)
Date: Sat, 15 Jul 2023 17:39:51 -0700
In-Reply-To: <000000000000459c6205ea318e35@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000078172f06008febc9@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: b6e6cc1f78c7 Merge tag 'x86_urgent_for_6.5_rc2' of git://g..
 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=11f40fa2a80000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.79 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.79 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qKpno-00964i-Mk
X-Mailman-Approved-At: Mon, 17 Jul 2023 13:16:39 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in xtSearch
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
From: syzbot via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot <syzbot+76a072c2f8a60280bd70@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    b6e6cc1f78c7 Merge tag 'x86_urgent_for_6.5_rc2' of git://g..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11f40fa2a80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4a9506b1ca57ae9f
dashboard link: https://syzkaller.appspot.com/bug?extid=76a072c2f8a60280bd70
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=172c5646a80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13360a92a80000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/3dfa34d80a41/disk-b6e6cc1f.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/778e016c7229/vmlinux-b6e6cc1f.xz
kernel image: https://storage.googleapis.com/syzbot-assets/c8001018a584/bzImage-b6e6cc1f.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/36bab007b655/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+76a072c2f8a60280bd70@syzkaller.appspotmail.com

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_xtree.c:360:4
index 18 is out of range for type 'xad_t [18]'
CPU: 0 PID: 5017 Comm: syz-executor116 Not tainted 6.5.0-rc1-syzkaller-00248-gb6e6cc1f78c7 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/03/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x125/0x1b0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_out_of_bounds+0x111/0x150 lib/ubsan.c:348
 xtSearch+0x12e2/0x1650 fs/jfs/jfs_xtree.c:360
 xtLookup+0x273/0x840 fs/jfs/jfs_xtree.c:152
 jfs_get_block+0x325/0xb20 fs/jfs/inode.c:218
 do_mpage_readpage+0x6f8/0x1ab0 fs/mpage.c:234
 mpage_readahead+0x344/0x580 fs/mpage.c:382
 read_pages+0x1d1/0xda0 mm/readahead.c:160
 page_cache_ra_unbounded+0x457/0x5e0 mm/readahead.c:269
 do_page_cache_ra mm/readahead.c:299 [inline]
 page_cache_ra_order+0x72b/0xa80 mm/readahead.c:559
 ondemand_readahead+0x540/0x1150 mm/readahead.c:681
 page_cache_sync_ra+0x174/0x1d0 mm/readahead.c:708
 page_cache_sync_readahead include/linux/pagemap.h:1213 [inline]
 filemap_get_pages+0xc05/0x1820 mm/filemap.c:2563
 filemap_splice_read+0x3d0/0x9f0 mm/filemap.c:2925
 vfs_splice_read fs/splice.c:994 [inline]
 vfs_splice_read+0x2c8/0x3b0 fs/splice.c:963
 splice_direct_to_actor+0x2a5/0xa30 fs/splice.c:1070
 do_splice_direct+0x1af/0x280 fs/splice.c:1195
 do_sendfile+0xb88/0x1390 fs/read_write.c:1254
 __do_sys_sendfile64 fs/read_write.c:1322 [inline]
 __se_sys_sendfile64 fs/read_write.c:1308 [inline]
 __x64_sys_sendfile64+0x1d6/0x220 fs/read_write.c:1308
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x38/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f9707d0abc9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 81 18 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f97008a5168 EFLAGS: 00000246 ORIG_RAX: 0000000000000028
RAX: ffffffffffffffda RBX: 00007f9707d97718 RCX: 00007f9707d0abc9
RDX: 0000000000000000 RSI: 0000000000000007 RDI: 0000000000000006
RBP: 00007f9707d97710 R08: 00007f97008a56c0 R09: 0000000000000000
R10: 0001000000201004 R11: 0000000000000246 R12: 00007f9707d9771c
R13: 000000000000006e R14: 00007ffe2c345d70 R15: 00007ffe2c345e58
 </TASK>
================================================================================


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
