Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C16E2FB6B8
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000OR-Hk; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jUp-0007GG-Uw
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mv7BifE5qMeQLGeREFcXVmAnx3nrsnjOd6li4J+EdKM=; b=FgYVLtgR22+7XK8wcueUDs3j0I
 EBq/WIujwn/D+eExG+ALtfFJFbH6tpkyiI9t518qqkt/STqUrPgodIn05KAKjLeXvYsLbgLGmc6oa
 vYqGnsbdDa9wgMYglU3lgEf+k3q3hDSnYCvulg69LJJFWvwXMIp06lfXqBjCH0I/3hMs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mv7BifE5qMeQLGeREFcXVmAnx3nrsnjOd6li4J+EdKM=; b=eONFa5L75xlxAAfc2SKFOtMSRs
 IqlQayUQEOK17jp/EBTlL3p7er30H8IjUFRbos9kBsSx6WUvmQqfGxQ5EhBRyNXROqkCriDe9UEB0
 R97/SAa+NjwAmQc2qqB9NIY3i32v779MomkUI2Qc9LdSfI4k4pn/GADDCPFbWWoycUcg=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jUj-00DzXK-5V
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033837; x=1642569837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VllxQdSuETkut8jiQhHuy5FqGdkslwtr76oc8FFhzYc=;
 b=Q2x9mgWu/RB1lamE7iVRUhoGdOOz/wx7lHO6eCIrrm+H9pfms5F3hHp5
 Oy2vsLd4CD4DPTY8jdU6bOZPVBjrEc/RvosJhFyQl5UHM1X+EyHFsdN2g
 GBhGpy5vWvhwfyxcouTxucHYKwAnLv0HHVeoBBmvJCwquD6dEYnf+GgS1
 4wJh+mdpc+XUURT5XhGNJTyMAo1pC3zjJuQ+oEz+wLz7uwccTwtw4KDMh
 DmWFnkVNoXKLo6lr5aQp+SKB3LnUeBHw7axZfOZvEqJ9AunxRXcBoSj/S
 CddN91MC0V5Lguc3AO9TxhD/ZQwPe8NDJWb8p8LDZlSHW3xNM3JKmLR7J g==;
IronPort-SDR: MElj7E3CSizE1Hm1ZfbUT2gICkL4CajOnLj4Nhjfzmu1v10X+YmY69I7KypOpRaI9Vn4OMwZW+
 TyMJ52zZ/Xgd2EA6LI1JLI5b/ui9hi6uj8/oPxuSqcdMszmJlmYCh2j0qGhAb84nQljh5UWtKE
 Z7pQKhuabTb23wdMrr6w7wnHZ+nbhQkw9Lld5Ix2JHL2dcgtdw1V/E16DyiWmDbGygXaI8MZTI
 ec+PPnNTdCeqFD1fvNpbr8WDBWJejJ9CbJj7MLedlVJ2dWoBTs/sz7yHXW8QIrn2cF4UBsU4g7
 wvM=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268081030"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:08:22 +0800
IronPort-SDR: /oS+/Pl9zSGvnR7Jlp9sFNGrzcbowKMoyRX7CSYxytj335ZYhGFw8rB458+60dFFp4wh3p2a7K
 Y9MQZp4IogwnpyzberEDxy5AppZ2qjhYVUQ7IgO+L4UQodpzGrsZY2rdhgyKA47aa0PsImjOq9
 CWNfuXmr1a/aPQaOeaS6uFLnNzvPonTR+a1NH17Lqo53nT5G4458J3RlUd1mkwVoKirTCVdWIt
 iU9PNvjXL2Mchq3le6gd/DH7PotjG0RQunEC02KQ+GzlMwgzOxd/PUaEpdCMqClRKiHNwQ0Vif
 GnMnq+j1h/wRgVQ5FslLDAsI
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:50:57 -0800
IronPort-SDR: AukWeQ10GheUQlYR0D5EEj/feVa20cSuWNwottGMwE7opN0/I3RYtMUjQ5GxQSyfBE6/sdBk0k
 z4fxfv6aG+9JDmdOEZ65AwSHkGYtwddoOVkRqi4DvyiiLB8vtd/fOm44eFdRlx5N0V45fVA/G2
 Mrkem+bFgQ/7hMk41j/WbKXfrCn46pyu5FjaWYjPtBRdJOMYXrfOYhaNNWZEy5N5aQ3tw7GglR
 lppVbOb4m+51NXG4xiicKFxmfiLfz3Hlw8sn3kAgisMPSXvCeaKzeiNu728KKk2Lm4HPl2GKbp
 MUo=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:08:22 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:09 -0800
Message-Id: <20210119050631.57073-16-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jUj-00DzXK-5V
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 15/37] drdb: use bio_init_fields in
 receiver
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
 drivers/block/drbd/drbd_receiver.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
index 09c86ef3f0fd..2715081a4603 100644
--- a/drivers/block/drbd/drbd_receiver.c
+++ b/drivers/block/drbd/drbd_receiver.c
@@ -1296,9 +1296,7 @@ static void submit_one_flush(struct drbd_device *device, struct issue_flush_cont
 
 	octx->device = device;
 	octx->ctx = ctx;
-	bio_set_dev(bio, device->ldev->backing_bdev);
-	bio->bi_private = octx;
-	bio->bi_end_io = one_flush_endio;
+	bio_init_fields(bio, device->ldev->backing_bdev, 0, octx, one_flush_endio, 0, 0);
 	bio->bi_opf = REQ_OP_FLUSH | REQ_PREFLUSH;
 
 	device->flush_jif = jiffies;
@@ -1693,12 +1691,9 @@ int drbd_submit_peer_request(struct drbd_device *device,
 		goto fail;
 	}
 	/* > peer_req->i.sector, unless this is the first bio */
-	bio->bi_iter.bi_sector = sector;
-	bio_set_dev(bio, device->ldev->backing_bdev);
+	bio_init_fields(bio, device->ldev->backing_bdev, sector, peer_req,
+			drbd_peer_request_endio, 0, 0);
 	bio_set_op_attrs(bio, op, op_flags);
-	bio->bi_private = peer_req;
-	bio->bi_end_io = drbd_peer_request_endio;
-
 	bio->bi_next = bios;
 	bios = bio;
 	++n_bios;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
