Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5E42E11E3
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Dec 2020 03:18:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1krtjH-0001Kr-3E; Wed, 23 Dec 2020 02:18:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1krtjF-0001Kk-Mk
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Dec 2020 02:18:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q3/GLxs1IfoAYOlp+DSccrNjNqY/WhyU7UrndMvZb84=; b=kV/Jf3lxyWRPhjTqqb2uCpjEEa
 D372SVlj7yIy+m7uwZQjpmzEC4rjzWcg8xPuUyl7HbdrYM2cIYUgCSnhZYT2pcQK35nd7mcBf3j0X
 rVYMwaq5ESHcechMkDEx7MGNmWqwVIePm5EQ1Aj4kRMkYWgRLcKq1G15KqAF/3iwXbn8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q3/GLxs1IfoAYOlp+DSccrNjNqY/WhyU7UrndMvZb84=; b=h74+HxsD7DjxTjgITaS056HIZ3
 RKLFMvAXbz0YBi2tLt6Qp2LzSb87GoH6ip66W7+bf3vnIGKGt513lPoOg/BueSiFqQXKSA4oG9iv1
 u5TN3f44os40yfGXy+VotKveV/ke5bYlSUtx3TyAcvRc0e9ijHgk5i+A9DF2q2XZjqNg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1krtjB-005Ycl-LA
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Dec 2020 02:18:17 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6FED423435;
 Wed, 23 Dec 2020 02:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608689888;
 bh=1uP2c0+XEwO4wOTOior9AIKviSft5M0m/TbEzlHj4Qw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eLaFLtg5YAlm62Cs4hQ7gQ55aBplotx43N6YcWWq96XxaU44BDEQecWcyIwDel3HK
 k7I+oQcZ7Wpek1PnxRGYAsrF04rhrSlk3WZxdecf86K1ZU89GYSfAt1ig9W2D4yV5b
 yH8bqnlCWnxZUWNXXU5LOf8Dvee8wP4l4rbJgH/irZe4iv0Cyxl3FTY9ADSUyOuMFP
 MZs+I06moJeiRuPvIk0AepdVu+q4vEMGQuZ/PCO5J4ac1YosnxL17GJ1mBoef6KE0o
 5CfAFKDIwtvzZ06T0wG5FqChZTNU/VKsvSuWI2BwvIcucW7Gu+/wCkiF4w8cw+gu+D
 edI9uNbpMgj1Q==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 22 Dec 2020 21:14:05 -0500
Message-Id: <20201223021626.2790791-76-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223021626.2790791-1-sashal@kernel.org>
References: <20201223021626.2790791-1-sashal@kernel.org>
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
X-Headers-End: 1krtjB-005Ycl-LA
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.10 076/217] jfs: Fix memleak in
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
index 7dfcab2a2da68..619deeeb3d8b4 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2549,15 +2549,19 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
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
