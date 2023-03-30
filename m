Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 778506D0259
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0x-000610-Ar;
	Thu, 30 Mar 2023 11:00:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0w-00060s-P7 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2MNTZ8hIqQZr33tFK5vOCN2kPp+OQOLapHSQ9vn8FYg=; b=Rz5Cxe1Os33iEqZs1mxzrXVA/0
 8EyXsN5CYbm4ZRWwkp5Bq9E6ChWG3KD4LYE+Lvgsh2mkPpt6Ve2E9L9cqkaPD17GY6Z/fXokPotF8
 RpO/8h+89oboqDPQzTdVOzOWU/OuGwB4d25TLb6F70y2on6StWIcmvN6T6bU3P1TmREw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2MNTZ8hIqQZr33tFK5vOCN2kPp+OQOLapHSQ9vn8FYg=; b=QSiE/FCJJlAZ67M6Uj6PWxyreI
 c3aYcBG8XQGe9gqCnZPOg8xbDlvlASJADFj0Y7uNt43yo2UMGISOobaoHNB3lUULOGE9tFQPDYbFW
 W6Qwy338cE+ZPmjJWTJzB31dP+BX+AUvkBwBexyZ1qJysMGbE9CW/5YL01OZ0zdsra3U=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0x-0007Uu-2Q for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680174018; x=1711710018;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AKPcab2XYTxKDTsHjq6NQ76PfpLzQxBfOz0TQbvI9A4=;
 b=XzEfZMayYw2c+i3MkWh1dXGKEOKQhFwNovT/0lEzrg2sd4r+LapgiUPq
 fjoaLQRZMfpxBk825vHiAye1C5FVrElUK7giv5SM6iSZ2QkKFnSZoGKDr
 69nljwPYtOog+SPwjvw3RjrDi13gW0qUTmYtOLIHTxBAUwqjgxGyBukmX
 48o3o4uYgFWKHjRYzgePcR/A6oiIbPIPBZgrjdAfGeobzXST1vsiP8dhz
 2QHBsUjwe1FRGrgha31xVhO6+YpGuxBpGGldy75WlzFtpEdQK1HKzlp/s
 N/ceFdBQ/TYmWd6bTgGOIFonELLkF15u1ZwnQFcJdWyqzX7GHoNpnnk/+ w==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948196"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:59 +0800
IronPort-SDR: f5at79CLBCxZDdava8SwG7XM9e4UV1oryp20dGOzQs3BUM1yyacowdnxyfg/HiDuNqIxKsuhEp
 gKoS25Ij4oAic0aKErgc4sDyZwqtVCSOnnbOQB+XEDik2d9l53Mok5h4kIL6JoL1I0dM/4QJHr
 PBlHfTeUGfAT1bx1nW4m9OINX618e0seJ2KT8NeHbwyEEc2Dn3644ZOH6Qi3hSAnC5dGMzFJJ/
 nXqUNT9rffL4yBMQzJAYMltNIPt6sWGdTqVMyARzBE+uFHLlhgeK+Nt5HzjSGxS8uYMmHUzw5X
 k6I=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:01:07 -0700
IronPort-SDR: Uz7s+Dcx6yIQkvOUQB+fZBcewu2LBoSQ3pKR+yorfvauRCwyEfsemTaCli7NU9SOzvmIsB3Hts
 tNYBtX+nfuDEC5uXsXRcTKBMvdR7SGstEuCQUjhfSDF+BiYqMb/6WvHW+SrRgnWUnB48Q4E2C4
 fbh8vMwc892YV531EYcZRUKNAzwNrgHgza3EAt8v4dtp8X3HEbGwrP9VyDAFzQUEaHs+TfI18c
 xIpJgsXVErH/79qMVG8Ygjlt4VP7eLqwzcPd+tJBQVyBPVtGsmWswAn0jdBYeDXDy1fyvy4CzS
 HRA=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:57 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:44:00 -0700
Message-Id: <84973c41d58473dd50324853fb88a7fcff55745b.1680172791.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680172791.git.johannes.thumshirn@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Check if adding pages to clone bio fails and if it does retry
 with reclaim. This mirrors the behaviour of page allocation in
 crypt_alloc_buffer().
 This way we can mark bio_add_pages as __must_check. Signed-off-by: Johannes
 Thumshirn <johannes.thumshirn@wdc.com> Reviewed-by: Damien Le Moal
 <damien.lemoal@opensource.wdc.com>
 --- drivers/md/dm-crypt.c | 9 ++++++++- 1 file changed, 8 insertions(+),
 1 [...] Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1phq0x-0007Uu-2Q
Subject: [Jfs-discussion] [PATCH v2 18/19] dm-crypt: check if adding pages
 to clone bio fails
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

Check if adding pages to clone bio fails and if it does retry with
reclaim. This mirrors the behaviour of page allocation in
crypt_alloc_buffer().

This way we can mark bio_add_pages as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/md/dm-crypt.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
index 3ba53dc3cc3f..19f7e087c6df 100644
--- a/drivers/md/dm-crypt.c
+++ b/drivers/md/dm-crypt.c
@@ -1693,7 +1693,14 @@ static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io, unsigned int size)
 
 		len = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;
 
-		bio_add_page(clone, page, len, 0);
+		if (!bio_add_page(clone, page, len, 0)) {
+			mempool_free(page, &cc->page_pool);
+			crypt_free_buffer_pages(cc, clone);
+			bio_put(clone);
+			gfp_mask |= __GFP_DIRECT_RECLAIM;
+			goto retry;
+
+		}
 
 		remaining_size -= len;
 	}
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
