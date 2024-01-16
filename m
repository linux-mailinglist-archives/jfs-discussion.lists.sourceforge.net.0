Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BCB82E4EB
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Jan 2024 01:27:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPXIV-0002py-9H;
	Tue, 16 Jan 2024 00:27:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1rPXIT-0002pi-KF
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:27:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m9+BE1h4zhPZeIuc5ihlck60S7oNDiZOHexz0r0mOiE=; b=X9GwTU1J3+R2ll+y/I+dvx8gfk
 lBHVCG9eooNeZMP9zkdsA5/mH1rC5vOcbkIAAQLW/VTbpoHafv5frdyqs9Qcl1l81rOH26RIN7D3o
 adzetcbBB90r84+AaM5FrevfHF02+CbCUGUpkQ6O/GHqpLliiHrlks+49S1SCz8tcr7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m9+BE1h4zhPZeIuc5ihlck60S7oNDiZOHexz0r0mOiE=; b=L9/SBIJdpkJ4yfN9GFF4Rm8gza
 gpfQO0o41+5ogIbEO8T6UeDWUmymtjwmmppQlR9+MEyGWmCT8FfMjqnkxCUgheNsaCW0H5F4D3+Mk
 c0uNeme+Y2GKs74wQ1sFKQdBDzg9kRVBRbh4fIcN/7amcNWWcrP10/wN5C2p87OtDCy0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPXIS-00035r-9N for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:27:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 89EC560B73;
 Tue, 16 Jan 2024 00:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBCCFC433F1;
 Tue, 16 Jan 2024 00:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705364826;
 bh=b80f0fsZfvrwsPL/+xFih/b958KCU5SyV61Nsicuec4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=a+rMC4WbnhMJYUuwBsJZEK/BmjaFYSv9pht78pNf1kv2N524iLtP+wlR8lITura6N
 e+gCUgxv8R56jIDqXRZTH/pcCrU/EgFFv+oDpMHjeYbwvD2mVjYdEH14eFql18g5QP
 XayI5ztpuudMRlTZoJmcfH1kmbyiTnY7PvPK6DEXzH++HFzAl9Sv33nFgUAOlXk10D
 5+c2v0PQOUDiGKbVzT8TjVZZqheG25o3ss+/mbsx+UelYkkNHsRPty/4QdQJE54Vu6
 llzCHklTXObgkFrW8EUexgN2icOONrmXjKS07ht+tVHl1LHyXozKaWxeJTWjziUanW
 4IS0ZbcJSNfpQ==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 15 Jan 2024 19:26:31 -0500
Message-ID: <20240116002649.216260-6-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116002649.216260-1-sashal@kernel.org>
References: <20240116002649.216260-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.208
X-Spam-Score: -6.7 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Manas Ghandat <ghandatmanas@gmail.com> [ Upstream
 commit
 cca974daeb6c43ea971f8ceff5a7080d7d49ee30 ] Currently while joining the leaf
 in a buddy system there is shift out of bound error in calculation of BUDSIZE.
 Added the required check to the BUDSIZE and fixed the documentation as well.
 Content analysis details:   (-6.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
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
X-Headers-End: 1rPXIS-00035r-9N
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.10 06/12] jfs: fix
 shift-out-of-bounds in dbJoin
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
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 wonguk.lee1023@gmail.com, Manas Ghandat <ghandatmanas@gmail.com>,
 juntong.deng@outlook.com, yogi.kernel@gmail.com,
 jfs-discussion@lists.sourceforge.net,
 syzbot+411debe54d318eaed386@syzkaller.appspotmail.com, andrew.kanner@gmail.com,
 code@siddh.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Manas Ghandat <ghandatmanas@gmail.com>

[ Upstream commit cca974daeb6c43ea971f8ceff5a7080d7d49ee30 ]

Currently while joining the leaf in a buddy system there is shift out
of bound error in calculation of BUDSIZE. Added the required check
to the BUDSIZE and fixed the documentation as well.

Reported-by: syzbot+411debe54d318eaed386@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=411debe54d318eaed386
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 9b6849b9bfdb..d6fca059e688 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2827,7 +2827,9 @@ static int dbBackSplit(dmtree_t *tp, int leafno, bool is_ctl)
  *	leafno	- the number of the leaf to be updated.
  *	newval	- the new value for the leaf.
  *
- * RETURN VALUES: none
+ * RETURN VALUES:
+ *  0		- success
+ *	-EIO	- i/o error
  */
 static int dbJoin(dmtree_t *tp, int leafno, int newval, bool is_ctl)
 {
@@ -2854,6 +2856,10 @@ static int dbJoin(dmtree_t *tp, int leafno, int newval, bool is_ctl)
 		 * get the buddy size (number of words covered) of
 		 * the new value.
 		 */
+
+		if ((newval - tp->dmt_budmin) > BUDMIN)
+			return -EIO;
+
 		budsz = BUDSIZE(newval, tp->dmt_budmin);
 
 		/* try to join.
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
