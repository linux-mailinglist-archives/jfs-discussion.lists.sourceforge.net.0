Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 371C32FB6A3
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000Pi-CM; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jVt-0001nf-Lt
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h2fXtO7CndvsOyjN8u6Tb//qwsS/2ewSX48XN8ARHLY=; b=Sr7BMUj7EpgyPP9tl4/D20rmFr
 1It1EO/OWi3XL4IWc+O8/296xffK/XDjy/StOg94HTRaeYh99Kw80M1Id4SltTOFQkwM9BdtjSaiS
 6TPmP8qMDXYyebBtTS5pmqr83eFS4PjsbDMMoNPJsrQABOSLOdS/N+QzXc77X99z/PPQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h2fXtO7CndvsOyjN8u6Tb//qwsS/2ewSX48XN8ARHLY=; b=G96cB0EMNs79sIn/vE3titaKQ2
 3Slzxm5mbNjHamXNk8O20QX+troZY2KUR9k/XLzIpMKYMG3hdbuGxKEyzstsQ4F3bqhrwyWpIotK1
 NqI9dTjWQBloNZDh9wbWBgICWggrY7JEaR4wcLcbiwF6EKmd+H5vFDyEJBd300UCsOZA=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jVj-006vqz-0K
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033899; x=1642569899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L+Yd1/4O9mwEd1BMH1dhU7y2A0Eiek2poS1YnEOWuVY=;
 b=j3bYr80WqwEidnGX8Uooa3JaJdbkyOA5/HqP1Ly3sW2uZ4XlPVmHmlsv
 o3hHo9wTFkTMYCKWwNNLJqdfDhCtC6DZuG2xAnDd65kR6N2gqECoLMGb6
 IfiuX2mwiRH/5lmE2gcdNvtEwV9uJt2KY++0gzcUKFNIWbywcBrap5qAw
 nx1Q6AD+9og2KhGfKCbi3aDXogsq/kNC7HHaz5ndtHt6po4F3YzZXlXgI
 lZS2A9dKgS60kAgcglfnd4IR4NztXTfdFC5FTML35jYTvnOAcnz+MsvKA
 MCv5CCPJPh4SHC8UhRUFGo1aKxAOFw5GZ2rSNV+yt7fEfX4f0vSlPsv0r g==;
IronPort-SDR: HG86bYSdw0FDuFWNojT7N5JrxxEEF9opNIr1O43gXg9ZpFpRe7RmPmIJMT22s2G1NJilxJeoqG
 ci8iOpMXLhOCsj3znu891tVVUokRDV8o3+xtQ8F/K3FwBGe/hboCPQMqx1PzFEapGQDxjq34IZ
 c2iUhdyN4Mzyb9JGSRPyMXwm0s5iCEnSVOyqemLplY7R2hZU+XmkpEi1bHl3V99pMWa8xC7vPr
 lUCqRfCVilOveeB1piqygN9eAIMHM1pXbpJDnEX77zjQ8o2Ix46wHsmvxTS6Q94W6AC1whE3id
 hug=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="158940687"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:09:30 +0800
IronPort-SDR: aL88mdcOzok8sakIvg6KPOhSrZmqkSQXPFQUb9q04a5PU6u/lqMHti65Oo1YcwsGubJNt197s6
 AcndIx+Q0HoiUiGPTV114iqwN2+8zeiufPFfe0OH9W5PROcJyNSTBeFsWF+1+1Aw1KUiuDfVpL
 9UVPbBlAutl8xQtGR6+HMdpd3CdaJvgSi0b6KN1k5pEh8vah202ud584Co7quykxz0E4dvnG2x
 MusfENt0dDHqagqIVVx9Vrw59dTPjMiHJgFIkQX4Hog25Fu4EHlwXub72cZhsDbRgzSjK5Vib6
 MQ3ewrO6iPSHdLgkWd+6rDpj
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:52:04 -0800
IronPort-SDR: X2W/WReUXrAfluwkD7se2dZ1819ju1OynW28uTSvDSLN2ps3wO1qXeL0GJaXlJKwpIqaALDMhb
 kimb7jLOr+gpWYj06rWyhvZYDu9+2JsUCLwbEquhMfnoBM1g23E7vbj6QE5tFPT0RXTnWA/1bR
 1HmN0UVHZv2jYDXSsFNmf+lCI3bFpzj7XxZ5y9GFacGpyfKADcPO/cyDwrim/4xYtJ4n8KmXYm
 LOaLwIRAOFVmRCvuPUSpoWyGGLooeoj1II+Syix9yI2u6Xeh/1MmoJBsJ6CUrYMQLVvvA0Jyzk
 ZqE=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:09:29 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:18 -0800
Message-Id: <20210119050631.57073-25-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jVj-006vqz-0K
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 24/37] dm-zoned: use bio_init_fields
 target
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
 drivers/md/dm-zoned-target.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/md/dm-zoned-target.c b/drivers/md/dm-zoned-target.c
index 697f9de37355..8b232b9e3386 100644
--- a/drivers/md/dm-zoned-target.c
+++ b/drivers/md/dm-zoned-target.c
@@ -129,14 +129,11 @@ static int dmz_submit_bio(struct dmz_target *dmz, struct dm_zone *zone,
 	if (!clone)
 		return -ENOMEM;
 
-	bio_set_dev(clone, dev->bdev);
 	bioctx->dev = dev;
-	clone->bi_iter.bi_sector =
-		dmz_start_sect(dmz->metadata, zone) + dmz_blk2sect(chunk_block);
 	clone->bi_iter.bi_size = dmz_blk2sect(nr_blocks) << SECTOR_SHIFT;
-	clone->bi_end_io = dmz_clone_endio;
-	clone->bi_private = bioctx;
-
+	bio_init_fields(clone, dev->bdev,
+			dmz_start_sect(dmz->metadata, zone) + dmz, bioctx,
+			dmz_clone_endio, 0, 0);
 	bio_advance(bio, clone->bi_iter.bi_size);
 
 	refcount_inc(&bioctx->ref);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
