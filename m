Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DC0717E6B
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:39:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KAI-0006sb-7C;
	Wed, 31 May 2023 11:38:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KAF-0006sQ-3Z for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ep4Og3EKp8jaRB8BhVIgxkzNMdqeXnONg8MmnRMChMs=; b=FhtGw0OGFAeioORyqOibq5ZzQL
 0XNU1e+VwFfYOnvArzxzWPihRrxHFNjYTVqwSI1hm6fs9lsAVSfoMewUiomz6/uOaC10IK/ZDnNjY
 bueLL1EV8IldUBE+2HrF4UhhQRliHgWmnuTEeJvG07aqF+0FivZ/klDYKCb6RnPpniyQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ep4Og3EKp8jaRB8BhVIgxkzNMdqeXnONg8MmnRMChMs=; b=YkYVYS0MDY10R1IpiMaWz/azK9
 sclvt0SBm1mvNow6Scgn6qCIMgSJXqC2mA6Bc5K47892ChOpnSjFXYJchwhgqZhhpipzV5mXP8DvZ
 GazGqydJC6/aiiKpAV1qxovLRBxW4PulOafrygrgaiky7BIQiJNzr6Vu6NJRBlQd1BNA=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KAE-0006rs-Pc for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533130; x=1717069130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gLNFQ6oFKOXzjx1/s8qharxbtLHt5SQOkfsl+Pqo6CU=;
 b=CMz9/k6dvFPQdlVZZxXRjdYwT8eMJl8cOD7xKj7HWSgzr7jkIqD6i9iy
 z6SB3FbylIxN6JmAnGEYX6tAJr4ZA/ssU39qq8sIWDz28hjkKqTmGIktc
 R7n1B2B5jrGRdpjzq4cT6tovBV8scWOnm83qqcTG51rJCqeE3TS1uEkej
 LYSY59Q2z2dE0jMoy71dqyIApiMCogdaBadkQU6fmsmzJqthPKBGYVBNr
 2+/XKO0Fd5lrzgmbxCXJbmOlDcyx11qEtT6VvlhgsdLWbSpfGvzWT70W4
 jIly8LMWUxhdTeRYWY6PxzAwUEdwGGnMbCUShpkh+MlzzEhG5NFCYWQFI Q==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179108"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:38:50 +0800
IronPort-SDR: LZ+5Z4EaAnFQmYrb14tnsiPJj8iEhqbRAPpNXCzEcUwoSxeFlrqA/LHkr7qKxf/xyBWRn4E6YW
 taU7I9bhwjsRicifKxsxXBFJp8sOZQLcKmmOluTuKO0NsFqXAFExnXPsiqQ+HW6kmLimf2FnZ/
 6TPGlDKMBB8WfrKhl+t/bOIg7tkngarhnlNi5WlicBQjWzMdadv/rrpHXGUgSSFluZ6S7J20cP
 DVLAQx7aa72OkZvLEQhCJle28POFZcyjTU/ChQnVIqNl5tnt1WZ4AF2ZYYdtB6OYX1Myk09kdk
 xlc=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:48:02 -0700
IronPort-SDR: AYqivzP+zZBr7YXk9dG8Jb8zBbjPBW/KSPUnaKqwxnOgRpMHJQY/5pAu5OZbZHqAmB/gPLDcZN
 MvRoax4upNaHhDpQjCOuDZYZBc5P3AI7kmx9HzZph/faczGWX9l2u30PItVdfrBi4SmXmwqO4v
 adAhYxT+hQbjt3XzjoeKlMlN6vKBbho22xcievn7V3yzXTKPnAxwlMRsSHS4haca85vjP3X3sX
 hY5OnMM4jPGIz1ehr4KHfQXrL6o4rX1Mmw/kqbdLZC64FV0/mXL5aSvmkLl4HBPXymYqbCH6x1
 VeA=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:38:47 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:37:56 -0700
Message-Id: <05f4a70914885813a2ccdbb8aa7eb7d75f79329a.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685461490.git.johannes.thumshirn@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q4KAE-0006rs-Pc
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
