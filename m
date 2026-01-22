Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LhgDe2BcmnFlgAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 22 Jan 2026 21:00:45 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 336456D4EF
	for <lists+jfs-discussion@lfdr.de>; Thu, 22 Jan 2026 21:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UFU+5lqC1jU4CqJGRMvGivLRDOgojFSi/iIPWjgbhYw=; b=RMUl5BlYVD3a4Iik4eseOuZ3Ey
	TNlaxiHE0cGTDsl7UR3KoWyBLkmnNWvRPfG6zBE7iUP1w0eMBitG57C1t10huHTl0tsulMNoOITNK
	+Zst3DFmu613+X1NQ8pGV1ullgY8AKsx3Rf242LLTG7nXYAh6ip3MZ3LTYiNbuLXQTmM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vj0qZ-00066l-6w;
	Thu, 22 Jan 2026 20:00:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3QnFyaQkbAEEv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vizkX-0006gI-6q for jfs-discussion@lists.sourceforge.net;
 Thu, 22 Jan 2026 18:49:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YfURiHF4NJvPK5avqS9ua7ThJSOSbPiSDn7pjL0HLwY=; b=LrGYTCbs1eH7lH94MthQBAdp27
 0pctU9Hvj39Qh9LnUaW/klNnF/xogRepObAgJjdVjQTvw3rH94VP2PqHgBWxzTjM3Tu0zvzKIilrh
 yNK1RVKFmlh5SnqqrodC7rVKIYSpTZgI0ZWo40HmIAUsoS5GiUJIVXySPucR7sbjoinE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YfURiHF4NJvPK5avqS9ua7ThJSOSbPiSDn7pjL0HLwY=; b=c
 eZLxua5kf+dBO+DLHJ/w5o7obr6K+hoL/DAk4LoHUo9t3RcisUBr4KIqrAUVD9pWxTF91CU7wX+b1
 izuUncBftBaUIBqlbDewyQUiqrzTNHfzzyPgz6P8yCFZY+cISpechTBYOIRvOqEcflZImhDSahOAE
 c8FudBTcRLUC6xuM=;
