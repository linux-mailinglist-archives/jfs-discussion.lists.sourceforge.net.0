Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B558A2FB6B2
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000NF-1R; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jU0-0007ER-OF
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dGbHA/OtOy3BDRcgB4DtPj6/FOrt9cWdi2typ4Y3CoQ=; b=ZyrVeyXL3HEtS9MKaDiYgkLxCy
 ycWfQUKhDfq1dUwdIpDhUXErBQOZzxBz59EA6qB5Z0hBmOlLr3a68YRsYgkP6OywhUtGHOcf/fKDH
 H7N6JCPtmyb3Hv5RfSJ0yb5Kxs6+8ri5TJK2dQ2ilG/bnovJMFcOzltlZ2+Nsum6swYY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dGbHA/OtOy3BDRcgB4DtPj6/FOrt9cWdi2typ4Y3CoQ=; b=boVPmGzF0ltaAl5HSBZiDWJiCz
 egPP1KX6qFASARmdubBGo5le91ZalN1zf2Qzf/ef8SqyYBbOnNYu7ALEpt11fKvzoXrwS9BWCgq19
 KYJkr0aj94UZCmKQ43rvU+zpZr7ztEeCrP4mi4bCJi0e6p4ACA8K3NAMYQvmGCqDIcTQ=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jTv-006vjt-S5
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033787; x=1642569787;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M0Lda0zS+SL7SE0DDozfWug6B1E4kFe/5QgiyTYkgeo=;
 b=E3FQgG03zeOKBS4iuwHwfCvDKLfH2QQN2aOqM+rcM6rl1nGxawIuC6rb
 R7Bl6B18Ah/9p5qFFJLK7c/1V/mHtTTHtm++f9ZOYDDLMvXvHu4qBfjW5
 WhvOFJRfwuk+I/4S5Ao8fdYNBgqjui2jhHfrDPONADpEYCGD4kPy/cKFM
 LbxeobVgDCRllIgrffjViMEnlUdCDbIK+0PIMMw5gRs9SLMX6RGW/tGOD
 ArkxNLHdZO01ucGZ3JXVoHVOA/RXmBu7G4JrQnmoxnOWuqiChqbHW/i66
 fiaq/Ou3XDNPaR8zBg3Y2/nn4PoBpL8cujBr/Jl8Wntzke3pmj3Zw6fzY w==;
IronPort-SDR: 5Le8hOob+ZLjrU0+sG+v5xZurebuK+UfiuTVHOs9KE8kkFLMYEjAyNTA7co/CiWCVds06ucBUJ
 MXriWs7M75+Sxn2RJhRbK+qzcf9NmblGRO7AMu6xXSGbksGmLNvyErR0gsXUjLh7LptztldfYO
 xfWXe9KOXw4OaSyteXPtgKHUqqzxQZTPsPtiHYk0pC9fHGgo1X6SGg/qOmGbi+T94pOgqraB8G
 +Mi9v0fH4t8yC1H0OyCBvF1fNf6LN2EQiT7gRlX1tHO0+56NjtqLeLqvGjkQbjeoXfc7Q4caSd
 27Y=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157758518"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:07:19 +0800
IronPort-SDR: AfII//jnzNHObjOZ2dso1hl7VjqXgUwdX08RJbQOGO39uxrR+d7MFNshJ9KZ8IJUR/eC8Q889w
 5FKMh68WKgWFeRL+vHgzjzvfImmMtx1I69BXZQ1b49Q+mosdjXRoQyyn7IgGaCQZzOkp68hS4g
 7j9C9c89P69lgLO856p14F7kGjxa9kz+vCG4SRwdGkpgMRiTTmBONWUBPr242Qqeg7IDYy+aJp
 mWr9FeIV03b7LX9aFZYktPacrNg7pEBBDiK7KV4Nuo+thJ3CFopQYL2tV4wNe8tcmIW44H4rw8
 fv8cMM1sPKDS2oc3gzd7T1VX
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:49:54 -0800
IronPort-SDR: QBnDS7DVrddQpcsFsBzx6dUP1vCou2zr2+U/E8LncZi1HXSOtDax3BLEkAh4fkXsMSmQFWPGFy
 i9c3j/giOOU39nkkPY4ax6KBgaPpzPJAoufKOchG2Ou0rmyaYFKJUhk8ZPDWpGoP3x51bQeso4
 ExxBU/jV033SF8Q+teRhuDUjl9XHjbBJkEt8Ba8a4jICbdKDHOxkWO7MzEPD0dB8h3reWZeWBh
 KVK+JCC1W+90P0+/EdNiEnUM8xRZsi0+PwhkhSGTp7e4x6m4p6jDgQlTHPkRvWkNPGtHl7ZAoZ
 Mec=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:07:19 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:00 -0800
Message-Id: <20210119050631.57073-7-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jTv-006vjt-S5
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 06/37] gfs2: use bio_init_fields in lops
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
 fs/gfs2/lops.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/gfs2/lops.c b/fs/gfs2/lops.c
index 3922b26264f5..9f8a9757b086 100644
--- a/fs/gfs2/lops.c
+++ b/fs/gfs2/lops.c
@@ -264,10 +264,8 @@ static struct bio *gfs2_log_alloc_bio(struct gfs2_sbd *sdp, u64 blkno,
 	struct super_block *sb = sdp->sd_vfs;
 	struct bio *bio = bio_alloc(GFP_NOIO, BIO_MAX_PAGES);
 
-	bio->bi_iter.bi_sector = blkno << sdp->sd_fsb2bb_shift;
-	bio_set_dev(bio, sb->s_bdev);
-	bio->bi_end_io = end_io;
-	bio->bi_private = sdp;
+	bio_init_fields(bio, sb->s_bdev, blkno << sdp->sd_fsb2bb_shift,
+			sdp, end_io, 0, 0);
 
 	return bio;
 }
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
