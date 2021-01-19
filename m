Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 391F62FB69A
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000Oj-ND; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jVA-0007H3-MJ
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KOOFEBXO+/FXhNrZDCCksj2hsynlH5fq+OQlvqBO8Cc=; b=YAxnerb+oUmBCtYEBENzi90wPg
 MJIngd1ukYUy10j+Rh6/29z/dGzdCZiY0QfUrE/sqAvMxg2AEwQpqAfVvvFp6QnGAOwJjwVIX5YiR
 9ctAfLPjagxuVN5Gi3r7uUxtGIic1AxJng5ZBGeuLn1z4FpHdE2H7bjHMN93ThaQ4Bok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KOOFEBXO+/FXhNrZDCCksj2hsynlH5fq+OQlvqBO8Cc=; b=XfQyTOAOZ0Cp5MiwdTPgiTIRys
 BFxbBewdfPsGB5C/VKlPxqf/wdilBlu0U4gxOqWzGFlDPOKDqVVb0S24Wr6V5Ih9xOO+nvXC50ICk
 mSJWHEFmNMMkuNPc/7vC29OzZVIA6tX33X/qA8daovS96XkPZnFOZ0UJTkmWUdJ4Um88=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jV0-00DzYz-1d
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033853; x=1642569853;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w8Mrhn53C/xIBUdIFO7UKVArjHLD+jnktLncJKflGH0=;
 b=ZtQ1+CAe0Lb/7FYiJAtnsd9DLeTwt9vP0kDP0zf8p3RxBSEuLJH6joio
 SMfF4XC+yoCaHArw8P2mDaWcGtuZwZRPR64R7kQGizQisqipysUV+xu6e
 pWOwcnzlI6mdpR06naJtVyjIFDhrPNQHM5MY3mDSfEQ8Bml61Vc8GXDAZ
 1crB6rj1vSOuydAYpPj7L0FPXc8NOmKDZKxt1VKlIV19AEMeyH9CTAC3b
 1sz9Y9nJmI8fI1pfLbh1IUxHM2Qki7jTnULB/m3rdv8Nac78+ztbaPkiL
 izcDMtRWjlGOoYZPkrsgzADWexHOhFn8GOG0/KGMJk+95ivgCrCvWWFyE g==;
IronPort-SDR: ITBU4JqLjRX1O0sW2NXtD8iUK4wpExPjifsLEV7EgDMOIJDGgJ4XnFtkthdSxONiMdAklr1ZtM
 WYrNaA20dM6PoAYPEN4roPe6VQNx3c04NUeekSn3uMDTAEqCkHBVg0fubcXyONrauYpZXrkl+i
 /r1zqdRyzoukTe3kpnhDsbJtXgmGdezRL9KBOXqOV6kQasroBNpmWJP8eZuosNtSRRDqxJVU6H
 YjiAxJXp7FOIfQ7adu0KiBVcTX/L2wcMMrZFtargyFTyvjvqGvz0mSerQr09piBDG/X60kRc/p
 qRU=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268081067"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:08:44 +0800
IronPort-SDR: HWeINv0JOzhoP3f1MCeQvHP3tAt1Cl+f6Xrw0PZZdsEMUZSSC7z0QNPRIxINPcwjR+e5dLjILS
 n5BG/rFml+Bn3aiGFPLdxQScoVLs+QcqsT6026S3fWMq12au+JgzRw1xnKF9yS2YLwtgfF6mO9
 FAMUNGNr/tkcFgBa4LVj07xqcYBeRhZLjxMCyaluLEsHBNA9dV9vnniz+qXEN0nOIuYGJJdCnR
 OqM1ouSSJoK19MfC3MRmHvj2lGkBAt3U5c8FJzGxNkQ9Ttlq/DxSwBbtF/IPRUOJSCiyaOlT/R
 U7kg+dBWCjTjRLK2oZ0BZUqp
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:53:22 -0800
IronPort-SDR: xHO7HSedCSnJKcraGlp7cKbNn6U0vc/h0J7EqOAnrofU3EEgY4EwjLXGgaVPQ5fUfdFd219vRC
 LbXct13YZVVN6KiDu7+byPcBbjh+W64o6mdrAGqpUIdo+laa5H7zxxeLGqJmYjiZ2ypNwYS6EG
 9RidoyBhQkvm19kb9tceoxELnw81qM1BKYuv80rD63H6aZrLZIzawrq4dPgHk7mfEo+EtG3r5z
 NCmJQgYY2IUYeXtIflYFA9t16yIX5Qq8Uqp9iDzkQXKkZabUiMynH1bRZzCY09gOJtgWn+rlXY
 Wrs=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:08:44 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:12 -0800
