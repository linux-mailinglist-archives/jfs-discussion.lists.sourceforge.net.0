Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 244B96F41CC
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:37:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptnNY-0001e6-GD;
	Tue, 02 May 2023 10:37:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptnNX-0001e0-3M for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6gN+DiTA+/9c3wZqFyeMfWipuKVVV7MzHdNdjuLDekQ=; b=WsyCAO0ZeBvQC6rAe7XU3eTLbK
 TWlo/c9eV35pkdpeIw3D4i/Ov26dsOV4oeHq+vTqPpHRhlwIxz7P8ds418Kl4yqH/OQH3HoPhEa/Q
 l6lKmCIX3YPDlhHC8qC84SVoKwiCpLnlQ4DBuT//41f8Gx+l0cZS2+FVcz1uhhS4A8Hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6gN+DiTA+/9c3wZqFyeMfWipuKVVV7MzHdNdjuLDekQ=; b=mwhPrIJLLJQ5DcGNVNOoqhU+28
 8IhbzvSdO9b9PjpD0DFKbk3fDUKhbtYEW5vuCQTrgW1C1WfcQvlc2a4+V+tSam+tNk4twVWm3JvFz
 aPF1W+C8XztE5jYdywhwgqj+W+Nqg4SPEv57ajb9hECKd2CWAjv8o1fePTsPUTba57JQ=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptnNV-0005BM-KT for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683023821; x=1714559821;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lM+HCnb2fRYqmeoa2+i+xDIe68f4nLZ6E3joh0Z1hsQ=;
 b=fqMpoNQ0JNN6neQVJsw4kOUGTqPqo/b/lBd0QY0qRfkcznBAumLDmqbi
 +MmIVfrevPO4in4RLbzwwnul1jxgDdj2+zuvewcqSNtZ9zS3+ozgbyy61
 Uu49IIAgQKhXyUcyg1X6C8Ve4IdDZErt1OVB9kT1UIGY7/ottbNnYLLKU
 4LbA1eKX904CiNcJor6tlQQ1tUwyfT0Dg3e5JDCNA3WSZf2LUdWlqE6xG
 s1L5v8X+XvDDlbkR7NQnv0IH4IARDbZCZsFpXLs0b4PFCopHbHAq+eYh7
 wYimwY+/ag3pyG2LcUDFBfFSvmPW/HO85W11pFiGu1MCa47xGWyEsXHP7 w==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="334136207"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:31 +0800
IronPort-SDR: m35mdXPaXx6Bk538+v9cwmHga3M9+JbQpIP1KPBkZYVoNJgrrhvTegcdduEQXJ0n968GuRlRw0
 2mjuqhTigN+56goSKi/ZTh8rzwRM2EZicyJiVHtUB3VtXR123e3igovnTMVF1m7GajOOPcvKMh
 kbbIj953+x1OCrOqyVPbBd7xJ08GYsLL2a+YIzmshP8+6DeWXzJj78Q9sjmhjSn3pqbeQHqr48
 Yx4OUvM/NGFcGZzd1/i4HR90cBpInmJJhEaWrPyQFKXqLKWKYSwPjqQ25g38noEG9TQqZIODjC
 8qA=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:59 -0700
IronPort-SDR: TkiaafEvpeoB5UVbk6lYF+MYIKTW0x1TS2RRFIsFup5dg77OzPOoA5o4aAAos3PeRXd1TAf24l
 JlqeganwqRXCePrMzLLQEwqwOlT9adKZ9UM/6C0SJSTqBI7//XMecxlqe0zSjF0DpZR+H3rbbZ
 XfOqZl2WmlO21QDDTnBVjbgyy0RtJrgM6I1boLg5EX+OGdLvmaW0Ll6RgEcSoJodKWqqflGCKs
 Tu8A1VT6jrxtAAfmzI+1Km/Qb4+fbicaPop5zyn8h+LvanboVG81oLtfNfwngSXAbDiAnyp6YK
 ZDE=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:28 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:26 +0200
Message-Id: <20230502101934.24901-13-johannes.thumshirn@wdc.com>
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
 Content preview: The floppy code uses bio_add_page() to add a page to a newly
 created bio. bio_add_page() can fail, but the return value is never checked.
 Use __bio_add_page() as adding a single page to a newly created bio is
 guaranteed to succeed. 
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
X-Headers-End: 1ptnNV-0005BM-KT
Subject: [Jfs-discussion] [PATCH v5 12/20] floppy: use __bio_add_page for
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
 hch@lst.de, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The floppy code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/floppy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/floppy.c b/drivers/block/floppy.c
index cec2c20f5e59..28ec6b442e9c 100644
--- a/drivers/block/floppy.c
+++ b/drivers/block/floppy.c
@@ -4147,7 +4147,7 @@ static int __floppy_read_block_0(struct block_device *bdev, int drive)
 	cbdata.drive = drive;
 
 	bio_init(&bio, bdev, &bio_vec, 1, REQ_OP_READ);
-	bio_add_page(&bio, page, block_size(bdev), 0);
+	__bio_add_page(&bio, page, block_size(bdev), 0);
 
 	bio.bi_iter.bi_sector = 0;
 	bio.bi_flags |= (1 << BIO_QUIET);
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
