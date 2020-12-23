Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B4C2E1272
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Dec 2020 03:25:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1krtpb-0005Jn-Jq; Wed, 23 Dec 2020 02:24:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1krtpa-0005Jf-71
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Dec 2020 02:24:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IF5LfmZvYmtKb8XIKhCyw+4iJ0GLjxTS7JgAujjcyRY=; b=aF1yPHO1VxVBgWJ8QB5q9f/ACC
 cIsqH0yUGlYXVBq6eY8NB6fqZx0dHO0BIjSWR3al9EWg9XTKW8WhpxbPwgCgekSN5l+3ciBy08dx6
 yyILf0TvveUJFU1IPznYF2M8CZxdMp/hBLX7hj2zEicplcRDxRTa25sNc94TDElEj3zU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IF5LfmZvYmtKb8XIKhCyw+4iJ0GLjxTS7JgAujjcyRY=; b=BlRp6k8kEa4SOGLX7Z7K4xFN1t
 RIlCLOIj51hbi2v7AWjAWkMi2aU+W8qk+J4OLA/jwlXjTaXm4v42vjoiV0teglYleQOtTJIoFjMyB
 yVtNm5eawbniixXlxTkEyaNeNeZma7eyvXgbaplhxYW9iCVUomV7GkwdAb4A6CGKXGg8=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1krtpQ-0077AI-EI
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Dec 2020 02:24:50 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E80A229CA;
 Wed, 23 Dec 2020 02:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608690275;
 bh=YrbTY5JpEvTtuhqP3HWPxAhzZ0+tfCCafdmz15WdEwE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VxLpMN/5e6BoXdM4dJKJNbDgN0OKJefubQWRbmNdpW9XPKKD6Vjv6HcESPOM15uQS
 NMl4MAh6kElYDCHRS3YpAoUR384z9tdiOgBTHAbooXfYQzT9fvdYO1eA8azv8vUltT
 yrnicZpARKBnYEwea9bHubEOZZwqLdSr36JBhGhrSabHRQ6T7KeqStQqAymNQKMhaH
 gM6dwsgFWjCASTbCv9jj5hZJIUbLexSE+nrI9UdanDFkaZCdtq+jKXtSQ2UbcKK/fH
 w8XlbULUr3vmHDVErU9wiaBAOcH4TDM6sOvLJncSaCwfQsGNJlCU7ALj9P/VP8NKBI
 Ohz6Z3FN/XiMg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 22 Dec 2020 21:23:43 -0500
Message-Id: <20201223022417.2794032-15-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223022417.2794032-1-sashal@kernel.org>
References: <20201223022417.2794032-1-sashal@kernel.org>
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
X-Headers-End: 1krtpQ-0077AI-EI
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.9 15/48] jfs: Fix memleak in
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
index 2d514c7affc2a..fa14a01950853 100644
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
