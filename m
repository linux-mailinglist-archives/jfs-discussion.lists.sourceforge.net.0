Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B124C2FB6A0
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reV-0000Sn-FD; Tue, 19 Jan 2021 14:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jZ2-0000q7-Q1
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:28:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5LiFzvwOabqhRp8uqh3FvEmNfky1UN6nRhIPdhQvrmg=; b=N6viqTBapChNdzOEOsHREkC3KG
 B9rDGDNfw+9zAOufC0yu2I1n1LQ0Uwjd8xIvheD6s5BfYU/OV6T7Opv6EkFrGlAjPGGg3RRPC/xdj
 oUx9ClfnenQvM0yKTHC6+Yreh/VHxDU8rG+TneeZINHs2XoOs45dX7uW3/9y1+3Zfk4o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5LiFzvwOabqhRp8uqh3FvEmNfky1UN6nRhIPdhQvrmg=; b=VVEJB5snZh0u+3hYhdY2W6ZkGT
 7V+O/iAvEzmAGXwxyHZE3OAfNw5j+Ihwc0N2bTIee8mJC1Aat6lM1JskO67vgq7NPy21+l01sLRXO
 NCnVjM84OYMkTNkF+UrEJt9siM1ul4L3XT/I/QZ3Kf1CaoVFGGGzmv9nrF8BL5EZnpAY=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jYv-00Dzw4-Kf
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:28:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611034128; x=1642570128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D5cmtnOCFRgYuXCr3qAROSsFWDMPsd6wC55oJ+RtqCY=;
 b=jvNvG/w2CoEVL04QfhUSZGEtA2qBBkne8lo4DItc1tZ0pYe7SHiga0X2
 Bd+BEsfCVzzH8f0p2HVkVAZQx+XwbdrLrWo3DCMPi12H+NyF1yJGNczWx
 6epAW9V5J/828hASBNQeLkksMlSn+8Txg9nBKrjB/Yzn6enq54safrJkB
 B82YG5sjwZEjGk8YKu4oAgONOtmV39P82xmoCZH8Q0wAEcQx4pwrfQSjB
 rfLnFzGRcbYoZbaPMx3yIPZPDpYZTQWAKGgCnbnNgyG/iJlBN5TS4dUJP
 v6CUSYhOJPAQX7KhqU/MkJ30uq9qHLhmnm+igxyxY3eArWsrXWVw8WQNB w==;
IronPort-SDR: WUwGli/baVRGOtNrzKM0yHdn9y9fiLfJ1GAU8DJhSya1NhPCEy7Q/BtYdkfe3ZQRBLLpp+0qWV
 UDE4dVjtCyS+8jwOWxUmUv68khPnpvEAf7oso5FOPvt3Qb5MNLdnL3f+k++owTXS8KHQcEBL3W
 tgbUqm/iUj/cYllchuDeXdGWf9p/DncYl9xwh6eQrcOwffup3d7Siwec4mFRtp1mnP+Zdms/xq
 q0TCqvD7/uD4KM2F2gZL4Dp1AOi9Qy27POlOAa9n0nlxXPKnvNSiQXhYDUI8TLnugU3E+gyOnk
 Ryg=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="261722111"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:17:03 +0800
IronPort-SDR: PtSXshh6YphVgo15A+gt9Ceuv0HhXVxLDroLkcqiM9+WOHwAWfSkmX67Yv80j3BKyTtOYtRbYO
 qedyZRWJnkOcH3NgeeHJrlk2taijSYTeDtnndjEliffGwygxlJVkjG4a01AaSZzmBJQWyDDlYX
 Vo/eHSXEz45quSaRtXh+cvbmhzSMsvsDpNwIS5/sFL9twbxHIoAoqlQ/11Ot/L+dA/QQZUiHpN
 SEenaL/kCgRVP2kBZ3eIN3kwl7Xxo7yflKdvkkorYMvKlzbw01saIbxFFZgAVYctyoss03vTi7
 nlgJaxcsQiREVoE6D5kht74G
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:49:40 -0800
IronPort-SDR: pxAqff3CzY6SNypEdU8pcyRF7Ycp2XDG/dFXp67ii/ClPi77Zq14dTS0/Abfh56tMQEJCZUgEv
 hp/pu5jYnyf4G6Ftz6560hm1xTauIc3+qd7iUoR92HKspQ4jIbCxp/rRkQaHksEACl6G/0Nxwk
 QZZl1HrIzXwoiE65870EG7Al72AiwGtlVjZjJc6GYoY+JOC16HDs1pPQioV4bpbAPsiE8/On0q
 zAsBgNZtal+/XzWJ5D9TE5/A5r3kkpStmQ4w13z8jL1gTn8oG9nSDXfj42gpMTqu+V2gtyTMTx
 oyE=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:07:04 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:05:58 -0800
Message-Id: <20210119050631.57073-5-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jYv-00Dzw4-Kf
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:30 +0000
Subject: [Jfs-discussion] [RFC PATCH 04/37] btrfs: use bio_init_fields in
 volumes
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
 fs/btrfs/volumes.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/btrfs/volumes.c b/fs/btrfs/volumes.c
index ee086fc56c30..836167212252 100644
--- a/fs/btrfs/volumes.c
+++ b/fs/btrfs/volumes.c
@@ -6371,14 +6371,12 @@ static void submit_stripe_bio(struct btrfs_bio *bbio, struct bio *bio,
 
 	bio->bi_private = bbio;
 	btrfs_io_bio(bio)->device = dev;
-	bio->bi_end_io = btrfs_end_bio;
-	bio->bi_iter.bi_sector = physical >> 9;
+	bio_init_fields(bio, dev->bdev, physical >> 9, bbio, btrfs_end_bio, 0, 0);
 	btrfs_debug_in_rcu(fs_info,
 	"btrfs_map_bio: rw %d 0x%x, sector=%llu, dev=%lu (%s id %llu), size=%u",
 		bio_op(bio), bio->bi_opf, bio->bi_iter.bi_sector,
 		(unsigned long)dev->bdev->bd_dev, rcu_str_deref(dev->name),
 		dev->devid, bio->bi_iter.bi_size);
-	bio_set_dev(bio, dev->bdev);
 
 	btrfs_bio_counter_inc_noblocked(fs_info);
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
