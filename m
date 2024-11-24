Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 584789D719A
	for <lists+jfs-discussion@lfdr.de>; Sun, 24 Nov 2024 14:51:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tFD19-0003K4-8l;
	Sun, 24 Nov 2024 13:51:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1tFD17-0003Jx-I0
 for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:51:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WD4uKV/YsmAJqWS5CNh56VVWrn/NL2CgylYt7iW/Uwc=; b=AeyFAnVgANR1X7SzxH2s0nIdiF
 8YQbS9x0h2GUkpsUmsYBNMBPvtydcGMow6jjkii+LaDsTzEVdQ/OfYNeBWRbkk/UQmijwjDNfzTXI
 lx6bhFSkwHxluh86h0OQkZucjsHmxdldFE1DCEWPnETUiPsc8JVhTPtdhGnLwmaxDz2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WD4uKV/YsmAJqWS5CNh56VVWrn/NL2CgylYt7iW/Uwc=; b=ItuKNjUiJFSjRjTXHqrT9hOxEp
 40JIZgXiHEEPR21BxzPvHrvUjs+dWQm4TybyEoUzbVKmtrg1/qVNeBZYXB3L/mz9X0KXRgU2ROI0t
 RZSsCtwr9zdxPThDbKBr/foXYL6NUq1yEJkNb4X+envrM9QLHD/MUHTt+xL/ZeCN171o=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tFD15-0001bQ-UQ for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:51:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EFAA35C56F6;
 Sun, 24 Nov 2024 13:50:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9693C4CECC;
 Sun, 24 Nov 2024 13:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1732456261;
 bh=VP0taqpeoaeCL5uOvCJOIqfJ5CCdeNL8ReskrgAZ3Zw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z8LuKRRBQv1meQmG2Vc5ynCdDCcP0ENVGyeJh+Jlyv5I3ABBhWGs8kYbBYT2KTxUf
 ojc3G+SmmGIJDOM0u1yMgE0wt9vgY3Ykfx1a3G44so/B6HbwZXqxDx9vintuzybABE
 N4AbhAQK7pT813UyzkZzjbE9dRyAAThXqEAhvKAtE2n9K6v5QzMK0142JqP1O0S/F0
 bVEhm68yS/X3ZHWFn0+Ucm44bqaSu6vPI28NCfukQp4VkGgrD9hLi8zu87FfT7Y8LK
 xeO2pi7u95k3V7Im62wGhd9NbzZSta3llV1VyNcqPRPTIj/O6il7UnVYEzIBnnqOG4
 4UjWBO55jTSZg==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 24 Nov 2024 08:48:55 -0500
Message-ID: <20241124134950.3348099-32-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241124134950.3348099-1-sashal@kernel.org>
References: <20241124134950.3348099-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.119
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Ghanshyam Agrawal <ghanshyam1898@gmail.com> [ Upstream
 commit a5f5e4698f8abbb25fe4959814093fb5bfa1aa9d ] When dmt_budmin is less
 than zero, it causes errors in the later stages. Added a check to return
 an error beforehand in dbAllocCtl itself. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tFD15-0001bQ-UQ
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.1 32/48] jfs: fix
 shift-out-of-bounds in dbSplit
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
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, eadavis@qq.com, aha310510@gmail.com,
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>,
 syzbot+b5ca8a249162c4b9a7d0@syzkaller.appspotmail.com, peili.dev@gmail.com,
 niharchaithanya@gmail.com, rbrasga@uci.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Ghanshyam Agrawal <ghanshyam1898@gmail.com>

[ Upstream commit a5f5e4698f8abbb25fe4959814093fb5bfa1aa9d ]

When dmt_budmin is less than zero, it causes errors
in the later stages. Added a check to return an error beforehand
in dbAllocCtl itself.

Reported-by: syzbot+b5ca8a249162c4b9a7d0@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=b5ca8a249162c4b9a7d0
Signed-off-by: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a6b1d748df16b..30a56c37d9ecf 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1820,6 +1820,9 @@ dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno, s64 * results)
 			return -EIO;
 		dp = (struct dmap *) mp->data;
 
+		if (dp->tree.budmin < 0)
+			return -EIO;
+
 		/* try to allocate the blocks.
 		 */
 		rc = dbAllocDmapLev(bmp, dp, (int) nblocks, l2nb, results);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
