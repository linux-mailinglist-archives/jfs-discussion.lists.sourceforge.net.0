Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EBB601024
	for <lists+jfs-discussion@lfdr.de>; Mon, 17 Oct 2022 15:25:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1okQ7Y-0007G9-Qg;
	Mon, 17 Oct 2022 13:25:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dzm91@hust.edu.cn>) id 1ojsRA-0002mx-4y
 for jfs-discussion@lists.sourceforge.net;
 Sun, 16 Oct 2022 01:27:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FkId9yarYhzeiiuwzFT/xm54VIGGYRJwD7FF3rC+H2U=; b=cgVeD8Z7JUgFI/JYjiF+rWGt16
 eOqbWR48k7HIUzrpUlmBRzSY++m7rdF2EEKT/n2QxR0FvqT33/RnA0h9t052Q4n1je0YAz6T+D6/t
 ND92XO29xabhcqGQqLt2+RC3pWVD8Z+erX40B7iWOyl0GMyhnz4OaIL9bhGmXNY7qA+c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FkId9yarYhzeiiuwzFT/xm54VIGGYRJwD7FF3rC+H2U=; b=R
 OffleTNS4wiubNAKyieiwuKGJwhSMfvrMLEb8oAx2/t47I2E3v6ba/NsqYv+/9hJF0viQynfR9LXM
 ebU9d2oFMWTmoDymYkTte00nvSdof+x++s8in8kArNVMZenoREiYEZ7sFaUvQWcZmJePdFXdcRDRV
 Xxn3HxJm0RhvzDqw=;
Received: from mail.hust.edu.cn ([202.114.0.240] helo=hust.edu.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ojsR7-0005l2-Rc for jfs-discussion@lists.sourceforge.net;
 Sun, 16 Oct 2022 01:27:32 +0000
Received: from localhost.localdomain ([172.16.0.254])
 (user=dzm91@hust.edu.cn mech=LOGIN bits=0)
 by mx1.hust.edu.cn  with ESMTP id 29G1QjHL004769-29G1QjHO004769
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 16 Oct 2022 09:26:50 +0800
From: Dongliang Mu <dzm91@hust.edu.cn>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Sun, 16 Oct 2022 09:25:07 +0800
Message-Id: <20221016012507.428006-1-dzm91@hust.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-FEAS-AUTH-USER: dzm91@hust.edu.cn
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dongliang Mu <mudongliangabcd@gmail.com> Syzbot found
 a crash : UBSAN: shift-out-of-bounds in dbAllocAG. The underlying bug is
 the missing check of bmp->db_agl2size. The field can be greater than 64 and
 trigger the shift-out-of-bounds. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-Headers-End: 1ojsR7-0005l2-Rc
X-Mailman-Approved-At: Mon, 17 Oct 2022 13:25:32 +0000
Subject: [Jfs-discussion] [PATCH v2] fs: jfs: fix shift-out-of-bounds in
 dbAllocAG
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
Cc: syzbot+15342c1aa6a00fb7a438@syzkaller.appspotmail.com,
 Dongliang Mu <mudongliangabcd@gmail.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Dongliang Mu <mudongliangabcd@gmail.com>

Syzbot found a crash : UBSAN: shift-out-of-bounds in dbAllocAG. The
underlying bug is the missing check of bmp->db_agl2size. The field can
be greater than 64 and trigger the shift-out-of-bounds.

Fix this bug by adding a check of bmp->db_agl2size in dbMount since this
field is used in many following functions. The upper bound for this
field is MAXMAPSIZE - L2MAXAG, thanks for the help of Dave Kleikamp.
Notethat, for maintainance, I reorganzie error handling code of dbMount.

Reported-by: syzbot+15342c1aa6a00fb7a438@syzkaller.appspotmail.com
Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
---
v1->2: fix the size of bmp->db_agl2size; revise the correct upper bound
 fs/jfs/jfs_dmap.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 6b838d3ae7c2..962c855631cb 100644
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
+	if (bmp->db_agl2size > MAXMAPSIZE - L2MAXAG) {
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
