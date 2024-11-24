Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5089D720A
	for <lists+jfs-discussion@lfdr.de>; Sun, 24 Nov 2024 14:58:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tFD7X-0002VG-FJ;
	Sun, 24 Nov 2024 13:57:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1tFD7W-0002VA-Ga
 for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:57:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uClOWGP+1mQNVygufMFWG+cMiODXim1Qdh6SFr7MXyY=; b=Ce07hxudyPV4z32e9u+QMQRZuf
 HNYeF8UxeKCDHW5gGNBGvUWZCorHbpoBOZlI1kfN+2Ugn5jaX73CBwKmYj5nGVuXkFgUoVz+iDiGu
 jLlNhMFW6izlT9L31SHCEL7MQ6Whr1dUX7jePhUzx9XPETZ0t8RTYxMiQcSxKc9BgPqc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uClOWGP+1mQNVygufMFWG+cMiODXim1Qdh6SFr7MXyY=; b=YzlMGc5JIxWYz+ILIRZnzFAlmf
 vGCFoWu4VwwBswNyGSID7nUSKJKjEt+ZVDKHoQ9akyuccYQyz61mfXRyAVJyse+F47q/sJmvLCMS7
 4zYTJfEPQuKfFEHbahiLBOmprxbNF1g1xNH+jwkGWlmKhMyK3tta/7Po5yrpD939SJWM=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tFD7V-0001xR-R5 for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:57:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 0B0AFA40DF0;
 Sun, 24 Nov 2024 13:55:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EBBAC4CED1;
 Sun, 24 Nov 2024 13:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1732456658;
 bh=9Od5JDeAk14YjcF+ZGPXHt4neugAoQwO7pAs5NXydnI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E57U2SZ7K6PS1viro1KPAQ9RogdBjoxxGZgjT7P/NAD62CDJ0uz++JzBr+xCJaYio
 TdNDswm2AohqzYomU+kvke9JiJ45BFAUK0Ev5JIWy7opskfFXSpdNFqNyiYiNolvpm
 iwMLOzeVsUq03MFPZD027M6RWmz0ixXTlaoL8Se2yTOEbJxpJzhlpfNt1/ib2RJvPJ
 wP+fh1UIq4ZFBsE0FxoSClz0DNiQpjtBuj3YAndJYSWm/HHDDffkMbqRopglnp9WAS
 OYlY/5bPCvnCKwT9y6mcnt94A6DXK5GB/TMoxkHYhOh/v3MQTVCOHGQGugTo7LczhT
 Ovz7g42FgpgUA==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 24 Nov 2024 08:56:47 -0500
Message-ID: <20241124135709.3351371-14-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241124135709.3351371-1-sashal@kernel.org>
References: <20241124135709.3351371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.19.324
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Ghanshyam Agrawal <ghanshyam1898@gmail.com> [ Upstream
 commit a5f5e4698f8abbb25fe4959814093fb5bfa1aa9d ] When dmt_budmin is less
 than zero, it causes errors in the later stages. Added a check to return
 an error beforehand in dbAllocCtl itself. 
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
X-Headers-End: 1tFD7V-0001xR-R5
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.19 14/21] jfs: fix
 shift-out-of-bounds in dbSplit
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
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>,
 syzbot+b5ca8a249162c4b9a7d0@syzkaller.appspotmail.com, peili.dev@gmail.com,
 niharchaithanya@gmail.com, rbrasga@uci.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Ghanshyam Agrawal <ghanshyam1898@gmail.com>

[ Upstream commit a5f5e4698f8abbb25fe4959814093fb5bfa1aa9d ]

When dmt_budmin is less than zero, it causes errors
in the later stages. Added a check to return an error beforehand
in dbAllocCtl itself.

Reported-by: syzbot+b5ca8a249162c4b9a7d0@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=b5ca8a249162c4b9a7d0
Signed-off-by: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index b6c698fe7301d..7bb2d0212c90a 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1899,6 +1899,9 @@ dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno, s64 * results)
 			return -EIO;
 		dp = (struct dmap *) mp->data;
 
+		if (dp->tree.budmin < 0)
+			return -EIO;
+
 		/* try to allocate the blocks.
 		 */
 		rc = dbAllocDmapLev(bmp, dp, (int) nblocks, l2nb, results);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
