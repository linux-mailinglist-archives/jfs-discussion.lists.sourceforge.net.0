Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75696B14E50
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Jul 2025 15:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XrZexRPv8wwwovfxx0G8eopIWx9rbqANrbUkuHRpClM=; b=Ka6uL1WnLDlcusUaexkekMnH/c
	5AYXXv/j7ylAvxJIm3s88/I65lsEVhaCPhPlHd08GH5kHwbaiC8jFF9soKKRSOjetaVgSqQox5rBA
	vMRmfp7wYh4iS9I0VtocI0vLcVR63Kf9986gBBHq18wr83HV8dZSXechIGYVy3VlSzHY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ugkJb-0007Eh-0I;
	Tue, 29 Jul 2025 13:24:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zheng.yu@northwestern.edu>) id 1ugY5e-0003TS-85
 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Jul 2025 00:21:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zl1ZVElC39FTT3T7r19dXpLg2XX2HV+C4+rdufIjrio=; b=ZWDoGlMAogErxklBzw4u1K9Zke
 Ktc3eLVoXOCZ4htaU8sftB/CH6nJGtGUhMyR6FKeF8jNrHl3XnwwFnMPrnFnJYsIMn43xHFbRcbCw
 iJXwJf416ryhBABFx+0uIKfSbMcRPy32DjwqW1GAD5MONLO1ypx0JoaaR2tM9jebPLTw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Zl1ZVElC39FTT3T7r19dXpLg2XX2HV+C4+rdufIjrio=; b=V
 Z7coph77dd8NLM0/pQnoeRR9spGvxTUHcTKzVSoFAC0HVYzACGQthoO90DN8BoXL4hYtGFsam+kSw
 whyhFOjgT32q2RxTWf/tN24dAFq/nM7yPnoW+RUP6bf/Nssp8h+XXgoXD0pxHOlAdMEDHC9vb1ERI
 E92zGNW4IVWvksBQ=;
Received: from venus.cs.northwestern.edu ([129.105.2.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ugY5e-0003Mj-ER for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Jul 2025 00:21:10 +0000
Received: from venus.cs.northwestern.edu (localhost [127.0.0.1])
 by venus.cs.northwestern.edu (Postfix) with ESMTP id 1870F181B06;
 Mon, 28 Jul 2025 19:05:10 -0500 (CDT)
To: Dave Kleikamp <shaggy@kernel.org>
Date: Tue, 29 Jul 2025 00:05:08 +0000
Message-ID: <20250729000508.3517823-1-zheng.yu@northwestern.edu>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In dbAllocCtl(),
 read_metapage() increases the reference count
 of the metapage. However, when dp->tree.budmin < 0, the function returns
 -EIO without calling release_metapage() to decrease the referenc [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1ugY5e-0003Mj-ER
X-Mailman-Approved-At: Tue, 29 Jul 2025 13:24:22 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix metapage reference count leak in
 dbAllocCtl
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
From: Zheng Yu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Zheng Yu <zheng.yu@northwestern.edu>
Cc: jfs-discussion@lists.sourceforge.net, Jeongjun Park <aha310510@gmail.com>,
 Edward Adam Davis <eadavis@qq.com>, linux-kernel@vger.kernel.org,
 Vasiliy Kovalev <kovalev@altlinux.org>,
 Nihar Chaithanya <niharchaithanya@gmail.com>,
 Zheng Yu <zheng.yu@northwestern.edu>, Rand Deeb <rand.sec96@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In dbAllocCtl(), read_metapage() increases the reference count of the
metapage. However, when dp->tree.budmin < 0, the function returns -EIO
without calling release_metapage() to decrease the reference count,
leading to a memory leak.

Add release_metapage(mp) before the error return to properly manage
the metapage reference count and prevent the leak.

Fixes: 51a203470f502a64a3da8dcea51c4748e8267a6c ("jfs: fix shift-out-of-bounds in dbSplit")

Signed-off-by: Zheng Yu <zheng.yu@northwestern.edu>
---
 fs/jfs/jfs_dmap.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 35e063c9f3a4..5a877261c3fe 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1809,8 +1809,10 @@ dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno, s64 * results)
 			return -EIO;
 		dp = (struct dmap *) mp->data;
 
-		if (dp->tree.budmin < 0)
+		if (dp->tree.budmin < 0) {
+			release_metapage(mp);
 			return -EIO;
+		}
 
 		/* try to allocate the blocks.
 		 */
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
