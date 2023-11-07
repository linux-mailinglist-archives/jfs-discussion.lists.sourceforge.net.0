Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A81857E4434
	for <lists+jfs-discussion@lfdr.de>; Tue,  7 Nov 2023 16:51:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1r0OLw-0006S1-3W;
	Tue, 07 Nov 2023 15:50:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1r0OLs-0006Rr-4X
 for jfs-discussion@lists.sourceforge.net;
 Tue, 07 Nov 2023 15:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XhmzDX4d7fxNOseh5sFsdReivMFChygp3pfuynzmmlU=; b=TRxvfQRsS0D+ds6Tw7baFbst+P
 cz8FSkzXbFgqPwiORjT1gVuNra2ve28aN7kHmS2ZYR+UPMlBsfn8SZqKCYdvILEU683CtbJ4Hk2B8
 MBCPpIXMzch7FzL5wviIaZMQHE2b5wx7n4YboDEsqTTkg79zTUZEogUreAix18F+7BDc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XhmzDX4d7fxNOseh5sFsdReivMFChygp3pfuynzmmlU=; b=clWW4pSW6WqmJ8XD9NdivA4Oc3
 9HbR9chQPRs0GJeYRp6zvtduYVyv7Aq2x8dFXAh4F0n20ZyYPnquRxh0a1zBDFltzttcP+8SltWO4
 coNnoVL7NEzqGPA/rKWUrBEf8tncCQ7NE604sws1ZP6RTSqVvyaFQ00Y7uO/ZhHEaPls=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0OLs-0005JC-1k for jfs-discussion@lists.sourceforge.net;
 Tue, 07 Nov 2023 15:50:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id C75D7B8165B;
 Tue,  7 Nov 2023 15:50:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B642C433C8;
 Tue,  7 Nov 2023 15:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699372245;
 bh=37cWrf7Ywq4ghZ3/bOcqL06Eey9mU1tzsLZ7Ue4ZBkg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZEa2Lwal+t9NC8Rvw2O2lcTnWajKzcaslxjYNnET4yoE5WUAiqxXYQshdq8EAbgU4
 6Mf1v6JFahfsj9l38iK/j6C/Pmua8pJk5B0bBXiRDoZVW570u33U5+Rfd5nDjOcx4/
 +U4nNPH2bIGsVuLY9pXuid1CL2kFvR5IeKaF6Nb3YGyQMiWgsX9wo4xYAEV85f22Ap
 vVwVdctBwBxC+dftl9fBpPpvmwtst+GVf1CgimCz75Nsl7MOHGUUMJ37ePkLduFiYQ
 7Spsh7mhgTWSlONn8VbYsDqBry7OH/ogYNDCJIa+cnb5soCkHNBgbE40+PZ7V9fCSy
 1pn6JQjEJe5AQ==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  7 Nov 2023 10:49:43 -0500
Message-ID: <20231107155024.3766950-9-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107155024.3766950-1-sashal@kernel.org>
References: <20231107155024.3766950-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.61
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Juntong Deng <juntong.deng@outlook.com> [ Upstream
 commit
 525b861a008143048535011f3816d407940f4bfa ] l2nbperpage is log2(number of
 blks per page), and the minimum legal value should be 0, not negative. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r0OLs-0005JC-1k
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.1 09/30] fs/jfs: Add check for
 negative db_l2nbperpage
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
Cc: Sasha Levin <sashal@kernel.org>, Juntong Deng <juntong.deng@outlook.com>,
 wonguk.lee1023@gmail.com, ghandatmanas@gmail.com, shaggy@kernel.org,
 yogi.kernel@gmail.com, jfs-discussion@lists.sourceforge.net,
 liushixin2@huawei.com, syzbot+debee9ab7ae2b34b0307@syzkaller.appspotmail.com,
 code@siddh.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Juntong Deng <juntong.deng@outlook.com>

[ Upstream commit 525b861a008143048535011f3816d407940f4bfa ]

l2nbperpage is log2(number of blks per page), and the minimum legal
value should be 0, not negative.

In the case of l2nbperpage being negative, an error will occur
when subsequently used as shift exponent.

Syzbot reported this bug:

UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:799:12
shift exponent -16777216 is negative

Reported-by: syzbot+debee9ab7ae2b34b0307@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=debee9ab7ae2b34b0307
Signed-off-by: Juntong Deng <juntong.deng@outlook.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index e9d075cbd71ad..ee949e329c6e0 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -180,7 +180,8 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_nfree = le64_to_cpu(dbmp_le->dn_nfree);
 
 	bmp->db_l2nbperpage = le32_to_cpu(dbmp_le->dn_l2nbperpage);
-	if (bmp->db_l2nbperpage > L2PSIZE - L2MINBLOCKSIZE) {
+	if (bmp->db_l2nbperpage > L2PSIZE - L2MINBLOCKSIZE ||
+		bmp->db_l2nbperpage < 0) {
 		err = -EINVAL;
 		goto err_release_metapage;
 	}
-- 
2.42.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
