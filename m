Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B6A2FB6A2
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000Q0-H7; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jWG-0000Wm-3q
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1jd1hY38ZQtnmQq8SGQKQgpmxEuxS94ErVD8w+BKKZY=; b=iy4yTO9tgd3FnPt1+BNOicD4/2
 wbnLzM1WcFxFjQsiq1Tw5dd3juFhVppobehZFFyTdxskrO50k8jFqQAMPGKuTfhSYhFQ2WIUasVNl
 pgERuxlVe+bpW1T1p18OHpMWYflyn/ehBET2Qohaned5AvcH39FNwmmezaPUeP51oTZw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1jd1hY38ZQtnmQq8SGQKQgpmxEuxS94ErVD8w+BKKZY=; b=copAoHu0Quj0DPog+ubfjB5fqu
 7JiU6g/vnHGQNlZY6k6UGyiZEpR8xlxG7v2iQtgsZgNx+AsBaGBeUqkMu4k1n+t7yOa/s4009Om/f
 HZL3ZBda5S7A2r2CTeYHsZp6Wd4NH+LTaXS7RB5op72Yj5J9IrjIDuDH29y+61ktdsPY=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jW7-00Dzep-IU
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033923; x=1642569923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BDROplFBhH1R4EEGILjaJK5BhqTJ1siF7I5dea87B68=;
 b=ZChNlxRiw46jyAGwPir4a2K3OeHlUO9mVCmrrHa93bUgMevSVixNKAzx
 V2CCsnwnTWaBHEIM1u3b0fJpJeRSn5IszqfdxDdRSHo3+l9onkXQtllQg
 Y649xF+nsaN3rVC/jkLcHCowPDwy4yD6P3xp7w4/Bi57h0OuJN+hYaeUC
 /XoP14xIl09/xUGHlOhQTWjccCHLFHwLwGm11r/lr/P4T39UBn7K0dBQX
 AEMbb0Kr4QVzeaDnfKfyBziDrN66AVoLauhLlm+6qXm9WI8tE4U8FjYm+
 tzFoMFxfVwvckOHZBa0/6AVCjkMmolG2uDPBQzgtF6zc0pZekYGNZmF+t g==;
IronPort-SDR: mkSNvr4q7neNDlyQ0uD/UWCR/wvqbntWMnD7Mhmv+XQ1Z9F14a0GK7POy7bd1gpusv2K8SZRg+
 rSzpr1yPb/jDtYofyvl0T//fpFSsG/5eSktQh15tF7JjTeRMLV6M2nqv0m5ghJ4X3LXrsXRMc8
 1HaDNh5PO7EQReI6ZNNG5AbjjFbvjbXUNJmp9zTtzLxyJQGz8obIH3Z0+fEP42VrFozg7/r+zB
 MOTi+sbJLpDtFXXy6AT1Omo+Zri8pWYq8REOJmI/88aExJZ44kjiA5+YWaimL7NC3ja/goXpuL
 yGQ=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="162201169"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:09:14 +0800
IronPort-SDR: wHDa/+d4twti0PudrOxXeGvI+Zd4Du1YYvx+uTwBT5ow8qsmbamIsQLSmU6CoHzbiJTNDLaqSE
 dIHVDaTUxW0gwHDYZ47BDbYusOv9M4kERxYvZVGQgT0QPe3NRx0AVhc2yQu8FIGFHcMokhK8O8
 3KKyevErnZIap59fJK25huUCJIp7DawELotLdtAfPADQJ0LIV875Mgngv9mHAyR+rwnozMiqqf
 63VwvK0rmQxvOSpydAjWrPIJMetKh3tNj6dTala45QyQ0lyfJzQpNDv9cBE71/WNJfI19GyMzh
 LuJNtwltebFcCtDX+Zc59W0V
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:53:52 -0800
IronPort-SDR: TUB4fUCiZmYYR74Zcq3vSkW9sI4g+StmmNi9bjrhbbXw9jVqPyfJUUEFsMQdyN9Xq4K6n7Gn8a
 Xr6vVD5OtZEwhLTDm6sJ+DJHPnZcY1k4fpGLKffcDnsEbkcmhWxrNLKyN/hbblQkxxwTcZE2KU
 qYtpp06Bbo/MdAwTBedKhVuo+MaJ3eMXDG6FXDQH5gjW129P5pemibZ8rtfa1SbEY1fp51cPiu
 ZnsBDBB15dkF/zopQoBN7n0qT3SGiHxK3hsHzU8k+P+0nyNJdJcQLu/AX3kBJLLH5SuOOpZND1
 ur4=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:09:14 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:16 -0800
Message-Id: <20210119050631.57073-23-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jW7-00Dzep-IU
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 22/37] dm-crypt: use bio_init_fields
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
 drivers/md/dm-crypt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
index 53791138d78b..b03dbcbff491 100644
--- a/drivers/md/dm-crypt.c
+++ b/drivers/md/dm-crypt.c
@@ -1764,9 +1764,7 @@ static void clone_init(struct dm_crypt_io *io, struct bio *clone)
 {
 	struct crypt_config *cc = io->cc;
 
-	clone->bi_private = io;
-	clone->bi_end_io  = crypt_endio;
-	bio_set_dev(clone, cc->dev->bdev);
+	bio_init_fields(clone, cc->dev->bdev, 0, io, crypt_endio, 0, 0);
 	clone->bi_opf	  = io->base_bio->bi_opf;
 }
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
