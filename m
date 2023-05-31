Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8C8717EE3
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:51:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KM9-0004oE-0S;
	Wed, 31 May 2023 11:51:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KM6-0004o2-PQ for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2z8ePqOkMA02EjZtFm9zjlDNrusgnozPxjGO1q3xLaI=; b=VASgfJgX3uj22cVkJUzlOXw0S1
 xEZjED5HSf/G+kewkPtmU3Q/ZpPeLwwbUJQyydhdxRCdLHXsC0Lb2VLYiUzXNdwiRWYTFJ+qp7EHU
 plPwEKHE7IraikxISOtINdFtNw1a8uFxNGjmlgnlf5pkXjYl7xVxmE2cwXRrAeuaBwTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2z8ePqOkMA02EjZtFm9zjlDNrusgnozPxjGO1q3xLaI=; b=VyBoeUUYzW+HkVixg3pXdUV0Eq
 YGkZyeiqv0MkvU1sledj0/kKOJ0HymRxhQ0Q8abhglo0Qoc9wNnR6MngVx0HvIAr5mG7B/0DHusQM
 7k8z1o2MnLmDKNECOVA2LlYaDa/yOL0mWp3Fa+mOjXidDZGpDgpcCAn5zxHejCHr/hgI=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KM6-007QMk-Kz for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533866; x=1717069866;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9z6+zwuzCmTIb11KkYmr2yz2BxhQ+erlThVzksd2pAs=;
 b=fzi2jXDR94otJDUaPZWpl7TNvp0G8Y//w0ZjkEbS2EwfPKIgawXDfPRD
 6YFYIqhucfK+bwaM1F9LiItpI4KQ9325/53E2BHot8jQsR/71pUNC1dYy
 NQy+RN4qwDjp6HUAyNeZRBys21UrkcdUQeg9e54zR/fY5xkcADJ89yn51
 tTk03KdzIwEc4+NN59uxAQOwycYl8aaYGwcoF+syDXXEs4sWo3dqLY5XZ
 W3bxRnpF9lSPWjKYdFTzOWMI8CVfKmJK3tGi/bhXarZjaquWWjuoL7s6r
 UBXKBM87+fE0pvQbHB9yng+ykbNx2M/JOolMQBtmVvB1GUkaGQnQ6t+wm g==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179896"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:06 +0800
IronPort-SDR: szzhZRPpcy9q8l41iJ+5j09efO4HSMeFqaASx4yFyPUluHIc89jD96GpmfkJYkTucCgszyEn5g
 TcjpRYoeSBT/8z1WGURwC8WK6JqdQAq0Z7haGrW2O2bpcG3x3CidPm1QD441HKohzCR49KSedA
 LnuKGXm5N1rkYKc7CFIhF/PemvXlqqrb5O4INRp7fU5yYCcDKj+qpmy5Ix/lHq3ubh2x/sAzd2
 H3q2Uzl0nDxjQJ6HJeUuipf1gp6jX5MxVxvXs3T3dcNhtNI0eOHmLPLtrQ920AvOdttSemE2sq
 rtY=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:05:58 -0700
IronPort-SDR: DCUoJnFdqTpXehtn1JwgjSv3UPX1uRxp333BvBFifFTfBv7OlO2CSbLrKRyVZ1ZVcgiosXtY0T
 tVsCFtk92PhOFdpXCSWvnqSTCBvF5UVLxocOGAcoZEQFEIu1gOajsi/mvqMWu8cMF5J6hkw4hM
 5eCUuV+nUJWEQNxIZoJ/kpCJ15t9r2ZraltnxO2/iRT8ytXvXYLujM0u5SnxD1uxOurCUrxHMR
 wO24NKfN/B2SA63R841MABC0LQn3WFoG2ot/EyIEOWiHlgSgUeAes2WB25guvYTGVgT3jm/xuQ
 aSE=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:02 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:27 -0700
Message-Id: <84ff2dcbe81b258a73ad900adb5266e208b61a4d.1685532726.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The buffer_head submission code uses bio_add_page() to add
 a page to a newly created bio. bio_add_page() can fail, but the return value
 is never checked. Use __bio_add_page() as adding a single page to a newly
 created bio is guaranteed to succeed. 
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
X-Headers-End: 1q4KM6-007QMk-Kz
Subject: [Jfs-discussion] [PATCH v7 04/20] fs: buffer: use __bio_add_page to
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
 Bob Peterson <rpeterso@redhat.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Hannes Reinecke <hare@suse.de>, gouha7@uniontech.com,
 linux-block@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Gou Hao <gouhao@uniontech.com>, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The buffer_head submission code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Gou Hao <gouhao@uniontech.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/buffer.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index a7fc561758b1..63da30ce946a 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2760,8 +2760,7 @@ static void submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
 
 	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
 
-	bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
-	BUG_ON(bio->bi_iter.bi_size != bh->b_size);
+	__bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
 
 	bio->bi_end_io = end_bio_bh_io_sync;
 	bio->bi_private = bh;
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
