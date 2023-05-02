Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FFD6F41CB
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:37:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptnNX-0004FR-DD;
	Tue, 02 May 2023 10:37:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptnNV-0004F9-UD for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xI6cyga7qbtZXy/icNZEKJMGvLFWipGc8tNCJkGzHdo=; b=YjtDL/SYA+N1gqheqcK7wilbxC
 gd07W1kjsnO8rNDYgNGEgswfvhh+UVg8aFQ0gScXprMA37BMIqcxaeBEGG5JFtOOPALjBC2/thXuZ
 2e/evhFV1zPGv2F01nVG4kjfyxdHz26HcugUjZldtzFAP7u4fuBWIB8EFDhKYBhOw4gg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xI6cyga7qbtZXy/icNZEKJMGvLFWipGc8tNCJkGzHdo=; b=FCwMykYzB2QhicLJO+/zQnI14x
 k9tSX/7bavRT1p5ZC3vwWyQK8h16AeQ2UyjnELUCwMs/tIjojRYq34W6H40W5pFgX8BJEusNqEGiE
 N4kt5l/iihoPgAuyHh1D+D36KBlE5UFEQGM9EYwkGXu5o4otMLVG3kXcb7RnoRktSvpI=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptnNU-0005BM-Ta for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:37:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683023820; x=1714559820;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gvTmlyJDrtB3jz8iBa+x9pcB74OLTnG9vUDo5GkRHDI=;
 b=mF78N/5XdZGsl9ZRZfymqOsQm1JrDoEXmBhKkA07tuR/ExFgJWs5Fl9f
 r/usJQx4pCZl/kUOpc81PZ3ZEWiyKb0VooXSQdGEZfQ0kSyw6hduUKHb0
 cs4zlPPvrnGlhiSPRzwlSzrH4Sp3Ba6OBAS7qRJriFBNkZkM93HhCNSi3
 fVdlpKKximwAzaH+8C8giVEYMQMFi3W/X96BUFIFbiJRKOkz67+i3cgZ1
 s3UQPCY/zpRHvHiy35UQBgLeX7vrxvggR5M5YBQ7E3nIuPLG5/ZjUH3yc
 DLM4trNiUzn3jq+hpOX2wAk0FfUKalVvAeQs3abPO2+bEus5iMDIaslcf A==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="334136205"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:27 +0800
IronPort-SDR: lSEmtZh/BCexkan7FYCcgX6rFkABAooicxnYVI0rKmvWT0Ij8Y3wHrvdQHa98bxZa9yGTuYY3e
 c7AyeTgcWRPDxSiPXiFbdpWqobs0mql5UnW9foxtt/hAtaEphDTIc+nriQvT4ItTDZF9pImD0Z
 149OvbFOFYc4PFdsrpNSmYFTZSKkjU3muxqs8M0/BJI7/AtjLyNZey587ug4ArDUywq8+8zAns
 zml3fxX7O3BjwxQw6UjGd18Kv/tK2s8sPNRKW5ggHI7XuXTkSbMs8FysGnOSykDcXzwxlG0ogo
 bpk=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:54 -0700
IronPort-SDR: wp2VCzSGIEBx+d279yxevBn1+XI3VuKvqj8oLKNceK55K/eOSJmgxWhB2EK2yL9r249YKUNO4M
 bGeHb0y1gSCYoZWdb1piBrcelHDZIIRDff/B8f6uw2wt+EBKzLtgHpS/if9aysTLwKYYR4CmyK
 Ut3+BZdj8uHy5barmhyvli41TJGJFb4YMPGI659Z9H7QJ+LTZHxcRB0MAMkzGM2yCWWsIECayM
 KNaUJNela6Ul6p5EBpXHf43F6gec7o7gG4gWdqANgAE+DXYIfyjuwn3+4ZYonG6bdrIN5mcSTK
 NIA=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:23 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:25 +0200
Message-Id: <20230502101934.24901-12-johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The zram writeback code uses bio_add_page() to add a page
 to a newly created bio. bio_add_page() can fail, but the return value is never
 checked. Use __bio_add_page() as adding a single page to a newly created
 bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ptnNU-0005BM-Ta
Subject: [Jfs-discussion] [PATCH v5 11/20] zram: use __bio_add_page for
 adding single page to bio
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
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, shaggy@kernel.org, song@kernel.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 Sergey Senozhatsky <senozhatsky@chromium.org>, hch@lst.de, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The zram writeback code uses bio_add_page() to add a page to a newly
created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/zram/zram_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/zram/zram_drv.c b/drivers/block/zram/zram_drv.c
index a84c4268257a..4b9ca6d41b92 100644
--- a/drivers/block/zram/zram_drv.c
+++ b/drivers/block/zram/zram_drv.c
@@ -700,7 +700,7 @@ static ssize_t writeback_store(struct device *dev,
 		bio_init(&bio, zram->bdev, &bio_vec, 1,
 			 REQ_OP_WRITE | REQ_SYNC);
 		bio.bi_iter.bi_sector = blk_idx * (PAGE_SIZE >> 9);
-		bio_add_page(&bio, page, PAGE_SIZE, 0);
+		__bio_add_page(&bio, page, PAGE_SIZE, 0);
 
 		/*
 		 * XXX: A single page IO would be inefficient for write
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
