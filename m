Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EB95F161E
	for <lists+jfs-discussion@lfdr.de>; Sat,  1 Oct 2022 00:27:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oeOTd-0005Qi-14;
	Fri, 30 Sep 2022 22:27:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3JG03YwkbAPsv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oeOSv-0005dq-7P for jfs-discussion@lists.sourceforge.net;
 Fri, 30 Sep 2022 22:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A4M1jwcikAykUnpmEqYfdsXGYXIV8qxX9cM/wCryjFA=; b=TzQhGFPp4BWb/GhTiKr1ampZTL
 vvMN3fPpo51umyUftp/0dY8B/Mkbv1Kh1Fy9kUDrtw2YC5rzMPs9tbL7YhuWyGmqlwqVLfHN35dCd
 zRgRRqiazdI5D/69AMz0dyYPUS6tVAYKjcF0XamMwQV0BgVWZTVGBBvdouGbNOINf5P8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=A4M1jwcikAykUnpmEqYfdsXGYXIV8qxX9cM/wCryjFA=; b=i
 6/EwbcnnK5IzvPZnqUNqGmUyPm/VV8zQo+0QKGKGzcUk1Z99of9hWXWpr2dKMh56/uT2Nn4zGfx72
 lH82L+uFKS2+grE9XrJZX+2MjU3e5gzcNdFUu71hY8CeXaOponWxOkyC79RQNHZefDd/kDyQ5fbr/
 f01IpP19BSLbfts4=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oeOT3-0006eP-JN for jfs-discussion@lists.sourceforge.net;
 Fri, 30 Sep 2022 22:26:53 +0000
Received: by mail-io1-f70.google.com with SMTP id
 a15-20020a6b660f000000b006a0d0794ad1so3625931ioc.6
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 30 Sep 2022 15:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=A4M1jwcikAykUnpmEqYfdsXGYXIV8qxX9cM/wCryjFA=;
 b=JtJVt4sohmmqZBrq0W3Co4RdB0uuENLdqpd7jgLE4CCI22NkoS85dSw5LMamDw88Ch
 E9Izbvw6rGkW/Cy5li/mGfqqMPlT23RZPZCOD/I2NG//0erkgF7MRGqBkD5I7JoC69Pj
 rN6zzKMG4R/TTC1eYz8W3eZBI8pZoXzrMYga7pwqZ7sAuRQ5AKZeLFDhTb49EII+2/kA
 epF7tD08Vxp8iK3+vhF6b7Z0M8jDyBbByd20TVL4G6dJCwgsZeb2DrID7L4ayYQX1LF0
 gHCUw0U/tpjYNeKqrK2YSP+CwcD9ZIczMKmu7awCITSzR1CeKtj4a5Ud0y6CJzzB5cd6
 wL2Q==
X-Gm-Message-State: ACrzQf2A4ulNX1nqcfB6cOQsChYoeCse4SG7EIAhbvv3VmfzTBAewEqa
 XpJ+ekmr7D5xPkccwsbztHbE6eCuHL74PLplq06vkIXKKkjO
X-Google-Smtp-Source: AMsMyM5wBmYLJIZGt2NUUsb9sb2VUHmrt2IHTrpUCqF+rYn/un+Qx9Op7Ri/KnIJF+Ezx5jYVhocvR0B8QK9h24viw35p0yYLanv
MIME-Version: 1.0
X-Received: by 2002:a05:6638:379d:b0:35a:41a4:778f with SMTP id
 w29-20020a056638379d00b0035a41a4778fmr5738338jal.102.1664576804012; Fri, 30
 Sep 2022 15:26:44 -0700 (PDT)
Date: Fri, 30 Sep 2022 15:26:44 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001ac89b05e9ec7db6@google.com>
From: syzbot <syzbot+c732e285f8fc38d15916@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: c3e0e1e23c70
 Merge tag 'irq_urgent_for_v6.0' of git://git... git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=11189000880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oeOT3-0006eP-JN
X-Mailman-Approved-At: Fri, 30 Sep 2022 22:27:23 +0000
Subject: [Jfs-discussion] [syzbot] general protection fault in
 write_special_inodes
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

