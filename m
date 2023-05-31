Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3AE717E3D
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:38:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4K9v-0004jO-Bk;
	Wed, 31 May 2023 11:38:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4K9t-0004j0-IO for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1S2DSWAZA9qgvAvQBzAiSeR/Df+u9UWYi0qKutiToQ8=; b=k02wv4UbNKkOlTQs5pnB+Ix78q
 9hf+/eE+wT6xT31lyPseB69AcLN8OdJ4pIPf6kWBs7XREOS32sxvhE8Tfr1Vi4sjeGuCpF5hIclb6
 VmMsw4rHpibVLP7brmf4IahVnFZXld+o2tj8NA91W6gbE13qiJztD5p/R9Vb5Hv0lKAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1S2DSWAZA9qgvAvQBzAiSeR/Df+u9UWYi0qKutiToQ8=; b=ege08LTG3YVU/itkua6/JYVqxe
 m8EAWrL605qC84iQsEnm150mrmsecJYBitgrYDritTQXmJn6sO7ndWaWLckT7ekv0B/UNG6bEoUhK
 CTEyD5HK3GZMa746yyFrigau/g3eOZre+4lVXmnekKT4bJEmlnQYTW6pWQ7+uaVnFOBQ=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4K9s-0006rs-PT for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533108; x=1717069108;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3krWE0DP9xJWhQSqe7JjRJmAUx3KR1tDfQYkyCcToNw=;
 b=SlX/RQbvFoDTYHn7WXqOBQs1wlbIIzJMTqxGUuh263gkz0M/O+RYU1Dp
 iArYxkBam39QR+JvVLBzVwRMge34W5gkyMmHjw1BffsoAvTkcb7n/Rl5j
 VO0Rvq0WDf+P4YEFA1BFCxZkNMivpoc0cPNDiVSzMASa863iVstxpBX30
 X82OxyTVyqR/QdwLIdy+jVyHivcg1sRASZNnXIDoCus8D65RDyErJRLiS
 uUnmlx48U82YDDkPI37FwAKl00No9Heo4u7WqE9UOoUZq4f5DibNQBPSj
 oTJSNVW1N5bIfj0Mg11Lh73T1ag1NhGk5rx6nNOodahHGAe7VRAqnTtpJ A==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179063"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:38:28 +0800
IronPort-SDR: pkMdd4qJ1Dj1aL/0hGvMDRStT0yAbrT+dkPOsGRLKdojyYurKowUFyThF3x/d5Gd5AqgMKWn/K
 RnC6p7pmHBbTsz8BjuHCn+9dRqm3BtRjXOkkWq40ak9a/jvaINuxrRhrd8ep08LcVf7xV60icW
 pUoSFj/iKJVvc2HPLtBLJ6FuMW03XG4S5MlxhQ4NNvwMZ9/LHBTKHidtA69ao5kU+orUJwDHvh
 imMbEEuiOxFnZkQ3le9RJqdmOlpJ6TfJqfE1AOaoGGKCLl+VugDgwYV0Xj+ZT5YsKYqrp2Zq5n
 jy4=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:47:40 -0700
IronPort-SDR: 47ImJaGI0R9IgPMsLaQXXdNwrl6BEebozUMm1VHcJZOy8vHI0VguiDlLtNbCdQ0iVmIlwZf2KH
 MHqeMR3rx02VYb9EZouZVxWQXSWQLNGu5k0JnkvB1/MmstC7zczZtC9/Xm9nqDLaDvbUVAiLYq
 4BiFarfx+Pmel2FLUYvzqM2dKdGWHPP/5Bq1M9lybi1epLOXbOCcLT62MykPChljCayYuf48Gw
 SwqcdZmp/HRFZLnvhq54wc+8zznlM1jWToLdgjEKNUzcmtTQh/xrIaFC4s29CsGWXKlhWyjqWE
 ITw=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:38:25 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:37:49 -0700
Message-Id: <6cdf62501852fa43493ba866a49dfc9e859aa5ee.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The raid5-ppl submission code uses bio_add_page() to add a
 page to a newly created bio. bio_add_page() can fail, but the return value
 is never checked. For adding consecutive pages, the return is actu [...] 
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
X-Headers-End: 1q4K9s-0006rs-PT
Subject: [Jfs-discussion] [PATCH v6 07/20] md: raid5: use __bio_add_page to
 add single page to new bio
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

The raid5-ppl submission code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked. For adding consecutive pages, the return is actually checked and
a new bio is allocated if adding the page fails.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid5-ppl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/md/raid5-ppl.c b/drivers/md/raid5-ppl.c
index e495939bb3e0..eaea57aee602 100644
--- a/drivers/md/raid5-ppl.c
+++ b/drivers/md/raid5-ppl.c
@@ -465,7 +465,7 @@ static void ppl_submit_iounit(struct ppl_io_unit *io)
 
 	bio->bi_end_io = ppl_log_endio;
 	bio->bi_iter.bi_sector = log->next_io_sector;
-	bio_add_page(bio, io->header_page, PAGE_SIZE, 0);
+	__bio_add_page(bio, io->header_page, PAGE_SIZE, 0);
 
 	pr_debug("%s: log->current_io_sector: %llu\n", __func__,
 	    (unsigned long long)log->next_io_sector);
@@ -496,7 +496,7 @@ static void ppl_submit_iounit(struct ppl_io_unit *io)
 					       prev->bi_opf, GFP_NOIO,
 					       &ppl_conf->bs);
 			bio->bi_iter.bi_sector = bio_end_sector(prev);
-			bio_add_page(bio, sh->ppl_page, PAGE_SIZE, 0);
+			__bio_add_page(bio, sh->ppl_page, PAGE_SIZE, 0);
 
 			bio_chain(bio, prev);
 			ppl_submit_iounit_bio(io, prev);
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
