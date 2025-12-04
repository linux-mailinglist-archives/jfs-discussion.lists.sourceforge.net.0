Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BFDCA825A
	for <lists+jfs-discussion@lfdr.de>; Fri, 05 Dec 2025 16:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bAbtPtsr7KTrS5yxOhaDJ+znPzOR5OOtf29CqPksoKo=; b=BWxPLEKdyzlGI7A//az5GsSQBN
	5se7vQG8D2mdQO88b2cBwdxsHehRNjlaElCVNjHHVH9UMXQlKZjENagsHKQsrvtvn2SUSs2Hh9GQW
	lnIht9Sh37/wICxA4hNzed6Wy1F7YDzkZ6CC4r1AoWjSPwxnELUsP1zyNuI91roWw2Fw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vRXWi-0003o7-EK;
	Fri, 05 Dec 2025 15:15:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <38RMyaQkbADIgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vRIPF-0002lM-4g for jfs-discussion@lists.sourceforge.net;
 Thu, 04 Dec 2025 23:06:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/JbadZ7COpe+F2eYyyrsqq4UTVq0oPWQw8RvHpqF6dk=; b=Xly9Si4y2xivEIh617L8zcP3iY
 FEjkgwUC87+Q5mTs9Yv9XuoSSySUAroRA/vZfm1w9Mvb5+cDykJ4sDFq2Jp897Yeh8SUh8p9/vm8u
 x7+ZW5MIT4MOhvkAznUdokQWFXSYrPkvuymZXRVUOUm/DY/Xw4hd29YtyyW3QbhjdoQs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/JbadZ7COpe+F2eYyyrsqq4UTVq0oPWQw8RvHpqF6dk=; b=E
 aN0srLVjwyO3Pi8UxUCaaNmF2+LJjJPEBHMHGIjTDUD5iEeCo5ZxppouLwO6Tn69a/rtnwPNMzBjx
 GFco47mVtcZZcPDaRn37m5yH21a28abzUmeM6G37+1y7k3CKU/fZ7omtDvvI2uTaKDN6d1RkBRELL
 BpQ8pN4Qyhk/XBxk=;
Received: from mail-oo1-f80.google.com ([209.85.161.80])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vRIPE-0004rN-FY for jfs-discussion@lists.sourceforge.net;
 Thu, 04 Dec 2025 23:06:37 +0000
Received: by mail-oo1-f80.google.com with SMTP id
 006d021491bc7-6574d3d44f9so1933190eaf.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 04 Dec 2025 15:06:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764889586; x=1765494386;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/JbadZ7COpe+F2eYyyrsqq4UTVq0oPWQw8RvHpqF6dk=;
 b=K94H8zJQe6/uDSfFxyvrcaAm9v06Y8aMt+8Mjd8LiFUeuu7FzhtZWsZmnMszG2WUgb
 +KYDM5Pt0oDObD24G3A+ELbcnVEFqEVsEHRF5rpwE8IG67X0iVPuywjZ5ya1l/b2Zeq+
 3OIwyrm9mm1mTafcJushAsL+XkygW3RI4UtX7IbFRcZzp5M6O2J+U3DeMUThuopaf8KQ
 xfmUT2H790FqJxKoMw6fXu4UBVHqFjmodEYRl1C7OYjowQpYypWfJwzBfL/IUL7P5j9u
 JhOpSeCPLlUkIIFNalN7ZTv28QHXwdi42PKc/7uHgc+POA2a9zkQ/W5E8KV8TwNpJ9i+
 qT4A==
X-Gm-Message-State: AOJu0YwMfcBhff+J6/Ilw4Z87510mtJcOhOgrssF8Flj76JRRuizthz/
 9wmNbdFILqmP3UXPcM6NT0Z0J2YRFng07EuI8Y0rwqY5j6zBDvROsk367pId/522HbeQ0sqDGFv
 S+HeqHv0XBL4JhnZDCItHQ2l7NkkhARZDKU4trxThhbAL90R8Csfg3kSZ5/i+iw==
