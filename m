Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E31F65FFC8B
	for <lists+jfs-discussion@lfdr.de>; Sun, 16 Oct 2022 01:11:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ojqJB-0001XV-5s;
	Sat, 15 Oct 2022 23:11:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3RAhLYwkbAKETZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ojmjD-00051u-9O for jfs-discussion@lists.sourceforge.net;
 Sat, 15 Oct 2022 19:21:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A4VjHpTY+k3KbZ6IrKXiwEgYAuIUAsSyXXWxa32DpOM=; b=LLhoV269xfo8uZWA9/fgRNo99Q
 ql9Rnqyv0QHhmSap5/NU41tHawb+IFG1g0i/vVx49PsizxPNTmwMabCJd5fIlb3rQZYiRFFPoDBp8
 EcVnB4fjC4+NzEY0U1FYNnJlPH+1uQ9gX7uV9N7n5mMB0LyxhGbIW1yjSaaEcBN7qlM0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=A4VjHpTY+k3KbZ6IrKXiwEgYAuIUAsSyXXWxa32DpOM=; b=e
 jWsjZC//oATxblYEbA1rVxgzFSCOIWjjnP857aSijoBSBokv7Q3HlhadKoXFnH+NH51opoktXb8BI
 63Jes4mhgub2Vaey068s+GkjQscqyCGxiLHeLWIPRSx9HA2N6rYBhZORawTLsSPCO3pxQkAmXNoAp
 QF/Nuyux+iYiuW6c=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ojmjB-0004Rf-SE for jfs-discussion@lists.sourceforge.net;
 Sat, 15 Oct 2022 19:21:47 +0000
Received: by mail-io1-f70.google.com with SMTP id
 d24-20020a05660225d800b006a466ec7746so4993440iop.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 15 Oct 2022 12:21:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=A4VjHpTY+k3KbZ6IrKXiwEgYAuIUAsSyXXWxa32DpOM=;
 b=d6i3ALPGcmu1QMokIgl8CVOYw9k8YsJ5Tb+nRG2BcNrpX5aD1sVLSPSLQsArRG9yqu
 7U51QJSkYQb6nT8h3UiaX8tbRGcspkmXJT5QOkkg2zhJU6+fmU+lmi091mRU7vXsNu51
 S3/ZBOXf7YZ7M2MoJCtsS13T1FJSBx8nB7nLWTk0ydR4oIKmbVXwJexk5jVzWvZceXLo
 XVOJqWgvRb4pCwzp7H/tWcjhWHz573FwzgetRAv63DDV+BI5oGbACNPQiaiFmSG1aqWB
 3tmrZSuXyNv45/C9BgBILCp2nHWVqN06IQJV3hNFLJk8/bS/8/4Fq+hm80zXRsn14eml
 md4g==
X-Gm-Message-State: ACrzQf1NsokeUZm4RP5E0wpJJWbda45MLVhW9UYzcRg8nchohkoxkt6e
 8Zuc898rDhWzIJ58qxtMNlrzERA6wshRO32tJWywQD8MyYdc
X-Google-Smtp-Source: AMsMyM63ryNw2sUB2rN3e7uamk1XoQt957lB2LbtcBUByjXHx69Bihv5BaH782vQIWfBpQ2KB6A+ebnggfBiUoMXPrzChGEtSbpi
MIME-Version: 1.0
X-Received: by 2002:a05:6638:304c:b0:363:ff68:8ebc with SMTP id
 u12-20020a056638304c00b00363ff688ebcmr1986914jak.294.1665861700851; Sat, 15
 Oct 2022 12:21:40 -0700 (PDT)
Date: Sat, 15 Oct 2022 12:21:40 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ec9d6b05eb17a66f@google.com>
From: syzbot <syzbot+5fc38b2ddbbca7f5c680@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 55be6084c8e0
 Merge tag 'timers-core-2022-10-05' of git://g.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=115bf294880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1ojmjB-0004Rf-SE
X-Mailman-Approved-At: Sat, 15 Oct 2022 23:11:06 +0000
Subject: [Jfs-discussion] [syzbot] WARNING in jfs_symlink
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    55be6084c8e0 Merge tag 'timers-core-2022-10-05' of git://g..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=115bf294880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=dba84f541f631c81
dashboard link: https://syzkaller.appspot.com/bug?extid=5fc38b2ddbbca7f5c680
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1150df3a880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12eab444880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/608ce5a619e1/disk-55be6084.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/df10f9bb630d/vmlinux-55be6084.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/d33a0105c419/mount_1.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5fc38b2ddbbca7f5c680@syzkaller.appspotmail.com

------------[ cut here ]------------
memcpy: detected field-spanning write (size 132) of single field "ip->i_link" at fs/jfs/namei.c:950 (size 18446744073709551615)
WARNING: CPU: 1 PID: 3621 at fs/jfs/namei.c:950 jfs_symlink+0xd0f/0x1120 fs/jfs/namei.c:950
Modules linked in:
CPU: 1 PID: 3621 Comm: syz-executor125 Not tainted 6.0.0-syzkaller-09589-g55be6084c8e0 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
RIP: 0010:jfs_symlink+0xd0f/0x1120 fs/jfs/namei.c:950
Code: ff e8 a5 7b a4 fe 48 c7 c1 ff ff ff ff 4c 89 e6 48 c7 c2 80 42 29 8a 48 c7 c7 e0 42 29 8a c6 05 2a 7d f4 0a 01 e8 70 fd 67 06 <0f> 0b 48 8b 95 b8 fd ff ff 48 b8 00 00 00 00 00 fc ff df 48 c1 ea
RSP: 0018:ffffc90003357b90 EFLAGS: 00010282
RAX: 0000000000000000 RBX: ffff88806f5515b0 RCX: 0000000000000000
RDX: ffff88807e07e0c0 RSI: ffffffff81605668 RDI: fffff5200066af64
RBP: ffffc90003357e10 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000080000000 R11: 0000000000000001 R12: 0000000000000084
R13: ffff88806f6b05f0 R14: ffff88806f6b0470 R15: ffff888016d04ce0
FS:  0000555556a3e3c0(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00000000200000c0 CR3: 0000000027bcd000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 vfs_symlink fs/namei.c:4378 [inline]
 vfs_symlink+0x365/0x5b0 fs/namei.c:4363
 do_symlinkat+0x261/0x2e0 fs/namei.c:4407
 __do_sys_symlink fs/namei.c:4429 [inline]
 __se_sys_symlink fs/namei.c:4427 [inline]
 __x64_sys_symlink+0x75/0x90 fs/namei.c:4427
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f5d8476b999
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffce4d88208 EFLAGS: 00000246 ORIG_RAX: 0000000000000058
RAX: ffffffffffffffda RBX: 00007ffce4d88218 RCX: 00007f5d8476b999
RDX: 0000000000fff340 RSI: 00000000200000c0 RDI: 0000000020000040
RBP: 00007ffce4d88210 R08: 00007ffce4d88210 R09: 00007f5d84729910
R10: 00007ffce4d88210 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
