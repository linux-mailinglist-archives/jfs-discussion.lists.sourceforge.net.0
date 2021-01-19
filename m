Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2BF2FB696
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:06:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reV-0000Rc-5C; Tue, 19 Jan 2021 14:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jX7-0007Ly-CG
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:26:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nbcuRCuR72FDfOB5VQ05kJWGgsSoD6elv4bgOnF+A0A=; b=O/OblagmI4fLhnsyGEzCtgl1iY
 EMr8WQi6F05+kUeIFH2G2+TFlFkeV6X6F1f2kpSXAYMi8LC1Y5iYwkMmLSdw2HJmS0HhWNC8sUkj4
 cseINWUY1pes34yK+s3gQEs+nrrg9IXn3jBPdQdXIFPfHUuIpgl84/19MFhOlmoeGIp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nbcuRCuR72FDfOB5VQ05kJWGgsSoD6elv4bgOnF+A0A=; b=VatBXCgqkoagXitOibTRTQhFXF
 2w2y+mHay/bHnHSHHBsOYJx1dXrMtX4J/pweXWfdTFFDag4wiyuSwaUkZj1F3X3nhEf18mrJOGTIr
 /MUNxQGBMXL1j4Z0WLFPavZLMmHSOuCM/qpNoo4NCpJZ8P7preFgBoHdH8udyJXhDs6Y=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jWz-006vyF-Ct
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033977; x=1642569977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aM7JQIyW0SiKsSN5jKrINUGLCUPGl+Twv+vS/lM3j18=;
 b=jCEsEvzbuUC8QvNUkpFXZVidibUqIy6d/iR42eZQFB1Iy9x325RR4YC3
 a9PWxRnRo1Bqq8j9QMYqHuYObf0jN6QYoHwHDqLaYzDySpLSB0Zn570xb
 XBOI3ycADFNBhNOyjmbv6egqp7GU0InNvzmj5fD129aI8T/oVPCPNBpXN
 PwcSA7yDxOoATyo5NsaV9FbcVsyZuu1PJQDd2u/vQ2Sq/rlKNp8L5GE0e
 KSzLVd0Ix5tsBlCAGpAD8bMABMU2izV0QEWKYFTMVLBWsW8t4laeVEngB
 YXm/d7hIS9WvYuEeJCnUyhREGntCXwiDraYkVhihg8/BKxtp/4eb180am Q==;
IronPort-SDR: olR8VQqGKFlXORLucSX8yfrSMGL51y440XWJaLI9FcFVJXTQs5Cyok6bh2E0nJStkU4ELEmES2
 7Ee0kJqOR76kIqJ1TttvOkDehQT74Ov76kQ25+6f81O6KtW9vAEkw5F7BtAsySlvRpWSMc0UoZ
 GrfleO8j8RRJ3jvCFaBEmR44ikZVGLJ9VwUpU6abPfS8XUnIVETV2j650z3hvQ2jea+uu+T9KF
 5/0EyCtN2Mbti4z/rEqF1m9sWP6Isstg6e+LBVV62yNIopUv8Mp4QgkrNp9E3MemY4hLiMnfyU
 Sos=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="157758843"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:10:40 +0800
IronPort-SDR: gffk/v31gWL93aJKHPsUFLV2wFefmTi1mfCR6MNlq6IjhKrVuNpUfUGghgGYs/EjGEVuFngBv3
 AcJ/ljXxCdmhwNknpG7ZhigF5mvaXy5oVzI87oufCm7wfWkethFxKbGhER+VjTD/7vvmDuKzaA
 BEww7MDE6PJk71Gd/dIe9rD7be1Zote3Lk0led8NAoYGGa9EEZt3MB0sPQwQiCbYltu083iTo4
 x79wb4uYPOw76LBe5u/Q40vpEBo9fMfs/sXlYQcRNDTxasdxEiHx244kmcavAMS+gNSNcNGNLb
 mpxMBKTIVBlEvXy4xeXpNeFj
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:55:17 -0800
IronPort-SDR: oklSZwC4T98igITkHvUN5/cFLVu1yS+dVuRFw1rj6Sypghilpv1dq004ftoRiIcXr+1cvb1C+g
 e1+GCw894PQkPu1QcGSBSC17BzbJVdUoKLEKnb23R5ToJPinuljlR2aaNZBBxuQfj4BqaudRJa
 XDGeUKlYGqrX0PkiJf+ZiBwJ6Ik8t4zeEDjdqLOFU05xrby1lNOvGG7JThAaPObtceSdxUj1c7
 /m5QwBatTkcZcWmVuIDWjsPnj5ACeHofJxm9d2p07oDQHlNegcWml37RbpxW8gEnNxSajg/OqB
 c4E=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:10:40 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:28 -0800
Message-Id: <20210119050631.57073-35-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jWz-006vyF-Ct
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:30 +0000
Subject: [Jfs-discussion] [RFC PATCH 34/37] nfs: use bio_init_fields in
 blocklayout
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
 fs/nfs/blocklayout/blocklayout.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/fs/nfs/blocklayout/blocklayout.c b/fs/nfs/blocklayout/blocklayout.c
index 3be6836074ae..7ac96519c8b7 100644
--- a/fs/nfs/blocklayout/blocklayout.c
+++ b/fs/nfs/blocklayout/blocklayout.c
@@ -128,12 +128,8 @@ bl_alloc_init_bio(int npg, struct block_device *bdev, sector_t disk_sector,
 			bio = bio_alloc(GFP_NOIO, npg);
 	}
 
-	if (bio) {
-		bio->bi_iter.bi_sector = disk_sector;
-		bio_set_dev(bio, bdev);
-		bio->bi_end_io = end_io;
-		bio->bi_private = par;
-	}
+	if (bio)
+		bio_init_fields(bio, bdev, disk_sector, par, end_io, 0, 0);
 	return bio;
 }
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
