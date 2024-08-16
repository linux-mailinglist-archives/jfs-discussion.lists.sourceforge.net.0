Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0956954FF3
	for <lists+jfs-discussion@lfdr.de>; Fri, 16 Aug 2024 19:23:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sf0fl-0007cb-Sc;
	Fri, 16 Aug 2024 17:23:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3koq_ZgkbAOEVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1sf0dp-0007wK-7B for jfs-discussion@lists.sourceforge.net;
 Fri, 16 Aug 2024 17:21:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IZaiE4/CykC4CjI1jiArqwDBbga3NJxhQD4fGAV/tik=; b=FpfPxDs5yvRS8y0XVN7zdzspb9
 iUFVmwSq9uGIl6lHc07XHt4t/UqshegRK1wEr25wRN2m4RfNnT64sbDj0SPDqVeJN/qTtEldVc1Hf
 XSpFQU5MZTP9sIDuj8OAlrNmAiXFAjv0HhemNDeIR4k2bGoSBqcFoWbeKWYrJ5Y3HR7M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IZaiE4/CykC4CjI1jiArqwDBbga3NJxhQD4fGAV/tik=; b=A
 H23annwUHmVuXVeDa08IpPCuJqM4RMic9lkIMubzyGGz1fiOXQvQm7cXHmKTrI7lnuNHV1JdGFsBT
 9urdwy/kKBlrR/AAgw6MsH9Vuzopu0kkQO/KLthbtiDjPX+Tn7Bq7u3fuoSaM0ZhW5qzzB/3v7kSs
 Ci6s1UZRZDSdB9wM=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sf0do-0003GQ-Ut for jfs-discussion@lists.sourceforge.net;
 Fri, 16 Aug 2024 17:21:33 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-81fa58fbeceso218776539f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 16 Aug 2024 10:21:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723828882; x=1724433682;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IZaiE4/CykC4CjI1jiArqwDBbga3NJxhQD4fGAV/tik=;
 b=b0eVcwq+8DlPqGDu7chn12mxvB9xnT+xq79A61gIx674Q2HDOL2I+ddxosouaFVRjg
 LwmIAKGmrGN09xcYBwvIgGawzLlmu4aZeiubm95IssXL1thKfd1vNO3cwRLN94EDs9JM
 DWrVn5+Ti5yHmnlzQB2Je8H+kRw1njQk2s7CnTlkxEnNs123EYNHbS8miGTZOTp1naGh
 EvhzyU6NlpP7h8yLukcycSrMPrCfzWty4MDQ7l5lCuU2FrQDaaaoP9U3ErCzJ+dnU1WJ
 2cCUjNH2mKMZAUc26ZYZd0r9na9ionQMkghwfGqiF420G3w/jVxOw3Va4JY13snXkxBQ
 +z+w==
X-Gm-Message-State: AOJu0YwLiqaXGKQVN5FeBtgaXhDtNLbfZJjXlUnPLA6PfDPKeA9pFyUU
 WI7ggURuAZxgs306ob/ElLROPN36o1KzECN0wqcaHqprWyItVJeNrBiovuYeoOTbqEADCYi899m
 FDfHwvpcc+TNO0YVbQMZ6azuE+QKkBTq1dzLEJ5+kgIjzRSMB/3a140k=
X-Google-Smtp-Source: AGHT+IEHNmA2K9MgZUoJypFuF47vnlsMQgCY50I0s+wuC/4g9V92thL7XdfT6WQ/lAS0ocTyO+bDBDEYAjFizW6B8xOZkEefe5fn
MIME-Version: 1.0
X-Received: by 2002:a05:6638:8903:b0:4b9:26f5:3632 with SMTP id
 8926c6da1cb9f-4cce1735129mr137692173.6.1723828882088; Fri, 16 Aug 2024
 10:21:22 -0700 (PDT)
Date: Fri, 16 Aug 2024 10:21:22 -0700
In-Reply-To: <000000000000d1e1180618b99e10@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002bb47c061fd030c7@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: d7a5aa4b3c00 Merge tag 'perf-tools-fixes-for-v6.11-2024-08..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=109f2df3980000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.69 listed in list.dnswl.org]
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.69 listed in psbl.surriel.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.69 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.69 listed in sa-trusted.bondedsender.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sf0do-0003GQ-Ut
X-Mailman-Approved-At: Fri, 16 Aug 2024 17:23:31 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in dbAdjTree (2)
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
Reply-To: syzbot <syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following issue on:

HEAD commit:    d7a5aa4b3c00 Merge tag 'perf-tools-fixes-for-v6.11-2024-08..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=109f2df3980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=92c0312151c4e32e
dashboard link: https://syzkaller.appspot.com/bug?extid=412dea214d8baa3f7483
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12114991980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11422f5d980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/64022429061b/disk-d7a5aa4b.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f4aba88f7db8/vmlinux-d7a5aa4b.xz
kernel image: https://storage.googleapis.com/syzbot-assets/120456a2d9dc/bzImage-d7a5aa4b.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/947fb73311a3/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2902:18
index -3 is out of range for type 's8[1365]' (aka 'signed char[1365]')
CPU: 0 UID: 0 PID: 5217 Comm: syz-executor310 Not tainted 6.11.0-rc3-syzkaller-00156-gd7a5aa4b3c00 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:93 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dbAdjTree+0x377/0x520 fs/jfs/jfs_dmap.c:2902
 dbAllocBits+0x4ea/0x990 fs/jfs/jfs_dmap.c:2193
 dbAllocDmap+0x6d/0x150 fs/jfs/jfs_dmap.c:2034
 dbAlloc+0x509/0xca0 fs/jfs/jfs_dmap.c:816
 extBalloc fs/jfs/jfs_extent.c:326 [inline]
 extAlloc+0x4f8/0x1010 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x41b/0xe60 fs/jfs/inode.c:248
 __block_write_begin_int+0x50c/0x1a70 fs/buffer.c:2125
 __block_write_begin fs/buffer.c:2174 [inline]
 block_write_begin+0x9b/0x1e0 fs/buffer.c:2235
 jfs_write_begin+0x31/0x70 fs/jfs/inode.c:299
 generic_perform_write+0x399/0x840 mm/filemap.c:4019
 generic_file_write_iter+0xaf/0x310 mm/filemap.c:4147
 new_sync_write fs/read_write.c:497 [inline]
 vfs_write+0xa72/0xc90 fs/read_write.c:590
 ksys_write+0x1a0/0x2c0 fs/read_write.c:643
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f8ed0fe9e99
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffed45f7398 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007f8ed1033095 RCX: 00007f8ed0fe9e99
RDX: 00000000fffffdef RSI: 00000000200000c0 RDI: 0000000000000004
RBP: 00007f8ed10645f0 R08: 00005555618f94c0 R09: 00005555618f94c0
R10: 0000000000006289 R11: 0000000000000246 R12: 00007ffed45f73c0
R13: 00007ffed45f75e8 R14: 431bde82d7b634db R15: 00007f8ed103303b
 </TASK>
---[ end trace ]---


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
