Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3937C5B99
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 20:47:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqeFA-0004uv-3B;
	Wed, 11 Oct 2023 18:47:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <osmtendev@gmail.com>) id 1qqeF9-0004up-0n
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 18:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uddVzm1ujX2AcdtbMSJ/3piIdX6QtZRUzkSKVd/RcdI=; b=d+e8Edslc8l906vqp8EvYB7j6L
 Y330CfcD8b5uVxhmejkcEvhEWKNEW4wZmf6rA6z9xNgTtgEcGSuyM9Zm0nXWOsSnrbyPZi9cx+az/
 yRJHWSTRZEbv6ZePwfPIzfraHct3Y/bA1NB5iG+mAibYuCzTnhURF9PBhgtUwMWsxqTk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uddVzm1ujX2AcdtbMSJ/3piIdX6QtZRUzkSKVd/RcdI=; b=N
 wFC8wAcAaoLJu4yRNybuNpdEGI/X55yHicTeqBz9CRVNPj/PcUPqD/FFRHnxP2B+yFhuTaiiJl1YX
 9/q6oX2aO1zYVetcje/3pdgwPAkAlm+pZN0CmZutPdcAzxmLgDxxdG0ZNKDqAAlwo2PUoUm4eTzyz
 j7UUwqPkxkKUAkwc=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqeF7-00C47r-Sf for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 18:47:39 +0000
Received: by mail-ot1-f65.google.com with SMTP id
 46e09a7af769-6c4b9e09528so103154a34.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 11 Oct 2023 11:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697050052; x=1697654852; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=uddVzm1ujX2AcdtbMSJ/3piIdX6QtZRUzkSKVd/RcdI=;
 b=SRbz08m0UzA21SoDAeld45ymbN5eKhZH2VZwJtY7mVD8n/hbe5PSbBQ1KxHYeipCk2
 gflX+piOei5YCljCduax8Ems16dmb0tWA6zwHTVSx8bw1DIaAJYv+14YgFH3MCjS2EJK
 fbGOJM7dysE0b2Vtk7P/N/DmWUjI+T9NMFUtHGTuW8muLQMWgYEfuCYgJTiJy6jWgH6A
 rWAffZLqOe6qGLNlhKtNMMhmUiH9OjqXpqQbEdMS6jkYaVdeVc6bIEzyW2hPhQwi2JJE
 tBJ51pT8qCTvIfnlQaFCJE1lAyQr9rB/vrHZcQ+UsIFYJQQbxBOHLxahdFi1txXRl1XX
 45AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697050052; x=1697654852;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uddVzm1ujX2AcdtbMSJ/3piIdX6QtZRUzkSKVd/RcdI=;
 b=FgiUhi9WKoiZ8FR5qyjzhaHVzhSPW7gR5IPIHZhaoFzlzmgEz3OxewRJJZs6cwcQ6u
 xTORVH4I/0uo39I7jhqwbjIHyicFW2x3PNrNhZUuSpLjmq2GSkr8D5n3l1oO/IR8RZ3c
 uScA7B5WulhDXwO6BrlkJ+tk7blbWfjICC1LNSd3F+MaNR5Mj7/yg20n4H3/kSaazJ9O
 I5/96O8+Lvk7d3I0agDIp/LVsT/a/YqWzmQEMkdN3c3cOMblz5wbVe+z5dOnohwR2ZWX
 WBiW7Ou8kdPtaNz82K0L1EIGyqKkJANdfvNfovFurmUhEKNdy6NcKr0K60ApEsCpJ4nV
 9GYA==
X-Gm-Message-State: AOJu0YwgrsrCPLS4PuDFE//6e1PXLlNAmBjEBK1Dgjfad4iLt9Nh2+OC
 v5T4O2NJtQ2LwCYG9Pkgyu0=
X-Google-Smtp-Source: AGHT+IGedEIn5LqQ/lJhP/MbmS7A+KtQf7mY1T5hMEaAvNqidbngkhcIvBwLCTKFkO3XTLovh1x+bA==
X-Received: by 2002:a9d:7490:0:b0:6be:fd1c:c228 with SMTP id
 t16-20020a9d7490000000b006befd1cc228mr20834448otk.1.1697050051950; 
 Wed, 11 Oct 2023 11:47:31 -0700 (PDT)
