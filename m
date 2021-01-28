Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2409A307612
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ot-0000Vi-Fw; Thu, 28 Jan 2021 12:27:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Wz-0002de-7B
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UJzgVgPJKbQdacYX4jCpmrM+b7X8+yc8cZDvYETiCdc=; b=K3X5GEfGeF3JJxWSLat0LuvbnF
 qEIJ5HlCgaa21Pa4LZKxcbgQIj4UXWoCZt+r9qHb+bAHPcZsBqJWeYTiLi6EUsGlJ6kqWKS9opNqf
 7V43j/gkgp0+omJ5estNIl1H1qHW6BdiMIQnts0TdK0uUDOqWi7kMXlVkOiFsGGvSVxU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UJzgVgPJKbQdacYX4jCpmrM+b7X8+yc8cZDvYETiCdc=; b=hQs5ydJilF6EJWmuOG7+pbQQjN
 qXpg74STHZC2iLvpAn2xs7Y3eWjOrFeGXs4O0nNpXJlAq8XJ9fP8asdqlTVUfnS9iQjRT3knFo/eY
 d3Jpr2MLJkCvtS8o7JBdMe8SrMFGgwXo6XzkQpTtfho/WohGaPD7wrOcHKNGlcVUz9hk=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51Wj-00DWVk-Uw
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818137; x=1643354137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cXmRF2Su1ZKio9gUSME8BeoE9pXLYvn976s4DXPYmio=;
 b=eprSzhzx3yPv7y/igOUeDXfeDdidbqqXa24FdswGmaxQqi8oiIes0IwH
 7m1zeInqsZ0y1FUmAOYhotGg2QzfmesBO95autnMWsmMDBFJnhrw3nSZK
 2BZuX00yKTYPN6CQnXyO9XdoO2WMvqpHIfh/mv8W0f5c0tuoPdqzyXmOp
 uGutxR9o2HI8sKfgPhenJ37UZ3fYx2gcFB/v16xxJ/ge0BKD213W90zT8
 cMDYXc+ztv0bzENDz57+gQZnvb4oyzj4zRIejO2k5uAMoK1H5/Z1DsS9C
 kcZEqDlr0rGPEBBlaoDaKuxW8feZ54xsg8vfLT+ZVLaI/YtueLXJcU7iD A==;
IronPort-SDR: 763yrPA05ksmSrfPIxvY+MgrCcikYAdQTkfFrjpncH3qEpvJ5ragq54ncFi/ewddXprwlrqHWQ
 Lls0L4FTYlLVbdKHWUsiLsyCJelDAr3jx8jTuyVYy1km6co+kDr9FzRJ7PMO2kq0pbEs478EXi
 GxSVoruULY6Yr0gr4p8jn4Pe1jE3sczRrw3PNb8NfUlVuHYxkrdJvJefcwzRMOp8khsHIpUVTs
 mymrwPKbdtrgcMbRhT0fnRbTgzEYCpKu7oe6YCTNfmOp6f/5ROdT98+sVzd6L4oe7ruWhkoMr4
 8+U=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158518418"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:15:32 +0800
IronPort-SDR: u2YWBnxgb4QbZYu+HkfDhQrTsvqtp/084PnmgbQgEP5+S3rKzl7r5oGSdH38oxQhqcVL0plUP8
 ePhNuzTt5bzf25jQxtzttOBOZCdEVYiictJrirkBrmRvZ2llD0YW73eY/Pq/rQc1bjW7J+Khx4
 KQooMJ1ei/gZe7g7efo4SAEvNTN6carWnrZfAqFArqI68/+A0ygBo8ZeFiYoLZKZd/mJuocuZq
 WEhtmXhG6EcKXrATb2x1T0P0s+0cqRID/VGta8zZf4aEbrZ9D92sDTleMMphL9FxjTEClNRoF3
 arVW8RSbthxqBbi07SsYUH+k
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:57:50 -0800
IronPort-SDR: m+UU9TJBIXCvSyFz/7O2vaYmlOCexk8ewW0e2kOKkWSuwpQEVFGI+DHENO7Q1Bf8IQzN352Mi5
 5dDETfg3/zd0aL0yHDjcbUD/eS6byN5dveWHS0JlUn01j5YdJYnuzvRhCyGEwEvsPLeiwlo6h7
 h47UPjLb7UDOPAPFC4EqcqtJYlkeHUwpVqBF6C8WUdWbiBbzIaj0jcLgB21R8kA1PJHycwAnr3
 51c0CVR8EMmKQ6pEvymjZcIoINYcADZvl3xn96JSQjk6KW59eeMqwpBFLuZiCrCp4Zkdz1bD1j
 kZU=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:15:32 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:27 -0800
Message-Id: <20210128071133.60335-29-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.144 listed in list.dnswl.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l51Wj-00DWVk-Uw
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:46 +0000
Subject: [Jfs-discussion] [RFC PATCH 28/34] zonefs: use bio_new
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
 fs/zonefs/super.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/zonefs/super.c b/fs/zonefs/super.c
index ab68e27bb322..620d67965a22 100644
--- a/fs/zonefs/super.c
+++ b/fs/zonefs/super.c
@@ -661,6 +661,7 @@ static const struct iomap_dio_ops zonefs_write_dio_ops = {
 
 static ssize_t zonefs_file_dio_append(struct kiocb *iocb, struct iov_iter *from)
 {
+	unsigned int op = REQ_OP_ZONE_APPEND | REQ_SYNC | REQ_IDLE;
 	struct inode *inode = file_inode(iocb->ki_filp);
 	struct zonefs_inode_info *zi = ZONEFS_I(inode);
 	struct block_device *bdev = inode->i_sb->s_bdev;
@@ -678,15 +679,12 @@ static ssize_t zonefs_file_dio_append(struct kiocb *iocb, struct iov_iter *from)
 	if (!nr_pages)
 		return 0;
 
-	bio = bio_alloc(GFP_NOFS, nr_pages);
+	bio = bio_new(bdev, zi->i_zsector, op, 0, GFP_NOFS, nr_pages);
 	if (!bio)
 		return -ENOMEM;
 
-	bio_set_dev(bio, bdev);
-	bio->bi_iter.bi_sector = zi->i_zsector;
 	bio->bi_write_hint = iocb->ki_hint;
 	bio->bi_ioprio = iocb->ki_ioprio;
-	bio->bi_opf = REQ_OP_ZONE_APPEND | REQ_SYNC | REQ_IDLE;
 	if (iocb->ki_flags & IOCB_DSYNC)
 		bio->bi_opf |= REQ_FUA;
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
