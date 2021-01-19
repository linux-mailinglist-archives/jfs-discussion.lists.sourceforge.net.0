Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A49532FB6A6
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000Qj-Rv; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jWW-0007KU-2s
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OTFdglLBmhXGQAY9bJAd5jv1X+b9XLCiXQUCFRMXq0c=; b=loL574UVnTjzFqiWGeZcBzhseB
 OVAIQAix6AyMtAFMTWH/Id/kWp2tmFtV0WNJfNIpZxTg7TAui2AZioGoErNe9JALtX70sDD1HhZBt
 YC2juQWVZDWVZDZjYqMArgVrvHqa8mhb794+08Ujl7vdufn8z6lw+GATzhDeap78h9E8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OTFdglLBmhXGQAY9bJAd5jv1X+b9XLCiXQUCFRMXq0c=; b=NgJV7zyHaBqJJRbaEqFoKwKITm
 2SgUv0NZiE9cDGCWZlBUR5L8gHHIolXKRSxaePBh+s7xuqWYsjqws6kWC4hLnF94ybzBPv/q4omV4
 rXxHDpYDNGL7glvS0dgg/LJkK2R7k/ryyRj4RYF4yiOP1AxIIaiMQeUvfAmL42FnM0J4=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jWN-00DzfU-39
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033938; x=1642569938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nnZ15L+rQ/6NXzNuwsPySOITMggjv2dpPGtghDgn/3I=;
 b=K/IBItRg9h/ju3MAYBemB3eoq4GOXZJaG7iQ+95T/TudqPPrOEkP8evP
 eryFwBcsdty7ENdarm7m+Rdhc5FlPG5to5R8m/svfD9zA54QwoEk9tSPu
 g9a0K9BLPdNStEn/KLrv7QidM1Rv2CHgqnwJJhCTdFQcOKwS9pgEhTCh1
 vG8X2lNSVFtQ+62caa4qJfMR+9+/LNXWGdW6pKI/KvM9+yNJG6G/g8qvc
 3/rGECkgkPjYCsKuaB2NkopJLFYsCDQT4rdN5LwVojkqdD6jlIcAoh5gJ
 /693Yx3IHxF8G3PbRIPr8hPPKIFxA3k9zmZhR8AOG58RgNronQ7TvtXkl Q==;
IronPort-SDR: W5y/ZPz922Vlf5Wh1UR9Se2VGrXbrCVCwJn0QKF14psCaNrkr857CGk1Au8D8ijgsUvaTenuxL
 d/oIDHAqazoQT7AFNUAwjWruAj5vn35B6doxUKDDP/1jeGVsrKv8KE5zc9zsxdfJg4Iga6aWY/
 g3llMlh+muTqFiKnUc8+JOZnV/7AzpO20bVg6hEme4FynkC0V3LGihB1XmTSgkUFs8vWvEjr/T
 thUrJ6W32WjMwrvfXvZ5VBMQcaoQ1fNaKWg/lwObJMplBWIzxcVmxTEvUiOH/hQ10dpEWSzCif
 oWM=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157758789"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:10:04 +0800
IronPort-SDR: jYart9LJN01XpxRnE8OIuuh2HJTdRoYIbZUTOuFDEjiTAfVpxdj4EVbVh7kGHfhtR0VwYhJyzW
 WkZSemh32F7SyUQvZg8TSchvqavGyVV084nSp8biVLx+sZOt39C6uDs2IEXLbL6T8eT6mjVp5p
 D36vTtIrzE11TR1kR0R7HfzvUqk33k6DD7yC/q1ij8cmHVGT1LGw/jCKeNOUYvPLdbO6u7qCDo
 vYuqbiSfbBG4ZXjsi3QDAYw+1XWGVgaF0DJus724uVKt6nKIjLHbuiNX7a5tI3ciNPQVoMirNo
 RxMQeeCF5t9Xxg5Co5Pegnoo
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:52:40 -0800
IronPort-SDR: fQMFfgdtSu8nKcxUqzclyRB9P+rBI21YWfB4xejgzd1WEdOnHm3L4SakDlfU6oc/GiImWBi40s
 xrwXfD+NR0eoiSPOERNl2yA3hT/FAiC6WXYJT29OBzUhR33jyW2a44OEEyaO8RW7lmq0Kfdbp8
 zCQCZgyL3cFPfEB3ClOgIrUgLmRSb/JHMwYFzZiPt3rsP6BzAQG3FZAe7E697plU5PyJKHWhGY
 W00r37LQP39Cea2s9M16j4CR51XnjLw+rlD/Eucyelmc2VgMjnWu4RGUyCYihZR6I9F/PiTOxm
 QL8=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:10:04 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:23 -0800
Message-Id: <20210119050631.57073-30-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jWN-00DzfU-39
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 29/37] btrfs: use bio_init_fields in
 scrub
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
 fs/btrfs/scrub.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/btrfs/scrub.c b/fs/btrfs/scrub.c
index 5f4f88a4d2c8..1e533966ccf1 100644
--- a/fs/btrfs/scrub.c
+++ b/fs/btrfs/scrub.c
@@ -1650,10 +1650,8 @@ static int scrub_add_page_to_wr_bio(struct scrub_ctx *sctx,
 			sbio->bio = bio;
 		}
 
-		bio->bi_private = sbio;
-		bio->bi_end_io = scrub_wr_bio_end_io;
-		bio_set_dev(bio, sbio->dev->bdev);
-		bio->bi_iter.bi_sector = sbio->physical >> 9;
+		bio_init_fields(bio, sbio->dev->bdev, sbio->physical >> 9,
+				sbio, scrub_wr_bio_end_io, 0, 0);
 		bio->bi_opf = REQ_OP_WRITE;
 		sbio->status = 0;
 	} else if (sbio->physical + sbio->page_count * PAGE_SIZE !=
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
