Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B4C941235
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 Jul 2024 14:46:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sYmEi-0004GD-C1;
	Tue, 30 Jul 2024 12:45:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1sYmEV-0004Fv-QV
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jqf0MgKNEWkQBnt69NnRhd1Lr8U9GtOzjfNRf4yoh1Q=; b=VxHCftPveXi2Y4ROw1eoINWBQD
 /VqceGDwDY3erK+rBM3KXJb5YPz8yG5vK8ydYDQi1Os4fJ9G4SrGzIjE0UVcwfPyb/mQkZZMYHirX
 Ztq0iYJFtkH8FvmIbxuRYIbJj+Q2A5LeQLTQDlq44e+pKZbz4mNkPxyJ8Mqu4eph/v+M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jqf0MgKNEWkQBnt69NnRhd1Lr8U9GtOzjfNRf4yoh1Q=; b=B0PnemPbpx9ydy7+iEahYSpzdE
 TEI3uKMy5LM2BD0s64Sw+lR9MsXs+0kRGEx6l8fHPqSN1/uH6a+KpTOc3ucCmflkkNn7f8KaqDFNm
 4bMdvS4SPu4cbX8GF4HLm5CmzZ3o3a9Igtmiy8nE8br2COKsPibpTAl542YWKHIXRPVQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sYmEV-0007Ag-Ub for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:45:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 973EF61C3A;
 Tue, 30 Jul 2024 12:45:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFB7AC4AF09;
 Tue, 30 Jul 2024 12:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1722343534;
 bh=dj3ZUdCBqrSs5hApOQfY89TE70ROrZ696r/pf9VlDAc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=crcuVciVHq5ToUAF6rseBBn0DKLrnqpVniSsUCDq2vYt4VECYWFp+L37c3SdsUNvL
 wUthBQvIFuGM2X7ShFi1ypiD8ZwXd32M4Ha/tDJF67E7V4BrfUVnwce4XJ53vBTmrI
 lvda12X/fXnMRVpkx2Ze+WA5VjeJRkjfLEUdIRTYxZZtEtccibYt0eKLoBRwmsQWWk
 tHgBfSjuk3kFxFYm7dl+jJD9gmBbv5QIJrW8wIgds/Yk7O0p25ohdmdxtYyGd40QQk
 qUD4BLYrhcPIyP/iuoLeWNpz2D8xcmA/APsp9tmp58BoOH745S2mdKCShwfz+c1Nfz
 uiSk8XWeEtejg==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 30 Jul 2024 08:45:12 -0400
Message-ID: <20240730124519.3093607-6-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240730124519.3093607-1-sashal@kernel.org>
References: <20240730124519.3093607-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.10.2
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Pei Li <peili.dev@gmail.com> [ Upstream commit
 7063b80268e2593e58bee8a8d709c2f3ff93e2f2
 ] When searching for the next smaller log2 block, BLKSTOL2() returned 0,
 causing shift exponent -1 to be negative. 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sYmEV-0007Ag-Ub
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.10 6/7] jfs: Fix
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
index cb3cda1390adb..5713994328cbc 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1626,6 +1626,8 @@ s64 dbDiscardAG(struct inode *ip, int agno, s64 minlen)
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