X-Google-Smtp-Source: AGHT+IHKYf+e/y2MSropsrWokahtNt0jZVYHT8jhjy/HxIKNg6j2WC8ur2AoIX7XdeGO04FZy5MRZpDCb/a0N1wtEoNnBVASmVF6
MIME-Version: 1.0
X-Received: by 2002:a05:6808:2191:b0:450:c976:496c with SMTP id
 5614622812f47-4536e39e3d7mr4200225b6e.3.1764889585861; Thu, 04 Dec 2025
 15:06:25 -0800 (PST)
Date: Thu, 04 Dec 2025 15:06:25 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <693213f1.a70a0220.d98e3.01de.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 7d31f578f323
 Add linux-next specific files for 20251128 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=142970c2580000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (0.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.80 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vRIPE-0004rN-FY
X-Mailman-Approved-At: Fri, 05 Dec 2025 15:15:19 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] general protection fault in
 inode_cgwb_move_to_attached
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
Reply-To: syzbot <syzbot+90f56ac0963995f6a919@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    7d31f578f323 Add linux-next specific files for 20251128
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=142970c2580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6336d8e94a7c517d
dashboard link: https://syzkaller.appspot.com/bug?extid=90f56ac0963995f6a919
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/6b49d8ad90de/disk-7d31f578.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/dbe2d4988ca7/vmlinux-7d31f578.xz
kernel image: https://storage.googleapis.com/syzbot-assets/fc0448ab2411/bzImage-7d31f578.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+90f56ac0963995f6a919@syzkaller.appspotmail.com

