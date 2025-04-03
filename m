Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D24E6A7AA54
	for <lists+jfs-discussion@lfdr.de>; Thu,  3 Apr 2025 21:11:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u0Py6-0006Ih-F6;
	Thu, 03 Apr 2025 19:11:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1u0Py5-0006Ia-Ek
 for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Apr 2025 19:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=khHMswmRLRxux+SFA7zi/ryrZO5I4kl3+HDYBMPH9Eo=; b=IORIcrVWOkx3lbwbZkcGHXZEtk
 TIRygwSArg8Wc5/YMK27i/dND8wv6znfYJMUAY+icJ7550nD374K+J9hdZqrmxG0faHzV2SZPmqSU
 z4/fOJJbCVL+PjacncEsD6hFndkcOcFAg9dz6EVZqX0T9Hrd4SHKlSrplkZvz/h+x6/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=khHMswmRLRxux+SFA7zi/ryrZO5I4kl3+HDYBMPH9Eo=; b=A0WgavP5Mf4InEyDDF08wLypyi
 xm17I/sI6mMVna2XFwIbzhhhWvKo+INkCenN18iEYdiublApkqwWMnKGGZO/7L9qrwNHANL6gaGqy
 yvVZY0q0+mK5gsFR5U4iuCh6I2TUbFr+R1C9KfzDpEJIX4wazLnwq0e9F6V8VlLmrFBY=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u0Pxq-0003Tl-6e for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Apr 2025 19:11:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8B486614B6;
 Thu,  3 Apr 2025 19:10:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F02D1C4CEE3;
 Thu,  3 Apr 2025 19:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1743707447;
 bh=fYUSiDF+hdZ8Tfwa8yOd1HL4760yY0ZgPruEJWbN9+Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jizet1Wzt+oZijI1KZFLChO6ap9Y53fX2cwo1+TjfIpg1pE1N9mMB5HN7M1bmhes6
 Nj7MRG/cIXtP0u7MpFPz6PZQUVysLUFn7XL3GaTK2+3/S74H2Q65id5Cx0sTZMzNJa
 QP2jZTr0AD3/rhb80cwNz8p1TfEaWpC8YJUqNWRgaEKTyuJAUKYthZ3sadJkLUZBwN
 uDwB+RsHh7LbB14D/dy8nO7FMDVaqV53yddZFIXFcRD7AII+wc9VmDeKIACIKdqURU
 MPGzhM73K/KshUoTdTwj9V9RqPtimvgnSoh0L7zPLrMVxqwteeD7S2EPHvIhU9WKui
 zt/TtAoN4LkZA==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu,  3 Apr 2025 15:10:25 -0400
Message-Id: <20250403191036.2678799-3-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250403191036.2678799-1-sashal@kernel.org>
References: <20250403191036.2678799-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.291
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Rand Deeb <rand.sec96@gmail.com> [ Upstream commit
 7fcbf789629cdb9fbf4e2172ce31136cfed11e5e
 ] The JFS filesystem calculates allocation group (AG) size using 1 << l2agsize
 in dbExtendFS(). When l2agsize exceeds 31 (possible with >2TB aggregates
 on 32-bit systems), this 32-bit shift operation ca [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.105.4.254 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.105.4.254 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u0Pxq-0003Tl-6e
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.4 03/14] fs/jfs: Prevent integer
 overflow in AG size calculation
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
 jfs-discussion@lists.sourceforge.net, ghanshyam1898@gmail.com,
 aha310510@gmail.com, eadavis@qq.com, peili.dev@gmail.com,
 niharchaithanya@gmail.com, Rand Deeb <rand.sec96@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Rand Deeb <rand.sec96@gmail.com>

[ Upstream commit 7fcbf789629cdb9fbf4e2172ce31136cfed11e5e ]

The JFS filesystem calculates allocation group (AG) size using 1 <<
l2agsize in dbExtendFS(). When l2agsize exceeds 31 (possible with >2TB
aggregates on 32-bit systems), this 32-bit shift operation causes undefined
behavior and improper AG sizing.

On 32-bit architectures:
- Left-shifting 1 by 32+ bits results in 0 due to integer overflow
- This creates invalid AG sizes (0 or garbage values) in
sbi->bmap->db_agsize
- Subsequent block allocations would reference invalid AG structures
- Could lead to:
  - Filesystem corruption during extend operations
  - Kernel crashes due to invalid memory accesses
  - Security vulnerabilities via malformed on-disk structures

Fix by casting to s64 before shifting:
bmp->db_agsize = (s64)1 << l2agsize;

This ensures 64-bit arithmetic even on 32-bit architectures. The cast
matches the data type of db_agsize (s64) and follows similar patterns in
JFS block calculation code.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 3bc304d4886e6..d4e26744b2005 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3465,7 +3465,7 @@ int dbExtendFS(struct inode *ipbmap, s64 blkno,	s64 nblocks)
 	oldl2agsize = bmp->db_agl2size;
 
 	bmp->db_agl2size = l2agsize;
-	bmp->db_agsize = 1 << l2agsize;
+	bmp->db_agsize = (s64)1 << l2agsize;
 
 	/* compute new number of AG */
 	agno = bmp->db_numag;
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
