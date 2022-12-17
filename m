Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5346064F9E6
	for <lists+jfs-discussion@lfdr.de>; Sat, 17 Dec 2022 16:29:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p6Z7n-0005Nh-G9;
	Sat, 17 Dec 2022 15:29:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1p6Z7m-0005Na-CL
 for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Dec 2022 15:29:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tAP8fgjrfS3tX2Qh/v/UubxYTXl9cz2r5ROjsGHYNz4=; b=XoMNPKvs3WOjGYr3ZmDExfOtEW
 1V7aMD6qr59vhEmG9eSn8OKHPPGnwPHXkJ0CJoxSkzkLrjTUIIjUGE4F79MDuceb+gvOaAnoO8LC6
 b+mYLgJSSZBxVCuhEh2XTzGBHO8BC4sOyarY3MWQLP2qLArMnjFA8LqxpeplvgU1YaOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tAP8fgjrfS3tX2Qh/v/UubxYTXl9cz2r5ROjsGHYNz4=; b=l
 B4Tc+NVi7RlSUjjcVw2tKICrT3/uh0GFFtbla3IK5HPdcOz8MIVOQTYcHZ5Xgt7P22DCiKoAC7nHg
 tiPcMhhexoSbaokU2Q95syEsG0X5dQqPA8qZd0SfXDF61DKee9xr6FyH3Zwu1c7dA1ZvQ9bzOcDXi
 R0d/bdm0fvbh2fEU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6Z7f-000683-HB for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Dec 2022 15:29:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 256E860C14;
 Sat, 17 Dec 2022 15:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6002BC433F0;
 Sat, 17 Dec 2022 15:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1671290945;
 bh=/YHUbYQVGnFkTBPFFPtqTxQ1pugwtvJeUzG9KEMBJxw=;
 h=From:To:Cc:Subject:Date:From;
 b=tRp/i/O9SGYCSTePrTOfy1vGn36i7QzDkMyfjtp1yEyJFoAnZF/SKugJ2i6Qwyl2x
 gyaI69PmFv9eP9hKzT6RZLRybumr1+Fn7JJjtOKNFJVuJbtKGJj9In5q3F+pm7VMb6
 3MsBTZXiTgwYfEU9/Zp/KQAeDWnAA2jCNlaUO8L3PHnaJbtu0hra83p9cRCX1V5mUX
 Ftw3J0gMSVVj3tIatBrVSFgm4I2AdaYWtWmO3cyUlXgxO9S7NUJpziJKBn/StcLZmv
 RfFLNodPtUggSrxFsQXdAlfZTbc06la6TC/LuW/4t4+K4PMV8PYBGlxxyrAsRs4Bfp
 YfeZ9K74SSSuw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sat, 17 Dec 2022 10:28:51 -0500
Message-Id: <20221217152902.98870-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Dongliang Mu <mudongliangabcd@gmail.com> [ Upstream
 commit 898f706695682b9954f280d95e49fa86ffa55d08 ] Syzbot found a crash :
 UBSAN:
 shift-out-of-bounds in dbAllocAG. The underlying bug is the missing check
 of bmp->db_agl2size. The field can be greater than 64 and trigger the
 shift-out-of-bounds.
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p6Z7f-000683-HB
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.15 01/10] fs: jfs: fix
 shift-out-of-bounds in dbAllocAG
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
 syzbot+15342c1aa6a00fb7a438@syzkaller.appspotmail.com,
 Dongliang Mu <mudongliangabcd@gmail.com>, r33s3n6@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Dongliang Mu <mudongliangabcd@gmail.com>

[ Upstream commit 898f706695682b9954f280d95e49fa86ffa55d08 ]

Syzbot found a crash : UBSAN: shift-out-of-bounds in dbAllocAG. The
underlying bug is the missing check of bmp->db_agl2size. The field can
be greater than 64 and trigger the shift-out-of-bounds.

Fix this bug by adding a check of bmp->db_agl2size in dbMount since this
field is used in many following functions. The upper bound for this
field is L2MAXL2SIZE - L2MAXAG, thanks for the help of Dave Kleikamp.
Note that, for maintenance, I reorganized error handling code of dbMount.

Reported-by: syzbot+15342c1aa6a00fb7a438@syzkaller.appspotmail.com
Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index e75f31b81d63..44600cd7614a 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -155,7 +155,7 @@ int dbMount(struct inode *ipbmap)
 	struct bmap *bmp;
 	struct dbmap_disk *dbmp_le;
 	struct metapage *mp;
-	int i;
+	int i, err;
 
 	/*
 	 * allocate/initialize the in-memory bmap descriptor
@@ -170,8 +170,8 @@ int dbMount(struct inode *ipbmap)
 			   BMAPBLKNO << JFS_SBI(ipbmap->i_sb)->l2nbperpage,
 			   PSIZE, 0);
 	if (mp == NULL) {
-		kfree(bmp);
-		return -EIO;
+		err = -EIO;
+		goto err_kfree_bmp;
 	}
 
 	/* copy the on-disk bmap descriptor to its in-memory version. */
@@ -181,9 +181,8 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_l2nbperpage = le32_to_cpu(dbmp_le->dn_l2nbperpage);
 	bmp->db_numag = le32_to_cpu(dbmp_le->dn_numag);
 	if (!bmp->db_numag) {
-		release_metapage(mp);
-		kfree(bmp);
-		return -EINVAL;
+		err = -EINVAL;
+		goto err_release_metapage;
 	}
 
 	bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
@@ -194,6 +193,11 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
 	bmp->db_agstart = le32_to_cpu(dbmp_le->dn_agstart);
 	bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
+	if (bmp->db_agl2size > L2MAXL2SIZE - L2MAXAG) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
+
 	for (i = 0; i < MAXAG; i++)
 		bmp->db_agfree[i] = le64_to_cpu(dbmp_le->dn_agfree[i]);
 	bmp->db_agsize = le64_to_cpu(dbmp_le->dn_agsize);
@@ -214,6 +218,12 @@ int dbMount(struct inode *ipbmap)
 	BMAP_LOCK_INIT(bmp);
 
 	return (0);
+
+err_release_metapage:
+	release_metapage(mp);
+err_kfree_bmp:
+	kfree(bmp);
+	return err;
 }
 
 
-- 
2.35.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
