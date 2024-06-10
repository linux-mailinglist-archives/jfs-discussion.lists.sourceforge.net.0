Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAEB9027F5
	for <lists+jfs-discussion@lfdr.de>; Mon, 10 Jun 2024 19:46:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sGj66-00086e-Ke;
	Mon, 10 Jun 2024 17:46:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhiyuzhang999@gmail.com>) id 1sGj4r-0002Tq-8M
 for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Jun 2024 17:45:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X4Ar6Y+IfYfYh/Lslpr1g6uSdKMpAIwXMh69kGy9PdQ=; b=TUpBU3hVGkDlIlEE9Hed95wIuH
 gnfSkcrFrykd2IfTR1Oa3mbz+zxWmqGQPMoOk+hkuIUnbte5K1QFTn6LfZZp0kTiwTwM5rm6HbZCI
 yLeWDmuhffPcTP2yMjlvq64QMJyKXcTIWGRq6WP07ZlOiOBIv6d3nWzRwoNvQYmSg0fM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X4Ar6Y+IfYfYh/Lslpr1g6uSdKMpAIwXMh69kGy9PdQ=; b=b
 nY4PaJjPstDOVM1NVKXXRRA5eEm1o3+Ml2isTgm4KKr9Or9wbUpn12qDRHw+pAYHWMpAUJwpAPVEo
 OpMzl+NVjxdfKf8zTfrJk+lIuln+jzbNyThf8SLCgLSK2kXMATa0j9chs+rNwC9Mq+uuUD8Z2/vIq
 L0I4GqEVGIri1/LA=;
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sGj4q-000243-Hl for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Jun 2024 17:45:04 +0000
Received: by mail-qt1-f171.google.com with SMTP id
 d75a77b69052e-4405743ac19so17380911cf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 10 Jun 2024 10:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718041493; x=1718646293; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=X4Ar6Y+IfYfYh/Lslpr1g6uSdKMpAIwXMh69kGy9PdQ=;
 b=UfeWhCUYWZ4VWDzMiKlifBtskohYfF6T/BsVUSJI5KzT23bugoT6RUucPpGdnRQpBY
 9MZn8tXgCnMON2d0sMjIFtbglcyw23SoIcGdY0LndzE5tx4LorkCytwum4Jbd4wLRX6Y
 w+yts52lH9hwbDY/tCkC77m4dBMPOAp5StJJYkrWVhKHVYpL/5ArIIm7RqtZGUBZkime
 YJn8LPg3tFdZ2XkqFJqDPSsAnPO8fV5lBNvIvwH+Rpbpw+ZcMQ/dXk5D49t3zro4SB33
 ccVczAzg5S8H0cJEUzCqeN9KzMuNp1zCdF4XKoqmPNE9Y/7F0LPejn/o1nWtboS4tBm/
 XWng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718041493; x=1718646293;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=X4Ar6Y+IfYfYh/Lslpr1g6uSdKMpAIwXMh69kGy9PdQ=;
 b=DhCMJDacRxaKAXnr43mdvAhZxlT+cZV5uQNOEQTx6BpKvQYKjoApaIRmCvfLtvrHcI
 686qEe/8R7epor52qp6P8bmUyxgdbV1mUdi18ppmuTmYCzk0KvXoqy+Cks7qql8Fsn+R
 G+WBI5rrm7H0H+qDE3wT2cz2dQYiQKaLrfZxmAH6qj5KQ0iNv6sE6rGAmY5rKSvroMHs
 tqtvHXNJKD/IR5teC1m/lgZx2xkZCwiwkHr88rvHlW4MnEyN7XPESF3Xf6wZhA14wt2X
 KNDSwD4dpB/i/uFNMGBYJySWWJsMTo22MGiwIJ/9E1Kkqc67UwKEdLjB/4hBeBPphjPC
 25EQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUZ4xLbRZ2AplP1LYtSZpXh9mOFBniZBoh8CTbr7/jxN7VHJVz1RMig1zacd/GX/jwC8TX8SMOQbFdZOvNDe5OBRZ04WX167c4b3mYuqJm9L/+qq3E=
X-Gm-Message-State: AOJu0YwPPMGujbH5lQjAOCfzOLwib1O7bzz9Bw/jCB4sfM0Ygrr6uMw4
 C4vrDsJxsb9WZUXHXWJFK7uNgcet2aIzlmcnLwfQGcbqv6qatmgugNkk8wp4+lZ0UcZeyGDYY5R
 ApEPm2wATLaI7AzHbMDm+7yMU4cwRJWSDQpgR0A==
X-Google-Smtp-Source: AGHT+IFjgBI/thOToXIANuiSeCxT+5iVxixXL9tS7e/k7l8+pc+A1/0UmJLxiagGeYXPpPUuD5Pbn1n7mhTCHzgbzjk=
X-Received: by 2002:ac8:5a86:0:b0:440:f54d:1bbb with SMTP id
 d75a77b69052e-4413ab6eac9mr6663441cf.4.1718041492648; Mon, 10 Jun 2024
 10:44:52 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 11 Jun 2024 01:44:41 +0800
