Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A9F717EFA
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:51:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMK-0006yA-Mn;
	Wed, 31 May 2023 11:51:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMJ-0006xx-Od for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3B5ABvvBy0IkS9bGCRSeasVhzt4B/CsILKGKfAmCjv4=; b=A3v39MMvWqiE8GpB45QR1OSFXq
 hnRyfj7LiXkW/BuPsjYno20O6Nj9p67auMfWYuW5X/mf0TRx0naUft0SeQOSXNR7Wzn8wYOAmqLun
 LpATHzEMqkNTxyBUAYi6fA11fxLfOXTOoNS53MdXpbRfOSEelhd58+Gau4xFyNoUb/VY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3B5ABvvBy0IkS9bGCRSeasVhzt4B/CsILKGKfAmCjv4=; b=gMp9iqFa/uhlGABD6vh0pYHPGr
 U236Tinbr4qyiT3+z7QJI53iKvjbwS2maoKcyqMCtAtt6h2W3Ct9PfOWYaa+IkzS7EqTkoYYsvBvB
 aEknUQMlX3zyjcZV2EG7b7yKqWl0ZATbnsm/86rrm1Yy8YteFqhKSfXr3cVb/069egbI=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMJ-007QMk-Vv for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533879; x=1717069879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cSkd5AssBzijA2arQQJ/jDabPq82unQrdrIRPZntKD8=;
 b=WM0knnXapAC5feO/S6h81xnNNM3waEoDY9O2nv1/nCSxQfm9wl3v1hsD
 qZAclJAlfC7mNzFzQ9fYn/4UqHWL+Lt/1SdO2mj7W24O+UXmtrbkDGMwc
 yOowkR8YpDRpn++Q0KSxZNr+qAg0fjmM5aQRiFRvmGY4+8jyp8gvIUsgQ
 VIJG0mijlPYEVGcCsaRHHlh6IYlprj/wIzcOg2+xaGG0+CNareX6VfsGY
 hBJy5n/pYY+lWPWKOv3zhTAI1a/LEfBsNpnM+qHcKF/S7ZtzvtaGHOUdJ
 jm0FP+UwgKGViQqAMWgTAAP+k2eIVASjgaOZGFZSI/fvGBQRVbmAkmlnY Q==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179917"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:19 +0800
IronPort-SDR: dP15pJCMGpn7ryK6U71Db+2Rd2uWmwvpprUb6Txl2OT+6ZWR5ruHdVM7eoAUrhJw8Q7rbOA4wu
 9UFwN2sVAV9iqSNsIaFAQ3qYmhVX67FMcjlcyhCvzTUo17NxpDNU4/PLx1nOV7V1rDqPcZ3/GF
 aSOd46Cu+QW+shgzXAflrRSC2s5g5c1ts14NVD2QR2vW3W6/QX60z+gVM+GtMfVP1Jc3X/oYNn
 9OSi+fglJpuQvVAKWCcnKKzTMbfw7r4wsKa0fWbVBvj1qkUpuB4eJecDkg2o0nY2iuX9rPVAYy
 Wg0=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:06:12 -0700
IronPort-SDR: JnJbKILHB8Hx67SEZIIpe1y6Cfe/bqIgfbZm4SN6soCmKZu0UJsjeqJfDfsm9CfmXDkQbCKFO8
 YsXT66muLI4R3ZWh6EvCz+i6T7UJutXo9MG/o9yRxEJcrRvYstuAWlEz2tMVsgpBX0tLGYQh7B
 kQ8Kflt+H5RbvfNj5NAtdJNflZq2RxUBDL/5aMLyld+sYxFLoDJQXfDCGd4s6JHXPT2Avp5goJ
 MkE8t0T95Q1EaWVnN8BYTTgeHfpax769+8hNJ/WqPxGkEOmGHA6NOSa2mV2CJ2fxNtJg3AkHmF
 54c=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:17 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:32 -0700
Message-Id: <087c67d4e4973f949d3519c1e4822784ce583c5a.1685532726.git.johannes.thumshirn@wdc.com>
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
 Content preview: The GFS2 superblock reading code uses bio_add_page() to add
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
X-Headers-End: 1q4KMJ-007QMk-Vv
Subject: [Jfs-discussion] [PATCH v7 09/20] gfs2: use __bio_add_page for
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

The GFS2 superblock reading code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Reviewed-by: Andreas Gruenbacher <agruenba@redhat.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/gfs2/ops_fstype.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/gfs2/ops_fstype.c b/fs/gfs2/ops_fstype.c
index 9af9ddb61ca0..cd962985b058 100644
--- a/fs/gfs2/ops_fstype.c
+++ b/fs/gfs2/ops_fstype.c
@@ -254,7 +254,7 @@ static int gfs2_read_super(struct gfs2_sbd *sdp, sector_t sector, int silent)
 
 	bio = bio_alloc(sb->s_bdev, 1, REQ_OP_READ | REQ_META, GFP_NOFS);
 	bio->bi_iter.bi_sector = sector * (sb->s_blocksize >> 9);
-	bio_add_page(bio, page, PAGE_SIZE, 0);
+	__bio_add_page(bio, page, PAGE_SIZE, 0);
 
 	bio->bi_end_io = end_bio_io_page;
 	bio->bi_private = page;
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
