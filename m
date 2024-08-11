Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8541F94EF06
	for <lists+jfs-discussion@lfdr.de>; Mon, 12 Aug 2024 15:59:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sdVZO-0001aU-2h;
	Mon, 12 Aug 2024 13:58:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <39B64ZgkbAE89FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1scy8H-0003cP-59 for jfs-discussion@lists.sourceforge.net;
 Sun, 11 Aug 2024 02:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HsKAC2w8OIj8E2V22o2IjRuSBUakLf2Sx3QWeN5iaxE=; b=diIPYyQvtx3MGxtGgY//9maPqV
 VWYUBfwks52bRz+bCium5WITca2zfX9x1bGLw7MM0PZJ5NizjpyiFX7rfFl2h5uXzyO7qPiPfhirQ
 I3VEU1f60ziwuiP6Ql0mRU2vTJVtvXfwef2kBIt9xWN4LMwTmhy7y3NuSHn7FxIqEgL8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HsKAC2w8OIj8E2V22o2IjRuSBUakLf2Sx3QWeN5iaxE=; b=V
 xn8k53/nQiRCnW6vSupTyfgq98zSRFKe5TLjHViN/ae4tPdUj3uM88GisDl7x4fFX1i2nimSQKs20
 QQGEMEN/Xgu0Iq5OsG//m7h5QXDsP9G/VJtsmE5PJqLFZFYfgBfPsXOIN8OzvRa8Ba0CfHni1ejbj
 PMpzBnFWtUMdg6c4=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1scy8F-0003lN-Q1 for jfs-discussion@lists.sourceforge.net;
 Sun, 11 Aug 2024 02:16:32 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-39b3cd180ffso41914925ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 10 Aug 2024 19:16:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723342581; x=1723947381;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HsKAC2w8OIj8E2V22o2IjRuSBUakLf2Sx3QWeN5iaxE=;
 b=tMCGvsPeVR9deljFUfpmwXHdai+De4aickpYTsQDf3s7WOF3QQV5ZGIoQKo6frgDNc
 CPPXd7doMsa4JmEo8bySaPKwkiz54h1J4NdRwCvKCNgzekOOBWe3qXSfW3Xky+SV7UOo
 c13FdkXU85Zair46Iy3hEbcWf1UwN8Y6xBRLqSs5GCazlwiu2C07Vu1FCFp0iOB6ndqg
 2HSFKI6T93/NXW724DvhketE74ZvV3BmBdGkXmZNBPEinZXHnBaaveAvGZwVXmdXkv4Q
 60XMZX9I/4BxZKfsXwLW68hiKc7Yd+GvP/4IRZZV44gEtI7VOvJarozuvokIYqK2MeqE
 BsCw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUiQh0+Xd0h/xylC26R2ymFS1bR3vPd8HMw0ekXFio3e/De0E8eEyQn5MScPGuqpSEAr9A03D6HK41h9IkgV11PGJSAnkG+n69naIOJeFTTSjk/HD0=
X-Gm-Message-State: AOJu0YzhFyZwBw6HfE6v3FYtOYAY3KQQ8O1D4CMGoHMts3SL/hLn29VS
 W1cxUQYfJ/lmNCh+uOS0cn2uUhs9y7iLHmkgPmXjhQpHEPptNpmWrr3wKEHL3YnsfsQcc6lbFNs
 FBLhXf7A7SW5hKmgQbS2Z2kHdpiGvhcfPkIbEe9RgBKTKTweBStqoFPU=
X-Google-Smtp-Source: AGHT+IGpR5OwATLInzqEwF5W5qNe9mvZBRGoTkNxRNNJqDDfxDORIbmTqQL2eKomEF4w7lml2Wa3LrJmR+KLE35arAnW0IfHzjUD
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d0b:b0:398:d1fe:9868 with SMTP id
 e9e14a558f8ab-39b7a75252dmr4874335ab.4.1723342580929; Sat, 10 Aug 2024
 19:16:20 -0700 (PDT)
Date: Sat, 10 Aug 2024 19:16:20 -0700
In-Reply-To: <0000000000006fc563061cbc7f9c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005cea8e061f5ef6da@google.com>
To: andrew.kanner@gmail.com, ghandatmanas@gmail.com, 
 jfs-discussion@lists.sourceforge.net, juntong.deng@outlook.com, 
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org, 
 osmtendev@gmail.com, rbrasga@uci.edu, shaggy@kernel.org, 
 skhan@linuxfoundation.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 34ac1e82e5a7 Merge tag '6.11-rc2-smb3-client-fixes' of git..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=15f035d9980000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1scy8F-0003lN-Q1
X-Mailman-Approved-At: Mon, 12 Aug 2024 13:58:44 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbFindBits
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
Reply-To: syzbot <syzbot+e38d703eeb410b17b473@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    34ac1e82e5a7 Merge tag '6.11-rc2-smb3-client-fixes' of git..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=15f035d9980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=9358cc4a2e37fd30
dashboard link: https://syzkaller.appspot.com/bug?extid=e38d703eeb410b17b473
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=161cc96d980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15f899d9980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/2c13802fbda4/disk-34ac1e82.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/74423353023b/vmlinux-34ac1e82.xz
kernel image: https://storage.googleapis.com/syzbot-assets/61da8b25f42a/bzImage-34ac1e82.xz
mounted in repro #1: https://storage.googleapis.com/syzbot-assets/4d2d380a51d6/mount_0.gz
mounted in repro #2: https://storage.googleapis.com/syzbot-assets/53f5a740bbef/mount_2.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e38d703eeb410b17b473@syzkaller.appspotmail.com

ERROR: (device loop0): remounting filesystem as read-only
jfs_rename: dtInsert returned -EIO
ERROR: (device loop0): dbAllocBits: leaf page corrupt
------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:3025:47
shift exponent 32 is too large for 32-bit type 'u32' (aka 'unsigned int')
CPU: 0 UID: 0 PID: 5213 Comm: syz-executor267 Not tainted 6.11.0-rc2-syzkaller-00239-g34ac1e82e5a7 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:93 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c8/0x420 lib/ubsan.c:468
 dbFindBits+0x11a/0x1d0 fs/jfs/jfs_dmap.c:3025
 dbAllocDmapLev+0x1e9/0x4a0 fs/jfs/jfs_dmap.c:1985
 dbAllocCtl+0x113/0x920 fs/jfs/jfs_dmap.c:1825
 dbAllocAG+0x28f/0x10b0 fs/jfs/jfs_dmap.c:1364
 dbDiscardAG+0x352/0xa20 fs/jfs/jfs_dmap.c:1613
 jfs_ioc_trim+0x433/0x670 fs/jfs/jfs_discard.c:100
 jfs_ioctl+0x2d0/0x3e0 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:907 [inline]
 __se_sys_ioctl+0xfc/0x170 fs/ioctl.c:893
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fbb2632d059
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe933950b8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007fbb26376095 RCX: 00007fbb2632d059
RDX: 0000000020000080 RSI: 00000000c0185879 RDI: 0000000000000006
RBP: 00007fbb263a85f0 R08: 000055555ee264c0 R09: 000055555ee264c0
R10: 000055555ee264c0 R11: 0000000000000246 R12: 00007ffe933950e0
R13: 00007ffe93395308 R14: 431bde82d7b634db R15: 00007fbb2637603b
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
