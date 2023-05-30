Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3F37167BC
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41c5-0001kU-GE;
	Tue, 30 May 2023 15:50:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41bp-0001kD-7a for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nmPbEXS+MlTpk7DPeTJmCFg9pOUjJFv/4XmohKW+HK0=; b=clwbWmYzkpKLTmKsnTHQkI34r4
 v+1pMr8sdrURp53HGCQDA4qxn7n558vujtx5EkDNm+aQlTiCNIseb7omJWgfdiYINeEOfV12aZVf7
 u2QfUX9tMFDeL01W8nejT+n4Cw0WhclYobo/GQwRv539O8SMSRvBQh4dOjfpRPqYzeaY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nmPbEXS+MlTpk7DPeTJmCFg9pOUjJFv/4XmohKW+HK0=; b=MMw3QDjd7wIG4I1OEwAL6KLTm7
 DKRa+1hMzF9j5zlNMZ16W9/5CtMFIVkHlmLTXy811qGKk2O7UFQmn4dY9QnUcwSqJIXqY9r6zDlrk
 +Ic2YmhlKBaC0eM9r5R0SnZkh9zSM0ojy6RshaO3VQow8wZSGVTz/w4K7SXHRWQsNgUQ=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41bo-006ftx-1c for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461803; x=1716997803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l3onFYf+ZZCsjR7ISuwDOJFQGwH0Ly8JQt0dIZLYRR0=;
 b=Ep/4jLihkW/AX9xXyDSTkCVgwyjqHn84BUW2eB45Lv74AZ0PU2nWTaXf
 8OxZ5Gln4EuoHADYPSKcfLN/9EIKwmNP30HU6oGUfFZ0HHpF3x/7t27Ko
 aX8lc4B9ZY9tHpnicynoNy+LOXH57RtVa4tGolZgOZ4VSDDZPLVZy6sBm
 F6zq3enlbBZPQkEvlBefpxpoQ/pxUa1n8sKRfR4nrkbb+933LJiBlstHv
 BY6oX7HsmcXbMSXNefpIjWuZ2vx+4+A/+H2u1ViekJtbq2I5Uf62TXNjq
 KGGfVs7KhQFyu8AX5fBkGob+3aqItgV13s6Q9CZlm8VMh7WhmYfijO3n6 Q==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="236922660"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:50:00 +0800
IronPort-SDR: MoAC3RR1WbyrOaghCGL1z6ay/1B0meV8+pMCLMGD2ICaj0eba/ALNP9UazgrBF0Rx+WoE/kIgw
 Jl7fd7QDaEZnAI77ZfJsynL2SV4ljRCQp/TP0b7YSq6OMjyCBelVFWDdRT5Ylx5y6rEWXkwJnT
 MoOr9rMQdEd5MjA2pTEeXcCwVbHQQiL/6f7RWMpR3rvtqnIhPpbqmYn6lWeRN22XeoOCqjoIVh
 V168zZfvhw+AghrrBVwD0jNwmxnG8E+U8e+mDePPbV0hNAtDRYZsRZ4RHhlDHMDZsq/jbvG6F4
 1IU=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:04:53 -0700
IronPort-SDR: ZMHPyde+x3oZg2TtUSRL/5p5WqVr/ZfKqvYwCZxUYP2qYQ91FJJt40KpHRQdugU8uEYsX/I3K/
 I9FEFvtZk6Bs4sVviWPES8u2Sy6mkQSXkjcdYwONAcCuJSehDyyyLlFwpmPv+ibIXsEmu0GWG4
 2Y8ns+RdUjXQlTNei1wm9AL/aSe4WsIWt+fbIYohfizzZXwI2DiTr8AG9+VlPVIh3eTqf/W2/A
 sFbZ+/LPFzOwaTFd1WGs1qMqHoly+Y7z8CXi9+Jw0hugo7ke60l0xnB9VSjPDyKn0GdZOBduyf
 BL8=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:49:57 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:13 -0700
Message-Id: <b1b488224117ed5e230478fee2d4c5536ee1fa45.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685461490.git.johannes.thumshirn@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The zonefs superblock reading code uses bio_add_page() to
 add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q41bo-006ftx-1c
Subject: [Jfs-discussion] [PATCH v6 10/20] zonefs: use __bio_add_page for
 adding single page to bio
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
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Song Liu <song@kernel.org>, dm-devel@redhat.com,
 Christoph Hellwig <hch@lst.de>, Andreas Gruenbacher <agruenba@redhat.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Matthew Wilcox <willy@infradead.org>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Mike Snitzer <snitzer@kernel.org>,
 Ming Lei <ming.lei@redhat.com>, linux-raid@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Hannes Reinecke <hare@suse.de>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, gouhao@uniontech.com,
 linux-mm@kvack.org, Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The zonefs superblock reading code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/zonefs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/zonefs/super.c b/fs/zonefs/super.c
index 23b8b299c64e..9350221abfc5 100644
--- a/fs/zonefs/super.c
+++ b/fs/zonefs/super.c
@@ -1128,7 +1128,7 @@ static int zonefs_read_super(struct super_block *sb)
 
 	bio_init(&bio, sb->s_bdev, &bio_vec, 1, REQ_OP_READ);
 	bio.bi_iter.bi_sector = 0;
-	bio_add_page(&bio, page, PAGE_SIZE, 0);
+	__bio_add_page(&bio, page, PAGE_SIZE, 0);
 
 	ret = submit_bio_wait(&bio);
 	if (ret)
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
