Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4D77167C1
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41c9-0008A5-BD;
	Tue, 30 May 2023 15:50:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41c7-00089n-Bd for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qfskpwS0Ujqesmx9nawoFccYGFRFHr2duV/SZprdJTg=; b=Vwz9SYHpuIJzEmbYCzkOOrn58n
 oYhg09tkTEm/d3V2ERVHWJuyQS0GvkqER0EgD31A+6H+nHYXrR5qFovXkXuRcO7xfwJXw2j9PT7Pg
 49YUePapfunS+2nol6Tbd4qBsXXrwwBmIEzTNpTAqIqe8cadLLCJiBou6SEN+a6YWejU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qfskpwS0Ujqesmx9nawoFccYGFRFHr2duV/SZprdJTg=; b=mlDkxFWPSsXb86yVmjX9UMK2Jk
 uhDD5e3vcOQ9/xB885WfSaWUrGEnn93Cg6pLD2NSVDdiqIobome/vJL5ToCxwRXh1J/BNgAmjzE9n
 avqS3k0FRtFVmLEF7CHBA60ui9reY1jU2pjcGGn/kbMdpnr01NewI0WVOQfyfs8I2g9Q=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41c7-006fvb-Mj for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461823; x=1716997823;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8KwDx4F6OBY0YkNe6TbB7WM/40haMFuwXNEas5IG6CQ=;
 b=fy4EnB6ama5K+wF0Z33+SZckHKIxtvx5eKm0HG5SPxuy+qYxyKXzyj6+
 ydh+9ytL7xlV7inxnMZmijf2LUbGlstYfNK55R/Pu0rNVEUNc2SFLJVAw
 W5kN5WuTH+oo/ZJZIg/YEKRZHTCKh1qKOIsoSTArpwRGYfdbC8yslrzFd
 sNrZZlvPHjazgYQ/uB9iHGwqhDeubDWHoeMSdEtNFQ73fRKf5M1kr646p
 3Ob9URU8F+l3UDbf3Gw5jVTNAhSux4O04uDYSkzdXuv4fQKpEGS8lgUeS
 qRvHziIgLvOF70GiUo0G+uqYeEfYG0zjHqRATBMgrV1WHBHBGZA/A/9xi w==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="236922725"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:50:21 +0800
IronPort-SDR: E6WIG9ZVFjo9FHfZp+6w0TRXJho2WubvHfVgVHe/5G9tRZ8QPFbBsrqg+KpWkFUCFpbGWrIwe7
 Qz+7DmuXYgAdnk2ebvFGsDqUnE8HNXXLyP32ELxA1g/5RsaOdilh/aqfR5CGZqYL2wctS8c8t7
 hQRkNp8D1xB/6G9RKqNK/GhaYFaaaposL7qrTQANN9ioOUh38al5u/rU+B62T2e8UbK4OFiJLH
 t2Dl6WeQ/79i2UGEAVzAAERcgORQP9WNcRLmyOcRN9WVPM7EZuTuSc0HoS8DpLFByNfC74l80E
 2NQ=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:05:14 -0700
IronPort-SDR: eRxexFOpgVAiI/6qc3M2HlLMqG5hyprbnE2P5xkzi3wCU7bzC6rmbI3U41KClPzQrimk3nomV8
 vOG7AELmgo3HFPJEeyzLWnnwIz34HEVY8liiQQjfWPND8wASjp6PauRIZ4LoQjvCc69Za4Fbl6
 m+vZp4/ReRXC7hP9oNIBNf52TfQ/tdnag2K72W9yus3jFs/hvE58IgRrdFN52PYehAVf60iVrp
 tQueGHSyM+3hE4aPseYmzkNOHWMUssVoGCGrDEwV68pXp9pAvW+foUD6P2gQQwUQv2prEnyRo8
 O5Y=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:50:18 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:20 -0700
Message-Id: <7b1df30b0db4cd34a3c9d66c9c126dccaf2eb52f.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685461490.git.johannes.thumshirn@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Now that all users of bio_add_page check for the return value,
 mark bio_add_page as __must_check. Reviewed-by: Damien Le Moal
 <damien.lemoal@opensource.wdc.com>
 Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com> ---
 include/linux/bio.h
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion( [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q41c7-006fvb-Mj
Subject: [Jfs-discussion] [PATCH v6 17/20] block: mark bio_add_page as
 __must_check
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
 Hannes Reinecke <hare@suse.de>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, gouhao@uniontech.com,
 linux-mm@kvack.org, Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Now that all users of bio_add_page check for the return value, mark
bio_add_page as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 include/linux/bio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index b3e7529ff55e..5d5b081ee062 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -465,7 +465,7 @@ extern void bio_uninit(struct bio *);
 void bio_reset(struct bio *bio, struct block_device *bdev, blk_opf_t opf);
 void bio_chain(struct bio *, struct bio *);
 
-int bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
+int __must_check bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
 bool bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
 extern int bio_add_pc_page(struct request_queue *, struct bio *, struct page *,
 			   unsigned int, unsigned int);
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