Message-Id: <20210119050631.57073-19-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jV0-00DzYz-1d
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 18/37] bcache: use bio_init_fields in
 journal
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
 drivers/md/bcache/journal.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/md/bcache/journal.c b/drivers/md/bcache/journal.c
index aefbdb7e003b..0aabcb5cf2ad 100644
--- a/drivers/md/bcache/journal.c
+++ b/drivers/md/bcache/journal.c
@@ -54,12 +54,10 @@ reread:		left = ca->sb.bucket_size - offset;
 		len = min_t(unsigned int, left, PAGE_SECTORS << JSET_BITS);
 
 		bio_reset(bio);
-		bio->bi_iter.bi_sector	= bucket + offset;
-		bio_set_dev(bio, ca->bdev);
+		bio_init_fields(bio, ca->bdev, bucket + offset,
+				&cl, journal_read_endio, 0, 0);
 		bio->bi_iter.bi_size	= len << 9;
 
-		bio->bi_end_io	= journal_read_endio;
-		bio->bi_private = &cl;
 		bio_set_op_attrs(bio, REQ_OP_READ, 0);
 		bch_bio_map(bio, data);
 
@@ -588,6 +586,7 @@ static void do_journal_discard(struct cache *ca)
 {
 	struct journal_device *ja = &ca->journal;
 	struct bio *bio = &ja->discard_bio;
+	sector_t sect;
 
 	if (!ca->discard) {
 		ja->discard_idx = ja->last_idx;
@@ -613,12 +612,10 @@ static void do_journal_discard(struct cache *ca)
 
 		bio_init(bio, bio->bi_inline_vecs, 1);
 		bio_set_op_attrs(bio, REQ_OP_DISCARD, 0);
-		bio->bi_iter.bi_sector	= bucket_to_sector(ca->set,
-						ca->sb.d[ja->discard_idx]);
-		bio_set_dev(bio, ca->bdev);
 		bio->bi_iter.bi_size	= bucket_bytes(ca);
-		bio->bi_end_io		= journal_discard_endio;
-
+		sect = bucket_to_sector(ca->set, ca->sb.d[ja->discard_idx]);
+		bio_init_fields(bio, ca->bdev, sect, NULL,
+				journal_discard_endio, 0, 0);
 		closure_get(&ca->set->cl);
 		INIT_WORK(&ja->discard_work, journal_discard_work);
 		queue_work(bch_journal_wq, &ja->discard_work);
@@ -774,12 +771,10 @@ static void journal_write_unlocked(struct closure *cl)
 		atomic_long_add(sectors, &ca->meta_sectors_written);
 
 		bio_reset(bio);
-		bio->bi_iter.bi_sector	= PTR_OFFSET(k, i);
-		bio_set_dev(bio, ca->bdev);
 		bio->bi_iter.bi_size = sectors << 9;
 
-		bio->bi_end_io	= journal_write_endio;
-		bio->bi_private = w;
+		bio_init_fields(bio, ca->bdev, PTR_OFFSET(k, i), w,
+				journal_write_endio, 0, 0);
 		bio_set_op_attrs(bio, REQ_OP_WRITE,
 				 REQ_SYNC|REQ_META|REQ_PREFLUSH|REQ_FUA);
 		bch_bio_map(bio, w->data);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
