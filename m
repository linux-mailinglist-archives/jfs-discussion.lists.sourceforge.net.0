Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA4E75E70E
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jul 2023 03:24:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNkJG-0007x6-5F;
	Mon, 24 Jul 2023 01:24:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1qNkJD-0007wg-Cb
 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Jul 2023 01:24:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6yTNz2dAfzvDWlZtVrobYSjj6u7cw+c8wx+Wliafq5w=; b=f9+M8wZrC66ruPL8veJjvGvrjz
 JkTfuVETRxg+kcqG0lPmtcwJv4uYJ36l4FuQpHBXEaDCEDq6FNp9G8ymABfP570p2Uohv7wgUNh25
 tslAGZwy0N8n4fhaNVc0pKm5ffOrfF2EG/rzZ/XHR6PAMvbvfRor5PdLz+rsuhGKGtyQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6yTNz2dAfzvDWlZtVrobYSjj6u7cw+c8wx+Wliafq5w=; b=PJJ7pNSDrBjVwuDUaYwzsj0BCy
 HxnNbTtFe1MRpANDU42x5lpsekcJI2B7GaTDZLD0UtlZCzuYNZG2m3n8TKIBtVgGmZzfBLFJ7pQiB
 F8GWw/HPFru7hTMsri8KArfsT6M/5yCX1CJsV9rgASDUIjO9h1A/GR26+BrNxSsnneBU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qNkJD-0006eJ-Q9 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Jul 2023 01:24:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3E8D160F1E;
 Mon, 24 Jul 2023 01:24:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3600C433C8;
 Mon, 24 Jul 2023 01:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1690161857;
 bh=ZGbe+PNKOide2xjOsnHqwygLaXz2EjI4SMhtA/0vl+E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=REWIjKiLHR+eYSV7aVh0MAhbWGb0YOJlSPXmLmEH5mZU5wqIchKbuBLaK2xHyQN9M
 2Cisl8K/GKCKftrBWE+Sf9Q++CllJQK/noHQgzT1TvCDBG9Ec06wfdtx52CyX0h79z
 jJ0Hys9s559asNF5hC0fbic0x6YOe9B0eL5uhtEDL4XsE5aVEBPvz5+cAllN6OvKTX
 QJMUYwE7jeUq1taonHeSAjZKcIxtKDDyubqRs8w2eW2s1lD/hEUYnkITG7LX95kvLO
 ixbYfM6/MRPjYt7LCbRdRzcFlUgg7DFeuEoxBBMmyNXfr+PKVCY6FvIO+l/X753Zpl
 6DuqDL2hxp/lg==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 23 Jul 2023 21:23:34 -0400
Message-Id: <20230724012334.2317140-23-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230724012334.2317140-1-sashal@kernel.org>
References: <20230724012334.2317140-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.121
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Immad Mir <mirimmad17@gmail.com> [ Upstream commit
 95e2b352c03b0a86c5717ba1d24ea20969abcacc
 ] This patch adds a check for read-only mounted filesystem in txBegin before
 starting a transaction potentially saving from NULL pointer deref. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qNkJD-0006eJ-Q9
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.15 23/23] FS: JFS: Check for
 read-only mounted filesystem in txBegin
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
 jfs-discussion@lists.sourceforge.net, Immad Mir <mirimmad17@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Immad Mir <mirimmad17@gmail.com>

[ Upstream commit 95e2b352c03b0a86c5717ba1d24ea20969abcacc ]

 This patch adds a check for read-only mounted filesystem
 in txBegin before starting a transaction potentially saving
 from NULL pointer deref.

Signed-off-by: Immad Mir <mirimmad17@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_txnmgr.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index 042bbe6d8ac2e..6c8680d3907af 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -354,6 +354,11 @@ tid_t txBegin(struct super_block *sb, int flag)
 	jfs_info("txBegin: flag = 0x%x", flag);
 	log = JFS_SBI(sb)->log;
 
+	if (!log) {
+		jfs_error(sb, "read-only filesystem\n");
+		return 0;
+	}
+
 	TXN_LOCK();
 
 	INCREMENT(TxStat.txBegin);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