Oops: general protection fault, probably for non-canonical address 0xdffffc0104620b0f: 0000 [#1] SMP KASAN PTI
KASAN: probably user-memory-access in range [0x0000000823105878-0x000000082310587f]
CPU: 0 UID: 0 PID: 5833 Comm: syz-executor Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/25/2025
RIP: 0010:__list_del_entry_valid_or_report+0xa6/0x190 lib/list_debug.c:65
Code: 4d 89 fc 49 c1 ec 03 43 80 3c 2c 00 74 08 4c 89 ff e8 fe 5c 90 fd 49 39 1f 0f 85 92 00 00 00 4d 8d 7e 08 4d 89 fc 49 c1 ec 03 <43> 80 3c 2c 00 74 08 4c 89 ff e8 db 5c 90 fd 49 39 1f 0f 85 9e 00
RSP: 0018:ffffc900041df8a8 EFLAGS: 00010206
RAX: 1ffff1100a98fb05 RBX: ffff888054c7d828 RCX: ffff88802b525b80
RDX: 0000000000000000 RSI: 0000000000000001 RDI: ffff888054c7d830
RBP: 0000000000000001 R08: ffff888054c7d71b R09: 1ffff1100a98fae3
R10: dffffc0000000000 R11: ffffed100a98fae4 R12: 0000000104620b0f
R13: dffffc0000000000 R14: 0000000823105870 R15: 0000000823105878
FS:  0000555557b3f500(0000) GS:ffff888125e4f000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fc8a55156c0 CR3: 0000000064058000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 __list_del_entry_valid include/linux/list.h:132 [inline]
 __list_del_entry include/linux/list.h:223 [inline]
 list_del_init include/linux/list.h:295 [inline]
 inode_cgwb_move_to_attached+0x294/0x580 fs/fs-writeback.c:323
 writeback_single_inode+0x655/0xc70 fs/fs-writeback.c:1875
 write_inode_now+0x160/0x1d0 fs/fs-writeback.c:2924
 iput_final fs/inode.c:1941 [inline]
 iput+0xa77/0x1030 fs/inode.c:2003
 jfs_umount+0x199/0x3c0 fs/jfs/jfs_umount.c:65
 jfs_put_super+0x8c/0x190 fs/jfs/super.c:194
 generic_shutdown_super+0x135/0x2c0 fs/super.c:643
 kill_block_super+0x44/0x90 fs/super.c:1722
 deactivate_locked_super+0xbc/0x130 fs/super.c:474
 cleanup_mnt+0x425/0x4c0 fs/namespace.c:1328
 task_work_run+0x1d4/0x260 kernel/task_work.c:233
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 __exit_to_user_mode_loop kernel/entry/common.c:44 [inline]
 exit_to_user_mode_loop+0xff/0x4f0 kernel/entry/common.c:75
 __exit_to_user_mode_prepare include/linux/irq-entry-common.h:226 [inline]
 syscall_exit_to_user_mode_prepare include/linux/irq-entry-common.h:256 [inline]
 syscall_exit_to_user_mode_work include/linux/entry-common.h:159 [inline]
 syscall_exit_to_user_mode include/linux/entry-common.h:194 [inline]
 do_syscall_64+0x2e3/0xf80 arch/x86/entry/syscall_64.c:100
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fad1a390a77
Code: a8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 01 c3 48 c7 c2 a8 ff ff ff f7 d8 64 89 02 b8
RSP: 002b:00007ffffbd10c18 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 00007fad1a413d7d RCX: 00007fad1a390a77
RDX: 0000000000000000 RSI: 0000000000000009 RDI: 00007ffffbd10cd0
RBP: 00007ffffbd10cd0 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000246 R12: 00007ffffbd11d60
R13: 00007fad1a413d7d R14: 000000000002fabf R15: 00007ffffbd11da0
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__list_del_entry_valid_or_report+0xa6/0x190 lib/list_debug.c:65
Code: 4d 89 fc 49 c1 ec 03 43 80 3c 2c 00 74 08 4c 89 ff e8 fe 5c 90 fd 49 39 1f 0f 85 92 00 00 00 4d 8d 7e 08 4d 89 fc 49 c1 ec 03 <43> 80 3c 2c 00 74 08 4c 89 ff e8 db 5c 90 fd 49 39 1f 0f 85 9e 00
RSP: 0018:ffffc900041df8a8 EFLAGS: 00010206
RAX: 1ffff1100a98fb05 RBX: ffff888054c7d828 RCX: ffff88802b525b80
RDX: 0000000000000000 RSI: 0000000000000001 RDI: ffff888054c7d830
RBP: 0000000000000001 R08: ffff888054c7d71b R09: 1ffff1100a98fae3
R10: dffffc0000000000 R11: ffffed100a98fae4 R12: 0000000104620b0f
R13: dffffc0000000000 R14: 0000000823105870 R15: 0000000823105878
FS:  0000555557b3f500(0000) GS:ffff888125e4f000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fc8a55156c0 CR3: 0000000064058000 CR4: 00000000003526f0
----------------
Code disassembly (best guess):
   0:	4d 89 fc             	mov    %r15,%r12
   3:	49 c1 ec 03          	shr    $0x3,%r12
   7:	43 80 3c 2c 00       	cmpb   $0x0,(%r12,%r13,1)
   c:	74 08                	je     0x16
   e:	4c 89 ff             	mov    %r15,%rdi
  11:	e8 fe 5c 90 fd       	call   0xfd905d14
  16:	49 39 1f             	cmp    %rbx,(%r15)
  19:	0f 85 92 00 00 00    	jne    0xb1
  1f:	4d 8d 7e 08          	lea    0x8(%r14),%r15
  23:	4d 89 fc             	mov    %r15,%r12
  26:	49 c1 ec 03          	shr    $0x3,%r12
* 2a:	43 80 3c 2c 00       	cmpb   $0x0,(%r12,%r13,1) <-- trapping instruction
  2f:	74 08                	je     0x39
  31:	4c 89 ff             	mov    %r15,%rdi
  34:	e8 db 5c 90 fd       	call   0xfd905d14
  39:	49 39 1f             	cmp    %rbx,(%r15)
  3c:	0f                   	.byte 0xf
  3d:	85                   	.byte 0x85
  3e:	9e                   	sahf


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

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
