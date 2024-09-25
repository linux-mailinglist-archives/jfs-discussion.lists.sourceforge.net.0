Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B9A985A3C
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Sep 2024 14:06:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1stQms-00045Q-2p;
	Wed, 25 Sep 2024 12:06:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1stQmr-00045J-38
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 12:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pigduQ3cdot1B4E3yyHObhNihaYUdrTxeHpKclMHtjo=; b=Q/XpydWOCzAuOZH1uCWDlsa3ZF
 pPFXC0WVZBMTyFJfhqu3y2eNBUNY9Cr6q1HoXn9b2KCiPEHXqW7s4fHYqmX0HlTZxWiBzQMh3Comd
 eOY0gG+UhLOBH0fH0OpYdrSsXEkxfFaF74Mj+7CScJmACK+iaNs4XkgQQ7jYwMVFRx90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pigduQ3cdot1B4E3yyHObhNihaYUdrTxeHpKclMHtjo=; b=bx5q12ABNYNFMIZLmQp4V7rV7o
 qnvEXO2eAUgic51s3bt75pmXYveBlkoLooEC/CQ1c+AEGueu4xaI1ZGrZqZV7O/MUm0swSvRkr9Yo
 P0ML3YuapSAhmYvSiK/AV+VYSCm7+DHIAWiPHRQDdSMqZwzR/k3dva0r+pQ/7f1R+BuU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1stQmp-000668-S7 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 12:06:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 952DE5C5D90;
 Wed, 25 Sep 2024 12:06:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0142C4CEC3;
 Wed, 25 Sep 2024 12:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1727265977;
 bh=WLwmC3Hm2bLkBxNh72GWwvU1jxkOWIZutATITZQts04=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WSdpJg2HVUDPSG2d3eHvJiwxzEjdQ5Ys6qT0AQlK7GV/TNLnheR08bBApSHqQWLuj
 vuaht+K0GY6bgU4rl0bCsIuR/8rxxbSPYa6StdyktyELVKHlaaNXrFBt/+pwRJ3W6d
 XbwebTwJSejCGkwPDrU6ePEr2mfUAcKV1MZMY9FlBCINE3h7p9pAwFH1KBVWHE+gsK
 7iiGvem7ez+V8jiwFrFo1f3zP5SZSAWO1mMG8aihdcmMv0MyKQgWzVM/9A9MJn+v5w
 pZj9lGuxwCaFi/05Hh3m9j7UTpSKPMmzXpi3YLAzo1/OnBBnBDi/9YloBzgIws9cAL
 vA3a7Xss3Bo7Q==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed, 25 Sep 2024 07:52:34 -0400
Message-ID: <20240925115823.1303019-135-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240925115823.1303019-1-sashal@kernel.org>
References: <20240925115823.1303019-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.10.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Remington Brasga <rbrasga@uci.edu> [ Upstream commit
 b0b2fc815e514221f01384f39fbfbff65d897e1c ] Fix issue with UBSAN throwing
 shift-out-of-bounds warning. 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1stQmp-000668-S7
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.10 135/197] jfs: UBSAN:
 shift-out-of-bounds in dbFindBits
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
 syzbot+e38d703eeb410b17b473@syzkaller.appspotmail.com, eadavis@qq.com,
 osmtendev@gmail.com, Remington Brasga <rbrasga@uci.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Remington Brasga <rbrasga@uci.edu>

[ Upstream commit b0b2fc815e514221f01384f39fbfbff65d897e1c ]

Fix issue with UBSAN throwing shift-out-of-bounds warning.

Reported-by: syzbot+e38d703eeb410b17b473@syzkaller.appspotmail.com
Signed-off-by: Remington Brasga <rbrasga@uci.edu>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 5713994328cbc..ccdfa38d7a682 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3022,7 +3022,7 @@ static int dbFindBits(u32 word, int l2nb)
 
 	/* scan the word for nb free bits at nb alignments.
 	 */
-	for (bitno = 0; mask != 0; bitno += nb, mask >>= nb) {
+	for (bitno = 0; mask != 0; bitno += nb, mask = (mask >> nb)) {
 		if ((mask & word) == mask)
 			break;
 	}
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
