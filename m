Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE2D5EADA0
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Sep 2022 19:07:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ocrZt-0006c7-8Y;
	Mon, 26 Sep 2022 17:07:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3HNwxYwkbALstz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ocrZ4-0006b3-IX for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 17:06:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RXZoyMLrw91eDBbUfEfSdQlOyXaEU9f2n9v5+RhyspQ=; b=DfV8gp6GTkyM9QNVFREMgx+G5p
 bPr143pR5miULw8yDpOD/BR/fbPFQSSYeQR5EsCQvUUiRy0xqo63Jiav03LmyuD3Lzn7h9o9RDMCf
 O+JE6WFGw3UK61ONV7O2x8+bsSZp+h1NavapHevxGm8M1UgBR6ooS0EbWFmfhJUMr+J0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RXZoyMLrw91eDBbUfEfSdQlOyXaEU9f2n9v5+RhyspQ=; b=h
 bJLHoHGnulTMeW8/S1jopNXOY+3+gR6FhIFnorCHG14qog63obVtyOf2q6DFeiUI8gwTCMEK2A5D3
 8X1tQPXmtl6HY0Vz8BClKL7zJTXFc1xUiAxtQhsL9uoGgnaE0Px7srHelqtPIGuG955dVPCj0RZ61
 7kBu2TPUzCIwKLlo=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ocrZ4-003bxJ-19 for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 17:06:42 +0000
Received: by mail-il1-f198.google.com with SMTP id
 i24-20020a056e021d1800b002f7ee6bcb7eso5572018ila.12
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Sep 2022 10:06:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=RXZoyMLrw91eDBbUfEfSdQlOyXaEU9f2n9v5+RhyspQ=;
 b=tqASpHYomI4yZuYkADQiJSGMfR/L95sF3AfW3JP1wvbOVZV95OT2l/NfTDpgNMxw4/
 wbzr5hGYKAMq+Jc9Qq8ZWIkiZyfVKBpk2B3zOJW1ZRNpLvBG51wMtrfEzZS5ttzsWKi8
 rRR1OZt/dwvunZeh4FBUIDdTO4TTjSB15J5VN+D7VPdyUTxenrucNk/JuhpHFFy/6494
 CH64rRKW22RF1MR08sYj/LqYTzmK+nAL7Zf9NTFAlIq1bqIRqPNe3Ovyc7zy5ni7gj0F
 v3gIj9FRrJdXAtVaw4HyRCXusXE7LUkcM+mEZlDSo+Ca/5G6bJopvBQNPGjWe/tAaDdV
 iygA==
X-Gm-Message-State: ACrzQf3lpm34S+k6kuyW/5iywMqJYG+fpaEsxaW0AedwmCFGykpFjlFx
 bY0bswiMtSiuDB+Kw2I0vAkvKgKdHLN9bXUO/6rKzMMZ9BdA
X-Google-Smtp-Source: AMsMyM7kepRbJsY/yXdJvuXPzPDIjFvrRcUc6p4/5u4mDLorGoCEPEp+x2HdZtM5pYxsLYQ+XGrY0ZSQGlaHGP6CKWSykiqt8yZ0
MIME-Version: 1.0
X-Received: by 2002:a92:ccd0:0:b0:2f6:274c:f564 with SMTP id
 u16-20020a92ccd0000000b002f6274cf564mr11177700ilq.116.1664211996329; Mon, 26
 Sep 2022 10:06:36 -0700 (PDT)
Date: Mon, 26 Sep 2022 10:06:36 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000df57ee05e9978cce@google.com>
From: syzbot <syzbot+027aa1f5f8487ba60a97@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: f76349cf4145
 Linux 6.0-rc7 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=17928d60880000
 kernel config: https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1 [...]
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1ocrZ4-003bxJ-19
X-Mailman-Approved-At: Mon, 26 Sep 2022 17:07:24 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in jfs_open
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
console output: https://syzkaller.appspot.com/x/log.txt?x=17928d60880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=027aa1f5f8487ba60a97
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+027aa1f5f8487ba60a97@syzkaller.appspotmail.com

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/file.c:65:20
shift exponent 8205 is too large for 64-bit type '__u64' (aka 'unsigned long long')
CPU: 0 PID: 9735 Comm: syz-executor.4 Not tainted 6.0.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 jfs_open+0x3a2/0x3d0 fs/jfs/file.c:65
 do_dentry_open+0x777/0x1180 fs/open.c:880
 do_open fs/namei.c:3557 [inline]
 path_openat+0x25fc/0x2df0 fs/namei.c:3691
 do_filp_open+0x264/0x4f0 fs/namei.c:3718
 do_sys_openat2+0x124/0x4e0 fs/open.c:1313
 do_sys_open fs/open.c:1329 [inline]
 __do_sys_open fs/open.c:1337 [inline]
 __se_sys_open fs/open.c:1333 [inline]
 __x64_sys_open+0x221/0x270 fs/open.c:1333
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f5cbf28a669
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f5cc0365168 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 00007f5cbf3ac120 RCX: 00007f5cbf28a669
RDX: 00000000000003ec RSI: 0000000000004042 RDI: 00000000200058c0
RBP: 00007f5cbf2e5560 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffc1545e9af R14: 00007f5cc0365300 R15: 0000000000022000
 </TASK>
================================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
