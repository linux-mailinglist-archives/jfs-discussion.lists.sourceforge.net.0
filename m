Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7529691292F
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Jun 2024 17:15:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sKfyp-0001pn-Dh;
	Fri, 21 Jun 2024 15:15:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3IJh1ZgkbAGERXYJ9KKDQ9OOHC.FNNFKDTRDQBNMSDMS.BNL@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sKfvL-00077U-1L for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jun 2024 15:11:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bkl6yEW6ODEztSFg+ZbwWXo7SxIFnRfXOWW0SpRgGzE=; b=YmaE7pkOsPZu03eYpqHnioip1i
 CPLQPyKxtUA3NZ3iFQtmglkgf4roD3qgtTLEV42SogeGDG8FzJOVynDniLJFDsha6MXHn8TC4MvKa
 3+M9SBeSjSn5+4GUN7tXC8PhbW3tlIImpb+fyUjD27azhUd5GObWy7ttJF7aRJWzpDU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Bkl6yEW6ODEztSFg+ZbwWXo7SxIFnRfXOWW0SpRgGzE=; b=j
 dQoKaj426SAtSbxTBuPGllrVgp//vVxCZwzRJr/la2q/G95ZpVeF6WXfoT3mkjtWXNs0BGCNIvjrd
 5ixeOXdwaKQ5oTOmqzGDC1GSzlTOHzLXwpA+pwyqMPton6fT6GKbTCKn/8j36uRzzA1zHCJM9u+uq
 AJKkZszaFq8D4jfo=;
Received: from mail-io1-f80.google.com ([209.85.166.80])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sKfvL-0002Qi-B0 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jun 2024 15:11:35 +0000
Received: by mail-io1-f80.google.com with SMTP id
 ca18e2360f4ac-7eb1d659c76so226744739f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 21 Jun 2024 08:11:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718982689; x=1719587489;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Bkl6yEW6ODEztSFg+ZbwWXo7SxIFnRfXOWW0SpRgGzE=;
 b=I7hh38O4AyXg9jjux+J0GKIKTraUcqHxbBV+ANVU5i6zuMlUYw5lzHgWV6RH5+b29t
 CJ+e5y9+y681CgHhabcYNInhn+6NAa4nvXlNuPWUPs7uHLFcDPUIAhkrlvwYrcClMXQ7
 XYUlPu6uRZ3craB28iDKYfbRRnBg1OYNC3Ng0oXSvSPBXMuQLTwQG+eHPBSeexlttUAV
 1RTRJh2azk4ZxgI/xuWZvzbq6xbDinWmC9K3br96P6o85J0GjspRIPVz/Ap22EVfK8gq
 xc/S8+UBkQaURbUjnh+wZocAzxYubcbop/qUxL3StSsYji5fFjh6b7mQ5RJE5/m6cBv2
 e6mA==
X-Gm-Message-State: AOJu0YykhvIVz3AIOxM/8yxfBh0LlXzAq4zkb58wzjVF8Vjnzf4AZzPX
 Ym2lq8ndPLZT80jNwKbFjOKwWqdQR8z+bGU5HTaWmNTQa8W0KORNU9AZ648ekkADI2ClxiSGb22
 RtxCMeeFpbD900yLMIrAYEhY791i23PYUMnhRJ6FA6RZ9kgLmgU3jAyGtpQ==
X-Google-Smtp-Source: AGHT+IEAM94hrAMJKPjcqypl3alStYAXevjCG1n84tiK9EYApJprlhh8Gja32E74D0bIFW+bwp+kLfyPwKmanuJyGQ1nXmDwkPl2
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a68:b0:375:a202:252f with SMTP id
 e9e14a558f8ab-3761d712a87mr5744195ab.4.1718982688927; Fri, 21 Jun 2024
 08:11:28 -0700 (PDT)
Date: Fri, 21 Jun 2024 08:11:28 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008c85d9061b67d833@google.com>
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
 syzbot found the following issue on: HEAD commit: 2ccbdf43d5e7
 Merge tag 'for-linus' of git://git.kernel.org.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1210cd46980000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.80 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.80 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.80 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.80 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1sKfvL-0002Qi-B0
X-Mailman-Approved-At: Fri, 21 Jun 2024 15:15:08 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbDiscardAG
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
Reply-To: syzbot <syzbot+61be3359d2ee3467e7e4@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    2ccbdf43d5e7 Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1210cd46980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c79815c08cc14227
dashboard link: https://syzkaller.appspot.com/bug?extid=61be3359d2ee3467e7e4
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1712af56980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10454882980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/35e32e9073a7/disk-2ccbdf43.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/6c6e34658d16/vmlinux-2ccbdf43.xz
kernel image: https://storage.googleapis.com/syzbot-assets/4417e7ef76ed/bzImage-2ccbdf43.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/a60a47be0fb5/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+61be3359d2ee3467e7e4@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1629:18
shift exponent -1 is negative
CPU: 0 PID: 5086 Comm: syz-executor290 Not tainted 6.10.0-rc3-syzkaller-00044-g2ccbdf43d5e7 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/07/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c8/0x420 lib/ubsan.c:468
 dbDiscardAG+0x5a7/0xa10 fs/jfs/jfs_dmap.c:1629
 jfs_ioc_trim+0x433/0x670 fs/jfs/jfs_discard.c:100
 jfs_ioctl+0x2d0/0x3e0 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:907 [inline]
 __se_sys_ioctl+0xfc/0x170 fs/ioctl.c:893
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f6e9952bad9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff9232dc18 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f6e9952bad9
RDX: 0000000020000080 RSI: 00000000c0185879 RDI: 0000000000000004
RBP: 00007f6e995a45f0 R08: 000055556d87a4c0 R09: 000055556d87a4c0
R10: 0000000000005ea4 R11: 0000000000000246 R12: 00007fff9232dc40
R13: 00007fff9232de68 R14: 431bde82d7b634db R15: 00007f6e9957403b
 </TASK>
---[ end trace ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
