Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FA8CAA8FA
	for <lists+jfs-discussion@lfdr.de>; Sat, 06 Dec 2025 16:13:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U4xoNe8phxOwbZma/oENp2YB5eCL7UHOJfhLZ3UqzSA=; b=kuFjRQWkKPmJPoWamvRP5e+3ft
	SbUWtmgSDKPZN+bQmEkDOkWMTaYrPBS2zeEH6TxwVvnJauWcGFx7mDN21sIFGxLFi46MnvUMuOkGW
	ef8W7YlNVqh2c9REv/7fJ+T06Qm5lDXH794K2nPgsda/PhBEivpftKaVaUJJl4Y2S45Y=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vRtxn-0005RB-Fr;
	Sat, 06 Dec 2025 15:12:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3g-szaQkbAHoqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vRnoM-0001Dh-BT for jfs-discussion@lists.sourceforge.net;
 Sat, 06 Dec 2025 08:38:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H+dNUY2t5nWaWLfhTzsgtN8bPLRApZQS269bQoWZ5Vs=; b=mEzykh8AYDnqBxasKKhxLhC3Cg
 GQ9jjCAePtgfXy9EPs3/KdSCrYlS9BWmFtGXt+nAPuM7JMkScqb3sxGWUx/lta5p2W/E+XGq1mppD
 nrwz3f5eFStcz9h5M3ZTXI+XHbJ4gDfhQ/QG1m1dEgPdmpLgMM7t4BlMA9WwMaeud9Ic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H+dNUY2t5nWaWLfhTzsgtN8bPLRApZQS269bQoWZ5Vs=; b=a
 qVl7JVsNwoh+7eqPfJ7DDHlYwIHoqx1SD6ui3Wp/THOjklqJdOc7y7C7R2NSV3Bgkaim+hppx8yTA
 zrxpvqIJvoVjfso8kxdSHdfmPEl1lYrmnNRIJq05iU0HsmKmshH5WcFl4MjI9WYrSQVecg+DFWjpZ
 7OHF/MCSU3bbdd0g=;
