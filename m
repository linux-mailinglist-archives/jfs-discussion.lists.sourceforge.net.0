Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B86CC82E4B9
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Jan 2024 01:24:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPXG0-0001RJ-Mq;
	Tue, 16 Jan 2024 00:24:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1rPXFz-0001R7-8Z
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tjWT5+QrvIqngz4Y4jR6o47uq2W0np/qWHUDRP+w6mg=; b=AxBc3nXHnRaleDEXYgM2lCbYbB
 7EK2y2thnO4u7AgItf1COZEjf9D4jifLDEpVa8EG5vY3A1vMi3eyLNNUpQYuFDIggsrUh6kVpET88
 cYlZRtvTr876jlp1qrnvcVOOzt9gRMBzZA8Fnxnh9DlDySy3FE2AQQPmogXlYvbLXHhc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tjWT5+QrvIqngz4Y4jR6o47uq2W0np/qWHUDRP+w6mg=; b=OsfdC2WB4I4mdSO2AYhkXMLxwV
 ng6Kf2OAjEGV9WOZSyv79zMI0DRiijhIaB6TQiyLK09l6UUMYyxMYr8l/18vp7MmZSvD/Yd3WvOpE
 aJHdTgbLVY/Ex006fzrpmvb+du2vM9QK301dtsioEqt3geXyefyJbuP+GyLPZYuHWRbI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPXFw-0002lX-RJ for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:24:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 260216100B;
 Tue, 16 Jan 2024 00:24:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69B49C433F1;
 Tue, 16 Jan 2024 00:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705364670;
 bh=TfGqz+9mNc8TLCDD7CjkBiTWvD3k4F9rV0DvkkJu5ZM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ibG3w03enbbLG1YBbCqrxyHJVJ6noB73/KIwaXFeACI55aS5VXmIiPhJM6ssuDVD0
 7s6OzsVDHSLvggQJKU+b3zjj45nGJTfgJSjh8WzIGBXOZbTAhNCzgfrCZ+yxkWuBXo
 MwMvan8gi70H21evayouC/dSLDD/vUfKynwy6twYwo1ATDfYK+naJQVV2Jon+mNiMW
 pun9asx/XzsZQwiQ3rnp/6qOAXj2xgrR02qaP3D7JFueHmbl4+BhP0wntOq13FizP+
 zqxGc5GWMHwBG317GXKGt4LRWuQatM1QIF9r4Az2TYtpcMMb0RyLfc+YlrFbNbtCU1
 /78uQb+2Q/jDw==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 15 Jan 2024 19:23:41 -0500
Message-ID: <20240116002413.215163-6-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116002413.215163-1-sashal@kernel.org>
References: <20240116002413.215163-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.12
X-Spam-Score: -6.7 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPXFw-0002lX-RJ
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.6 06/19] jfs: fix
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
 osmtendev@gmail.com, code@siddh.me
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
index cb3cda1390ad..8eec84c651bf 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2763,7 +2763,9 @@ static int dbBackSplit(dmtree_t *tp, int leafno, bool is_ctl)
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
@@ -2790,6 +2792,10 @@ static int dbJoin(dmtree_t *tp, int leafno, int newval, bool is_ctl)
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
