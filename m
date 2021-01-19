Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 543612FB6A4
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000PU-6o; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jVh-0001mn-1m
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4HUj6W/NOfwvQ4hWXecAzOMv7nwDKdO3lqDtfbKmLaw=; b=hiFpj0RIDY27Vtm+uwhHYEw0bi
 mhAEZqqISzd14BakxaauDosKKJM3MsFO4iI6dqKbUTiBJVEbVtiVlCVlSjSEqWpeiSOA2+Uf9oAIJ
 CulBXA04FBntomRjozGXuuI7Xo13U8W7aCGs+kD9+SpyJrOxEuEih1mlqbGjGeGHt93E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4HUj6W/NOfwvQ4hWXecAzOMv7nwDKdO3lqDtfbKmLaw=; b=aACv6itzcHUdRuZsP5OJIzv1Hv
 kS3uG91gvxrGFy5YkDA0UfgawLygBDljNF5gM5YFaQie7sUcJgbiw+VsoSTPnuoJ8ZT0YMFKRlEMN
 IDzrTdzJYj/cSR+++2wMi4sMv40DXtWBq/wmprzercQyXEh9IdwxqIWxnBnBsbjv1w1k=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jVU-00DzbA-5j
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033883; x=1642569883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wDWv58LHKZByyePyDiVmBTfQ0E5jsIWpV0zm9LPXpkA=;
 b=FvLr/Eqpa85DxHi5p6XDHt86mlz/EzR/zvlqeWHAx++CSTwW9D1qaUhX
 AbZSYmNnThy/IycBlJdPxAtJQ7grQq1Nwt11IjsovcM14Yo985lhR34SS
 ETT4aQINUzfuCe5cnJAeZyTdbP+LwgO9462SwvH5RFkWAWJ0BLq1wsFMu
 7bS162uYyH7/S+IHJMnPGtKwv6zVvtbeVfWA+Eg45WtPpuD7EsZA7sPFY
 6CF7b0Lu2MI5GlApVDnva4hOPhXYsTkxpqIxdxVTFBSsCdY80YP+nfQYS
 3kS6Q/Ccfnnup6zaOIserk1y9/sav29mW0O5vekn5lItQUpMGUVrVkjSB Q==;
IronPort-SDR: 64tEvnqpFMKOTturVnhJB/7CvUgQkgye/QIYsU0H7MfOAvCiXL3EYJA6ifUT0jrwx/uouAsyFF
 hpsuUrcTkFOzzsVamumIZeEPOx3wvg2ZEbSy7zqt8N6wJHmksxF+5/ysPN67RMzYvLcRS23Vgu
 L8WqZQlTLh2uao4KELniehh8LRNeQqGg3xuc2l9GTEQf5s170XuCUoiIzb9+3/MMJXkI4z5Um1
 BoKo3sG76ln66T11bTtYDYMfxaIXezDe8VP/MGsJQG7v1Alk+xOaqtwbDyw7bMfJRsDc1r+Ei+
 MK4=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="162201123"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:08:51 +0800
IronPort-SDR: tRjaK+Lo7+pI4wMHtIBHgbCm/XdTzaly3q55dQBEApK2W8AOCbetDprJSaXxshjsf/KUin2nJ6
 TST//hKq7VrH1z18hB8af3PFqHgApoTauVKVrDv+VnQ3fzM35QzIl0LaFuS43snIEIOERSrSOo
 taW0ZNIqNM4zUMiSNefe/EcdRVm4Gu7AfaxmzSLYpw5lAg0ZzNw7psf9xq6SzcwXMJPQauZu9X
 o8L3BginRkhC8wBqwLsM735fLYgV7nwQyBOBho35rjul2Lzl+0aSHsLa8r/xU5WFOiISxhm7Nd
 P6OftDxCByefcR6myxpL6+2K
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:51:26 -0800
IronPort-SDR: zqmdr8uNSGUFgZ7LrU0GCeEBE+HwqEp3d6yRCc4vmJxwtA/Yo4CFOUY62UCXmXuPUcpvGTrzPZ
 ZvCO6cAymIpMTiIbl4e2oge4VHFzjo0lUvlL/UEVWaUmjNMbvFL6pQOn3IbgBdVAxsKv/xFkfH
 Muc3sg0LIgVa0PCQf7zl6WshjAalrUxlLiYGPDB48hNEN7m0zho6fJXM/WqCYq7SGSNzGvX8Gl
 6TzvHwI3LTXrv+sfDj/IEWvxKvmwhi3VABVseKTOUqh9RvyxCMjwM25iJM4iyI7r5ezZ5UcdOF
 Ldg=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:08:51 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:13 -0800
Message-Id: <20210119050631.57073-20-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jVU-00DzbA-5j
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 19/37] bcache: use bio_init_fields in
 super
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
 drivers/md/bcache/super.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/md/bcache/super.c b/drivers/md/bcache/super.c
index a4752ac410dc..b4ced138a0c0 100644
--- a/drivers/md/bcache/super.c
+++ b/drivers/md/bcache/super.c
@@ -312,9 +312,7 @@ void bch_write_bdev_super(struct cached_dev *dc, struct closure *parent)
 	closure_init(cl, parent);
 
 	bio_init(bio, dc->sb_bv, 1);
-	bio_set_dev(bio, dc->bdev);
-	bio->bi_end_io	= write_bdev_super_endio;
-	bio->bi_private = dc;
+	bio_init_fields(bio, dc->bdev, 0, dc, write_bdev_super_endio, 0, 0);
 
 	closure_get(cl);
 	/* I/O request sent to backing device */
@@ -356,9 +354,7 @@ void bcache_write_super(struct cache_set *c)
 		ca->sb.version = version;
 
 	bio_init(bio, ca->sb_bv, 1);
-	bio_set_dev(bio, ca->bdev);
-	bio->bi_end_io	= write_super_endio;
-	bio->bi_private = ca;
+	bio_init_fields(bio, ca->bdev, 0, ca, write_super_endio, 0, 0);
 
 	closure_get(cl);
 	__write_super(&ca->sb, ca->sb_disk, bio);
@@ -402,9 +398,7 @@ static void uuid_io(struct cache_set *c, int op, unsigned long op_flags,
 
 		bio->bi_opf = REQ_SYNC | REQ_META | op_flags;
 		bio->bi_iter.bi_size = KEY_SIZE(k) << 9;
-
-		bio->bi_end_io	= uuid_endio;
-		bio->bi_private = cl;
+		bio_init_fields(bio, NULL, 0, cl, uuid_endio, 0, 0);
 		bio_set_op_attrs(bio, op, REQ_SYNC|REQ_META|op_flags);
 		bch_bio_map(bio, c->uuids);
 
@@ -566,12 +560,9 @@ static void prio_io(struct cache *ca, uint64_t bucket, int op,
 
 	closure_init_stack(cl);
 
-	bio->bi_iter.bi_sector	= bucket * ca->sb.bucket_size;
-	bio_set_dev(bio, ca->bdev);
 	bio->bi_iter.bi_size	= meta_bucket_bytes(&ca->sb);
-
-	bio->bi_end_io	= prio_endio;
-	bio->bi_private = ca;
+	bio_init_fields(bio, ca->bdev, bucket * ca->sb.bucket_size, ca,
+			prio_endio, 0, 0);
 	bio_set_op_attrs(bio, op, REQ_SYNC|REQ_META|op_flags);
 	bch_bio_map(bio, ca->disk_buckets);
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
