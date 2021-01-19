Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA1C2FB6B6
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reV-0000T0-I6; Tue, 19 Jan 2021 14:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jZV-0007QY-TJ
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vM9Ddszoa0CeLDsnGb07yu4bDLVWcRW+y5n7UDMiTFw=; b=ltFrX6Pcspt2S2J4WZpbOonInQ
 DweTHguIhXSwIlSUe5aKfI9X+D9jyO36JuqrBv+vxwlp9zwcbDMQOGf+iYZp/YLt2IoH1FJ9jk1ih
 soOKtuikg12NxNEienQaM9987tohMvmbYnyTCf9INUbOORa8HFQc9JteIB9R5NZnAU5M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vM9Ddszoa0CeLDsnGb07yu4bDLVWcRW+y5n7UDMiTFw=; b=Kj2PEUW5F0EOdf5FQnQODybUAV
 Gi+wit3ll3fCed/4ekecyXAjTssQpHEC3BTEhpSmpY3wqH3VMTqSLWEOHKGP/EgwRyOztpcT+gOmx
 hCQJJ3Nm2RwvXCaTU7NIExNscWOcnDWEJMBNk/CpRAgDhcdOGWiQidsuBiVdmlUe0p4g=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jZP-00Dzzh-1Z
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611034173; x=1642570173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BdkhQGouvUAsTue8hQMttohkdblbLZM4YtE7j1r1v9I=;
 b=qS9Vf5mu20GrJHr2NaNuGKnI+pecDSHqA17jphapFLWa5xWmOpvbmLBT
 +idOYF+O/6S4qBEQ5zJVBWMPen1VQ6ntcZMZ/MqIYtChyHoVnzQRmT0PQ
 Zh8OgL25ZxM/4Y96FWVhSVyMS/WcA06ceCpcLhBN/U9fgluiXGT2c3cZn
 qKoMd2tDroLXRyCRA8jLJfImiNtvETIN5cNd1jOuIbvh7xtgGllGzO4iC
 7YHFGpUZI//Gc59DwpiOaS7WpOvE8o3WfQcykpACzo1gbwU88rhDDl8aF
 /sNxQKqIr6qv/H+SYwHKibXaRnmOINOLavPulYInGXVadVKJzKh/O94PR g==;
IronPort-SDR: cUtZQNCAk8Bl8iEGPV/m48vPeNMdHfnNPcis1v1JyiNpxmQbtUYVtYGUbMhWHWVc6lhZaw5vf5
 +HM3ncZXjIBF1gYuFZVCjkkxGCYszQCt2Na8H8h2+dG6QyHLSCmNu5FjM4QACr/Sc1rtRhXnGY
 7ldDKsnREumZL71KqF4lJ1ibhcNausjmbTaTv27uzEi7ZiWVxPNHTPNe30AdEiXr/vKzvGsE0U
 LniKJETMR4oIKGN0NA1+mnqimYumWynHLp5wZh1wi9xzGqN2UFuBuh6FamICh/Px9s11KQSzF8
 7Yw=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="261722153"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:17:35 +0800
IronPort-SDR: 6DgSm/EHiHf9TWx8uo/zI9ks5q1WP3PRZUdEvCzHI8OrjdZxfzy/dsf46raYG07C/sMb9Wob6+
 k7agNJmBUgIvz+4+IWURSbNltJRD/bPAWfYWF3OrspNbcHqEH24M9n0RgEsBo68W/efOBz1a1d
 Cr1GAXFiVA5B48Bbp85Tznllr5kswJvYDi5AANMFXTZbg+n6u07Ye77EJusy+y6vVeqMMtuSdT
 pDl3a4Q108OR2Rm1fHCqM4/T5ohiDmp3Kr6KipRXJYdbYFOr5Lr34wwyOY0y3REmOKF5eNfNpz
 8Fe/M9Ojau9o2a0C69kiBhBX
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:52:03 -0800
IronPort-SDR: RfcxC1FWYGpS0fNCrOs8BtNtAvGS3Soo9XuKQebXkTCgbWAqTp1EKLrasZ0evXuMWoITBnHtNY
 2oxDBYpgHVdIOlbC//vNMX0StFZhGCaZIsKA9cFY7fNqh1OY5fcl3ycEabv+HgHkEc/CXDDC1y
 fzmKDnwNyp8ppyfiLjfpBXI3+rhzN33czQz3Cn2qnuTvExV9IqScOwNt057FA/Z+bR+5w8O/JO
 uiXUS8DdnaYj0tdtbLaCu8GXso9K+bCVoTPbDi0BV1XABhEY6VgIhePNhopNBAIoFyoLyU4M28
 AtU=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:07:26 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:01 -0800
Message-Id: <20210119050631.57073-8-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jZP-00Dzzh-1Z
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:30 +0000
Subject: [Jfs-discussion] [RFC PATCH 07/37] gfs2: use bio_init_fields in
 meta_io
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
 fs/gfs2/meta_io.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/fs/gfs2/meta_io.c b/fs/gfs2/meta_io.c
index 2db573e31f78..822489b10aec 100644
--- a/fs/gfs2/meta_io.c
+++ b/fs/gfs2/meta_io.c
@@ -217,8 +217,8 @@ static void gfs2_submit_bhs(int op, int op_flags, struct buffer_head *bhs[],
 		struct bio *bio;
 
 		bio = bio_alloc(GFP_NOIO, num);
-		bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
-		bio_set_dev(bio, bh->b_bdev);
+		bio_init_fields(bio, bh->b_bdev, bh->b_blocknr * (bh->b_size >> 9), NULL,
+				gfs2_meta_read_endio, 0, 0);
 		while (num > 0) {
 			bh = *bhs;
 			if (!bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh))) {
@@ -228,7 +228,6 @@ static void gfs2_submit_bhs(int op, int op_flags, struct buffer_head *bhs[],
 			bhs++;
 			num--;
 		}
-		bio->bi_end_io = gfs2_meta_read_endio;
 		bio_set_op_attrs(bio, op, op_flags);
 		submit_bio(bio);
 	}
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
