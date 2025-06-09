Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B4EAD2953
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Jun 2025 00:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=8+yZNTIlYn4bVHcgIT86XjtkbqNpnOaa7Er8Ctoswtw=; b=B2QIOKjDwNPhhW57zW6iD2YPi3
	lU2FC8USYyKPWRa0mw2HEhWm68tAIHA/yn6n0effdEorx0gbZgFMPEKJi45rdiAxuqZB0ecC3XwLf
	sANK1Yy8G3FznAVLIPCmcF5hGc/XEhuxNJyf+PkJ7pBXDXnTNeT0l1WBie7Eq6dVIXjc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uOkoh-0008TC-Ij;
	Mon, 09 Jun 2025 22:18:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ilxHaAkbAKkbhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uOkkK-0008MK-Dc for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Jun 2025 22:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q/Tb61AbMmp8Nwd6jGDkvTOW8acnUsz+vTcdcrETAb4=; b=GCCU9VVFSdEMYdS8u8KjkNmA8y
 9BZiw8uxHJkn9XdeJ+UfExFLiPNyLHMenFed3gzrzDklMSDjwWxGqzDp1uW1NJTtShIa5khd2CAYv
 CySh3G4NpEdkhNoOxI3TCy5UP6QAAwb73VkMkPPw9rp+x9iMpIelVe1H3P9MCSaKNW4o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=q/Tb61AbMmp8Nwd6jGDkvTOW8acnUsz+vTcdcrETAb4=; b=W
 Rv6GP9M/qvHbxukx6XNoWyMfZ2UMGDY74YBvwsBmH9wyMI3LcihPeNHY0oaWNWeJ0k8AFxrVzBECu
 7G0LfcNOmzlcyZaGWGPTv+6zB+Ib+hOL2DDAMfiXqeBa/1T9IdviuviMdXgRHpNphwi6EczYBRl2s
 l4WKl5MsE9Z3Wfyk=;
Received: from mail-il1-f207.google.com ([209.85.166.207])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uOkkJ-0000Nb-VB for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Jun 2025 22:13:36 +0000
Received: by mail-il1-f207.google.com with SMTP id
 e9e14a558f8ab-3ddc9ee4794so62912165ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 09 Jun 2025 15:13:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749507210; x=1750112010;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=q/Tb61AbMmp8Nwd6jGDkvTOW8acnUsz+vTcdcrETAb4=;
 b=t6Hd9cGL/FKITI+M5rm/pv54bwK+99+nvdoAIO7LyfOK8Yn2WJFWp2i5k0RfvNA6DQ
 v977rnuthp4wdLky+g/X7MvjFQigCESQYJUM+TuKMzUSwnsZluqzemngnEhR5ZfrTUPI
 hl+ghNnm+PbWoKhcwq4b27Dft6WlI0DtHaAhQdzfV8E2WLfln/0/tXP6dynvAjfWE0KU
 a2EmbI/GbQOXuI9wwfnZXfQpIrRGmW9o7vF9yIwoTx02UxL6njerwtwB/XcL3cY+VIKK
 PKf/cEea1pUAsuPXF6Nk5FEfAsQhhYqC2pbZVL4Uj7OYovTgdEkxD46aXSesXLj1rtD2
 4ZVg==
X-Gm-Message-State: AOJu0Yzj/epAvrIR5koP96LVSMq01FlJb987AlXW0frE1j+KwJWrihkY
 ULTo4noJnV2V9XQQ2NMalKZKVyzl32t70IV7i5MiSM6Wwn9lpf8JHV7P8wnaziu4uZBvUZR1TUd
 N0iOj/sbFyMsHylTinRdtHXafm3QRXVgSWGVTUlQ0Sv1w/sv5UtVbUJ0SwtF2Mg==
X-Google-Smtp-Source: AGHT+IHGbYG+mMUIc+tIpOdTlUQvzscipVLqGzBw/vwownm3QvniRhEefneb43kYEX7L2frjYNAzmuq14YjboQBkM8BosPsQdc8F
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:318e:b0:3dd:bb64:d850 with SMTP id
 e9e14a558f8ab-3ddeddc6565mr2822385ab.11.1749507210210; Mon, 09 Jun 2025
 15:13:30 -0700 (PDT)
Date: Mon, 09 Jun 2025 15:13:30 -0700
In-Reply-To: <68122507.050a0220.3a872c.0001.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68475c8a.050a0220.33aa0e.02e4.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 475c850a7fdd Add linux-next specific files for 20250606 git tree:
 linux-next console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=11fe2a82580000
 kernel config: https://syzkaller.apps [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.207 listed in wl.mailspike.net]
X-Headers-End: 1uOkkJ-0000Nb-VB
X-Mailman-Approved-At: Mon, 09 Jun 2025 22:18:06 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 jfs_statfs (3)
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
Reply-To: syzbot <syzbot+13ba7f3e9a17f77250fe@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    475c850a7fdd Add linux-next specific files for 20250606
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=11fe2a82580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=28859360c84ac63d
dashboard link: https://syzkaller.appspot.com/bug?extid=13ba7f3e9a17f77250fe
compiler:       Debian clang version 20.1.6 (++20250514063057+1e4d39e07757-1~exp1~20250514183223.118), Debian LLD 20.1.6
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11c79a0c580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=162aa9d4580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/2f1cf8485b7a/disk-475c850a.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/976adb9f739e/vmlinux-475c850a.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0ac20b1308b7/bzImage-475c850a.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/fad6178a795b/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=122aa9d4580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+13ba7f3e9a17f77250fe@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/super.c:140:14
shift exponent 115 is too large for 64-bit type 's64' (aka 'long long')
CPU: 1 UID: 0 PID: 5841 Comm: syz-executor190 Not tainted 6.15.0-next-20250606-syzkaller #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/07/2025
Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 ubsan_epilogue+0xa/0x40 lib/ubsan.c:233
 __ubsan_handle_shift_out_of_bounds+0x386/0x410 lib/ubsan.c:494
 jfs_statfs+0x4d1/0x550 fs/jfs/super.c:140
 statfs_by_dentry fs/statfs.c:66 [inline]
 vfs_statfs+0x144/0x2d0 fs/statfs.c:90
 ovl_check_namelen fs/overlayfs/super.c:388 [inline]
 ovl_lower_dir fs/overlayfs/super.c:404 [inline]
 ovl_get_lowerstack fs/overlayfs/super.c:1150 [inline]
 ovl_fill_super+0x9d9/0x35d0 fs/overlayfs/super.c:1416
 vfs_get_super fs/super.c:1323 [inline]
 get_tree_nodev+0xbb/0x150 fs/super.c:1342
 vfs_get_tree+0x8f/0x2b0 fs/super.c:1802
 do_new_mount+0x24a/0xa40 fs/namespace.c:3874
 do_mount fs/namespace.c:4211 [inline]
 __do_sys_mount fs/namespace.c:4422 [inline]
 __se_sys_mount+0x317/0x410 fs/namespace.c:4399
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0x3b0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f8347037a39
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffdd0158b28 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000200000000000 RCX: 00007f8347037a39
RDX: 0000200000000000 RSI: 0000200000000140 RDI: 0000000000000000
RBP: 00007f834708005e R08: 00002000000003c0 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0030656c69662f2e
R13: 65756e69746e6f63 R14: 633d73726f727265 R15: 0000000000000001
 </TASK>
---[ end trace ]---


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
