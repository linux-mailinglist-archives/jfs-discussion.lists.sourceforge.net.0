Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C48E15EACB6
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Sep 2022 18:38:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ocr7L-00066L-7j;
	Mon, 26 Sep 2022 16:38:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3JNQxYwkbALMlrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ocr2E-00061e-Fh for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 16:32:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CPZvLmvgmmIL31BbqFncbnTIzAtKgNpQNnol62z/2wA=; b=abYqQWDMNGlLAVW7Nf3w+2A8cd
 gbWLxkEkwwMpd3cLCcwH0+q6PVVvzW+a1IpnRGafqBS0XHMouwDzMx30kfyDJrRJOHvarFNd+Wm0d
 IzuYHuBpk5sF2BrPGtrqNuZpIg2JivTnrqtWt9qcDU5gGvWGysauqKDAcNKW3BadZIKc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CPZvLmvgmmIL31BbqFncbnTIzAtKgNpQNnol62z/2wA=; b=I
 4a6C7cPpxuOzcB4Sq0oFJg6zqePpUUi1szu0DUH/WW2vpzkrESwbuQZqccpRKyye1kpyjCC9ATQIv
 FogrU/gpWkmpe0a/GOfmZGa8r9ugXN3qTjGN1+jxSlv1Tc7O1YwxPz9f7gTqvHj4b3VhzP7jf9wjZ
 2yh2hwV1R5KtiSd0=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ocr2A-0001m3-3H for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Sep 2022 16:32:46 +0000
Received: by mail-io1-f70.google.com with SMTP id
 u23-20020a6be917000000b0069f4854e11eso4130978iof.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Sep 2022 09:32:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=CPZvLmvgmmIL31BbqFncbnTIzAtKgNpQNnol62z/2wA=;
 b=hjQ03dZpZsJ+AdYrqdx/w4XnA1hYdKiBUeR9H7ygp+cMzp0t1dEwNOVfG13y/B2bqB
 P1Cqrc6hiV4GhxX3QaKsuHfYl0Lc9p/LOqcC8SwXo1ltiba/aS+FTfcE+jJx2KiK09RT
 xBBoVoA+oQpPCOx17qp8hnqU/cnCZFgjzbApKKN+WLkALo0Ku/eBYeW7j0tEkZXSdS/9
 0YodQ1Biiy9TDF5ORZ12f+GFUh5vBru8VlQfHVaxEs+d6Rp0AmYQp4Lq30YSzIIASX+n
 srcIW6cunbapfPqJdD65gsKLXln+O/yRUB/yEbr2SE3Ngg+f+gREyPXqDq3hstUMab0e
 aphg==
X-Gm-Message-State: ACrzQf2D4Fi3QPG766PC2LNHeJwGLum03IOWgOTYn1IyOvhwYVcJ+Soe
 5Df+uQj+VsHyxMwI+QUbc5PxQj8tRwNtWS/FVVOra1DAcabq
X-Google-Smtp-Source: AMsMyM7Eq3HeZPdRP094BU2+h8q2AMKJycG3mryWGHmtb3xZMV3sNrkbc+39hteb1IZifHjAH6tu16igGpOpUcptJvMgTY5PwVNH
MIME-Version: 1.0
X-Received: by 2002:a02:711b:0:b0:359:1955:9997 with SMTP id
 n27-20020a02711b000000b0035919559997mr12655042jac.203.1664209956529; Mon, 26
 Sep 2022 09:32:36 -0700 (PDT)
Date: Mon, 26 Sep 2022 09:32:36 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004a6d9505e99713e0@google.com>
From: syzbot <syzbot+a41ec88f6b014e3da07b@syzkaller.appspotmail.com>
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
 Linux 6.0-rc7 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=15f64288880000
 kernel config: https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1 [...]
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
X-Headers-End: 1ocr2A-0001m3-3H
X-Mailman-Approved-At: Mon, 26 Sep 2022 16:38:01 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbAlloc
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
console+strace: https://syzkaller.appspot.com/x/log.txt?x=15f64288880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=a41ec88f6b014e3da07b
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16880b18880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=157311df080000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a41ec88f6b014e3da07b@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 264192
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:776:12
shift exponent 1834973817 is too large for 64-bit type 'long long'
CPU: 0 PID: 3608 Comm: syz-executor347 Not tainted 6.0.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 dbAlloc+0xbdc/0xc90 fs/jfs/jfs_dmap.c:776
 extBalloc fs/jfs/jfs_extent.c:321 [inline]
 extAlloc+0x4b9/0xff0 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x342/0xce0 fs/jfs/inode.c:248
 __block_write_begin_int+0x5f6/0x1ba0 fs/buffer.c:2006
 __block_write_begin fs/buffer.c:2056 [inline]
 block_write_begin+0x93/0x1e0 fs/buffer.c:2117
 jfs_write_begin+0x2d/0x60 fs/jfs/inode.c:304
 generic_perform_write+0x2a8/0x5b0 mm/filemap.c:3738
 __generic_file_write_iter+0x176/0x400 mm/filemap.c:3866
 generic_file_write_iter+0xab/0x310 mm/filemap.c:3898
 do_iter_write+0x6c2/0xc20 fs/read_write.c:855
 vfs_writev fs/read_write.c:928 [inline]
 do_writev+0x23e/0x430 fs/read_write.c:971
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f72b62b4f39
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe31a1b658 EFLAGS: 00000246 ORIG_RAX: 0000000000000014
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f72b62b4f39
RDX: 0000000000000001 RSI: 0000000020000000 RDI: 0000000000000003
RBP: 00007f72b6274700 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000f8008000
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
