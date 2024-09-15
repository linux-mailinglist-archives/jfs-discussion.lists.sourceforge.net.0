Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC4D97A7FE
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Sep 2024 21:53:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sqHmu-0002g5-0f;
	Mon, 16 Sep 2024 19:53:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3oXTnZgkbAGYWcdOEPPIVETTMH.KSSKPIYWIVGSRXIRX.GSQ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1spz8Y-0002Kp-4M for jfs-discussion@lists.sourceforge.net;
 Sun, 15 Sep 2024 23:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rzuOqO4wqEv+PtD0PaWI9Fw6/V+K3rI/dC13ElCW4XU=; b=gCwxRoBpBfxdvdDkqxQ7spCeat
 vs0GlCLbd4RYma39VmT2lfRnducPiJBte/ZCOl7/LKxP/It8ovW4lT1Q73NSJqikeiM2ZfDaj2pBP
 Wg0sISUVqADfDji3uQHkOQJFCynNHmP9mv4iCLCLj7QMORcTPF1dUoe/4UlkIou7ctZY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rzuOqO4wqEv+PtD0PaWI9Fw6/V+K3rI/dC13ElCW4XU=; b=W
 qzxBMQl4+MaXY6BDoAwue91nQ2tApyCHSQX3xHT/KC6dxway3q9UImWgyqDAM1soPCdMTsWA/P/j8
 QzLghS/5tRMldPj7RojcmVXKDFTqqFDJetG8BHx/VZTiWq9DBpu97kec57NNwkKn1GUrwOr2ao54e
 mYuKe5kaFbU2eE9I=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1spz8W-0004p3-PU for jfs-discussion@lists.sourceforge.net;
 Sun, 15 Sep 2024 23:58:37 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3a09d8ee141so8772335ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 15 Sep 2024 16:58:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726444706; x=1727049506;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rzuOqO4wqEv+PtD0PaWI9Fw6/V+K3rI/dC13ElCW4XU=;
 b=W8FKVl+4lkNE5V8DAAHWGVAv+KNce31OJIneeeB+GsJWrutlxZv32jHQGTLdFKXcMM
 26KFu/CPoq2dP3/q3d5quYTVxYwo/oUm8Lsdt8pfAlFp9hGP0GC7WMiAQTDDO/yrlRBv
 RZNJ1SoU9KIzku7Wi6q5vUowiHCcFLZZAAIkdlCjjfVC+gKGG2Fy7HCR/KnzZ87qZ5NA
 NVHBnYoyciw+R0AhkrujYCHSh7dFVJpAsS6XbIp/PojjqAVTJqsTmgw9y2Lsma7p6e3z
 W+7j0/n06DKgKreiamC60Ymhq+rG08+U5Oh4PFpOpJDBygHnDSpCDPTbk6lmL6L2DD+e
 Uavg==
X-Gm-Message-State: AOJu0Yx4JcjYv5WonWXaj2es7rcSWzCs3mhveRfuy8nD+ykB/I7gPrfe
 3dgDtvQdlIX+pEtON4Agcyze//y1tPAIs2TmARiZFlzqCoq3f73gVlQAAJ9rFOW4zDVO+G6z2TB
 N9iVK/lfVHZdbSsaya+E6xFisnHKpbclkfXeyoiR3uV6+zfSnnU+kQZU=
X-Google-Smtp-Source: AGHT+IE50g+BqsF8wZ9q/VbWre86oQ6vYUZTw9ILbOLxq3XUOBStl7kwSwXSahjF1sH7Vr0lIniSHSbuHSEATN9U9U39C3LG9lkg
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1cad:b0:3a0:9fc6:5437 with SMTP id
 e9e14a558f8ab-3a09fc656cfmr18347855ab.18.1726444705949; Sun, 15 Sep 2024
 16:58:25 -0700 (PDT)
Date: Sun, 15 Sep 2024 16:58:25 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006c3f660622313b3c@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 7c6a3a65ace7
 minmax: reduce min/max macro expansion in ato.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=15105807980000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (1.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 1.9 SUBJ_LACKS_WORDS       Subject is not short yet lacks words
X-Headers-End: 1spz8W-0004p3-PU
X-Mailman-Approved-At: Mon, 16 Sep 2024 19:53:30 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 jfs_statfs (2)
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
Reply-To: syzbot <syzbot+bb0aa125eb8d70475ebd@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7c6a3a65ace7 minmax: reduce min/max macro expansion in ato..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=15105807980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1c9e296880039df9
dashboard link: https://syzkaller.appspot.com/bug?extid=bb0aa125eb8d70475ebd
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/06208dec0174/disk-7c6a3a65.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/bd09f189e9df/vmlinux-7c6a3a65.xz
kernel image: https://storage.googleapis.com/syzbot-assets/25e56ca1462d/bzImage-7c6a3a65.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+bb0aa125eb8d70475ebd@syzkaller.appspotmail.com

------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/super.c:140:14
shift exponent 770 is too large for 64-bit type 's64' (aka 'long long')
CPU: 0 UID: 0 PID: 8224 Comm: syz.2.276 Not tainted 6.11.0-rc7-syzkaller-00021-g7c6a3a65ace7 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/06/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:93 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c8/0x420 lib/ubsan.c:468
 jfs_statfs+0x503/0x510 fs/jfs/super.c:140
 statfs_by_dentry fs/statfs.c:66 [inline]
 vfs_statfs+0x13b/0x2c0 fs/statfs.c:90
 ovl_check_namelen fs/overlayfs/super.c:375 [inline]
 ovl_lower_dir fs/overlayfs/super.c:391 [inline]
 ovl_get_lowerstack fs/overlayfs/super.c:1132 [inline]
 ovl_fill_super+0x8ed/0x3560 fs/overlayfs/super.c:1392
 vfs_get_super fs/super.c:1280 [inline]
 get_tree_nodev+0xb7/0x140 fs/super.c:1299
 vfs_get_tree+0x90/0x2b0 fs/super.c:1800
 do_new_mount+0x2be/0xb40 fs/namespace.c:3472
 do_mount fs/namespace.c:3812 [inline]
 __do_sys_mount fs/namespace.c:4020 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:3997
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f54f4d7def9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f54f5b25038 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007f54f4f35f80 RCX: 00007f54f4d7def9
RDX: 0000000020000180 RSI: 0000000020000140 RDI: 0000000000000000
RBP: 00007f54f4df0b76 R08: 00000000200001c0 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007f54f4f35f80 R15: 00007fff0587cfb8
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
