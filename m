Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8196D0252
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0Y-0005y7-3B;
	Thu, 30 Mar 2023 10:59:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0U-0005xf-1l for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kcNN3p6S5fn31oSt7NvkB3NfN6Wj528DNJTta2mWC1Y=; b=G3hdAKC/ybvQ3InrHJuEswCO7w
 nMyCDh+FPfWILbRzyP0l+AxfCEgdLoaU9krhX+YkxbmFK6gwLLjDGpr6XRh4YDIGh5vknEfK3nZnJ
 Nz627NKAzWeyPCog/8uL6D5TbAPdPnvxhkuTJSsrQATKjIt9MhoZihaw+Kds+khh29TA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kcNN3p6S5fn31oSt7NvkB3NfN6Wj528DNJTta2mWC1Y=; b=NZGc3IVD2VkYi2ceB8QtxAMyn5
 VxkwOyw/ifwjN9Mjjo6gMDF7lFH6iyWg0ViWJd0VcgKydEDhMH+tBOPtc/ATIViYl5P1hv5g5HDS4
 u6fSqyCAgsnrkAzqYFkwDORQcwrebp69uNaCEwMRpGkSFE1ELZKORNT825K1+i+OCqWE=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0U-009UvH-9V for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680173990; x=1711709990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RpitYrbMFeR5j8yxFMmc3tnhDIhgkd0gY7Yp5w5KjZY=;
 b=nrbCNjHhSo5pTZhTkbWWAuGIRq7Y1VcJ7savyQRAONTmM71OADW5YFN9
 72QGHcD46q26qqcNGPbPOCM89JUqwJU0NOFmeZohW78lAjduMH91a0QJi
 ppYvSXYhIMXvgcQmyJl7Kzr82iN1ScRY+vvFjJp4iep1i8T6Gub+8yOV9
 CXGHiIF1GffWafe+avEPZ9oSyjO6kQmqHmPpVAJIPeuhloakz/z4e44cu
 i5cRbwq9Pp/wF+Mbz4vJEHbqytVcfMAOlCxP75u+tXt19szedg8RLOfoT
 P9wsokDg/ZIVpclWUcT+BAt34q7upM03n1n+/zLU++vtSETMyocR6kHXh w==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948097"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:20 +0800
IronPort-SDR: duRybdCn15UELbBps7wxRpR32lI0KkhyXYZ0IpYc1y93lupcUpw67D3GYfStS+PAVTO77z5pIa
 obB7smXbygV6YW21YwhO5N5LGZyYRSReWUR7lkA0v7OnQUWvRU1GXztn6Cqgwtnq6LENVm5gpP
 bAzonaeZAuTQ+xaMpTjG1U82TN+XNX7c8kuP6DTPSaGg5tfz3K99fH/CjYsH6hEON6uNOIJaqi
 4vdXYnTjwUoFjfIMOXRySqYZ704tsupifOLVsWZGnRq/yAflzNT+7LZwy+rydfKl+vv6sF9F/E
 LVI=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:29 -0700
IronPort-SDR: +ifl+ssGQMJo1793QyummmYdxHd3XzP9XbjKXn6B6L9A/71IfxQfpv8qYdarzpWEctk4Ql3WMW
 tPTK/6UQPkyog3HY7qay4dpVKeTmP5uIdnwjy4w1mx3YP2Y/toi1PbzB3aslZB5M04afc8o1z4
 yZQbo9Y6NFNa+sXQ/Q+D/AMjunNqR24ybNaqHMPMmSEop2iGUVZ7PeH8+3OU/sv+eDng5CjLZz
 ga7rpWvmqRchNNkmOIEQBKIXfa2Mc8UQommU9tZ/kK5i+Hil+N15boStP09k/34t8fBi6p3L0m
 tHI=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:18 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:47 -0700
Message-Id: <359e6d4d77ee175e2ce7c315a3176ca360e10fbc.1680172791.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The md-raid superblock writing code uses bio_add_page() to
 add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
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
X-Headers-End: 1phq0U-009UvH-9V
Subject: [Jfs-discussion] [PATCH v2 05/19] md: use __bio_add_page to add
 single page
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

The md-raid superblock writing code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-of_-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/md/md.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/md/md.c b/drivers/md/md.c
index 39e49e5d7182..e730c3627d00 100644
--- a/drivers/md/md.c
+++ b/drivers/md/md.c
@@ -958,7 +958,7 @@ void md_super_write(struct mddev *mddev, struct md_rdev *rdev,
 	atomic_inc(&rdev->nr_pending);
 
 	bio->bi_iter.bi_sector = sector;
-	bio_add_page(bio, page, size, 0);
+	__bio_add_page(bio, page, size, 0);
 	bio->bi_private = rdev;
 	bio->bi_end_io = super_written;
 
@@ -999,7 +999,7 @@ int sync_page_io(struct md_rdev *rdev, sector_t sector, int size,
 		bio.bi_iter.bi_sector = sector + rdev->new_data_offset;
 	else
 		bio.bi_iter.bi_sector = sector + rdev->data_offset;
-	bio_add_page(&bio, page, size, 0);
+	__bio_add_page(&bio, page, size, 0);
 
 	submit_bio_wait(&bio);
 
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
