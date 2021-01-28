Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A011E3075FD
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Oq-0000On-K1; Thu, 28 Jan 2021 12:27:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Ti-0007ju-5O
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ia5fXlQX9lTkNHmhu3mfW6jmqWGZQitD4Adk//xg1g8=; b=ONqI+JD+G0cLYRB0kgEhBl2r1+
 eo7dzZjQMZufQoZgKf8HuUb9jwKtknxgCsAY0Tt/yLDZ860kSAZVuXwLTj175yyuXRKOBjQJ06uj6
 nRCZkSKOG2YUMSNFeUqtG7Q2yHg/sO25m1NZizRyzQ8xiWzaO4xEyaA+5qd92/VXeu90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ia5fXlQX9lTkNHmhu3mfW6jmqWGZQitD4Adk//xg1g8=; b=agTKFeQHZEiZX6mc2SuIRbGWZM
 7fyXFnRRZL/sx1ihML82PEDBW1xVP7FXZsQR7ypKD43Y4docLxdYKng6PQE9lxpEjWjcAu+qYDdZO
 ecqO//QawqKF+nxOmtVRmWYGqziMiHqatm/8OHP9UYlEudwTioXhn6ns57HyLG7Nl0G0=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51TV-00DWBO-5X
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611817937; x=1643353937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H5WYNiBvrNWIzR/dDsyAI0RzKPxZxlDuB4vWYUDlMrE=;
 b=V0pG4i+35QaBjzyAd5n5P/6n5guY0zw29j/6llyE+U36fVtMLov5J9B5
 A61VKK0IecTq4OfMAA9xy+umZ3VjgtcPBmhlyItKTqUTJByK/hXog+SAd
 /5tHEZUNdb0NtPVbbG7jIvsQ9Jq7tdne4jgJDs0fAJF8mvUfYZ4yezMZ8
 yUUYs9PLVcBqwPa+JjY8PimlzuqVJRnNWoBRYcreJ19WD8J7cc24OF3Qa
 dP/cCOJG8V65XDOLBynYnoVnOepB5uDgP688rKGaIDT1+BA2sIMDFu2Qy
 iSQHS2apuGtHwsL8KUu1MkubT0mdgUtilorH2Bo+aZWCMi7b4gLZzrIh8 w==;
IronPort-SDR: dOlLbPRXvXi+KYajqba1SOXKLfTeSEztG/a7UmnTragqTlW0mdHDxC75/iLl7m3+4gNt70Pz9H
 g7kxe3a87aB2jXVFKWPPbD9eZFcZWQx0hW+iUd9BtnWBa2cdcvvBaZvnmjcnLQ1fapgrvISJRK
 klZ+vge6LM90CEHBEXEx8dEAmO0EpOP/UpdpOi/QYS2qtXjSefPp3clN0vxkwKdZaumYDaC0Pg
 lC710IjT24pCz3R3bt7/4TO2KqrhSgnQjttMSWTWInfI7pQjA1S12YJCBSkuWGrc2qU52sKRLe
 MX8=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="268892372"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:12:17 +0800
IronPort-SDR: 9EMA/kY1/J+iQL356W3yp5RIbiaXn7XMO5i8LT+B8AWhlRfsjHifsWAx4M9n82qudB6Blm97aF
 eybKw/MTwyqv3hW2t2RCF6qEM4cHuzDoxsDEOGTOKn89aZAaTscAb/v7PswfqJuvrYOQ2eILXo
 yunZuCq48WBrrd4xscGCtZsGMbuC50qonpWifQg/d78jj98pTk70aOzCuXRhPk2QzdG2lsB3tG
 9ooUxhIoGQ7LYLpIZREeAfWKCPaqXTjQr4mgwMhjSOo/U3PWc+Vcca6hExsa761ULBlM638+xd
 nfsRnUbzin/JoAgkeCu5IATC
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:54:34 -0800
IronPort-SDR: sJ1sB4+NIXrk86BqB2mBiNRkLb2CtaUtTUjLUptuVolKqncgiWgms0hBmEnyXBHOe2LGJgTWAc
 Mtkqx7/Ji/KEF3P2zVgoCc4AZmvUpaw07sB7pwwqNDwBZIjeJgdIawB6xDKz7hKZuinbJ6FPFN
 v+digmuqEID+qvvg+Pvdb6mLkPbYX8es6TqyRNtA6iTBnQbrstI0JA9CgrvLf0RhQ0DnF83KdI
 QwpSDAYi/vWthDgyxzldo4sKChZfQfmY/MjRYeTOvpJG4q5JRSujoZAO3KJfZIMHz0OJMVK9L1
 YPQ=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:12:16 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:03 -0800
Message-Id: <20210128071133.60335-5-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l51TV-00DWBO-5X
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:42 +0000
Subject: [Jfs-discussion] [RFC PATCH 04/34] drdb: use bio_new() in
 submit_one_flush
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
 drivers/block/drbd/drbd_receiver.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
index e1cd3427b28b..b86bbf725cbd 100644
--- a/drivers/block/drbd/drbd_receiver.c
+++ b/drivers/block/drbd/drbd_receiver.c
@@ -1277,8 +1277,10 @@ static void one_flush_endio(struct bio *bio)
 
 static void submit_one_flush(struct drbd_device *device, struct issue_flush_context *ctx)
 {
-	struct bio *bio = bio_alloc(GFP_NOIO, 0);
+	struct block_device *bdev = device->ldev->backing_bdev;
+	struct bio *bio = bio_new(bdev, 0, REQ_OP_FLUSH, REQ_PREFLUSH, 0, GFP_NOIO);
 	struct one_flush_context *octx = kmalloc(sizeof(*octx), GFP_NOIO);
+
 	if (!bio || !octx) {
 		drbd_warn(device, "Could not allocate a bio, CANNOT ISSUE FLUSH\n");
 		/* FIXME: what else can I do now?  disconnecting or detaching
@@ -1296,10 +1298,8 @@ static void submit_one_flush(struct drbd_device *device, struct issue_flush_cont
 
 	octx->device = device;
 	octx->ctx = ctx;
-	bio_set_dev(bio, device->ldev->backing_bdev);
 	bio->bi_private = octx;
 	bio->bi_end_io = one_flush_endio;
-	bio->bi_opf = REQ_OP_FLUSH | REQ_PREFLUSH;
 
 	device->flush_jif = jiffies;
 	set_bit(FLUSH_PENDING, &device->flags);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
