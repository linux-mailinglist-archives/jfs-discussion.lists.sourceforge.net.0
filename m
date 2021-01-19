Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B14B2FB6A9
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reV-0000TJ-MM; Tue, 19 Jan 2021 14:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jZc-0007Qx-02
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:29:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cBg05R5ZMHTGjB81VZ2Jg3xuAFeT28H8/BjaT6+4Z5I=; b=jr3/LxfTRLz62wz1+u+41njR4y
 LD3bM5VtDBXOTL0E3pwY4hNRuiW3yUOrHTVLqmm7kV2ujwWBgnQnWpU9oWg9PzlSGg3r25BEaVCUY
 pR9giDYYOG0PmraGE/buvIK1WVhJI8hJ1V2HAj6zuZfc7k1uLGEYInG48J7ahYPI4Dd0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cBg05R5ZMHTGjB81VZ2Jg3xuAFeT28H8/BjaT6+4Z5I=; b=Ix56TWNz9vBzbcl0QR02sGPiQV
 8+9RSb7MhNC7VA3UD5FwpPDChAdS9gwLMIDpjHP1G9vt1WXjsi0Fk4mRQgCOChaWuY+kAmjRqHtew
 IVBe+VZmyQUJACB3e45zv3Yy1HNleSgD7DCPG+7CkYbHQ6fsCIWW/WatD81/QsAGZ0Os=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jZV-00Dzzh-RU
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611034183; x=1642570183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xUOVrFleGb+eYEs5Yq2ctnwrCXH8hkiRL46tj+d0DVI=;
 b=bLMZy2kEJn+bfHbp8DnFUGiJF47HN4q3hxnWdCYM2EFonwNcfI3jW1TO
 1VBNMvNzoV+DWrWgdqgAEW9aFk2Hf+juYmPL67GjDRmaV5UrrcC5lFEfy
 fYTGL6/OfspPd/7ijk7SSkuLI25kV1YXGhU13JFi8iEpu2UjMK02uGZy+
 oboT4dheyH24jmtpzPl/6vUUN7u3R3NIjf1NMPAW3NkMQTINzWg4CE85m
 ew7oczi0nQd8JniBCy/rT4mP7tb/M2se/2C1c+pte+lkdgVzo3sQui1lx
 plZaC0xIgRRnvhbuw480YU216fn2gSlh+FRrLHBq6Fyht5Y57mwrrUzWa A==;
IronPort-SDR: FQ2fFq2L5mNdVKd81doMgr7iL/kj2Ic+gymHPNDP2kYQe5phimEkjB16f1b96DcuIeNrHJu0pl
 MGdkRbl4jHmhVcUTu5YH/ze2Y1z+nxuFdP9BfFsbYexassiNl18r3uLASa/fMnGmJp5EAArscu
 V1CfOWpBrXDSQgfLvURR9elTVF3XMXyeV2QTacWz1AZ7spxrJJu658WRRq/tWXolQBHWbpDH+5
 SzLrwcNv/5ODJJuez/bwKKysT6cdnihOB0+DTatkqXGbNoWRiPVL9Ve5HgyHMcJcHRwKQf2jQ8
 QLY=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="261722165"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:17:57 +0800
IronPort-SDR: kJ5Hme6N6NsMPSSGwIqb9zN5WU46gyBT1RM6X+5cUNdHnmkTqa4YFLWbCgjaeTjiNYrDP6LR97
 pYxIE5YHxMwZDDKSc6+f4Rm6Ey/p3SCRh9tjEiDKrGVyT2W1pvGvCGB+EH+rF5qsX+b4+elAqH
 ALIGBvbkJ4A8K4+DYzYdS4oUywBgT/X7FldIhzsrlz2goQZGX/E8yruF8yxBdAlU40f23bLZ9T
 5+uPon2oRoUe4N2XomH2bv8eLBPKuZjkSeseMe6V+XhEw6XgNGYcdOsvmC1iGwx+VKL6SWXvCJ
 y43sFEvve33s7FRc0WmD1338
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:50:15 -0800
IronPort-SDR: TM9dpxhc1bBjOypQU+TCA1+JHS3X6tbyUfX7CLJp8sH85tB99xJFscHBDCLFq2/sTR23LiC3TM
 J8KKwbkNN7jjvKISe7zzGqpFWELclGi38nUt/LvFQapcIN9YFp8DZRQ2izF3uYGZWxHnRIgtO2
 WhlQFVHRjq0w2Sygnwa63xoEK9fTLJNmudOASmzr+o1zZ38TO1TOJzzBzvspEDTXWPVaZigUus
 O1/x342A0NXQzCNMPt4Ly8HseHr0drZDIxn0r08WsOUedcj3h8TiQqY/1oiIV4nQx5hppaJXgU
 55M=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:07:40 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:03 -0800
Message-Id: <20210119050631.57073-10-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jZV-00Dzzh-RU
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:30 +0000
Subject: [Jfs-discussion] [RFC PATCH 09/37] iomap: use bio_init_fields in
 buffered-io
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
 fs/iomap/buffered-io.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
index 16a1e82e3aeb..d256799569cf 100644
--- a/fs/iomap/buffered-io.c
+++ b/fs/iomap/buffered-io.c
@@ -1222,10 +1222,9 @@ iomap_alloc_ioend(struct inode *inode, struct iomap_writepage_ctx *wpc,
 	struct bio *bio;
 
 	bio = bio_alloc_bioset(GFP_NOFS, BIO_MAX_PAGES, &iomap_ioend_bioset);
-	bio_set_dev(bio, wpc->iomap.bdev);
-	bio->bi_iter.bi_sector = sector;
+	bio_init_fields(bio, wpc->iomap.bdev, sector, NULL, NULL, 0,
+			inode->i_write_hint);
 	bio->bi_opf = REQ_OP_WRITE | wbc_to_write_flags(wbc);
-	bio->bi_write_hint = inode->i_write_hint;
 	wbc_init_bio(wbc, bio);
 
 	ioend = container_of(bio, struct iomap_ioend, io_inline_bio);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