HEAD commit:    c3e0e1e23c70 Merge tag 'irq_urgent_for_v6.0' of git://git...
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=11189000880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a1992c90769e07
dashboard link: https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1079c41f080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=154912e0880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e29a1fa19166/disk-c3e0e1e2.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/fd7739458f56/vmlinux-c3e0e1e2.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c732e285f8fc38d15916@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xdffffc0000000006: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000030-0x0000000000000037]
CPU: 0 PID: 3611 Comm: syz-executor329 Not tainted 6.0.0-rc7-syzkaller-00081-gc3e0e1e23c70 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
RIP: 0010:write_special_inodes+0xa6/0x170 fs/jfs/jfs_logmgr.c:208
Code: 8b 7d 30 41 ff d4 48 8d 7b 28 48 89 f8 48 c1 e8 03 80 3c 28 00 0f 85 ab 00 00 00 4c 8b 6b 28 49 8d 7d 30 48 89 f8 48 c1 e8 03 <80> 3c 28 00 0f 85 88 00 00 00 49 8b 7d 30 41 ff d4 48 8d bb b0 00
RSP: 0018:ffffc90003037c20 EFLAGS: 00010206
RAX: 0000000000000006 RBX: ffff888017347c00 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff81a29052 RDI: 0000000000000030
RBP: dffffc0000000000 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: ffffffff81a39370
R13: 0000000000000000 R14: ffff88807d3ed800 R15: ffff88801a953040
FS:  0000555556aaa300(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000557c33749000 CR3: 0000000016fbf000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 lmLogSync+0x458/0x7b0 fs/jfs/jfs_logmgr.c:937
 jfs_syncpt+0x89/0xa0 fs/jfs/jfs_logmgr.c:1041
 jfs_sync_fs+0x80/0xa0 fs/jfs/super.c:685
 sync_filesystem.part.0+0x75/0x1d0 fs/sync.c:56
 sync_filesystem+0x8b/0xc0 fs/sync.c:43
 generic_shutdown_super+0x70/0x400 fs/super.c:474
 kill_block_super+0x97/0xf0 fs/super.c:1427
 deactivate_locked_super+0x94/0x160 fs/super.c:332
 deactivate_super+0xad/0xd0 fs/super.c:363
 cleanup_mnt+0x2ae/0x3d0 fs/namespace.c:1186
 task_work_run+0xdd/0x1a0 kernel/task_work.c:177
 ptrace_notify+0x114/0x140 kernel/signal.c:2353
 ptrace_report_syscall include/linux/ptrace.h:420 [inline]
 ptrace_report_syscall_exit include/linux/ptrace.h:482 [inline]
 syscall_exit_work kernel/entry/common.c:249 [inline]
 syscall_exit_to_user_mode_prepare+0x129/0x280 kernel/entry/common.c:276
 __syscall_exit_to_user_mode_work kernel/entry/common.c:281 [inline]
 syscall_exit_to_user_mode+0x9/0x50 kernel/entry/common.c:294
 do_syscall_64+0x42/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fd021dc0917
Code: 07 00 48 83 c4 08 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 b8 a6 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffed2de9fd8 EFLAGS: 00000206 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007fd021dc0917
RDX: 00007ffed2dea099 RSI: 000000000000000a RDI: 00007ffed2dea090
RBP: 00007ffed2dea090 R08: 00000000ffffffff R09: 00007ffed2de9e70
R10: 0000555556aab653 R11: 0000000000000206 R12: 00007ffed2deb100
R13: 0000555556aab5f0 R14: 00007ffed2dea000 R15: 0000000000000001
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:write_special_inodes+0xa6/0x170 fs/jfs/jfs_logmgr.c:208
Code: 8b 7d 30 41 ff d4 48 8d 7b 28 48 89 f8 48 c1 e8 03 80 3c 28 00 0f 85 ab 00 00 00 4c 8b 6b 28 49 8d 7d 30 48 89 f8 48 c1 e8 03 <80> 3c 28 00 0f 85 88 00 00 00 49 8b 7d 30 41 ff d4 48 8d bb b0 00
RSP: 0018:ffffc90003037c20 EFLAGS: 00010206
RAX: 0000000000000006 RBX: ffff888017347c00 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff81a29052 RDI: 0000000000000030
RBP: dffffc0000000000 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: ffffffff81a39370
R13: 0000000000000000 R14: ffff88807d3ed800 R15: ffff88801a953040
FS:  0000555556aaa300(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fff786565d8 CR3: 0000000016fbf000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	8b 7d 30             	mov    0x30(%rbp),%edi
   3:	41 ff d4             	callq  *%r12
   6:	48 8d 7b 28          	lea    0x28(%rbx),%rdi
   a:	48 89 f8             	mov    %rdi,%rax
   d:	48 c1 e8 03          	shr    $0x3,%rax
  11:	80 3c 28 00          	cmpb   $0x0,(%rax,%rbp,1)
  15:	0f 85 ab 00 00 00    	jne    0xc6
  1b:	4c 8b 6b 28          	mov    0x28(%rbx),%r13
  1f:	49 8d 7d 30          	lea    0x30(%r13),%rdi
  23:	48 89 f8             	mov    %rdi,%rax
  26:	48 c1 e8 03          	shr    $0x3,%rax
* 2a:	80 3c 28 00          	cmpb   $0x0,(%rax,%rbp,1) <-- trapping instruction
  2e:	0f 85 88 00 00 00    	jne    0xbc
  34:	49 8b 7d 30          	mov    0x30(%r13),%rdi
  38:	41 ff d4             	callq  *%r12
  3b:	48                   	rex.W
  3c:	8d                   	.byte 0x8d
  3d:	bb                   	.byte 0xbb
  3e:	b0 00                	mov    $0x0,%al


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
