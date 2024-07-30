Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0A0941245
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 Jul 2024 14:47:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sYmFa-0004ap-FZ;
	Tue, 30 Jul 2024 12:46:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1sYmFZ-0004ag-BM
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:46:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5GJKyMhpaDC42mXclmbwAwem9HQJs37mUfxqVAnex48=; b=lc8nbMEbW6GQDOcU50ywI/KK0M
 qm+oaCGqlAdxhIlTM4nsguTNWj3omIrCma5rBN4V54iY3WkzNBh9VOPsb1c1ek5YbMsstBnvGX9Uk
 ae6YECsLlZQL2mRh6xKrIOpPXqs1QrRSJqkBRg/bcxp0KFKt281qCkF1XXv5ATvV2ft4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5GJKyMhpaDC42mXclmbwAwem9HQJs37mUfxqVAnex48=; b=TOREHGRUyA4/3QBkgxy0Q4s6RE
 D43QotAmxCHiampkknN0vgpkgetetaysQdr3CesDco02xt+C3gge++rqnYAr2HhjV7/zvTS0J+80t
 zz6hk5zw4RqmUHhpT2y3oy8Xf2afdxZf3+seL+CTONsGXVoXBNsipKVOp94htUiM1l7A=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sYmFZ-0007H4-8y for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:46:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 88ABDCE0FFF;
 Tue, 30 Jul 2024 12:46:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E63EC32782;
 Tue, 30 Jul 2024 12:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1722343597;
 bh=dwrRDKD/T9ZYtlcZgiYiXiflk63vQUyVGllK9EDxPVQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l98OK3u1mj8vO52SZSK1Yc/7R7g/EptpHL2SuwX89wlnJQ+g1ObI35ysKuZJEQHvS
 umRtpwiiRgMsULVE7d1Oo69zi2FGlTYUqwRYdEsRA8OxqecR9DcQ0RAoioOlp7p5dI
 6I7WBCDy3G6p4NfnmUWa7sUzb0ij+tPLJeKImK5dXFKvcDvcgPbIPymTTB3KUhlwYv
 Ha2Z1QF2DFrLWVFvsq09Xttjp2TgeKi0+Vm3KzaOP4tbf74Fofl4j4I14oyoWmU8P2
 iGITlK2p6OyRjhgZqftb5M2ogRoBWwdDsvg4J3tuVik+nZbQ08Ueyp3/7KhzPO4Kub
 LlAYRO3vcUHQA==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 30 Jul 2024 08:46:25 -0400
Message-ID: <20240730124629.3098598-3-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240730124629.3098598-1-sashal@kernel.org>
References: <20240730124629.3098598-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.223
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Pei Li <peili.dev@gmail.com> [ Upstream commit
 7063b80268e2593e58bee8a8d709c2f3ff93e2f2
 ] When searching for the next smaller log2 block, BLKSTOL2() returned 0,
 causing shift exponent -1 to be negative. 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [145.40.73.55 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [145.40.73.55 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sYmFZ-0007H4-8y
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.10 3/3] jfs: Fix
 shift-out-of-bounds in dbDiscardAG
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
 syzbot+61be3359d2ee3467e7e4@syzkaller.appspotmail.com,
 Pei Li <peili.dev@gmail.com>, osmtendev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Pei Li <peili.dev@gmail.com>

[ Upstream commit 7063b80268e2593e58bee8a8d709c2f3ff93e2f2 ]

When searching for the next smaller log2 block, BLKSTOL2() returned 0,
causing shift exponent -1 to be negative.

This patch fixes the issue by exiting the loop directly when negative
shift is found.

Reported-by: syzbot+61be3359d2ee3467e7e4@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=61be3359d2ee3467e7e4
Signed-off-by: Pei Li <peili.dev@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 9b6849b9bfdb9..acfe13f368562 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1694,6 +1694,8 @@ s64 dbDiscardAG(struct inode *ip, int agno, s64 minlen)
 		} else if (rc == -ENOSPC) {
 			/* search for next smaller log2 block */
 			l2nb = BLKSTOL2(nblocks) - 1;
+			if (unlikely(l2nb < 0))
+				break;
 			nblocks = 1LL << l2nb;
 		} else {
 			/* Trim any already allocated blocks */
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
