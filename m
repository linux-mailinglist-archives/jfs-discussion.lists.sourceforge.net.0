Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F2A2E1256
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Dec 2020 03:22:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1krtmb-0001Sq-GG; Wed, 23 Dec 2020 02:21:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1krtma-0001Sj-7q
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Dec 2020 02:21:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9j++ONSHVueFHV439CTIWP5pWPNoEjuYxjYPuQ2FnNU=; b=KqgthttF1eFcwV6GRssr7t2uxN
 OY/nM+FFJJMNLraDq57JnBt1NG77O9RCr7ZrmteIJnlWJ0hb0UyuMSf0jXhdRxw0djUlhrjMCDkrL
 qkzVWA0VUjuagDkJwc40VQqj/xhPOiZsrS56XuLxbz518Lgl4VgvtsvSqanQ97PruXe0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9j++ONSHVueFHV439CTIWP5pWPNoEjuYxjYPuQ2FnNU=; b=kHoDfIMGdvmGD8dxnVyUnnXGf0
 7OXewhsYJTPeuddBaulndl2IFDZHW2o2W5E7FXDvLLq3Sp85cOKhq6DXYkxHH1ro7Tw9Ux5YM4DO4
 FW+hgs1d119WK+jplxXwBsw4/KPDWsgQA7zMtudH1Vh66ii1CndxwbYRkErtg0hNZwRc=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1krtmW-005Ysq-8O
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Dec 2020 02:21:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 299CF2313F;
 Wed, 23 Dec 2020 02:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608690094;
 bh=ReuyCYVYKWAqyVzRSmyl1FHgpc+TAGr/5KNCJDAivjo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kZlKE9mRo/VeFkISipAV+Ov6eAisbUmU08GlLel4JvBaLZs5RI/wOi3lGB4Giijhn
 Xc19/cSJrsgokOSmudpCPbH2PNSip38iODbChx5912KrHtJpW7gOoC3PZfPOTq3XQ6
 v8U+rLFVI9kRggCva7kqGGDUbcpPGZLs3uuqxI1inrv7m89kIy9a1HCEcysfNcx9Sr
 yoWNLxXBRD/wXWKGnqt/NqqZ3RYI/vdP2zMXhWrTSNQQmgMMPb4gmuWjYdjg9R1ELP
 gJg+PFHoJltWtzdUlICuZN9gW5zYzfBSIeIMb3jv1viaI5R56at7L2HsfWiXATBy5T
 cM2TtbwgHby/Q==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 22 Dec 2020 21:20:01 -0500
Message-Id: <20201223022103.2792705-25-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223022103.2792705-1-sashal@kernel.org>
References: <20201223022103.2792705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1krtmW-005Ysq-8O
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.19 25/87] jfs: Fix memleak in
 dbAdjCtl
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
Cc: Sasha Levin <sashal@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Dinghao Liu <dinghao.liu@zju.edu.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Dinghao Liu <dinghao.liu@zju.edu.cn>

[ Upstream commit 751341b4d7841e2b76e78eec382c2e119165497f ]

When dbBackSplit() fails, mp should be released to
prevent memleak. It's the same when dbJoin() fails.

Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 49263e220dbcf..071abfc8e3e50 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2562,15 +2562,19 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
 		 */
 		if (oldval == NOFREE) {
 			rc = dbBackSplit((dmtree_t *) dcp, leafno);
-			if (rc)
+			if (rc) {
+				release_metapage(mp);
 				return rc;
+			}
 			oldval = dcp->stree[ti];
 		}
 		dbSplit((dmtree_t *) dcp, leafno, dcp->budmin, newval);
 	} else {
 		rc = dbJoin((dmtree_t *) dcp, leafno, newval);
-		if (rc)
+		if (rc) {
+			release_metapage(mp);
 			return rc;
+		}
 	}
 
 	/* check if the root of the current dmap control page changed due
-- 
2.27.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
