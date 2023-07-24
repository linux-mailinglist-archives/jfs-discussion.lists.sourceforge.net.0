Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 260E875E70C
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jul 2023 03:24:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNkJD-0007wi-EX;
	Mon, 24 Jul 2023 01:24:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1qNkJC-0007wa-Bm
 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Jul 2023 01:24:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6BO1QagZXojlic80OAtM47ijNpNXJYlWV2c14m7qJ9k=; b=MjpqBHmxf0+JRWVqainEUoE/OT
 +4+0oiwsU9IJ+JXSg7GP5E5vnxGvXc+WSCqIQEf2Kn7q06iLU78X0k8PZAU7ikwto4m0GzHAfFwrW
 irL0VlrCoLNsSRvrZ4T+eVCSx5GtLPbECjj+oG+STJhucVV9QeAzqk8W6jhD3gIKWgdE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6BO1QagZXojlic80OAtM47ijNpNXJYlWV2c14m7qJ9k=; b=C/FdZcx34aK5YqloOACuTZuKPF
 cEX0GNZwLpgdQHcVOzhwKsdT4axYBOnC9pzDn0S2BtB+whuxWBOEAuPConrK+pI/G0dG2VGpGqb6j
 Ls5G033aLN5La57hTgics6UGb26enc9JQ2d5Sg9INX6MhtnwQRi2McgIzHbh0mt/znsc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qNkJC-0006eI-Nl for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Jul 2023 01:24:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2B93B60F1B;
 Mon, 24 Jul 2023 01:24:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C272DC433BD;
 Mon, 24 Jul 2023 01:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1690161856;
 bh=nZcd8Y0w1L07bToIpy37Cq9joP5aPuM7Dv2MNvW6M3Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bo8GrmqOw3+yYM3hageqGBaae8Lawp3WqKRXStXw9qwT1fZ7LPFzcsd3UDdoWaME1
 ZX1VHf4yS7Hn54q9NoFeyrNO9LIt1DnjqAa7+alg2oEeVti1Mm6RYWOAgDqDo+8sO5
 hNSAnIsTR6qMivfrocvTBNkNzEirYHuIkODlXIPHQfBTCLgtaspNviRTjv80efegzu
 aUz7VMJf3Yp/J9YvjX3P8UIiT7zQvqTTeE4rE8g5jNPdILASW+tlyvcKOncK8wFlsX
 2TYMdebfujb6Mr51757GM6LbpYGvE1/WQjDNpro34VqbtL43G+c4INmTjel/uFtGIz
 aoimUWA8pDXuw==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 23 Jul 2023 21:23:33 -0400
Message-Id: <20230724012334.2317140-22-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230724012334.2317140-1-sashal@kernel.org>
References: <20230724012334.2317140-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.121
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Immad Mir <mirimmad17@gmail.com> [ Upstream commit
 47cfdc338d674d38f4b2f22b7612cc6a2763ba27
 ] Syzkaller reported an issue where txBegin may be called on a superblock
 in a read-only mounted filesystem which leads to NULL pointer deref. This
 could be solved by checking if the filesystem is read [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qNkJC-0006eI-Nl
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.15 22/23] FS: JFS: Fix
 null-ptr-deref Read in txBegin
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
 syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com,
 Immad Mir <mirimmad17@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Immad Mir <mirimmad17@gmail.com>

[ Upstream commit 47cfdc338d674d38f4b2f22b7612cc6a2763ba27 ]

 Syzkaller reported an issue where txBegin may be called
 on a superblock in a read-only mounted filesystem which leads
 to NULL pointer deref. This could be solved by checking if
 the filesystem is read-only before calling txBegin, and returning
 with appropiate error code.

Reported-By: syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?id=be7e52c50c5182cc09a09ea6fc456446b2039de3

Signed-off-by: Immad Mir <mirimmad17@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/namei.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index 4fbbf88435e69..b3a0fe0649c49 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -799,6 +799,11 @@ static int jfs_link(struct dentry *old_dentry,
 	if (rc)
 		goto out;
 
+	if (isReadOnly(ip)) {
+		jfs_error(ip->i_sb, "read-only filesystem\n");
+		return -EROFS;
+	}
+
 	tid = txBegin(ip->i_sb, 0);
 
 	mutex_lock_nested(&JFS_IP(dir)->commit_mutex, COMMIT_MUTEX_PARENT);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
