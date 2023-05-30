Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3137167BE
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41c7-00086Q-Bq;
	Tue, 30 May 2023 15:50:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41bq-00085N-E1 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FSfLaZ0uUnz+itbfEoh9diG/Fo3AxNs8ZFZ3+lYsS3I=; b=KH0rvxPV0Vg46ylqB6//Z838FE
 lF2zvlLyyTtNiEeEZ0L0vpSzR9n8Amk4qUWCLlcbm8Bv/raiEtDumP653MGkjI1ozRYlnSUTtaJ8/
 GJIVZIJSaPk79w3+6x+JXHTMzLWwr3g5b4DVYFAYLOZdOOGP5PtK5G9kJ4DgiV4gzIOg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FSfLaZ0uUnz+itbfEoh9diG/Fo3AxNs8ZFZ3+lYsS3I=; b=Q/kmyo6XKC0NGwL4sFWw3RPHLv
 iLqRIUMijGs4uzhTSSk6e4LhistYwjKzpuDXRG9ei1xkmisH21QxS74HWtW5iprxq0FD0pjR4FcmK
 95CPaLgVpYjZDUdSfpN8148lS6y9yAIPb03dC+7HxPqmWMt+AVnfET55wrxj5GG3/LKQ=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41bq-006ftx-CQ for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461806; x=1716997806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=feBhECdTKAjH9l6zrs2xmhiYw9k0zkjzEVMqz5jiOVc=;
 b=d2I3mRQIYCqRP/r+8C7Ic8ej29eYBLkFuohOOyRyoLThupKdfBm/SuhM
 gR2buiE1HpDoTQbuO/DrCmxaZGb8wIe9pXPlaX8IbIYmTn79eAjSI37jl
 K9plNwJqdJ0tmb2Z69HO9vn5rhiQDo7ddiwTPlptE3pxWi+4ACa+mU6HE
 aqVppqOE+QGMIG/orj7L6trbTRgooBUmjtXRPsh7dy7Zq/WAfeC40QO4W
 d3XA07DxD94Esj3mZTPxZMf6GjoNbkJQebgaIFs7XGKWPztlUo3iqbtzM
 bFxOdkRCtZfbz4YYT81kXTpn8G3MT6Hol/DP4BnfPJc2AFZc6nznvuarx w==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="236922665"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:50:06 +0800
IronPort-SDR: gNIYBH/dTEl0IvoZybtEnZT5xs10wq7F9tGObfJeIImQtJAxkRI1Yz6DlO+t7ET7qzbao0JlEU
 dnS+G6g8+g7RKiNOVNYqFDjaQLo91cho1LpDFzt3x/QLIejHzfF7VSN9Y46UOAHsDJr99rsjBd
 ti+TI+NPMcZE69zk04FtuR17EBLEuPwQEc4eyRGukPO9J9zgAxqiZ/+esypjT8v0Nw9Q6mddID
 +JgYDbOhP3FdO5413Nt+80zvq26wiAEETyWwO2OK62Jwc61EymZuVC0u/9EwMRGRHWqJllxPJ7
 86U=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:04:59 -0700
IronPort-SDR: EhH4NXigyhjdlA+o9IGwq9toIdfLXKwjqpigNPLms4HX2ZY0xdq+HGjMqjM/LXPE0H0lh+M4yV
 XOUH1WqeeUTQLRM43o4YQyLZh/QIjvwzVGZbVmNMXHvT5n2wQIzYOdHngHeSW32GE9fp8AeZ38
 O7IBIim14OZkdwKoUagjTCGpbHBhvSrPULKGTbznjjKuwsGFp7K4CnPG+U/LPiXHGWkqFNNUNH
 jUB2k76eBdmfrU2hEjhb4tbcKZs+3fgO9fPe2xuInJzHIOQ0mXkmAO0bd7p4K36l0YuHQ9uRO9
 U7A=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:50:03 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:15 -0700
Message-Id: <7e817bf13ca47fd863385997c0a9794221df7781.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685461490.git.johannes.thumshirn@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The floppy code uses bio_add_page() to add a page to a newly
 created bio. bio_add_page() can fail, but the return value is never checked.
 Use __bio_add_page() as adding a single page to a newly created bio is
 guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q41bq-006ftx-CQ
Subject: [Jfs-discussion] [PATCH v6 12/20] floppy: use __bio_add_page for
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

The floppy code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/floppy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/floppy.c b/drivers/block/floppy.c
index cec2c20f5e59..28ec6b442e9c 100644
--- a/drivers/block/floppy.c
+++ b/drivers/block/floppy.c
@@ -4147,7 +4147,7 @@ static int __floppy_read_block_0(struct block_device *bdev, int drive)
 	cbdata.drive = drive;
 
 	bio_init(&bio, bdev, &bio_vec, 1, REQ_OP_READ);
-	bio_add_page(&bio, page, block_size(bdev), 0);
+	__bio_add_page(&bio, page, block_size(bdev), 0);
 
 	bio.bi_iter.bi_sector = 0;
 	bio.bi_flags |= (1 << BIO_QUIET);
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
