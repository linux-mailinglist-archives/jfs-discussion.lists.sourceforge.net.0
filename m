Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D4A717F0A
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:51:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMU-00071d-Lz;
	Wed, 31 May 2023 11:51:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMT-00071V-CM for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vBhERJyH7iZFJP2+DBlNzG4J3OKG3vOoXxHtp7iVZXs=; b=H9TbTqwVWaOxxXXclI2cU72Ufs
 vWyMZfcvmRS42X9Scjkqxmv+SGfdZI8kBGIOMJlF8KEEstTaJI4ovwikP1DvDMOQhYxFvUVDk+eLn
 y4/Yqqc8YIzR9FBRfgxHqhCdm/m8Jw6zjw8RpacvSvLJkzopzcLTYRx5aOf4nsqwpkZk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vBhERJyH7iZFJP2+DBlNzG4J3OKG3vOoXxHtp7iVZXs=; b=OziA22AcDz8nFknXYB0kkScV0U
 afcQpy0hps0fRip4DICPemaqIAD/mbkupmKJRRuySvmnVYSgt4AMiypVhoAo+xO9ITZXKzXZo/JzA
 kkEYsxLlRdNYsQ7BlEzRse7yOF4bnCNVSnUd+GmULXrLCDgeWVNngtGM/5pXmryTDP1E=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMT-007QMk-6n for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533888; x=1717069888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hm9sz+6gQ1vQAlShNXkzg+WL0o4VgpWyUzccJnRSUVY=;
 b=gPjS4nqxf0cNXwK7piMwOtbVGBdL0pBzmzRTXXfFermRLQFZD/oLsmQT
 2U4NKllie8z/+cfdAxTkY2W2ooPCr91IRAXkLvHPaRhDWsQZy5P88ZvPg
 j+liqJYS2hix33ifOHxubFvML3gB/qlvsiHZuAOe/kg2dPC3GjJs/PRPl
 1fiwlHVydCTJok0GE2kIj89MkuuOJItkxAEn0AAyo7z29vV5QCpRmnGYU
 9LwwgsBjVbdxXRzc5vS6f7maAVK1pMQaW3Lxhj3BbSSGfdGjJatLpnwMb
 7+9HM5Wq1VTJ2DZ5Rg6oYnLwP1/fWOP46QLGt3d4ofCDJ3ODqxuGQvnjw g==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179928"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:28 +0800
IronPort-SDR: 8HsGAKjn9LC/Tfz1BANmBQUo9F04DMm20fMsauOIcxVFQO0FZ7/sQkUwQlstb+AECBB2FbUwCW
 Ee9fmtzbGQiD9xsdlMTFcgMmTOOUisHTpmKiwZnFLKoye1U+bY14rBoU07UYIQC6ig+Q3pUI9U
 ShB6CdvrFydQHzcr01xzT7dcXbBEOke2kn0imrjDEOPmCsfnjcjXiGfZyyg+aWapshEeXH6i1k
 J7O2GGeu1PpAScmIxa4gunMWgtBoe4jGtv6oNzAB8XKtoaQFlIyVv1TKxOTzNN5SquytWncuKU
 gks=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:06:21 -0700
IronPort-SDR: ZZvgdXqWvf2bLPrnAzdu5RRz15ga0Chi9bLZvedEHwiFH+B9pi1FcckdZ9/wvgZDFhJZaVL+Gb
 BhT3tjRKwgxHLeMEuSyllM/qJbuncE8qbGgRTt2n/CBlkxPhKUal5Omdh78LULTg56zSv1r4Xu
 EaLt4CaJU4Rb1gJ2dDbb7DbwFFDTwtL1QrA2IPFcyQpyOtCc2SCv82C+Ozex//EzTenqavOpi1
 mtt/lwX3ifWVjnHHZE9zO0efKjQ4U5fS3Sv/0Tpv49OzM2Qr9C8+dRTcsbUdyAftaM3SElFTbV
 W6o=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:26 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:35 -0700
Message-Id: <33c445a3b431270c72d9be03d5da1b08ae983920.1685532726.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685532726.git.johannes.thumshirn@wdc.com>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
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
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4KMT-007QMk-6n
Subject: [Jfs-discussion] [PATCH v7 12/20] floppy: use __bio_add_page for
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
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The floppy code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Christoph Hellwig <hch@lst.de>
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
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
