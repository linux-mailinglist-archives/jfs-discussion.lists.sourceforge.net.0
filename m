Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AB3307616
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Or-0000Ps-7O; Thu, 28 Jan 2021 12:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51UD-0007DE-Ao
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LnxNMQnjF8KSYNsU0FWAm79MArfDOKBLAoCjx4a+n6k=; b=NWFs2CK93mI4ZtzAhbRE2O7QB9
 0J9lhCef/v78ZWv4EccppsigSf8GVmgdz4F5j3TMpeU4mqF+IMIDN4lkFrvdIFiRu0QyvvKp1X757
 HwrZAkNHmQ9JGv/mlDF8OBOXX/7igjSFFmprEMcsOiK4v7AMVFqtzBfNMYU5m5E7X44c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LnxNMQnjF8KSYNsU0FWAm79MArfDOKBLAoCjx4a+n6k=; b=LiqEkrlg5bvrblG7FDLtgp9jIW
 9xIDODIaVSye1zHlGYrhg2jTF2tdXopRvfUcpvIcWHKWlesM0NlKctDRu+/DWr2jPmwR+GyF0WB+r
 u3mUcXb2IGvhKZfHTgTzBFMaDeRm+U+uZUK9ttF7085/WpB4bDZnmKauJElW78h0njPA=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51Tt-0000P5-KM
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611817961; x=1643353961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QAiSNZxQXn+fhhqJHg770cKqGnQ7j5esbXKR/QGBS14=;
 b=b72v6giGqdTxCIEE5j8bQweCFdHH7VerEPcwH/v6QKCl2WXJzm4eetU9
 1Vc1Z40PmG7p4CaEvux0Gd2l4Cj0DdI/vX7NLAy2cPs42vuaUM7cpn3P+
 09T6GjKuiOaOYJh7TAZmGPbI3S7dem91SZRRMtMEcQcCc6W/NrzRgYpsA
 Es58BJ8YV7N7Sl9QZCaLPQl8DEtuVY28t8uduwBW/eKpkeRvOKhCH85pI
 86vD3HbXuOeSfdsU9+VP7pPJZGVULYXT0xKVlHR6TUc1Ca6inG6qdNEKL
 eyd5BaghyN2lobRdWWBqk7mEh7CQobBfTZTN2xASIhkzNAFKJZIB/yf68 A==;
IronPort-SDR: moZxtw9PPJvoFhrleQwnNkYs+wMuV9WDiajbNU7hRbvraZg7RfENxXkoweoyIhMvt8Ic50fS5a
 wfWuSEyMvu2giiwS0ebcgE2+QuFQnFN7zhG85B1pgbaKBhQe72EcFt4LqRlk/igGNOAySaEx2E
 d3sexgTXyYQpbyDb1G2zBxDofzuomQ96pNNcoJCvEL8R9/8e9MZTERBaL0y7Vlh1viy6X0aM45
 6a6QlQD1dVMKhK+llZUhC5BMUSb7QIgXeS08EHqO3fdfpxbbQT2Prf4EvhdL74HBghfnEg8xTc
 rhk=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158517274"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:12:36 +0800
IronPort-SDR: 6rX6mn5RVEa5XO4dDueacAyG0Ln8u4/dTC77U7snK7DX6vfLRBnLDKHwXakhgN2uxMJHD6b+Pp
 qYQM9uRqrA/BTVs3z4dfs55HrMOWr/JWkalAhntqPv99ywLvzdSVsP2Xr+9VzYtE2RNUV7pxho
 p6+wD8R88cKQ7/av7j4SgtF0kOgbkbv/wKW/dlIAF+NDRQg9IB1WKuDHaVJCYZ5fOGNg7Z+Y31
 nZUs0zMB9K/919nsZm5JyKbGvaZC0zua6Z4WgFoPqyuaa5XtWis45urwt6ETFinjtJtbMULHmC
 Fp0l0beGli9VAwyFi4vcxlep
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:56:56 -0800
IronPort-SDR: Luc6lg4Pa+bVHOb4HzkXJiWLGqMg6JC6Nyg0Lqb88ZIBDNylXDUPHvAGuri+ui5nWB8hV8jug9
 qFWTXFaOWHAL0oehOyPdERabJ1LaG9aVOt3b6RTgmVCVF9xZaJrmkG+mjzow98LgNG5t1Hjoni
 gqXmojTILo9AyCGo2PpCozas3remWiyjnR1rz1m7Heq2aoYdQ+f2mWDUtJhIIR3UJyQKknW4V+
 XZO06It7hG6XcBrRwkAZf9a8HSkB5bDSC1ddzu75XBYoKVtN9lipurMfP/HgqVuXVuz/kSCAwn
 InQ=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:12:36 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:05 -0800
Message-Id: <20210128071133.60335-7-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l51Tt-0000P5-KM
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:42 +0000
Subject: [Jfs-discussion] [RFC PATCH 06/34] zram: use bio_new
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
 drivers/block/zram/zram_drv.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/block/zram/zram_drv.c b/drivers/block/zram/zram_drv.c
index d7018543842e..5d744e528d4f 100644
--- a/drivers/block/zram/zram_drv.c
+++ b/drivers/block/zram/zram_drv.c
@@ -587,12 +587,11 @@ static int read_from_bdev_async(struct zram *zram, struct bio_vec *bvec,
 {
 	struct bio *bio;
 
-	bio = bio_alloc(GFP_ATOMIC, 1);
+	bio = bio_alloc(zram->bdev, entry * (PAGE_SIZE >> 9), 0, 0,
+			1, GFP_ATOMIC);
 	if (!bio)
 		return -ENOMEM;
 
-	bio->bi_iter.bi_sector = entry * (PAGE_SIZE >> 9);
-	bio_set_dev(bio, zram->bdev);
 	if (!bio_add_page(bio, bvec->bv_page, bvec->bv_len, bvec->bv_offset)) {
 		bio_put(bio);
 		return -EIO;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
