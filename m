Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E9730F2E1
	for <lists+jfs-discussion@lfdr.de>; Thu,  4 Feb 2021 13:10:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l7dSc-0001hS-E8; Thu, 04 Feb 2021 12:10:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yang.lee@linux.alibaba.com>) id 1l7VUr-000530-SX
 for jfs-discussion@lists.sourceforge.net; Thu, 04 Feb 2021 03:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HxbjWBhGiQuSDU5Vgp7nhs7MVLFWj8IU2zDxD2zgjCU=; b=CyS73DT65dGCpr+r5lDRb2yrrV
 QzLxUrsp2aA+Uet9596Yfo7nAM8iIp0ehzkoFI2Fts6x3C9XLCqm1f8OzYrXbDvvlReJNKGYQO79y
 CuBS86o0V5ijR7ftjlW0ZIhJWdQrH0k2qQjOoApxxkHPbgtdxU3Yo+B9d4WNINd9ehpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HxbjWBhGiQuSDU5Vgp7nhs7MVLFWj8IU2zDxD2zgjCU=; b=OIEx5Fm37XFf4hDyaGCLlXY+FB
 ++5bna9/t7Cy97aw8EEXLa7HrMLgU+GWjFafzN0zbDjrmJEATBFdFUHqvLXelCSOujNS1ww44FIj9
 MYd/9mj4/K5cUZcbqxYcrpKM4Qmr8+tMt+s+7LEZtktxaYr8X7k9rp3B9Vze19H2GFL4=;
Received: from out30-45.freemail.mail.aliyun.com ([115.124.30.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l7VUe-003YqC-Dz
 for jfs-discussion@lists.sourceforge.net; Thu, 04 Feb 2021 03:39:57 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R181e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01424; MF=yang.lee@linux.alibaba.com;
 NM=1; PH=DS; RN=4; SR=0; TI=SMTPD_---0UNozYtZ_1612409975; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0UNozYtZ_1612409975) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 04 Feb 2021 11:39:36 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: shaggy@kernel.org
Date: Thu,  4 Feb 2021 11:39:34 +0800
Message-Id: <1612409974-63355-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1l7VUe-003YqC-Dz
X-Mailman-Approved-At: Thu, 04 Feb 2021 12:10:09 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Remove unneeded return variable
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
Cc: jfs-discussion@lists.sourceforge.net, Yang Li <yang.lee@linux.alibaba.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This patch removes unneeded return variables, using only
'0' instead.
It fixes the following warning detected by coccinelle:
./fs/jfs/jfs_txnmgr.c:1370:5-7: Unneeded variable: "rc". Return "0" on
line 1417

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 fs/jfs/jfs_txnmgr.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index dca8edd..87ef2a2 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -1367,7 +1367,6 @@ int txCommit(tid_t tid,		/* transaction identifier */
  */
 static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
 {
-	int rc = 0;
 	struct inode *ip;
 	lid_t lid;
 	struct tlock *tlck;
@@ -1414,7 +1413,7 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
 		}
 	}
 
-	return rc;
+	return 0;
 }
 
 /*
@@ -1425,7 +1424,6 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
 static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 		 struct tlock * tlck, struct commit * cd)
 {
-	int rc = 0;
 	struct metapage *mp;
 	pxd_t *pxd;
 	struct pxd_lock *pxdlock;
@@ -1527,7 +1525,7 @@ static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 	}
 #endif				/* _JFS_WIP */
 
-	return rc;
+	return 0;
 }
 
 /*
-- 
1.8.3.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
