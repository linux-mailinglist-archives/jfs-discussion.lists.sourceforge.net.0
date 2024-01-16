Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C34FF82E4DD
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Jan 2024 01:26:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPXHh-0002kL-CE;
	Tue, 16 Jan 2024 00:26:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1rPXHg-0002k9-C2
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:26:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qr4jXBO8NSzg8LbW2tLLctMmTJ+aD0sDMvJmoliBdGk=; b=mA4FwVz/MEfgM6BbTxdkgg8Ooo
 z+u6g6bPz2aLsIVxlUSlBxAAwnlH3XTCrguSeubWVpB1jp5V5t8iOVtHTT5ZJQY+ZUnjX5Kj9guQP
 XfpS7xDPPIb8qdVUrCTds1orIikHLv2TYpR0a1DfSRtPnmTNSC1uG3gHk2Vtwf2gBQSw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qr4jXBO8NSzg8LbW2tLLctMmTJ+aD0sDMvJmoliBdGk=; b=mrY4vgXH71BrFkJjXqRtiKp+5d
 4+gRJYiTUrRjt3bcl8OY4yzbJxd0SHlPxTEvtisUjpv6EfNI1WHyvy2W7jj6K5rAQK6B0vL0KUOjo
 i1HnWf0x59MaDKNlp1STbuQulprCmVOe9GVa86Ndi5gNUiCeIPKiwFspnECNwTLwH9tY=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPXHe-00033i-Er for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:26:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id B276EB80D56;
 Tue, 16 Jan 2024 00:26:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86552C43390;
 Tue, 16 Jan 2024 00:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705364775;
 bh=wEYqTPM9VNhwQFfNIeyi68Oa70q68YEN9Y5UPTO32BQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o1Br0bCXKPWS5VjPSjpOrvRyymXEE9FcQKMKj53pkNbonLtXRrvO/AfJ1yxBvh4cz
 YR6VOwocawnZMpafXcuXoF8FGwaC85CZjr+EEKfofHQaA+M4U7+/UIFYCda+mPlLwd
 JHgOcYr5gnsFPzq7E+hJmn3bj3udtlD7bldC+FtOALKFX3eD5Djpafq2YYYfBgPQdN
 fO9s+pmKx7gmbhJIcimwMtQZmwn2ARu+T7/aTcD2EJYfYnow04T1vfs8v3/IMQj8m7
 B9SG6wBGKA01zK5pDVN7kgy4IG+Ay0Zn6ipvKJxsL+JAnnVvtLyF6Kju3rR029ba8z
 w8BXsBliDNw5g==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 15 Jan 2024 19:25:40 -0500
Message-ID: <20240116002603.215942-4-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116002603.215942-1-sashal@kernel.org>
References: <20240116002603.215942-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.147
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Manas Ghandat <ghandatmanas@gmail.com> [ Upstream
 commit
 74ecdda68242b174920fe7c6133a856fb7d8559b ] Currently there is a bound check
 missing in the dbAdjTree while accessing the dmt_stree. To add the required
 check added the bool is_ctl which is required to determine the size as suggest
 in the follo [...] 
 Content analysis details:   (-4.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPXHe-00033i-Er
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.15 04/13] jfs: fix
 array-index-out-of-bounds in dbAdjTree
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
Cc: Sasha Levin <sashal@kernel.org>, juntong.deng@outlook.com,
 jfs-discussion@lists.sourceforge.net, Manas Ghandat <ghandatmanas@gmail.com>,
 shaggy@kernel.org, yogi.kernel@gmail.com,
 syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com, andrew.kanner@gmail.com,
 osmtendev@gmail.com, code@siddh.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Manas Ghandat <ghandatmanas@gmail.com>

[ Upstream commit 74ecdda68242b174920fe7c6133a856fb7d8559b ]

Currently there is a bound check missing in the dbAdjTree while
accessing the dmt_stree. To add the required check added the bool is_ctl
which is required to determine the size as suggest in the following
commit.
https://lore.kernel.org/linux-kernel-mentees/f9475918-2186-49b8-b801-6f0f9e75f4fa@oracle.com/