Received: from mail-ot1-f78.google.com ([209.85.210.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vRnoL-00034n-Jy for jfs-discussion@lists.sourceforge.net;
 Sat, 06 Dec 2025 08:38:38 +0000
Received: by mail-ot1-f78.google.com with SMTP id
 46e09a7af769-7c6db96dfcdso5814042a34.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 06 Dec 2025 00:38:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765010307; x=1765615107;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=H+dNUY2t5nWaWLfhTzsgtN8bPLRApZQS269bQoWZ5Vs=;
 b=oKzT/ul1/rRJQlCIiLmA+0Mb2TgyNYm/3u6jggJiTywf2eOIcPsuXxcnGojMcliZQN
 eQocb/+NVrCushEE2031n1SIf0w+pCnCtEW6v+/TIKjAwejT/qKUXPrW+8g2h5/ErJNG
 rB4IIhgMxpR92m55SRnGGGljoRR40XwSh/jWhDQNoAlRyrV7vYn6b4xwIUNiMRjaDlNY
 9ihHsZ/GRVmw+zmO4hf44iFh2zk7QnIDXobfKo7npsUYr8VCiOahyF2UR2GwrS+YupCx
 h7i/WvQSRMN8LXt4WALhaxKHUd2Mx2+6VIDP9PaN/tSiPbvKaJg4XpUQs5UQF9zeRJuh
 BHug==
X-Gm-Message-State: AOJu0Yx8fHObwrRbkl1/bq4Q7ujaOahq0PWrFXU9xrxkNmMNaWgHUft7
 VQ1R29bfn6VoliwYezzP+LXKmGJOgVpqY5E1+11iqfpmZ/KzObCCwc6Ztgf8kJDCITOIRAeHwK2
 2oT4HXeyQS0wIvDwmvkqMNDyr4mzD56eN99WoC95GdaLWZQctn+YcwI4aX7VGUg==
X-Google-Smtp-Source: AGHT+IEJxlmBws32q/q5u26WRCT8lMU+RbvC/XEHhk0BphYtoGiYfZcda+jHYBvIXwYeOzNR34i0woeR2uPVR1Rc27Gn0c+Mdt6m
MIME-Version: 1.0
X-Received: by 2002:a05:6820:200a:b0:659:9a49:9080 with SMTP id
 006d021491bc7-6599a98c676mr736714eaf.75.1765010307011; Sat, 06 Dec 2025
 00:38:27 -0800 (PST)
Date: Sat, 06 Dec 2025 00:38:26 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6933eb82.a70a0220.38f243.001a.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 1d18101a644e
 Merge tag 'kernel-6.19-rc1.cred' of git://git.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=132812b4580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.78 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vRnoL-00034n-Jy
X-Mailman-Approved-At: Sat, 06 Dec 2025 15:12:46 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in dtSplitRoot
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
Reply-To: syzbot <syzbot+a099d674daa27a9272db@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    1d18101a644e Merge tag 'kernel-6.19-rc1.cred' of git://git..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=132812b4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a1db0fea040c2a9f
dashboard link: https://syzkaller.appspot.com/bug?extid=a099d674daa27a9272db
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14f9e512580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10add512580000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/d900f083ada3/non_bootable_disk-1d18101a.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/98f78b52cccd/vmlinux-1d18101a.xz
kernel image: https://storage.googleapis.com/syzbot-assets/7a8898061bfb/bzImage-1d18101a.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/1671de9ba119/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=10f9e512580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a099d674daa27a9272db@syzkaller.appspotmail.com

UFO tlock:0xffffc9000152d5e8
BUG at fs/jfs/jfs_dtree.c:1942 assert(dtlck->index == 0)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_dtree.c:1942!
Oops: invalid opcode: 0000 [#1] SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 5663 Comm: syz.0.17 Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:dtSplitRoot+0x1694/0x16c0 fs/jfs/jfs_dtree.c:1942
Code: e9 49 f3 ff ff e8 2c fc 77 fe 48 c7 c7 e0 88 a4 8b 48 c7 c6 c0 87 a4 8b ba 96 07 00 00 48 c7 c1 60 89 a4 8b e8 3d 01 df fd 90 <0f> 0b e8 05 fc 77 fe 48 c7 c7 e0 88 a4 8b 48 c7 c6 c0 87 a4 8b ba
RSP: 0018:ffffc9000d2972a8 EFLAGS: 00010246
RAX: 0000000000000038 RBX: 0000000000001000 RCX: c529552525a5ed00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc9000152d6db R08: ffff88801fe24253 R09: 1ffff11003fc484a
R10: dffffc0000000000 R11: ffffed1003fc484b R12: dffffc0000000000
R13: 1ffff920002a5adb R14: 0000000000000002 R15: ffffc9000152d6c0
FS:  0000555582889500(0000) GS:ffff88808d722000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fe1757d0e9c CR3: 000000004fc9e000 CR4: 0000000000352ef0
Call Trace:
 <TASK>
 dtSplitUp fs/jfs/jfs_dtree.c:1244 [inline]
 dtInsert+0x2525/0x5f40 fs/jfs/jfs_dtree.c:871
 jfs_create+0x6c8/0xa80 fs/jfs/namei.c:137
 lookup_open fs/namei.c:3866 [inline]
 open_last_lookups fs/namei.c:3965 [inline]
 path_openat+0x188f/0x3b80 fs/namei.c:4201
 do_filp_open+0x1fa/0x410 fs/namei.c:4231
 do_sys_openat2+0x121/0x1c0 fs/open.c:1437
 do_sys_open fs/open.c:1452 [inline]
 __do_sys_creat fs/open.c:1530 [inline]
 __se_sys_creat fs/open.c:1524 [inline]
 __x64_sys_creat+0x8f/0xc0 fs/open.c:1524
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xfa0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f94e718f7c9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe798e7728 EFLAGS: 00000246 ORIG_RAX: 0000000000000055
RAX: ffffffffffffffda RBX: 00007f94e73e5fa0 RCX: 00007f94e718f7c9
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000200000000580
RBP: 00007f94e7213f91 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f94e73e5fa0 R14: 00007f94e73e5fa0 R15: 0000000000000002
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:dtSplitRoot+0x1694/0x16c0 fs/jfs/jfs_dtree.c:1942
Code: e9 49 f3 ff ff e8 2c fc 77 fe 48 c7 c7 e0 88 a4 8b 48 c7 c6 c0 87 a4 8b ba 96 07 00 00 48 c7 c1 60 89 a4 8b e8 3d 01 df fd 90 <0f> 0b e8 05 fc 77 fe 48 c7 c7 e0 88 a4 8b 48 c7 c6 c0 87 a4 8b ba
RSP: 0018:ffffc9000d2972a8 EFLAGS: 00010246
RAX: 0000000000000038 RBX: 0000000000001000 RCX: c529552525a5ed00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: ffffc9000152d6db R08: ffff88801fe24253 R09: 1ffff11003fc484a
R10: dffffc0000000000 R11: ffffed1003fc484b R12: dffffc0000000000
R13: 1ffff920002a5adb R14: 0000000000000002 R15: ffffc9000152d6c0
FS:  0000555582889500(0000) GS:ffff88808d722000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f2ca51ff000 CR3: 000000004fc9e000 CR4: 0000000000352ef0


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
