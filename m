Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A01C82E4F4
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Jan 2024 01:28:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPXJ7-0003s1-TR;
	Tue, 16 Jan 2024 00:27:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1rPXJ5-0003rq-S4
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nwz6kPWO1dH4Ecol0fZJDBvEQRLnisIq5BbqqNdP5MQ=; b=bT8vaHxeVfMjnp6KooRPaJO3Yo
 pP3cYBy+Cyndb6gfXPvDew5qGFTWo5iWLYp2F9EAqAfA1NzFlWObOsnM/JKCUZLHqrZ2RCxm7O2MJ
 8XyNQlemg6n1e2xg7QH5bbT7hOG+DDeVODaDxeBvXF52xyJL+ET20pJAzANZIvWlL0iA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nwz6kPWO1dH4Ecol0fZJDBvEQRLnisIq5BbqqNdP5MQ=; b=kholSR1HfO5FHGcRVPxExy5WTs
 JbjMHDJiUUkcbLnsYf/w7WCC17Lma9efhSwQxJ1f1MP3TqATvWywWCO9X451eGLVBn/0H3MYTsaYw
 Xi/QSijtgTDz/DFJ6SM0Dczbj3hU2Xe8sbRNpr2BXd9faSG0iTqdTPwcBk1aThYeNGU0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPXJ4-00037Y-VJ for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:27:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4251260BA3;
 Tue, 16 Jan 2024 00:27:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE27FC43394;
 Tue, 16 Jan 2024 00:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705364864;
 bh=kdhhXEJc9HdVp/h1emxwajwaH4zcDSobKJF9ZQkHgTg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Tk4FDrxQeeE5fNm9UVb7PTvnO7ZVpedBBCtDRuE86ynM1mSFA2wrtuhnMDmUwW55M
 uJuLZl3tG8y7tWYdK60QnGk9mjFCMsf+uh3QODTwa44qAsYryh/p/dJYjfp8E/Jcfr
 fzi9WMXrcunp1TMI4nFCKLySHSRTtcMOP5e68sIPOHXtR5eChvlgwlfXek6/rRgBHF
 1PlobVJskfvSyaeKyNTsxZ7wpU8xde/CSte2PoOlmun/+OIgxGg8wAp3lvK8aFkR3Y
 UZl28kTClqZsgrxoOJlggEWWhK/50sB1Rl0m51Xtx3BHJT6sd2DdP/l2rnsn6YxaKl
 Vjwzk3gv4AGpQ==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 15 Jan 2024 19:27:09 -0500
Message-ID: <20240116002731.216549-3-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116002731.216549-1-sashal@kernel.org>
References: <20240116002731.216549-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.267
X-Spam-Score: -6.7 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Manas Ghandat <ghandatmanas@gmail.com> [ Upstream
 commit
 fa5492ee89463a7590a1449358002ff7ef63529f ] Currently while searching for
 current page in the sorted entry table of the page there is a out of bound
 access. Added a bound check to fix the error. 
 Content analysis details:   (-6.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
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
X-Headers-End: 1rPXJ4-00037Y-VJ
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.4 03/12] jfs: fix
 slab-out-of-bounds Read in dtSearch
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
 jfs-discussion@lists.sourceforge.net, Manas Ghandat <ghandatmanas@gmail.com>,
 kernel test robot <lkp@intel.com>, osmtendev@gmail.com,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Manas Ghandat <ghandatmanas@gmail.com>

[ Upstream commit fa5492ee89463a7590a1449358002ff7ef63529f ]

Currently while searching for current page in the sorted entry table
of the page there is a out of bound access. Added a bound check to fix
the error.

Dave:
Set return code to -EIO

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/r/202310241724.Ed02yUz9-lkp@intel.com/
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dtree.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index a6d42e49d156..077a87e53020 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -633,6 +633,11 @@ int dtSearch(struct inode *ip, struct component_name * key, ino_t * data,
 		for (base = 0, lim = p->header.nextindex; lim; lim >>= 1) {
 			index = base + (lim >> 1);
 
+			if (stbl[index] < 0) {
+				rc = -EIO;
+				goto out;
+			}
+
 			if (p->header.flag & BT_LEAF) {
 				/* uppercase leaf name to compare */
 				cmp =
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
