Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD63882E500
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Jan 2024 01:28:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPXJd-0003sz-MR;
	Tue, 16 Jan 2024 00:28:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1rPXJc-0003st-Jf
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1XhnwNmccZlPWLaysxI9OXteZ4bX7l2PypaVzblrco4=; b=aEwe7fxO8CHs02ThIM7euk9QeB
 NLGKo8iKemEKVQ23HpXdQwrzkEiHuN1a0G/j3cLR3vylfkhV9cQM5AMIdaFUuC7sNP/MmYrDFwmUL
 AP59/IRKQBQ+De1m8BpNfzPIJjwVHe/z7kvCt08no5a/CYoXS5BufFFYxA1e+BEAL94I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1XhnwNmccZlPWLaysxI9OXteZ4bX7l2PypaVzblrco4=; b=Q
 AFGhDRpTYh+DMi0dlXsGvVpM++99/B1OQNdInd5pRxqehCs5sJhn1JWvr1QikdBdSWOsaDd9Ccu/P
 5siKOJdm8c6loponifzcazL15gqtpsiaWBg+F6sg7XZIPOkSge2vtAk53OFGgFOg5iAXqlhBquaNF
 tSUfZGxRWcXATA2A=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPXJb-00038o-Ao for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:28:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 17BB6CE18BA;
 Tue, 16 Jan 2024 00:28:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01AD9C433C7;
 Tue, 16 Jan 2024 00:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705364900;
 bh=oNOyt95J7fHroB9Uye/aHS/cv8825YcumRyvq8ynEF0=;
 h=From:To:Cc:Subject:Date:From;
 b=p4VjGUqoC54UD/p3hX9sPX1JysNMp2cRrmNWBsIqFTvC258zMoxBuheP3UNqrCv/+
 aYjbbojvgtyLRPcmbjUZ+RusIllwkkVDUA/QA/ZRqn5BjqtwSfaX5I9WUKlVxNPiGs
 ugWBy3IfSRMiiF2OTI63F+6aYjWM5sg1Mu42w0HY4C8eP7yCusoFqlE/A4sCMDPl3P
 62sTwKW53j/by8T8zk7uEuiS0mlv6HdKVGzU007AvBY5IpnAgJjs4lPr0ZnH2MQBUR
 6FNU5dZYWYj3st+y5NbF5+Ih5ao4UTaC+KxGE+a9pygivfPIaOxM+X8k8Iltb/80ep
 XnWNG5VRBn+yA==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 15 Jan 2024 19:27:54 -0500
Message-ID: <20240116002817.216837-1-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.19.305
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Osama Muhammad <osmtendev@gmail.com> [ Upstream commit
 9862ec7ac1cbc6eb5ee4a045b5d5b8edbb2f7e68 ] Syzkaller reported the following
 issue: Content analysis details:   (-4.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPXJb-00038o-Ao
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.19 01/12]
 FS:JFS:UBSAN:array-index-out-of-bounds in dbAdjTree
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
From: Sasha Levin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Sasha Levin <sashal@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, Osama Muhammad <osmtendev@gmail.com>,
 jfs-discussion@lists.sourceforge.net, ghandatmanas@gmail.com,
 shaggy@kernel.org, yogi.kernel@gmail.com, juntong.deng@outlook.com,
 syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com, code@siddh.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Osama Muhammad <osmtendev@gmail.com>

[ Upstream commit 9862ec7ac1cbc6eb5ee4a045b5d5b8edbb2f7e68 ]

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
solves this issue.

Dave:
As the function returns a void, good error handling
would require a more intrusive code reorganization, so I modified
Osama's patch at use WARN_ON_ONCE for lack of a cleaner option.

The patch is tested via syzbot.

Reported-by: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=39ba34a099ac2e9bd3cb
Signed-off-by: Osama Muhammad <osmtendev@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 2f452b5ee731..b7fc47907d96 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2948,6 +2948,9 @@ static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
 	/* is the current value the same as the old value ?  if so,
 	 * there is nothing to do.
 	 */
+	if (WARN_ON_ONCE(lp >= CTLTREESIZE))
+		return;
+
 	if (tp->dmt_stree[lp] == newval)
 		return;
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
