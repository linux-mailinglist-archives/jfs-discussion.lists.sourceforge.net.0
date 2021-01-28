Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4448B30761E
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Oq-0000P5-V2; Thu, 28 Jan 2021 12:27:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51TS-0002TA-Lq
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GiokWnsDUVnDNrQatN5DdrNCXHqp+rDbADDud40kvEQ=; b=dOEgebE/BrpVm0k0MBouv2OM5W
 3geQ80m2+18Y1bYhYvbWxJpRlHzJJk4edn8tEcZgELrnQizCykH/sa558Qnlb+gBHk+RDpvI23wVm
 lmljrSVxQFH6P6Q9fl+7lkbP1/3eU2G0OR0QtyY+AasSgWFsD4CXMtPq9Bo8gmvK/U3k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GiokWnsDUVnDNrQatN5DdrNCXHqp+rDbADDud40kvEQ=; b=J8MAG+5jwoYsPIhO5QeUfzAy+t
 gGkFY5PvZKrwBtz0dZlkbEuxghRV1Q6x06DAnChOmirb86yQkWy3CuV/aUKXb3MgeyVfnzoV4hD/2
 BlpudOb7jUKMTfv0bB4CT3V/ylttkqK+l2T4miwoOPEIYBmH5Jz9oDnaiTAVrHeRMMTc=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51TH-00DWBO-1D
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611817923; x=1643353923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1Q7huJyMDOVynURh2o3jolV4xRilOq3cl8xkF29/liU=;
 b=anwTJzsnPeuU8v2MR5qUG/LLQDL/uPHO6Ul8BNJ66udN2PpbY5//CWOJ
 r5OpjUbMprTL5dCNrnfkkrs3T6yr83n9ALhlhBi8mBkGmMDFnPWslyyDz
 K+vgZUDN4M81EThCSV2VWr56Y1Cz1F29DHKqTpIAoVvQ9jyA1raBXFrqz
 Mvb+HsBjKeOn+mV/QR+gX8MwH27QI9xdZf6ygq0K20HID7lxeMHDS2Ne7
 9HzRnAJf0AZDJh5hdJQRdLsK17rCprKh4M5RE4WMPwTQek4UwcJDiMYzU
 B/u+8HzUz++1ZDZFHBFPOigqYKoQqLUxY8P58koAm1a9uTrDRa0aUQ2gF w==;
IronPort-SDR: xNX03RWLXH/SOu0MudX2NNLyvlnWck3649IK1olcGdR3PkL/I+ncyY9DQEGwVU6LsOyW3/KzP8
 g0J8+aGTRH1lq+NmZtVVCsEdDGB+j3A5ln+qzS7TlVV4RD6QPHylxKVDN4MWnPW/p7Jp7tNero
 6jFJFYNE0zwRtb+GSBpAVNKsDExwUqiXhC64euWOI0MkMvt1XI6c3pjCaSFxd8PGN4CbjwAmWj
 VSS/0S95jbo1+/59lVolrPydi1ogyG3NJcY3z486H0nOTBPuvXPhn8pFrpEjTr3aUt74Og0NTg
 WyU=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="268892332"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:11:57 +0800
