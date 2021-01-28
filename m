Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB24307602
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Or-0000QK-F4; Thu, 28 Jan 2021 12:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Ue-0007F3-I1
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XUKTJ3GGkoWy7N23wnL37Tkv6U3ecyyXxWz5xGxFz4M=; b=PRhrNSdU0Y61TTpGm5bYDCdxFI
 H9ClNSwKoNB7sT5EJx6t5ULEiebguuo+oaU2IVurm8/SEGhbKafYcM4rbrlhiUr7MKv0VaoTwWO02
 UI8rio2C0lOQiNeQa4Nhz/h33+Cqjvc6ADMFH9MU+6DimLy3cA46/eraaevWICUQiX2A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XUKTJ3GGkoWy7N23wnL37Tkv6U3ecyyXxWz5xGxFz4M=; b=GTBydYdDbnbjLmd/VYYsKkqih3
 p561B4zr4U41lTVlYESvtLknYsimTYOq7tDDcQgwyluy3Zq1TDR5IqsB74kp8wmWIl8MpCkxmabF9
 +hWsR8uTxJAdXl4DPpHsDishM8rVyBBbI4j0IJiNBtVp4ULbfPPSiBg4O4x7hDQ+hSog=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51US-00DWEA-UA
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611817996; x=1643353996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Co0rYGelfI2tueL8o6ihJdxL5NS5pM4BZ/hI8135Y8w=;
 b=eKb57rFceu/tmH0e316lyCmDMzcQ87hVZLY4EB4E31sN8JLuKXpVJ/EI
 Iw8lcCHZjc7zQDqrJDHpaw25LExZqkPqSvYWACNq2Ef8RHY13exwbjZq9
 d+R3RIPiF9XXsBPmKtHIEPnpP4nB0AU41ml3EWKjDYFgHpVuaz+yQdiZG
 OzShdFd5eyzS554FoZm4NG2T+7egENiYH6+JODrCErQS8irlz+OSKWJMt
 wM9hms+8bVnn7pUMMFZcAwHh7i2szxDo+u1hlor12AbhrI4aoV/TaK1VL
 yU1NdGIsBXsALJFQPXs2OpC5uHADCtEvLACcn1PTo+OYhgsZF+PIjWaaw A==;
IronPort-SDR: 9Q8OhnhhwYzobN/SanBG34RNG9MyCaKvYao+w3EmMn5NLB34AhgMgHoe215FSkOksgr2+51H+O
 4mROFqClBYZgWqhwAd/uGKpY0m1KXmHHwQsx7zf5iD47hrkFstqzNtlrue9naG1IIHUjOiYapf
 +hBRQXgLq51zf2VMrJT9NnLPybtyWoiUQ9M9PG08mEi6+f5SZlFj1Q73QGCmdbGJ8HKrsL8gic
 +k1/W1wPtr4Zt8SFhMZBo+0+kZE4G02Zj4e6pMOx5vz9q/A05Lmz+PioNAGRrSYQXc25o2qqo/
 mAo=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="162963216"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:13:11 +0800
IronPort-SDR: br7xVJRwrwASvfce1FQ2qQrItJFUZZf5YDjZLUKS68Bue+pKhA8ONtCW+5bI0U6Cc9LyWMv4gY
 MjvzX9AWBvJHtOBjUQM+jSnKQGF24daIQzORVCVWbs28a/VzbQ7BlN7DfYZ0211jcuDzG17jRt
 RclsDgmYFDFPS5KUNRbEr1w547uW3C0kLU9aOoK3nBzsIWdBHjcq6qAdjWyKcSjj8/4WYrcefZ
 tDDrUlTfzYL5CZFzV3ZOldDWxnvS5lTcAjnknDuR0izxrTbQhWaAUWUnXqP7cL+uzk2jiea4ky
 1RMvr7NpLSd8CLN4wb1TlL2W
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:57:31 -0800
IronPort-SDR: B3g2yURiLlkRDJQjiSw5Axb2Dh2vXpaNrKE/QAQl3YC0d9KYF6ZY/2WEGrs8Ad4s6CTMSYijlI
 As81DRh7fxTUcG6XscFZ0dEUGMxghLXCUSNbFTul1lhg8N84M173b0zoMSc59+C6RPGCZyVbXT
 e5q9NGchuukS+6n/XolnPl9CgZkf3lpSTdPe2xwj7IsZkLY+Q3H2m4972b6vr4aHe8P7F7VrjW
 YTjKY9EpCmYYdyolrCzI7bP6MpRPHgjkbRdfoyYEpwC7inxXY41c/i8ke9uNT4EC8+Q8lA/Kgh
 6rI=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:13:11 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:09 -0800
Message-Id: <20210128071133.60335-11-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51US-00DWEA-UA
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:43 +0000
Subject: [Jfs-discussion] [RFC PATCH 10/34] dm-zoned: use bio_new in
 dmz_rdwr_block
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
Cc: shaggy@kernel.org, sergey.senozhatsky.work@gmail.com, snitzer@redhat.com,
 tiwai@suse.de, djwong@kernel.org, gustavoars@kernel.org,
 joseph.qi@linux.alibaba.com, pavel@ucw.cz, alex.shi@linux.alibaba.com,
 hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com, sagi@grimberg.me,
 mark@fasheh.com, osandov@fb.com, ebiggers@kernel.org, ngupta@vflare.org,
 len.brown@intel.com, chaitanya.kulkarni@wdc.com, konrad.wilk@oracle.com,
 hare@suse.de, ming.lei@redhat.com, viro@zeniv.linux.org.uk,
 jefflexu@linux.alibaba.com, jaegeuk@kernel.org, konishi.ryusuke@gmail.com,
 bvanassche@acm.org, axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 akpm@linux-foundation.org, martin.petersen@oracle.com, rjw@rjwysocki.net,
 philipp.reisner@linbit.com, minchan@kernel.org, tj@kernel.org,
 lars.ellenberg@linbit.com, jth@kernel.org, asml.silence@gmail.com,
 jlbec@evilplan.org, roger.pau@citrix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/md/dm-zoned-metadata.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/md/dm-zoned-metadata.c b/drivers/md/dm-zoned-metadata.c
index fa0ee732c6e9..5b5ed5fce2ed 100644
--- a/drivers/md/dm-zoned-metadata.c
+++ b/drivers/md/dm-zoned-metadata.c
@@ -755,13 +755,11 @@ static int dmz_rdwr_block(struct dmz_dev *dev, int op,
 	if (dmz_bdev_is_dying(dev))
 		return -EIO;
 
-	bio = bio_alloc(GFP_NOIO, 1);
+	bio = bio_new(dev->bdev, dmz_blk2sect(block), op,
+		      REQ_SYNC | REQ_META | REQ_PRIO, 1, GFP_NOIO);
 	if (!bio)
 		return -ENOMEM;
 
-	bio->bi_iter.bi_sector = dmz_blk2sect(block);
-	bio_set_dev(bio, dev->bdev);
-	bio_set_op_attrs(bio, op, REQ_SYNC | REQ_META | REQ_PRIO);
 	bio_add_page(bio, page, DMZ_BLOCK_SIZE, 0);
 	ret = submit_bio_wait(bio);
 	bio_put(bio);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
