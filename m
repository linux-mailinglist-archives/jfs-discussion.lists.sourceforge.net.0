Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D44C664F9EF
	for <lists+jfs-discussion@lfdr.de>; Sat, 17 Dec 2022 16:31:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p6Z9C-0002hG-Uq;
	Sat, 17 Dec 2022 15:30:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1p6Z9C-0002h6-EH
 for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Dec 2022 15:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mqfrhqFndEIolxUR2uBUDCC6FbYuL/pFXO9T6z+e9Nc=; b=aaFO8ZXbpKmWH4Dl7rFLOo3Q5h
 /wkTQ2RfRdu5rssTRbW4l5CAoDEeG+ItG9AtLZxY531Y3/RL6/k4d8kHXOm5Ns6cVFTM1q1NY4HAD
 2wbnxHpwLcAnKxbOhmhLUHaR/M9gWzbM0IRqt1HkrallCQK8gcvFl/teNOCJ0rIhiK8E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mqfrhqFndEIolxUR2uBUDCC6FbYuL/pFXO9T6z+e9Nc=; b=g
 Lw7ea9GfLnw5nNt4DC49KWWz447kSAueXQXOAM5Vm9FYO3sVzmYu3KcnCUE5p0iTpCncBQJ9vAeSR
 6J9tnnTcw4Kz/MjjpHRia/8DwhEMspIRYjiecC7hnZRNpZWkWCrKCs+5sa3h9D6ZlDcqYrsEjQpGe
 kKWIfv5bU5GvSxXs=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6Z99-0006BU-I2 for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Dec 2022 15:30:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4812EB8049B;
 Sat, 17 Dec 2022 15:30:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1416C433D2;
 Sat, 17 Dec 2022 15:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1671291036;
 bh=19dcaC59pIbQHWqhUi3haS9j7EAuoZ2tTLFAd/yluDM=;
 h=From:To:Cc:Subject:Date:From;
 b=gJR+w5LRixQ1LyNkwFTxUwZASBHrQc/IWhhM5X8EPsQTkjCCDnMKShNTevAyAU9T2
 Iwwpv7Z5IBAEi7rK/0sVLjpZy1X8uyeYBkDombkHIwwK1Vgr8WV4c4aBuS5jD/I9kT
 F1mzUe2IxmLZvNDrX+U2eoUlEa8zyHMZaW6kT2wcLVB2z1WXG55P2a276CoYaj05kJ
 Tv8JrhYOusV3FNsCArIYycy/1MDHZG+IitPC0Ss7LArIPuWqtQwOcH43A2lYsnOvNU
 Lv11IOAcT/1Ay7ZJLxOVqASjlI3/GtsuwT6yMVB91crl3+SnnsGjNrqT6K6wHCopfm
 zu1p8rH+hISew==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sat, 17 Dec 2022 10:30:24 -0500
Message-Id: <20221217153033.99394-1-sashal@kernel.org>
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
 high trust [145.40.68.75 listed in list.dnswl.org]
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
X-Headers-End: 1p6Z99-0006BU-I2
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.14 1/8] fs: jfs: fix
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
index a07fbb60ac3c..a46fa0f3db57 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -168,7 +168,7 @@ int dbMount(struct inode *ipbmap)
 	struct bmap *bmp;
 	struct dbmap_disk *dbmp_le;
 	struct metapage *mp;
-	int i;
+	int i, err;
 
 	/*
 	 * allocate/initialize the in-memory bmap descriptor
@@ -183,8 +183,8 @@ int dbMount(struct inode *ipbmap)
 			   BMAPBLKNO << JFS_SBI(ipbmap->i_sb)->l2nbperpage,
 			   PSIZE, 0);
 	if (mp == NULL) {
-		kfree(bmp);
-		return -EIO;
+		err = -EIO;
+		goto err_kfree_bmp;
 	}
 
 	/* copy the on-disk bmap descriptor to its in-memory version. */
@@ -194,9 +194,8 @@ int dbMount(struct inode *ipbmap)
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
@@ -207,6 +206,11 @@ int dbMount(struct inode *ipbmap)
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
@@ -227,6 +231,12 @@ int dbMount(struct inode *ipbmap)
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
