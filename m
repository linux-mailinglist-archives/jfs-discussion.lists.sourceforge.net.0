Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B74CF5FB30D
	for <lists+jfs-discussion@lfdr.de>; Tue, 11 Oct 2022 15:15:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oiF6P-0000Qf-VM;
	Tue, 11 Oct 2022 13:15:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3KLJEYwkbAL8x34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oi2hV-00006w-PH for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Oct 2022 00:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QbvS0X3m3SbRe3ACMhfuRQZ14nncl70F/pfj7aK5Oak=; b=FLnldO2Y9GmrwRgSqgnyaYC1Xh
 hdah8ea26+4bvis8lXulzAP3NCLHILjshWeyhUCiYLEPRS6h8YlT0EXtdKpoykhCr6Gh8rtygUe6v
 UNiPHF8w3q88lsnoRRX55mWwBUKAx2ze2yNKtp3fJpzYOw8pMbPthTDTWXS6P1clFLtY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QbvS0X3m3SbRe3ACMhfuRQZ14nncl70F/pfj7aK5Oak=; b=M
 fPVvnI8neK+zAhwahAeyVmNeI0CXaFhQ3u5xliPBAwsDthsQXsZLIfCGVRVtE+Jb2ntQWjRYmUj9W
 82LqMNXlauctjA2AksuYNDN2paMYnxjf4yZ/4orYvN0q7K1JgN+NR1JbTcl6lc2JNZG6k+2tzS1ga
 GZj0BJUpZisWj0pA=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oi2hR-0004hr-Lr for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Oct 2022 00:00:49 +0000
Received: by mail-il1-f198.google.com with SMTP id
 y13-20020a056e021bed00b002faba3c4afbso7636804ilv.13
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 10 Oct 2022 17:00:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QbvS0X3m3SbRe3ACMhfuRQZ14nncl70F/pfj7aK5Oak=;
 b=YPthpYXPMDdk2xAPELwIf8b1ADXKIDN9NFhL2JCPp/Ge5mBpPgwoqr7Q82GKrNF5F+
 It12jNJSTHuLXmsuM6ouW3sDx0BBE5WrzUaYM/kSLj/zYIqvYZvuxW3McP40tfcwtAxr
 rRclExG4ga8WzDOXmwvqmhb713+6AWCMQysY14gKbSSGlQZRVZ18FXgtbibMiuJR3/UN
 MVjJRDPTV013rdiaWWVmIyeWt1L67ITw5HqyqBo5hsqA+1I+lC/zfXz4n/l4FVhuLRlb
 dflfyRRQkzVS0CgOq3HN1TZswEVELKGfgaSlHSt13byRdJqLhy5UtUmFeklq6cnc8hwt
 XLTg==
X-Gm-Message-State: ACrzQf11soUkaMiJxQp86jW4c2Opj8PXtUgiFGGMdtmLk75Gu/ZF8NWi
 Vkkjax/uN+PaWAIJDWKuRJLVpCPWZ0v0ebefY4MxHvDjkttV
X-Google-Smtp-Source: AMsMyM533gTkDEzvWDwybUS2DzbBpkMuCqS+TnEE3zECelkRknEw6C/GiR4OfzEHlyIKR+x0t5QPt09RpeVgRk8VK6zs4fUBILab
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3043:b0:341:d8a4:73e8 with SMTP id
 u3-20020a056638304300b00341d8a473e8mr11553257jak.239.1665446440106; Mon, 10
 Oct 2022 17:00:40 -0700 (PDT)
Date: Mon, 10 Oct 2022 17:00:40 -0700
In-Reply-To: <00000000000093079705ea9aada2@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007482b905eab6f749@google.com>
From: syzbot <syzbot+7edb85bc97be9f350d90@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 4899a36f91a9 Merge tag 'powerpc-6.1-1' of git://git.kernel..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=12ead462880000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oi2hR-0004hr-Lr
X-Mailman-Approved-At: Tue, 11 Oct 2022 13:15:19 +0000
Subject: Re: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in
 dbFindCtl
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

HEAD commit:    4899a36f91a9 Merge tag 'powerpc-6.1-1' of git://git.kernel..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=12ead462880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e2021a61197ebe02
dashboard link: https://syzkaller.appspot.com/bug?extid=7edb85bc97be9f350d90
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1404403a880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10789852880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/1a98722ff83f/disk-4899a36f.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/7a31d6690395/vmlinux-4899a36f.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/6fb347a504fa/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+7edb85bc97be9f350d90@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1671:12
shift exponent 1834973817 is too large for 64-bit type 'long long int'
CPU: 0 PID: 3603 Comm: syz-executor644 Not tainted 6.0.0-syzkaller-09413-g4899a36f91a9 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 dbFindCtl.cold+0x52/0x57 fs/jfs/jfs_dmap.c:1671
 dbAllocAny+0xa4/0x1a0 fs/jfs/jfs_dmap.c:1502
 dbAlloc+0x46d/0xa70 fs/jfs/jfs_dmap.c:859
 diNewExt+0x724/0x1a10 fs/jfs/jfs_imap.c:2251
 diAllocExt fs/jfs/jfs_imap.c:1945 [inline]
 diAllocAG+0x15f1/0x2200 fs/jfs/jfs_imap.c:1662
 diAlloc+0x82d/0x1730 fs/jfs/jfs_imap.c:1583
 ialloc+0x89/0xaa0 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x1f0/0xab0 fs/jfs/namei.c:225
 vfs_mkdir+0x489/0x740 fs/namei.c:4013
 do_mkdirat+0x28c/0x310 fs/namei.c:4038
 __do_sys_mkdir fs/namei.c:4058 [inline]
 __se_sys_mkdir fs/namei.c:4056 [inline]
 __x64_sys_mkdir+0xf2/0x140 fs/namei.c:4056
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fc402fc5c29
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc056f56d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000053
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fc402fc5c29
RDX: 00007fc402f84123 RSI: 0000000000000000 RDI: 00000000200052c0
RBP: 00007fc402f853f0 R08: 0000555555d8a2c0 R09: 0000000000000000
R10: 00007ffc056f55a0 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00080000000000f4 R15: 0000000000000000
 </TASK>
================================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
