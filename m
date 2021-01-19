Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CBE2FB6B4
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reV-0000SU-CV; Tue, 19 Jan 2021 14:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jXg-0007NA-Lu
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:27:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5UsyVAX5/ySYyEyj4Gg458EyQx3zJxHCd2LJerBNqC8=; b=Aj43LprUQbzjdXFmv1yEOnOliH
 ZSyFt473C89XGoCBmsvOJMC5Jj41e9QxQ2e4jfnbTc7QTAZtNu7eSHIr1bTEHmV6yf9W/9+Qq47A6
 JPXgTcFeslDslHbzjcuZM2vFw3/xEJpE0qgakdeJn0u6qZlKSTH92WfEJyoEi/MDucsI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5UsyVAX5/ySYyEyj4Gg458EyQx3zJxHCd2LJerBNqC8=; b=XrieeHOk4jRDWJixHOEfbP+Qbz
 2tLMxQ10Myu6VZvlDi0I9kmo7sKBdXR5TFF3KTmvVyf/zkZSDuDHi7XV6JEJe2CkvxpMqAKNQ15/d
 xhe3EU1/1ihBsc5Yik41WdxhAUjVvOP/WoTIFr/O3IuI2wokiUgeEMFBLG3clYVUxp5U=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jXX-00DzkB-BJ
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:27:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611034011; x=1642570011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7vt16PAj1e5r0qMNupRL0U4T3eLDEFSlTSo46YPqSAM=;
 b=M0CXBS1OvXEYEv8PLygEZRDS35CQFC7IvMbwEFEJd3SIW9ph7hx919D9
 +PcMoCkAcFFIwR4uQgjYK9flTpt6u0v+CHHhC8GzgOnkau3YH/sFsqRBl
 ezQ4aeR5TyRMuOn1yvAWrUk2vUkzOXiTGlLjeVrsZIWace9mW05+UyKiQ
 nLdtwp/10wjkeEJs6Meh/iDymKphgixe/teW3BJCF2S0qqMuIr5JkbZNN
 k36Uh00U4uSJDenzXrYltwl3TlCzFH9pN572aQwGi3GGgxaDgn8wZ7TRO
 nolK7LKf6x9JunJPB+ZH8hlTJdCdGIjYThgekEcYn9kTGBszghHxRk/2C g==;
IronPort-SDR: fE2led8g2zvcGnOjVfDbxIOlSV0pjWkTgss1qnW4UgFxsuJ6qFQSAcy8uQiekXrpIeYnFMibcv
 fkv0Ny3h6apRDEznWNpQBkAQELB4rEj4AEtQE1v6RtJ708VM8VbrMWrSt3RpHT9MG/RkpU81/7
 9gNkuetoOnGJs0QRW/0EFqQDW+o2pL+PVDZ8Z8J66Dbz+BjeDaYg/AillpRsvGW1Kqxvb0Ey5k
 VpL4G4ga7+dmsXbaWA9MqWb2eA9TYpJXBwzrnlRojduWlbYMrXLing+eO7AOvTwgO58FN8V1U1
 WZM=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268081278"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:10:58 +0800
IronPort-SDR: JDzQ8aO1JzWuYEx+b8kAmSUdOaJCe+NLDvofbIzFb0FqmmryuPfQmoqz5uytbaiHwOqt233BLZ
 vTBH6YgkIxkQSwu5yIg7dLDKWsWIQ58pvV+iHxDBv1TcFjl5mWxFaSMkNg5QvwddBWZpv1Ba86
 C6k/ybf6Ajip+QYlqR8F6/lzmkb/h5MBun7rsA1gQbhpqPO4zzfId+E7u0xm3n+WWYjrZloE81
 p3eB7/Nefv/udEiahkGMXevJYoHe9m68V/D9XNn9hJkYpmTjkVfVFSp+SQQb4owwjuzvrJzIAM
 8lBzmyJvAb0hnFwwHIGt0FHs
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:55:35 -0800
IronPort-SDR: YVg4oetj669oXGPyen5Yz7/4lwwknpBuwOHqtYisxWomXA6swBTRl0Q6a9GaHjktx9T2m6JStb
 CDvwa7TZCZ4M9GVWSo4RbtmgfurnOujjvD4svcphbEiZT+7y+gglJ9ZlIF/tnwxqJkfJFxncIx
 g5wm4nu8oJyzJ24M9klTWymj61zMdpHfpxs6XcMjZOa3vIqm+lJQ5C0tB3xkI9dYlB+E3Ul943
 D49b5EPSkdl17MTuiUi4ULzuOqSv9X94gCd9MvAo2Xb2yDb8OLgPVo7IBgCR+uA44u4+72LP4B
 OSs=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:10:58 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:30 -0800
Message-Id: <20210119050631.57073-37-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jXX-00DzkB-BJ
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:30 +0000
Subject: [Jfs-discussion] [RFC PATCH 36/37] xfs: use bio_init_fields in
 xfs_buf
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
 fs/xfs/xfs_buf.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/xfs/xfs_buf.c b/fs/xfs/xfs_buf.c
index f8400bbd6473..1c157cfc5f8f 100644
--- a/fs/xfs/xfs_buf.c
+++ b/fs/xfs/xfs_buf.c
@@ -1508,10 +1508,8 @@ xfs_buf_ioapply_map(
 	nr_pages = min(total_nr_pages, BIO_MAX_PAGES);
 
 	bio = bio_alloc(GFP_NOIO, nr_pages);
-	bio_set_dev(bio, bp->b_target->bt_bdev);
-	bio->bi_iter.bi_sector = sector;
-	bio->bi_end_io = xfs_buf_bio_end_io;
-	bio->bi_private = bp;
+	bio_init_fields(bio, bp->b_target->bt_bdev, sector, bp,
+			xfs_buf_bio_end_io, 0, 0);
 	bio->bi_opf = op;
 
 	for (; size && nr_pages; nr_pages--, page_index++) {
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
