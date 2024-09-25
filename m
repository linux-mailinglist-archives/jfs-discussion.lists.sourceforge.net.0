Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD40985A40
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Sep 2024 14:06:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1stQmw-0005gR-Da;
	Wed, 25 Sep 2024 12:06:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1stQmv-0005gL-CM
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 12:06:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dq90xtkume6BsQ2dMfy055upKerjiJF0bTwsADq5fck=; b=iSXa/O6pBMnVavGfZEGbxvIE7d
 XxVj8KP3CBGS2fE6u0p6Em9jvkKf8KagGQqaJult5npOtf5sCWTxS01yDx5Oq6xza0tVgZ1fj4bS9
 UzGnj05bfWtWBesVr0kUE3OrqF4uS1lDAcI81wz2qN+29wClPSq0j+4hfTCeuW1itlyo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dq90xtkume6BsQ2dMfy055upKerjiJF0bTwsADq5fck=; b=BnUKZud2FvhDFGt07A48ij4yJU
 E0paV1Muw2Z78tppBx+Hc22vI56G1KD93ZFW6oM11DxScBjzdlNeCRDbjGnRvnqacpNnCRzlgYw55
 /BdF4dQRlGgR+hOyYbatTuD7r+iZcyrgSZBcQx4o2zy/X+3rNUAJNlogOfNn98BU3lLk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1stQmv-00066Z-Ej for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 12:06:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2F8195C5D2B;
 Wed, 25 Sep 2024 12:06:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5812DC4CEC3;
 Wed, 25 Sep 2024 12:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1727265982;
 bh=po9f51uDucsvgf7M2G/usUCoT5pvByTwmJt47R8DjF0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f8Im67IpF8vrJX1EwjPvmFp/vucw3PYKrL6Sd5fCgdPKKRgPuYptd/D4Ys8JwMSe6
 EY1HpAp/18iue54DVKYFOXE7BH5IHx/ASSTK65zb7Zqun3hhmFaOrSJVa4C2G5/mF9
 dqP7GGllwYauc6pFRmJy/lk/79emy0N7bW1gNs5A1RmWX4hdNz+aM5DPEDXLCJwjGF
 WzPGd7M3wd5L8WcPH1cHoHqYAKp+WEWXOOcEmMgw+GAeDJc5QYUQTg3JDS7FArpABM
 md7llhsNF4d3ziqFCLr9iRaPQAaH0DK7rKBWBUTZq+2IJbeO2sW4rk62y9PcDNKWk4
 ZG8dYaU2r/NCg==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed, 25 Sep 2024 07:52:36 -0400
Message-ID: <20240925115823.1303019-137-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240925115823.1303019-1-sashal@kernel.org>
References: <20240925115823.1303019-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.10.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Edward Adam Davis <eadavis@qq.com> [ Upstream commit
 d64ff0d2306713ff084d4b09f84ed1a8c75ecc32 ] syzbot report a out of bounds
 in dbSplit, it because dmt_leafidx greater than num leaves per dmap tree,
 add a checking for dmt_leafidx in dbFindLeaf. 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1stQmv-00066Z-Ej
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.10 137/197] jfs: check if leafidx
 greater than num leaves per dmap tree
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
 jfs-discussion@lists.sourceforge.net, ghandatmanas@gmail.com,
 juntong.deng@outlook.com,
 syzbot+dca05492eff41f604890@syzkaller.appspotmail.com,
 Edward Adam Davis <eadavis@qq.com>, peili.dev@gmail.com, rbrasga@uci.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Edward Adam Davis <eadavis@qq.com>

[ Upstream commit d64ff0d2306713ff084d4b09f84ed1a8c75ecc32 ]

syzbot report a out of bounds in dbSplit, it because dmt_leafidx greater
than num leaves per dmap tree, add a checking for dmt_leafidx in dbFindLeaf.

Shaggy:
Modified sanity check to apply to control pages as well as leaf pages.

Reported-and-tested-by: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=dca05492eff41f604890
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index ccdfa38d7a682..53904e06d843b 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2944,9 +2944,10 @@ static void dbAdjTree(dmtree_t *tp, int leafno, int newval, bool is_ctl)
 static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
 {
 	int ti, n = 0, k, x = 0;
-	int max_size;
+	int max_size, max_idx;
 
 	max_size = is_ctl ? CTLTREESIZE : TREESIZE;
+	max_idx = is_ctl ? LPERCTL : LPERDMAP;
 
 	/* first check the root of the tree to see if there is
 	 * sufficient free space.
@@ -2978,6 +2979,8 @@ static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
 		 */
 		assert(n < 4);
 	}
+	if (le32_to_cpu(tp->dmt_leafidx) >= max_idx)
+		return -ENOSPC;
 
 	/* set the return to the leftmost leaf describing sufficient
 	 * free space.
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
