Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F233F717E36
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:38:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4K9n-0006q8-F2;
	Wed, 31 May 2023 11:38:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4K9k-0006pv-5D for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eoF6iuNNlEmd2vTdAFbwRg91T5G4Yt4OJwZs2LN0KKg=; b=Z5DdB+jCzJrsu3H/3Uo2tSdz2E
 EE+Lc6zPP6OIacKN4pQ4SvaRkZotD34gFxG1BqPgzUM+UvwNNne4Lz9njOeI6JXGWkfuZHT4RzYie
 vYWLf92DBY01K5q/+lB716XiiMvIQUIsMVDGY8XmTKcmHqiVhTnesOjW78ViAzXEgYDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eoF6iuNNlEmd2vTdAFbwRg91T5G4Yt4OJwZs2LN0KKg=; b=P0ztttwhEjHGeObehK58Weq31n
 vJRFfUByXAOypxSp0WvbYrfgIGHhkZZUKS7RsQk6qjbUcuzzD+HEnvxMKhb0dun5s3Q+OTFEoz2YG
 xyuzeDQGlDcU2KLncw+LD7/Mx2wyzUl/JAXhBxobG1dbWtfDmhe39hT28Q1q+VwFvXag=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4K9j-007Ph0-Td for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533099; x=1717069099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=asDmkxFBDABNDNnwDePSoyQARa0UoC2pBVbkyHt1eyc=;
 b=BnitghgoInjgbfXIcpUGadQW2kNZdNs1qWL0k+EIyDd0P0+h4Pvh2lq1
 s8IktGWfmsMsg66tSLjEI1/VsJOg+wDOPnSWz86KxNtdj2gZTzT3dY0kN
 6xUA9Li6DTn+JrJOpLc5/ezqR2fRQ/Gai5NSoD8KuxXp2Q1b5i/nJPE4u
 3luXp2S77HrPggGjEbma/mIbBeYbbV33l3iXY5TBcr3II0WaGVbAoFg/r
 fJboey2abXCDP873DKvN1FrFt5Lr8LvDBttwLzkqS8F+qedbWjHG83fMZ
 8ZX2tIEA0tMnmeZz201FGPpuOfPSL/UzQdHsnT5xAxOW9fOwf1hggxf/L g==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179044"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:38:19 +0800
IronPort-SDR: SlQx4wQyXqGwIyYcabOZAgzZU/ebdEQLPmBVoZMgluUqdrt6UE5t5tj1K7BhxtJAK8xHZXxawr
 o33Oz7dx8WjrqiNujnCINDPfTg3erMtv1wgpSdlrWulZfKrCuU80R+VdiPvAbw1IDgVq9idz1i
 BdH0+Uoj4/+eKHuVaey08pgMsD5iy+3AFQPkfITZux3DUST9VDhUXPfnai5z8TCtWkuaTIhQ2c
 saCPcQoMrPSqAAHo5kdyiWS0NfqF5RMAWowCo60Qv/cMBrCCZLSve3CecttBJra8LOxTz5glXT
 vr4=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:47:31 -0700
IronPort-SDR: XC7JyXZtD1AEkO0rA/hRbgeGcSTw+VmUUN99NBXvCxdDrY+InQanrPuCKDB7CLC8eMRPlGmNC3
 QiP8gcRERHHEIG2OEk87W6d/a8pDEb9iSfZ5KR8Ewslc87cWwPB67fwIXQHbcXxPIwG7ZTiBzn
 UT3zWjl5Bm65XKzrDX228nUzYwsiSEBs51Wqjf1alb4Y4TWnkLeV2j77LU2xqX04I1XVfiBigu
 157hk7ifukR1InqLyOYwym+YXVQDfpTSDWIoWJGKIyijkdJoXxA7tfXc+of8uv3Y1diMJUHEdy
 z60=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:38:16 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:37:46 -0700
Message-Id: <f67cc9c310bed1e3c3302ea1c206da7d5ebc14cb.1685461490.git.johannes.thumshirn@wdc.com>
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4K9j-007Ph0-Td
Subject: [Jfs-discussion] [PATCH v6 04/20] fs: buffer: use __bio_add_page to
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
 linux-mm@kvack.org, Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The buffer_head submission code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

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
