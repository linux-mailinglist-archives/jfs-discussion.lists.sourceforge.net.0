Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AA07E4484
	for <lists+jfs-discussion@lfdr.de>; Tue,  7 Nov 2023 16:54:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1r0OP3-0006RN-L8;
	Tue, 07 Nov 2023 15:54:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1r0OP2-0006RG-6k
 for jfs-discussion@lists.sourceforge.net;
 Tue, 07 Nov 2023 15:54:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gqMCbMNkrKmPWVzmG1Mn4ZGM+2s1Qj1iSejHc+H64B8=; b=SywqmUNR0uthGP2tQyIDuCbEpk
 u9smvVOjDoa1Hw++83b4f8LF47+Ws0ynffuRIS1RQjKo76s4T5ar6D48cRANXA8SNETj2+3WAq9DS
 qj3xAQ7hNpetMdvUAOrlizJoIPXYcESFOV3gA482tMDNw44FqnZOvaeUNkKY0PhalrB4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gqMCbMNkrKmPWVzmG1Mn4ZGM+2s1Qj1iSejHc+H64B8=; b=WbC3gM8hDcOtT4nKJm9wLDw4Di
 Wbb9RLVuASOWxfTxY5HSdVi3LhkkWLbYfUMbuAIAMVUdAgUUkOIuKX5uYdiHkO1vF0RUVs7Edvemh
 WZisVYmshwoYREd8dMJ4tj/ZfRsab8c6BvwxtiVeDFNhmSfCEUHYqVlwUJMT33rpYmmQ=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0OOw-00Aewa-LJ for jfs-discussion@lists.sourceforge.net;
 Tue, 07 Nov 2023 15:54:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 13B3ECE0AED;
 Tue,  7 Nov 2023 15:53:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE2DDC433C7;
 Tue,  7 Nov 2023 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699372435;
 bh=wRqq4cluy5mTgzDm2pLF+D88T6PxV/Cn23jZVS0M214=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=li82ZvPkq6fvI6YRd1FMxXTLz5RMJDp0VV9Nt+iP6mStwqHFToIuxQVvzkZA0Asvm
 Eg9Q9cFTs1RbZ3a179aSTkLRGwSPexGcN5/8vFj5Lfl2h1B5EnbUpCpDciz69SAUcm
 QUvbht0k61ocunPl6/j4HXYK4tRGYZG9SuNMYT0azqg0yo7RFJYHkBK+Dad+8pQ2wB
 nSHGlZDTpMMLYuv9MsMPkqGeVOQGHnbQhLD4zThiIfKhStlVNfI4qwCWucP4giHYI3
 50mx72H862xqrHXRpvHlVr49RAGbcO9diO2QQVdGlzIf8X7K9cISoVEcWu2BcDnbO6
 seSberFPl9zQA==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  7 Nov 2023 10:53:22 -0500
Message-ID: <20231107155343.3768464-4-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107155343.3768464-1-sashal@kernel.org>
References: <20231107155343.3768464-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.259
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 medium trust [145.40.73.55 listed in list.dnswl.org]
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
X-Headers-End: 1r0OOw-00Aewa-LJ
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.4 04/12] fs/jfs: Add validity
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
 wonguk.lee1023@gmail.com, ghandatmanas@gmail.com, shaggy@kernel.org,
 syzbot+38e876a8aa44b7115c76@syzkaller.appspotmail.com, yogi.kernel@gmail.com,
 jfs-discussion@lists.sourceforge.net, liushixin2@huawei.com,
 andrew.kanner@gmail.com, code@siddh.me
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
index 495a1c6e5fd46..b23b219b20aab 100644
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
