Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DA9656412
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 17:46:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9qbr-0000dV-9U;
	Mon, 26 Dec 2022 16:45:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3BpWmYwkbAO0hnoZPaaTgPeeXS.VddVaTjhTgRdciTci.Rdb@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1p8xYL-0002iV-Hx for jfs-discussion@lists.sourceforge.net;
 Sat, 24 Dec 2022 05:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ccPAkKh6VRAWfW9CvYc2pSlVZ7nRt/UwqQWtOX0Glo=; b=N1r1sn7X0pCeBK1yLpc+XzbKDR
 0EzVJKcWaN4B+3xyaiIh64cU54KvtsbZj4GZZh3iRjIl9aKbU5eTcKZ38/le73j0XQ3coOjJEzy1s
 teUGB+vgLqOL8uUVWsCgffqjXvPQ6BRirjOLfit62vs59l1M4tslo9+qeNrp9shaM2QE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2ccPAkKh6VRAWfW9CvYc2pSlVZ7nRt/UwqQWtOX0Glo=; b=i
 jIH9tuoFlUlXr0kKqeEAwMDrZWM57XLGEMkkeEO4a/f6CglC+qZ4r6/ewrCNE39WWFHKNRHRmGvWc
 JSlkZs7+Q1UpNOjauryz+0lUffLRiz2pLGhfLdgSGhMh2ekfgc+5E0fDPoaqy8tE4rGU0HeEiF7dz
 4/NVBT/L14zCvk9U=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p8xYK-0005rz-5S for jfs-discussion@lists.sourceforge.net;
 Sat, 24 Dec 2022 05:58:37 +0000
Received: by mail-il1-f199.google.com with SMTP id
 l3-20020a056e021aa300b00304be32e9e5so3695454ilv.12
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 23 Dec 2022 21:58:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2ccPAkKh6VRAWfW9CvYc2pSlVZ7nRt/UwqQWtOX0Glo=;
 b=zRagXDRc+h7rbVWVY6nCEeH6URggudoA2AcLPX0B4DteqnuzDax+HjxMw1jiOYS0ng
 Q3X1sbsZWBFbv/GvXSDtA9kyCKdnAff/eGLKCBKc4G1AOanK5JYGVtlriBuw2ZlWsES3
 N51QKXHHxKYl3xXH7U0fZNqUaGwdRwePNqbcrX+Yt8vbQ/irMFCuhJghgRo9qrGKUgeY
 7FDYjuwtzEhfBe1B5/hYLhD6tPetyl9VQaXJ/AzxnyI/65ckJ1ItATddur5VWGWOmceL
 DdovS4FhUqk4Yfh5sIO7gWy8qe7BfyS8TGlNrrNlPiisqrSydKPYetIjVXpl0NU57if2
 KYhA==
X-Gm-Message-State: AFqh2kpuTJRw43pJnAkyAgEPz1aumWZMi/6ySInA+WbXBVv/38S2ExbU
 bvNazt8dwliHmAfwXXpNYYtYNLEMiereYE376qz5kmQO4VHK
X-Google-Smtp-Source: AMrXdXsajYZzj1x4h9Ao4zBDfUwXaavd+cCjSmrFcalRPO3mKAJ6sNxMLsjbjz3yx4tUg6RY7/rTVYkoLx7E+Q6kSqL8SpVqbujL
MIME-Version: 1.0
X-Received: by 2002:a6b:f801:0:b0:6e3:134:3a97 with SMTP id
 o1-20020a6bf801000000b006e301343a97mr887582ioh.64.1671861510633; Fri, 23 Dec
 2022 21:58:30 -0800 (PST)
Date: Fri, 23 Dec 2022 21:58:30 -0800
In-Reply-To: <000000000000abc46005e9f9e943@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007483a605f08c97a2@google.com>
From: syzbot <syzbot+a63afa301d1258d09267@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: a5541c0811a0 Merge branch 'for-next/core' into for-kernelci git
 tree: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1p8xYK-0005rz-5S
X-Mailman-Approved-At: Mon, 26 Dec 2022 16:45:53 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txUnlock
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    a5541c0811a0 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=11fbab64480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cbd4e584773e9397
dashboard link: https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1779a650480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16346274480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/4b7702208fb9/disk-a5541c08.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9ec0153ec051/vmlinux-a5541c08.xz
kernel image: https://storage.googleapis.com/syzbot-assets/6f8725ad290a/Image-a5541c08.gz.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/4aaac3b4e5ee/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a63afa301d1258d09267@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_txnmgr.c:926 assert(mp->nohomeok > 0)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:926!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 1 PID: 90 Comm: jfsCommit Not tainted 6.1.0-rc8-syzkaller-33330-ga5541c0811a0 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : txUnlock+0x6f4/0x738 fs/jfs/jfs_txnmgr.c:926
lr : txUnlock+0x6f4/0x738 fs/jfs/jfs_txnmgr.c:926
sp : ffff80000fe93d30
x29: ffff80000fe93d70 x28: ffff800012902000 x27: 0000000000000002
x26: ffff80000efd4308 x25: ffff80000efd4000 x24: ffff0000cd24d000
x23: ffff80000efd4000 x22: 0000000000000048 x21: ffff80000efd42b4
x20: ffff80000efd4000 x19: 0000000000000000 x18: 00000000000000c0
x17: ffff80000dda8198 x16: ffff80000dbe6158 x15: ffff0000c0fd1a40
x14: 0000000000000000 x13: 00000000ffffffff x12: ffff0000c0fd1a40
x11: ff808000081c4d64 x10: 0000000000000000 x9 : 1da0f0d83d883600
x8 : 1da0f0d83d883600 x7 : ffff80000c091ebc x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0001fefddcd0 x1 : 0000000100000000 x0 : 0000000000000037
Call trace:
 txUnlock+0x6f4/0x738 fs/jfs/jfs_txnmgr.c:926
 txLazyCommit fs/jfs/jfs_txnmgr.c:2677 [inline]
 jfs_lazycommit+0x228/0x4b8 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x12c/0x158 kernel/kthread.c:376
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:863
Code: 910d7021 91288c63 528073c2 94cbec2c (d4210000) 
---[ end trace 0000000000000000 ]---



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
