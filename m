Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E92779D2E6
	for <lists+jfs-discussion@lfdr.de>; Tue, 12 Sep 2023 15:54:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qg3pj-0000VE-GG;
	Tue, 12 Sep 2023 13:53:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <33-P_ZAkbANQIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qfug1-000698-0d for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Sep 2023 04:07:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6E47/Irv5Uk33hq3o2zg4bhrFhyx80Z0DFL2FqCNfWU=; b=am1ken1gtGilWgWkWT2MMGV48M
 uSIPec2HqQSmxAjZJ7V5k5aqGCzmyo6R5PybNuXx7wrd7wxgP1Cf1eWVhHyuP5qtaXFP7yLnVRLWV
 rM5V9yxHZwH22lFfa2lYfGMQ8lTO9c7Yw9L35jrsk9ZBtaPyyllXw+RZKTuCoHGFgqRI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6E47/Irv5Uk33hq3o2zg4bhrFhyx80Z0DFL2FqCNfWU=; b=P
 nlqg15Wr9AXnxND6nrfU7RnQzgWEGte1GpfbQfM9LzFsViF4Hq9Z4aRTU3qmItCjHmfXj3COAODYj
 SCtDCUuLC4+lQyW4ogCciBeFOV5wCfC/a3wDfs6r221l72RB4BSerytuQDAKlSHAz+8rV7yqwqodJ
 LCZkAOZlqakDPoNI=;
Received: from mail-pj1-f77.google.com ([209.85.216.77])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qfug1-0002ic-0z for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Sep 2023 04:07:01 +0000
Received: by mail-pj1-f77.google.com with SMTP id
 98e67ed59e1d1-26f49625bffso6155676a91.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 11 Sep 2023 21:07:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694491615; x=1695096415;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6E47/Irv5Uk33hq3o2zg4bhrFhyx80Z0DFL2FqCNfWU=;
 b=X8yWEhh0twTmVrTrCt15NyDUgjnfhrDpv55p+1Gr3n3MiKWEIyt0rqk69fCw0uNWDi
 P8OL93LzWxn53dyf9QHUpd57fb0r/It+of59A3mO/GHLKNnpxeHN4hHkrIoWdH8AZo/N
 +69QJwdr88G/D3pani86yh5koqz8L19RkYR+O7mcfiOu42BiKoc80XykLGc9/LxZM0/9
 8Oi/OOfHWNa3D1sCDQEseWAHTg9eHNAMN4Urfa8QOVSkWkvZ2/Ah7lcR5917F8uH/jvj
 L0PwytIppZ/qQrmDH94Oc5NCe4PStKUxbVZmy49Cbvv9a9zsG6Bb0/J+Rr8lkKNjUjnp
 FACg==
X-Gm-Message-State: AOJu0YwFYAPOqG7sCBqcwMKuc7D0GQuptu3Qv16Net30xnW4nnsemIDn
 RI0dmoSRiFFLDtVle/l/GCow3jBkVMIKfecurSqF0zYphR2I
X-Google-Smtp-Source: AGHT+IEfQH2zKeGqfw4CBvyEgWULJNnVsBsRlwmt/LxnYZ3GYezn0kTtBvpmBo1CCIMW/6IyleBLikpSofSzR+Tjwp3GgxjwN7FA
MIME-Version: 1.0
X-Received: by 2002:a17:90a:de8e:b0:26d:26eb:c577 with SMTP id
 n14-20020a17090ade8e00b0026d26ebc577mr2987302pjv.6.1694491615330; Mon, 11 Sep
 2023 21:06:55 -0700 (PDT)
Date: Mon, 11 Sep 2023 21:06:55 -0700
In-Reply-To: <00000000000054e4d10601e44b24@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ce87a006052192ea@google.com>
To: aivazian.tigran@gmail.com, brauner@kernel.org, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 0bb80ecc33a8 Linux 6.6-rc1 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=123943c8680000 kernel config:
 https://syzkaller.appspot.com/x/.config?x=df91a3034fe [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.77 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.77 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qfug1-0002ic-0z
