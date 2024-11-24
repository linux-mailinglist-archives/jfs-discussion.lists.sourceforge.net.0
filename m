Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8B79D71BD
	for <lists+jfs-discussion@lfdr.de>; Sun, 24 Nov 2024 14:54:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tFD3B-0000CB-Q3;
	Sun, 24 Nov 2024 13:53:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1tFD3A-0000By-DS
 for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j2cuIYd3bne1jkyGg5eQe61NoN35GycsCGIyNghPncE=; b=ZlWh37SzJQuQy8eslL5gS4iVK7
 JvRIP0o4vRhokTekqd8tBy8U6+0ChXWKdJRB9KE3EIFK31yG9GiU58dNVH7MkMQdhS+uIxyTJQn+K
 olhWZzl2f8ST/q7WhuxBFEbiRlGaOfSFYg+LEkJS/l3xH8oaPXk07dfgRfjaGTJwI3nA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j2cuIYd3bne1jkyGg5eQe61NoN35GycsCGIyNghPncE=; b=gTQnvLqHCPdPnLnddbOdY2+K4I
 1A61EUi/c6E2am7YhC9Nr+XtHAXFVQcos1SoMncw1vFwEUYPQMWYPttTGb7m/h6L0sbDHwh7wwztk
 SFQ++ExJGkl4fPSDsLqwB8yiKw6sWbOAqxKKZwx5kASxQjGMZCna+4sbEO7+N3LIx1/s=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tFD39-0001jF-Nj for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Nov 2024 13:53:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C7CE25C5611;
 Sun, 24 Nov 2024 13:52:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20AF3C4CECC;
 Sun, 24 Nov 2024 13:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1732456394;
 bh=57UBQmnW7OuFyYta6vvxjU5mrQGRwbCXRqrBczkBK4w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uL0SZ/LxvHVsuTzGbjDPCi8jwOKXPUa2jID3d2EISufVV9v5xeB6oOFfif/v5gLLm
 KIFJBo+dqrCc2mkyM8MNGmM4GvxyGf6PvqS4ejM0Ecu68g0pqvbF9RobWJqPrVvnjb
 IqHDL5ZpthYKAVhgGmF2QX415TNHiZ8l10JtMgmkpw6hPPsZoR66FCaIjJoGtLAhKK
 w3ipT9DOA/Q/sXkN+6RMXZXD4FAh6KCMyhxYI9CTOk0YsHM+vcAu4J42q9fl6tWoQS
 mUMCNRcjCM6RhVb51uYDy+nbNcg5GFtRm7nou7JM/AWGUpDBnAzafhBzmaWAYOmeZE
 7O9FcHYGCOMdg==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 24 Nov 2024 08:51:39 -0500
Message-ID: <20241124135219.3349183-25-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241124135219.3349183-1-sashal@kernel.org>
References: <20241124135219.3349183-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.173
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Ghanshyam Agrawal <ghanshyam1898@gmail.com> [ Upstream
 commit 839f102efb168f02dfdd46717b7c6dddb26b015e ] The stbl might contain
 some invalid values. Added a check to return error code in that case. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Headers-End: 1tFD39-0001jF-Nj
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.15 25/36] jfs: fix
 array-index-out-of-bounds in jfs_readdir
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
 jfs-discussion@lists.sourceforge.net,
 syzbot+0315f8fe99120601ba88@syzkaller.appspotmail.com,
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>, eadavis@qq.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Ghanshyam Agrawal <ghanshyam1898@gmail.com>

[ Upstream commit 839f102efb168f02dfdd46717b7c6dddb26b015e ]

The stbl might contain some invalid values. Added a check to
return error code in that case.

Reported-by: syzbot+0315f8fe99120601ba88@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=0315f8fe99120601ba88
Signed-off-by: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dtree.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 8f7ce1bea44c5..a3d1d560f4c86 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -3187,6 +3187,14 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
 		stbl = DT_GETSTBL(p);
 
 		for (i = index; i < p->header.nextindex; i++) {
+			if (stbl[i] < 0 || stbl[i] > 127) {
+				jfs_err("JFS: Invalid stbl[%d] = %d for inode %ld, block = %lld",
+					i, stbl[i], (long)ip->i_ino, (long long)bn);
+				free_page(dirent_buf);
+				DT_PUTPAGE(mp);
+				return -EIO;
+			}
+
 			d = (struct ldtentry *) & p->slot[stbl[i]];
 
 			if (((long) jfs_dirent + d->namlen + 1) >
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
