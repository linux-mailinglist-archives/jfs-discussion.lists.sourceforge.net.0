Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC988D0C39C
	for <lists+jfs-discussion@lfdr.de>; Fri, 09 Jan 2026 22:00:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vDxzRLbATnK1jQQI1iRIAZFSVslSOSvMVNqVa6MMoG4=; b=d0zaPHqIxmlJTrEFkx46kbXcZF
	BZGpxwSSZyHXQzT1w2oBkmDG62WA1UaFttjAGg66xunSq/4qqrk/LUxxdONt4Hv0TWnPQNDx/8u0z
	O1rgVwOZ4/7PawrO4ATKP0OLnMhdHwRLciOWchtmtE/2JodnTW/Z1DOgBaLluCRN0NhU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1veJa6-0003Wa-Dj;
	Fri, 09 Jan 2026 20:59:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3i2ZhaQkbADAeklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1veJCn-00016m-GW for jfs-discussion@lists.sourceforge.net;
 Fri, 09 Jan 2026 20:35:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iyw9LTrAhPY9FyRwJkXlLaClhc1Xut4/cOI98uq0cGc=; b=NQx4GdBASPNJf1Trm0px5MlKMh
 xefNma8YV5BD7LWZf43wu/Ycx2CpMM1k7Cu6iAASV0b7AaEymbRDgMD75WnkYAzMIaRgdF/14lpo+
 faJO8qMbfGGkKoLocOVnARsJTkM5T73/nb4025dJMH8gh8VMwOzO+6nj8o3YnOf49sus=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iyw9LTrAhPY9FyRwJkXlLaClhc1Xut4/cOI98uq0cGc=; b=G
 d9YTUBjE0B+NzI66VDjmoFoSbJw7W/j9W9dofNXpTrXWSc+dQnHKc2UoSv2b6bBi55Hfdbrf2jk3g
 e7PgKr1X4WmuTGc8qppcygCkODvmwrj2WqhsOyTBw7zoWKFTksNuKrWxPENOwxtB0r9Z/97ZKsna+
 CK8riPRjnTwI2QZ4=;
Received: from mail-ot1-f77.google.com ([209.85.210.77])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1veJCn-0004hg-NA for jfs-discussion@lists.sourceforge.net;
 Fri, 09 Jan 2026 20:35:34 +0000
Received: by mail-ot1-f77.google.com with SMTP id
 46e09a7af769-7cad3d056c1so6823558a34.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 09 Jan 2026 12:35:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767990923; x=1768595723;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=iyw9LTrAhPY9FyRwJkXlLaClhc1Xut4/cOI98uq0cGc=;
 b=rb4/x2ZvSXMY17SaWjhBOIZzWFGRyofRIS0F+KmrEi/MufGr73JrHyP2RkKxpCFCIR
 G4k+6OLxPqehDYgEvghuZtjLSUMi/uLuByB1GXzhauToP/hVkkr7A+5AfolPb4H2YR7f
 vgoGF1U9LFUuVz7CdfPUTSlHtJeGzMRsiQ1WVRe4er4yMYiFlfJF99hdt8XcD9fpmzgD
 AZYueXTT53qc/m2p+iG+mr5AQu22BYgQIkXq8YY7MEIHpyNkYhIkTSer/ckqJVpKvw4K
 TAxGgDLXbX5fiYZLmPT4aFwkYtk/COHEqe4Ox0OxZ4RIPCRDJeuZYyXgI0ICXNHd7WsQ
 YEug==
X-Gm-Message-State: AOJu0Yw0/0PtttNoQHBkd6nwN9hzQWhU+I9ot99Az8ZywfnYuNhe7Qa9
 aE3q7jvC6PyASLVT74A32i7PrDOOdaJ5oWEN96O/82SBcx1PkpjUBI61/biIEWI/Til/hz5FL2Z
 dOGM/A3BUbzt+kcEOn5Mi7p4BtafEdEEEqBpyT//euIOvs+h1BehwJNatEGn+Eg==
X-Google-Smtp-Source: AGHT+IGZeKd868POTvknQnzgELLVRXuRS0osuzyipVG7N1vmtDK1/ZRwEsRzrvfVN/AfpyypuJoJWAEn+4H7TnceAmsIhEYfP0zl
MIME-Version: 1.0
X-Received: by 2002:a05:6820:c28c:b0:65d:17c8:de8f with SMTP id
 006d021491bc7-65f481d6553mr6643833eaf.11.1767990923104; Fri, 09 Jan 2026
 12:35:23 -0800 (PST)
