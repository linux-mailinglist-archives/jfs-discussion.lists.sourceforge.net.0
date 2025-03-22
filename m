Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A05A6CA74
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Mar 2025 15:07:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tvzV8-0006E5-Ij;
	Sat, 22 Mar 2025 14:07:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3wbzeZwkbAPou01mcnngtcrrkf.iqqingwugteqpvgpv.eqo@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tvz1J-0003Be-NM for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 13:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3VCs3rYR1RXuALBtHU1ly+1tslqdrRFfmevHbIa5hCw=; b=GLrAZFmlsEfQQQng/9V6Z7OotA
 ii4rFKzVY8vEYA+shR3rS4C75dHfK6LT8o3dF/aMXBE23t9lrrzoCM06DLKgMVuotglzw/MjoOBsc
 uhAreWAJvjAelcG2KQsm3IViRfIWQh37JPOx6Q5dhEcMcp+1vA+6UhLi5EN5B/skLX5Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3VCs3rYR1RXuALBtHU1ly+1tslqdrRFfmevHbIa5hCw=; b=T
 GhMogSpzWsanqpmIgrPslAmgH6la5CX8eyY9ncqWy3VjWZCe15x/qA8nBBxiizjryuc9TA33dLqLx
 vHjdErEiQfKIkqy2q96SftmrVW6Yhi8S4Ndg1Uc/bIgK5urbLsE1VXZHehMF6nKCVpQXceS2mBTt7
 8B+TeANreWGkplZQ=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tvz1D-0006DZ-Ed for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 13:36:13 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-85b5a7981ccso228160339f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Mar 2025 06:36:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742650562; x=1743255362;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3VCs3rYR1RXuALBtHU1ly+1tslqdrRFfmevHbIa5hCw=;
 b=qTxXf3PG3nZofe1WRpVpqIJWclQtiPQeOXre89sAoy0bIuNrqZC4tZs3LJskVdPAvY
 ib6stVGCyxRoMMyugPiQweTbd94Ue9qoP/bPOVdkraYDPSQaJFEkMgnq1SaafxvRpO/c
 /il0Qyze+X0BjlIpfH6nd3yzeYWdnptvf+Fbeu/I9VHUSDN6LQ/MzGagmmoDlNCYspVJ
 4uvUEYFH733wzdRca5yiuw8HquYr/FmI9/9r+ZjHkDTUqYDZwUrZMFgIyEDTPGTvWylM
 1W3+bJkpKrEYHAVB1JectxqrZu58yNZ/0HUfbGo8VazFXwpagvMPF7/nSZEft46vYODW
 jU/Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrsWFG2qypKtgagmyB2einkOelgEdrPnkWv6x7sl/bRuEwT6N1gWFD3mlqB28z6Do+Rddo64oQGvdqG+CyQg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxCm1DfZAYmTX42pfjv/60k0QPZCpRuXqv0l8bP7MW5O0hHs1Eh
 HiG8qwjo0QED9PS4gOyg6T9dkrgb/FlScXl3QShIT03UyGOySh0hmw187KQyxa03ubowevVldae
 wOsbypmYOmhlnwhhwYIu4csrTBqjlEp3RIlOaFE7KK/lmqQLgllm9xHU=
X-Google-Smtp-Source: AGHT+IGQ+n/ImAHnW7kHW2+2kxgz9xjMfSmeDNJfVxY2gojDkg7zTSpFly6eLNFM6zKl0/Wu7MzOKLag5retUIQAC6wnLZJsf+zo
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1646:b0:3d5:890b:8db with SMTP id
 e9e14a558f8ab-3d5960f4df6mr77522235ab.8.1742650561674; Sat, 22 Mar 2025
 06:36:01 -0700 (PDT)
