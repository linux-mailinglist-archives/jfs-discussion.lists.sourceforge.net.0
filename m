Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EF92FB69C
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000Oy-Qz; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jVG-0007HT-13
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LjjoFTYLn+SHXYNdfS4694D76VT22af69E+1Y7xGa14=; b=TK+A+iiqJ7gwqGRmhzrsvy0DxW
 1PPOBPm95RAun4kDGQNv8DKgRyQ30jBq+FXo0LmXdSHDjMnHZGsDn08AVCLA3etdrX3Q46c837cNm
 Y7mW2VgUXbtR3MTIZIfyFXW0UuMUEFALGu5k/hSRfjRkJMxSQLJHnBiABcZKoWrdeo2k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LjjoFTYLn+SHXYNdfS4694D76VT22af69E+1Y7xGa14=; b=ZztzwwD30a1RPFXRPvFGSBm2Hi
 qt7QPPLNR4lCaVfnQW4PT38GRXH53CDa4nOCc07Aw2U3OVKBREI0Hty6XVBeePcSX/JJD6e63Om4d
 hWROus1Bj8y8n8lPHmU/tMRqW9hvfK1tBbhlAhbJMQnN4oGHEoon3fvI8x23qLW8kEkE=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jV8-006vpU-PE
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033862; x=1642569862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UJI+K9IAfdXiGgzdG/XtuzZQkA1HDrbS/80BpuWpCHY=;
 b=N3gbBNgMkeskYzhD/nMdRVm8wPTnM3V0Lo/ITgDiooTOB+z6apyrQj7i
 RvDGQgZOUR/G6Kx+KH+zv7psO9KXb5upEPlMaoYTBD6wmS5wCNGYASeGZ
 yn8q1izEAdfxDaQ0tWyIze1fXzKzBZVpvKxAV/qhfqkdgxICVjSM35/uM
 e2q6pnQ2EyiJir1sFQ2rHutKP2JagLOMWf+uLr72MzGZ9DkmdV6FiqBGn
 TAsZ19SYg4xPLrn1kZ/DoO34SVoAYuoYTCWzzF2V2pmkMSVxCjmIV89hA
 vAXIxQVWVReP2nFMRml5LZnndBCdd4EYEftjAT1n7GtrpZ1EzE73hLb28 Q==;
IronPort-SDR: 4pSV1BdPkxzX+PwskQlYlvQhfWa3dLzkoH4VQbZdwMbwG49snR5F9qHisCqmzJSe60NRAuYA2f
 oUJXpEdyjjKZaAfplKTIbYQYqY1mIHshaOWtST4z7QdxnMTQJzLbzrYmSEoSfMfY1nTA/G5SCA
 FeGgeUT53H7ITOSTcpml3+pzGFfrCpbfo1gkorpvyr3msR3Xptvr6R54g+QGCx51H922VYCtus
 fdOSGN/dleGtssbMx2CAJCZrzSx0/AQPxhNjJ/mZBc//01mDbsl5DgkmhBbAwGt85AdQ284uVm
 poE=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157763920"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:08:37 +0800
IronPort-SDR: b7/aD8MG3nxbMrSAB/GMw979dkF/0auSuwkAM/yoOMN/V3v1riTf60aJ92N4xBo0D+PijN7FVD
 AJIheRqmoxX5jOQXoG+wt/TfhgUyCre2CGHGLheLFZFMMjo5SRYNNsBFhuqYfLNc8aY8NM0bLU
 xQVguRbEM0ogVyihJjUKddsKXwnnWz7vb77rnJ6+J5OCLSyVJUF0Amtx8mRyZg+1flfV3e6icq
 DjduikCD5G8vgtzQudkfwxCZ9yhqnIaNi2RLOVfIDC7oC66qRsXZaxPvO1L7LX3Yv3fESmPNDq
 ROernyXPWODKBUENkf8bOAyT
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:53:15 -0800
IronPort-SDR: JlGfCHshT1mK+XacVyirUo0rFyjPWt2f31VZ3z2J1Z+1bAsxbYaQqDfkpztEmemcjkFKSqFtBW
 eEHx4MKVO6uhGP44oLoJjur9xUH9E+nf+FFdLDlrYS2WxbXcD7sJerBxjAL9tpVS6iMx+k6Ygk
 O6RIIA/q4UYqrDznEz4/cneeqCBOoZihS6qjthtpQtFPN4aYc3uvtGPOTbAR+UEONOX62l4CZO
 swheoC8AcejSmyN7MaD5wpht27eshQMMdBz4TnpekpmQcRnvSAFWabxuH6D+W4HdmuEhyRgLHS
 mSA=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:08:37 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:11 -0800
Message-Id: <20210119050631.57073-18-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jV8-006vpU-PE
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 17/37] pktcdvd: use bio_init_fields
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
 drivers/block/pktcdvd.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/block/pktcdvd.c b/drivers/block/pktcdvd.c
index b8bb8ec7538d..47eb4e0bd4c3 100644
--- a/drivers/block/pktcdvd.c
+++ b/drivers/block/pktcdvd.c
@@ -1028,10 +1028,8 @@ static void pkt_gather_data(struct pktcdvd_device *pd, struct packet_data *pkt)
 
 		bio = pkt->r_bios[f];
 		bio_reset(bio);
-		bio->bi_iter.bi_sector = pkt->sector + f * (CD_FRAMESIZE >> 9);
-		bio_set_dev(bio, pd->bdev);
-		bio->bi_end_io = pkt_end_io_read;
-		bio->bi_private = pkt;
+		bio_init_fields(bio, pd->bdev, pkt->sector + f * (CD_FRAMESIZE >> 9), pkt,
+				pkt_end_io_read, 0, 0);
 
 		p = (f * CD_FRAMESIZE) / PAGE_SIZE;
 		offset = (f * CD_FRAMESIZE) % PAGE_SIZE;
@@ -1208,10 +1206,8 @@ static void pkt_start_write(struct pktcdvd_device *pd, struct packet_data *pkt)
 	int f;
 
 	bio_reset(pkt->w_bio);
-	pkt->w_bio->bi_iter.bi_sector = pkt->sector;
-	bio_set_dev(pkt->w_bio, pd->bdev);
-	pkt->w_bio->bi_end_io = pkt_end_io_packet_write;
-	pkt->w_bio->bi_private = pkt;
+	bio_init_fields(pkt->w_bio, pd->bdev, pkt->sector, pkt,
+			pkt_end_io_packet_write, 0, 0);
 
 	/* XXX: locking? */
 	for (f = 0; f < pkt->frames; f++) {
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
