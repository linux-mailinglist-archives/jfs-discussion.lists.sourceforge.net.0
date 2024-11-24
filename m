Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 408BA9D7167
	for <lists+jfs-discussion@lfdr.de>; Sun, 24 Nov 2024 14:48:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tFCyS-0003GB-N0;
	Sun, 24 Nov 2024 13:48:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1tFCyR-0003G3-Bb
 for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:48:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v90wJ0N4CqAo1gV+EREipN8b/wIe1IL7emVtZK/jr5s=; b=dka8cvgweGqpAYg2fJjvI27gr6
 oFWaNVhoGAFSbL6Kx95+Z0RGttLkuF1/WDg5yIcP/CH0RZWpd3n/6BOJMI5sJBEZ2hI1pMTcqfAQg
 sBPk5+eD5MJ/MY4MtSx80OGF4QjlN9OaTxlGnCZKaNRW7xEX4LEvEL9Bm0X5+GEnETmY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v90wJ0N4CqAo1gV+EREipN8b/wIe1IL7emVtZK/jr5s=; b=FE+ArdugG3JtRnnS7O0on5/bRS
 txIH8ZT/MAtAHm6piKAqmazP65zivbkx3CyeYIg9y4WrGqwp6BxU/riIcFkS3x7DGdLqO1JUhZKYs
 8k6wFwXWkrtIJ3+RyDUmERspbDXRYWq/LPZdVwEi4APyMs8zXbEZmxm2auc907gg8m9s=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tFCyQ-0001RD-45 for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:48:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 5A795A40CD4;
 Sun, 24 Nov 2024 13:46:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78241C4CED3;
 Sun, 24 Nov 2024 13:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1732456099;
 bh=BO6XiJPNfT8ipKf07nKW33xa4VrXBD/jl7rU5wBBQJI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D9Wfa0usv0Yp0N2DAjttH1PBzAbuDN8d1NqicoUt9IWit2lD6l+kjLoEhnbtLECgp
 xKgTl5PmrUohAlIAGTw5uNQgIpXYaWgYYle+iQC861rTqOT3qG1jLC+cOUI1k7ejtA
 5+SOWDm36oRNPU06X3VzVhrXHtRyqNzT9OcMEbaVM/ez2NM/7jR+KW1/+tqbqQGBwU
 uvwfoPpnw8iftyoayMJzxT5sdw7Y5Gj0HZKzWSyk667EsGrVMhflDFcJm2GKzdeK2m
 EWc/FIXaI+kNYX3z8hEXf04eGG7xN8IgQ7H13vpHBNSV9lw2zMioy3jwc/UX5bL5tc
 AnNBfLP3vlJjA==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 24 Nov 2024 08:45:16 -0500
Message-ID: <20241124134637.3346391-41-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241124134637.3346391-1-sashal@kernel.org>
References: <20241124134637.3346391-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.63
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Nihar Chaithanya <niharchaithanya@gmail.com> [ Upstream
 commit a174706ba4dad895c40b1d2277bade16dfacdcd9 ] When the value of lp is
 0 at the beginning of the for loop,
 it will become negative in the next assignment
 and we should bail out. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tFCyQ-0001RD-45
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.6 41/61] jfs: add a check to
 prevent array-index-out-of-bounds in dbAdjTree
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
 syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com,
 Nihar Chaithanya <niharchaithanya@gmail.com>, rbrasga@uci.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Nihar Chaithanya <niharchaithanya@gmail.com>

[ Upstream commit a174706ba4dad895c40b1d2277bade16dfacdcd9 ]

When the value of lp is 0 at the beginning of the for loop, it will
become negative in the next assignment and we should bail out.

Reported-by: syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=412dea214d8baa3f7483
Tested-by: syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com
Signed-off-by: Nihar Chaithanya <niharchaithanya@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 39957361a7eed..f9009e4f9ffd8 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2891,6 +2891,9 @@ static void dbAdjTree(dmtree_t *tp, int leafno, int newval, bool is_ctl)
 	/* bubble the new value up the tree as required.
 	 */
 	for (k = 0; k < le32_to_cpu(tp->dmt_height); k++) {
+		if (lp == 0)
+			break;
+
 		/* get the index of the first leaf of the 4 leaf
 		 * group containing the specified leaf (leafno).
 		 */
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
