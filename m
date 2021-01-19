Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4392FB6AB
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000Ny-DL; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jUl-0001ke-Db
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NHrQ87hOOX6MIlHJOADMokrcrdc35iw1mE0R9J1BM9o=; b=l33d9jR0Wzy42l7WhkdGVKnkTq
 kDr2o3Qq+DQuLPcfdmqHwct/5NwTT9tgGok1hqkPe4CSi/kNpWG9XQ/EStuC1jmRi+Zi8+tAYxHE0
 HqUlC/MhjpdQNLJvfdsSDfE4mBXEFK1YXJYkY/JMPFKPy0KKWJGAjIO7P2wU8talgfVU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NHrQ87hOOX6MIlHJOADMokrcrdc35iw1mE0R9J1BM9o=; b=iEAt7BK2LfGc1n84BIj9a5VRFA
 UqRC3gFgZZi725l/n3YNLhlJC9yP3isZ02pXheXfluFwDcMaxP5Gg7yVgkvbiL2eoBq1TqoujGM3A
 FO+XYLDBDghEEGKycE9KA8+jYAlPx3iUeF5VtJ1cYBzZGhvEW3CnslUGGCbEdbMpa31Q=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jUc-00DzR4-6d
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033830; x=1642569830;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SmRmSEecsPl0dNDxe5lwcfSlZzCbmw+NJIUAkJff7lg=;
 b=qbPbiLgNMuSh6u4lyRtl1bBVmKRv4Ze75I6iS/MnsKLzrcZ3ZG4LOS+k
 ZIGLLcJRFrmHi/54LzaUzSzkS8rCg5R1dLJ3EPmu3FYGizjihlevcuOI6
 keFyw+NZ17fXt9tiVmV78cft0iY8mFlDZekW17UkCYHg0XyjdcegFpMCK
 gVU/7WqQ6ESC1u3C3Jcnpx2lUOKT82ynvXKmL/lqlJJYHGj2CJwbwCeKb
 T8g4LRZGpZ/pEsfoTpZTPyS8zd02w/Kbp8MygmwnNtvTmiWdrJZF2sFRt
 U8SaLYWUn8I9NHaH72uLBQNiKpSwPQREY6KjtPy39S+hl/Hb+2b3yPCbg Q==;
IronPort-SDR: g4oQDOf02GzBxEPdLQcRQqhkdng45vqGkWYx7mmdFSc+lRXT/+s8gKmOzVkE2D4RDGRAGB1Iuj
 jZ/avQwbLByFJ5XAbu6rFYA2zFXln60PNMJXm2FFUR6eog3RzNgAzUOS/4fQl05dvGRmHcKH02
 ziRxd9YuCSd2Xvm8tbZ5Rssb0pr0SB64itVsejuF1K8NAKzFqNc9QbdO3jHyLltQBGWZvnoC08
 VF5SxgP6tvL2K2ypAXZ/Z3dCmpAZtJ6Ss7fuYksC5BKmAnkAo+rxf0fye1sqMKB1QSrNsnCwjk
 NWg=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="158940560"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:08:15 +0800
IronPort-SDR: 4nOZWXqUtVZspTPZ/sIEudBKc9JTOTWBYiCgbh8rG5f8eUq6t2OF23TH8vgwAa6xkiaX6UNO9l
 HhxtoVDaZcR+RDNQ2pQIRaXUcByrFL3rCaXpRDq0XtUxTgPhByHLdKasbv6zZSuPFpMglYdv7B
 tTPm6VdPDPj0b20wiJuqg0ERwbX8aLdIa4U0z24Daz5qHWh/gLM2/5PX3cefOnDqQKCMB/uP9p
 s9TxSF7jEmKyD9W+eO58GLhhDFuuTZtW5Bwgydi0C0MaQuPjAkzBQTQZH4C9jBFkjgvzEA0xZk
 DTHf2T9UZL5VmdaYMeQBi3ff
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:52:52 -0800
IronPort-SDR: p1tcnYwAx/l/NVCOSE++cI0sO4XNQ+lbfc67fxaPGZ0Kwcqxhdz9+u3CPNrCwOw83oDaMA1Qjm
 ESU3xmsUtmMt60eRcgdVRVFxzLHWW7CqjKNcfNh1+RIHGbsJ3Ai97YW6MaxhVDB0yLEg9IysxE
 83VZ2vSeY/l/vgDGSUb38hhYRsZT54dyq7c3WndcswTCZVlwVMvWGE4bWezbXz6r57OZtdR1bX
 3lpkUR2AIs9h1PW1353M+8ODhhBWH9ueZ25tUnouwQQq8n8IP+3JRSYVgmwudbuVJ26I/RNNul
 ogs=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:08:14 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:08 -0800
Message-Id: <20210119050631.57073-15-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jUc-00DzR4-6d
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 14/37] drdb: use bio_init_fields in
 bitmap
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, snitzer@redhat.com,
 gustavo@embeddedor.com, clm@fb.com, dm-devel@redhat.com,
 adilger.kernel@dilger.ca, hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com,
 sagi@grimberg.me, darrick.wong@oracle.com, osandov@fb.com,
 kent.overstreet@gmail.com, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 josef@toxicpanda.com, efremov@linux.com, colyli@suse.de, tj@kernel.org,
 viro@zeniv.linux.org.uk, dsterba@suse.com, bvanassche@acm.org,
 agruenba@redhat.com, axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 martin.petersen@oracle.com, song@kernel.org, philipp.reisner@linbit.com,
 jefflexu@linux.alibaba.com, rpeterso@redhat.com, lars.ellenberg@linbit.com,
 jth@kernel.org, asml.silence@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/block/drbd/drbd_bitmap.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/block/drbd/drbd_bitmap.c b/drivers/block/drbd/drbd_bitmap.c
index df53dca5d02c..4fd9746af469 100644
--- a/drivers/block/drbd/drbd_bitmap.c
+++ b/drivers/block/drbd/drbd_bitmap.c
@@ -1006,13 +1006,10 @@ static void bm_page_io_async(struct drbd_bm_aio_ctx *ctx, int page_nr) __must_ho
 		bm_store_page_idx(page, page_nr);
 	} else
 		page = b->bm_pages[page_nr];
-	bio_set_dev(bio, device->ldev->md_bdev);
-	bio->bi_iter.bi_sector = on_disk_sector;
+	bio_init_fields(bio, device->ldev->md_bdev, on_disk_sector, ctx, drbd_bm_endio, 0, 0);
 	/* bio_add_page of a single page to an empty bio will always succeed,
 	 * according to api.  Do we want to assert that? */
 	bio_add_page(bio, page, len, 0);
-	bio->bi_private = ctx;
-	bio->bi_end_io = drbd_bm_endio;
 	bio_set_op_attrs(bio, op, 0);
 
 	if (drbd_insert_fault(device, (op == REQ_OP_WRITE) ? DRBD_FAULT_MD_WR : DRBD_FAULT_MD_RD)) {
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
