Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9977B6060E1
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Oct 2022 15:02:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1olVC0-0000eh-ES;
	Thu, 20 Oct 2022 13:02:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <30OdQYwkbAAUx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1olOrP-0000dd-VU for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Oct 2022 06:16:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1MfdereceE/3V87nTfYGeF1utu/rzFdYI+GBtd+NMds=; b=NFUbEBCLVdEixCP1oXeSJ+Yz2R
 VloxLZmdvQhyCW8RLGUv8qZCNVYr2bJeNiZeslY44zeY8hYNoVNc8mgxGc8XcPZn4NRnPW1i89hkh
 g3K0QhPb0dN/Ig+CwJBfVYv6WwBR4vq/ccAsAx2DPbYRJ0pKHPUJtAIxd7RrtQ2Wt8vo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1MfdereceE/3V87nTfYGeF1utu/rzFdYI+GBtd+NMds=; b=B
 AHZ2YX/l9eUFlD9w0PHw54wMsd820A0JUXumyuOp9rn++cmME305AwkwVp9Q4RdMPIX2E2nPPMPOl
 7LsJE3BAdldPU3mnTTwd7+JZMvhv3jqIFl8GFQHF/y+Y63LnQD0CeCoo84972pLbCHt9ZGjpsDx0R
 4oU5gfZLDxWkgvx4=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1olOrO-0007I1-6r for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Oct 2022 06:16:55 +0000
Received: by mail-il1-f197.google.com with SMTP id
 j8-20020a056e02154800b002fc89e9ebeeso19413630ilu.16
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Oct 2022 23:16:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=1MfdereceE/3V87nTfYGeF1utu/rzFdYI+GBtd+NMds=;
 b=a9Yxf6YbvMJDD5lCu6v4H+/suzYqTusCJzxGPb98zBFLxGRwz3GWIr7NrCyR18U3Iv
 IVUaM7YRCsrvZs6r1gsupXhlcaPn8Ar+O6p5IxPggh4P39nz9qwppfP6bHJgzzGfdbn2
 jaLcAPqh2Zfc5h1B0WVl7No/Jqh2SfvOQ8WAv6zFXcVFum4dXwz8g7TU3mmfDh47U6en
 8Dc7lcwIn6z8YhRXG1HNXoc2T4387vfjlSmHNv03asz/NaTXLzWY/okNeIBNuwQ4jVZL
 dn2ge28GzUj0PlpLeeQlRne84UIZm6WpdmArZaPrW8wPfYKz2pjn9/FxYFr8aGrR4m8w
 yjjw==
X-Gm-Message-State: ACrzQf17dYOfYN+vHQclxX11UrStauvegg5ra5/AO//0rsEKdcrpzUk9
 Dg4Ko6YNy/akAtmPSh5NkhchfvTUFS4eay9LvUZZ6ntAp2h6
X-Google-Smtp-Source: AMsMyM7p/Bay7M4z3EDkhLxZAvg7exxdu+H7Q8p2Qxy2t8IkCX7DCRqe1BCdP1QMash7awkL/RG4OIGLFuGbnYSkx0XlQ24Tcm1X
MIME-Version: 1.0
X-Received: by 2002:a02:cc9c:0:b0:363:e0e6:ec1b with SMTP id
 s28-20020a02cc9c000000b00363e0e6ec1bmr9284183jap.89.1666246608618; Wed, 19
 Oct 2022 23:16:48 -0700 (PDT)
Date: Wed, 19 Oct 2022 23:16:48 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000370ac005eb71453c@google.com>
From: syzbot <syzbot+4685943e4e2bf4a61bed@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: a72b55bc981b
 Add linux-next specific files for 20221019 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=12478bd6880000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
X-Headers-End: 1olOrO-0007I1-6r
X-Mailman-Approved-At: Thu, 20 Oct 2022 13:02:23 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in extHint
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

HEAD commit:    a72b55bc981b Add linux-next specific files for 20221019
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=12478bd6880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=200524babbc01b2a
dashboard link: https://syzkaller.appspot.com/bug?extid=4685943e4e2bf4a61bed
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15c7d70c880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=141adad2880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/fa24fb5893fd/disk-a72b55bc.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/cf1b7e7b579c/vmlinux-a72b55bc.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/2505d71f3ea8/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4685943e4e2bf4a61bed@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_extent.c:314:16
shift exponent -1 is negative
CPU: 1 PID: 3615 Comm: syz-executor427 Not tainted 6.1.0-rc1-next-20221019-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 extHint.cold-0x5/0x1f
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
RIP: 0033:0x7f54a91b6e89
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffda0797a78 EFLAGS: 00000246 ORIG_RAX: 0000000000000148
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f54a91b6e89
RDX: 0000000000000002 RSI: 0000000020003380 RDI: 0000000000000003
RBP: 00007f54a9176650 R08: 0000000000000000 R09: 0000000000000006
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00083878000000fc R15: 0000000000000000
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
