Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D4B94124D
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 Jul 2024 14:47:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sYmFz-0002nQ-B6;
	Tue, 30 Jul 2024 12:47:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1sYmFo-0002mZ-Bl
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:47:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2jo9n51r5K7IPC1XzVvb4/XG7pUdLHhUddifVZUQ8Go=; b=YWPBMIrlQKyiOlK+l1RpC/S9zP
 H2IeHp1MPA373ALR9Qjb+YaslG2UE8QrWZzxyBzahUJ2EDpX1+zVmyXnwBBXaCNArPO/3gGtGi0ov
 qDW3Zq/Ksny0kIMuTxYbyq6zpOKSmQpsZqMwVMoTr+QFaaMiGKdfXWjcs1bCzDTarDVM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2jo9n51r5K7IPC1XzVvb4/XG7pUdLHhUddifVZUQ8Go=; b=BkFlZufbY9LMeipUquouINkDiQ
 MoD59QNkSS950DhO89wbsM9KkvArDT+1U3uKH00Tw1PyEidqQW/VAy7HBD9iEUKCjNrgr2GAmlnv7
 sLb+8HWvbcDM6tKonUa/XIyEy5G1XPVVPKceSdvKY0DSPlkC0S27L6FemA0z5EpYpe4g=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sYmFn-0007J8-Nr for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:47:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 63B4C61E27;
 Tue, 30 Jul 2024 12:46:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2545C4AF09;
 Tue, 30 Jul 2024 12:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1722343609;
 bh=Go+PWebTIdyKuRFGQRAGDJbKq3XRcGav2G0UpNBfZQI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iw5YescpgO069eM7tQGBQa762aVClY53Yk6FeoqLyXC0dbMPnWKY7vvX33scT690U
 fByuplsuE5cAcSz8Hs2ts6OXDcmgNfU0DJZ0pOGgwC44gu8R1Z9GMpxi1qv2LEhECt
 BkfqfdfssLvy+TDy1Un7/otDZk259Q4QVNwKRgxR3sMNCG0I58li040I/X2mYPIgmz
 UsZQdfS7IiGjaOeFGiTdv/o28ShFlmiBzdCeItBgkyo/2afAMjTzS2UJBRH5vGETmT
 ZAmxPmmWcPr/3MaJIXTqu72QWWkUMJpCNpi2OfJQQClenucPzIp/UQP0mdRflyijN7
 8MPe/IJyoCHRg==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 30 Jul 2024 08:46:38 -0400
Message-ID: <20240730124643.3099670-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240730124643.3099670-1-sashal@kernel.org>
References: <20240730124643.3099670-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.281
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
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sYmFn-0007J8-Nr
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.4 2/2] jfs: Fix
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
index deb54efb56013..b89d060af7405 100644
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
