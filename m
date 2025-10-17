Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 862D2BE8F6A
	for <lists+jfs-discussion@lfdr.de>; Fri, 17 Oct 2025 15:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IMRHJEMshf6c3bJEGsasQK3OAZRrpmvD3admGr6dQ1Y=; b=R+JphzVcXy0Tw403ehKCdbShHg
	zS6cPAUxK88qoo63+WlhVBtNfGqOi/K4IQDm7x7xgVmVzXA/EdmvqcRI7ksD9H6mgSd0DPQHMedZo
	Rv68MFVHK+5SxCYRLSJ++/Yb8OQ6CfrKLkOH7eThbR29UZNBLIoZPFQsHa7H/2yZ1Z0w=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v9khJ-0007eR-0S;
	Fri, 17 Oct 2025 13:40:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3lMfxaAkbADkntufVggZmVkkdY.bjjbgZpnZmXjioZio.Xjh@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1v9cBr-0003Vq-S8 for jfs-discussion@lists.sourceforge.net;
 Fri, 17 Oct 2025 04:35:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QrrA6yogJoytvN1hF9nAET8Z+V5twXRPGUL0SN6HeuE=; b=AJipaEUELcyPnpXiZ381bv59yT
 IUGNrzfclLbM20cJVLYXqwBNszKs+lw3oCmZrGl7rjKwLeUW/OKTiykVvCbLDoa43Yh4Muu8lT9i+
 DaYEupMARS2DTUGPHijZ+2c6FTf1qP41eue5UU76VbVNYrdz2GIXussVi7DneU4ViJ28=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QrrA6yogJoytvN1hF9nAET8Z+V5twXRPGUL0SN6HeuE=; b=F
 oHZcsyUEAvHzeqAvMrDnhLFAxVHs1kU7jz8cL9BKyHbaYz4QHY2gxKBa3JBsNCLD1/BcE8Bi+vLI7
 mV83lohx8YiUxvL0wEh4niIQtUYzBNz3UVyXNGWkQjk450lfqnHbFjJfvgo9Tml/aPNMfBTW8vt/r
 2WJ4QzKOc4ZOYvuk=;
Received: from mail-il1-f208.google.com ([209.85.166.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v9cBr-0002Mj-Br for jfs-discussion@lists.sourceforge.net;
 Fri, 17 Oct 2025 04:35:43 +0000
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-430b03322ffso43661335ab.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 16 Oct 2025 21:35:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760675732; x=1761280532;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QrrA6yogJoytvN1hF9nAET8Z+V5twXRPGUL0SN6HeuE=;
 b=rH44EIO7d53/A//+gydkIDVFj5v2T+EcK/+6Xftie4K4Fmmnvd7gTS5w6Qq65lhTlL
 xyH5YYZ0dhpVbKURItvOcTpjVo+0IYKaZ7VIEF2EgOQYB38GfFudhfWqWunMnbSMQBVp
 nq9QdTfaH8r6SRIjXuuKypynMfIhrjpO9nSvEURhcWHIl/nmK2YcXERmG+/d2IAMKy6M
 CZRlQoVxv5xvtZ8p026H3MQ5NwJ8pD9wNZvcs3emvhw+0JaylVUa/Eg+FZaJbyOBUL8W
 jjMMGh2kv+nN9oUr7dWCYE7vGvKlWokDPBQetdvuxEeOTSKbH1dW054u45gePAhqmLGw
 63iw==
X-Gm-Message-State: AOJu0YyE893DM65WByJ7rJ1MPkr+RrWKZ0Tft60t7vMPx0COwu5GF5/R
 LnlQWcKBvj5afNLVBOZ2ZRcY5Vw76FpK4FuXJVR6/8ANM2bLMOrIAY9ZxuzgMFGMXZUH0CZIM60
 W3fPfC1Hg23SjMHkdd8Srdh/e8GkuTuMgG/7GtFfyAB2OWRX9YIDs9nWoFqLfRQ==
X-Google-Smtp-Source: AGHT+IH6UbAeecHDuAvKxcgIbUdjXm6ThLX5Z1PFdR7HStKUtHJb37/hGofOkznOzs0WR8f7YiMgLVCXf0PYmZDHeUFRFSxpnx+R
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:12e9:b0:430:c0e4:9e43 with SMTP id
 e9e14a558f8ab-430c52343e2mr39728875ab.6.1760675732668; Thu, 16 Oct 2025
 21:35:32 -0700 (PDT)
Date: Thu, 16 Oct 2025 21:35:32 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68f1c794.a00a0220.361615.000f.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 7ea30958b305
 Merge tag 'vfs-6.18-rc2.fixes' of git://git.k.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=10eee5e2580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.208 listed in wl.mailspike.net]
X-Headers-End: 1v9cBr-0002Mj-Br
X-Mailman-Approved-At: Fri, 17 Oct 2025 13:40:43 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbAllocAG (3)
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
Reply-To: syzbot <syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7ea30958b305 Merge tag 'vfs-6.18-rc2.fixes' of git://git.k..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=10eee5e2580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=af9170887d81dea1
dashboard link: https://syzkaller.appspot.com/bug?extid=4b717071f1eecb2972df
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16a64b04580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12c8bdcd980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/3e5414d12be0/disk-7ea30958.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f88a30954acd/vmlinux-7ea30958.xz
kernel image: https://storage.googleapis.com/syzbot-assets/aa2283ab9f73/bzImage-7ea30958.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/ffc7d81ee40c/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=1585552f980000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com

------------[ cut here ]------------
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1440:48
shift exponent -1 is negative
CPU: 0 UID: 0 PID: 6076 Comm: syz.0.17 Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/02/2025
Call Trace:
 <TASK>
 dump_stack_lvl+0x189/0x250 lib/dump_stack.c:120
 ubsan_epilogue+0xa/0x40 lib/ubsan.c:233
 __ubsan_handle_shift_out_of_bounds+0x386/0x410 lib/ubsan.c:494
 dbAllocAG+0xfc0/0xff0 fs/jfs/jfs_dmap.c:1440
 dbAlloc+0x5a8/0xba0 fs/jfs/jfs_dmap.c:877
 extBalloc fs/jfs/jfs_extent.c:336 [inline]
 extAlloc+0x54a/0xfb0 fs/jfs/jfs_extent.c:127
 jfs_get_block+0x346/0xab0 fs/jfs/inode.c:254
 __block_write_begin_int+0x6b5/0x1900 fs/buffer.c:2145
 block_write_begin+0x8a/0x120 fs/buffer.c:2256
 jfs_write_begin+0x35/0x80 fs/jfs/inode.c:306
 generic_perform_write+0x29d/0x8c0 mm/filemap.c:4242
 generic_file_write_iter+0x118/0x550 mm/filemap.c:4385
 new_sync_write fs/read_write.c:593 [inline]
 vfs_write+0x5d5/0xb40 fs/read_write.c:686
 ksys_write+0x14b/0x260 fs/read_write.c:738
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xfa0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fa99272eec9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fffa62c1048 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007fa992985fa0 RCX: 00007fa99272eec9
RDX: 0000000000000014 RSI: 0000200000000380 RDI: 0000000000000005
RBP: 00007fa9927b1f91 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007fa992985fa0 R14: 00007fa992985fa0 R15: 0000000000000003
 </TASK>
---[ end trace ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
