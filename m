Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBDB7167C3
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41c9-0000Ne-EP;
	Tue, 30 May 2023 15:50:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41c6-0000NC-1b for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ep4Og3EKp8jaRB8BhVIgxkzNMdqeXnONg8MmnRMChMs=; b=CMvA4qsVrV31rx50i72uS1XoVc
 3GPrd59CLE34r6WMnUhOPIgMA+RLGXJB/9N+ztg9iYxDvuYaZY+nZ53d43EDYOREXFKyADuHC0eiZ
 gBVyihrFRTIYT7BJ+2/1NGP0XUit69sNbpfaJbhzFV3N9pyDxWjfIqKO379TFYorcMrE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ep4Og3EKp8jaRB8BhVIgxkzNMdqeXnONg8MmnRMChMs=; b=f+bKa+ZngExpPIJP7wOZSm5D6c
 EpVzs8CsnV6BgvEkeMibRtV8KvWnx15azl+oeuu9eai533VJDxj5bEUpJE+9+2yUVoJLTKN9q3fsG
 1rBMgNHzbphjS8bGZxtxlbNqzdqIzPqreg4iXSR0tGZ3K/bAqS08Su+8iQh6Xr/tR0ds=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41c4-006fvb-L0 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461820; x=1716997820;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gLNFQ6oFKOXzjx1/s8qharxbtLHt5SQOkfsl+Pqo6CU=;
 b=kpFhcBURZqY0lW9+vFwHBRCm01KwYz/nW8rxFbbFU9bfzavlx7DejPjs
 pBvGnrPoCvcHwll4WH3RPc35khxaW+YeVLiD8+JuIWe8+LmTPzFjIr298
 1cBoIy6Hxixeol7PVtuW3Xtf2IppOfcZrvRFHLorBxFFyIvhB7ow/ukti
 8ZG5o4IikZBI+5H7jrnPsO4tQ0D6hu05F431pIPjSbraULHS5Y8sQUxvf
 yt0PA/cMksVqfgOh1bLDvVPeSAembGbtwCxKMmpv2x42IyzTCFsfN9lTD
 JYG8TGOqGC0cCkMgB9vn7FcQUYm6Wr6cE8jr7uWeiimfbHkkg0I3pKsRG A==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="236922686"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:50:12 +0800
IronPort-SDR: EhcQPtNE+czo6qX33E/dfIPksDuUg3HDllYqoywwP+qck8wVWMq+8w4VeKoa6Cl2rmNGIoP0HN
 rzXeJ20dH/kCfWObxP8FZ0mQL2cIYz1W1kraKVJcD/xtDsimwlKzc0gulHYylx0rezJ29usNTY
 m+3rOQJ5vrL61VjsT2qn2RTwYtCPs4ixwOWgRJ2mrrm6efa2awYYu/VFt1KWADiaf4+YsmNyie
 0fgsDvMJ9GjfOwC+MZ/AA9mHm5iyjhZKnbjpjWJLfJMqew3AIgWJCHnpTyERR/y/vwFnyR0LMq
 WjE=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:05:05 -0700
IronPort-SDR: snoYL5vkwQY2fHovd8/bCtXAqv6z6MFk87CGOha3y1t4nQ3bzraGCrnIzedV0/LXm49W2WzhWH
 OUgIPuepqt5ylCZ0SV/DMCPXbIyw1ZMmkUrTUJnzVN/uHZbS+HyYQMQ7p9zgdDgEpDAO0bKSNQ
 b9sBV2ZsNYFfhtNaL7pMTYRcvQHa2AW5lh3lf8gZABJoQuBL9ohV1zESC6t075E2qXQDGdMKNU
 jeEnItThG3PlPxvvohrB/SNHt+pgq8Cps3WQ5E3BrPDTb9RtzCLgejg2k7fg+5N4Buz0u9oIhz
 Zbw=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:50:09 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:17 -0700
Message-Id: <05f4a70914885813a2ccdbb8aa7eb7d75f79329a.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The sync request code uses bio_add_page() to add a page to
 a newly created bio. bio_add_page() can fail, but the return value is never
 checked. Use __bio_add_page() as adding a single page to a newly created
 bio is guaranteed to succeed. 
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
X-Headers-End: 1q41c4-006fvb-L0
Subject: [Jfs-discussion] [PATCH v6 14/20] md: raid1: use __bio_add_page for
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
 Hannes Reinecke <hare@suse.de>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, gouhao@uniontech.com,
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
