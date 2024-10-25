Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0DA9B08E4
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Oct 2024 17:50:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t4MZP-0007c3-Ot;
	Fri, 25 Oct 2024 15:49:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3lrsbZwkbALstz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1t4MPC-0004Na-AT for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Oct 2024 15:39:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5Oq8HxeYVIUawIesiC01zouDOwHoc+4BYOjOHVRTs+Y=; b=YiHZCf8D+TUsizSIk5xltCg7Jq
 Ieldtnq1s1M9qTopYHNC2NV1jCi18/5u/IXkap4QF96Q3XLUSdkz8z1pz/SS8PDfBQ0687CKoNqJK
 FP4F1quxJQl7BWfI+GRAn1Wsdr2du9qSM/oqczuRMyLGdzAFSW7dKpr4tHn9RVWdKBGM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5Oq8HxeYVIUawIesiC01zouDOwHoc+4BYOjOHVRTs+Y=; b=M
 gZaVyC/SuFWCLn0pmaCH4T3E8/r1k80oLkwZpNGGqlw7i90zXvKdOURyyMwYYN+mE0CnON6+ausyV
 Ctqzdr+YxVnA3xgZkN+xtH2b7mOtYRPt3tw3oyGnLvAnaEFz24siVk5iW5FKC97gryb7i8QbFd3DU
 pu6VEzC6b/2qW2VQ=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t4MPB-0002Op-Iv for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Oct 2024 15:39:14 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-3a3bb31e3cfso20413625ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 25 Oct 2024 08:39:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729870743; x=1730475543;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5Oq8HxeYVIUawIesiC01zouDOwHoc+4BYOjOHVRTs+Y=;
 b=qyytLnuKAsSHjQaTlsG0eH5jJrvW71b96eHRaj1Yw+juEYke5qhfj0j7Jib4agETx0
 YI9vXjgRwgWNc4JlOQaFZQBnKak8uYisb97p/YaMvx/rgEZu6kOOilWb1iggjaI76Q95
 5JSulzrCaUYxmd6sUwONT378IYBLRXOBClWOYTagZ+b/nUSXhr4TiWtLn5a7zNs0wDD4
 4DC6y8fU/MXbwIklzdZtxPDnWK7EzBl/u13rLZU082X5vo9Lcb5FVSiV53vReTIpPyao
 aMshBRCS4KQQ8gKdJgLL6TurFja7m83bL1qjm33wCzzqmwZBgUrmgQ0Jz6rICDDCala8
 hyvQ==
X-Gm-Message-State: AOJu0YxZfbHJos9PDyp3LuRZwZBOWJ+8cC+xmohCifA+4RCnWrlaoJHm
 k6oe3Cfdh33PZQjoRONI0LGhkpdVyRYvXb5tfs74URiETxrYZ6ixy3L/tX1pV8CjxOSvsvNNRHF
 Pf8uxGxom4hPdYPx2GqsO8adbQaOM1OiTvSVjnMUiLrktCxVXH0tZngA=
X-Google-Smtp-Source: AGHT+IEW+6miMwqaGV67v3YaAfuEG8aVAR1vi48q9c5G2ONiHa9saNcMzSStyHkUWKrLpGhCj87HBKenBVPtFz9hiiSPvfy9INs8
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c21:b0:3a3:da4f:79ec with SMTP id
 e9e14a558f8ab-3a4de78e854mr64363205ab.7.1729870742768; Fri, 25 Oct 2024
 08:39:02 -0700 (PDT)
Date: Fri, 25 Oct 2024 08:39:02 -0700
In-Reply-To: <20241025152459.485-1-zoo868e@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <671bbb96.050a0220.2e773.0008.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, skhan@linuxfoundation.org, syzkaller-bugs@googlegroups.com, 
 zoo868e@gmail.com
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch but the reproducer
 is still triggering an issue: kernel BUG in dbFindBits ERROR: (device loop0):
 dbAllocBits: leaf page corrupt BUG at fs/jfs/jfs_dmap.c:3018 assert(nb <
 DBWORD || (nb == DBWORD && !word)) [ cut here ] kernel BUG at
 fs/jfs/jfs_dmap.c: [...] 
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1t4MPB-0002Op-Iv
X-Mailman-Approved-At: Fri, 25 Oct 2024 15:49:47 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbFindBits (2)
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
Reply-To: syzbot <syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch but the reproducer is still triggering an issue:
kernel BUG in dbFindBits

