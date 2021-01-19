Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FEA2FB698
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000PK-4h; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jVY-0001mV-PO
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RFoPvsFSlhiBz0HFekD/ZKw4PGXFr5bUwkzUlZrIZsw=; b=DBeUhNltumRaLc1QmoG78ckqdk
 Ww5thEE7CFyjmS9ruOEl+ashLKOPBZ5avLHnIB4/yxP9GFXXQq8FTemGCjKRjALTC9CJG7cW1h1SV
 Pebnl6qwsRCuK80wwFe2Z7K0yppviIA/bTQC5U4D2NMVgNof7RIhiBHc3iaPwdTiirbI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RFoPvsFSlhiBz0HFekD/ZKw4PGXFr5bUwkzUlZrIZsw=; b=P8/wNhg1d2gsllFrnlGwTkSCxM
 NVWudBc/49AdYO8vdpfL8G4nUWavoiV8sihfUnNgu21Tq0OuiEtenV5yU7C45TCXsQTc3CL/7ITsU
 R0MrQE1rHcPq12y7GdAVUfEkNF87umcu0y6YDfUHEge950x7KUXe7CDjjsLHSlNYiriI=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jVS-00DzbF-5S
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033882; x=1642569882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qoLn2/rcoIe5Xy1n1hC3Lt6hQmgoOhAQmKsRVXN2pPE=;
 b=ZFhlviwg5ic8JxXijBXA0mkgsQxgN0iSg/jekPoyQnPXm17mNwU27V0B
 qJkqvuDNUBMp10Hgo3DyY57OiyJn13J+oKtAYFA6SFqWoW6FxrplGPmv2
 U01exg/rfHaAqsrasCCcQ2Mn/TmtYIzpBanc92q/6MJOviKGO9w/y1YBP
 Hdvi7PZ/RiCe6h396up1GPAsP1K6Y3GnkP4ieTsCZ72osO6Noz1RpT7A8
 ZRgM9K1SQVbqNXbe8KJ60CZooRUlIW8r84p+4dA2YwKBPXp3FNS9TkkOB
 MUkL6hX1h41QGh1CrVLXBI0btftmnXxuxlRv2AUJlx1jSKgOlX3M4yaN+ w==;
IronPort-SDR: IE9SAp63L8k2eg7yahSeLFyaBumTuO5uUEx/J6/wvXFP4m0a81gEfurQqVNQZtMtDSCUDOtALy
 GFfVR9tSt3M95vYga1PMXNNxJJo+6PtNQ/aGmz7SHtmnskPm30lHPZwGjzkwWs6acS30Ppj36B
 CQaJ3A3bsEOjdOdr6WCoWBSBhX7iidzqhyp7b+GO5EnxKnWel5oCfZLghmM1CP0psbqBGk6ns9
 a+uD+zSR7Js2Ym2pQOy4/fA8Pv1soIknA/XwPWw6O5btBX6jkqqr1szt75XC9jnwYfKihjJNbb
 M6Y=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268081101"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:09:06 +0800
IronPort-SDR: qMai4LLkNaNZMa6fXY9usGhAqBTNMt+GYNKm2b1k1Mttc47acVJRUK3wey4tdo79J2GXTDGn/v
 5fS+4bbmjnCKchz0FLHGyzC+IKHzEmglvyWEDZMbBllznSEfsjRaOWezvWCEvdakYNpUR4glDG
 UXj+9Ghq7RTvPu5wy7gXIOUrBKe4/4bDwnvOP+yXW0tCVCOpt/3qFXN2AzrfZ006fAAAKAzeXu
 39YHqxd94VhlWs7xtBQEOq7YybZcXpbIvIS/b33T+J7XwWq0zJZ5eEBJS3864ry5EOPGKPOEiQ
 mXr/zBuX15nWIQDWec/IHHrf
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:53:44 -0800
IronPort-SDR: YTx2sPI+S6B3s0zwLxmE9JLYYaAYYdsBlTi/QBtBxd/WH8egWo/s2t318EELWraWDHn4aYbSz+
 GTI/c0RV1f+ot/Yyog9omiJsfpSR5vK5KT4IJoKlPtJElbAfKckX/OVaF06ki+8DfWwezcFUha
 cQceDg9EfnRtvtgEBcHMkJqbMz+Hf9lDezVT3gRBkt4FXtAK8F0+3Jw8Dlu3r3MJXdxsm4oEy7
 lej+XAjPd2ZdZGUr333NTWzmm/vXM3I7gj6chGIMLH1v36uCSVr35WYHxwt+NXTGuosML8y4Lr
 Cxg=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:09:06 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:15 -0800
Message-Id: <20210119050631.57073-22-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jVS-00DzbF-5S
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 21/37] dm-bufio: use bio_init_fields
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
 drivers/md/dm-bufio.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/md/dm-bufio.c b/drivers/md/dm-bufio.c
index 9c1a86bde658..1295e7e33e06 100644
--- a/drivers/md/dm-bufio.c
+++ b/drivers/md/dm-bufio.c
@@ -633,11 +633,8 @@ static void use_bio(struct dm_buffer *b, int rw, sector_t sector,
 		return;
 	}
 
-	bio->bi_iter.bi_sector = sector;
-	bio_set_dev(bio, b->c->bdev);
 	bio_set_op_attrs(bio, rw, 0);
-	bio->bi_end_io = bio_complete;
-	bio->bi_private = b;
+	bio_init_fields(bio, b->c->bdev, sector, b, bio_complete, 0, 0);
 
 	ptr = (char *)b->data + offset;
 	len = n_sectors << SECTOR_SHIFT;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