IronPort-SDR: KWsQC0zaKSqWOcQGYSbz2M0P/MUncTH1F3FgLdqJKKOqTl3AVHQE8aj0//3gWdmUxLnLkJSKxx
 Mt2Sq2yaOOclyKWEEyJbjtjWyqlhPFUVZwlK9dDiyaPZA54BS/vDZsXe9qvhz4jj8d2KJjvErY
 gqqB2Sb4lo3t5B1hrJiMc1cfMPseV62H/9ukci7qGCiyRIe7OzhPAm6dO8lqOi9XILPldSLIn0
 n7WcH8pgTLXvVRucz/7ZFKFPqRv1rXmipgl0eHv8HPNzq+nGM3YdFzHi6Bcut4vV6oyXHjEk9Y
 FTFWrmeqlX5LktHWwQ8est4q
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:54:15 -0800
IronPort-SDR: HYKG8+pmcZ9KZ4KZ0ijEvKFdi7W0dgGDXHFsWIaWNxW3zaOZulAuYVmKBU97gor6eDg6ylP5Ni
 6/ahnxe6yM79ewZwsqKvrfMjvqQiAhLVOYCtlxS8Bh1Gz/vhwXPlVRnl4SwtLQD680yYKL86EL
 o3y724i0cbqHM9ChTIb0swq0MYuYoJx+iwqVjQ/XkVzNSKEtJ8uwRbdybmRUPVMHWHGtPAl98+
 IjNd0sVxBZiY+I2eDgAQpiJ9r1dqmBNoZAqnfBCkqleNy/DSVZGKQaXDO89s0wR1FlZS/ZCSSd
 5w0=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:11:57 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:01 -0800
Message-Id: <20210128071133.60335-3-chaitanya.kulkarni@wdc.com>
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
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51TH-00DWBO-1D
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:43 +0000
Subject: [Jfs-discussion] [RFC PATCH 02/34] block: introduce and use bio_new
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

Introduce bio_new() helper and use it in blk-lib.c to allocate and
initialize various non-optional or semi-optional members of the bio
along with bio allocation done with bio_alloc(). Here we also calmp the
max_bvecs for bio with BIO_MAX_PAGES before we pass to bio_alloc().

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 block/blk-lib.c     |  6 +-----
 include/linux/bio.h | 25 +++++++++++++++++++++++++
 2 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/block/blk-lib.c b/block/blk-lib.c
index fb486a0bdb58..ec29415f00dd 100644
--- a/block/blk-lib.c
+++ b/block/blk-lib.c
@@ -14,17 +14,13 @@ struct bio *blk_next_bio(struct bio *bio, struct block_device *bdev,
 			sector_t sect, unsigned op, unsigned opf,
 			unsigned int nr_pages, gfp_t gfp)
 {
-	struct bio *new = bio_alloc(gfp, nr_pages);
+	struct bio *new = bio_new(bdev, sect, op, opf, gfp, nr_pages);
 
 	if (bio) {
 		bio_chain(bio, new);
 		submit_bio(bio);
 	}
 
-	new->bi_iter.bi_sector = sect;
-	bio_set_dev(new, bdev);
-	bio_set_op_attrs(new, op, opf);
-
 	return new;
 }
 
diff --git a/include/linux/bio.h b/include/linux/bio.h
index c74857cf1252..2a09ba100546 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -826,5 +826,30 @@ static inline void bio_set_polled(struct bio *bio, struct kiocb *kiocb)
 	if (!is_sync_kiocb(kiocb))
 		bio->bi_opf |= REQ_NOWAIT;
 }
+/**
+ * bio_new -	allcate and initialize new bio
+ * @bdev:	blockdev to issue discard for
+ * @sector:	start sector
+ * @op:		REQ_OP_XXX from enum req_opf
+ * @op_flags:	REQ_XXX from enum req_flag_bits
+ * @max_bvecs:	maximum bvec to be allocated for this bio
+ * @gfp_mask:	memory allocation flags (for bio_alloc)
+ *
+ * Description:
+ *    Allocates, initializes common members, and returns a new bio.
+ */
+static inline struct bio *bio_new(struct block_device *bdev, sector_t sector,
+				  unsigned int op, unsigned int op_flags,
+				  unsigned int max_bvecs, gfp_t gfp_mask)
+{
+	unsigned nr_bvec = clamp_t(unsigned int, max_bvecs, 0, BIO_MAX_PAGES);
+	struct bio *bio = bio_alloc(gfp_mask, nr_bvec);
+
+	bio_set_dev(bio, bdev);
+	bio->bi_iter.bi_sector = sector;
+	bio_set_op_attrs(bio, op, op_flags);
+
+	return bio;
+}
 
 #endif /* __LINUX_BIO_H */
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
