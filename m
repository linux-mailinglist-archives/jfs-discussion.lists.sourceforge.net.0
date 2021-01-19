Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF5D2FB6AF
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000OI-FP; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jUp-0000LS-BQ
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b0h2vby5vwMB5xfg4WK73io15g6umNQUUUkgWPE0f5g=; b=UVzHkJ+Wb0UrtFOIT6x+N6Tj9v
 sTb4hHdtK68z4XDZMmRE7lsDH94Gfv4ifK12QqZy3B9WLh/NsP8jIwggzn9prF+bFz5Wu0Z50xY3Y
 QPZiWSIAcl38l4rb3zbwRUjYkctTg/zXXL9ek5gVvLMoJx+dUiq1FIehpY2xGaRkt7DQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b0h2vby5vwMB5xfg4WK73io15g6umNQUUUkgWPE0f5g=; b=ZEvZbUla1SGaxb/8meUj5Ahw2w
 CBb24bmrHN7nxRyubV5yR/LimGfKZ44aW9Rrs/ToVkRU3yRG50BJ8rYwZlhnswxILfDJl9B3nFrBX
 D8WdE6bvfVYaaBEgOQPO0j84Y7mH1DTYdU7ZSyGYeSQ4kCzXzHna7dMQCtm6veH1H8wE=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jUm-006vnR-Oj
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033840; x=1642569840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cfu0m5VKAuNxHu1l31PcK7nm7GIw08f0wSHX5FdYb7w=;
 b=DNFy16reEL1qun8shi1xPKP1GogSNsWiMQpU6lGeiyInMfW1L0rNlTgD
 5z4H98WcP8uI2pvzJokhCcsC5ptPq542wZwE8zInavqYEQFz65sojMVl9
 gZaBF0SYPHsw3PB4ijfUmJg/qmlzduU6Tzt6+TOhKio/fvdxulz5jLvgZ
 cB37VySj5o3js4RMQ2+7BkP+AZDXf/x4XdyUzYtAhdTEJaHjmVYDUi0Xu
 Cjoj8VB50inhNKdpaZlto/lXeBF9xVm4/U0OPLxBtncjT091eZYPDGKG4
 mCEq2Aclf0sLT4mYKB9Kd98WfJyRy6SfVGOWLsdTnIP1GbPTdzkVcFbEB w==;
IronPort-SDR: 7jVWDaB8VVzoR4H+44k5ElxCIzoV9Q4jk5N8jQWCXpc0pbRWddfcJABFezpYC1xZjnoCbPaGvo
 95XLlqcAEcO9360cTGXOTQAqIBdXOhbDt4OxwJavcLet9Ug4/hPR1LUxCsC3UXQda1C4ZgQsWy
 w/PY2nKz//ZT5ZC2z7+m/N2vJHkQNYJdMIfax1/hMXEoeW3V04gqQHXhxVgGwzFpv/gUP+5ZWI
 2OYeIzYp5Dex+5RnCetY6nGtb50CKI/GEaMUtIQKurFfnOyMD36tEZIMStCtiIBEQc6KX9ucnX
 euQ=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157758592"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:08:07 +0800
IronPort-SDR: LOJicG4PKyC2Rw5OBwykOt3mHMx5rkXipU1iRCCMiPYTGP6TgYKUEgQiX/L8eTFX9nKMOR8LBu
 c4r1y7pqInO+s2bL5NxxNGSwZz2x+/lzqfg0NImM3/Tx4RCAwBtySkcOw/zVe3ekfFR5u49Zad
 EaGQoJWnjftlVEtSmBsoRNo9AOE6KpZpjpZMITtVL3jK5/vnKygwPfkzpBxTNGSYWggo/ofHu1
 pEsYoSSbGZzwCoskBQXPa7LA7brf5PJPQIF7FnrH1yT+SwsC3NRxsBpJr/rztyK7GEPskFw8LZ
 jfBCmSXkEG2uTEcWhAqDHdO9
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:50:42 -0800
IronPort-SDR: BI4IRRImuMT37W/0fgUHv+jo9/cFXOLHBSkHLB71uXGRhjXdqsMAnoeLSicBDzNjCtXE6Dh3IX
 0CYkAjVxbNezhsYqTHeC7O5MKiUI+nte0sRu7g2EHJnUc9MH1BYN8otchvz0lbdHnJk4iU7F4c
 WmfRkOrAtQMZI0QoGyPGUddwOVe1ADf9CPub9wyiRWCIGto1nEeON+Wfy1+NBrAsdMrCFgxnqp
 vom68oJ4IlK86VNF+Hzp5EiJIZpEBG12SHeKkbAPc06Spul2+gAW8LkpVcP5k8qn/tXfmApHrz
 H7o=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:08:07 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:07 -0800
Message-Id: <20210119050631.57073-14-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jUm-006vnR-Oj
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 13/37] drdb: use bio_init_fields in
 actlog
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
 drivers/block/drbd/drbd_actlog.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/block/drbd/drbd_actlog.c b/drivers/block/drbd/drbd_actlog.c
index 7227fc7ab8ed..733679cf456b 100644
--- a/drivers/block/drbd/drbd_actlog.c
+++ b/drivers/block/drbd/drbd_actlog.c
@@ -139,13 +139,10 @@ static int _drbd_md_sync_page_io(struct drbd_device *device,
 	op_flags |= REQ_SYNC;
 
 	bio = bio_alloc_drbd(GFP_NOIO);
-	bio_set_dev(bio, bdev->md_bdev);
-	bio->bi_iter.bi_sector = sector;
+	bio_init_fields(bio, bdev->md_bdev, sector, device, drbd_md_endio, 0, 0);
 	err = -EIO;
 	if (bio_add_page(bio, device->md_io.page, size, 0) != size)
 		goto out;
-	bio->bi_private = device;
-	bio->bi_end_io = drbd_md_endio;
 	bio_set_op_attrs(bio, op, op_flags);
 
 	if (op != REQ_OP_WRITE && device->state.disk == D_DISKLESS && device->ldev == NULL)
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
