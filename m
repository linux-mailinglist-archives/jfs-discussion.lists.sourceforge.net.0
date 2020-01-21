Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF353143EAD
	for <lists+jfs-discussion@lfdr.de>; Tue, 21 Jan 2020 14:56:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1itu0T-0008RG-Mi; Tue, 21 Jan 2020 13:55:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alex.shi@linux.alibaba.com>) id 1itprD-0002r4-Oi
 for jfs-discussion@lists.sourceforge.net; Tue, 21 Jan 2020 09:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8WNAuScjvrfy+4/FpIf3egpIi8k+zK+GQP5Ph6tzd90=; b=RwwtyCAumkl2DGk+Itfu1zse3g
 cm71A8i95Zk0rsBxU80bf4B6rtaxJbTvXd/9AmgzZRbvvweQ8sYs+xgECGpktsHxluD9AWPPUbno4
 otVILjAHkpbXLmByT/zW0iShLWqWWM942p9H1A4a768crkqUoK+DrhBYNrchvvRt8A8c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8WNAuScjvrfy+4/FpIf3egpIi8k+zK+GQP5Ph6tzd90=; b=jMFxwxH7bFLQSPN0CT4ddLUr03
 s0yy+CARwZGqOUjDtd44BUW5XgaW77ScVv61dC+9eBQMpLh95C/cuxZdbMU39GVEPXIPaQU4j7a6U
 UgN7vNLEPfBjxg+7R7LJnDzV3/p3sqtyt1aS5DPqtKXa+dZdxuGrbMk8lOUVxpFe2hwc=;
Received: from out30-130.freemail.mail.aliyun.com ([115.124.30.130])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1itpr9-00G4Dr-US
 for jfs-discussion@lists.sourceforge.net; Tue, 21 Jan 2020 09:29:59 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R111e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04427; MF=alex.shi@linux.alibaba.com;
 NM=1; PH=DS; RN=3; SR=0; TI=SMTPD_---0ToHVM-7_1579596562; 
Received: from localhost(mailfrom:alex.shi@linux.alibaba.com
 fp:SMTPD_---0ToHVM-7_1579596562) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 21 Jan 2020 16:49:22 +0800
From: Alex Shi <alex.shi@linux.alibaba.com>
To: 
Date: Tue, 21 Jan 2020 16:49:20 +0800
Message-Id: <1579596560-257920-1-git-send-email-alex.shi@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -8.4 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1itpr9-00G4Dr-US
X-Mailman-Approved-At: Tue, 21 Jan 2020 13:55:47 +0000
Subject: [Jfs-discussion] [PATCH] fs/jfs: remove unused MAXL2PAGES
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

No one use it from Linux-2.6.12-rc2, so better to remove it.

Signed-off-by: Alex Shi <alex.shi@linux.alibaba.com>
Cc: Dave Kleikamp <shaggy@kernel.org> 
Cc: jfs-discussion@lists.sourceforge.net 
Cc: linux-kernel@vger.kernel.org 
---
 fs/jfs/jfs_dmap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index caade185e568..7dfcab2a2da6 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -4027,7 +4027,6 @@ static int dbGetL2AGSize(s64 nblocks)
  */
 #define MAXL0PAGES	(1 + LPERCTL)
 #define MAXL1PAGES	(1 + LPERCTL * MAXL0PAGES)
-#define MAXL2PAGES	(1 + LPERCTL * MAXL1PAGES)
 
 /*
  * convert number of map pages to the zero origin top dmapctl level
-- 
1.8.3.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
