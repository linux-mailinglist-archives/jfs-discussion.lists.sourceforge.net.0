Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C23A7A9DC
	for <lists+jfs-discussion@lfdr.de>; Thu,  3 Apr 2025 21:04:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u0PqW-0001K8-EP;
	Thu, 03 Apr 2025 19:03:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1u0PqV-0001K2-Gp
 for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Apr 2025 19:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xUvkJKw4zyGYTIeWlJ8gab3M4+PsZIiYiMQVvtp06Xs=; b=QevEVdrEbBwtrSmk8X1mFyHKmb
 zsXnBWhijnU5xOLOu0XDQJrNvzzJ0DfVImj4KqkDS/3yxT7mwlWjjQ3pLvzWK22gENZPIg3WK8iAP
 34uBjrV0T2IWnxc7mN3iWZOzbe+eAeMwHHNF3kggt1f1nNm+jkoMqDToz05BOAWEg37A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xUvkJKw4zyGYTIeWlJ8gab3M4+PsZIiYiMQVvtp06Xs=; b=KEtpi3CZmpspb/N001rEoaBhew
 qIDUAwPnMMW1YkFAOvzT/+WDYqMNyxs5uxM1GytFnK6NxWN0n+2/EB2LLQ3gLyzGKzl8AoIlSP60m
 W0qDTAkR7g2PzysTQZ/aoZJRlYJ5T/mrYRIrWAaWhSkJJJftkZya4OCP4d/eSaI/02OU=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u0PqF-0002k0-9H for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Apr 2025 19:03:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C8A05A45A50;
 Thu,  3 Apr 2025 18:57:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 154AAC4CEE3;
 Thu,  3 Apr 2025 19:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1743706981;
 bh=Yi6NBWvt1kWSbty3oBCwzar1OFqmjwSEF8xkY7+ToHw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UP4s7inBv/DBN+noEOPKIEc9h9RDJJ3lAytAMFuY4N4p2UvYoVujNpmNu+sVM8DfI
 r8hrSDoFqtgU6Oss3204mtv/aE4D6a4EBrsQZOPfwyDRM8oj8Iq8IWcjhNB8MrrXwz
 g64xEjzAmxCMzqTTEc2o/8flglhOZ7/bXLKKIHAxRq42HtTAx7PBxPRN3ksUD4MgdZ
 5AgxP3MkCgTqDMySezF2ZEVtB1z4spkuWYm5M9ZpDkJMiYzD7llRDHTE/5/w0so3it
 BDDyw7vCb69tkrLwAjbxdXFLrLZvPvYDkDHIPxUM4UAQUkZa0/lLiW6+eyAZgzhZHa
 sUwQeG4DKJYtA==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu,  3 Apr 2025 15:01:36 -0400
Message-Id: <20250403190209.2675485-21-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250403190209.2675485-1-sashal@kernel.org>
References: <20250403190209.2675485-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Rand Deeb <rand.sec96@gmail.com> [ Upstream commit
 70ca3246ad201b53a9f09380b3f29d8bac320383
 ] The expression "inactags << bmp->db_agl2size" in the function
 dbFinalizeBmap()
 is computed using int operands. Although the values (inactags and db_agl2size)
 are derived from filesystem parameters and [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
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
X-Headers-End: 1u0PqF-0002k0-9H
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.14 21/54] fs/jfs: cast inactags
 to s64 to prevent potential overflow
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
 aha310510@gmail.com, eadavis@qq.com, rbrasga@uci.edu,
 niharchaithanya@gmail.com, Rand Deeb <rand.sec96@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Rand Deeb <rand.sec96@gmail.com>

[ Upstream commit 70ca3246ad201b53a9f09380b3f29d8bac320383 ]

The expression "inactags << bmp->db_agl2size" in the function
dbFinalizeBmap() is computed using int operands. Although the
values (inactags and db_agl2size) are derived from filesystem
parameters and are usually small, there is a theoretical risk that
the shift could overflow a 32-bit int if extreme values occur.

According to the C standard, shifting a signed 32-bit int can lead
to undefined behavior if the result exceeds its range. In our
case, an overflow could miscalculate free blocks, potentially
leading to erroneous filesystem accounting.

To ensure the arithmetic is performed in 64-bit space, we cast
"inactags" to s64 before shifting. This defensive fix prevents any
risk of overflow and complies with kernel coding best practices.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index f9009e4f9ffd8..f89f07c9580ea 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3666,8 +3666,8 @@ void dbFinalizeBmap(struct inode *ipbmap)
 	 * system size is not a multiple of the group size).
 	 */
 	inactfree = (inactags && ag_rem) ?
-	    ((inactags - 1) << bmp->db_agl2size) + ag_rem
-	    : inactags << bmp->db_agl2size;
+	    (((s64)inactags - 1) << bmp->db_agl2size) + ag_rem
+	    : ((s64)inactags << bmp->db_agl2size);
 
 	/* determine how many free blocks are in the active
 	 * allocation groups plus the average number of free blocks
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
