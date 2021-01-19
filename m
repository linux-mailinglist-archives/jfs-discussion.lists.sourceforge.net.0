Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 688052FB695
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:06:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000Qa-Ou; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jWS-0001oo-Gq
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KMWGeREmz1ho9hBOTpq0vaNPo9h+c28tpIf90y32na0=; b=LlTI/NS2dY3J6N3LgsiAMEK30+
 SmTvud9UYbSjGYYzulmTALRN75uanj+sZk4lweEL3F68ag5DTy4/UOWhgiB8Mde9tIwIPO9iQ/6RD
 snsDOEDgdEpQKOzD+3OdBpf2Pc0khUCXFv04b38ri87DQMDyz2nCTdhq9p/YQ/+6yZp4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KMWGeREmz1ho9hBOTpq0vaNPo9h+c28tpIf90y32na0=; b=I1LnBCMdHIvlfl2ybHKxD0LIxR
 PKoB7wQ74Dh4FB1Do/7QkZAbT+OwI2dcyfM/UFZmVh9+IkQ9K6v7Ttt8DXXlpkuWCPaNmboecHglm
 oX+0KXfgihMKvVyUsAchhTYWzEX73aZguIiaawl2uDReOOXWAkxzZzCu3nEEARhjps/0=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jWJ-006vvn-CS
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033935; x=1642569935;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CEdgjJXFGgEM2vVXbkhgIZw1T1rq8VUMRvKmaMfgKhs=;
 b=O00Yf0A+7RzPK3lDvPQYDxT4xDfahxstrUbpYujYgHq03YbIhJXdw6K8
 OuFCtub0QA66PrASTbBhWTmR3Nv+cBJq9276gFB+RmG80P/TIGtJrOTxl
 kUEnreGzYWY3Hgy8GI9p5vmsGdl57JkXRVf++FgkbxaRKs3dAMP9FbVoD
 XlpN7sNCd576ALhxfNQnJlJrJugp/olGjQ69uhF1k6hyGHc9K4X2UcGnz
 eCZfZCd3RxQMmLqCU9bqxhr/4Uxd2MSA/hujtT9MCT7JsHHhUiMUrdfcS
 RgKhCMO6KxfqAmRlC/eB5JQFZRhRivCqShUqoT4NYiBb4Ij2NKQ3aC5Qr Q==;
IronPort-SDR: OHj8j3vpbLOmfaWbb8QBvYdmVKkj14hbVbJrDBA2HhIHKs6UOfpF3D6xGRW06xM4zdCI7bPfTI
 0pjSdlLU+GgsGrSc8ds8g6L3dgQr1qcNTBE2GxP/2QWFS85URnqBvgaGtd0JuD9roWW3r4uqya
 Ly/poK1Gl1M2UF5yViHpkgXUjlG09cIM7aqG4L9vTe1JTb4Oludrz5urCJIoj4QnY8alT+MuQG
 DQzg/HYuwuXaIRBN7CKOo1NCVH8jiJqCccl4L5u9hOqlfXj9qX9YV7FHHfkzeSWKqRZvWtJPYz
 wEI=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157764038"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:09:57 +0800
IronPort-SDR: 7qVBUlDZENQMySOEvKEmePmcEjFwqTQqTrfhuNyyJGbgxqEO8WWkkUhg9cQNXc7WFtsx6nXJvn
 qhBi9AHpWw48sp68kLNm/Lz5Yx7qg1k7SiO8Ka0nvwcP5d14g5AmU4khDQNG/TYDoYy8W4lMGz
 lDQbqsAWafsm9g2u/eMKB+wHvb7ght67ONOObqwrQ8I7pIvhkG6gb+/vNbmTVSqYvydphqfrrJ
 l0Upl55TW/2fEknbZTI0w6CZzEHbdjYeW0MFzsS3sMxiEarrpii20oAA9YXijpnLAK6O8mkqL/
 /DFVqcuqcWNxkE1syP/QL4JB
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:54:34 -0800
IronPort-SDR: a+gnNfhBGlfndCUXu2PRYuff1boYNdHfSgVMM4QGOo0gBqok0UAFSw+CakQqID9DiHlkJTF/tk
 tfTEZKWrBtDq0dUvqYcf+WsTdC0Igy/6eIFaVKPX3skORR8vkvebU+R6xmJfb/vQkDxguYmQjy
 ooWIxSrSXOWgrTQsQSnSH8xsuNu9hFytU9enoqFYqBIe5DbNODHACUTbxgGCYD+JsMeKIy4eA6
 k/5Kfh84EPk4WfgFSkdXjOf+OkCHZJ/80U/a+Ke2lW0oT2ODaSYtQOG1ltNBLA3AQquOKSkivD
 2TA=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:09:57 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:22 -0800
Message-Id: <20210119050631.57073-29-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jWJ-006vvn-CS
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 28/37] target: use bio_init_fields in
 iblock
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
 drivers/target/target_core_iblock.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/target/target_core_iblock.c b/drivers/target/target_core_iblock.c
index 8ed93fd205c7..ec65a9494bee 100644
--- a/drivers/target/target_core_iblock.c
+++ b/drivers/target/target_core_iblock.c
@@ -324,10 +324,7 @@ iblock_get_bio(struct se_cmd *cmd, sector_t lba, u32 sg_num, int op,
 		return NULL;
 	}
 
-	bio_set_dev(bio, ib_dev->ibd_bd);
-	bio->bi_private = cmd;
-	bio->bi_end_io = &iblock_bio_done;
-	bio->bi_iter.bi_sector = lba;
+	bio_init_fields(bio, ib_dev->ibd_bd, lba, cmd, &iblock_bio_done, 0, 0);
 	bio_set_op_attrs(bio, op, op_flags);
 
 	return bio;
@@ -380,11 +377,9 @@ iblock_execute_sync_cache(struct se_cmd *cmd)
 		target_complete_cmd(cmd, SAM_STAT_GOOD);
 
 	bio = bio_alloc(GFP_KERNEL, 0);
-	bio->bi_end_io = iblock_end_io_flush;
-	bio_set_dev(bio, ib_dev->ibd_bd);
+	bio_init_fields(bio, ib_dev->ibd_bd, 0, immed ? NULL : cmd,
+			iblock_end_io_flush, 0, 0);
 	bio->bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;
-	if (!immed)
-		bio->bi_private = cmd;
 	submit_bio(bio);
 	return 0;
 }
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
