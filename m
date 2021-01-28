Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 445C830760B
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ou-0000Y3-5V; Thu, 28 Jan 2021 12:27:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Xa-0008JY-5M
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/PBTtn5ERsR+qOyIVV8lbtKqz8M3O/cKNJ7k8WMKyeE=; b=m5X6/ByAm2RMe81/pMZsH2qIbN
 mq7bQtfd1xnq3itzl1u+IL1KPhj53SS9tszxaI34k2ZSy/zWFLwzX+Qn/oy7Q41+HWmoFLfLVDuGJ
 UdKcyYr7MXOREdxPYm14thUaRuo98st7oCAx6lhYFaxSNsYN8/K51Ds+e6yTZ9YXJP28=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/PBTtn5ERsR+qOyIVV8lbtKqz8M3O/cKNJ7k8WMKyeE=; b=cPS0Zwy1nDjW/PiUe+PtZX+iDw
 j18NSGmbI7Xt4qxQ57cW5q6JMtpCdCUwbKGAXccyRSZ/3voKcq7ZfqczC/wIiqOE9AfivuFu+wrSC
 Q1Q/1E4QopEYjjyygIFZcyzy4hijNv27RXbk88PyZOhHC2jCmUge6HuhXz55YnO/hIDQ=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51XU-0000f1-N5
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:16:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818184; x=1643354184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KxHF3VRS1HdpvW1dkgXeP6+bfyoqSsbsdMU7tIvbgNk=;
 b=G4H7x4ZvRKMUXJCLW2rO8Fg521alSuYweaVylMT7Vtlvm91L1dDUaEBW
 c5VXSgw8h+N6ucAszm6xYoctn3OWQJWjEJkZxaf53CxP7EtZw13iyhHEi
 xGpNPP/YR0hxthD+y23mvhuOlSyCgPtMhgxNmFBKadkZsnIjfyaBZGrJc
 Hyw89UJZ/iIGc5H7ptizeJ0MJ6Ys3UURI4zdUdaKb6LOtNA72aKDzVBgI
 6VhJm/by+2rRP9LTp/4pQIZ7MxN2erkFXKej0368iVi3jmU8dLH4h0SFu
 nUhx4/mJKui4gtGivwHVvjiS3SSbGkk7MYQ5OEFY8yz49pq/OVtXNTb80 A==;
IronPort-SDR: GLt6iBwkaq7mIt94QClvkvIso4hdTra+NvNDYdl3A1jhz2of8RGhpXiAbuY9a/DIX+KvjBYgMu
 82clB4TAcCmV7MPkTnRZ6mpcKlKylZWjfAt3GykVidhHJ0+s55IsnnrT9gKU1ov8pj4Sw05GJ2
 TH8TAs9cUplztldxnLBGcpbzdta7EcyBKqmXGmeyvFqburdJIhjbP8K68LZ1u1wqOjKa0srh0w
 ylknjqyIKBZjJdIh6UFMfz5g18/WIdmCqxImU7iDBQ/6KTCodr8z03qmp1XXHDmL1oP99sQ0Iq
 fHw=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158518507"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:16:19 +0800
IronPort-SDR: 5csnqx/KEc4DZzXRafHgX/XdoeRPzoBNOuGqNFvEGEZRLyzXGLIGIcTGWWuwikFurV2WKYhdtU
 yop9+7QTSpdlWrHpxj0a3OySh8uNH3I/E2ffs3df8LWycdbnheKJCa9gfmFACTBmOWYYDhsDXU
 29FhJUUoMDDjrzQ5hz5LS/tLirMjvFQtcqDBgSgtZlKvDVwCASWVx9PatkbnVFIcGFuWJ7c0pK
 iF97qCyH1HSlsmeZWRjjXK38YVHXP2UBIiimFig7VcphkfD1/CTARtzlyRbkqYYfiDOZDt6Nz8
 Um2KHmsgzRWobZMJx3Ek+c3a
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 23:00:39 -0800
IronPort-SDR: e2VgktU8Igp+G/4kwCau3Wofn5lcroMY0YPC7tNcu39YNL7JBNMa1+cKXT86WcuzihvSj94J7W
 8sv8AfyOojzHeLFV1vgVT8Pm71/iwcQAmabu9Ufd/jwBkzWKoKpTzhJn2DWIwNp2e8mqIx3G5A
 LS7tN5JWZnYOGTkwZ/LMhdAEhsm6g9R10Edu6WiLHx+xz1R0nO/OSJcMH5j4uo+XVYn8ORNhbv
 mynrcW4WJ2Z8dThUFTylCCg25lF4TIegFSZNE+eSh2Iz0rquG/Dk4lImC2ZggxF5isWDJ8MWSG
 Bw0=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:16:19 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:33 -0800
Message-Id: <20210128071133.60335-35-chaitanya.kulkarni@wdc.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51XU-0000f1-N5
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:47 +0000
Subject: [Jfs-discussion] [RFC PATCH 34/34] mm: add swap_bio_new common bio
 helper
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
 mm/page_io.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/mm/page_io.c b/mm/page_io.c
index 7579485ccb5e..cc30c9a0b0a7 100644
--- a/mm/page_io.c
+++ b/mm/page_io.c
@@ -287,6 +287,17 @@ static void bio_associate_blkg_from_page(struct bio *bio, struct page *page)
 #define bio_associate_blkg_from_page(bio, page)		do { } while (0)
 #endif /* CONFIG_MEMCG && CONFIG_BLK_CGROUP */
 
+static inline struct bio *swap_bio_new(struct block_device *dev,
+		unsigned op, unsigned opf, gfp_t gfp, struct page *p,
+		bio_end_io_t *end_io)
+{
+	struct bio *bio = bio_new(dev, swap_page_sector(p), op, opf, 1, gfp);
+
+	bio->bi_end_io = end_io;
+	bio_add_page(bio, p, thp_size(p), 0);
+	return bio;
+}
+
 int __swap_writepage(struct page *page, struct writeback_control *wbc,
 		bio_end_io_t end_write_func)
 {
@@ -342,11 +353,9 @@ int __swap_writepage(struct page *page, struct writeback_control *wbc,
 		return 0;
 	}
 
-	bio = bio_new(sis->bdev, swap_page_sector(page), REQ_OP_WRITE,
-			REQ_SWAP | wbc_to_write_flags(wbc), 1, GFP_NOIO);
-	bio->bi_end_io = end_write_func;
-	bio_add_page(bio, page, thp_size(page), 0);
-
+	bio = swap_bio_new(sis->bdev, REQ_OP_WRITE,
+			REQ_SWAP | wbc_to_write_flags(wbc), GFP_KERNEL,
+			page, end_write_func);
 	bio_associate_blkg_from_page(bio, page);
 	count_swpout_vm_event(page);
 	set_page_writeback(page);
@@ -406,11 +415,8 @@ int swap_readpage(struct page *page, bool synchronous)
 	}
 
 	ret = 0;
-	bio = bio_new(sis->bdev, swap_page_sector(page), REQ_OP_READ, 0, 1,
-			GFP_KERNEL);
-	bio->bi_end_io = end_swap_bio_read;
-	bio_add_page(bio, page, thp_size(page), 0);
-
+	bio = swap_bio_new(sis->bdev, REQ_OP_READ, 0, GFP_KERNEL, page,
+			end_swap_bio_read);
 	disk = bio->bi_bdev->bd_disk;
 	/*
 	 * Keep this task valid during swap readpage because the oom killer may
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
