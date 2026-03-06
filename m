Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFEWMqLfrmmoJgIAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 09 Mar 2026 15:56:34 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB3123B0B7
	for <lists+jfs-discussion@lfdr.de>; Mon, 09 Mar 2026 15:56:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yOCYUVMby3dRdFYgjlvj611YaNhYEl8QB9siOy2VzDI=; b=Fy+buJAtnkYc07anbt23RQIvJO
	gygQRYuPr7qR4LdG7Ao1tDHqvLbABlfEqfR/9NMmUyMCybTzafoF/dYxRME5MAVz7bsVvibi6AttW
	YXyhjkAp6K96RAr91tt7pOdJmuY2JvJ4/Egfu4by1q//ZaYxNCUuKppJWmIp/jtiu+Lk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vzc1N-0002o1-Ip;
	Mon, 09 Mar 2026 14:55:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gality369@gmail.com>) id 1vySeJ-0003wl-6E
 for jfs-discussion@lists.sourceforge.net;
 Fri, 06 Mar 2026 10:43:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h6U/LpYgdoAju3gY53QJubegUkldAvW3G43OtE3PuT0=; b=I50UAMl1AKOkjbaRShkElnhaXi
 Sq0y0/IzO4Yo9Ms1Yqfz+4mbjDpBRtbrY3KWnFq9ChZh1Hir8+s+h/p7teTEUzuiAogxgi6iLuBV0
 rkHdfcms8OHIx1AtzoL62RbJMvNHZvZB+h+QC9a6MRFf8/Q9HAGpRr0XEhBbXOM+BOCw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h6U/LpYgdoAju3gY53QJubegUkldAvW3G43OtE3PuT0=; b=Q
 Wx7HCIC3WQqmPMdEf4ezBAaksBm2L+H3Co8A+f3sc62qURCddu8TWoPXFNiXPL5p5wj79i5tvj+k2
 oURp6y6Prizr05a6oe7ZYcD2W0RzlAyKlDJPNzBgzrf/meZ5B8S7w21fKRa4I9+y1bE4f8bLrDN3V
 ttD9RN09gf6sZOJ0=;
