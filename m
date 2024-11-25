Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF01E9D9A9F
	for <lists+jfs-discussion@lfdr.de>; Tue, 26 Nov 2024 16:49:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tFxoZ-0003L3-A1;
	Tue, 26 Nov 2024 15:49:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3HV9EZwkbAC4cijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tFXFc-0003E4-Fd for jfs-discussion@lists.sourceforge.net;
 Mon, 25 Nov 2024 11:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oOYx4bcTfS5I55qpkWkBm/KlHHH9B5MVZmhVuSvCBKs=; b=faEHF+sN5iBaiLiTPAy0qNJWvn
 FwPn8A/gvw6LzR+WNr0b6d222HMAXA7v6216NLn1rsA9PzMR5KpxMypxnBGjE1GwS916U2VWJZP52
 FCnKbN7ksS0/1r8rBV6S4e5egwGyrnP/1j2gnUW0wyVRimrpw+hnPmFWrFAUl3eNsfoI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oOYx4bcTfS5I55qpkWkBm/KlHHH9B5MVZmhVuSvCBKs=; b=k
 a/l56IWRBcS/M5a8rH+ZOqNX39cau1krsK1Mk93U/x1uNQZDEmVWsULH/pqHN4nPUEVnDlTFSVn8Q
 GoaMh4wHopB3CDswCFZYY3LPyqE1MgnjC3GljcQIYeHCWYpyDVMQy6OhgZqlRriLwQJjBUXdOAcqU
 Immbogbw/gP5Uozo=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tFXFb-0005zZ-2p for jfs-discussion@lists.sourceforge.net;
 Mon, 25 Nov 2024 11:27:31 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-8418f68672eso96237839f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 25 Nov 2024 03:27:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732534045; x=1733138845;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=oOYx4bcTfS5I55qpkWkBm/KlHHH9B5MVZmhVuSvCBKs=;
 b=OppFOX4mHho6uGYwBAeOan/1rGApqhGikucY0xuaKscBIgO2GH7KYxrmVMi2wmeG11
 S7BnEyLcT025BwJ+E8FM5egjYVB6gXPMyB8R2vLT6dX27bzkGf86Ei8J8KoWzxbaX/jg
 VrBWFkrkGEoRGzklCMPOwnVj9AZdy0/O28tli/WKOaiO/mHeDYfrNNU8M++0+f+b9rOu
 LljYgKHsu8wVrBNY1gaASLKqaBXPJdFFyCI/xj0DVxevVyHMKj/7fNKU3SzuJ8mzgDzp
 Mf8aZQhsoM9ppThOHcKh7s3wwAMq8LmiXBqFRCFC0M0UNN5kNgj89QoKtSq/YDH82KWA
 a+tw==
X-Gm-Message-State: AOJu0YxsgkCApDfQoPzPePmIOx4gQ0wtflfPijPpgW6PKW+C23kW+2OF
 eVB2Px5Qk3DsyhVDDusRfFy+XJqbeqHcuxIRY/RVfRN9TC6ot9OvXUoOJFEWYoZ56YvXsj7zz4p
 I9LKKId6E2FMvl/IvSTClJR0tG0SKFY3YDEaWaSmDTiGXw2Nr//uNJs4=
X-Google-Smtp-Source: AGHT+IFezIN6xbqL+rw4RsiljB/FgKU4cxeXJhkmX9K8fvHe18MVoInO+sZ3Y0IVcnmN4/JDb5dttBEAjTj5DMJIKfIfrE3wdl8n
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:2141:b0:3a7:2194:fd3d with SMTP id
 e9e14a558f8ab-3a79aead6bemr97462325ab.14.1732534045237; Mon, 25 Nov 2024
 03:27:25 -0800 (PST)
Date: Mon, 25 Nov 2024 03:27:25 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67445f1d.050a0220.1cc393.0077.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 8f7c8b88bda4
 Merge tag 'sched_ext-for-6.13' of git://git.k.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=118a0ec0580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.69 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.69 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.9 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1tFXFb-0005zZ-2p
