Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E10D1717F0C
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:51:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMa-0004q9-Cf;
	Wed, 31 May 2023 11:51:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMZ-0004q1-75 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e5jeRClelxpWrkKfF2xneuRF5zHKGThLfAoZ33Mhr2E=; b=JwBhk/eXw1AoiE5Dksgv6s8huq
 Q7qNh1ffCavYUUAMwT6jBjbI4rgx6v26QOCVI/wBwUvHc7cZW0ts8dDo1fOFDUPyQRWObTICZM7ys
 egcNP0aczwAW5ycdyCTVqnuMMekWV/2CMmXyH+odTEfZiVp3QQjYmQGerTJq0s+B8jX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e5jeRClelxpWrkKfF2xneuRF5zHKGThLfAoZ33Mhr2E=; b=d6d1XiCE9RjesmYHoUE2cYPLAx
 JHULofs2GhRTvGdpxyeDcMeBMy9hsEyWu9rPZVTCBx/SImKtu8Av9dFq5lnJjQO8IDwHRXWVyR+P4
 e4l/WHvJGVlNw3E+oBtR0LVVtoNw+4fxelf62B7eBdfP9/I3IQNE8liGgO0x6dMYFLSA=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMZ-007QMk-5e for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533894; x=1717069894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bohfoz0yKcyrTKAmwYJ5eEtuSyoqE/wma/5DAX2SoB4=;
 b=SwnhC2cnI4qTfW6fwsrIJk3YmF4UlGH51onu9vRu+NSoFnnoAvPLHFrn
 Ma71ndIFxZvr9h4DC+CBduIKxiuIWkqSAffwutrzJ4N/SsLA+rvWKzac/
 DIPM5yo6CF1uq32aZsRP5yxOiSaaT4fWwgJbcxnlY21VPoCPZbh+yxKrf
 acFhIUq1quHPyISUjqu+Vm9OIh0zveZEhFr30Q2A+YHZUDm5STpMGwgaH
 MshN7k2zhXAtTHnBo3yqndQzG1tywOzxZptHyPHvV36V8BT6+10vXtqxB
 mqghL04p0CTbIDWxVPz84ls8Ke0DWqNBzyw7TnDrTQ3bckYtn5/X+nuox Q==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179935"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:34 +0800
IronPort-SDR: I7VEqt7/cpescxvc0gXuVADey7oO0QA13u8ztNezWNSWN/kq0COa02yNHqfxpK/HzoWi1xJP4b
 GlzVWmMjIEMXOmmTLPdFSP2MKlsbdwyjhTyFsT8SwwAxxJ7As+YBQ4DMDlE1/cfcBCszWk1Mds
 nV5NpnUh0WdP0+DTaDind1RNxdfrfdtdjKcoFmDRqoZ6G+D8wQpTJbPG667s/vMmfq9Hlr9tlK
 fR0LDKN+B1AslezHjZNmLuFQNKq96mcBqUob5V4ZomMS5/6WlMuJPu1nbB7fCXZZVqkkkmJ7q1
 x6g=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:06:27 -0700
IronPort-SDR: RyI1mO/6ZDV1E3DLyp6Uz4OkisAp3fmmDbkdi3t8dad2mENNTujbJYnovxO5rrnbcFvj44/+jo
 9geIEpgzs7b1YFKTE0G1l0Lp3+lEzNTl9X1NIJsU40I2Prt8PsF3yR1dayx8fCgdFyyn8gKXEz
 IXyrLtro5IVNZQZrV6QYzNOWEEJMlX3Q7lqTPiOFr1n/0rkij17qLKpIKNy8BFHJEhMnhLSV+o
 YRHeP/3vtyn1/eOy69ZH3PZyRUMWrOMLRpBiN4E9fFtSLU6ZiZvnsiJCzeS0GaTmXOpjuO4FSL
 0ms=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:32 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:37 -0700
Message-Id: <6cf7f66c6e646231200d025dfd5f2d3ae75c8fe5.1685532726.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The sync request code uses bio_add_page() to add a page to
 a newly created bio. bio_add_page() can fail, but the return value is never
 checked. Use __bio_add_page() as adding a single page to a newly created
 bio is guaranteed to succeed. 
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
X-Headers-End: 1q4KMZ-007QMk-5e
Subject: [Jfs-discussion] [PATCH v7 14/20] md: raid1: use __bio_add_page for
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

The sync request code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/md/raid1.c b/drivers/md/raid1.c
index 8283ef177f6c..ff89839455ec 100644
--- a/drivers/md/raid1.c
+++ b/drivers/md/raid1.c
@@ -2917,7 +2917,7 @@ static sector_t raid1_sync_request(struct mddev *mddev, sector_t sector_nr,
 				 * won't fail because the vec table is big
 				 * enough to hold all these pages
 				 */
-				bio_add_page(bio, page, len, 0);
+				__bio_add_page(bio, page, len, 0);
 			}
 		}
 		nr_sectors += len>>9;
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
