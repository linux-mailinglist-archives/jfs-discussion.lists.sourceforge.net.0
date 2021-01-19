Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 203622FB6AC
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reV-0000SF-AC; Tue, 19 Jan 2021 14:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jXQ-0001qp-Rv
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dvpaX8F2AfYiGlKPoCIK7zuISmh2U30nR7tECB1Tubc=; b=N5tsnb//iS4VQ3EE2rlEapbBA+
 U9nE8kRE8exnCxBLRpTt7ufxOsf60B8KECnsqrXMLGGRuu0fhsmzVHvVZHDQQAAtMAjmGg4QtbqcZ
 QKsht318I5suAQaqLo+BV1FVkdNxcvJ+b9BJHtqiBflgKg42F1ozaMQicckUqBrModB8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dvpaX8F2AfYiGlKPoCIK7zuISmh2U30nR7tECB1Tubc=; b=hLyUuPOP6LxPkO3mUHbk+0O4db
 ZYL7CtWnYyt/cA9W3aTV98MuwcfOMv9cG8gedVlDPa1PAVaWF+H/P+ePpZ7yESgXVXZzKOMWQZzbA
 PdYZYB972zSYxFcv75bztBuazyOGmYhmSc0F9rUQRcE4iSyVDCHykuWLSgglFXqgZKRE=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jXN-006w0s-QS
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611034001; x=1642570001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cW+SY0F4uLtssGzI42l+SJRJJ7OOq+Ii5A3v3sT7Yes=;
 b=akFeLZ6RkneejDzhJCeMKPWCdIiInKhGRj1vQqDucerSfur6ixWtxiuN
 DxyJul0C24gIAV6MXpyKyopuFzYkO15+RamJN+5pjA31QyyFYxZbiTNqT
 mtOMoLGyHqrM33B0xq3EgPNkqoits1rr8yaHBBPgocW0NVhVF75KoyasW
 UNeLa4nuLI+vTk8QznDYvyB5y4hLUYP75OT8LKs56GV7XtXOHT1V/cSvG
 sVRU6JJFJiMbQ7l4TfP2A4MUJ4PcKeG9RDseZLUGZ2GY1J/jUnX/bjOw3
 9wMPNgye1raa0ZiSmSGK/g7g95zM+6A9xjdK7/rZ1gi88+lrgPgCwgiIG A==;
IronPort-SDR: bXSkWM1HfxJ44f8KI9EjWuGZPMrc3iLm0TLZ78mzj1W/2yN11Qdbzfqv8mkuxH9EkJICNJTrty
 u/4pg8QvsffdGPRMhy54sCykuKvb6EP0z4Gne+ShJnqLEpNH3osZkf/HdlK4MPW107jbEfWcrh
 w1gRQRbrpY60ntoSIRUiHq7j0jD0YEUgAiPJ0Td3WnG14oFgcf85nmWXifzJ7ubKofMcJiSL/L
 g0CxQbOzqptVCzISt86JU8M1nVv5AmNWJBHz0S7C9VkXmUg/Y6fJBGcJIP3RLMOO+yAY5aKs/H
 isM=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="162201331"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:11:05 +0800
IronPort-SDR: kuGAQmN6qVsYimE6PWC78PK+0VCc4OW8dQgiiyMN8/B6Tt7VFG/VNFqQOjtj5kiC8emUORZ05e
 hAYVAdHfjwF7aZCy6E0kyJOPnWz0Ji7+3S1krq0iH9a4+YjNEQoXZXPAwYAHOrxJTd0QPSXPeG
 kmqbhQ83Wcg7sHUqtlzHLNHYeUeg+GudQD0Yv+LxXsVbJRwadHTMvSJBKaRlNUNlxkuaGTGrdy
 zbOJhVL5h89+DLr639Twv5j7QFHZSFML+z569fVgLVWyGgW/U18mvKUlJiOzPNj/QJLGIlCRbg
 4b26MkHua3VUCHK6zT78IW/n
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:53:41 -0800
IronPort-SDR: JhXhgWS0+e3HTDStYfAXJ39RQBEk0euVnqe58ziJOnn1c9Zev+zyQZ1feT8Pf3jy1k/0jfejeB
 9eRQsJQYlpsXL/MQdwG+RKeojvlhwZb7/kK3K8LYVIUeWuWwf4teK/xrJ6FiTzChv1xe4/bY5+
 eWHUFZ+nWTw4YtzlPxnn6S3DZ4LcVreyfhizYCPM9a4WY7tqwq6bMPlFdYm38BooiwkcJvUlM2
 jto6KJJwnZYWpzG78qeBvec0imqsf+1kIqtJBGsfGtjSerNFR4ZUCja3e3hANc2sx71Lno1zNp
 h1M=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:11:05 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:31 -0800
Message-Id: <20210119050631.57073-38-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jXN-006w0s-QS
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:30 +0000
Subject: [Jfs-discussion] [RFC PATCH 37/37] xfs: use bio_init_fields in
 xfs_log
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
 fs/xfs/xfs_log.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/xfs/xfs_log.c b/fs/xfs/xfs_log.c
index fa2d05e65ff1..062ee664a910 100644
--- a/fs/xfs/xfs_log.c
+++ b/fs/xfs/xfs_log.c
@@ -1702,10 +1702,8 @@ xlog_write_iclog(
 	}
 
 	bio_init(&iclog->ic_bio, iclog->ic_bvec, howmany(count, PAGE_SIZE));
-	bio_set_dev(&iclog->ic_bio, log->l_targ->bt_bdev);
-	iclog->ic_bio.bi_iter.bi_sector = log->l_logBBstart + bno;
-	iclog->ic_bio.bi_end_io = xlog_bio_end_io;
-	iclog->ic_bio.bi_private = iclog;
+	bio_init_fields(&iclog->ic_bio, log->l_targ->bt_bdev,
+			log->l_logBBstart + bno, iclog, xlog_bio_end_io, 0, 0);
 
 	/*
 	 * We use REQ_SYNC | REQ_IDLE here to tell the block layer the are more
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