X-Mailman-Approved-At: Tue, 26 Nov 2024 15:49:22 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in dbAdjCtl
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
Reply-To: syzbot <syzbot+c745704df615dc63086f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    8f7c8b88bda4 Merge tag 'sched_ext-for-6.13' of git://git.k..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=118a0ec0580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=48190c1cdf985419
dashboard link: https://syzkaller.appspot.com/bug?extid=c745704df615dc63086f
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-8f7c8b88.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c5e6fdef85e9/vmlinux-8f7c8b88.xz
kernel image: https://storage.googleapis.com/syzbot-assets/67596a080582/bzImage-8f7c8b88.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c745704df615dc63086f@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
BUG at fs/jfs/jfs_dmap.c:2591 assert(level == bmp->db_maxlevel)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_dmap.c:2591!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 5328 Comm: syz.0.0 Not tainted 6.12.0-syzkaller-01892-g8f7c8b88bda4 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:dbAdjCtl+0x9be/0x9c0 fs/jfs/jfs_dmap.c:2591
Code: e9 d7 fc ff ff e8 a2 8a 67 fe 48 c7 c7 80 48 43 8c 48 c7 c6 c0 45 43 8c ba 1f 0a 00 00 48 c7 c1 a0 4e 43 8c e8 b3 84 99 08 90 <0f> 0b 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 55 41 57 41
RSP: 0018:ffffc9000d16f018 EFLAGS: 00010246
RAX: 000000000000003f RBX: 000000000000000a RCX: 1cf809a453080c00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 00000000ff000000 R08: ffffffff8174ce2c R09: 1ffff92001a2dda0
R10: dffffc0000000000 R11: fffff52001a2dda1 R12: 0000000000000000
R13: ffff88803ae98166 R14: 0000000000000004 R15: 1ffff110084e2089
FS:  00007f48802f96c0(0000) GS:ffff88801fc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f2ee4f95ed8 CR3: 0000000043526000 CR4: 0000000000352ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 dbAllocDmap fs/jfs/jfs_dmap.c:2044 [inline]
 dbAllocDmapLev+0x29c/0x4a0 fs/jfs/jfs_dmap.c:1988
 dbAllocCtl+0x113/0x920 fs/jfs/jfs_dmap.c:1825
 dbAllocAG+0x28f/0x10b0 fs/jfs/jfs_dmap.c:1364
 dbAlloc+0x658/0xca0 fs/jfs/jfs_dmap.c:888
 diNewIAG fs/jfs/jfs_imap.c:2510 [inline]
 diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
 diAllocAG+0xa9d/0x1e50 fs/jfs/jfs_imap.c:1669
 diAlloc+0x1d2/0x1630 fs/jfs/jfs_imap.c:1590
 ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
 jfs_create+0x1be/0xbb0 fs/jfs/namei.c:92
 lookup_open fs/namei.c:3649 [inline]
 open_last_lookups fs/namei.c:3748 [inline]
 path_openat+0x1c03/0x3590 fs/namei.c:3984
 do_filp_open+0x27f/0x4e0 fs/namei.c:4014
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1398
 do_sys_open fs/open.c:1413 [inline]
 __do_sys_creat fs/open.c:1491 [inline]
 __se_sys_creat fs/open.c:1485 [inline]
 __x64_sys_creat+0x123/0x170 fs/open.c:1485
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f487f57e819
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f48802f9038 EFLAGS: 00000246 ORIG_RAX: 0000000000000055
RAX: ffffffffffffffda RBX: 00007f487f735fa0 RCX: 00007f487f57e819
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000020000e00
RBP: 00007f487f5f175e R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007f487f735fa0 R15: 00007ffc9590be38
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:dbAdjCtl+0x9be/0x9c0 fs/jfs/jfs_dmap.c:2591
Code: e9 d7 fc ff ff e8 a2 8a 67 fe 48 c7 c7 80 48 43 8c 48 c7 c6 c0 45 43 8c ba 1f 0a 00 00 48 c7 c1 a0 4e 43 8c e8 b3 84 99 08 90 <0f> 0b 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 55 41 57 41
RSP: 0018:ffffc9000d16f018 EFLAGS: 00010246
RAX: 000000000000003f RBX: 000000000000000a RCX: 1cf809a453080c00
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 00000000ff000000 R08: ffffffff8174ce2c R09: 1ffff92001a2dda0
R10: dffffc0000000000 R11: fffff52001a2dda1 R12: 0000000000000000
R13: ffff88803ae98166 R14: 0000000000000004 R15: 1ffff110084e2089
FS:  00007f48802f96c0(0000) GS:ffff88801fc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f48802b6fe0 CR3: 0000000043526000 CR4: 0000000000352ef0
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
