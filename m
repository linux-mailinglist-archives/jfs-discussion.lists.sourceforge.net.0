Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2096EC4088A
	for <lists+jfs-discussion@lfdr.de>; Fri, 07 Nov 2025 16:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JDzFVyMg3qrd/hgOPquDrv0HHgPYXDRPHFQpwVW7Y/4=; b=ZUuDoT+qN+R/J1HkL+elPXwcFH
	KiB33LJZUhG3jheWmec1EIH10sq44gepL+hOSFLa8fx2CagOoAqqMZSNUNgQqfiuETEfGOixAzzIX
	QHiVh6V7jH3lTasbsuSTrK0dVDR0A9ryajafIoSqzyO6uZhuDQ/qQG4e0BofZwR82Jfs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vHO44-0002hK-3v;
	Fri, 07 Nov 2025 15:07:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3058NaQkbAJgKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vHGuY-0007mv-8V for jfs-discussion@lists.sourceforge.net;
 Fri, 07 Nov 2025 07:29:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=elLBvF3NR3U9sPOSG0QINyPMQhDneG0NFmxvnTGIyos=; b=JcwBbfaIC3IxTZk+Tz9sKRgJB4
 PgPlSzO/NyiEXvvuCE6CqejwUdcZqeAQNC4xA6x8DBcfWLpk/5OgycRLvxK0Ht4HxE0r9GNXTxIv7
 L3XezLNRk1IvjMVE1IOsIJhCMt5HXQavRajw1e6iSvSrb9/pst93uqrYA7CGgTC0YI3Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=elLBvF3NR3U9sPOSG0QINyPMQhDneG0NFmxvnTGIyos=; b=f
 Y+gAatOcUJDjwV0KZ6w8sejg/tb2IeXna3BfxDeTYWJXNWUeOLBOEJV6crJPqokdfGm14GjSDN/wR
 3eDSyv0jCIkGQGc1eYE9n5siBlMMPIxqdUnw7W3oomiR6z8HMWpYT3//UzESf/4rTO52SH1/S/Jnq
 QyUa0qJ7XMB9p0Po=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vHGuX-0003YK-Ld for jfs-discussion@lists.sourceforge.net;
 Fri, 07 Nov 2025 07:29:30 +0000
Received: by mail-il1-f205.google.com with SMTP id
 e9e14a558f8ab-4332ae73d5cso3882745ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 06 Nov 2025 23:29:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762500564; x=1763105364;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=elLBvF3NR3U9sPOSG0QINyPMQhDneG0NFmxvnTGIyos=;
 b=qE4KM+vBLPShVYs6df73Xu8xZQjZs8IwN/Gq3j3d7RSL4y6dbxbIekUfuiLJcjV4A/
 Kbd/o9r6B5Ox1fBE9z/j80pIOJZexPSJChitEGzqMz2540hrfQi5V8JuOJi/86GRTQ1d
 xdRSuJW50Id+1sTdsekGzzTQHKLE784GD6c7JcJqePMY0+YmofKq46bfHh3rm15/Nxpg
 UWU+pzddy9vodpYGvjCDky8Qw+9otg47qyRes54MHAQMvTysZNRWnG51gkRhfzj+29Hl
 WXdbK6R/fTyV/TfZvnC1Ho41u8yqax87JAbd47BA2WxfweoyspK4k70sZv53yrLVW1wc
 wu/A==
X-Gm-Message-State: AOJu0Yy+WnVzNlBO7HwAHh494KvCLBGDQXjgxAXa+bxpJrucKuGz+zwM
 3nPgnM3eBHNkKi+XWrJ/53XHPVPvPtm62p9NwofglHJ7TE4/U1msU4ph+98pCsnhpl8DnzVaIle
 lJKPg3CE3F5kfCXSJ/LAGpxU/BdleMRPuN5t8G3rS2m+cYL/mGqC3mGDwMrTcxQ==
X-Google-Smtp-Source: AGHT+IG3lFor0ae7PvaoBhmAsLl69TPWuf62yHSW1JRCxxSsLzReWFsrW+xzJfUk76XMRaO8ppPdJoqUuZao0nT6Q+pjMAw7ZZFz
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:3485:b0:433:2943:3a78 with SMTP id
 e9e14a558f8ab-4335f478e35mr32160345ab.31.1762500563895; Thu, 06 Nov 2025
 23:29:23 -0800 (PST)
Date: Thu, 06 Nov 2025 23:29:23 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <690d9fd3.a70a0220.22f260.0021.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 8bb886cb8f3a
 Merge tag 'edac_urgent_for_v6.18_rc5' of git:.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1207c114580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.205 listed in wl.mailspike.net]
