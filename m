Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 192B09D71DF
	for <lists+jfs-discussion@lfdr.de>; Sun, 24 Nov 2024 14:55:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tFD4y-0002Rg-MK;
	Sun, 24 Nov 2024 13:55:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1tFD4x-0002RZ-Cy
 for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:55:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JSCmG7ocnvuLYPabYHxzog8bHQJLsyXu0VCvLD0M3fs=; b=VdCxFlITJa2+M/OY0F2PAi8tbh
 ydcRGH/DD1UhDZpnLIbjeWusnS+JH5c+CdBTKwJAnokbOr+tLfmFRa2t5RHuKTPmkdqOm3e6Xce45
 Wz+cxyhZmQ7/neIT8Qj1xWpkgMoMaLkX/QgiZw0uIZyfaZp8TxlEdExqw/yCOCy9lPu8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JSCmG7ocnvuLYPabYHxzog8bHQJLsyXu0VCvLD0M3fs=; b=Mk1BVQjElgASU+CcvXpz1SZoac
 g4dgT+mLlhsejigynKGP6zz+PAqT51f7Oe/MFJ6Mw+8acjzH6Cvhl5hcNIbK5haC1t6YT2AK0GhUY
 0srIRXd3J9r+Ui8QRxt5LSUfpe/IrGcETe2b/XqehWr+lZ9d1jpf59nKb/IfXqKWNJuI=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tFD4w-0001om-NK for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:55:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id EFBF7A40DE8;
 Sun, 24 Nov 2024 13:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3754DC4CECC;
 Sun, 24 Nov 2024 13:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1732456499;
 bh=XCbhBMU/JI1zM9eN8vKJngvuYK2k7hNwSGMKwfth/4M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GUAAaaVRem+TkLfLFLwIy0c9xUn9OZlYoHCqijmqmcXL/LaqRI4cKJsDf3N+tnICy
 cLCjyl6eLf096ApPYIw+NE613X3en9n3Z+QQY3czaruNZE8rkg/H69GVxLihuuBZ2Q
 wse5aIVQVcdtEQi/r3NU9H/ORcZxzfafzT7IzFiKqUboEoSdk8Qg2xfWD0ApBH1aZz
 4PPzxitqZnH9VbHbCSMdx5sZ67Ye97bCIBKr5MWLtjN9FnkNHiSEwmmmB+JWxq3xOU
 EJT+f2yTfUR69C0vrGCqCpkceJ6y+9hN4h9+c5WcMZLJbi8KrSWsdthWFNDHhCX5l4
 Q9c3vp/BGyGYQ==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 24 Nov 2024 08:53:35 -0500
Message-ID: <20241124135410.3349976-23-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241124135410.3349976-1-sashal@kernel.org>
References: <20241124135410.3349976-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.230
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
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-trusted.bondedsender.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tFD4w-0001om-NK
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.10 23/33] jfs: add a check to
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
 jfs-discussion@lists.sourceforge.net, eadavis@qq.com, aha310510@gmail.com,
 ghanshyam1898@gmail.com, peili.dev@gmail.com,
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
index c61fcf0e88d29..ef220709c7f51 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2953,6 +2953,9 @@ static void dbAdjTree(dmtree_t *tp, int leafno, int newval, bool is_ctl)
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
