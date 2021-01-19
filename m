Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1EB2FB6A7
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000Oa-K6; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jUs-0000Ls-BQ
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bDInU+lozFpbY9cR08LENuwUC+xb2lOsAAgGUV1f1fw=; b=EK01FVcF4xhOW19szCqqeosp9+
 Tu3z+YACfEAHN3zCnw6DduIJW84j2o9Xp2Q/bUTRPqBUpiguAyIgK5HBUyV26oJHoKzcDULbzpK9F
 wSB5til+wXq0Bm3bhe2jjQOCfH3ImSRo18zGcL3TvqIg9cXcWO6PP6Gx2i7gfv1DEfKM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bDInU+lozFpbY9cR08LENuwUC+xb2lOsAAgGUV1f1fw=; b=Qk6RZLzBxUImoECOd/35+yd6WA
 tu5XxC+xU6ddTMToS6LeuQa6fL6/BUGumqIt98AnSVSWEqxnxyd6LVV5QrbY9tj9mWgJgStY/q7kV
 y4Qys7/W/MxeJkx6JFtkz39j5gI5hs0xbL9EGlNUCebTNRM7Dxiaf7k82CzYPb3tDVu8=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jUl-00DzYa-4o
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033839; x=1642569839;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7b7Ba/mkSpgZ58joyvKPrAaGG8qz0lkQcstbC0iRpPI=;
 b=qkVGk353ec0hpqFZyBTPEcx2dmDc4u4krc7Lkh+pypQrByTVU8m4C+nB
 hMflzCWeeZu8QwxcTo5YQxZbQk3iWsfStUzFN5M+Fha0JZF6XT4aLozbv
 durrMQ19+1ZtXVBd9B/nbzLANvwytTWHDkefb6vSKg5uFihn+f6iTaHxR
 g1MjnA12a4IXoyEfjiRv+ohr1uMyFkitJgFS8W9FBzNMtLYcNxs1qFOlj
 dhWrhThGKv7l989uct/Ec07qt16L0XLjsOqu8zs91TyNhzN3WBvZgruZL
 pAgnGrrw+Z6Id63rKKxpnbGa3iJcNW57incQFe4jkDJttutqkunTdOB2p w==;
IronPort-SDR: qdxFRTF3n5qyGRG7viWfepPoPZwwFM6rR0SXZUnPd5Mwj3URncrm7LTdsfCxll+Nds7IJ0z9Jr
 XP7d2Vjf5BsSXVyaJG8aPIngMcWSPQ0LkZSMr1UGaA4o9y78oz14Hx7B5zy5rAEteJnil16lAX
 6zmjE+FNSC9hPnzVJl5Thl2A2SUzeJaQ0RMhbXwTdqnigCDukvmxW725AvFaVBwanjyAjGSpwn
 Fk7wgzmTfB4CW8DUk3GnWzETf4iQzAZTYnma+6TEnm63sa9s++LbCp/BXh3+2s+ivMRZDxmGhj
 4JQ=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268081043"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:08:30 +0800
IronPort-SDR: TgbwjJRFeX4k6uU6Zfz1avtsC/6XiskdrPmvrq5XALCW5IajuYHHI6/FQOPI5BkcRubsHbvGOn
 /872+3OV267yW+9ZWtTu2c66VdVxK+7YWBFsm4bh6zIsA0NF46qlAOwwMcgEzPrHFVmjzeaC2Y
 wOb39dm17C9bElEn6tsA4sEluFgclf4VJGlSaB9jF3JVQk5drwEh9b8utLRkl9kSAljzk+NDoj
 Dy9bmou8t+bv+wOZH463ypzxAjPVYjCjfPPbBbzVddO5BlysyRtGaYyneJAF/3wkezNAVlSatx
 nPOaQRsP3xr6sGE0W0X8TlXg
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:53:07 -0800
IronPort-SDR: P5c68+r5a8DOSQsRGC/PLvFBWof3CYBSZ78/AjZxxbqEhqAxt84O9ZWicHnuz+rOOqV7roKTgj
 twniYUPk2fiAD8Xe2xt0+bCng/kmhe4tRAPsXmMChVmLYeVESDqX1Ch12ppq+swuJrohwMf670
 nW4oFOXw5mZvfoBvM6DRJldmElTkBvSEiHsn4Z6Lj6HNC6nwKfOy7ls60P38dBSPu32aUdCyrJ
 9Xni8CwHGVPZR+TCQgcaFbT87hN7DOlLc38PrOokHP4ypmvZX5OCF+2Q9DRTOOHIgCBKFlVNcC
 QQI=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:08:30 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:10 -0800
Message-Id: <20210119050631.57073-17-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jUl-00DzYa-4o
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 16/37] floppy: use bio_init_fields
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
 drivers/block/floppy.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/block/floppy.c b/drivers/block/floppy.c
index dfe1dfc901cc..1237b64bb37b 100644
--- a/drivers/block/floppy.c
+++ b/drivers/block/floppy.c
@@ -4219,13 +4219,10 @@ static int __floppy_read_block_0(struct block_device *bdev, int drive)
 	cbdata.drive = drive;
 
 	bio_init(&bio, &bio_vec, 1);
-	bio_set_dev(&bio, bdev);
+	bio_init_fields(&bio, bdev, 0, &cbdata, floppy_rb0_cb, 0, 0);
 	bio_add_page(&bio, page, block_size(bdev), 0);
 
-	bio.bi_iter.bi_sector = 0;
 	bio.bi_flags |= (1 << BIO_QUIET);
-	bio.bi_private = &cbdata;
-	bio.bi_end_io = floppy_rb0_cb;
 	bio_set_op_attrs(&bio, REQ_OP_READ, 0);
 
 	init_completion(&cbdata.complete);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