Received: from mail-ot1-f78.google.com ([209.85.210.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vizkW-0004No-9o for jfs-discussion@lists.sourceforge.net;
 Thu, 22 Jan 2026 18:49:45 +0000
Received: by mail-ot1-f78.google.com with SMTP id
 46e09a7af769-7cfe286f517so2395980a34.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 22 Jan 2026 10:49:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769107778; x=1769712578;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YfURiHF4NJvPK5avqS9ua7ThJSOSbPiSDn7pjL0HLwY=;
 b=Cg1GAOCQXVW5+sm7Wd2FM0XNhWt0BvMbXHBDB9rxpV9mm5Ip390jReW5zZbwi4XGIY
 zmmlERYmJNEshkapEmBOof+TQeJPgQaSHj1Pb9CmGiGO2Hmn6FF/PPS2FdaPHVAn0cOB
 9bypFhHONuPx4hWTcWBysJVyzPhuBEGBKLUeedMRHn7xkON62orlg+f74/P9037lLl5n
 6DgkotOIQtEopCHoJhOAxrAqZCZIO4uXf+5yI7u/aUaLPmz48bkIghl+QCURhoF1GZEe
 dBWrDYN5kuD1CNIzw0lazEi+XxxV43z0znXL0QT9mnQnnIWj57+9ywlj4E09QB6dEzsC
 /EZw==
X-Gm-Message-State: AOJu0YypOpcdAfLf4eRAHBUZzmSg0hIKur51sdAKC7ZGgz1eLBnMBXGH
 wLWfQMZWwnA3joWcPKvd0pMbyBKrk1QjFzmeEFC0iyn2vl+s6m51urShthJS5CjSdr/CLYC05R4
 q0Gf3zRHDUxfqPPlWCcrkij3FER+vcrXJmCQfSo9RFIDpaLcHY33MSA8Qz+pfVA==
MIME-Version: 1.0
X-Received: by 2002:a05:6820:160f:b0:662:c0a9:e5b1 with SMTP id
 006d021491bc7-662cabb26f9mr364761eaf.80.1769107778742; Thu, 22 Jan 2026
 10:49:38 -0800 (PST)
Date: Thu, 22 Jan 2026 10:49:38 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69727142.050a0220.706b.0027.GAE@google.com>
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
 syzbot found the following issue on: HEAD commit: e84d960149e7
 Merge tag 'for-6.19-rc5-tag' of git://git.ker.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=16784b9a580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.78 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vizkW-0004No-9o
X-Mailman-Approved-At: Thu, 22 Jan 2026 20:00:01 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] KMSAN: uninit-value in txLock
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
Reply-To: syzbot <syzbot+d3a57c32b9112d7b01ec@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=46b5f80a6e7aaa5c];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	DBL_BLOCKED_OPENRESOLVER(0.00)[syzkaller.appspot.com:url,storage.googleapis.com:url,appspotmail.com:email,goo.gl:url];
	TO_DN_NONE(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-];
	NEURAL_HAM(-0.00)[-1.000];
	REDIRECTOR_URL(0.00)[goo.gl];
	HAS_REPLYTO(0.00)[syzbot+d3a57c32b9112d7b01ec@syzkaller.appspotmail.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Queue-Id: 336456D4EF
X-Rspamd-Action: no action

Hello,

syzbot found the following issue on:

HEAD commit:    e84d960149e7 Merge tag 'for-6.19-rc5-tag' of git://git.ker..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=16784b9a580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=46b5f80a6e7aaa5c
dashboard link: https://syzkaller.appspot.com/bug?extid=d3a57c32b9112d7b01ec
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=158fdb9a580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=170153fa580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/2d9623942f5a/disk-e84d9601.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/61b0e15f8560/vmlinux-e84d9601.xz
kernel image: https://storage.googleapis.com/syzbot-assets/8b71c88680c4/bzImage-e84d9601.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/7023ce628e6e/mount_2.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=130153fa580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d3a57c32b9112d7b01ec@syzkaller.appspotmail.com

=====================================================
BUG: KMSAN: uninit-value in txLock+0x13a2/0x2900 fs/jfs/jfs_txnmgr.c:659
 txLock+0x13a2/0x2900 fs/jfs/jfs_txnmgr.c:659
 xtTruncate+0x1002/0x5050 fs/jfs/jfs_xtree.c:2337
 jfs_truncate_nolock+0x223/0x670 fs/jfs/inode.c:396
 jfs_truncate fs/jfs/inode.c:420 [inline]
 jfs_write_failed+0x207/0x3c0 fs/jfs/inode.c:295
 jfs_write_end+0xcc/0x110 fs/jfs/inode.c:322
 generic_perform_write+0x999/0x1050 mm/filemap.c:4335
 __generic_file_write_iter+0x213/0x460 mm/filemap.c:4431
 generic_file_write_iter+0x131/0x980 mm/filemap.c:4457
 new_sync_write fs/read_write.c:593 [inline]
 vfs_write+0xbe2/0x15d0 fs/read_write.c:686
 ksys_pwrite64 fs/read_write.c:793 [inline]
 __do_sys_pwrite64 fs/read_write.c:801 [inline]
 __se_sys_pwrite64 fs/read_write.c:798 [inline]
 __x64_sys_pwrite64+0x2ab/0x3b0 fs/read_write.c:798
 x64_sys_call+0xbaf/0x3e70 arch/x86/include/generated/asm/syscalls_64.h:19
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xd3/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Uninit was created at:
 __alloc_frozen_pages_noprof+0x421/0xab0 mm/page_alloc.c:5263
 alloc_pages_mpol+0x328/0x860 mm/mempolicy.c:2486
 alloc_frozen_pages_noprof mm/mempolicy.c:2557 [inline]
 alloc_pages_noprof+0x102/0x280 mm/mempolicy.c:2577
 vm_area_alloc_pages mm/vmalloc.c:3649 [inline]
 __vmalloc_area_node mm/vmalloc.c:3863 [inline]
 __vmalloc_node_range_noprof+0xa94/0x2d90 mm/vmalloc.c:4051
 __vmalloc_node_noprof mm/vmalloc.c:4111 [inline]
 vmalloc_noprof+0xce/0x140 mm/vmalloc.c:4146
 txInit+0xb5c/0xfa0 fs/jfs/jfs_txnmgr.c:297
 init_jfs_fs+0x1b2/0xcb0 fs/jfs/super.c:977
 do_one_initcall+0x22b/0xad0 init/main.c:1378
 do_initcall_level+0x157/0x2e0 init/main.c:1440
 do_initcalls+0x176/0x310 init/main.c:1456
 do_basic_setup+0x1d/0x30 init/main.c:1475
 kernel_init_freeable+0x214/0x430 init/main.c:1688
 kernel_init+0x2f/0x5e0 init/main.c:1578
 ret_from_fork+0x208/0x710 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:246

CPU: 1 UID: 0 PID: 6025 Comm: syz.0.17 Not tainted syzkaller #0 PREEMPT(none) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/25/2025
=====================================================


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
