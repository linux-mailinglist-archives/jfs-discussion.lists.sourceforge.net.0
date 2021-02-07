Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC00B3122C4
	for <lists+jfs-discussion@lfdr.de>; Sun,  7 Feb 2021 09:33:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l8fVS-0002cS-2F; Sun, 07 Feb 2021 08:33:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yang.lee@linux.alibaba.com>) id 1l8fVL-0002bh-QQ
 for jfs-discussion@lists.sourceforge.net; Sun, 07 Feb 2021 08:33:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oeQLJuXJWSWWGe0yG7gDuglV2I1ziz8uM1/Qeqan5Gw=; b=lKQRf6wMN21kPnLmlDbcXSMTbH
 QLqtQ8kdUw1QcHpedD+5p2pEjnP/UVhSCDSURTdAcbYrdgjUOoZQ/Eao6EQN9Vfv0RrYar2VfJ02a
 5P1u1HGF6mVg5Sw+Jr0X0l97eaOvaIxJxIV6gnXWOERRf9nN7MsWbWNsA8ihzHSIRvz0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oeQLJuXJWSWWGe0yG7gDuglV2I1ziz8uM1/Qeqan5Gw=; b=M/TN01S/HuTMXEv18R6JktAsXp
 06PE3f77IIxECCcvnrTkks682ee4lKeCnEhplJsOVEugwJYxc/7lB51KmONO7Im7O4elc8cQ1OhPQ
 zcV5D+fSsTybFsZHqLSwvOOVCrfsyGWuCN1xe1qpf74TDX1tYodlvkbe14SJYMaoz2gg=;
Received: from out30-45.freemail.mail.aliyun.com ([115.124.30.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l8fV9-0004FU-2t
 for jfs-discussion@lists.sourceforge.net; Sun, 07 Feb 2021 08:33:15 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R121e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01424; MF=yang.lee@linux.alibaba.com;
 NM=1; PH=DS; RN=4; SR=0; TI=SMTPD_---0UO3Fxaw_1612686772; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0UO3Fxaw_1612686772) by smtp.aliyun-inc.com(127.0.0.1);
 Sun, 07 Feb 2021 16:32:52 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: shaggy@kernel.org
Date: Sun,  7 Feb 2021 16:32:50 +0800
Message-Id: <1612686770-26163-1-git-send-email-yang.lee@linux.alibaba.com>
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
X-Headers-End: 1l8fV9-0004FU-2t
Subject: [Jfs-discussion] [PATCH v2] jfs: turn diLog(),
 dataLog() and txLog() into void functions
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

These functions always return '0' and no callers use the return value.
So make it a void function.

This eliminates the following coccicheck warning:
./fs/jfs/jfs_txnmgr.c:1365:5-7: Unneeded variable: "rc". Return "0" on
line 1414
./fs/jfs/jfs_txnmgr.c:1422:5-7: Unneeded variable: "rc". Return "0" on
line 1527

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---

Changes in v2
-turn functions forward references to void type.

 fs/jfs/jfs_txnmgr.c | 32 +++++++++++++++-----------------
 1 file changed, 15 insertions(+), 17 deletions(-)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index dca8edd..5f54a4c 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -148,10 +148,10 @@ static inline void TXN_SLEEP_DROP_LOCK(wait_queue_head_t * event)
 /*
  * forward references
  */
-static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-		struct tlock * tlck, struct commit * cd);
-static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-		struct tlock * tlck);
+static void diLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+		struct tlock *tlck, struct commit *cd);
+static void dataLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+		struct tlock *tlck);
 static void dtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 		struct tlock * tlck);
 static void mapLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
@@ -159,8 +159,8 @@ static void mapLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 static void txAllocPMap(struct inode *ip, struct maplock * maplock,
 		struct tblock * tblk);
 static void txForce(struct tblock * tblk);
-static int txLog(struct jfs_log * log, struct tblock * tblk,
-		struct commit * cd);
+static void txLog(struct jfs_log *log, struct tblock *tblk,
+		struct commit *cd);
 static void txUpdateMap(struct tblock * tblk);
 static void txRelease(struct tblock * tblk);
 static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
@@ -1365,9 +1365,8 @@ int txCommit(tid_t tid,		/* transaction identifier */
  *
  * RETURN :
  */
-static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
+static void txLog(struct jfs_log *log, struct tblock *tblk, struct commit *cd)
 {
-	int rc = 0;
 	struct inode *ip;
 	lid_t lid;
 	struct tlock *tlck;
@@ -1414,7 +1413,7 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
 		}
 	}
 
-	return rc;
+	return;
 }
 
 /*
@@ -1422,10 +1421,9 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
  *
  * function:	log inode tlock and format maplock to update bmap;
  */
-static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-		 struct tlock * tlck, struct commit * cd)
+static void diLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+		 struct tlock *tlck, struct commit *cd)
 {
-	int rc = 0;
 	struct metapage *mp;
 	pxd_t *pxd;
 	struct pxd_lock *pxdlock;
@@ -1527,7 +1525,7 @@ static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 	}
 #endif				/* _JFS_WIP */
 
-	return rc;
+	return;
 }
 
 /*
@@ -1535,8 +1533,8 @@ static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
  *
  * function:	log data tlock
  */
-static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-	    struct tlock * tlck)
+static void dataLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+	    struct tlock *tlck)
 {
 	struct metapage *mp;
 	pxd_t *pxd;
@@ -1562,7 +1560,7 @@ static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 		metapage_homeok(mp);
 		discard_metapage(mp);
 		tlck->mp = NULL;
-		return 0;
+		return;
 	}
 
 	PXDaddress(pxd, mp->index);
@@ -1573,7 +1571,7 @@ static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 	/* mark page as homeward bound */
 	tlck->flag |= tlckWRITEPAGE;
 
-	return 0;
+	return;
 }
 
 /*
-- 
1.8.3.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
