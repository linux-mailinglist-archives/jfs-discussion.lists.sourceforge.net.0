Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3F5307621
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ot-0000Wz-QJ; Thu, 28 Jan 2021 12:27:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51XF-0002en-FL
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:16:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vWUiiVfJ01rYAkhlU3Ahv0oXMT6Noygf3qIELOzPbpM=; b=DASD0STBDediXCPxf5Tk+I6jGA
 Q3jyH2ZjBIqX0wCCytW1PszGHK5qSdC9gUrs5UdUE11LkVH+FQMoIet3GgaoaQ3/Vw9/iU6kunoQp
 IKVsBAfzlsYv9iEqL5xzdsAInxOjrP02Ld7brVrKWBREUYCYo54Rninwt1aGoue4Rxlg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vWUiiVfJ01rYAkhlU3Ahv0oXMT6Noygf3qIELOzPbpM=; b=B1NABeKlx4DJYTI54bZPcfbkwj
 D9won5+4NM4sD4sEPb+9LsmpqYIlXqx+Owi8LpDcThIi9j4Ed1CIpHAmpauctDptl6hBOrePSpBmD
 QwedjrS7PEuEBraY6e9mYTBlIia/iaDjd7u7bup4SJrnKHS4JvW867Kz8WjBn+5T8t/o=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51X7-0000c5-4m
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:16:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818161; x=1643354161;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y9+Mnjxua+V7f2wybPN6k7Lk3+3v11itMxG4MZ3QMkM=;
 b=fzd6cVxCFeu9493HbyOPM1xMblECjGmZfm0cjzT4BWKGBv/AovOe3mYL
 VME07QV82mIm0CUKmrruHIGam9g5UOLkHAKS434xlfjzUkTcQG8tXBNqQ
 giarZuummiFEi2k6W+rs9769tqrcWHOqVJiXbdoXvatjGQkVf0PVvNrLV
 +ckZd5vvXtwloMTwYto7e8pnO2MrMGAopnjBCmuU/4fP5iOAvCXMbQ74U
 huKSYF0boqZOLnMm3Hz6vqj+OL3D+zIanzDr06zQQcRxXRs69SuBvq8nc
 TpII+j+/DUsE025BVPod7l/7fsA06gAjU0WcQT67qm9c51WBjQ4MAVTR6 g==;
IronPort-SDR: BZ5YaAkZ6Qf009pikys6cmNaqOunZAxOmWMZi2eFuDmcvC6duI/L4iwINkGo0IqZphzIl2wZee
 /vaxxwTY0ztSogDKeLz0mv9iKp6UdrbJEaaAL4LUPgidAFjNslkirof++0WxEqg+KTjItEClKa
 NNwNiWxuSTMfHMYEc2Hm7If/hv0Kj7nce1GlTdgvrMSf/qqePrlma5gyK/Uy1cXGrlToXcXWp+
 1RXy2yjvlbZmWVdPsxU93Ru5wwe9E4s+94FMskTC/JqL2uO81lAp0G7VeVmY26IGeNY9KEoyD0
 yi4=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158517579"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:15:56 +0800
IronPort-SDR: 1GYjglkzqxuoYXz3+PSOqeNAlS1xVD41KCJElxuX16XfjGb+B7P1wQByxFk77H0yYeBGxSigUf
 40jDHwuwrI3+ozaTlmDy2sWpHI9Np4Jui9o68qRRGV9wBDHjlarv54Wc/mfY+x5XcqRGTtwoZM
 Z/VfYUGYH0v6GVZ5lVaJPOjHeODMpr5LFcwCo5gG4fldfAVCfThisrZHMV+i3VpNPinQ8xrLe2
 O0yC4w273BQ1T89adcjC+ECBZao32e7FNSyoH+ae+I+j/kUBG6Q48UUy2qOI6q1qYyt7JvjEto
 ZF1Q0p1axm2w6TM/m8xvdGA8
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 23:00:16 -0800
IronPort-SDR: MJghY7CI3VIGR5/IaW1FKfL3TP8YTcGZMlKgwb78Me3B/B/3apRuuzh9zoIBvsafPZo8P1zI7O
 tvlMLEPWxNEsao+d+OWmeAfzkHQtyrR4CezWVDYJlrvLmf+2864qvNG9WiZqHSu38lUOwqOgWr
 BwUEJ5wQyzZ3OCyeIORv7uUc6VzLa9ZZ6RiC/IlKAQuXNbiGRl7btRhvnWciISjEw6c6WHvSr7
 U7MWRK7LEz7DNkLYA3LIdhi5N4PJW+ftjhgTNZ5eyVeVGIhgT6If8NwOmXnpUTI7IymY6dp08v
 5GE=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:15:56 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:30 -0800
