Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 920D02FB69D
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000Nd-7Q; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jUc-0000JM-27
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IqUUBBTh1gwIjbs9s2kStTnBFuEawpq3B90BzlaiO/k=; b=KTM/R22S2ypMPpz8UQT309U+jd
 z2tprbO4OQ+4c2tazFtJGJ7+etnm7wMu5P7jxw02PsX1eWtdDttVJuEfHV44WHcLcZj0IXeIydRGy
 XV0ndt5doWj/m9umte4KGHD8lv5BAcG23k/17eIJClqNZJQYdU2htZptMZkpyGkLKYKw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IqUUBBTh1gwIjbs9s2kStTnBFuEawpq3B90BzlaiO/k=; b=EcOossDgWGpg7zFz5IW9LgLQzV
 jGEvH8YcasIfDG0fCko/reJHaxHsD57MXQ4hT37ZRa+4W/8+y7WVuJLWfZKLL37w13JUGaJVv2gWO
 LjeB0h2/lrds6mk5Hoi99ZIiMFmHgkVcUwarP4Ad0Jq8O9pcVWqywtQThctOOMrrLusw=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jUS-00DzR4-Mz
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033820; x=1642569820;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tvJHgqE+W7G2ML+CypUNmJZ3x4g/IlwhC+0r2ps0VWM=;
 b=mSOKixewctD8w8aYpnqNPyBK+Di1XS5YQQ8w03efAOqyZUo0XDclu2H9
 cU5/4rK43RjDTPAtKa/QtytGCEEgPes96FmZfamMd2SwuZMR6ihjK3n2Q
 PiyRJ4ceZPJ5yoZJZ/Ckr0BY+h/Xnkpj5xDqPj+vABAYFhyglx1IfedtS
 cZCyQB/EBbwfVV3GcYi/RvAfPiB2zMmciOBGH5t3wHvN/8xe0pyaijoX5
 9k8eAVT3KAC+nGnv2YLJFgFF0g8XaSEsy8nK2eJmaEGbPc8ajNzKnW8IJ
 Cb41E0zZeeMNpPyxGKAZBH3uoVd9vCwELH/Y1eSfiVC3vOjyZUp5CTunQ w==;
IronPort-SDR: eG4yrcsjumEIH/i6xqkHFQhxg60jhzuqAoaOZgA+Y520mqSVGZ37qGU9cZ7Jra7O7sHXQLvc1G
 ZhrEyuIkOdvEE3bHu1+8qX41Alt2yjmh9EwoBtnqVXdWA00m3qgk+QvM3wJh1H2FzU6iW1i3zm
 DPf7V6UybnekZbu9mcdPr92OK5h6x24Vl/QYy9UWWtpSdqjG+rQrOm4N/u6lmpK5GoqSzWXqZ7
 5f6C4ab0QUI+UMD1qYZJQRtNySHAghLbP/iEoSXQNQNZnF4S7SC8W+oePvtxEwREvPKTfMIWJm
 gAQ=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="158940520"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:07:55 +0800
IronPort-SDR: ICptDVDnE/i4gS7zZ1H90zBHoLKK7RMAiCJODH6R4LhY2bvaVlWt43HIVT2njosN9M14ZMATKE
 eoMbdHEWWAnX2MrDMdOsCHG97n9j9d/lAz5USt5y+WNJu9cdlgHhmPdzyWKgte03cSH4KqTepx
 OMJo4IXUcoSAR5GFfH3z/phqBjaI3h/o18RuF3VRAleCQ4Ifd3GOUdxkyBlidS300KCKEDWgdE
 I0YtbZGkk05mxQs7cxvmEz6joUJJU5W1qrMM3N5R2psSwD6wHgWyhMrB/hbk/fMKsTeFpKUWVb
 8tYYJ0MRfnoDCgaerqa9LEOI
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:52:32 -0800
IronPort-SDR: HfWY3om+yf0xJZDCeO7vzX4qVknDvDGJ6ma4/WV7I62vTgKsXgZzhM0ZULmlPQ+OArppKpZagb
 2D+mRhA2IGb1emIpbOZ6FTF970SZgSIja2ei7WMigALEAQdtMpSzVo//nIAbZ1wNVJo/414BKz
 A1WUO/T5vGii4BJKAkPud7zlDfpbr9iZjAmuNFOXPO1Y6zbT0Inzt3aMei0oz3YT9sfu+Dztk5
 Fg0ppCRIMSkEdmvmSQl8FchZI4H3p6KBElZq4HVESV4gQgEhlwohxssYunDRqcI1BVUhdQDk7h
 o0c=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:07:54 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:05 -0800
Message-Id: <20210119050631.57073-12-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jUS-00DzR4-Mz
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 11/37] jfs: use bio_init_fields in
 logmgr
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
 fs/jfs/jfs_logmgr.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 9330eff210e0..ee7407ca32c0 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1980,15 +1980,11 @@ static int lbmRead(struct jfs_log * log, int pn, struct lbuf ** bpp)
 	bp->l_flag |= lbmREAD;
 
 	bio = bio_alloc(GFP_NOFS, 1);
-
-	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
-	bio_set_dev(bio, log->bdev);
-
+	bio_init_fields(bio, log->bdev, bp->l_blkno << (log->l2bsize - 9),
+			log->bdev, 0, lbmIODone, bp, 0, 0);
 	bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 	BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);
 
-	bio->bi_end_io = lbmIODone;
-	bio->bi_private = bp;
 	bio->bi_opf = REQ_OP_READ;
 	/*check if journaling to disk has been disabled*/
 	if (log->no_integrity) {
@@ -2125,14 +2121,10 @@ static void lbmStartIO(struct lbuf * bp)
 	jfs_info("lbmStartIO");
 
 	bio = bio_alloc(GFP_NOFS, 1);
-	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
-	bio_set_dev(bio, log->bdev);
-
+	bio_init_fields(bio, log->bdev, bp->l_blkno << (log->l2bsize - 9),
+			log->bdev, 0, lbmIODone, bp, 0, 0);
 	bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 	BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);
-
-	bio->bi_end_io = lbmIODone;
-	bio->bi_private = bp;
 	bio->bi_opf = REQ_OP_WRITE | REQ_SYNC;
 
 	/* check if journaling to disk has been disabled */
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