X-Headers-End: 1vHGuX-0003YK-Ld
X-Mailman-Approved-At: Fri, 07 Nov 2025 15:07:47 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] general protection fault in
 txCommit (2)
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
Reply-To: syzbot <syzbot+9489c9f9f3d437221ea2@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    8bb886cb8f3a Merge tag 'edac_urgent_for_v6.18_rc5' of git:..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1207c114580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=41ad820f608cb833
dashboard link: https://syzkaller.appspot.com/bug?extid=9489c9f9f3d437221ea2
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1033d012580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11ea1bcd980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/393661e2054b/disk-8bb886cb.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ba628b757c6a/vmlinux-8bb886cb.xz
kernel image: https://storage.googleapis.com/syzbot-assets/15255c2cc8ad/bzImage-8bb886cb.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/5ffcac92a4cf/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=125bf932580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9489c9f9f3d437221ea2@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
UFO tlock:0xffffc900034fa[  113.512606][ T5985] UFO tlock:0xffffc900034fa1b0
Oops: general protection fault, probably for non-canonical address 0xdffffc0000000005: 0000 [#1] SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000028-0x000000000000002f]
CPU: 0 UID: 0 PID: 5985 Comm: syz.0.17 Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/02/2025
RIP: 0010:txLog fs/jfs/jfs_txnmgr.c:1390 [inline]
RIP: 0010:txCommit+0xafb/0x5430 fs/jfs/jfs_txnmgr.c:1265
Code: 3c 10 00 74 12 4c 89 f7 e8 f2 cb e2 fe 48 ba 00 00 00 00 00 fc ff df 4c 89 74 24 68 4d 8b 36 4d 8d 7e 28 4c 89 f8 48 c1 e8 03 <80> 3c 10 00 74 12 4c 89 ff e8 c7 cb e2 fe 48 ba 00 00 00 00 00 fc
RSP: 0018:ffffc90003fc74e0 EFLAGS: 00010206
RAX: 0000000000000005 RBX: 0000000000000948 RCX: 1ffff9200069fd48
RDX: dffffc0000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc90003fc76b0 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffffbfff1dac5ef R12: 0000000000000002
R13: ffffc900034fa000 R14: 0000000000000000 R15: 0000000000000028
FS:  0000555570e52500(0000) GS:ffff888126df9000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000000 CR3: 0000000038f28000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 jfs_create+0x865/0xa80 fs/jfs/namei.c:156
 lookup_open fs/namei.c:3796 [inline]
 open_last_lookups fs/namei.c:3895 [inline]
 path_openat+0x1500/0x3840 fs/namei.c:4131
 do_filp_open+0x1fa/0x410 fs/namei.c:4161
 do_sys_openat2+0x121/0x1c0 fs/open.c:1437
 do_sys_open fs/open.c:1452 [inline]
 __do_sys_creat fs/open.c:1530 [inline]
 __se_sys_creat fs/open.c:1524 [inline]
 __x64_sys_creat+0x8f/0xc0 fs/open.c:1524
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xfa0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f575dbcf6c9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff260cfb28 EFLAGS: 00000246 ORIG_RAX: 0000000000000055
RAX: ffffffffffffffda RBX: 00007f575de25fa0 RCX: 00007f575dbcf6c9
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000200000000580
RBP: 00007f575dc51f91 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f575de25fa0 R14: 00007f575de25fa0 R15: 0000000000000002
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:txLog fs/jfs/jfs_txnmgr.c:1390 [inline]
RIP: 0010:txCommit+0xafb/0x5430 fs/jfs/jfs_txnmgr.c:1265
Code: 3c 10 00 74 12 4c 89 f7 e8 f2 cb e2 fe 48 ba 00 00 00 00 00 fc ff df 4c 89 74 24 68 4d 8b 36 4d 8d 7e 28 4c 89 f8 48 c1 e8 03 <80> 3c 10 00 74 12 4c 89 ff e8 c7 cb e2 fe 48 ba 00 00 00 00 00 fc
RSP: 0018:ffffc90003fc74e0 EFLAGS: 00010206
RAX: 0000000000000005 RBX: 0000000000000948 RCX: 1ffff9200069fd48
RDX: dffffc0000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc90003fc76b0 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffffbfff1dac5ef R12: 0000000000000002
R13: ffffc900034fa000 R14: 0000000000000000 R15: 0000000000000028
FS:  0000555570e52500(0000) GS:ffff888126df9000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000000 CR3: 0000000038f28000 CR4: 00000000003526f0
----------------
Code disassembly (best guess):
   0:	3c 10                	cmp    $0x10,%al
   2:	00 74 12 4c          	add    %dh,0x4c(%rdx,%rdx,1)
   6:	89 f7                	mov    %esi,%edi
   8:	e8 f2 cb e2 fe       	call   0xfee2cbff
   d:	48 ba 00 00 00 00 00 	movabs $0xdffffc0000000000,%rdx
  14:	fc ff df
  17:	4c 89 74 24 68       	mov    %r14,0x68(%rsp)
  1c:	4d 8b 36             	mov    (%r14),%r14
  1f:	4d 8d 7e 28          	lea    0x28(%r14),%r15
  23:	4c 89 f8             	mov    %r15,%rax
  26:	48 c1 e8 03          	shr    $0x3,%rax
* 2a:	80 3c 10 00          	cmpb   $0x0,(%rax,%rdx,1) <-- trapping instruction
  2e:	74 12                	je     0x42
  30:	4c 89 ff             	mov    %r15,%rdi
  33:	e8 c7 cb e2 fe       	call   0xfee2cbff
  38:	48                   	rex.W
  39:	ba 00 00 00 00       	mov    $0x0,%edx
  3e:	00 fc                	add    %bh,%ah


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
