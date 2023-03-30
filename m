Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B97236D0256
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0w-0004Yy-Lx;
	Thu, 30 Mar 2023 11:00:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0v-0004Yb-1U for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WXkJDJqTCv0Db2aR823cGfOZaDqrHbaHORfxS5dBSZw=; b=Ub6Nxkk6i9FhrTliEEpLjjI2Uy
 4VTks0BeY9JnsQjja8e12I4Zsde7idFahPMqddkXveEhvpcTV68smlnQtJHUlPs9euiM8BYMXSy0f
 VQ9UeWKwhg4dKT6B0AtW5TI0A+pVJ4s+JFSgmkimGoVDhJgp5cs624e+8cQI0WLfOpF0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WXkJDJqTCv0Db2aR823cGfOZaDqrHbaHORfxS5dBSZw=; b=XmmGeyhi6Xd1W+N6fYhA+9yUE2
 8KtaLK8A1uX0A/JPpzFSdL65eti26PGSGsToZkII/7CeVxNjSFhgLYEiEp5QO2tbFGXnlBypt6BRo
 cz1GzR9R+tf3+2YcLONKPV5yeSEL5hfqYP3ij7GZHQPfIujrODm+xwmr7tOpNg/yASwU=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0t-0007Uu-E4 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680174015; x=1711710015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RHMrIgXLZtjmRd+5c9MBnc3q/BEGhtEER4XpeifNGfw=;
 b=IfoOVodZj57vND3C6CIXuWibAYfMy7VIbniJGKJF6X72l9Y07iWi7m5J
 XLk48fWE1PAA9HQTx2mGN65S8eMTAHQ9IrOinnM6BLgsyZyb5AoJJRhJF
 oMYs5JIfS/XMB4lgQqbFEw3KUp4NWpXYzRopjQHigxdwzJQeu1fVSZ1b2
 GyCoWEt0q2Odu+y0cGyJfVBOQ6cVIgtqQO/NT8MmHM/Br3C1cTnY/wA12
 KO4/w2B/Co07W256naFHdJOWI4PipesXIzrcHpxmsZ/WTM8OfjmFxrc4h
 wNflJqb+tPQPEpTa/5jlFKQPq9FrNqzFF7r/I9R5+45Teil/7pYquwomC Q==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948159"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:44 +0800
IronPort-SDR: k8UKpDA4g9DRVtsyDOGTNdiEw5i1IBaKTK0eoNY8rz7Y5ZDC6hdlmkOp1+s+9Ft0AGQc/lBjAZ
 7egeUbkkwa9Zd7zruxCC1Usnq74gt4SedWdvSrycPN/4M22jr0XbiZ6JoxvkCXUUcx1gxDzz/F
 I82m7YLLVVXIiW5jc7FId3TDnKnBA1oEYuDmjs03lSPyFFuodSbHdUhqz5esivUp+2toRcCnoN
 7ykOJLpMRF+yWUbtA8RFu8pIkUo5hhPW4zGguCbeVfBhqG5wfgsc5m7ke3U+/+A+pT32A7iYg1
 e8k=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:52 -0700
IronPort-SDR: skMtz4+keJr/cRyrN9pwkgS0ewLiSNPb2M9dHYXrhuJ4g5fW5pyblL2I46HGHIXXc8RzTaSiVQ
 vh/QodlyDksqLq7Dbn7EODH7rPaYpLyeTet6XndzDCHJq/UDe4ACMF5fuQcuF8b6PngN7P5WFm
 6bbx8cI+1QGvEI3G+Itr17jIH6UA32wollKGVJ8Lv5OT101pzER2Ix5fj4DLVdWgljSJSJ+fAE
 pfT9r3OX9yQGbEd5JejAszDBVE5RDoC09pcH9t7rXTz2l8qBWAe6vvY/LavdGZzoCYiQnqJYAA
 1/k=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:42 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:55 -0700
Message-Id: <da8fd892c938a58a3b201706590bb67e82b56929.1680172791.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680172791.git.johannes.thumshirn@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The zram writeback code uses bio_add_page() to add a page
 to a newly created bio. bio_add_page() can fail, but the return value is never
 checked. Use __bio_add_page() as adding a single page to a newly created
 bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phq0t-0007Uu-E4
Subject: [Jfs-discussion] [PATCH v2 13/19] zram: use __bio_add_page for
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
 Bob Peterson <rpeterso@redhat.com>, Hannes Reinecke <hare@suse.de>,
 David Sterba <dsterba@suse.com>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The zram writeback code uses bio_add_page() to add a page to a newly
created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/block/zram/zram_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/zram/zram_drv.c b/drivers/block/zram/zram_drv.c
index aa490da3cef2..9179bd0f248c 100644
--- a/drivers/block/zram/zram_drv.c
+++ b/drivers/block/zram/zram_drv.c
@@ -760,7 +760,7 @@ static ssize_t writeback_store(struct device *dev,
 			 REQ_OP_WRITE | REQ_SYNC);
 		bio.bi_iter.bi_sector = blk_idx * (PAGE_SIZE >> 9);
 
-		bio_add_page(&bio, bvec.bv_page, bvec.bv_len,
+		__bio_add_page(&bio, bvec.bv_page, bvec.bv_len,
 				bvec.bv_offset);
 		/*
 		 * XXX: A single page IO would be inefficient for write
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
