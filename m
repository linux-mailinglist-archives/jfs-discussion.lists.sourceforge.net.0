Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A84B32FB69F
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reS-0000Mz-S0; Tue, 19 Jan 2021 14:06:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jTU-0007DE-Qf
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:22:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V34O2zUNOFBcA1CKjjahVE/tNvzoPxs9EznaefHO3dA=; b=isMYeVHvGX3zgOWPfm2aHriJQD
 HhQ9XJzmCYdreuhQ7f/hvW5PR+dzfRQj8J/MY6R8Us2SFTXOuH7AXoRcOuIPQLlC0GxzbM7anEpjY
 Ldyn8iwomQnFKAXzf0+SG3/Vc3q/UFHDWDfo1DWqW3Dcwfe6z+ss4LtnET+X1fBhabJg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V34O2zUNOFBcA1CKjjahVE/tNvzoPxs9EznaefHO3dA=; b=YmWQGAidVY2pZQ6ptZIBP5YVR8
 vmvyfolVla9qsYj8xZ53EhF50an324CoGvaRPfhlA9bf3GFCiTg6ezkFM07sb8NxCv/Y2fU5FT+lj
 SkDL1HEmqTicI1Zi6sKeCZhBD3BJZ2Ejeqf5GlvZP4Na8sDmnZym33rgLGdKGolKmlnE=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jTQ-006vhG-81
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:22:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033756; x=1642569756;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jmrSa8deAEe1LJieS4GwadhMznrvItaU1cHEcGf0nvk=;
 b=D7NthJ/qjqExwMUjMY0v2jVlSk2UuXl5XBalH8gzyivBFW7l01u9W8Nf
 UWcSY2ZocpcYGlHGduZrBISMYTW8p0ux3+Is4ygcMjaCFz0LQyAhG17Om
 uUl0SbBB6xosbRI0nzham10pTeZUNMG3NEOEiY4JLNQxSUNT4T7LegXTh
 PDIEy/r4PbJIQY0mO7EJpdUHbJ9U92hnKff1KBK0alw53VRiX7aegMeGc
 yJLuyhUUJlk6u8o3SHCtbl12DsYp3y39ZIyCfRCLzhGanqxKBWzm8bZih
 rkit+c8e+qLoX7gO8ca1SwNburX1jZoLTAJn8h2R7FSB+k8anJQrtw9cm A==;
IronPort-SDR: dkUfj0cpdgUOs2tTaAnnWKEaQ5SxF8xyU4STfsCtZy/DmHqlmr0H35NbDYNupwovcYfAGOjxy6
 KG9WDIQZRTcylGfO50t7/oONN9YY+PNtp9S4Wx/ZkO3yfVNMdprOyECaLLOAGjtf/wdfB1QHe4
 6eFBROmSS5l6akblslPhWRVdtINOxuYsM8kdo2MgK33SDG6AsUigG0KHMsYFfnsOgRLoOI9o6k
 S2gVRUL6KvPQVQRHtvlMg3BV5sI3yEe9Kr0R8uwNSuziYbrrHXHSbTGAz0WRQtw4izaMNaWvsZ
 IuU=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157763766"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:06:57 +0800
IronPort-SDR: 8Hcr3tdDryW2y4dCEiSM/g8Y0E7qkoicmh+1cCor/AvB9ZE967Tj4KKBJC4qiYmGb1jAr4+KME
 nit4ciabChKSF93bI+JB6tMocuBAwCpjW6kggk7vcTTfljjZlOM9At0DFJMbW4ZCU2Rd74hlmS
 rZzA+ZRx37deBBp/J60muTlNjLo2zzFJqTJm6LOO2F5cP9C+YcslfhBwKoQu2ueGq8gUygELmn
 NJ+maCmFfkYN16l5B6hutvFHds7IOkwuPnsIzloqw2BDtURiDbvnFpf3TL/tXsJUmcLlfn5lCG
 V28JV74zPv9wLNmqsU4583JB
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:51:35 -0800
IronPort-SDR: 2QvgFwKv1l58qACx1LkMFx25aQa2SIK+nja25KW+g1fGCIsFCI2aDBEoSVRt5vd+mstvmW96a+
 737tI66XYa3YGuNZc7mhzaBx90mzE+7INtx21d/7HVJL8Fs4lXsY46xoeP6qPWvnDZ3ihPj4yc
 0PHxNbwk5lPXU8GKWjmU1O8sK8W4HyOAc9WnAAEnbKb4wGAIm+2gNrXPeVygtgzGsA4DXXJ+Yd
 mrqI036gzbWwtshapKuKgeKERGx47y7vTXELUquL2fc2urlWZF3SUiFLdWMNhtGfvEB6B//WSB
 xEk=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:06:57 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:05:57 -0800
Message-Id: <20210119050631.57073-4-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jTQ-006vhG-81
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 03/37] btrfs: use bio_init_fields in
 disk-io
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
 fs/btrfs/disk-io.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/fs/btrfs/disk-io.c b/fs/btrfs/disk-io.c
index 765deefda92b..9a65432fc5e9 100644
--- a/fs/btrfs/disk-io.c
+++ b/fs/btrfs/disk-io.c
@@ -3637,10 +3637,8 @@ static int write_dev_supers(struct btrfs_device *device,
 		 * checking.
 		 */
 		bio = bio_alloc(GFP_NOFS, 1);
-		bio_set_dev(bio, device->bdev);
-		bio->bi_iter.bi_sector = bytenr >> SECTOR_SHIFT;
-		bio->bi_private = device;
-		bio->bi_end_io = btrfs_end_super_write;
+		bio_init_fields(bio, device->bdev, bytenr >> SECTOR_SHIFT,
+				device, btrfs_end_super_write, 0, 0);
 		__bio_add_page(bio, page, BTRFS_SUPER_INFO_SIZE,
 			       offset_in_page(bytenr));
 
@@ -3748,11 +3746,10 @@ static void write_dev_flush(struct btrfs_device *device)
 		return;
 
 	bio_reset(bio);
-	bio->bi_end_io = btrfs_end_empty_barrier;
-	bio_set_dev(bio, device->bdev);
 	bio->bi_opf = REQ_OP_WRITE | REQ_SYNC | REQ_PREFLUSH;
 	init_completion(&device->flush_wait);
-	bio->bi_private = &device->flush_wait;
+	bio_init_fields(bio, device->bdev, 0, &device->flush_wait,
+			btrfs_end_empty_barrier, 0, 0);
 
 	btrfsic_submit_bio(bio);
 	set_bit(BTRFS_DEV_STATE_FLUSH_SENT, &device->dev_state);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
