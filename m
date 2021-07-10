Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D42AA3C2DEB
	for <lists+jfs-discussion@lfdr.de>; Sat, 10 Jul 2021 04:25:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1m22gH-0001WF-Qn; Sat, 10 Jul 2021 02:25:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1m22gG-0001W8-GY
 for jfs-discussion@lists.sourceforge.net; Sat, 10 Jul 2021 02:25:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mqYWcw5K4SqbGdsVTy0bjyGKmx0SSfWookguIyEo/f0=; b=DjCwg7g5vYNEsXJAiTcyoY0seZ
 JFCQmUX0WPTOhLW0GDy6GgUHfOl31f+X3N3cxDNYDG+X598UAW4+D2TUz/gudfcADVM2baKP4W/GH
 uQBLJdzO/s1HUFzIA1XJgc94J7XSIm2Tpnx+EvGHlcuBvXlwzMROvinu+FL8dEC0SJO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mqYWcw5K4SqbGdsVTy0bjyGKmx0SSfWookguIyEo/f0=; b=FTAZd3Mgc+wRFG7z+UtVNKjB4Y
 DvWknSFNJrJqGWlpmEKBWXm5+JYAL7KhSA712/dPBc9h3WcYUZnmrqTTiqUlw5K2Ezpkiyar9wcAF
 xRStCvNPL/Tl95S3ynZ2cDOUVnJFpKFTRscfbNhx8d6vaY80ds4Jc0qrd+6Xsw2QSfN4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m22gA-0004g2-5j
 for jfs-discussion@lists.sourceforge.net; Sat, 10 Jul 2021 02:25:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 45A9461418;
 Sat, 10 Jul 2021 02:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625883911;
 bh=YpocWr17IC73lrDXfQ8pQR21WQ1hbjgFYsS/FrqkNUg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uOpVg/LM/EY8w5ANHb4VvCtfCMEz6m10QOOkNQRYf+QVy/HBPmPxZuGNUo3iASLQM
 qC73CPwUD+ZVCinP8StERCz08s9U2qaCw7zMd46G796QzPr887MSW+cb1VQBIZcIqu
 uERlOt/gxzQjwIjewtUYKKBLS8lxywSJZ6XwHOSq4ood3jFWh0UkMhJWuI+6lKOwo/
 tVZPhrDUnRPgsN0lKVPHcKwQB2q4/bDTvkhE/LosmIW40rcg0hrP+VtOgWh6svNQFF
 7HNm6TuC/R7ybn33oQdr9pNGYtxMi+wZgTkCYLbDkCVh+NBlu4N9eG9pp30BrcT/fm
 JZd7/tUosuC4Q==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri,  9 Jul 2021 22:23:27 -0400
Message-Id: <20210710022428.3169839-33-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710022428.3169839-1-sashal@kernel.org>
References: <20210710022428.3169839-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m22gA-0004g2-5j
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.10 33/93] fs/jfs: Fix missing
 error code in lmLogInit()
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
Cc: Sasha Levin <sashal@kernel.org>,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 jfs-discussion@lists.sourceforge.net, Abaci Robot <abaci@linux.alibaba.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

[ Upstream commit 492109333c29e1bb16d8732e1d597b02e8e0bf2e ]

The error code is missing in this code scenario, add the error code
'-EINVAL' to the return value 'rc.

Eliminate the follow smatch warning:

fs/jfs/jfs_logmgr.c:1327 lmLogInit() warn: missing error code 'rc'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_logmgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 9330eff210e0..78fd136ac13b 100644
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
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
