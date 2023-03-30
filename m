Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 703356D0253
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0b-0004Jq-VJ;
	Thu, 30 Mar 2023 10:59:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0W-0004JX-TX for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oWxxzkupGP3zZ8EA8mimp1VOh/9W6PeHdnUpiZAKea0=; b=SYZNQj7xDrPLPq1IgeaYYbhpUE
 khb7fhISZgTdzKFkUNjV9WNr15IOtM/NvTyLxQIXfA0/p5N6jZE4ElLloFgRB2jdQrCCU88CpNbu5
 qfyfLTnJlFPTSoj/dnXc6iy33ruQOTV91oqiIMn22lg4ZIIm97GY5sC2uHAd8jmJ4jM4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oWxxzkupGP3zZ8EA8mimp1VOh/9W6PeHdnUpiZAKea0=; b=NGKNtF91qTTOClKLlwpWq7sB7H
 uMIzW8OWA/VkFa+J6fE5QzvXluzpevPVE3W2QfA1HgwTsm179DXXjKFegyq1FLcyBcHI/6rdiOUFT
 V5nYVD4btmejnUuGWOamwWVxEYpnW/RSwsL8n7iRq61CoulnGBV/VAaQbvSQVDGiZLC8=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0V-009UvH-Ip for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680173991; x=1711709991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=losNsOzC/f7Y139Rf9MlNoUaYWQhJEhtWroEro9w4/M=;
 b=FC0FcqVBLyH8+ymD8Zv0D6IQx106CxtxT5xBs8MQwb4Lbq5bhq7boYTR
 YSgPkKxK8AunkreM1pHRDOiZG8AtsJamcoDSCfkYPuOUcG+yGxX8I6R/e
 XdXtVyciaX17cVJZbKTVrFkdxF44WQT+ujuqaQmGviVWVBB4jNctZZQHq
 S8dFlBddv8iRR58fiNKO2WMfnpUzvqvNz3cIWTMeH8yljDCXRzFnSLBtL
 x24GopRmOWUOrKm6HSIscZk+29xFmhOMxyt37Bi4otmVLni//j0CA8C24
 V1n5xiJ8WjIltUinWl67bFTiUtWMUahJVPUH8H6l1vzO1+qKV7AX5FgDI g==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948131"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:32 +0800
IronPort-SDR: zOLzAUPvxjk+OqzMRK1cV4RKmMi3o4uaD6/Mw3GNzSXy+dtyI7M2wQ5n7MkSUZvMIwo4EzBzq9
 fqGBFXot6mk70Zr/XTBpiTBWPliqBj3kY8E0jrHDw48332KHmC9NVNZxdkwJq+RMLjlP9GD59w
 3LLWCjxDDipYvn0NFO1CPmpAnsrr66prW3CLMUMrFIlvJbs2vzH1NwPCd3uOFMuNvOCWbD/NHJ
 NEZC7bhWq+h89y7otqzqR+C7pr+j0neuGCESDOqGGRYPf9hnZFOOSGrEl0HUz11pVdBeJlRlVs
 +3I=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:40 -0700
IronPort-SDR: LLyR2Npm2+MAJM3XIZClgMxoi6I/W/dIVvFOaKwZbXR+FXU/hAizNCjpHL6vVJ53LRicCLvlw6
 5vJSG8HqxBWOqmVv/563WgNcBAKcQrTbUaISiCtdAKhBTNUkKx21Cw/LpFv6nwsVXjwJUXttT1
 Ouz87wSgGmy/lK21UBktPDa5DL8h2pGw5G6UoHn1GsKFWFrgaBgxcgxKAEyMdk+8OOry+WySWP
 2F6SU6oJeDkTWv5KZR1md8qL0MPIRJYLz7AIbGmgoPFt1/WpjDzmEIsUXysP0EYjsW8qL4qhU5
 Fe4=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:30 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:51 -0700
Message-Id: <e12bd574e0b6e8f12ee80e44908d8463e647053f.1680172791.git.johannes.thumshirn@wdc.com>
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
 Content preview: The btrfs raid58 sector submission code uses bio_add_page()
 to add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
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
X-Headers-End: 1phq0V-009UvH-Ip
Subject: [Jfs-discussion] [PATCH v2 09/19] btrfs: raid56: use __bio_add_page
 to add single page
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

The btrfs raid58 sector submission code uses bio_add_page() to add a page
to a newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 fs/btrfs/raid56.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/btrfs/raid56.c b/fs/btrfs/raid56.c
index 642828c1b299..c8173e003df6 100644
--- a/fs/btrfs/raid56.c
+++ b/fs/btrfs/raid56.c
@@ -1108,7 +1108,7 @@ static int rbio_add_io_sector(struct btrfs_raid_bio *rbio,
 	bio->bi_iter.bi_sector = disk_start >> 9;
 	bio->bi_private = rbio;
 
-	bio_add_page(bio, sector->page, sectorsize, sector->pgoff);
+	__bio_add_page(bio, sector->page, sectorsize, sector->pgoff);
 	bio_list_add(bio_list, bio);
 	return 0;
 }
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