Reported-by: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=39ba34a099ac2e9bd3cb
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 60 ++++++++++++++++++++++++-----------------------
 1 file changed, 31 insertions(+), 29 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index bd2bb5724cc1..3f5c14315719 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -63,10 +63,10 @@
  */
 static void dbAllocBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
 			int nblocks);
-static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval);
-static int dbBackSplit(dmtree_t * tp, int leafno);
-static int dbJoin(dmtree_t * tp, int leafno, int newval);
-static void dbAdjTree(dmtree_t * tp, int leafno, int newval);
+static void dbSplit(dmtree_t *tp, int leafno, int splitsz, int newval, bool is_ctl);
+static int dbBackSplit(dmtree_t *tp, int leafno, bool is_ctl);
+static int dbJoin(dmtree_t *tp, int leafno, int newval, bool is_ctl);
+static void dbAdjTree(dmtree_t *tp, int leafno, int newval, bool is_ctl);
 static int dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc,
 		    int level);
 static int dbAllocAny(struct bmap * bmp, s64 nblocks, int l2nb, s64 * results);
@@ -2171,7 +2171,7 @@ static int dbFreeDmap(struct bmap * bmp, struct dmap * dp, s64 blkno,
 		 * system.
 		 */
 		if (dp->tree.stree[word] == NOFREE)
-			dbBackSplit((dmtree_t *) & dp->tree, word);
+			dbBackSplit((dmtree_t *)&dp->tree, word, false);
 
 		dbAllocBits(bmp, dp, blkno, nblocks);
 	}
@@ -2257,7 +2257,7 @@ static void dbAllocBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
 			 * the binary system of the leaves if need be.
 			 */
 			dbSplit(tp, word, BUDMIN,
-				dbMaxBud((u8 *) & dp->wmap[word]));
+				dbMaxBud((u8 *)&dp->wmap[word]), false);
 
 			word += 1;
 		} else {
@@ -2297,7 +2297,7 @@ static void dbAllocBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
 				 * system of the leaves to reflect the current
 				 * allocation (size).
 				 */
-				dbSplit(tp, word, size, NOFREE);
+				dbSplit(tp, word, size, NOFREE, false);
 
 				/* get the number of dmap words handled */
 				nw = BUDSIZE(size, BUDMIN);
@@ -2404,7 +2404,7 @@ static int dbFreeBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
 			/* update the leaf for this dmap word.
 			 */
 			rc = dbJoin(tp, word,
-				    dbMaxBud((u8 *) & dp->wmap[word]));
+				    dbMaxBud((u8 *)&dp->wmap[word]), false);
 			if (rc)
 				return rc;
 
@@ -2437,7 +2437,7 @@ static int dbFreeBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
 
 				/* update the leaf.
 				 */
-				rc = dbJoin(tp, word, size);
+				rc = dbJoin(tp, word, size, false);
 				if (rc)
 					return rc;
 
@@ -2589,16 +2589,16 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
 		 * that it is at the front of a binary buddy system.
 		 */
 		if (oldval == NOFREE) {
-			rc = dbBackSplit((dmtree_t *) dcp, leafno);
+			rc = dbBackSplit((dmtree_t *)dcp, leafno, true);
 			if (rc) {
 				release_metapage(mp);
 				return rc;
 			}
 			oldval = dcp->stree[ti];
 		}
-		dbSplit((dmtree_t *) dcp, leafno, dcp->budmin, newval);
+		dbSplit((dmtree_t *) dcp, leafno, dcp->budmin, newval, true);
 	} else {
-		rc = dbJoin((dmtree_t *) dcp, leafno, newval);
+		rc = dbJoin((dmtree_t *) dcp, leafno, newval, true);
 		if (rc) {
 			release_metapage(mp);
 			return rc;
@@ -2629,7 +2629,7 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
 				 */
 				if (alloc) {
 					dbJoin((dmtree_t *) dcp, leafno,
-					       oldval);
+					       oldval, true);
 				} else {
 					/* the dbJoin() above might have
 					 * caused a larger binary buddy system
@@ -2639,9 +2639,9 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
 					 */
 					if (dcp->stree[ti] == NOFREE)
 						dbBackSplit((dmtree_t *)
-							    dcp, leafno);
+							    dcp, leafno, true);
 					dbSplit((dmtree_t *) dcp, leafno,
-						dcp->budmin, oldval);
+						dcp->budmin, oldval, true);
 				}
 
 				/* release the buffer and return the error.
@@ -2689,7 +2689,7 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
  *
  * serialization: IREAD_LOCK(ipbmap) or IWRITE_LOCK(ipbmap) held on entry/exit;
  */