Message-Id: <20210128071133.60335-32-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51X7-0000c5-4m
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:46 +0000
Subject: [Jfs-discussion] [RFC PATCH 31/34] iomap: use bio_new in
 iomap_readpage_actor
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
Cc: shaggy@kernel.org, sergey.senozhatsky.work@gmail.com, snitzer@redhat.com,
 tiwai@suse.de, djwong@kernel.org, gustavoars@kernel.org,
 joseph.qi@linux.alibaba.com, pavel@ucw.cz, alex.shi@linux.alibaba.com,
 hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com, sagi@grimberg.me,
 mark@fasheh.com, osandov@fb.com, ebiggers@kernel.org, ngupta@vflare.org,
 len.brown@intel.com, chaitanya.kulkarni@wdc.com, konrad.wilk@oracle.com,
 hare@suse.de, ming.lei@redhat.com, viro@zeniv.linux.org.uk,
 jefflexu@linux.alibaba.com, jaegeuk@kernel.org, konishi.ryusuke@gmail.com,
 bvanassche@acm.org, axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 akpm@linux-foundation.org, martin.petersen@oracle.com, rjw@rjwysocki.net,
 philipp.reisner@linbit.com, minchan@kernel.org, tj@kernel.org,
 lars.ellenberg@linbit.com, jth@kernel.org, asml.silence@gmail.com,
 jlbec@evilplan.org, roger.pau@citrix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 fs/iomap/buffered-io.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
index 16a1e82e3aeb..08d119b62cf5 100644
--- a/fs/iomap/buffered-io.c
+++ b/fs/iomap/buffered-io.c
@@ -241,6 +241,9 @@ iomap_readpage_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
 	struct page *page = ctx->cur_page;
 	struct iomap_page *iop = iomap_page_create(inode, page);
 	bool same_page = false, is_contig = false;
+	struct block_device *bdev = iomap->bdev;
+	unsigned opf = ctx->rac ? REQ_RAHEAD : 0;
+	unsigned op = REQ_OP_READ;
 	loff_t orig_pos = pos;
 	unsigned poff, plen;
 	sector_t sector;
@@ -285,19 +288,14 @@ iomap_readpage_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
 
 		if (ctx->rac) /* same as readahead_gfp_mask */
 			gfp |= __GFP_NORETRY | __GFP_NOWARN;
-		ctx->bio = bio_alloc(gfp, min(BIO_MAX_PAGES, nr_vecs));
+		ctx->bio = bio_new(bdev, sector, op, opf, gfp, nr_vecs);
 		/*
 		 * If the bio_alloc fails, try it again for a single page to
 		 * avoid having to deal with partial page reads.  This emulates
 		 * what do_mpage_readpage does.
 		 */
 		if (!ctx->bio)
-			ctx->bio = bio_alloc(orig_gfp, 1);
-		ctx->bio->bi_opf = REQ_OP_READ;
-		if (ctx->rac)
-			ctx->bio->bi_opf |= REQ_RAHEAD;
-		ctx->bio->bi_iter.bi_sector = sector;
-		bio_set_dev(ctx->bio, iomap->bdev);
+			ctx->bio = bio_new(bdev, sector, op, opf, orig_gfp, 1);
 		ctx->bio->bi_end_io = iomap_read_end_io;
 	}
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
