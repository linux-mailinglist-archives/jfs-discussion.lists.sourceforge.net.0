Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A639D720E
	for <lists+jfs-discussion@lfdr.de>; Sun, 24 Nov 2024 14:58:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tFD7c-0008Bd-HA;
	Sun, 24 Nov 2024 13:57:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1tFD7b-0008BV-2A
 for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:57:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9wkW6kHYUp6M4AJmSyuJAc8J2mhR0KovLMZWJHiCWJQ=; b=cnUETRfefA8FjkI3tVDRuUur4S
 BErDoUZUxEB8ZAKJ9IRnsPmDNDfBxHq2SeOVwDffMxe+uviazXHiBZoen4Bz/Wmu2F4vGdS04FGlW
 n1hdHd/JsOyDOH04LYe9wpZ3WUPp8OuKvMFf9OFKjuUB0lV1w1Z/ZiNTtnN0aPon87X0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9wkW6kHYUp6M4AJmSyuJAc8J2mhR0KovLMZWJHiCWJQ=; b=ZZrojFg4EMe88zr3qIrmOCAz7n
 jLC6ZiIKSpX4vG0wSmBvtkn3HJif7ALm1Va4XB4cLozolw+XXFHoY2kqLL5sJY0vKTPGZ1YCbcKkW
 OApBQK7bm/p6HfsbmxJe3raUaE+gUNEIlMyqKoly4+44vACkbi9tVg3nbDnJN5I/miuM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tFD7b-0001xm-6K for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:57:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4573E5C4AB5;
 Sun, 24 Nov 2024 13:57:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32D6DC4CED1;
 Sun, 24 Nov 2024 13:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1732456664;
 bh=Q3NTUcQjhKJe8oHlyi1+hjuoKGBKJhWs1Qq1F51MBWE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dkmQyNnvUk8Jk3MsvfSanegZW9fv2j5rBMlppkN3CKCEPNw7R1D2QduxNXhdoTmVn
 koMCQ+4wIefZvnaJzTaIb0JWoBGE/zH4dHdIoYsjs5dq28urVwGc8BJBJPI2kYg8o/
 9qnMJIOnHf+7f2yA4hF4eTAKbJiP5GJJm0IbfLQOwp+oCR4kVAQXjtIAoVNViEGEU8
 c9KtHVoixXafOEbcYhgsJr563R9xwPVc1Di2NLBq54Ap5JkWb8ntNqUY2jiJuIVIZ4
 scTGzi4kTRfOmJOD/mJXMK0FIlGUYQMlVKw9RGJt9Eb35eDjw6ju+BBnZGJ0CMVB5a
 XHqbIgR95RnDw==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 24 Nov 2024 08:56:49 -0500
Message-ID: <20241124135709.3351371-16-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241124135709.3351371-1-sashal@kernel.org>
References: <20241124135709.3351371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.19.324
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Nihar Chaithanya <niharchaithanya@gmail.com> [ Upstream
 commit a174706ba4dad895c40b1d2277bade16dfacdcd9 ] When the value of lp is
 0 at the beginning of the for loop,
 it will become negative in the next assignment
 and we should bail out. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tFD7b-0001xm-6K
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.19 16/21] jfs: add a check to
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
index 7bb2d0212c90a..7e1cc0e21eff2 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2966,6 +2966,9 @@ static void dbAdjTree(dmtree_t *tp, int leafno, int newval, bool is_ctl)
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
