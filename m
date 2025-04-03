Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BFCA7AA37
	for <lists+jfs-discussion@lfdr.de>; Thu,  3 Apr 2025 21:09:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u0PwS-0006Ap-CH;
	Thu, 03 Apr 2025 19:09:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1u0PwR-0006Ai-D2
 for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Apr 2025 19:09:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WqiKuJSWIBYnOiZPly4iU3TuK9N4n8j1csyF96LHEbE=; b=H0BAL88HycGaNgolc9W3hLyLXg
 iPIeTqMTkQwEqyC4RmMj5q7BmaZe3LgnpRM7SlEgTTTm3BNe5QHLkrO7a5SJ2sBlTayxLVOyJrYlx
 wmpCaTSCaYNjge6E5Q20gYibrqgcN/QeyF5m5+eV2tgxIfv9s9t2fKOZiXUqtPv6w0W8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WqiKuJSWIBYnOiZPly4iU3TuK9N4n8j1csyF96LHEbE=; b=HGCeK+LfEqgF8d/7W6YUMa2TyQ
 Zt5nE2CR3QQ29Nf3S5faUIXYRTwysIN/+6yzIn1+FekVqLCdTOxCHaSXYTaSqLHxaEOtdAXXfwLGY
 idxx/iiNAlWIlB3zC7L1rO2LGugnJuonE2zlzbnWIy5ibEWJEbG//AKSQxQdVyLVl6fs=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u0PwC-0003G3-59 for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Apr 2025 19:09:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C3E725C6C88;
 Thu,  3 Apr 2025 19:06:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04E2BC4CEE3;
 Thu,  3 Apr 2025 19:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1743707345;
 bh=VQQiRatY8EIEAIaWfZVXAqvF+w2crUxrchqhiCQJ6Sg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kbROkaylruy/yEHHiyVHIoMlQQJgUqVXB4FnS7FaE+Y/XQhuihw6trgrj4wFlqdk1
 kCzmbMrvZN7LTRWlqNGScs4U7Lnnr5BRW9VnOPAuVLO0WTH9gew/pGUA7Tf3IjVSEA
 F0fec/KLzTXRZKOfYjsrf/R/J6sCJp5Vl4qa0l9iA4Sr1s3erifOEB+Fq9OBWaXcJt
 Cbze20TrKy52EZIRb3bWMCH486ZqyBgg07IoMvSeRYCMWWVmTySf9LKzxZnWLvMdQD
 +a+ewXHZr0lXQbUooIatiTv3MeGJExgkqtT12hS6PGxHznVN4KxcnsQ8dYctVy1ULt
 uk1gYo5DI17LQ==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu,  3 Apr 2025 15:08:33 -0400
Message-Id: <20250403190845.2678025-7-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250403190845.2678025-1-sashal@kernel.org>
References: <20250403190845.2678025-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.132
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Edward Adam Davis <eadavis@qq.com> [ Upstream commit
 ddf2846f22e8575d6b4b6a66f2100f168b8cd73d ] The width in dmapctl of the AG
 is zero, it trigger a divide error when calculating the control page level
 in dbAllocAG. 
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u0PwC-0003G3-59
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.1 07/18] jfs: add sanity check
 for agwidth in dbMount
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
Cc: syzbot+7c808908291a569281a9@syzkaller.appspotmail.com,
 Sasha Levin <sashal@kernel.org>, jfs-discussion@lists.sourceforge.net,
 shaggy@kernel.org, ghanshyam1898@gmail.com, aha310510@gmail.com,
 Edward Adam Davis <eadavis@qq.com>, peili.dev@gmail.com, rbrasga@uci.edu,
 niharchaithanya@gmail.com, rand.sec96@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Edward Adam Davis <eadavis@qq.com>

[ Upstream commit ddf2846f22e8575d6b4b6a66f2100f168b8cd73d ]

The width in dmapctl of the AG is zero, it trigger a divide error when
calculating the control page level in dbAllocAG.

To avoid this issue, add a check for agwidth in dbAllocAG.

Reported-and-tested-by: syzbot+7c808908291a569281a9@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=7c808908291a569281a9
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 11b6be462575c..5e32526174e88 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -204,6 +204,10 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_aglevel = le32_to_cpu(dbmp_le->dn_aglevel);
 	bmp->db_agheight = le32_to_cpu(dbmp_le->dn_agheight);
 	bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
+	if (!bmp->db_agwidth) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
 	bmp->db_agstart = le32_to_cpu(dbmp_le->dn_agstart);
 	bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
 	if (bmp->db_agl2size > L2MAXL2SIZE - L2MAXAG ||
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