Date: Sat, 22 Mar 2025 06:36:01 -0700
In-Reply-To: <20250322130257.227256-1-duttaditya18@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67debcc1.050a0220.31a16b.003c.GAE@google.com>
To: duttaditya18@gmail.com, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch but the reproducer
 is still triggering an issue: BUG: unable to handle kernel paging request
 in lmLogSync Unable to handle kernel paging request at virtual address
 dfff800000000006
 KASAN: null-ptr-deref in range [0x0000000000000030-0x0000000000000037] Mem
 abort info: ESR = 0x0000000096000005 EC = 0x25: DA [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.72 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.72 listed in bl.score.senderscore.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1tvz1D-0006DZ-Ed
X-Mailman-Approved-At: Sat, 22 Mar 2025 14:06:58 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in add_missing_indices
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
Reply-To: syzbot <syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch but the reproducer is still triggering an issue:
BUG: unable to handle kernel paging request in lmLogSync

Unable to handle kernel paging request at virtual address dfff800000000006
KASAN: null-ptr-deref in range [0x0000000000000030-0x0000000000000037]
Mem abort info:
  ESR = 0x0000000096000005
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x05: level 1 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000005, ISS2 = 0x00000000
  CM = 0, WnR = 0, TnD = 0, TagAccess = 0
  GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
[dfff800000000006] address between user and kernel address ranges
Internal error: Oops: 0000000096000005 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 UID: 0 PID: 102 Comm: jfsCommit Not tainted 6.14.0-rc7-syzkaller-ga2392f333575-dirty #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2025
pstate: 20400005 (nzCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : write_special_inodes fs/jfs/jfs_logmgr.c:207 [inline]
pc : lmLogSync+0xec/0x978 fs/jfs/jfs_logmgr.c:935
lr : lmLogSync+0xa4/0x978 fs/jfs/jfs_logmgr.c:934
sp : ffff80009ba17aa0
x29: ffff80009ba17b70 x28: ffff80009b359000 x27: dfff800000000000
x26: dfff800000000000 x25: ffff80009ba17ac0 x24: 1ffff0001202ba48
x23: 0000000000000002 x22: 0000000000000006 x21: 0000000000000030
x20: ffff0000edad3838 x19: ffff0000e80de000 x18: 1fffe000366f8886
x17: ffff80008fb6d000 x16: ffff80008b74b408 x15: ffff700013742f60
x14: 1ffff00013742f5d x13: 0000000000000004 x12: ffffffffffffffff
x11: ffff700013742f60 x10: 0000000000ff0100 x9 : 0000000000000000
x8 : 0000000000000006 x7 : 0000000000000000 x6 : 0000000000000000
x5 : 0000000000000001 x4 : 0000000000000004 x3 : 0000000000000010
x2 : 0000000000000004 x1 : 0000000000000001 x0 : 0000000000000000
Call trace:
 write_special_inodes fs/jfs/jfs_logmgr.c:207 [inline] (P)
 lmLogSync+0xec/0x978 fs/jfs/jfs_logmgr.c:935 (P)
 jfs_syncpt+0x74/0x98 fs/jfs/jfs_logmgr.c:1041
 txEnd+0x2ec/0x558 fs/jfs/jfs_txnmgr.c:549
 txLazyCommit fs/jfs/jfs_txnmgr.c:2684 [inline]
 jfs_lazycommit+0x4e0/0x9a8 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x65c/0x7b0 kernel/kthread.c:464
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:862
Code: 97bd83a8 f94002a8 9100c115 d343fea8 (387b6908) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	97bd83a8 	bl	0xfffffffffef60ea0
   4:	f94002a8 	ldr	x8, [x21]
   8:	9100c115 	add	x21, x8, #0x30
   c:	d343fea8 	lsr	x8, x21, #3
* 10:	387b6908 	ldrb	w8, [x8, x27] <-- trapping instruction


Tested on:

commit:         a2392f33 drm/panthor: Clean up FW version information ..
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=12ae95e4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5f4c5deae8cc60fe
dashboard link: https://syzkaller.appspot.com/bug?extid=b974bd41515f770c608b
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: arm64
patch:          https://syzkaller.appspot.com/x/patch.diff?x=11c7043f980000



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