-static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval)
+static void dbSplit(dmtree_t *tp, int leafno, int splitsz, int newval, bool is_ctl)
 {
 	int budsz;
 	int cursz;
@@ -2711,7 +2711,7 @@ static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval)
 		while (cursz >= splitsz) {
 			/* update the buddy's leaf with its new value.
 			 */
-			dbAdjTree(tp, leafno ^ budsz, cursz);
+			dbAdjTree(tp, leafno ^ budsz, cursz, is_ctl);
 
 			/* on to the next size and buddy.
 			 */
@@ -2723,7 +2723,7 @@ static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval)
 	/* adjust the dmap tree to reflect the specified leaf's new
 	 * value.
 	 */
-	dbAdjTree(tp, leafno, newval);
+	dbAdjTree(tp, leafno, newval, is_ctl);
 }
 
 
@@ -2754,7 +2754,7 @@ static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval)
  *
  * serialization: IREAD_LOCK(ipbmap) or IWRITE_LOCK(ipbmap) held on entry/exit;
  */
-static int dbBackSplit(dmtree_t * tp, int leafno)
+static int dbBackSplit(dmtree_t *tp, int leafno, bool is_ctl)
 {
 	int budsz, bud, w, bsz, size;
 	int cursz;
@@ -2805,7 +2805,7 @@ static int dbBackSplit(dmtree_t * tp, int leafno)
 				 * system in two.
 				 */
 				cursz = leaf[bud] - 1;
-				dbSplit(tp, bud, cursz, cursz);
+				dbSplit(tp, bud, cursz, cursz, is_ctl);
 				break;
 			}
 		}
@@ -2833,7 +2833,7 @@ static int dbBackSplit(dmtree_t * tp, int leafno)
  *
  * RETURN VALUES: none
  */
-static int dbJoin(dmtree_t * tp, int leafno, int newval)
+static int dbJoin(dmtree_t *tp, int leafno, int newval, bool is_ctl)
 {
 	int budsz, buddy;
 	s8 *leaf;
@@ -2888,12 +2888,12 @@ static int dbJoin(dmtree_t * tp, int leafno, int newval)
 			if (leafno < buddy) {
 				/* leafno is the left buddy.
 				 */
-				dbAdjTree(tp, buddy, NOFREE);
+				dbAdjTree(tp, buddy, NOFREE, is_ctl);
 			} else {
 				/* buddy is the left buddy and becomes
 				 * leafno.
 				 */
-				dbAdjTree(tp, leafno, NOFREE);
+				dbAdjTree(tp, leafno, NOFREE, is_ctl);
 				leafno = buddy;
 			}
 
@@ -2906,7 +2906,7 @@ static int dbJoin(dmtree_t * tp, int leafno, int newval)
 
 	/* update the leaf value.
 	 */
-	dbAdjTree(tp, leafno, newval);
+	dbAdjTree(tp, leafno, newval, is_ctl);
 
 	return 0;
 }
@@ -2927,21 +2927,23 @@ static int dbJoin(dmtree_t * tp, int leafno, int newval)
  *
  * RETURN VALUES: none
  */
-static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
+static void dbAdjTree(dmtree_t *tp, int leafno, int newval, bool is_ctl)
 {
 	int lp, pp, k;
-	int max;
+	int max, size;
+
+	size = is_ctl ? CTLTREESIZE : TREESIZE;
 
 	/* pick up the index of the leaf for this leafno.
 	 */
 	lp = leafno + le32_to_cpu(tp->dmt_leafidx);
 
+	if (WARN_ON_ONCE(lp >= size || lp < 0))
+		return;
+
 	/* is the current value the same as the old value ?  if so,
 	 * there is nothing to do.
 	 */
-	if (WARN_ON_ONCE(lp >= CTLTREESIZE))
-		return;
-
 	if (tp->dmt_stree[lp] == newval)
 		return;
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
