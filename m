Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A06AD716792
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41ba-0000LU-T8;
	Tue, 30 May 2023 15:49:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41bY-0000LG-Tg for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eoF6iuNNlEmd2vTdAFbwRg91T5G4Yt4OJwZs2LN0KKg=; b=cbh3EfK0tDFjXNKSXDpWr5y5M6
 P5eu0jmFdAfSDsu8lbBmDgWF/BNnqt/9dVDMuYuPDN5bl7GjkDh27/JH6LsWIwXSJkm50wqG+axZF
 XViVvmDQbNI2ajajPRthj0I4VvghAaoX4/eXBVh+XGK5tfpULcQHNMM5a8RlS9ZdD/KQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eoF6iuNNlEmd2vTdAFbwRg91T5G4Yt4OJwZs2LN0KKg=; b=T6fy4UlNstiHV+DdA23ZFjdljf
 5NcWETKQOhL4ZLS/n0/IhtCDRcd1vOv4ap3wcUqbvYnN92SJkTJhQtNxdpgw4kAxSfHoPi/8rihFC
 apQWyVnFqIGR13H5Q8bUvx8v3Xaz4+OYAnDoM0w1Gql8Retcg7prWzdVpUNO0tl83LCA=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41bY-006ft6-BW for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461788; x=1716997788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=asDmkxFBDABNDNnwDePSoyQARa0UoC2pBVbkyHt1eyc=;
 b=jmqVQKKyWWvCgCad93ammDIuwJe6afCMvi0Y1PcxvsS/hSsEe4xwy5qR
 KEn2dpmUhaVSk90bFtLzITzbOvw9x8HxXtk7dEYx/Ck8pCkwhGJQ+lEF2
 CGB+EZ7F1Z4w+BpuQ+zGWnidsvnU1clfrBQ1TdgEes9DJoU4fZYD38z38
 nyFJ9ogsyPl0elPF6T79yTqA5EOVdipRKuLZzn42vCVWrMQtLiQjp+98F
 uo29FpaRyYDvg2iWj7eWJrzjIz1bVlhgM/T2VFWQBBvxfE37MN5jFlRXd
 +WiqlF64aCqbauCO+egk9xuMEAuNeFYK6AxLtLSibswVnWrtNg6iSAy/Q Q==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="231905683"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:49:41 +0800
IronPort-SDR: vlewpDczPIFQW+Fl20upz4f7M8T59W/Y/MGWWkzdrcZfl0YvBvi0kxiQs8dvPwb3wq4Ne6ICl/
 jSk+/e7aLuonB4c8yELtE6uyLQ1nnolo8xMCbT7zJs4ql1JmFNkmSWc7WtmV52ql1/Wja3zMWY
 e2boX5QGwH2N0bDQTzn+sNajlI7VZNlwtjL67BOPWB1Orx9ksCrjj9cnegftLqmtTILq7osCeH
 O+HUk6BnqwyIGkBaGbSoIsNuvPQjlA22X9Kwq6u22JnbR27pCqOggxpNZQgTaknNhzpD3PseoS
 lwY=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:04:35 -0700
IronPort-SDR: flqRBN6t8oeSRa1BabMxnUCvrp7PztzsM6fP6YmtGqWahobry6jFcPjHqu76BmTmRg0k7xB+eW
 Xd41xDIbR1903c6oA+KNiyFakHUZmxnJUerK8kgF9kwCVwoChx0oBjxovMtZJ/BUIUTKUH9A2r
 71Gjv2BTIfgq1jrGmK0RWrNe0WL9Ca0Hz/IorQC319U3yD+iig7YZY1mUOiG90XjQrt9L7sEd2
 guJGoE6VxoZaYn17klSHxaUFROzgECTIVBStNd3SnsVgan18w3VkwfB17pJewsQNiwzdzvk0B0
 ZGE=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:49:38 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:07 -0700
Message-Id: <f67cc9c310bed1e3c3302ea1c206da7d5ebc14cb.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The buffer_head submission code uses bio_add_page() to add
 a page to a newly created bio. bio_add_page() can fail, but the return value
 is never checked. Use __bio_add_page() as adding a single page to a newly
 created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q41bY-006ft6-BW
Subject: [Jfs-discussion] [PATCH v6 04/20] fs: buffer: use __bio_add_page to
 add single page to bio
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

The buffer_head submission code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/buffer.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index a7fc561758b1..63da30ce946a 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2760,8 +2760,7 @@ static void submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
 
 	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
 
-	bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
-	BUG_ON(bio->bi_iter.bi_size != bh->b_size);
+	__bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
 
 	bio->bi_end_io = end_bio_bh_io_sync;
 	bio->bi_private = bh;
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
