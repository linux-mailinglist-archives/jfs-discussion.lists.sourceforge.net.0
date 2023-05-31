Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E83717F08
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:51:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMP-0004pY-38;
	Wed, 31 May 2023 11:51:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMN-0004pS-JH for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IxGJiTH6ZtTqQv7kMwXfygYzomFhd6ij9tDGz1CDdC4=; b=Ksm2Tum0ho7kv+ijzfLofBeY07
 pQ/swSQEVFvQbAl7CYhD1FF6+pvbM3Ef7/p23yqG5iV0/V9ThUXTQH474jAKjvBbxA4afh+cLvVOq
 OyoVhZlWU+RUZIKGsUDnoL+5F6yK8hYQRYGJM8RofMQJw6VBRmVqqFgI6pRoznMdDRNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IxGJiTH6ZtTqQv7kMwXfygYzomFhd6ij9tDGz1CDdC4=; b=Ul18fhxSZcU/BWk5h/ZpTYUqgX
 aYNqjbIbrrV0mOTuoRY0sSw4A6BTopXQNTx05U+uBRv2Ii3Tm2d3jP6b6tghesnUdRxv0l5EiyWiI
 qvMMurdSFZ13yOXbjIX3Rl8WVTtRvcHVc+hzx3Ymaw9hNrjc/pFJWbqywb+e5b9yFPkc=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMN-007QMk-H3 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533883; x=1717069883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TtMwPwqoJmAQPgnjq7wocIny6svRrZPugVBgK7WOt6M=;
 b=GlSHO6RvnN6aoQQQEalPdvvMtFeQOGj3QNP65loyJuWS5iEHe98xM57M
 96Ad2As+n7GBhKc2/xDeqzLTMwA5eAjpxP+6QWyNy91ZfzAqnmf4soAHk
 VY/QX060OabqYNJfCU68fyvaJ2nRxV5EgYkwVsRqrWlpAwvItrGRcqdkq
 OWwb0kPZL0haj2Kv5p+1pNeCioJ3CQHABrz670BWhazucD61USw0vlMRC
 oMtPVIULLaltq5qawN3s/e5Ho+E3kaITOwQGHt2kItx6xQJlnHN2qwyS8
 TMSPYBBOfJpfS4q+9P5Xtif6N7ssml5SpCbV0WqUQNi6TwKv+xLMVU5NR w==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179919"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:22 +0800
IronPort-SDR: TtElGDT4X6c514wbG248Y+gBHi3IvekmJgth9QlRsROH1mglYrrCbWIlkhbXDfd1S4P+oul2JD
 CrNL6S7v+qeehWDn+THftJlJuUwY6UxUQ7FkhGp7dwwkXu3BwzjXY6742hOMmFGSAKtmWA5J9C
 PzkpcSrEAwTeivp238n16KRoa8NyWbFrAGCDtHaWAGRt3T2vzHKnyAWGQtSo5iG2sKwlMUkIcC
 QY3oXUGpy/Xu9RESY0Ao33Wd0Wq0YQA0/ubc3/1ijkgLL560ljs0qLxWiG6IHF89sWn50h4dVE
 AZk=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:06:15 -0700
IronPort-SDR: lSLmR/VBj2pjG1BOKyzbzpWOt10LQ2v+W9nQSkfzvPSPIPVecgzRxwE+mTlymgLSKsZZ7JJYhd
 saR/IYHvebRwJso+xoYWje6G9oEb7N4eM1apcr9zWPZykON9DnRU0Pvqa3YoovOG9mo8KMnQix
 +59L8VmldaWJ3bDq+eFFGdKuoZg0eQew9RjzgnlQ9qsTIpDlvXIvDrTtcd9QfWAIOE87SHwlM8
 bKsDPUc4+smximEMS+6wPCkGqM5hMJAvOL+JxbNTObAa1Db26lV7WOnHYrJwT8baEncOGR6XK/
 IhQ=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:20 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:33 -0700
Message-Id: <04c9978ccaa0fc9871cd4248356638d98daccf0c.1685532726.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The zonefs superblock reading code uses bio_add_page() to
 add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
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
X-Headers-End: 1q4KMN-007QMk-H3
Subject: [Jfs-discussion] [PATCH v7 10/20] zonefs: use __bio_add_page for
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

The zonefs superblock reading code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/zonefs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/zonefs/super.c b/fs/zonefs/super.c
index 23b8b299c64e..9350221abfc5 100644
--- a/fs/zonefs/super.c
+++ b/fs/zonefs/super.c
@@ -1128,7 +1128,7 @@ static int zonefs_read_super(struct super_block *sb)
 
 	bio_init(&bio, sb->s_bdev, &bio_vec, 1, REQ_OP_READ);
 	bio.bi_iter.bi_sector = 0;
-	bio_add_page(&bio, page, PAGE_SIZE, 0);
+	__bio_add_page(&bio, page, PAGE_SIZE, 0);
 
 	ret = submit_bio_wait(&bio);
 	if (ret)
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
