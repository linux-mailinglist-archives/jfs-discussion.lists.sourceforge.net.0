Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB589618344
	for <lists+jfs-discussion@lfdr.de>; Thu,  3 Nov 2022 16:50:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oqcTf-0000Xp-W3;
	Thu, 03 Nov 2022 15:49:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3geBjYwkbAPImsteUffYlUjjcX.aiiafYomYlWihnYhn.Wig@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oqcIs-0006h8-Uf for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Nov 2022 15:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H+EcpWeMN+aR5+rnXtEwLak7cM5jmpXRI+mIotK6W9k=; b=U2iKkDhLq3LgETmD5qgnrPECQt
 1VpBQRR/IJ37vn052KemSvYDfdjeH3+i/KFYsDxkSkh0z6lg17bIfrUOVfD5JP6aEos46flT4nvBj
 6ds72fXH5wGeLnN9en+pGTPp76MKEqUdZHmHwPTpvX/uYywjqrFH7lBNSQqsZIS03yh4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H+EcpWeMN+aR5+rnXtEwLak7cM5jmpXRI+mIotK6W9k=; b=P
 TJ32E82Xsiv+dO4uU3o/aoxLQI4Lk1jb1ewAPb9DLFXmgEOReXh2Rzw7BCcIYDI8VgjoZLHysuZ6q
 uSrUT8C58DKMFvUldqdusSTmLi8Geiur0Tq9Ec/FcpYIAFL8ZeBKL22Y4tLKKJLoSGVUtProlEZ/F
 /h7dTe9yO6UAI7Bg=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oqcIo-0001du-RN for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Nov 2022 15:38:50 +0000
Received: by mail-il1-f199.google.com with SMTP id
 o13-20020a056e0214cd00b00300a27f9424so1830947ilk.10
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 03 Nov 2022 08:38:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=H+EcpWeMN+aR5+rnXtEwLak7cM5jmpXRI+mIotK6W9k=;
 b=axN4M7KHViL6sNnNK87oQc71XhtgTPOTEPndwBBBsotXyxeWBLMP+3dtm0jhHH+vkK
 Hn30THfOeYRN+LZC1rxKTy4Z5hO336igNmgOR3JMCFS0ocvv6sejSlaMPdsTDPbhvskp
 tSfAIIXCU1G2Fpz3oE8C5+8GxtItvkS7fIOMciHV8e7xJ7v14uZEwqGDZ0tz3brr8aUU
 H0AaZQUf+mTEzsWkvwZiRP2ynG8wN0i6OwzODy+YBqEGafLXN3ZhPZ9XxHSYGdIg7zvF
 XPR28nDCV0dZEAEaI767qSJFJcdYkv1SrLjy7R1m0nB01y8whdruokmjaDNhYIDB3A0B
 dfeA==
X-Gm-Message-State: ACrzQf3TocQr9UaR4bNQ0S1PwbLvj0cXce4yoxIZswFDydNBXTCjzETg
 Gfee1GPmj6sqbH1pMKBt8kb7MobWy44zjQbfJb/IysioM1NB
X-Google-Smtp-Source: AMsMyM7paEBoNwGBzBMtkjRpysXRO3gjYzq2Eg7JDU1YNnEd9XYqa3CLCQNT4Pcxrb9R6JcU4Pf8A5dtQIEHO9OaYmxv1yWSgIdc
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1845:b0:300:7877:11f5 with SMTP id
 b5-20020a056e02184500b00300787711f5mr18873830ilv.97.1667489921280; Thu, 03
 Nov 2022 08:38:41 -0700 (PDT)
Date: Thu, 03 Nov 2022 08:38:41 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006cb4bc05ec92c014@google.com>
From: syzbot <syzbot+3ef8947f8f9b50440df4@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 mudongliangabcd@gmail.com, paskripkin@gmail.com, r33s3n6@gmail.com, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, wuhoipok@gmail.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 61c3426aca2c
 Add linux-next specific files for 20221102 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1727cd46880000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1oqcIo-0001du-RN
X-Mailman-Approved-At: Thu, 03 Nov 2022 15:49:59 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbBackSplit
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

HEAD commit:    61c3426aca2c Add linux-next specific files for 20221102
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1727cd46880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=acb529cc910d907c
dashboard link: https://syzkaller.appspot.com/bug?extid=3ef8947f8f9b50440df4
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14f170a9880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12e2fff6880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/cc56d88dd6a3/disk-61c3426a.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/5921b65b080f/vmlinux-61c3426a.xz
kernel image: https://storage.googleapis.com/syzbot-assets/39cbd355fedd/bzImage-61c3426a.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/de5204da8a03/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+3ef8947f8f9b50440df4@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2621:11
shift exponent 109 is too large for 32-bit type 'int'
CPU: 0 PID: 5234 Comm: syz-executor124 Not tainted 6.1.0-rc3-next-20221102-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 dbBackSplit.cold-0x5/0xca
 dbAllocBits+0x14f/0x5f0 fs/jfs/jfs_dmap.c:2173
 dbAllocDmap+0x61/0x110 fs/jfs/jfs_dmap.c:2014
 dbAllocNear fs/jfs/jfs_dmap.c:1243 [inline]
 dbAlloc+0x78a/0xa70 fs/jfs/jfs_dmap.c:828
 diNewExt+0x724/0x1a10 fs/jfs/jfs_imap.c:2251
 diAllocExt fs/jfs/jfs_imap.c:1945 [inline]
 diAllocAG+0x15f1/0x2200 fs/jfs/jfs_imap.c:1662
 diAlloc+0x82d/0x1730 fs/jfs/jfs_imap.c:1583
 ialloc+0x89/0xaa0 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x1f0/0xab0 fs/jfs/namei.c:225
 vfs_mkdir+0x489/0x740 fs/namei.c:4035
 do_mkdirat+0x277/0x2f0 fs/namei.c:4060
 __do_sys_mkdir fs/namei.c:4080 [inline]
 __se_sys_mkdir fs/namei.c:4078 [inline]
 __x64_sys_mkdir+0xf2/0x140 fs/namei.c:4078
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fd3da355dc9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe6b87ad38 EFLAGS: 00000246 ORIG_RAX: 0000000000000053
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fd3da355dc9
RDX: 00007fd3da3142c3 RSI: 0000000000000000 RDI: 00000000200052c0
RBP: 00007fd3da315590 R08: 000055555709e2c0 R09: 0000000000000000
R10: 00007ffe6b87ac00 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00080000000000fc R15: 0000000000000000
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
