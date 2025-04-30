Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03498AA569F
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Apr 2025 23:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=trRC9RPC2C7V6wvgs1Gn31isyazFE+EkgS9hrMFA1vI=; b=M7Ea8hV+IwJIT8X6ibDiv60A2F
	wY7wr0qv8Kq/OeFFAZHX8+O4APfH9non73qfBJKgJjtGEklIhYdbguz2OR4SI0dzWtIfLqL+0bEhk
	/y7Q0tpjzSTOdzGR8jp0CjX3nCfSop87/2c4T7rBE46t321uCSPxAu7FfJ6D6e6Fu3RQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uAEpg-0004EM-BZ;
	Wed, 30 Apr 2025 21:19:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3VpESaAkbAAs39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uAEg4-00089R-QD for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 21:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QTnMBaJFXK5ga1w9SxnRQaZ8GQQawtec3V6B5CkklOY=; b=f8ktXKKJBZmrGq/a0aqkVedJqI
 4z5cyL2m0uxSmMnJ+r6Ceh0oopmDLA2y67f8RB19M1uqvo+bLHEpI2ztwdOQnsEs8H8qfrtBGQC3I
 WLM2yqE+knIMiTzPC43OsAzrNrcu1DBlgMrOua/2hR4K274YS72siCSRTsGtFVsfg2y0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QTnMBaJFXK5ga1w9SxnRQaZ8GQQawtec3V6B5CkklOY=; b=X
 dTnWlWCCWsKgLowrrMkMtacZbF+XfRRFGxFQZCpkp/+iouzCdej3Nvo3d9Mq4IM4C26IygP7y1DGD
 CUDOUdXO+IsamYllvz4CV+ZY++l+LL9LGCAv4Dm9WUl8Jz0aloT5Scep2tcEmdk2qvrvFuXtVavfn
 IQhWqzVTHkhQY4Fg=;
Received: from mail-il1-f206.google.com ([209.85.166.206])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uAEfh-00017F-Ey for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 21:09:05 +0000
Received: by mail-il1-f206.google.com with SMTP id
 e9e14a558f8ab-3d443811ed2so3843245ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 30 Apr 2025 14:08:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746047319; x=1746652119;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QTnMBaJFXK5ga1w9SxnRQaZ8GQQawtec3V6B5CkklOY=;
 b=NCXknBJ0WjsMWfqBevb4Imyirk5C9LvU+xMi7wuWvnJC2ow+8clK3Mt3tn0JGcw0so
 kAX5duM+FAA1idElqnK3h1FnT0OHSPYbEZln7cBpn/sktZoZT2XApsDon23uJ6EhjQyQ
 bdgcKCvYK+YHWHq3hrmRMvCud5tUvjUaecHXzoQ5yimNYOELiJ856Q9NMAxQvqGn+mb9
 tgOyB8aEhVZ3K80x+sSuvIpYzeiScARkzJmCYREe5FBqBrXMc87MboE+bIHrhHC30qWB
 eALQbHLphQaToZyQij4h+hU5tMBU7PyGh7/HT8Ug5W4uHFb0sAfJk/h6riKj0uztQozt
 21fQ==
X-Gm-Message-State: AOJu0YzHmwLGAm0HHvNbNlQd6K+0Bv+x5FFuv6NfRCD/g1CWZLGFioIU
 ScosEb0H7BYbvyoOaqvS5mbVQ3lmXhbO28/YvDeYgogHML2OwR4fJjPdiPQjfMDpEuK6S6wPHEc
 ZtPk1sNF0HSzE/2fqe+Z8Odxx4fTFTKgSEtk0IXUVfQpzvKTnF58AsIqybw==