Message-ID: <CALf2hKuFn3g3Mg3kC1PiyGYZ5WdScF=+n-8DnYdsAuSLh48amQ@mail.gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, syzkaller@googlegroups.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi upstream maintainers and community,
 We found a Linux kernel
 bug with our modified Syzkaller. ===================== Meta info
 =====================
 Found version: 6.8 Affected files: fs/jfs/ioctl.c:131, fs/jfs/super.c:194
 Reproduced version: 6.8 ~ 6.9.3 ~ 6.10-rc3 (with or without sanitizers) [...]
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.171 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: create-image.sh]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.171 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhiyuzhang999[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhiyuzhang999[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sGj4q-000243-Hl
X-Mailman-Approved-At: Mon, 10 Jun 2024 17:46:21 +0000
Subject: [Jfs-discussion] [Kernel 6.9.3 BUG] general protection fault in
 jfs_ioc_trim (bad page state)
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
From: Zhang Zhiyu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Zhang Zhiyu <zhiyuzhang999@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi upstream maintainers and community,

We found a Linux kernel bug with our modified Syzkaller.

===================== Meta info =====================
Found version: 6.8
Affected files: fs/jfs/ioctl.c:131, fs/jfs/super.c:194
Reproduced version: 6.8 ~ 6.9.3 ~ 6.10-rc3 (with or without sanitizers)
Kernel config (e.g. for 6.9.3 with sanitizers disabled):
https://drive.google.com/file/d/1pJS6B2cMVX1XYIBUgSwpcG-vsb8MCQ-g/view?usp=sharing
Syz reproducer:
https://drive.google.com/file/d/1nz0jTx3-9FYGJ9ePyNmp46IuO-10WGZQ/view?usp=sharing
C reproducer: https://drive.google.com/file/d/1vqXhsSPDQX1l5DkaJYI92dEYwCnbDCqs/view?usp=sharing
Reproduction console output:
https://drive.google.com/file/d/1daq8GayqgVavEdofVLQQhyeLdU-jPm6H/view?usp=sharing

================== How to reproduce ==================
1. Create a image with syzkaller create-image.sh and boot it (or using
an existing one is ok)
2. Compile the repro.c with gcc and scp to qemu vm
3. Execute the repro and observe the bug backtrace looping.

======================= Report ======================
[copy from console output]
 [?2004hroot@syzkaller:~# ./bd08f46
 [?2004l
[  282.651266][   T30] audit: type=1400 audit(1718036000.960:9): avc:
denied  { execmem } for  pid=7748 comm="bd08f46"
scontext=system_u:system_r:kernel_t:s0
tcontext=system_u:system_r:kernel_t:s0 tclass=process permissive=1
[  282.836121][ T7749] loop0: detected capacity change from 0 to 32768
[  282.927686][ T7748] BUG: Bad page state in process bd08f46  pfn:5e2ab
[  282.928954][ T7748] page: refcount:0 mapcount:0
mapping:0000000000000000 index:0x3 pfn:0x5e2ab
[  282.930357][ T7748] flags:
0x4fff1800000820c(referenced|uptodate|workingset|private|node=1|zone=1|lastcpupid=0x7ff)
[  282.935368][ T7748] page_type: 0xffffffff()
[  282.936424][ T7748] raw: 04fff1800000820c dead000000000100
dead000000000122 0000000000000000
[  282.938473][ T7748] raw: 0000000000000003 ffff8880614fd558
00000000ffffffff 0000000000000000
[  282.940469][ T7748] page dumped because: PAGE_FLAGS_CHECK_AT_FREE flag(s) set
[  282.941989][ T7748] page_owner tracks the page as allocated
[  282.943817][ T7748] page last allocated via order 0, migratetype
Unmovable, gfp_mask 0x40c40(GFP_NOFS|__GFP_COMP), pid 7749, tgid 7749
(bd08f46), ts 282878748769, free_ts 282874052762
[  282.946592][ T7748]  post_alloc_hook+0x15c/0x180
[  282.947449][ T7748]  get_page_from_freelist+0x19d2/0x1b40
[  282.948414][ T7748]  __alloc_pages+0x117/0x2d0
[  282.949224][ T7748]  alloc_pages_mpol+0x266/0x380
[  282.950079][ T7748]  folio_alloc+0xd7/0x100
[  282.950832][ T7748]  do_read_cache_folio+0x8e/0x550
[  282.951711][ T7748]  do_read_cache_page+0x31/0x150
[  282.952644][ T7748]  __get_metapage+0x16f/0x8f0
[  282.953472][ T7748]  dbAdjCtl+0xa2/0x400
[  282.954196][ T7748]  dbAllocDmapLev+0x1f2/0x2d0
[  282.955018][ T7748]  dbAllocCtl+0x8c/0x4e0
[  282.955754][ T7748]  dbAllocAG+0xe5/0x590
[  282.956480][ T7748]  dbDiscardAG+0x1e4/0x500
[  282.957257][ T7748]  jfs_ioc_trim+0x161/0x1b0
[  282.958055][ T7748]  jfs_ioctl+0x13a/0x1c0
[  282.958776][ T7748]  __se_sys_ioctl+0xc0/0x130
[  282.959591][ T7748] page last free pid 7749 tgid 7749 stack trace:
[  282.960700][ T7748]  free_unref_page_prepare+0x433/0x4d0
[  282.961651][ T7748]  free_unref_page+0x35/0x250
[  282.965020][ T7748]  lmLogShutdown+0x1a2/0x2c0
[  282.965827][ T7748]  lmLogClose+0xf9/0x200
[  282.966574][ T7748]  jfs_remount+0x1e6/0x2b0
[  282.967358][ T7748]  reconfigure_super+0x1da/0x3e0
[  282.968225][ T7748]  __se_sys_fsconfig+0x6a6/0x860
[  282.969094][ T7748]  do_syscall_64+0xf8/0x240
[  282.969897][ T7748]  entry_SYSCALL_64_after_hwframe+0x77/0x7f
[  282.971238][ T7748] Modules linked in:
[  282.971914][ T7748] CPU: 1 PID: 7748 Comm: bd08f46 Not tainted 6.9.3 #1
[  282.973065][ T7748] Hardware name: QEMU Standard PC (i440FX + PIIX,
1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014
[  282.974753][ T7748] Call Trace:
[  282.975319][ T7748]  <TASK>
[  282.975821][ T7748]  dump_stack_lvl+0x12e/0x1e0
[  282.976645][ T7748]  bad_page+0xde/0xf0
[  282.977339][ T7748]  free_unref_page_prepare+0x4a9/0x4d0
[  282.978283][ T7748]  free_unref_folios+0x116/0x580
[  282.979127][ T7748]  folios_put_refs+0x417/0x480
[  282.979970][ T7748]  truncate_inode_pages_range+0x1ed/0x9d0
[  282.980977][ T7748]  ? debug_object_active_state+0x53/0x150
[  282.981988][ T7748]  dbUnmount+0x60/0x90
[  282.982710][ T7748]  jfs_umount+0xe3/0x1a0
[  282.983454][ T7748]  jfs_put_super+0x63/0xf0
[  282.984226][ T7748]  ? __pfx_jfs_put_super+0x10/0x10
[  282.985124][ T7748]  generic_shutdown_super+0x9b/0x180
[  282.986024][ T7748]  kill_block_super+0x1e/0x50
[  282.986850][ T7748]  deactivate_locked_super+0x5f/0xd0
[  282.987764][ T7748]  cleanup_mnt+0x1a0/0x210
[  282.988541][ T7748]  task_work_run+0x106/0x150
[  282.989314][ T7748]  syscall_exit_to_user_mode+0x170/0x370
[  282.990290][ T7748]  do_syscall_64+0x105/0x240
[  282.991096][ T7748]  entry_SYSCALL_64_after_hwframe+0x77/0x7f
[  282.992106][ T7748] RIP: 0033:0x7fdf212d8aa7
[  282.992875][ T7748] Code: 23 0d 00 f7 d8 64 89 01 48 83 c8 ff c3 66
0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6
00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d b9 23 0d 00 f7 d8
64 89 01 48
[  282.996131][ T7748] RSP: 002b:00007ffecb179c38 EFLAGS: 00000202
ORIG_RAX: 00000000000000a6
[  282.997553][ T7748] RAX: 0000000000000000 RBX: 0000000000000000
RCX: 00007fdf212d8aa7
[  282.998903][ T7748] RDX: 0000000000000009 RSI: 0000000000000009
RDI: 00007ffecb179ce0
[  283.000244][ T7748] RBP: 00007ffecb17ad20 R08: 00007fdf2136c040
R09: 00007ffecb179ad0
[  283.001579][ T7748] R10: 00007fdf2136bfc0 R11: 0000000000000202
R12: 00000000004012c0
[  283.002925][ T7748] R13: 0000000000000000 R14: 0000000000000000
R15: 0000000000000000
[  283.004275][ T7748]  </TASK>

====================== Analysis ======================
gdb debug screenshots:
1. gdb backtrace:
https://drive.google.com/file/d/14KDOYjUtVxe-ugYPc_MTmlCGHydOQav1/view?usp=sharing
2. gdb print page->flags:
https://drive.google.com/file/d/1tMiAkb1DjJ-YkaEyPkMWAVnt1AgrMx58/view?usp=sharing

Possible root cause: A page was marked as allocated by page_owner
during page releasing in jfs_umount by mistake, which leads to the
badpage check through free_page_prepare.

Unfortunately, we did not find more information about the root cause.
Hope the attached files would be of help for addressing this bug. And
please let me know for anything I can help.

Best,
Zhiyu Zhang


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