ERROR: (device loop0): dbAllocBits: leaf page corrupt
BUG at fs/jfs/jfs_dmap.c:3018 assert(nb < DBWORD || (nb == DBWORD && !word))
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_dmap.c:3018!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 5606 Comm: syz.0.15 Not tainted 6.12.0-rc4-syzkaller-00161-gae90f6a6170d-dirty #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:dbFindBits+0x1dc/0x210 fs/jfs/jfs_dmap.c:3018
Code: e9 fa fe ff ff e8 74 40 68 fe 48 c7 c7 00 33 43 8c 48 c7 c6 40 30 43 8c ba ca 0b 00 00 48 c7 c1 c0 3a 43 8c e8 65 30 97 08 90 <0f> 0b e8 4d 40 68 fe 48 c7 c7 00 33 43 8c 48 c7 c6 40 30 43 8c ba
RSP: 0018:ffffc9000b107940 EFLAGS: 00010246
RAX: 000000000000004c RBX: ffff88801f140800 RCX: 37b0eb8928fc2800
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 0000000000000020 R08: ffffffff81749f8c R09: 1ffff92001620ec4
R10: dffffc0000000000 R11: fffff52001620ec5 R12: 0000000000000020
R13: 1ffff92001620f38 R14: 00000000ffffffff R15: 0000000000000005
FS:  00007fd1f83196c0(0000) GS:ffff88801fc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000001b2ea5ffff CR3: 00000000415e4000 CR4: 0000000000352ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 dbAllocDmapLev+0x1e9/0x4a0 fs/jfs/jfs_dmap.c:1985
 dbAllocCtl+0x113/0x920 fs/jfs/jfs_dmap.c:1825
 dbAllocAG+0x28f/0x10b0 fs/jfs/jfs_dmap.c:1364
 dbDiscardAG+0x352/0xa20 fs/jfs/jfs_dmap.c:1613
 jfs_ioc_trim+0x45a/0x6b0 fs/jfs/jfs_discard.c:105
 jfs_ioctl+0x2cd/0x3e0 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:907 [inline]
 __se_sys_ioctl+0xf9/0x170 fs/ioctl.c:893
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fd1f757dff9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fd1f8319038 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007fd1f7735f80 RCX: 00007fd1f757dff9
RDX: 00000000200000c0 RSI: 00000000c0185879 RDI: 0000000000000004
RBP: 00007fd1f75f0296 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 00007fd1f7735f80 R15: 00007ffdd2e520e8
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:dbFindBits+0x1dc/0x210 fs/jfs/jfs_dmap.c:3018
Code: e9 fa fe ff ff e8 74 40 68 fe 48 c7 c7 00 33 43 8c 48 c7 c6 40 30 43 8c ba ca 0b 00 00 48 c7 c1 c0 3a 43 8c e8 65 30 97 08 90 <0f> 0b e8 4d 40 68 fe 48 c7 c7 00 33 43 8c 48 c7 c6 40 30 43 8c ba
RSP: 0018:ffffc9000b107940 EFLAGS: 00010246
RAX: 000000000000004c RBX: ffff88801f140800 RCX: 37b0eb8928fc2800
RDX: 0000000000000000 RSI: 0000000080000000 RDI: 0000000000000000
RBP: 0000000000000020 R08: ffffffff81749f8c R09: 1ffff92001620ec4
R10: dffffc0000000000 R11: fffff52001620ec5 R12: 0000000000000020
R13: 1ffff92001620f38 R14: 00000000ffffffff R15: 0000000000000005
FS:  00007fd1f83196c0(0000) GS:ffff88801fc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000001b2ea5ffff CR3: 00000000415e4000 CR4: 0000000000352ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


Tested on:

commit:         ae90f6a6 Merge tag 'bpf-fixes' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=166868a7980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=fc6f8ce8c5369043
dashboard link: https://syzkaller.appspot.com/bug?extid=9e90a1c5eedb9dc4c6cc
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
patch:          https://syzkaller.appspot.com/x/patch.diff?x=10a7de40580000



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
