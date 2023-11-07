Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1227E4453
	for <lists+jfs-discussion@lfdr.de>; Tue,  7 Nov 2023 16:52:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1r0ONB-0006PQ-Sd;
	Tue, 07 Nov 2023 15:52:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1r0ONA-0006PJ-N3
 for jfs-discussion@lists.sourceforge.net;
 Tue, 07 Nov 2023 15:52:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V4OaMnle54rlCzN/9XLs4pCtjBt6sZM/d0aDQhn6OF4=; b=dPoGiSkNP1K6l6W4FNlX/N5+9+
 exACRbEuaxqmO4m2h3ghmOwtegwwpjRRqmhLq9XTAdWpCzSvYqt0/znUSS6+l7GiNBKc5f+edNg2F
 l6weIb7PFgjj5FEWDuqCTSNCkcbnGXj8kcAkN8nv91/6ER1l1KsYNpA2BAbMhjnMbEbE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V4OaMnle54rlCzN/9XLs4pCtjBt6sZM/d0aDQhn6OF4=; b=j2yJAjiO8a8+0vCBxFe7uVlaCh
 947M6QMujXD2ESfH+QxT+Ic87IkIofLs0hnwr5aI6hyGRuxjv9qVwzAmuVQTWScLILSNIExpRsVI6
 W1pinysDJnRqLXiwVUwT1sKEl4QFoSdGD0/KidgJI3eskjuBwqb4UP8mZcfefMk0GGPQ=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0ON8-0005iQ-4U for jfs-discussion@lists.sourceforge.net;
 Tue, 07 Nov 2023 15:52:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id D8193B817E7;
 Tue,  7 Nov 2023 15:52:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3735C433C7;
 Tue,  7 Nov 2023 15:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699372323;
 bh=mkk37DpoUpPoDjSWnvbdSNbSxO0JGzJx4NpLJi6p1Sk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LD9ya4F+LWU+2WwlhQy39KEvL7qFURenNcDV/d1DeJVo7OVK4QSsi0SfBW9XUbjGr
 tjRtR5IG7qqC2jwQUN4jNP2ZV1kAYdpH1kDX1js+xLH2kEnw8cSrMC0mynm6jX13rK
 r6+wjHraiX56r5yEvwFFrlG1CMAtGPwbSkqQcuym6LCsazaawW/+uZKsbT23dEnCDb
 eZX6WoqEsY7rrCjIj+mjlJdwkS51Y6Jgu2UrZzMg1jETrxqhw/Rp00Y1oicP5sJWPZ
 nA0J8YS5uSGDzWjupJvbUcVFOn/JvrRG2XdyYFXlPDsRovD5NrGu7uO5piT89BImMW
 BbFFP/ix51+Og==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  7 Nov 2023 10:51:16 -0500
Message-ID: <20231107155146.3767610-7-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107155146.3767610-1-sashal@kernel.org>
References: <20231107155146.3767610-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.137
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Juntong Deng <juntong.deng@outlook.com> [ Upstream
 commit
 64933ab7b04881c6c18b21ff206c12278341c72e ] Both db_maxag and db_agpref are
 used as the index of the db_agfree array, but there is currently no validity
 check for db_maxag and db_agpref, which can lead to errors. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r0ON8-0005iQ-4U
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.15 07/22] fs/jfs: Add validity
 check for db_maxag and db_agpref
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
 wonguk.lee1023@gmail.com, code@siddh.me, shaggy@kernel.org,
 syzbot+38e876a8aa44b7115c76@syzkaller.appspotmail.com, yogi.kernel@gmail.com,
 jfs-discussion@lists.sourceforge.net, liushixin2@huawei.com,
 andrew.kanner@gmail.com, ghandatmanas@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Juntong Deng <juntong.deng@outlook.com>

[ Upstream commit 64933ab7b04881c6c18b21ff206c12278341c72e ]

Both db_maxag and db_agpref are used as the index of the
db_agfree array, but there is currently no validity check for
db_maxag and db_agpref, which can lead to errors.

The following is related bug reported by Syzbot:

UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:639:20
index 7936 is out of range for type 'atomic_t[128]'

Add checking that the values of db_maxag and db_agpref are valid
indexes for the db_agfree array.

Reported-by: syzbot+38e876a8aa44b7115c76@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=38e876a8aa44b7115c76
Signed-off-by: Juntong Deng <juntong.deng@outlook.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a700950429c5f..217a673b751ef 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -195,6 +195,12 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
 	bmp->db_maxag = le32_to_cpu(dbmp_le->dn_maxag);
 	bmp->db_agpref = le32_to_cpu(dbmp_le->dn_agpref);
+	if (bmp->db_maxag >= MAXAG || bmp->db_maxag < 0 ||
+		bmp->db_agpref >= MAXAG || bmp->db_agpref < 0) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
+
 	bmp->db_aglevel = le32_to_cpu(dbmp_le->dn_aglevel);
 	bmp->db_agheight = le32_to_cpu(dbmp_le->dn_agheight);
 	bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
-- 
2.42.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