X-Google-Smtp-Source: AGHT+IGJ44fCHhwr8RnQeFoGarLHxtw7eCyEBy13uem7qWN4GRxqc5+oI83n9w+JmrD/iZwLYf7pctFtT/HldQ2NKbvS+VwG/IyK
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:380b:b0:3d9:3adb:e589 with SMTP id
 e9e14a558f8ab-3d9676b65e8mr54987485ab.4.1746047318725; Wed, 30 Apr 2025
 14:08:38 -0700 (PDT)
Date: Wed, 30 Apr 2025 14:08:38 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68129156.050a0220.3a872c.0009.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: f1a3944c860b
 Merge tag 'bpf-fixes' of git://git.kernel.org.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=10d550d4580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.206 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.206 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.206 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.206 listed in wl.mailspike.net]
X-Headers-End: 1uAEfh-00017F-Ey
X-Mailman-Approved-At: Wed, 30 Apr 2025 21:19:06 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbSplit (3)
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
Reply-To: syzbot <syzbot+4c1966e88c28fa96e053@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    f1a3944c860b Merge tag 'bpf-fixes' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=10d550d4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=90837c100b88a636
dashboard link: https://syzkaller.appspot.com/bug?extid=4c1966e88c28fa96e053
compiler:       Debian clang version 20.1.2 (++20250402124445+58df0ef89dd6-1~exp1~20250402004600.97), Debian LLD 20.1.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1250a270580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14d550d4580000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-f1a3944c.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/fbe8c2bb0602/vmlinux-f1a3944c.xz
kernel image: https://storage.googleapis.com/syzbot-assets/b4268e0ec733/bzImage-f1a3944c.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/10b2c382300e/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=14f49d74580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4c1966e88c28fa96e053@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2629:11
shift exponent 110 is too large for 32-bit type 'int'
CPU: 0 UID: 0 PID: 5303 Comm: syz-executor956 Not tainted 6.15.0-rc3-syzkaller-00283-gf1a3944c860b #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 ubsan_epilogue+0xa/0x40 lib/ubsan.c:231
 __ubsan_handle_shift_out_of_bounds+0x386/0x410 lib/ubsan.c:492
 dbSplit+0x1f8/0x200 fs/jfs/jfs_dmap.c:2629
 dbAdjCtl+0x34c/0xa20 fs/jfs/jfs_dmap.c:2521
 dbAllocDmap fs/jfs/jfs_dmap.c:2032 [inline]
 dbAllocNear+0x2ee/0x3d0 fs/jfs/jfs_dmap.c:1243
 dbAlloc+0x933/0xba0 fs/jfs/jfs_dmap.c:828
 ea_write+0x374/0xdd0 fs/jfs/xattr.c:232
 ea_put fs/jfs/xattr.c:619 [inline]
 __jfs_setxattr+0xa01/0x1120 fs/jfs/xattr.c:792
 __jfs_xattr_set+0xda/0x170 fs/jfs/xattr.c:941
 __vfs_setxattr+0x439/0x480 fs/xattr.c:200
 __vfs_setxattr_noperm+0x12d/0x660 fs/xattr.c:234
 vfs_setxattr+0x16b/0x2f0 fs/xattr.c:321
 do_setxattr fs/xattr.c:636 [inline]
 filename_setxattr+0x274/0x600 fs/xattr.c:665
 path_setxattrat+0x364/0x3a0 fs/xattr.c:713
 __do_sys_lsetxattr fs/xattr.c:754 [inline]
 __se_sys_lsetxattr fs/xattr.c:750 [inline]
 __x64_sys_lsetxattr+0xbf/0xe0 fs/xattr.c:750
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xf6/0x210 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fdaa19996b9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fffe3d43d28 EFLAGS: 00000246 ORIG_RAX: 00000000000000bd
RAX: ffffffffffffffda RBX: 0000200000000200 RCX: 00007fdaa19996b9
RDX: 0000000000000000 RSI: 0000200000000200 RDI: 0000200000000040
RBP: 00002000000000c0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000200000000040
R13: 0031656c69662f2e R14: 0000000000000001 R15: 0000000000000001
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
