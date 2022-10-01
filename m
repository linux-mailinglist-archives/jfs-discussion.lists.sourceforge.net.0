Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C38EF5F1F2B
	for <lists+jfs-discussion@lfdr.de>; Sat,  1 Oct 2022 22:14:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oeirz-00082a-0X;
	Sat, 01 Oct 2022 20:13:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ZUI4YwkbAOoeklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oecfn-00069s-Im for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Oct 2022 13:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lZrq325N5CoAwJpbha3EKwb0wIXv2j/NpUSPeKBVQGk=; b=Tz8dcWUuGsLgqzF2ALn1Q4Jwln
 DysgyQwzFIO+CHrYEhUDwMPxXUQ2J3rsKAfDVWpPt8KYgUkgUGHVnjPTS1ZOztCwa7bCsilDfbiJx
 bLXMMRKmauD/VS70ROFH29SDtATabY+NT9W1w083WJ3gCN0oGEt5ZmVX+2YfoGOL2jAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lZrq325N5CoAwJpbha3EKwb0wIXv2j/NpUSPeKBVQGk=; b=Z
 +rulCefi1f5AwM3vyEjB1z4s9wXpwRaE2jKBLoDeqpIKANIpYMhnt61Nd0jChRwLbLcFj2zxoZvQq
 Yj/QlYjzl58a0Il4aMnyAsrcKVsqvEiCtjgeYXSnJ3aeNYlAqopzBfczxsDO5skZi/WitMYcVXfl+
 w5RemkWldUMkR53M=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oecfb-008xZm-BI for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Oct 2022 13:36:47 +0000
Received: by mail-il1-f200.google.com with SMTP id
 g1-20020a92cda1000000b002f612391d5bso5352722ild.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 01 Oct 2022 06:36:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=lZrq325N5CoAwJpbha3EKwb0wIXv2j/NpUSPeKBVQGk=;
 b=qF3wJlW9cNhEkqNrDQT5wjnc/hountUP0CAP33rRDyfxHvBRw/c2xJaMnqe2OmuuZz
 YSbuPwuwYCWluH0h7TOMUait8BZfgAt8n5rxoYX1cvYfM8t4pI5Ov5kq19IXMllAm1wq
 8CFWHU0lmS639OBWYPDa9/Py7RJPLyg856SKrVXNPhzMgYYlUQwAQwX/cVMp9bwJWOML
 5/0TME87psn6aNtAAaac0IttsIDzU3Kp6+/ktqi2o1JK4fZDyW0El1gbduCny5EMRf04
 7+QvqZUiS/sChU/BmzydPzqoDsfT7x52Eg6uqckyRd4qIeIYcnRITZkdoL6+KWbpr7yw
 fqbA==
X-Gm-Message-State: ACrzQf3VxzvpYuC37e7ozZR5/ywYTYRwAuPIY1udnzxtck6F2+3x38vy
 5w4UWrwUH9UVSQflWJ/ZwCR5d/DfMSvXjSqmNG2TEjjR++RL
X-Google-Smtp-Source: AMsMyM42c9lAzc9EtDH+gOAlqsDMqO96q9uzxCi000rBgVGVJkymabFPhnTY2qspD+tMJMW2+zGYSQg2Rp7CeJfXyFvnDVGPflI2
MIME-Version: 1.0
X-Received: by 2002:a02:3548:0:b0:362:4000:9010 with SMTP id
 y8-20020a023548000000b0036240009010mr346518jae.69.1664631397800; Sat, 01 Oct
 2022 06:36:37 -0700 (PDT)
Date: Sat, 01 Oct 2022 06:36:37 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000025ec9e05e9f933c9@google.com>
From: syzbot <syzbot+b4c57cb06cb5a53b7b06@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 49c13ed0316d
 Merge tag 'soc-fixes-6.0-rc7' of git://git.ke.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=10b106ef080000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
X-Headers-End: 1oecfb-008xZm-BI
X-Mailman-Approved-At: Sat, 01 Oct 2022 20:13:51 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in diFree
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

HEAD commit:    49c13ed0316d Merge tag 'soc-fixes-6.0-rc7' of git://git.ke..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=10b106ef080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=755695d26ad09807
dashboard link: https://syzkaller.appspot.com/bug?extid=b4c57cb06cb5a53b7b06
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17f323ff080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=148a2804880000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b4c57cb06cb5a53b7b06@syzkaller.appspotmail.com

ERROR: (device loop0): xtTruncate_pmap: XT_GETPAGE: xtree page corrupt
ERROR: (device loop0): remounting filesystem as read-only
ERROR: (device loop0): txAbort: 
ERROR: (device loop0): xtTruncate: XT_GETPAGE: xtree page corrupt
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_imap.c:881:9
shift exponent 8205 is too large for 64-bit type 'long long unsigned int'
CPU: 0 PID: 3614 Comm: syz-executor393 Not tainted 6.0.0-rc7-syzkaller-00068-g49c13ed0316d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 diFree.cold+0x17/0x68 fs/jfs/jfs_imap.c:881
 jfs_evict_inode+0x3c1/0x4a0 fs/jfs/inode.c:156
 evict+0x2ed/0x6b0 fs/inode.c:665
 iput_final fs/inode.c:1748 [inline]
 iput.part.0+0x55d/0x810 fs/inode.c:1774
 iput+0x58/0x70 fs/inode.c:1764
 dentry_unlink_inode+0x2b1/0x460 fs/dcache.c:401
 __dentry_kill+0x3c0/0x640 fs/dcache.c:607
 shrink_dentry_list+0x23c/0x800 fs/dcache.c:1201
 shrink_dcache_parent+0x1fe/0x3c0 fs/dcache.c:1628
 do_one_tree fs/dcache.c:1682 [inline]
 shrink_dcache_for_umount+0x71/0x330 fs/dcache.c:1699
 generic_shutdown_super+0x68/0x400 fs/super.c:473
 kill_block_super+0x97/0xf0 fs/super.c:1427
 deactivate_locked_super+0x94/0x160 fs/super.c:332
 deactivate_super+0xad/0xd0 fs/super.c:363
 cleanup_mnt+0x2ae/0x3d0 fs/namespace.c:1186
 task_work_run+0xdd/0x1a0 kernel/task_work.c:177
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0xad5/0x29b0 kernel/exit.c:795
 do_group_exit+0xd2/0x2f0 kernel/exit.c:925
 __do_sys_exit_group kernel/exit.c:936 [inline]
 __se_sys_exit_group kernel/exit.c:934 [inline]
 __x64_sys_exit_group+0x3a/0x50 kernel/exit.c:934
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f72b3c35579
Code: Unable to access opcode bytes at RIP 0x7f72b3c3554f.
RSP: 002b:00007fff12fe7c88 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
RAX: ffffffffffffffda RBX: 00007f72b3cb8330 RCX: 00007f72b3c35579
RDX: 000000000000003c RSI: 00000000000000e7 RDI: 0000000000000001
RBP: 0000000000000001 R08: ffffffffffffffc0 R09: 0000000000000000
R10: 0000555556c4c2c0 R11: 0000000000000246 R12: 00007f72b3cb8330
R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
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
