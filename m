Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10506607768
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Oct 2022 14:58:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1olrbD-00041o-5C;
	Fri, 21 Oct 2022 12:58:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <39CNSYwkbAKUXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oljuw-0002Ov-8U for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Oct 2022 04:45:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/9d8AJo9dk8KoWADjV9xino9cLGZcNKf+nSwONud7nQ=; b=dLTsUlvHIRB6o6WdzZTnWYICjt
 Lw8tFfooLAH8biV7u1pCH/qVbApiUSxL0aJ0pQtsMuSL62HeezVsirAgeQHuMpTEdcYaVkF338YCC
 Ah37XyhX6PDMo+CmAXYc5m2EoMEEifjCpuCMc7ImgBpB4afk0SVyykKEOgnX0x33PqtA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/9d8AJo9dk8KoWADjV9xino9cLGZcNKf+nSwONud7nQ=; b=K
 lwNmKFlldPNtkBBecCRwtH9W4t0+u9aZhka00svz0meXjy++Z9iyS74RCI+oeycrQ/tbyq+bYq2Lq
 fXvvM+AqjsMQH7axmyVDKXYoSiuD/uMwr++GBi8j3nPsdxhE0vr8iLgU+OllOmSGx450CwIrptop2
 TEhWIIMJCyB3iBcE=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oljuk-0000mm-E0 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Oct 2022 04:45:52 +0000
Received: by mail-il1-f197.google.com with SMTP id
 r12-20020a92cd8c000000b002f9f5baaeeaso2245558ilb.4
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Oct 2022 21:45:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/9d8AJo9dk8KoWADjV9xino9cLGZcNKf+nSwONud7nQ=;
 b=mbTX1oCO7/G+XwoM1J8Abjm5af/zpyOBCl35ZpBjPlQQuUAoXET3rcuf3R3l7roQSS
 3EqyvbuIbUosy8fqlGfePh+t/hZQ48JiuKID1vzBSRcYCmnA2oThXDSLlFqPdBOOE7iD
 7yxSplO2Qas5REbGANzi8bJBXkGC0rcUz69L0J8KS1P3BUY3jo77r4Zf+HRs6i7M+kQ1
 /dd8IRwK9U1IdFsi+aC3fTxAtCbSqmZpWMPZ6T81AfPuCeAaNEherGadlJHAuWsf3amJ
 AzgJ/g6EMlhxd1OgPImUZjnadVpqGM97iUub6Wcwpqr5PSH8CcmXtarnw0ThTME8c4+Y
 exyg==
X-Gm-Message-State: ACrzQf32xw0pZ6UzeRZIePkmtklUTA2dSHPrS8b91/jjWJW/D6SbIRHC
 NS9X0QuCgQ+VChC9yETJ6a3lRA83wHF2s/Xmi+Xh55pRfwi3
X-Google-Smtp-Source: AMsMyM6RTIKDl5ipvDk+jhMlBJpQ+u3izbIT/78a0zJczSl0jvOJNv9HVtFoteNMrdRyuKvi3dYOT3Z7woHugcHYxeFGs3aN7tkA
MIME-Version: 1.0
X-Received: by 2002:a5e:c004:0:b0:6bc:9a7f:ebc7 with SMTP id
 u4-20020a5ec004000000b006bc9a7febc7mr12051606iol.163.1666327540896; Thu, 20
 Oct 2022 21:45:40 -0700 (PDT)
Date: Thu, 20 Oct 2022 21:45:40 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000027993305eb841df8@google.com>
From: syzbot <syzbot+c1056fdfe414463fdb33@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 493ffd6605b2
 Merge tag 'ucount-rlimits-cleanups-for-v5.19'.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1512cd9a880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
X-Headers-End: 1oljuk-0000mm-E0
X-Mailman-Approved-At: Fri, 21 Oct 2022 12:58:05 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 diWrite
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

HEAD commit:    493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1512cd9a880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=c1056fdfe414463fdb33
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12f431d2880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1208894a880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f1ff6481e26f/disk-493ffd66.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/101bd3c7ae47/vmlinux-493ffd66.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/720c16671db9/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c1056fdfe414463fdb33@syzkaller.appspotmail.com

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_imap.c:749:4
index 255 is out of range for type 'struct dtslot [128]'
CPU: 1 PID: 3606 Comm: syz-executor322 Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 diWrite+0x1311/0x1f80 fs/jfs/jfs_imap.c:749
 txCommit+0xa2e/0x6d40 fs/jfs/jfs_txnmgr.c:1250
 jfs_mkdir+0x911/0xb00 fs/jfs/namei.c:290
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4013
 do_mkdirat+0x279/0x550 fs/namei.c:4038
 __do_sys_mkdirat fs/namei.c:4053 [inline]
 __se_sys_mkdirat fs/namei.c:4051 [inline]
 __x64_sys_mkdirat+0x85/0x90 fs/namei.c:4051
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f1a977dfe49
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd8f230c48 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f1a977dfe49
RDX: 00000000000001ff RSI: 00000000200000c0 RDI: ffffffffffffff9c
RBP: 00007f1a9779f610 R08: 0000000000000000 R09: 0000000000000000
R10: 00005555566302c0 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00083878000000fc R15: 0000000000000000
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
