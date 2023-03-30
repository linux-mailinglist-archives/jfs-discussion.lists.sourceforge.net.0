Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED5A6D024F
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0W-0004JP-Kj;
	Thu, 30 Mar 2023 10:59:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0V-0004JI-ML for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rj9p2ML7UHam5+bM5W4iYW8IY6YeiyfeC2bpmKX2tVw=; b=gyqQzkb3EWz1SefZEusrdB3Acm
 zzvvzky+Hjh48Z5sSGUwwjTts1T7aUwBE3SGrk2XzpHNucJGjgFNWGH9hTB3vd0zHrIWZTs75Yjo8
 9yUJ1SdqXcEMKkW2lWlGyfJGuuY+PZTdIxhyQd4TBRi86VrZ6J2Rc/Hn9elvNI3zExRI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rj9p2ML7UHam5+bM5W4iYW8IY6YeiyfeC2bpmKX2tVw=; b=dpEuCLqMHAGMIyGiNeyPbeyRF1
 sSBIvNuZaWfDabdfMBLEkHmW4Yb3RQGscPnqDgrMg/jxxX2Zk3qd9w5sv9rNh+lb06JwEHduXP6uK
 I8/qAWT3i1GYRxYGrqf1KbyMjsb+p9pZp50hDq+HYQ1oP5WHU58fMSYuo1rHmF/+akTo=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0T-0007Q4-NU for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680173989; x=1711709989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mX1ugZUMlV3kS9C+vBwAioR51KxgcrVIz/0Juw9keV4=;
 b=X+sI9HX5reqg6XwHK4MsjTEG3g4FvJIoGWKz8PvRTPw5thAs6pksL9pH
 mLRfGAmgDPtW1yfPam4w9pog1K10pVO8njMWz4DiTTrAMgWcma4DRwIL9
 ZxSvwlG1luNvbSO6CkobCcMnvFxTDS7HkmRwGiKeGHneB7Vv2RdG+ISSy
 w8lEIXjldjJbZSWGshQrJyfDgwnGzZMaw68590nSfZsbn0kAfuakF3HYX
 LAI1iCNazdjei7NmrNeLOyvPylySZzghZ/imJ9QSDADcpdkUeaxGmspJW
 Rlz0eT/LN6m9cQkseu/+Z0A0YBQRIKg7SlUJEVamLjWZSnqFk2UkgzqnY g==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948089"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:17 +0800
IronPort-SDR: SMvaYzJ/Tv2yfFHhPSSUiy4SZ/nTGiVMiJzdboX60EAgXC/FBRnERHKA732beX/LXJqqbxux14
 SOEsl7aBhjSmYaFrKvTm/WJsuE0L3mMNJdXi4NMHjMOubYewWNidR9sVZoKRsfTuTq/YwoQlLA
 bZsxUbn4a7hjBukXR4iCrbl3lhJ5rM/NGSPJW2UWryKFQBmJySHltJJdaXhO0KdhurC2S7x47m
 pOCqLgO3Pf7r1+O0JLQGhLAiYaFR54Zr9JfMzhJIEQT//vS/BBfG39jrjn+nLrRHJIwJlqpYRf
 0tg=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:26 -0700
IronPort-SDR: tGiYEQMjhW4+FrecuKxL+pgIOJGkToeN8EqS2UrmeIc+jDKs2LGUqC5wI3lkpfIG0rY9KtD7vW
 nIXhgAj3MxSOzjMcp86VQe4PR65gCJ8t/Hr1B/e2y6ez9iviPUznUuSsFvmn3O88X1mcUdVcMt
 QW0hYZrihvAJT5JS7wACEa1P+gmczN4rkDt/LCKCq32xB6tvek7oUUECHgErjCvhLuoZBvN/xK
 9puzg1a+1RXgqpR24l5LZUwbmEKk1F58oXHxor04IMFieHnETCM2z+v6HEWQ9+B8eqMai+lo6B
 aDQ=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:15 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:46 -0700
Message-Id: <1848c9a0ec37fddf7bda3f97c6363a7de97eae19.1680172791.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680172791.git.johannes.thumshirn@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The buffer_head submission code uses bio_add_page() to add
 a page to a newly created bio. bio_add_page() can fail, but the return value
 is never checked. Use __bio_add_page() as adding a single page to a newly
 created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phq0T-0007Q4-NU
Subject: [Jfs-discussion] [PATCH v2 04/19] fs: buffer: use __bio_add_page to
 add single page to bio
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
 Bob Peterson <rpeterso@redhat.com>, Hannes Reinecke <hare@suse.de>,
 David Sterba <dsterba@suse.com>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The buffer_head submission code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 fs/buffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index 9e1e2add541e..855dc41fe162 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2733,7 +2733,7 @@ static void submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
 
 	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
 
-	bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
+	__bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
 	BUG_ON(bio->bi_iter.bi_size != bh->b_size);
 
 	bio->bi_end_io = end_bio_bh_io_sync;
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
