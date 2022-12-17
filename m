Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6598B64F9F2
	for <lists+jfs-discussion@lfdr.de>; Sat, 17 Dec 2022 16:31:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p6Z9a-0005Re-WC;
	Sat, 17 Dec 2022 15:31:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1p6Z9Y-0005RW-NJ
 for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Dec 2022 15:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0hbZaAPT7q9PoSHO2xmFMkdSnSPULyVGTxZpM8SEOHg=; b=decYX4OVqCsHNAZVIWDdbvzFi0
 QIeQkI6i0bouLI31DbFsfPwZ2lMyIJmeF8KQksDUsi4gBj0exzDVoWKX4DHpaoa0JPSEZ/I3xt7RI
 g/RUqSw2SKxpdGvfWtzUJH5thbbMAO23awgHG/7fJD7S6cjMKTz4rkHiYfUib2Q63UAs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0hbZaAPT7q9PoSHO2xmFMkdSnSPULyVGTxZpM8SEOHg=; b=hkJ1Dq5cn3bos6Pa8/ptYrlozP
 ns8suQNbMvpDUCkLz3IknIYUrF808xJI2ctrk8j0AS0Fh9uyAtgiFe90sQ57N0eZ8r9EwLG+EbKkG
 DoRs34JFJEK5QO5V7wP53dXb1MQo1tDiBZkuYhxMx7aJCwIK1i60kk6EzkS/a+V6wDGo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6Z9W-0006CA-FV for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Dec 2022 15:31:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1B08560C04;
 Sat, 17 Dec 2022 15:31:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 019C2C43392;
 Sat, 17 Dec 2022 15:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1671291060;
 bh=ekaNhfdppCHtWyCxuz2IMweIRM+SE/hGj17+uDFVQx4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Av7syNMBAmejlopoImY6PeclLFImNwf1PJvT0Q7NoooGILo79tipOO1TzPHxhpDeX
 q3F4q6URODSURHVPh9cHUReWoWP2Nceie1nz4zOBcDzRgKzDpXRwdJ6iK+Tj10tnrS
 LRupKaqMle0P0bzjuc3rD45Sb7nzCR9BMnYBzs/wt8BkLzE0XQjDZTsQhFbITg9DDK
 E78dqhQELqmVun9OA3mPZkOE8vRjJYcsIYQ7lhkn0jyHGrBeDolXA9Bdo4x0qsOiAb
 13S+qHX34bf5Tiq5eM/1XS5DYPMprC3Fqzv5q07szeZ4CcGQ7MQ90zPt6w4LBt/j8w
 roEoiYfdoanDw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sat, 17 Dec 2022 10:30:47 -0500
Message-Id: <20221217153053.99513-3-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221217153053.99513-1-sashal@kernel.org>
References: <20221217153053.99513-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Hoi Pok Wu <wuhoipok@gmail.com> [ Upstream commit
 25e70c6162f207828dd405b432d8f2a98dbf7082
 ] This should be applied to most URSAN bugs found recently by syzbot, by
 guarding the dbMount. As syzbot feeding rubbish into the bmap descriptor. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p6Z9W-0006CA-FV
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.9 3/8] fs: jfs: fix
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
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, paskripkin@gmail.com,
 mudongliangabcd@gmail.com, r33s3n6@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Hoi Pok Wu <wuhoipok@gmail.com>

[ Upstream commit 25e70c6162f207828dd405b432d8f2a98dbf7082 ]

This should be applied to most URSAN bugs found recently by syzbot,
by guarding the dbMount. As syzbot feeding rubbish into the bmap
descriptor.

Signed-off-by: Hoi Pok Wu <wuhoipok@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a46fa0f3db57..0ca1ad2610df 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -211,6 +211,11 @@ int dbMount(struct inode *ipbmap)
 		goto err_release_metapage;
 	}
 
+	if (((bmp->db_mapsize - 1) >> bmp->db_agl2size) > MAXAG) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
+
 	for (i = 0; i < MAXAG; i++)
 		bmp->db_agfree[i] = le64_to_cpu(dbmp_le->dn_agfree[i]);
 	bmp->db_agsize = le64_to_cpu(dbmp_le->dn_agsize);
-- 
2.35.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