Date: Fri, 09 Jan 2026 12:35:23 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6961668b.050a0220.1c677c.03d5.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 54e82e93ca93
 Merge tag 'core_urgent_for_v6.19_rc4' of git:.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=153d8044580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.77 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1veJCn-0004hg-NA
X-Mailman-Approved-At: Fri, 09 Jan 2026 20:59:38 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in dbBackSplit (2)
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
Reply-To: syzbot <syzbot+5391ade36343d8cd8801@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    54e82e93ca93 Merge tag 'core_urgent_for_v6.19_rc4' of git:..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=153d8044580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=513255d80ab78f2b
dashboard link: https://syzkaller.appspot.com/bug?extid=5391ade36343d8cd8801
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/d900f083ada3/non_bootable_disk-54e82e93.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f3befb5f53a4/vmlinux-54e82e93.xz
kernel image: https://storage.googleapis.com/syzbot-assets/92820ca1dbd8/bzImage-54e82e93.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5391ade36343d8cd8801@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
ERROR: (device loop0): dbAdjCtl: the maximum free buddy is not the old root
ERROR: (device loop0): remounting filesystem as read-only
read_mapping_page failed!
BUG at fs/jfs/jfs_dmap.c:2700 assert(leaf[leafno] == NOFREE)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_dmap.c:2700!
Oops: invalid opcode: 0000 [#1] SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 5338 Comm: syz.0.0 Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:dbBackSplit+0x57c/0x580 fs/jfs/jfs_dmap.c:2700
Code: e9 02 fc ff ff e8 54 a1 77 fe 48 c7 c7 e0 63 a5 8b 48 c7 c6 20 61 a5 8b ba 8c 0a 00 00 48 c7 c1 c0 6a a5 8b e8 65 42 de fd 90 <0f> 0b 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 55 41
RSP: 0018:ffffc9000ae3fbb8 EFLAGS: 00010246
RAX: 000000000000003c RBX: 000000000000000a RCX: 0078dd38eec66b00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: ffff88801fc247d3 R09: 1ffff11003f848fa
R10: dffffc0000000000 R11: ffffed1003f848fb R12: 0000000000000020
R13: ffff888035fb4010 R14: ffff888035fb4096 R15: ffff888035fb4076
FS:  00007f8e5c1f56c0(0000) GS:ffff88808d414000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f271a34b000 CR3: 0000000043e21000 CR4: 0000000000352ef0
Call Trace:
 <TASK>
 dbFreeDmap fs/jfs/jfs_dmap.c:2108 [inline]
 dbFree+0x54e/0x650 fs/jfs/jfs_dmap.c:398
 dbDiscardAG+0x7bf/0x900 fs/jfs/jfs_dmap.c:1645
 jfs_ioc_trim+0x429/0x690 fs/jfs/jfs_discard.c:106
 jfs_ioctl+0x2b5/0x3d0 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:597 [inline]
 __se_sys_ioctl+0xfc/0x170 fs/ioctl.c:583
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xec/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f8e5fd8f7c9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f8e5c1f5038 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007f8e5ffe6090 RCX: 00007f8e5fd8f7c9
RDX: 0000200000000000 RSI: 00000000c0185879 RDI: 000000000000000a
RBP: 00007f8e5fe13f91 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f8e5ffe6128 R14: 00007f8e5ffe6090 R15: 00007ffe9f75d318
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:dbBackSplit+0x57c/0x580 fs/jfs/jfs_dmap.c:2700
Code: e9 02 fc ff ff e8 54 a1 77 fe 48 c7 c7 e0 63 a5 8b 48 c7 c6 20 61 a5 8b ba 8c 0a 00 00 48 c7 c1 c0 6a a5 8b e8 65 42 de fd 90 <0f> 0b 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 55 41
RSP: 0018:ffffc9000ae3fbb8 EFLAGS: 00010246
RAX: 000000000000003c RBX: 000000000000000a RCX: 0078dd38eec66b00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: ffff88801fc247d3 R09: 1ffff11003f848fa
R10: dffffc0000000000 R11: ffffed1003f848fb R12: 0000000000000020
R13: ffff888035fb4010 R14: ffff888035fb4096 R15: ffff888035fb4076
FS:  00007f8e5c1f56c0(0000) GS:ffff88808d414000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f271a362000 CR3: 0000000043e21000 CR4: 0000000000352ef0


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
