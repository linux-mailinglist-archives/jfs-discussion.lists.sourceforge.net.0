Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE552FB6B9
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000QQ-M4; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jWP-0007K4-DV
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wRS5UidXFN1uzxZVu6ZbN46ndu7NTrIJSalKMvZGgh4=; b=VsPfzVZ8muhHqXkCTciCbssLz2
 vy4P5rR1DJHTLeXhPTZjAO/+yR93uMwXb+4fURwuquT/SzQqUoj3LEOc1RnUI51uQu30cE/C9GsPf
 hT1qV//MuIerveLbpKC1aDp8cPP74SUWiGTytOX4Z3Ady/+qRzix0mV0Ha3iHGC3mNy8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wRS5UidXFN1uzxZVu6ZbN46ndu7NTrIJSalKMvZGgh4=; b=FFA8AtqipN+p6YfacNh9tw6vN3
 Ony+wNFzT0kDd9VIQgaTxSm3AqGfTh1Mt6Oxra7gOTEZbDmYeUfEXjUDLYJNG6qA1ubLyQ0Jrg6tn
 Y4FDZ9Rw+v87DnzFc3X8q9GU0DQPW4OHpCVf79fYlw3TPVTUJkkSz5/g+CWEwTVcT9Eg=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jWG-00Dzep-7Q
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033932; x=1642569932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kJ/YPi2iVTGzPyZ1PMFgAIrmJoIDh2BG4oTkefPeBOY=;
 b=g9+OLnVEI1G0FAU2SaMCWA/ukK/LYuMmS8JR2H5lrF/+pFPJMJI6U5HL
 yTm/lurDtNj6e033m+dRQsFcA5CWTBYLBNTek6NWpMEwMxJGHt0SwgjIF
 Rz9rleSy6Cn3hTBmsSdWwy3QG1DfEgkW2llQSytiLkR+nmTK8Mdd56hu0
 +2gZim2c/G6naPJCSvzY9HmSW2oyeeL+P21s3YehP/fxzS9uXYCeQFN+s
 unlxhLvJlBh2IF0oct8PJUumtBbwnFBnZ4tZUQeLfdzq313p8V6c0+JuF
 bGpRt9J57A6VH4lpY+ygf+9iLkPhVMrEPrHBc2/+ErQ0g5OKy7xni/h5H Q==;
IronPort-SDR: t90Iz6yTYrurBR4jZ842IezZ3ftqgDwtcENiqkwjbvZd+drZciE888QNLzy4YEDmf1rwbjuG9J
 FGY+En1q/rixGki3GrrOzw2rMA50dKRt38LxhRKWycU2Yu/VHR/h41yGVBKn/QPO3uYtostKRk
 TiQogOAseEyCD5QhvKh6G0Ffngwxkscy1H4nQZnztNL18j4V2eE7D7OAdmTIBFoMeH8rrXWovY
 g7YEazgc2WiLXNg2iZhxzIXEmpO4Rro/wq7Tyh6mnXneFwpDQ9iSoCvxiXXLWUTSwyxfBmInfb
 l44=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="162201205"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:09:36 +0800
IronPort-SDR: DtvQQK24nlPNTQNAZc4rErU+scNnAwaMOmA3UgJftsDwuMU5TYI4Nff8sc8kmH+xy3OXmiMb8v
 y1zyqgNeBOVmwcC2JogwiVtRQj/KrVYal3O7Vgf/pMl3HX+xf0j/xs36xFY9ouY00DXF9srXik
 ycokTVpeSfibkYFMrw0UMHFfrEInv7xSNFKGpNF/mkFrMaaf6X/wCWJCwt0B1qRBsBSO1VoiBv
 JbiO1XsvSwovIO/X3uQTviyY1ZUb71OiyPt3XFu/lFELcRyAUoyzYrzMPE4X3bL0gsPHXy9gzm
 x6x1vin1CP1t7o64hi3kCvaI
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:54:13 -0800
IronPort-SDR: 82udVg0tcJR2e9Ov1+A4/XxfwUpr6AnnaaUrqXRQiZStYiKcrlpKU0DkZ5iMbm8iZTvQAtMZG/
 I8wyRE90NxZichs84bJgmmJzLP0cByQHps51BWtoql+dpr7gkHTtxNhSfv63hHFg3HLCAOwaZD
 +dt9xs8jlS8ttjdqGabgZ5alJdiHqr1V7WKaF95Pd/LIfmh9EooiqLrIPLv7qKKLiQaaSOFfaR
 3ilv2AB4rQ3+1E1OdOv6+VBj6UNe20rcRhCRm3hgKs7Kn1zftFTr7vNmUA+PXjeDeKmQalWZYt
 Kyc=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:09:36 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:19 -0800
Message-Id: <20210119050631.57073-26-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jWG-00Dzep-7Q
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 25/37] dm-zoned: use bio_init_fields
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
 drivers/md/md.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/md/md.c b/drivers/md/md.c
index ca409428b4fc..b331c81f3a12 100644
--- a/drivers/md/md.c
+++ b/drivers/md/md.c
@@ -1001,11 +1001,9 @@ void md_super_write(struct mddev *mddev, struct md_rdev *rdev,
 
 	atomic_inc(&rdev->nr_pending);
 
-	bio_set_dev(bio, rdev->meta_bdev ? rdev->meta_bdev : rdev->bdev);
-	bio->bi_iter.bi_sector = sector;
 	bio_add_page(bio, page, size, 0);
-	bio->bi_private = rdev;
-	bio->bi_end_io = super_written;
+	bio_init_fields(bio, rdev->meta_bdev ? rdev->meta_bdev : rdev->bdev,
+			sector, rdev, super_written, 0, 0);
 
 	if (test_bit(MD_FAILFAST_SUPPORTED, &mddev->flags) &&
 	    test_bit(FailFast, &rdev->flags) &&
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
