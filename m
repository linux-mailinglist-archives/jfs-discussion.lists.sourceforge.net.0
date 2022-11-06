Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6C761F43F
	for <lists+jfs-discussion@lfdr.de>; Mon,  7 Nov 2022 14:25:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1os27t-00027K-4H;
	Mon, 07 Nov 2022 13:25:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3XBdoYwkbAE07DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1orm9W-0003ks-KA for jfs-discussion@lists.sourceforge.net;
 Sun, 06 Nov 2022 20:21:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iFxtpsBCdq9AcVN6nHrpSjVURQQ/Q55yiCvyBMA//bs=; b=hRad90UuU7RXSMPRAcSAf8nxRt
 dxfRJvPhsjSudQsIsrP3SAGpMtvKe84XRNf+57zTF9m3eGvk008Aj3FaqFbHa/nXLx+O8rmp72nS8
 SU0BxtDVOYfBzNnyObISXy2SvBcwoWdeG8O1qxS1gxZgnQVOLHNvHYPYPJqSdYqYhxyY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iFxtpsBCdq9AcVN6nHrpSjVURQQ/Q55yiCvyBMA//bs=; b=V
 xwCRCnUwnMdWDrmtzsydSN7cm2NaK+NzZh8ViBTRHLdum9XJXu/04KvRPl9hAgzhGNNmzkj37oi4I
 xgewx+q3uxdLi3DRf4Ecg1YGzf+/ByULk7pN+fgpynVfS7l7fzyZTUj6eQroatCBXVcPLJDgYNg6S
 kawojhqBBR3teQSA=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1orm9S-0002id-Ad for jfs-discussion@lists.sourceforge.net;
 Sun, 06 Nov 2022 20:21:57 +0000
Received: by mail-il1-f198.google.com with SMTP id
 k3-20020a92c243000000b0030201475a6bso2944990ilo.9
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 06 Nov 2022 12:21:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=iFxtpsBCdq9AcVN6nHrpSjVURQQ/Q55yiCvyBMA//bs=;
 b=pUittq9E28SQ4YsjckOQzEKtvqT199waAmzFlLQ+eobylKUa5GqWYT7LYwj5hGEWCC
 3KM8XVJdG/3FdZZ7iJS2cUk+MWuWl6iKdUrZVa6ZZQTfHGP9Z1NuOXoWp0mIVSqSx5Wa
 7bYPqlrJPSG/pBxEEa9v2N+PHrbKC2sR0LeBhVQvxcDsygsxC8W/7JNPDI015NJ5ceCa
 YPHPleIlg5w/955Xc1HAshUUjD+xqEp9YFdV/dvIEKgo/CALxNdtdUtxFQF5jCBEpNbS
 ZdkofivrxsgTDRWNQc1YejpV/XnYyXlLFmoDM9anJKTS8mjNZcotBJZm7cYVi58sAej5
 dLpQ==
X-Gm-Message-State: ACrzQf0W4sfwOvq8cehB1P8bjfKpZbQY53ZFy/wKaYjlSqfXSkPAh5Ce
 gylaN0OK0zod+FbwkZr6sE+teMZkqD02eMnfnF3F2SkNKN+0
X-Google-Smtp-Source: AMsMyM6EqIFLfRw3XsvZWos8WTIfz2nip/IxuKz8yIJJgbeT3yYSLrqxahtGADhLRG0BQFMiYtskWl4JRK2yFjpA0siEKTrQLKVO
MIME-Version: 1.0
X-Received: by 2002:a92:c5d4:0:b0:300:d9d7:fe2e with SMTP id
 s20-20020a92c5d4000000b00300d9d7fe2emr9682435ilt.212.1667766108744; Sun, 06
 Nov 2022 12:21:48 -0800 (PST)
Date: Sun, 06 Nov 2022 12:21:48 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007af51d05ecd30ed9@google.com>
From: syzbot <syzbot+e526b0844b096abaa8c7@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: b229b6ca5abb
 Merge tag 'perf-tools-fixes-for-v6.1-2022-10-.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=144f6876880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1orm9S-0002id-Ad
X-Mailman-Approved-At: Mon, 07 Nov 2022 13:25:19 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 xtLookup
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

HEAD commit:    b229b6ca5abb Merge tag 'perf-tools-fixes-for-v6.1-2022-10-..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=144f6876880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1d3548a4365ba17d
dashboard link: https://syzkaller.appspot.com/bug?extid=e526b0844b096abaa8c7
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/24728b72a896/disk-b229b6ca.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/10a3c40c60e1/vmlinux-b229b6ca.xz
kernel image: https://storage.googleapis.com/syzbot-assets/69f963b02b7e/bzImage-b229b6ca.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e526b0844b096abaa8c7@syzkaller.appspotmail.com

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_xtree.c:179:9
index 19 is out of range for type 'xad_t [18]'
CPU: 1 PID: 8948 Comm: syz-executor.1 Not tainted 6.1.0-rc2-syzkaller-00105-gb229b6ca5abb #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 xtLookup+0x86c/0x880 fs/jfs/jfs_xtree.c:179
 jfs_get_block+0x24b/0xce0 fs/jfs/inode.c:218
 do_mpage_readpage+0x970/0x1c50 fs/mpage.c:208
 mpage_readahead+0x210/0x380 fs/mpage.c:361
 read_pages+0x169/0x9c0 mm/readahead.c:161
 page_cache_ra_unbounded+0x703/0x820 mm/readahead.c:270
 filemap_readahead mm/filemap.c:2557 [inline]
 filemap_get_pages+0x72f/0x10d0 mm/filemap.c:2597
 filemap_read+0x3cf/0xea0 mm/filemap.c:2675
 call_read_iter include/linux/fs.h:2185 [inline]
 generic_file_splice_read+0x1ff/0x5d0 fs/splice.c:309
 do_splice_to fs/splice.c:793 [inline]
 splice_direct_to_actor+0x41b/0xc00 fs/splice.c:865
 do_splice_direct+0x279/0x3d0 fs/splice.c:974
 do_sendfile+0x5fb/0xf80 fs/read_write.c:1255
 __do_sys_sendfile64 fs/read_write.c:1323 [inline]
 __se_sys_sendfile64+0x14f/0x1b0 fs/read_write.c:1309
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f59e548b5a9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f59e6216168 EFLAGS: 00000246 ORIG_RAX: 0000000000000028
RAX: ffffffffffffffda RBX: 00007f59e55abf80 RCX: 00007f59e548b5a9
RDX: 0000000000000000 RSI: 0000000000000009 RDI: 0000000000000008
RBP: 00007f59e54e67b0 R08: 0000000000000000 R09: 0000000000000000
R10: 0001000000201005 R11: 0000000000000246 R12: 0000000000000000
R13: 00007fff7e17c23f R14: 00007f59e6216300 R15: 0000000000022000
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
