Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BD72FB699
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000Pb-9F; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jVj-0007IS-1p
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dlWQ39pxhkgto1cw8kpcg5xI0DHiO2P2iOJtnc9ltRc=; b=MNWK3wsuluihHjd1Diwfe4CViK
 dF6Gry+vSinYVjXcLTCRkaQE6dByJh/QRb3nBPZM5UD4Rek8mpj/8PlEcGCOwAD9C9U1SkyTp+6L5
 SZCNAankGI2kGi9QXhsQ3jOQamWkvxuutaB0OVvgLWxvt6tLfmdRDgwI7pryl3DrfTAs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dlWQ39pxhkgto1cw8kpcg5xI0DHiO2P2iOJtnc9ltRc=; b=Cxn6FZcaPvQ2r0LJGBq6MVYD/e
 LDxovi6JJorS6R5JhLGOMPEEmKezkSTZnwFyKtQytxEtWlP4Lcbf2qm/WGxea+3mH5MJFdaM13sNP
 txvFEcrpjPnV+tTn8mdjUHNfgSG4Zpqbc0+C1/DBQR5OFSXc5A5b+7kq44dtdMiSrXbE=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jVb-006vqz-7J
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033891; x=1642569891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sO8d5HxadQ7ae8msAnPJWRe2/j+HLSlO2d0uhqsgZy0=;
 b=feo7bEDtmq6bUhT3OqcGcjp/ez7WXsJFjAmrSqTUWkfFVJu1P3G7hwe5
 90c+HOioVA5qIwy7yemhXwOP782KuE5UVzeUqfLopP5L3lqYCUohR9tlN
 2azgz/vfjOBLaBAyqQ0X7Cg1rTtiXxdyHrU+XgHzmlzeX1rCQybqrqhbf
 /Mtcp8iAEQxjfBWX/JSIImyosNUiqXL9h7HFM++azM5AN2MQo5i1+c2kL
 /8dJMNVS25CXdpahEkkuEljELIOpaRXhk24+Drgl5NNzq4Lf+nNfAZvvx
 LA3PH56Wx8+mjjv4Sz5/DgpxKUHg34Nhf2f/XCyiq84bZZ1dJGL2AaeFS Q==;
IronPort-SDR: E+rFgFx/NEc+5G+E0w8aZOTo4wUO7/g5lPxwplM0WwyGOXtmwcXWoh4OrdvEw6SkQ0obTEx+L3
 wYyk3g6picgR92o7PboPKT7/JKlmWbOCphHXGvPHZgDSMV76XCqpgy5uveV2fOu5U53wmUNTyn
 pY/TLiEWd3VRJQD3kl+n3zDLWx53fvaDtE4uX0awbHzKxHnm9qNkjZ1HUVQ7yBEPSiD+W/JMXh
 RCdFNkQG1ykNReu1QLQAAPRlGgplQ9z8lYgYZKqg/EEcRM65ucu5w7HVv6LNJjzK7In+ZzuBPa
 pu8=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="158940681"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:09:23 +0800
IronPort-SDR: XjRRNR8z2WoSbp/3zxgy2+yW4Fmldte3TdVerNjerUU7amoc4QOw+/mUfFXKOtadqyE20DEmF0
 ypXy5zsxAMt/rM6rApzLC8TV2q+HNIPICxrzSH+GYKKUmfATvyyG5tiphRd62zzvbA5XQvJ60/
 Lqz2gUmrqtSZY052bC40xMxHOUZR0trs1M7p3tgoFsp3HhOu0C7EGgAMz6OGeJaCOZTaj9DMDY
 Gnsx3sDlIRnM32NzPmemocZOH5dbXqvG4lhIO8iSkNdGhVBUsfzRxoOL65Fz7APzf28XRZq0TL
 SsldCOUDToV7MlhTlbAvwKs1
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:51:57 -0800
IronPort-SDR: WDMfO4KSjZ85dQnSqJHGqhPnau1IPWBJa7ouAx7fSY8Jjs07UadggeWCP1wGZdoVsyHikSCSBo
 NjR3hTBoDZYf083INEVXN/g/gzRcE8c69hDQ3bHF1CnrxKItq/1x7A8KFxUF9hsEZwznMnu465
 WdZoTY5ZKFKbPPmsD6E9kgpTCXMTN98PIQwHFSUfz5GsmitLQ4YX+7Kt3he3pE680JbUdUcIwc
 w3TKORGekwZavC6DFj/L4eyCUg1ECleXwXNyg9AYomurOycfkdloWjts9kBTsEWz8yA/ZIB3I9
 J7c=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:09:22 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:17 -0800
Message-Id: <20210119050631.57073-24-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jVb-006vqz-7J
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 23/37] dm-zoned: use bio_init_fields
 metadata
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
 drivers/md/dm-zoned-metadata.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/md/dm-zoned-metadata.c b/drivers/md/dm-zoned-metadata.c
index b298fefb022e..f114d595ce23 100644
--- a/drivers/md/dm-zoned-metadata.c
+++ b/drivers/md/dm-zoned-metadata.c
@@ -577,10 +577,8 @@ static struct dmz_mblock *dmz_get_mblock_slow(struct dmz_metadata *zmd,
 	spin_unlock(&zmd->mblk_lock);
 
 	/* Submit read BIO */
-	bio->bi_iter.bi_sector = dmz_blk2sect(block);
-	bio_set_dev(bio, dev->bdev);
-	bio->bi_private = mblk;
-	bio->bi_end_io = dmz_mblock_bio_end_io;
+	bio_init_fields(bio, dev->bdev, dmz_blk2sect(block), mblk,
+			dmz_mblock_bio_end_io, 0, 0);
 	bio_set_op_attrs(bio, REQ_OP_READ, REQ_META | REQ_PRIO);
 	bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
 	submit_bio(bio);
@@ -733,10 +731,8 @@ static int dmz_write_mblock(struct dmz_metadata *zmd, struct dmz_mblock *mblk,
 
 	set_bit(DMZ_META_WRITING, &mblk->state);
 
-	bio->bi_iter.bi_sector = dmz_blk2sect(block);
-	bio_set_dev(bio, dev->bdev);
-	bio->bi_private = mblk;
-	bio->bi_end_io = dmz_mblock_bio_end_io;
+	bio_init_fields(bio, dev->bdev, dmz_blk2sect(block), mblk,
+			dmz_mblock_bio_end_io, 0, 0);
 	bio_set_op_attrs(bio, REQ_OP_WRITE, REQ_META | REQ_PRIO);
 	bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
 	submit_bio(bio);
@@ -763,8 +759,7 @@ static int dmz_rdwr_block(struct dmz_dev *dev, int op,
 	if (!bio)
 		return -ENOMEM;
 
-	bio->bi_iter.bi_sector = dmz_blk2sect(block);
-	bio_set_dev(bio, dev->bdev);
+	bio_init_fields(bio, dev->bdev, dmz_blk2sect(block), NULL, NULL, 0, 0);
 	bio_set_op_attrs(bio, op, REQ_SYNC | REQ_META | REQ_PRIO);
 	bio_add_page(bio, page, DMZ_BLOCK_SIZE, 0);
 	ret = submit_bio_wait(bio);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
