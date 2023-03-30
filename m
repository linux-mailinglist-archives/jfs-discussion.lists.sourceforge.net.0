Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1195A6D024A
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0W-0001kU-0h;
	Thu, 30 Mar 2023 10:59:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0V-0001kB-92 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A0QwlBMyB0SwxwD67uqMn4GDPEQ9XqxhlHULEh0VC5o=; b=Wc0tsIdEDMDPGYbM/3xtb87382
 bTY/hTZoVJfjIxjw1P3RfPBPGhRruQkxIIBvnG+z8IwMIWt/sLV1OXJWB5/wiFAryWgqHbWu3Qf3W
 GgESbsmgAVO71lB+Lv/AZmnLpSL/XvnNKibJS7v9csxDev1L7I2WOrbps5CQ9XHx6rII=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A0QwlBMyB0SwxwD67uqMn4GDPEQ9XqxhlHULEh0VC5o=; b=T+ydVmRZ93CEJSN/vH2iRW52al
 IKhKge/37EEsawvz7wr8xB+8zDqol1R4FNjhKxD3VI30PbVC3QqzX17/qgzf501OSk2UE4pZToFz+
 VOdl0noqFoyzlsj8W5tEE64DsJwcGGlEpKvCJkpp1Ad3mvzsWiWcGN5zvlg0KBzl8U5Q=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0U-009UvH-VD for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680173990; x=1711709990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r2Sf5mUt9HArXYNHtNNZG9NyfVeVIuPp2J4v5VCyro0=;
 b=BWkGmf2C7sWqGkwMcyLCHyYAJWDQaFyUOkQzKShUoBL1yHjWacCS3cWg
 O/tZmg9P4jhaXvyVnTbZHAfug38x2M6R5A+8i8OlYaYhACv09renszSSY
 6bImhD65wT3UDkSxNjYbvvPuSe63Jpw4hKkh/iw9qU3rMc/nEHYDymflS
 c8KEwysPHeCdepC+Rk0JKG1aIUzT4SQhN9yGlmPqsBKgncXi+qB3FXzTX
 8DK0jxKR4pqO8NB8c+mJZQ2d9gmEdmJziNu75MpFG29kTBdJa9ko+pSYf
 ICMPIundvifCQ/qAPcepOg9sotfS6cm3Z9bGIVkgaFEkno6WkK4dKP0Nz A==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948112"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:26 +0800
IronPort-SDR: ha2YY036C8trQhjOxkLCTHRlHDJcKM+F20gcyt5SQQ5enDZFl4o6PBsPjQ+YaNfUnwl59qffkK
 Bd9jIJPNufUCm93ZLLtfdCA9hvN394oyy+hSN/Abc/kbgyec939qRcJxYSjr5kSSK7fuF65mpF
 dkTztWeroapHLsB5XA2vvPpdRUNEcKPVVUbLlf4ylRTlGb5ILjYQk6Hsgb2peNlRL1v6aYhuQc
 yjBmBQVDrRt2U67IXXDqw7Xy1PXSikIY60U6Lm7fK7L8YGYhWtRzq9qQDmDpMyLtaCvGLYATpD
 PSM=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:34 -0700
IronPort-SDR: Rnq9MYYdPgA09fnMFGRGvOdylFjRCrkzOVUrlWYy+L3Pme/NCk8sA6Zn7WCywdDLeWt/7Id+So
 1032rM9LOkm6qL/hQgb+OsbJJwqKy6GZX5osAi0JcBf/+HCsJ3q7zLHVPXdvUb7yKaauSdhmYJ
 UDmdNwRTrKFtqsgT9GXLB7RhMWPPebX288EPBWtvMGFgihtyj6p7/rQAmgavpLeyucAJfIzx2x
 S6vPkaGyF+tI9E7e6BtHitbJy6rXVY95zbtc7Z9n0bymNi2mvwGRpwXi+6ApwH7c67oPbylcoo
 uXQ=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:24 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:49 -0700
Message-Id: <29a2488aa641319199c597d1dc1151c700e32430.1680172791.git.johannes.thumshirn@wdc.com>
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
 Content preview:  The raid5-ppl submission code uses bio_add_page() to add a
 page to a newly created bio. bio_add_page() can fail, but the return value
 is never checked. For adding consecutive pages, the return is actu [...] 
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
X-Headers-End: 1phq0U-009UvH-VD
Subject: [Jfs-discussion] [PATCH v2 07/19] md: raid5: use __bio_add_page to
 add single page to new bio
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

The raid5-ppl submission code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked. For adding consecutive pages, the return is actually checked and
a new bio is allocated if adding the page fails.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/md/raid5-ppl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/md/raid5-ppl.c b/drivers/md/raid5-ppl.c
index e495939bb3e0..eaea57aee602 100644
--- a/drivers/md/raid5-ppl.c
+++ b/drivers/md/raid5-ppl.c
@@ -465,7 +465,7 @@ static void ppl_submit_iounit(struct ppl_io_unit *io)
 
 	bio->bi_end_io = ppl_log_endio;
 	bio->bi_iter.bi_sector = log->next_io_sector;
-	bio_add_page(bio, io->header_page, PAGE_SIZE, 0);
+	__bio_add_page(bio, io->header_page, PAGE_SIZE, 0);
 
 	pr_debug("%s: log->current_io_sector: %llu\n", __func__,
 	    (unsigned long long)log->next_io_sector);
@@ -496,7 +496,7 @@ static void ppl_submit_iounit(struct ppl_io_unit *io)
 					       prev->bi_opf, GFP_NOIO,
 					       &ppl_conf->bs);
 			bio->bi_iter.bi_sector = bio_end_sector(prev);
-			bio_add_page(bio, sh->ppl_page, PAGE_SIZE, 0);
+			__bio_add_page(bio, sh->ppl_page, PAGE_SIZE, 0);
 
 			bio_chain(bio, prev);
 			ppl_submit_iounit_bio(io, prev);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