Received: from Osmten.. ([103.84.150.77]) by smtp.gmail.com with ESMTPSA id
 d7-20020aa78147000000b0068c1ac1784csm10366171pfn.59.2023.10.11.11.47.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Oct 2023 11:47:31 -0700 (PDT)
To: shaggy@kernel.org
Date: Wed, 11 Oct 2023 23:46:37 +0500
Message-Id: <20231011184637.20587-1-osmtendev@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzkaller reported the following issue: UBSAN:
 array-index-out-of-bounds
 in fs/jfs/jfs_dmap.c:2867:6 index 196694 is out of range for type 's8[1365]'
 (aka 'signed char[1365]') CPU: 1 PID: 109 Comm: jfsCommit Not tainted
 6.6.0-rc3-syzkaller [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [osmtendev[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qqeF7-00C47r-Sf
Subject: [Jfs-discussion] [PATCH] FS:JFS:UBSAN:array-index-out-of-bounds in
 dbAdjTree
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
From: Osama Muhammad via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Osama Muhammad <osmtendev@gmail.com>
Cc: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com,
 Osama Muhammad <osmtendev@gmail.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzkaller reported the following issue:

UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2867:6
index 196694 is out of range for type 's8[1365]' (aka 'signed char[1365]')
CPU: 1 PID: 109 Comm: jfsCommit Not tainted 6.6.0-rc3-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/04/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_out_of_bounds+0x11c/0x150 lib/ubsan.c:348
 dbAdjTree+0x474/0x4f0 fs/jfs/jfs_dmap.c:2867
 dbJoin+0x210/0x2d0 fs/jfs/jfs_dmap.c:2834
 dbFreeBits+0x4eb/0xda0 fs/jfs/jfs_dmap.c:2331
 dbFreeDmap fs/jfs/jfs_dmap.c:2080 [inline]
 dbFree+0x343/0x650 fs/jfs/jfs_dmap.c:402
 txFreeMap+0x798/0xd50 fs/jfs/jfs_txnmgr.c:2534
 txUpdateMap+0x342/0x9e0
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x47a/0xb70 fs/jfs/jfs_txnmgr.c:2732
 kthread+0x2d3/0x370 kernel/kthread.c:388
 ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304
 </TASK>
================================================================================
Kernel panic - not syncing: UBSAN: panic_on_warn set ...
CPU: 1 PID: 109 Comm: jfsCommit Not tainted 6.6.0-rc3-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/04/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 panic+0x30f/0x770 kernel/panic.c:340
 check_panic_on_warn+0x82/0xa0 kernel/panic.c:236
 ubsan_epilogue lib/ubsan.c:223 [inline]
 __ubsan_handle_out_of_bounds+0x13c/0x150 lib/ubsan.c:348
 dbAdjTree+0x474/0x4f0 fs/jfs/jfs_dmap.c:2867
 dbJoin+0x210/0x2d0 fs/jfs/jfs_dmap.c:2834
 dbFreeBits+0x4eb/0xda0 fs/jfs/jfs_dmap.c:2331
 dbFreeDmap fs/jfs/jfs_dmap.c:2080 [inline]
 dbFree+0x343/0x650 fs/jfs/jfs_dmap.c:402
 txFreeMap+0x798/0xd50 fs/jfs/jfs_txnmgr.c:2534
 txUpdateMap+0x342/0x9e0
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x47a/0xb70 fs/jfs/jfs_txnmgr.c:2732
 kthread+0x2d3/0x370 kernel/kthread.c:388
 ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304
 </TASK>
Kernel Offset: disabled
Rebooting in 86400 seconds..

The issue is caused when the value of lp becomes greater than
CTLTREESIZE which is the max size of stree. Adding a simple check
solves this issue. I was not sure about error return as a function
does not return. If there is something needed in that regard please
do point out.

The patch is tested via syzbot.

Reported-by: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=39ba34a099ac2e9bd3cb
Signed-off-by: Osama Muhammad <osmtendev@gmail.com>
---
 fs/jfs/jfs_dmap.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a3eb1e826947..decb3be66a86 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2854,6 +2854,9 @@ static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
 	/* is the current value the same as the old value ?  if so,
 	 * there is nothing to do.
 	 */
+	if (lp >= CTLTREESIZE)
+		return;
+
 	if (tp->dmt_stree[lp] == newval)
 		return;
 
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
