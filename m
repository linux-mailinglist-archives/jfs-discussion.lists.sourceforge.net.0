Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BF695A6D3
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 Aug 2024 23:40:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sgt3g-0006Da-QB;
	Wed, 21 Aug 2024 21:40:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3m13GZgkbAKweklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sgszQ-00067x-4Q for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Aug 2024 21:35:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fQw6YJn6NdIRCVuGMUTZXwYmyfAD1/60FpmlyYMrbOw=; b=aML7W09mXkEERz5kEgGUqJD7tz
 Nn3W996GHeO0mlWwAuP4mdtoPiiG2WqfTjffBNeoRmSflaYre+zeivtw46UJk5Fe6bSfxJ/LpIcqa
 queBWUg7W40Z1hlzxG48wYPgd8wCXpM26eW4Qsoo58yN5mmS4ZPShrbpDv4pYDATXuHY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fQw6YJn6NdIRCVuGMUTZXwYmyfAD1/60FpmlyYMrbOw=; b=g
 zXuVc8KuSgXofnxJLW3ZnnZkdhAloGsnAxO9AdXxlbDOFXrHpYhjfoyJ6TgDkPWCmr+bm2JC+DnJ9
 gPai1gUflyvTu+UgC3tXmoDACtLyPIwzygQQ1Jwech0q4tePe1/1b6QHarGrFQ9cO4kJAGu/ldAec
 AAnY2TiMl+J+BaI8=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sgszP-0005oA-Az for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Aug 2024 21:35:36 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-81f901cd3b5so14010139f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 21 Aug 2024 14:35:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724276124; x=1724880924;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fQw6YJn6NdIRCVuGMUTZXwYmyfAD1/60FpmlyYMrbOw=;
 b=fD5mVcQ8X/wRCqRaUTT6s+dkP1/YSn0HRRzdnA/hZl+cJpzZZYdxmuEAblwn0TjwSZ
 1Z6SggNB8nAgF3N9TkXzzW+pWIWW+BOPG7KLBo+WFpAFlBfb971pmx7x7vfcjgthw3de
 1Bfpv1AGh1PbsnO+R5GqiFptbWXWgpJZd1T4ImbrlqQdgLZGWEV25OZNQ8il1rRJHVY8
 kKn3FINHmcvfSQWbpC4TpiCA9LJ4QsNJnqdhLtKkT1NqfOIQ+5xZmKiiMfy0vgkIYiLg
 ER00apKzatvSmbwswxakjox1pS2Ck3ybDwQievxvyTzprd36VB8Uu0TATlcRA0LAt+3T
 ff+A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVmfo6c+m4D37hnCygJRWazIbk/snq53cEOOgvN3TCgUh+JJAPIZCcNzTHDwII4CtSk8jJNQ8p2G6yQyT56TQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yyqu5yOf+pENMvK1WnldKcOY0lb5a9MPUE5NFOJMnESIzJs1Hm4
 Kje4PYok8vFHRAWBPDIj/oitPtas5Q4J5HTXP2hqMV9FHDDRsK7dHuBiwdat4n9znmQI41E/My3
 308ShTswMu+vZzEH1VMqxKBbi/MH5y+WFlXVkCSPZzyL6w2D2hL6F5Ms=
X-Google-Smtp-Source: AGHT+IH4t0PYUcLRDuAh1AaCDw0+S8L2w6bBSW31yLr/83LYvX0PMoR8OXF15wnjCXP3BLwm33/sxEvLcLUYgRBK6QKN/B9VlIhh
MIME-Version: 1.0
X-Received: by 2002:a05:6638:2590:b0:4c0:a8a5:81dc with SMTP id
 8926c6da1cb9f-4ce6308b194mr120542173.6.1724276123880; Wed, 21 Aug 2024
 14:35:23 -0700 (PDT)
Date: Wed, 21 Aug 2024 14:35:23 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000dbda9806203851ba@google.com>
To: brauner@kernel.org, jack@suse.cz, jfs-discussion@lists.sourceforge.net, 
 kent.overstreet@linux.dev, linux-bcachefs@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: b311c1b497e5
 Merge tag '6.11-rc4-server-fixes' of git://gi.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=17dfa42b980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.72 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.72 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sgszP-0005oA-Az
