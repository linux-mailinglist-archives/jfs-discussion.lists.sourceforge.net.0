Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0794717F09
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:51:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMR-0005vf-L2;
	Wed, 31 May 2023 11:51:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMQ-0005vT-Q0 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RgTLQ0ujtVrmH2npoMMVqBnEFnH1HMUaK48y8FQUJdU=; b=DFohGjv5IbfHBS8d3ta5PYCnyJ
 xsJ/MOBDPesuc/fa02vP5wSGOdHlfWJYIS5RsmObOV0oGDZJ8S79Wn+xOzEtCWViLnTS2yU3n/d2w
 m/6pIB8ZQy3r3kZNpYdgRj1IDkNAimgDHn+eAlHzh6ub0uzUTIC8fve1YIvMoQT7K0g8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RgTLQ0ujtVrmH2npoMMVqBnEFnH1HMUaK48y8FQUJdU=; b=XgNBpf2M2n+U223oLCn7EbpPLm
 qQ3mkrn6sDkr2k70E9IHOvbE7w2bmaEZOzSZNnD6Bu5dBuKRlOhpmpkMlPKZih4+sYiW8Xnl8ie2K
 9hWkGZ1hzImvH3Jp/N8fi2buPYnJyYcFfQEw4hahjIUZXRTLw1lzbO3KG3lifjsO5ytU=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMQ-007QMk-7d for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533885; x=1717069885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KEvuqAniWi8kHi4qA/R0NoUerrluHuejNoQFU/cmxk4=;
 b=RqVOQpDGxvJnx8HTlsseDxC77YpdOZ7zfemNWQVr81vyX426I3c+ZFBa
 VoSm9WFYC94OFzcauitJUsMZU4hTV56QszTRn8d59gS3JFDHLuTNVbE6v
 mgBfqkmgx3dvI1Mk/HkT+JbnByPrEBFvuuCUZFKXmtIaMGqRvLBdM5RrK
 QWAYM6/o2WV+arkHv1sz133GaWq6k4+xDe+CFkSB3w8sMNkZtvYhBxYrh
 Hs9elFGoM7zdBLBc05M7+BeTQkjAZ2BdWMCGN5mpA8namvUYZPmoVG48X
 QyfjiRwUxhyt42EvQFktDAGda1c/WCSZRBViWGrFRliz91g+/B8NLpub1 g==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179922"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:25 +0800
IronPort-SDR: gF37ou55O/lfxoYhhZvKBoiiMMhZqAKz9lg1IrjaFUBvztOQBcwTr4INhwUPF/3M0SPsBBzTyz
 +lktUlWKBx6OZoE/jcLkoO+9pauLKKfUDntwGfOQuVT3dcsAWOaT8nCIxAjRAMZ7eS2Omv8fEt
 1Hl5InUit6feIZE6/PRRc4ykQhEpVEwqEi9hqUO161+7+zdTsHkSmeM3D+3hjqbophcqDxjRmi
 i81bfZXu3ddDd4n+lqVXabOvnnRWimkD1YrkJVsNUWI6d0Emfxt9SWSPHUHCMjGoBApXjiMTvi
 hl8=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:06:18 -0700
IronPort-SDR: kmu31oBFaHnnNAJGr+xhYJn5TvPy7FWZ+3bDl/POq5dEGZ6Ww4ILjSxttl5EfKXZDUQcRli+rZ
 moVYwDDX+fxlfeNlv+Wrfhx9qjjhuINsRqJ7wDqXzpUIu1qfANLUrv5fZXWn+bq6nOyCp9mL+A
 jd+tV7p/CL7GZwMnIHFGfEi2kh03FzkyIpZKhbWLGSyU/rpV7IQd8BnuVNyYVVF4Clnms4udrr
 8axxTzuHHRxPpkFC7dekm4y71BAXSfErGtkIM3AXOE0UhIxp+Ce8ckzsRvifEaDe/YrKNROIOM
 ZV0=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:23 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:34 -0700
Message-Id: <cfd141dd7773315879a126f2aa81b7f698bc0e10.1685532726.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685532726.git.johannes.thumshirn@wdc.com>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q4KMQ-007QMk-7d
Subject: [Jfs-discussion] [PATCH v7 11/20] zram: use __bio_add_page for
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Song Liu <song@kernel.org>, dm-devel@redhat.com,
 Christoph Hellwig <hch@lst.de>, Andreas Gruenbacher <agruenba@redhat.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Matthew Wilcox <willy@infradead.org>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Mike Snitzer <snitzer@kernel.org>,
 Ming Lei <ming.lei@redhat.com>, linux-raid@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Hannes Reinecke <hare@suse.de>, gouha7@uniontech.com,
 linux-block@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-mm@kvack.org, Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, linux-fsdevel@vger.kernel.org
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
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/zram/zram_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/zram/zram_drv.c b/drivers/block/zram/zram_drv.c
index f6d90f1ba5cf..b86691d2133e 100644
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
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
