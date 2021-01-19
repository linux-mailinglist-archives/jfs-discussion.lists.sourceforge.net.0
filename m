Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 318C12FB6A1
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reV-0000RH-2C; Tue, 19 Jan 2021 14:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jX0-0001q0-SL
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9fyWuz5JJXfZmEG4nRuOQ/DlIkFtSWXFr1S6k2wgd4k=; b=RQ8q1E2k9pCem+UJrnPh/2lNQ7
 pwzXWeBFTH6bKthuqMd6gw+5rR7VmQE0Xnk70WHnZ0vv1KEmzNZNk1ebH+T5ytPpyirGr6Ak1geM8
 HD5xVZRsd4U/o9BxFBwCIeG94ey8/KgqjSc3EGzcddrP3jBCXyTcGcdf0QFFSPKD3U+E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9fyWuz5JJXfZmEG4nRuOQ/DlIkFtSWXFr1S6k2wgd4k=; b=bk6MsRWsnZd9vsDIGcMzXcHTPM
 LZ7wM33xNN1lxRL728C9AzCMem5cJwGmOhZuewhaCBffhYZiuiqNhUKVDoQd8E7DdAmOSF70d4WVZ
 fibZ94OWM8RZGHtWbnsKNk/0YLGyCsKYCKRYUtbQS+SVHX2rHzYG57ECeI5fUXFyZpNM=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jWx-006vyF-0C
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033974; x=1642569974;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SfOR1N23M96OkPDJoP/n7nGLStD8Ilx5NPXdrP89w9Y=;
 b=WXRoY/DHrPhORBAfByxJf9pWH+N+cu1YBaRZKTCK+sTwMFhWCkuYxuBu
 gvWAZhh2EXBtl9o/KUrF+WAEFreHeuZLQaWmIWsaSu29B8NZ1JdaP1X1t
 pUPK92+AIQcgSCxNBlQ3dX8qeZtfQPafbGZNkaM81rjn5iS1e60ht+Br4
 szJyroTMQX2GXEkNsf2UOZin1lrpKBj+WP8YBa+7Z7D/OSA94bCH5IDms
 BnTB1Zi13VF55v1ainhSXPAAgYgjNc7dZO0m7FSol0j8sp8pMyT+BwRwt
 jgVaDv4KugpleNQkczxFfw9TCti7REJilZ7UihGUihhnuhDBk9/nqKv8Q g==;
IronPort-SDR: suHBrBEAJ9iRFX3kCrpXtnOnEMrER2TnFFpi7ULA58kxLaGB4XqcAycnUKmET9ld8C1EHpDCjJ
 UStp1xvBBkE3WhTRO5pkm1ixh6Ve8+lNA0FO2dtaIgGEglo7DU5Grv5qolDVp40GKetT80RJB/
 5ge3XKAeW5mYbmuCtx6F0z/PDih1lTzhBsbkyTlPs1R5BMJXWZp9JypAL2rQdtiACSi6m2Esdm
 Kbt/lzif0XYTho0dCDYBZ/8f4UK1A0y9sZVgUzOUPC4RMyNsiaIvwT5UsE+cNbTrnThwLkOWJF
 E60=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157758829"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:10:26 +0800
IronPort-SDR: 6+uq8RpyJEwP2VKQN2oyzoZhL5Z+jb5vhUVcdmchclFXH1Bm9czA2rXcZ3DaId9ApodI5b0U27
 vyRxxfAnuVabOXsGXSz8CXRINBxBlbkz+FwvRytm8+EHeeEWF/oZQcv3Vo1fsk0JbEqiALS84r
 w4YZclMKtPblSKCU6h7BurPK6Z7+u7/RLX7cIy4FhCpJQX6yVVLGUIhNVDukdKiBT9OTlajt3F
 lfEfIjmgBUqjUuSxtRT1SP42+AQlQ5/jLPIfyFjyXu4dSw0/KKCf3KyEGXFAiPyTQxAHiFNywW
 4TFRUbPUVBxHZfTuC5uLPrQE
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:53:01 -0800
IronPort-SDR: g+cwRIOSTQKlHz0TlzGiv0v8k42MLuyBePoSPu+3wmyOXSjTG0meJZ3HNMEsZPrUSxEzx4+lF4
 FYsGsM8Atqm4KFkngm6kvE4QJEllDZ5asdg1mlTg0nU6MTigdf/l2fufhP5Dl7cUEXrLWJHA4M
 i1hr5sj5wFf0lV2dBD1wzV0FFnhC0FI0FF05HNG+z9KgIFkwL1XTF/q4l1wSPXPSYwzrtYoVOq
 9diXh4xtcenoTU75CyxNQYMQeVt6zVGgTEkE1aGBQ3BRhKLM/ozH18RVsbfAAMJYj8MbBfck/x
 vIk=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:10:26 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:26 -0800
Message-Id: <20210119050631.57073-33-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jWx-006vyF-0C
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:30 +0000
Subject: [Jfs-discussion] [RFC PATCH 32/37] eros: use bio_init_fields in
 zdata
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
 fs/erofs/zdata.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/fs/erofs/zdata.c b/fs/erofs/zdata.c
index 6cb356c4217b..f7cdae88982a 100644
--- a/fs/erofs/zdata.c
+++ b/fs/erofs/zdata.c
@@ -1236,12 +1236,9 @@ static void z_erofs_submit_queue(struct super_block *sb,
 
 			if (!bio) {
 				bio = bio_alloc(GFP_NOIO, BIO_MAX_PAGES);
-
-				bio->bi_end_io = z_erofs_decompressqueue_endio;
-				bio_set_dev(bio, sb->s_bdev);
-				bio->bi_iter.bi_sector = (sector_t)cur <<
-					LOG_SECTORS_PER_BLOCK;
-				bio->bi_private = bi_private;
+				bio_init_fields(bio, sb->s_bdev, (sector_t)cur <<
+					LOG_SECTORS_PER_BLOCK, bi_private,
+					z_erofs_decompressqueue_endio, 0, 0);
 				bio->bi_opf = REQ_OP_READ;
 				if (f->readahead)
 					bio->bi_opf |= REQ_RAHEAD;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
