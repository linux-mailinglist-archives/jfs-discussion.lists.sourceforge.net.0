Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F89F30760D
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Or-0000PG-1A; Thu, 28 Jan 2021 12:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51TY-0007Bi-Qf
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P7P54SYBk3WAWakdG2wQiTJTcJE6baNmD7lTlqikqXM=; b=cBuu4fGWEAC5PvJ1qGub0zM0aZ
 Lbr3ll+xBmqTdao9Vk8mrQ1PFNwH6a1oM0ohr4TSv3Nsk7ZVq5YrU4/T55lvGHgS2WnFY53X43/Hf
 Jbmmvznyjuqh8SRvx2GeKFgs9xVexYSzJjuT5NZMjQ4tm07wDtk/mQOugeYLsg7KKWtU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P7P54SYBk3WAWakdG2wQiTJTcJE6baNmD7lTlqikqXM=; b=UmRsoak3lYhpFQhGRAJfahTiPV
 /YkMCyTVGJc8fg7e6oToWmtnubvDye0oecN8gozNFYEmpGUX0luI73h8rXpc/6P/BLMfbx0e1Bxg5
 G7SsCFVkYrJNkOc6EU4Qclfz+s3KMgrp9awTS3oiryVDUfhPdJIcXmh/+qPF57MUcID8=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51TP-00GGz7-T9
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611817931; x=1643353931;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jUCaPFeDv057fdkiILPSRkCuXPSAzqxSiECC+FKJaMI=;
 b=rZdX4isFfqRFM8pyFXHpkMjtnNa6QWdbeUC+wLo33AirJtiO3dLwORcr
 WRJNDHxBFOXt1yZ4YnuQkLa45bRa5jPiuFN5AReDiefC1MCkFSNMG56uN
 jtoR+Wsj1PjWhCA9AL9w40oS1iNJGG8Zs87NnHvyekk/IzXWKSRUpXnLF
 ncaBxzFsj907x5y8WJ/Peg+CDW+MWN6YoGkkcisOa4O4RLDTauo3QISTN
 stTICKIPZF3UUInMe4JJBtOE+dSZg4VGdmTt440PJfjR9DosfC03XBWXF
 GAS7MxJTGKAdSUi9TZKbfN2uEN3GqJPEUQpqcw5CmwDSHNB24vqbCvALS A==;
IronPort-SDR: PvDs/RPm4noYVu+HTez9xRkcYFPh2dZniouyFGNdaYpY7sKbcxSBxUER6FsgXYLXL4esxcXReK
 5qlCu5+3MUAjNxxEooIaLhFWTNpVChzsIvyEV2ap5Z2nXQ+TM6sDucK1tbkuEMWgIpF1c4xqe/
 JfuIKWHva+prZQkkPAzlJwnsMqX+zF5bmxwiEK2Gw/exO+HMY6ugH3RNFjDCr/3q3LpYkayuav
 q7Yp/ey28xyJqiYm8yZPynCmd+9a79qBjR99OvrYzkDIpipAJYAwBSpE85YXtegmN4rlsBUq0D
 Tk8=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="162963115"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:12:06 +0800
IronPort-SDR: E/takNGxYoaatpMl9OfiQ6BSsOPU/6PmmAK3RLK0KLe+UmJ5fKKcpMY2RAKN5e4dPC7CUDzfN1
 Cc2gdDGtmPsbiju/MqK9knxC7sxE3cPh+pypMajeUZxSqQtlkSeL4saIqjIc9FAl0nrzTMYGa7
 0gHCgrGx1g5K5V+LKfsQs04CEdwbaF7TCtvofz9bGeqq/LnRa6Cpo6z+NLJufj3BB9qZaKdlHJ
 jKHq4dRiI4rTZ08KiYoZQEpEB+SoFAKAKwdIgx/keKgCbE8Neq0xYJoOu/L1C2hl0WfEaEVp+v
 G6A/s1F2qi4MJOUG1GUAwJ8y
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:54:24 -0800
IronPort-SDR: d5xTirF8Ys37shQjxL90xQdmAvrvSyaDd23k+ldZQk6g8Gmyh3lDvEoGm16xcyp5mSBaZTpxOa
 PvC1PFp6twA2TpPlG+Ql+/AG65S9RMLgGFawcQCbg9J6k/x2AMPUiKYtsSCC84Z+EGYfmFKoID
 N3xp6Srvi9c6y+EZp98pFBd59WcY1NGSO1F5aHMorlNIT26uZMyL8pegMXpgjACziNosRf/+TT
 qFeHE9fwJbeXCBkPpJ7sXhYMSQdfV8ojzZIb3gXAYZT1zkKG2mcOAVOk/sf7gRxWJd9WgQISSA
 lhk=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:12:06 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:02 -0800
Message-Id: <20210128071133.60335-4-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.141 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51TP-00GGz7-T9
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:42 +0000
Subject: [Jfs-discussion] [RFC PATCH 03/34] drdb: use bio_new in drdb
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
 drivers/block/drbd/drbd_receiver.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
index 09c86ef3f0fd..e1cd3427b28b 100644
--- a/drivers/block/drbd/drbd_receiver.c
+++ b/drivers/block/drbd/drbd_receiver.c
@@ -1643,6 +1643,7 @@ int drbd_submit_peer_request(struct drbd_device *device,
 	struct bio *bio;
 	struct page *page = peer_req->pages;
 	sector_t sector = peer_req->i.sector;
+	struct block_device *bdev = device->ldev->backing_bdev;
 	unsigned data_size = peer_req->i.size;
 	unsigned n_bios = 0;
 	unsigned nr_pages = (data_size + PAGE_SIZE -1) >> PAGE_SHIFT;
@@ -1687,15 +1688,12 @@ int drbd_submit_peer_request(struct drbd_device *device,
 	 * generated bio, but a bio allocated on behalf of the peer.
 	 */
 next_bio:
-	bio = bio_alloc(GFP_NOIO, nr_pages);
+	bio = bio_new(bdev, sector, op, op_flags, GFP_NOIO, nr_pages);
 	if (!bio) {
 		drbd_err(device, "submit_ee: Allocation of a bio failed (nr_pages=%u)\n", nr_pages);
 		goto fail;
 	}
 	/* > peer_req->i.sector, unless this is the first bio */
-	bio->bi_iter.bi_sector = sector;
-	bio_set_dev(bio, device->ldev->backing_bdev);
-	bio_set_op_attrs(bio, op, op_flags);
 	bio->bi_private = peer_req;
 	bio->bi_end_io = drbd_peer_request_endio;
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
