Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5653C8678B7
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Feb 2024 15:37:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rec6I-0007tn-3z;
	Mon, 26 Feb 2024 14:37:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chengming.zhou@linux.dev>) id 1rdsPQ-0005Em-Pf
 for jfs-discussion@lists.sourceforge.net;
 Sat, 24 Feb 2024 13:49:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RjzkEuT2X9YH+2nQqDYsuYIdSPZdn5kxHlvSnIWCZkc=; b=eJPpntjDHxEUEU0N3YiRigT80m
 lsfb8kshkmkZ5jnFuhnNSVLhaNUXucyiWV5sEzWB+RouyIv/89gi+0u8MJXAGQFEKIN8GwEzRgD1U
 Zrz1KDbafdTeS4ndLHiAGotSd09rfEiiNfQXfDUO1DjCOx8QQ9BF1elL6isEQFtyWNd0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RjzkEuT2X9YH+2nQqDYsuYIdSPZdn5kxHlvSnIWCZkc=; b=N
 WOCyJRrjpyV9+wokmzMLFg39ujmJZHHXWST6IIdBIzxftUTVpdU2I6FF16rsz0oEGLKyz0a42bK+p
 zyLzmQv/rq5yG0piFp51uQGp8lLwlaghXJnlFtaR7FM0OBbBdYjCChjHs0C60593ltNWeYOw5267u
 r7ZODpmP6UE/EXm0=;
Received: from out-183.mta1.migadu.com ([95.215.58.183])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rdsPM-0006or-WF for jfs-discussion@lists.sourceforge.net;
 Sat, 24 Feb 2024 13:49:45 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1708782574;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=RjzkEuT2X9YH+2nQqDYsuYIdSPZdn5kxHlvSnIWCZkc=;
 b=a2CtTmIsMTLRqT7yJ/7XVHv3+mE8p6Ghfpc3swFYnUCo7x5jRJyixOJwZeo1YCjHJ9CPdk
 xcUe4yq1tNI+EyXffBVllc0KNcnbRj0yVM4zzfOauN3g2B3j8xpnh5aZCRdvWneYuqoA1v
 fI+M6iNAc3h3vQAOSwhQmYPV2YeMcyQ=
To: shaggy@kernel.org, jack@suse.cz, jlayton@kernel.org, brauner@kernel.org,
 chuck.lever@oracle.com, zhouchengming@bytedance.com
Date: Sat, 24 Feb 2024 13:49:25 +0000
Message-Id: <20240224134925.829677-1-chengming.zhou@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Chengming Zhou <zhouchengming@bytedance.com> The
 SLAB_MEM_SPREAD
 flag is already a no-op as of 6.8-rc1, remove its usage so we can delete
 it from slab. No functional change. Signed-off-by: Chengming Zhou
 <zhouchengming@bytedance.com>
 --- fs/jfs/super.c | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rdsPM-0006or-WF
X-Mailman-Approved-At: Mon, 26 Feb 2024 14:36:59 +0000
Subject: [Jfs-discussion] [PATCH] jfs: remove SLAB_MEM_SPREAD flag usage
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
From: "chengming.zhou--- via Jfs-discussion"
 <jfs-discussion@lists.sourceforge.net>
Reply-To: chengming.zhou@linux.dev
Cc: Xiongwei.Song@windriver.com, jfs-discussion@lists.sourceforge.net,
 roman.gushchin@linux.dev, amir73il@gmail.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, chengming.zhou@linux.dev, vbabka@suse.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Chengming Zhou <zhouchengming@bytedance.com>

The SLAB_MEM_SPREAD flag is already a no-op as of 6.8-rc1, remove
its usage so we can delete it from slab. No functional change.

Signed-off-by: Chengming Zhou <zhouchengming@bytedance.com>
---
 fs/jfs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index ff135a43b5b7..e1be21ca5d6e 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -932,7 +932,7 @@ static int __init init_jfs_fs(void)
 
 	jfs_inode_cachep =
 	    kmem_cache_create_usercopy("jfs_ip", sizeof(struct jfs_inode_info),
-			0, SLAB_RECLAIM_ACCOUNT|SLAB_MEM_SPREAD|SLAB_ACCOUNT,
+			0, SLAB_RECLAIM_ACCOUNT|SLAB_ACCOUNT,
 			offsetof(struct jfs_inode_info, i_inline_all),
 			sizeof_field(struct jfs_inode_info, i_inline_all),
 			init_once);
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
