Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3699D2FB6B5
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reV-0000R9-0U; Tue, 19 Jan 2021 14:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jWg-0007L2-3T
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S5JSsHSaFbwl1eQxQJDNnBpu9FGcbD07/4b3YwmGsro=; b=fzi1RutU7KluP8Iej+soJ3fbI0
 cfoM+V90s0YNyWQCxYtk78RKm7VhLyCp7bC+vgZulaxPHms/JHMOsDw8UP4yMzm65Qqc9vjJ0REP1
 40xwwDa0Q73tSWHZ7w/ageHtCQ88ZWhZ7E00XcXbjQWYZc90jjlChV8bEb5AqHCSNar4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S5JSsHSaFbwl1eQxQJDNnBpu9FGcbD07/4b3YwmGsro=; b=fhFeYu/c7kxl7JnE/SJmeQum7c
 evUxa0vI0Pr7MKWYeenJQ5j+LQjG80xLdsMgBBXYqc1KyQTGP0kGl1WZKTvtjcRY0P7cSBLVkxfuj
 VIeSf0t3hvoEWXVgvgwEqWwe2PCN0/mwwmhMcMpiCMk+N3O0LK30LKYMzjrn7KIromWI=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jWY-00DzfX-Jx
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033950; x=1642569950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AAA7t74fBBFYvhmmUXL9ltnfWbGOnWjeqm/UNzN2uR4=;
 b=CSjXk4eEDxy2GGu4rBQak0Owj+b1cqWKHdlrL8vwNAV4jNonEtKsMyul
 3WeO7WY7jVeBUrYT0YX5NIJuNAiEVP0PCB5M04qZtSnaSb3Ji8Eim0RLR
 pbPznuyY68us+vWumsI9N+/X33niskTqprt5iMdW4afnHUeyP7cB54gGC
 AS33UGKEelM/IO+OISHlR0Gqop9Xn/TIJgBGAvKxJce2vWLj6jHK0Lpbu
 Qq4HB5AWHWzWSH2l0KXixE7HeTQD2uFgUBM1cqxvWmva162/rLEy3VDxI
 zqx0b3zoqRqeivfEv+tlDYRaEhRssQ82ZS9VB85JtCAm28ipAZZzI+73E Q==;
IronPort-SDR: aRmeg0s7vylAs/UbpbYrjvg2gzEay8mvtPTBqldJB7QEbNb64GpRObeO1RZFAO+NgSaayvkteq
 TqeumBUwCN7ijdIRnXOSOGdRR7K3nR5bvH+i/heaOONn7OX10La5J6NdpxArCS1eqq2PxUaken
 0WtG3xBVillT1GsnTMWPHvGIDZGclvD8RKadHo7k4F0dqGicXDgA7cKBWoIxrDu+m2+lw2Isil
 E//Se3Sc3bfeYBEMjrfxnMpXIh46Y9jQz6hokP9HVtxRimOrvfrTw+uWS+mQ/62zacGKC8DZoX
 ltE=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268081224"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:10:19 +0800
IronPort-SDR: 3xTJPPtz6J4PH/J6ql3ivTtZQj0bxaETXzzakrj9FxpS6Yexw17IcdMJMW74Yn2T+6CEb+D0P+
 P7AAZtBcpbl326+ZeveM8cg7zNf43B3Tz9uOXZGSnZl7DZ5zQHBvTpBYgwTX0B5MMIRZqVNBXv
 L9DfRAXq0zXrbl3VgD0F9wpbeBK1aMWbot8z8cHoCrYko0SIlwTIEcb619i89o78glZu57xBVq
 UkVeztMUYF3s9pIBBDdBI3gwkGnaXMCymaLJpi1BoB3pEq4QmQCm5xdgW4TGMMP06T7ZX3N/6E
 vjbcaxAkOo0W3uSghWuKl29C
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:52:54 -0800
IronPort-SDR: cPCtUc/IRHJ6v0mRHjS8V8MFIsoN0oL2wMbe6Ozxyn7u6Jlq2FjrgvACBEr/lheyPR/5wD4N+M
 KEDIu5wE7UWz8Cv9qJDWZum4DMbM7mOvzj/7tfqqgYPHbQ1LhSR/PgR8NGyaDkjJQEt2LBkn32
 1OZrCSpTxv+AMTCn8V0WZgKvKOAI/tj1Sffo8uYhn7bxkZYYg0/EqRTNAqMwUOaWkw/9SrZbM5
 n6bVFFI/rd2QJwwAKHXPwXh+bmpzJXrCR4jV/u3YAVKTR0Pw0jMhQst/htFOvMCrlOnknkAxQ9
 MSM=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:10:18 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:25 -0800
Message-Id: <20210119050631.57073-32-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jWY-00DzfX-Jx
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 31/37] eros: use bio_init_fields in data
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
 fs/erofs/data.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/erofs/data.c b/fs/erofs/data.c
index ea4f693bee22..15f3a3f01fa3 100644
--- a/fs/erofs/data.c
+++ b/fs/erofs/data.c
@@ -220,10 +220,8 @@ static inline struct bio *erofs_read_raw_page(struct bio *bio,
 
 		bio = bio_alloc(GFP_NOIO, nblocks);
 
-		bio->bi_end_io = erofs_readendio;
-		bio_set_dev(bio, sb->s_bdev);
-		bio->bi_iter.bi_sector = (sector_t)blknr <<
-			LOG_SECTORS_PER_BLOCK;
+		bio_init_fields(bio, sb->s_bdev, (sector_t)blknr <<
+			LOG_SECTORS_PER_BLOCK, NULL, erofs_readendio, 0, 0);
 		bio->bi_opf = REQ_OP_READ | (ra ? REQ_RAHEAD : 0);
 	}
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