X-Mailman-Approved-At: Tue, 12 Sep 2023 13:53:37 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: null-ptr-deref Read in
 drop_buffers (2)
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
Reply-To: syzbot <syzbot+d285c6d0b23c6033d520@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    0bb80ecc33a8 Linux 6.6-rc1
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=123943c8680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=df91a3034fe3f122
dashboard link: https://syzkaller.appspot.com/bug?extid=d285c6d0b23c6033d520
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13802378680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13e15844680000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/dd8655c7bc5f/disk-0bb80ecc.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/4e170fb1db75/vmlinux-0bb80ecc.xz
kernel image: https://storage.googleapis.com/syzbot-assets/88d7ab5b54cd/bzImage-0bb80ecc.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/0fc14e142a3d/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d285c6d0b23c6033d520@syzkaller.appspotmail.com

find_entry called with index = 0
read_mapping_page failed!
ERROR: (device loop0): txCommit: 
ERROR: (device loop0): remounting filesystem as read-only
==================================================================
BUG: KASAN: null-ptr-deref in instrument_atomic_read include/linux/instrumented.h:68 [inline]
BUG: KASAN: null-ptr-deref in atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
BUG: KASAN: null-ptr-deref in buffer_busy fs/buffer.c:2896 [inline]
BUG: KASAN: null-ptr-deref in drop_buffers+0x6f/0x700 fs/buffer.c:2908
Read of size 4 at addr 0000000000000060 by task syz-executor224/5036

CPU: 1 PID: 5036 Comm: syz-executor224 Not tainted 6.6.0-rc1-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/04/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 print_report+0xe6/0x540 mm/kasan/report.c:478
 kasan_report+0x175/0x1b0 mm/kasan/report.c:588
 kasan_check_range+0x27e/0x290 mm/kasan/generic.c:187
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
 buffer_busy fs/buffer.c:2896 [inline]
 drop_buffers+0x6f/0x700 fs/buffer.c:2908
 try_to_free_buffers+0x295/0x5f0 fs/buffer.c:2938
 shrink_folio_list+0x271a/0x8870 mm/vmscan.c:2068
 shrink_inactive_list mm/vmscan.c:2614 [inline]
 shrink_list mm/vmscan.c:2855 [inline]
 shrink_lruvec+0x16e6/0x2d30 mm/vmscan.c:6319
 shrink_node_memcgs mm/vmscan.c:6505 [inline]
 shrink_node+0x1176/0x28c0 mm/vmscan.c:6540
 shrink_zones mm/vmscan.c:6779 [inline]
 do_try_to_free_pages+0x717/0x19e0 mm/vmscan.c:6841
 try_to_free_mem_cgroup_pages+0x455/0xa50 mm/vmscan.c:7156
 try_charge_memcg+0x5e1/0x16e0 mm/memcontrol.c:2691
 obj_cgroup_charge_pages mm/memcontrol.c:3105 [inline]
 __memcg_kmem_charge_page+0x21e/0x380 mm/memcontrol.c:3131
 __alloc_pages+0x28b/0x670 mm/page_alloc.c:4443
 __alloc_pages_node include/linux/gfp.h:237 [inline]
 alloc_pages_node include/linux/gfp.h:260 [inline]
 bpf_ringbuf_area_alloc kernel/bpf/ringbuf.c:122 [inline]
 bpf_ringbuf_alloc+0xcb/0x420 kernel/bpf/ringbuf.c:170
 ringbuf_map_alloc+0x1d3/0x2f0 kernel/bpf/ringbuf.c:204
 map_create+0x849/0x1040 kernel/bpf/syscall.c:1207
 __sys_bpf+0x6a2/0x810 kernel/bpf/syscall.c:5317
 __do_sys_bpf kernel/bpf/syscall.c:5439 [inline]
 __se_sys_bpf kernel/bpf/syscall.c:5437 [inline]
 __x64_sys_bpf+0x7c/0x90 kernel/bpf/syscall.c:5437
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7ff75fb611c9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 11 1a 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc0dbb0f28 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007ff75fb611c9
RDX: 0000000000000048 RSI: 0000000020000cc0 RDI: 0000000000000000
RBP: 00007ffc0dbb0f4c R08: ffffffffffffffff R09: ffffffffffffffff
R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffc0dbb0fa0
R13: 00007ffc0dbb0f60 R14: 000000000000cf31 R15: 0000000000000001
 </TASK>
==================================================================


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
