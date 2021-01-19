Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5602FB6B0
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000QA-K9; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jWJ-0007Jd-DH
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GlpiY9fEyeOWdGpqPz7nBlp3EQIwl79i7t31QVkbq2A=; b=N1W9Cg92P8qYGW3fZiwTDCjyS0
 if1iK4rSWtJoUNpm5nw+uMad2clsGoISw8xQ5IYHj7JtbzN10CSrfvJ9j7/mf6gUEzw2F3S8FehaE
 S3Mv1D6Hdh83wPV4qm+XXBd/s0mUEI4Gjy7OSlcNR5jmtbCFZXVPMgU860BJM9okURwg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GlpiY9fEyeOWdGpqPz7nBlp3EQIwl79i7t31QVkbq2A=; b=Nq2HWeazJPCBqzHavLtidO/oRa
 2FHdfnswOcSapxwoSygEY/ZeTEtsvhxC7FpiLAHYCsCceThbCnlkb39R3m0iL34wM0MgRpcTMkyh/
 eaYW1Lhc1OaWtp4MMQqGyxVzdOU++I9J5GH4lsZ0Wd3tqGaYlxLnORtve/V9hVvUQG3M=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jWD-006vvn-JO
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033929; x=1642569929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fhRK4lG765wlnY3VYWw46zVxpefVZCaV0gGjGdWEZQs=;
 b=P6PxI00tkgohbybPKZpvvwSstbqYFLOr2arx1NlRPJqW5Nzzp17dzKb5
 xPFmneRGaiZ28htJe1c+qmiJ8n+TvS5aDKIpF9xFJfuemIxP2Yq5X204r
 grRXOINVj0L6gpukLGkp6ZZ4jyKd0HJoddMyo4yPcpOPeapycyRRqDwAg
 jH/L3W8Q2jzE/cMm//QNtvgLJldSDF+IbjYinh85tE+EwjM3eX2aA6jIv
 d+UpmR4evw56OICoDF9i7/eEaOTJYO4zJC1KJHtlIEzHOoiI4GP+cwOnu
 cf/S+mvBE63z3eNy5d4CNhITTV3XNbaaNBjVoZKeRrLdfE/3a9EpBbjbx g==;
IronPort-SDR: wx16ZbttcHQ9IwZ/senW43LeYLYjB0F/QCiIDhbcHCmE6CLLSjrM+THSq24T3Kp50pt3FBhCjR
 8NNg6JZE4V0v2WylyVPyEu4zM9DTT+wNVQB75/et62tm3BRzIQrhB9c/juadQp7yTeAZthvQ8W
 YT/OF3eBVAG5GWZeL6ejuckr0WLPOAIdMv0c4kGTBjZ9ic8iFL4P/fs+8DBtKOuMTEGKwvBVjZ
 /9B4ruGeklKnkjhEB36X3v2H6pKbIO6/ldaC6twWtRYQ+/6pCwzJ9Opero1DwhlXTzTj4cMqsU
 kZw=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157764034"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:09:49 +0800
IronPort-SDR: yukGJ9Y53M9sXJ6fqVT51xpuZT5Tf/lkql4ohp5ousmaSDxFnStrGVAj1igkFZsIwiZKzfnatL
 z7Wj4fGpei2IHyYnPx8KeVFkDYDiAzlDLySkXjqRcI0GIF8VevjNxc8kUEELEgq7AH0BR8mgvh
 FOomrmZmSMAIGax0ai7+FUGhy08OFT8B2wI8hOOA2TcwGD/oITWqcTp/J1JL5rCO9nyiT7cDKR
 UZ58BrmhpAq11dY1smT7jjDaYnuNvovw/PKybmgvHKgJzgJkTSZAXd6GiRUEFsjEIYdkl1y5gx
 ML5A1vsR+8OZPkWOsR9tsk/7
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:54:27 -0800
IronPort-SDR: JLU8nMTD+NZGhpcLc6bx6NezWoOxG1kLxe+XONRlNiEvcpn5x3JxGCWrI6N+TlSlWzGV1Q0IZH
 sVnYt6tKGijbl+nT2mxOo5/rgMe/5l4KRxVV0eiBp02GobWze2qiJQgHs9JNJvbu9kV03QI256
 THC/6jLcI9qR4UKAPS2gqtOtR4DwAg8fBaFWS2YCr+JhQOYLTSPNhMAbcyMh5IWuS0/MKfxvtN
 xPuF9hOwrup1UYc8D7gXKUTo1HoUHkPFFr+UvCvYhNW2SXbqPm5T4xFixZZesNSvVigWeniTT3
 7fA=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:09:50 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:21 -0800
Message-Id: <20210119050631.57073-28-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jWD-006vvn-JO
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 27/37] nvmet: use bio_init_fields in
 bdev-ns
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
 drivers/nvme/target/io-cmd-bdev.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 125dde3f410e..302ec6bc2a55 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -323,9 +323,7 @@ static void nvmet_bdev_execute_flush(struct nvmet_req *req)
 		return;
 
 	bio_init(bio, req->inline_bvec, ARRAY_SIZE(req->inline_bvec));
-	bio_set_dev(bio, req->ns->bdev);
-	bio->bi_private = req;
-	bio->bi_end_io = nvmet_bio_done;
+	bio_init_fields(bio, req->ns->bdev, 0, req, nvmet_bio_done, 0, 0);
 	bio->bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;
 
 	submit_bio(bio);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
