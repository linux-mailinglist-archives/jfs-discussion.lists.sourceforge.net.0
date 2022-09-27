Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2065EC477
	for <lists+jfs-discussion@lfdr.de>; Tue, 27 Sep 2022 15:30:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1odAeu-0001Y4-I4;
	Tue, 27 Sep 2022 13:30:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3dOIyYwkbACUTZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1od92L-0007ir-1N for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Sep 2022 11:46:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h+iHkPEp4LDNj1sNMEpHHrPze+HZAs8SDQcDer8eELE=; b=JgLklQRmNfoFRvs7lgSVHuRDmI
 BBXbDokxzjPwqsZjZs4u24oCfwBqb5Cicwj27p2Pn81TF3jlTJZXFfHbbO+J4tLmTEKcyQAOAOUw3
 0qCVfme3vHtrcfzfgmeJ/rLsNMJsuNzzmZYhOBTMEdfMbA0ddBKZq1uk3sSel7RZ9LdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h+iHkPEp4LDNj1sNMEpHHrPze+HZAs8SDQcDer8eELE=; b=N
 BcIxGW57v3xuk4Qsj0SUViYAXCZ0uMEffwk1MzZ+n24nJ4F6KksfIkyIPodTwPWyHK1vQEQVUh1v7
 DNgKR44IOxW0xkDoV0930bu3APDSBjghjcbHWJC4dk4eKL3Mi3iQM2lx4fo9HDOb28yP3Sm44wXnu
 OfXLkNZX4RhldyqQ=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1od92H-0008BP-Ib for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Sep 2022 11:46:04 +0000
Received: by mail-il1-f199.google.com with SMTP id
 l18-20020a056e02067200b002f6af976994so7311109ilt.16
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 27 Sep 2022 04:46:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=h+iHkPEp4LDNj1sNMEpHHrPze+HZAs8SDQcDer8eELE=;
 b=aah1SxL7G1SxbEjuGt/mvGuZgftscFeXfWek0dnzr69piOEuwOOdSJewcUfIvu6Fp/
 3uyVmZJXx44NkOLHb8Dl6cPDz5SiNmuNLsiLE534IQFYxjDpz5+hCJENV0GXwXggLmNw
 cnvcwJAOoFEWENZMxddsh74D7mMIVLF+3sqU3PznWTJM+2u4O61t2qxaQ9LmXRrFJ6TI
 eiHsxuTH/m8VKG2SarqmFiJFCDnQivj+SnIx/KAVWsDriNyiNYWbB0DABwd0LNmMCWHi
 dsokrCoJ6D0MkY1lPQQ7pn3mSS3ZvJ4sHbbHcGe4itJMhWLl1K4Et33K6ulQBKRWJO9B
 ybeg==
X-Gm-Message-State: ACrzQf2Pb/1DsookQp41V6hRPF87WHkGIRlGFxaqd+nBOZ77+mBzfIHN
 K7f8bM9bRBlXImGQQkMZ4UnmfW3meyuhk+tPYfGaBLWeA02K
X-Google-Smtp-Source: AMsMyM4T4WPi+R0+KzCVz6PRWCEJLTjr0gy8kdSIelisdHPpfOlqiE/pVmsODa650VtW+YVJogDgJHbZXKA+eBK1KQtbGMNOCDuS
MIME-Version: 1.0
X-Received: by 2002:a05:6602:26d2:b0:6a3:f044:a942 with SMTP id
 g18-20020a05660226d200b006a3f044a942mr11137420ioo.50.1664279156077; Tue, 27
 Sep 2022 04:45:56 -0700 (PDT)
Date: Tue, 27 Sep 2022 04:45:56 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e7bc4505e9a72fab@google.com>
From: syzbot <syzbot+79d792676d8ac050949f@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: f76349cf4145
 Linux 6.0-rc7 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=11b538a8880000
 kernel config: https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1 [...]
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
X-Headers-End: 1od92H-0008BP-Ib
X-Mailman-Approved-At: Tue, 27 Sep 2022 13:29:58 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: array-index-out-of-bounds in
 diAlloc
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

HEAD commit:    f76349cf4145 Linux 6.0-rc7
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=11b538a8880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=79d792676d8ac050949f
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15fcb718880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10b6f84c880000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+79d792676d8ac050949f@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 65535
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_imap.c:1359:19
index -1 is out of range for type 'atomic_t [128]'
CPU: 1 PID: 3614 Comm: syz-executor361 Not tainted 6.0.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 diAlloc+0x1434/0x1700 fs/jfs/jfs_imap.c:1359
 ialloc+0x8c/0xa80 fs/jfs/jfs_inode.c:56
 jfs_create+0x13a/0xb10 fs/jfs/namei.c:92
 lookup_open fs/namei.c:3413 [inline]
 open_last_lookups fs/namei.c:3481 [inline]
 path_openat+0x12d0/0x2df0 fs/namei.c:3688
 do_filp_open+0x264/0x4f0 fs/namei.c:3718
 do_sys_openat2+0x124/0x4e0 fs/open.c:1313
 do_sys_open fs/open.c:1329 [inline]
 __do_sys_open fs/open.c:1337 [inline]
 __se_sys_open fs/open.c:1333 [inline]
 __x64_sys_open+0x221/0x270 fs/open.c:1333
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fc66ba13fc9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffda59a6f18 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fc66ba13fc9
RDX: 0000000000000000 RSI: 00000000000000f0 RDI: 0000000020000140
RBP: 00007fc66b9d3790 R08: 0000000000000000 R09: 0000000000000000
R10: 00007ffda59a6de0 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00083878000000f8 R15: 0000000000000000
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