X-Mailman-Approved-At: Wed, 21 Aug 2024 21:40:00 +0000
Subject: [Jfs-discussion] [syzbot] [bcachefs?] [jfs?] kernel BUG in
 vfs_get_tree
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
Reply-To: syzbot <syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    b311c1b497e5 Merge tag '6.11-rc4-server-fixes' of git://gi..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=17dfa42b980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=df2f0ed7e30a639d
dashboard link: https://syzkaller.appspot.com/bug?extid=c0360e8367d6d8d04a66
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16210a7b980000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-b311c1b4.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/1c99fa48192f/vmlinux-b311c1b4.xz
kernel image: https://storage.googleapis.com/syzbot-assets/16d5710a012a/bzImage-b311c1b4.xz
mounted in repro #1: https://storage.googleapis.com/syzbot-assets/bcc0f964f07d/mount_0.gz
mounted in repro #2: https://storage.googleapis.com/syzbot-assets/8d5780313c65/mount_1.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com

bcachefs: bch2_fs_get_tree() error: EPERM
Filesystem bcachefs get_tree() didn't set fc->root
------------[ cut here ]------------
kernel BUG at fs/super.c:1810!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 5368 Comm: syz.0.15 Not tainted 6.11.0-rc4-syzkaller-00019-gb311c1b497e5 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:vfs_get_tree+0x29c/0x2a0 fs/super.c:1810
Code: ff 49 8b 1f 48 89 d8 48 c1 e8 03 42 80 3c 28 00 74 08 48 89 df e8 74 95 ee ff 48 8b 33 48 c7 c7 60 93 18 8c e8 b5 82 a7 09 90 <0f> 0b 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 f3 0f
RSP: 0018:ffffc90002c0fd08 EFLAGS: 00010246
RAX: 0000000000000032 RBX: ffffffff8ef44540 RCX: 3e1a74824a3f5500
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 1ffff11007074696 R08: ffffffff8174034c R09: 1ffff1100410519a
R10: dffffc0000000000 R11: ffffed100410519b R12: 0000000000000001
R13: dffffc0000000000 R14: ffff8880383a34b0 R15: ffff8880383a3498
FS:  00007fea882896c0(0000) GS:ffff888020800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f7345eec538 CR3: 0000000037c0e000 CR4: 0000000000350ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 do_new_mount+0x2be/0xb40 fs/namespace.c:3472
 do_mount fs/namespace.c:3812 [inline]
 __do_sys_mount fs/namespace.c:4020 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:3997
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fea8757b61a
Code: d8 64 89 02 48 c7 c0 ff ff ff ff eb a6 e8 de 1a 00 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fea88288e68 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007fea88288ef0 RCX: 00007fea8757b61a
RDX: 000000002000fec0 RSI: 000000002000ff00 RDI: 00007fea88288eb0
RBP: 000000002000fec0 R08: 00007fea88288ef0 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 000000002000ff00
R13: 00007fea88288eb0 R14: 000000000000fe88 R15: 0000000020000040
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:vfs_get_tree+0x29c/0x2a0 fs/super.c:1810
Code: ff 49 8b 1f 48 89 d8 48 c1 e8 03 42 80 3c 28 00 74 08 48 89 df e8 74 95 ee ff 48 8b 33 48 c7 c7 60 93 18 8c e8 b5 82 a7 09 90 <0f> 0b 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 f3 0f
RSP: 0018:ffffc90002c0fd08 EFLAGS: 00010246
RAX: 0000000000000032 RBX: ffffffff8ef44540 RCX: 3e1a74824a3f5500
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 1ffff11007074696 R08: ffffffff8174034c R09: 1ffff1100410519a
R10: dffffc0000000000 R11: ffffed100410519b R12: 0000000000000001
R13: dffffc0000000000 R14: ffff8880383a34b0 R15: ffff8880383a3498
FS:  00007fea882896c0(0000) GS:ffff888020800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007efe67e50469 CR3: 0000000037c0e000 CR4: 0000000000350ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


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
