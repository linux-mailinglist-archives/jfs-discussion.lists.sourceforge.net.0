Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCC35F44FF
	for <lists+jfs-discussion@lfdr.de>; Tue,  4 Oct 2022 16:01:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ofiTI-0007Bs-Ga;
	Tue, 04 Oct 2022 14:00:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3pfM7YwkbAJwOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ofdcd-0004D1-Fe for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Oct 2022 08:49:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ov633MB31Y2VOAOMdCgRKWrmst3Y5v5tG/2ltJeamAI=; b=N60OIQJnlZFTu8mGLCC/cyW5Zz
 /kjrNavkUgT9LBGzqPh8Xm3weN6iqEM2t4DLH0jNcrN9Ve7elPh2fx12Iv5TSPu2pRpfJwUxIaLf4
 BDVYrnLptpHG/su0uHbX2PqB7gHD9vOsbLn8zzpwfsFKiOWj17ItlG6zCuEztokb7EvE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ov633MB31Y2VOAOMdCgRKWrmst3Y5v5tG/2ltJeamAI=; b=l
 garq8c1HtZv1UOBQowrtgdcpB27Kap6tdNaWgdzEQ3FvV9O9Yj1EIDL7G9yTw3OH+AdpcN7xKgkPX
 xE6tZVaklbEjeEx7wBhIMhH8qy5crhjqjDiS9sm33h4eVREqgH3DHi9afy+syTbVmksVo43+W2RNg
 EXMLvujUyoVsEshA=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ofdcZ-00C7Iq-FI for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Oct 2022 08:49:50 +0000
Received: by mail-il1-f198.google.com with SMTP id
 f15-20020a056e020b4f00b002fa34db70f0so322009ilu.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 04 Oct 2022 01:49:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=Ov633MB31Y2VOAOMdCgRKWrmst3Y5v5tG/2ltJeamAI=;
 b=W7FpHePlPRNeiiGR0VTlatZpsWxTnaOCGmEi0vSqvma7kyg86P7RMgL/bWDwIQUAjC
 2E0KymCJBR+4T+Wh/Q0UBFiolQ9cHncXa8eD+/2+CF9qrONXNbXKu2+Vp8pEFej2eyan
 kftKj7cNS41TUGkfN+N6WuF8LbJupA9rhn38OJEG8mFLjiynywVovNv1XSE9/fVAAQ+C
 ARecaw/l0TD5lpv49CbXzA1uUyYPcCYamRCvxnQ/BYS5aPptwsSA/fud9rLVJtWBhGni
 vhTmjcxyUT+jUbYayhxhHeKRUKF30AqYHM9vsirbrIBTxzz6jxcEMa//FB64nliK0H85
 X4zw==
X-Gm-Message-State: ACrzQf0irWC8Sak0iFgg8NDy+RxXSj5Xi69M1wqYIfnc4f793TPw+GiU
 HtVdVM1kDhS+xUfClNu4eEnJyCrVlYup11+q/sRISARAihU4
X-Google-Smtp-Source: AMsMyM5EXrGrERFsAzsN11cZBpcyv8Z2EHVGq6ZQfYSeVQIZ/iV8kcWiGrtG+auHvwdL1MGQQ7oONDUwpNsrUxrnqU3vtykm8oV3
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:164d:b0:2f1:869c:c45b with SMTP id
 v13-20020a056e02164d00b002f1869cc45bmr10221711ilu.212.1664873381905; Tue, 04
 Oct 2022 01:49:41 -0700 (PDT)
Date: Tue, 04 Oct 2022 01:49:41 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000086502505ea318af1@google.com>
From: syzbot <syzbot+e7c25a1325c6112704be@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 4fe89d07dcc2
 Linux 6.0 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=172dd9e0880000
 kernel config: https://syzkaller.appspot.com/x/.config?x=48b99eaecc2b324
 [...] Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1ofdcZ-00C7Iq-FI
X-Mailman-Approved-At: Tue, 04 Oct 2022 14:00:43 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in diNewExt
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

HEAD commit:    4fe89d07dcc2 Linux 6.0
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=172dd9e0880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=48b99eaecc2b324f
dashboard link: https://syzkaller.appspot.com/bug?extid=e7c25a1325c6112704be
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=128aee24880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15e61f70880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ce1d9b74a5e0/disk-4fe89d07.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/06e7c02fa7ba/vmlinux-4fe89d07.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e7c25a1325c6112704be@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_imap.c:2177:9
shift exponent 3328 is too large for 64-bit type '__u64' (aka 'unsigned long long')
CPU: 0 PID: 3614 Comm: syz-executor410 Not tainted 6.0.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 diNewExt+0x3788/0x3e00 fs/jfs/jfs_imap.c:2177
 diAllocExt fs/jfs/jfs_imap.c:1945 [inline]
 diAllocAG+0xc6a/0x1f80 fs/jfs/jfs_imap.c:1662
 diAlloc+0x3dd/0x1700 fs/jfs/jfs_imap.c:1583
 ialloc+0x8c/0xa80 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x141/0xb00 fs/jfs/namei.c:225
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4013
 do_mkdirat+0x279/0x550 fs/namei.c:4038
 __do_sys_mkdirat fs/namei.c:4053 [inline]
 __se_sys_mkdirat fs/namei.c:4051 [inline]
 __x64_sys_mkdirat+0x85/0x90 fs/namei.c:4051
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f6d98413009
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff6e1be1f8 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f6d98413009
RDX: 0000000000000000 RSI: 0000000020000540 RDI: 0000000000000003
RBP: 00007f6d983d27d0 R08: 0000000000000000 R09: 00007f6d983d27d0
R10: 000000000000002e R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00080000000000f8 R15: 0000000000000000
 </TASK>
================================================================================


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
