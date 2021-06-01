Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 365C0397640
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Jun 2021 17:12:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lo63j-0000VI-8X; Tue, 01 Jun 2021 15:11:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiapeng.chong@linux.alibaba.com>) id 1lo2FF-0006bT-LW
 for jfs-discussion@lists.sourceforge.net; Tue, 01 Jun 2021 11:07:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a4DcyJbRA7mo2crsk/v08k+1vfy25p9hvQOhIVf7bYU=; b=kVcMkTTK1ofCNksNxrbGFePx6P
 YI2AGBP+U2onssHvxI+HmjuvPRU8gEtKwYdHOlDIYaORNFhw9+yVs7ldz6d6o0pzjY4Prdn7rQw9m
 4tokTriSNK9oDtKdXkXQoEShDIjCwq/SSIyPWkFPmZ5rP1U6ms30Meyi1wPHtSiQbyAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a4DcyJbRA7mo2crsk/v08k+1vfy25p9hvQOhIVf7bYU=; b=h9Vy5owgSdfoTbxUxPQEEY9MP8
 BVHsyf0wpEgDiZTTGmwQiDu+qRNmphGSztks6lEmVNDh+Rqy3xUnI9Oqb4ph5mnwPrC6+l5j3GxsT
 s6MQ6ZzGcZlRDxxekCeq24jT15ZyuF4nygFAXMuL8ek/pCSAmNikYCdaEsGUxqueLpT0=;
Received: from out30-57.freemail.mail.aliyun.com ([115.124.30.57])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lo2FC-005h3o-Il
 for jfs-discussion@lists.sourceforge.net; Tue, 01 Jun 2021 11:07:38 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R111e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04420;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=4; SR=0;
 TI=SMTPD_---0UawU1ts_1622545642; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0UawU1ts_1622545642) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 01 Jun 2021 19:07:26 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: shaggy@kernel.org
Date: Tue,  1 Jun 2021 19:07:10 +0800
Message-Id: <1622545630-19745-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1lo2FC-005h3o-Il
X-Mailman-Approved-At: Tue, 01 Jun 2021 15:11:58 +0000
Subject: [Jfs-discussion] [PATCH] fs/jfs: Fix missing error code in
 lmLogInit()
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
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The error code is missing in this code scenario, add the error code
'-EINVAL' to the return value 'rc.

Eliminate the follow smatch warning:

fs/jfs/jfs_logmgr.c:1327 lmLogInit() warn: missing error code 'rc'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 fs/jfs/jfs_logmgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 9330eff21..78fd136 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1324,6 +1324,7 @@ int lmLogInit(struct jfs_log * log)
 		} else {
 			if (!uuid_equal(&logsuper->uuid, &log->uuid)) {
 				jfs_warn("wrong uuid on JFS log device");
+				rc = -EINVAL;
 				goto errout20;
 			}
 			log->size = le32_to_cpu(logsuper->size);
-- 
1.8.3.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