Received: from mail-pj1-f42.google.com ([209.85.216.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vySeI-0000Ui-D6 for jfs-discussion@lists.sourceforge.net;
 Fri, 06 Mar 2026 10:43:15 +0000
Received: by mail-pj1-f42.google.com with SMTP id
 98e67ed59e1d1-35995cb33a8so2925757a91.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 06 Mar 2026 02:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772793784; x=1773398584; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=h6U/LpYgdoAju3gY53QJubegUkldAvW3G43OtE3PuT0=;
 b=E+fqNcIHi1xWQ4oGJSa/4B47QhvxvFMnRUcpNlZL84TB+FeN2wc06+npRe5tMdAMuD
 DHaPDQmCuix1LHWr0AfKT6QpvBN5pqNebwehMOq15TjD8qWMKbdcOewKheXYBeKo5Sdp
 k0Y4VxF9UUXQcNjhHQR2yFl7fCE9JhMa0ZDUt7spoa2Knaui/sbiUUTX3o4gFJWGV/0r
 9e14jnPzE8rtF+IKfSoJt/6dM2UeyBdwmj7tuRiHveuUif1rtI/afM97vLGFP5d11sKh
 sAaNmFkiot+b1KFIo8v3ZcW4ebuUWBU82a0P30zCui8PwXP3PVsnN6Ogrn8pAIVPpWfm
 pTTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772793784; x=1773398584;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=h6U/LpYgdoAju3gY53QJubegUkldAvW3G43OtE3PuT0=;
 b=jJJktSx/d9jDTtugxjmH/eZ4OQRj4UyW8mAKDAVWAug6GB0p2rLNGhe+oyXwl1yCPA
 +2KnsrR9lrbnKZBEVKb4I7y3mit6VI1OZ1gsQ2SkBZF+fxsQ1AtHXs2v2ZVtoUqoWw9n
 Z04WbLSsFeH9jYY4gMS3w7oYmFbCLqHDnRB24Z3ur8D7u2SewxC2ECdd/OsNHSvI2KMF
 Jis5k8tQ1oUKCL2C+99Exv25eEIStu334B6K72UrNLwZL+Hpakt27vIKmvlOAJ/L45pf
 YuCeUS7C3vpyWSbpNrmT7xYyxgCdcr/5z6VtkCMe+YgTQnpsoD/ENk9ALB4nJCnvYSMX
 fS8Q==
X-Gm-Message-State: AOJu0YxGkTgb12wCiQijBlAYhN5KSVnukLNFdaaKZ1kcJOqTqJAlWBxt
 3U866vxN/CmkR8mK68PxQVQSlfoKKo07Teoye9qjlP/MUqecLrKf06Rx4BAuW9LwIf1PkLaB
X-Gm-Gg: ATEYQzzNWhM0kF8YV5f5w7QiSr/e0LEKfacV1U+2kAMnHryuR1ybdc0SdH019aFpRCP
 yX00C61ZcuCQCQsxm9qa2Yc0enNSOQauz97n5Co3yJKaZjljnbzA4GxcHQwwG5e+Am0g6DfuatR
 ukIBajLDnRtYj9HH6Tv0Rt6tuYDtc8cbHzXfOZCSbVL233XCZbPw6/2w6/Srgzk52pZsL6xsU++
 5jHWEPweWS2rhOVesWwHvDXxsd6AB6LjIlLNpTJW8LU4UsrdLz/9eKZUI4AUbbzB27BZhd8ja0/
 o1fhXRU6zo8co0+CbW99aUydLeqDjNtRraCpBAw2JjJreZBI8vyAzPWNF/2vYCs1ezmM75Nddih
 wkJWcJWYYbuW5jP8Ng+mRadD0pEcih9l6Pig2e599B75SJcPdAgOeVeQimn0PmwZo2hlGMruc6b
 IVc7mN3HsrtrJsMcCs6/CmYdsKkaT66VSRE3xaQObUyHeNIcJGA9V1WJ8ivkykHp62sXYmIw==
X-Received: by 2002:a17:90b:2b46:b0:359:901a:4b04 with SMTP id
 98e67ed59e1d1-359b1c31042mr5199511a91.14.1772793783520; 
 Fri, 06 Mar 2026 02:43:03 -0800 (PST)
Received: from kernel-fuzz.. ([138.199.21.245])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-c739e16cefcsm1283870a12.19.2026.03.06.02.42.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2026 02:43:02 -0800 (PST)
To: shaggy@kernel.org
Date: Fri,  6 Mar 2026 18:42:34 +0800
Message-ID: <20260306104234.4113565-1-gality369@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Dynamically corrupting on-disk metadata at runtime can cause
 dp->start in a dmap page to contain an invalid value. Both dbAllocNear()
 and dbAllocDmapLev() rebuild blkno from that on-disk value and pas [...] 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [gality369(at)gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [gality369(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.42 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vySeI-0000Ui-D6
X-Mailman-Approved-At: Mon, 09 Mar 2026 14:55:48 +0000
Subject: [Jfs-discussion] [PATCH] jfs: validate dmap-derived blkno to
 prevent buffer overflow
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
From: ZhengYuan Huang via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: ZhengYuan Huang <gality369@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, ZhengYuan Huang <gality369@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, baijiaju1990@gmail.com,
 zzzccc427@gmail.com, r33s3n6@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: DAB3123B0B7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-5.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DATE_IN_PAST(1.00)[76];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:gality369@gmail.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:baijiaju1990@gmail.com,m:zzzccc427@gmail.com,m:r33s3n6@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	HAS_REPLYTO(0.00)[gality369@gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

Dynamically corrupting on-disk metadata at runtime can cause dp->start
in a dmap page to contain an invalid value. Both dbAllocNear() and
dbAllocDmapLev() rebuild blkno from that on-disk value and pass it
down the allocation path without validating that the resulting
block number is still within the filesystem.

This can lead to an out-of-range AG index in dbAllocBits() and an
out-of-bounds access to db_agfree[]. In testing, KASAN reports the
resulting invalid access as slab-use-after-free.

Fix this by validating blkno immediately after it is reconstructed from
dp->start in dbAllocNear() and dbAllocDmapLev(), and return -EIO if it
is out of range. The missing validation has been present since
the beginning of the git history.

The bug is reproducible on 7.0.0-rc2-next-20260304. With this fix,
the invalid blkno is detected early, preventing the resulting
out-of-bounds access and KASAN-reported slab-use-after-free.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Cc: stable@vger.kernel.org
Signed-off-by: ZhengYuan Huang <gality369@gmail.com>
---
Root cause
==========
The root cause is that both dbAllocNear() and dbAllocDmapLev()
reconstruct blkno from the on-disk dmap field dp->start without
verifying that the resulting block number is still within the valid
filesystem range defined by bmp->db_mapsize:
  blkno = le64_to_cpu(dp->start) + (word << L2DBWORD);
or:
  blkno = le64_to_cpu(dp->start) + (leafidx << L2DBWORD);

If dp->start is corrupted in the image, the
reconstructed blkno becomes invalid, and the later AG accounting ends
up indexing db_agfree[] with an out-of-range value.

Reproduction (v6.18, x86_64, KASAN)
===================================
The PoC is relatively large, so it is provided separately through google drive:
https://drive.google.com/drive/folders/1btOFM90WImywiv3HgZTWXv1UdKkXx9XP

To reproduce the issue:
  1. Build the PoC program: gcc poc.c -o poc
  2. Build the ublk helper program from the ublk codebase, which is
	 used to provide the runtime corruption capability:
	  g++ -std=c++20 -fcoroutines -O2 -o standalone_replay \
      standalone_replay_jfs.cpp targets/ublksrv_tgt.cpp \
      -I. -Iinclude -Itargets/include \
      -L./lib/.libs -lublksrv -luring -lpthread
  3. Attach the crafted image through ublk:
      ./standalone_replay add -t loop -f /path/to/image
  4. Run the PoC: ./poc
This reliably reproduces the bug.

Fix
===
The simpler and direct fix is to validate blkno immediately 
after it is rebuilt from dp->start, i.e. at the point where 
corrupted disk metadata first enters the allocation path.

This patch adds that check in the two source locations:
- dbAllocNear()
- dbAllocDmapLev()

If the reconstructed blkno is outside bmp->db_mapsize, JFS reports
corrupt metadata and aborts with -EIO.

KASAN reports
=============
BUG: KASAN: slab-use-after-free in dbAllocBits+0x4a1/0x4b0 fs/jfs/jfs_dmap.c:2257

CPU: 0 UID: 0 PID: 291 Comm: syz.0.1 Tainted: G           OE       6.18.0+ #10 PREEMPT(voluntary) 
Tainted: [O]=OOT_MODULE, [E]=UNSIGNED_MODULE
Hardware name: QEMU Ubuntu 24.04 PC v2 (i440FX + PIIX, arch_caps fix, 1996), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0xbe/0x130 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0xd1/0x650 mm/kasan/report.c:482
 kasan_report+0xfb/0x140 mm/kasan/report.c:595
 __asan_report_load8_noabort+0x14/0x30 mm/kasan/report_generic.c:381
 dbAllocBits+0x4a1/0x4b0 fs/jfs/jfs_dmap.c:2257
 dbAllocDmap+0x68/0x120 fs/jfs/jfs_dmap.c:2034
 dbAllocNear fs/jfs/jfs_dmap.c:1247 [inline]
 dbAlloc+0x65b/0x990 fs/jfs/jfs_dmap.c:832
 extBalloc fs/jfs/jfs_extent.c:336 [inline]
 extAlloc+0x452/0xe10 fs/jfs/jfs_extent.c:127
 jfs_get_block+0x349/0xad0 fs/jfs/inode.c:254
 __block_write_begin_int+0x45f/0x1680 fs/buffer.c:2145
 block_write_begin+0x90/0x1b0 fs/buffer.c:2256
 jfs_write_begin+0x3f/0x1a0 fs/jfs/inode.c:306
 generic_perform_write+0x409/0x8c0 mm/filemap.c:4255
 __generic_file_write_iter+0x1bb/0x200 mm/filemap.c:4372
 generic_file_write_iter+0xe5/0x370 mm/filemap.c:4398
 do_iter_readv_writev+0x61d/0x850 fs/read_write.c:827
 vfs_writev+0x323/0xca0 fs/read_write.c:1057
 do_writev+0x144/0x330 fs/read_write.c:1103
 __do_sys_writev fs/read_write.c:1171 [inline]
 __se_sys_writev fs/read_write.c:1168 [inline]
 __x64_sys_writev+0x7a/0xc0 fs/read_write.c:1168
 x64_sys_call+0x1b7c/0x26a0 arch/x86/include/generated/asm/syscalls_64.h:21
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x93/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x76/0x7e
RIP: 0033:0x75a3843a75ad
Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffedded3958 EFLAGS: 00000246 ORIG_RAX: 0000000000000014
RAX: ffffffffffffffda RBX: 000075a3845e5fd0 RCX: 000075a3843a75ad
RDX: 0000000000000001 RSI: 0000200000001400 RDI: 0000000000000007
RBP: 000075a3845a4630 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffedded3970
R13: 000075a3845e5fa8 R14: 000075a3845e5fa0 R15: 000075a3845e5fac
 </TASK>

Allocated by task 267:
 kasan_save_stack+0x39/0x70 mm/kasan/common.c:56
 kasan_save_track+0x14/0x40 mm/kasan/common.c:77
 kasan_save_alloc_info+0x37/0x60 mm/kasan/generic.c:573
 unpoison_slab_object mm/kasan/common.c:342 [inline]
 __kasan_slab_alloc+0x9d/0xa0 mm/kasan/common.c:368
 kasan_slab_alloc include/linux/kasan.h:252 [inline]
 slab_post_alloc_hook mm/slub.c:4978 [inline]
 slab_alloc_node mm/slub.c:5288 [inline]
 kmem_cache_alloc_node_noprof+0x1f9/0x7c0 mm/slub.c:5340
 __alloc_skb+0x276/0x360 net/core/skbuff.c:660
 alloc_skb_fclone include/linux/skbuff.h:1433 [inline]
 tcp_stream_alloc_skb+0x39/0x550 net/ipv4/tcp.c:912
 tcp_sendmsg_locked+0x1586/0x3f10 net/ipv4/tcp.c:1218
 tcp_sendmsg+0x34/0x60 net/ipv4/tcp.c:1413
 inet_sendmsg+0xb8/0x150 net/ipv4/af_inet.c:853
 sock_sendmsg_nosec net/socket.c:727 [inline]
 __sock_sendmsg net/socket.c:742 [inline]
 sock_write_iter+0x4ea/0x630 net/socket.c:1195
 new_sync_write fs/read_write.c:593 [inline]
 vfs_write+0x63b/0xf70 fs/read_write.c:686
 ksys_write+0x1ed/0x250 fs/read_write.c:738
 __do_sys_write fs/read_write.c:749 [inline]
 __se_sys_write fs/read_write.c:746 [inline]
 __x64_sys_write+0x77/0xc0 fs/read_write.c:746
 x64_sys_call+0x79/0x26a0 arch/x86/include/generated/asm/syscalls_64.h:2
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x93/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x76/0x7e

Freed by task 261:
 kasan_save_stack+0x39/0x70 mm/kasan/common.c:56
 kasan_save_track+0x14/0x40 mm/kasan/common.c:77
 __kasan_save_free_info+0x3b/0x60 mm/kasan/generic.c:587
 kasan_save_free_info mm/kasan/kasan.h:406 [inline]
 poison_slab_object mm/kasan/common.c:252 [inline]
 __kasan_slab_free+0x6f/0xa0 mm/kasan/common.c:284
 kasan_slab_free include/linux/kasan.h:234 [inline]
 slab_free_hook mm/slub.c:2543 [inline]
 slab_free mm/slub.c:6642 [inline]
 kmem_cache_free+0x384/0x7a0 mm/slub.c:6752
 kfree_skbmem+0x13e/0x210 net/core/skbuff.c:1131
 __kfree_skb+0x61/0x80 net/core/skbuff.c:1167
 tcp_wmem_free_skb include/net/tcp.h:332 [inline]
 tcp_eat_one_skb net/ipv4/tcp_output.c:2585 [inline]
 tcp_grow_skb net/ipv4/tcp_output.c:2883 [inline]
 tcp_write_xmit+0x373f/0x7aa0 net/ipv4/tcp_output.c:2957
 __tcp_push_pending_frames+0xa7/0x360 net/ipv4/tcp_output.c:3182
 tcp_push_pending_frames include/net/tcp.h:2221 [inline]
 tcp_data_snd_check net/ipv4/tcp_input.c:5880 [inline]
 tcp_rcv_established+0x9fa/0x31a0 net/ipv4/tcp_input.c:6450
 tcp_v4_do_rcv+0x538/0x970 net/ipv4/tcp_ipv4.c:1931
 tcp_v4_rcv+0x2b66/0x45e0 net/ipv4/tcp_ipv4.c:2374
 ip_protocol_deliver_rcu+0xab/0x410 net/ipv4/ip_input.c:205
 ip_local_deliver_finish+0x38d/0x610 net/ipv4/ip_input.c:239
 NF_HOOK include/linux/netfilter.h:318 [inline]
 NF_HOOK include/linux/netfilter.h:312 [inline]
 ip_local_deliver+0x1bb/0x4e0 net/ipv4/ip_input.c:260
 dst_input include/net/dst.h:474 [inline]
 ip_rcv_finish net/ipv4/ip_input.c:453 [inline]
 NF_HOOK include/linux/netfilter.h:318 [inline]
 NF_HOOK include/linux/netfilter.h:312 [inline]
 ip_rcv+0x5b1/0x8c0 net/ipv4/ip_input.c:573
 __netif_receive_skb_one_core+0x1be/0x230 net/core/dev.c:6079
 __netif_receive_skb+0x29/0x130 net/core/dev.c:6192
 process_backlog+0x269/0x1190 net/core/dev.c:6544
 __napi_poll.constprop.0+0xb4/0x4d0 net/core/dev.c:7594
 napi_poll net/core/dev.c:7657 [inline]
 net_rx_action+0xa88/0x1090 net/core/dev.c:7784
 handle_softirqs+0x1d6/0x840 kernel/softirq.c:622
 __do_softirq+0x10/0x18 kernel/softirq.c:656

The buggy address belongs to the object at ffff888010bda000
 which belongs to the cache skbuff_fclone_cache of size 488
The buggy address is located 128 bytes inside of
 freed 488-byte region [ffff888010bda000, ffff888010bda1e8)

The buggy address belongs to the physical page:
page: refcount:0 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x10bda
head: order:1 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0xfffffc0000040(head|node=0|zone=1|lastcpupid=0x1fffff)
page_type: f5(slab)
raw: 000fffffc0000040 ffff88800a087c80 dead000000000122 0000000000000000
raw: 0000000000000000 00000000000c000c 00000000f5000000 0000000000000000
head: 000fffffc0000040 ffff88800a087c80 dead000000000122 0000000000000000
head: 0000000000000000 00000000000c000c 00000000f5000000 0000000000000000
head: 000fffffc0000001 ffffea000042f681 00000000ffffffff 00000000ffffffff
head: ffffffffffffffff 0000000000000000 00000000ffffffff 0000000000000002
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff888010bd9f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff888010bda000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff888010bda080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                   ^
 ffff888010bda100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888010bda180: fb fb fb fb fb fb fb fb fb fb fb fb fb fc fc fc
==================================================================
---
 fs/jfs/jfs_dmap.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cdfa699cd7c8..b95bf52f7452 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1232,6 +1232,13 @@ dbAllocNear(struct bmap * bmp,
 		 * of the first block described by this dmap word.
 		 */
 		blkno = le64_to_cpu(dp->start) + (word << L2DBWORD);
+		if (blkno >= bmp->db_mapsize) {
+			jfs_error(bmp->db_ipbmap->i_sb,
+				  "blkno %lld from corrupt dmap (start %llu) out of range\n",
+				  (long long)blkno,
+				  (unsigned long long)le64_to_cpu(dp->start));
+			return -EIO;
+		}
 
 		/* if not all bits of the dmap word are free, get the
 		 * starting bit number within the dmap word of the required
@@ -1976,6 +1983,13 @@ dbAllocDmapLev(struct bmap * bmp,
 	 * to the leaf at which free space was found.
 	 */
 	blkno = le64_to_cpu(dp->start) + (leafidx << L2DBWORD);
+	if (blkno >= bmp->db_mapsize) {
+		jfs_error(bmp->db_ipbmap->i_sb,
+			  "blkno %lld from corrupt dmap (start %llu) out of range\n",
+			  (long long)blkno,
+			  (unsigned long long)le64_to_cpu(dp->start));
+		return -EIO;
+	}
 
 	/* if not all bits of the dmap word are free, get the starting
 	 * bit number within the dmap word of the required string of free
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
