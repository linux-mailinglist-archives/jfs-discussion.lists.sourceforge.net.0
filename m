Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7F56CF03B
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZG5-0001Xu-I0;
	Wed, 29 Mar 2023 17:06:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZG1-0001XW-DJ for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZAZJI3cszmYVH87/ojs4mDfrFkC7lyCVrVL/gBZqQsA=; b=WKxZMAhbzfujRNiUbOn1OLdSni
 3NMXQqtercFU0wpQ1GFDakCMyaHZLi89JbiYw3l4o4Reldjyz02JE/arahp8hVv37f7lCM6cliArX
 eYH37lamLoWKqkIOjCZnQm4hd7KJanYf2fKjJXzeb++6Y0dFPQxrcPWo1YV9df9bxq6U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZAZJI3cszmYVH87/ojs4mDfrFkC7lyCVrVL/gBZqQsA=; b=R4mFMQCAeTQTrsKWdE2ZXSyJvQ
 VzpH2qtMRBsbB0d7frn3EpbnbjWfcPuye5CT5w4AiveVQZocCEhw8RymGnyyZEtyvSLPnopa0FQP4
 gBJ3AApCSAIYhmR1HeKZYEeIpc8EXIUhfjol4uWcLzHf+c4uYwOP/B4/5lmeQtO4avh0=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZG0-008aXc-0q for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109603; x=1711645603;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wcbMmuj5KLOp188zkhhO4UTGZgDj+uEBsLMZXWyJQ1M=;
 b=O+q6VPzhmhRlwRjIGIRBN4ur4lBOM6QjmWqdRvAEU53PaCsGkgm/A216
 iityqhkqIfX3MeuudrRGjksg9TdDH8L8xiytInd2cJuuzbjennJ3Z+e3V
 yqPXGuhxnOhD9ItiyRFMNC6D492v0Ptjl7/CwdfvBL6t6FgTtH1J66BuS
 0VUzYeIu/qwrafoVKV3bFg59tZANAWT1rGEM4yAjW/+PmLM9J527GH7ln
 iFVX2zwOZbInDYFY98i99HOdYllPDM9OwpZKh6/SbQdxPFo3fbde3rsut
 oqAJhgHEeem0HUWg0aMw1Yu79D2iJdlrb+P9lkrCbZbdShQ9X9yULWcKj g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807051"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:43 +0800
IronPort-SDR: OvivArZcw/YjPjVfz2k8lN3CcH9fskWjH1jAglelmrbTPleHLW/c+D2eHY/NDGPrHexcm1aVuz
 fmdhZNxboe1IH38p+41zpLP8IETw+vSyLcRwr6YRKhNOIzd93IgKdHEP7UswS/Ihin08SEL9lg
 nGz8iavw/MFLXT/A+g4u5a2m5vTdLIC7fqWZBCaPqmf0jys+IEQjDGewMyO2qz9N8uQJSVEqnv
 5Peu2dlpVsjzcebOqrL5fDjOSA1PNDt8eAGBUIjbNSQDBppjChRzGt66GTDWb9D9HeIf5aAIqO
 MAA=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:22:53 -0700
IronPort-SDR: K3LvTn2mgS4z3aUZiHti9nEkM7pjvbBH6ZS/kYcx3E/VzjPdX+tted0ood1vYEc+vc7pbp55fL
 71ZnHrIDtp/LZ0g7xWSsFjKZVDSjmWu1MIOcddLaQ0QQ8DiFvqGt1SHDGt+30EdZYwUUss3ZJ5
 KHpYJp5gqdZMg4wYwQ+fxuyfJ4v5Ag1shD0OnVsp1Xt+MyUCPRAm3nfZVTezAdIkfloHRGP7Kb
 R4SjVt0dhflNVTvL7W5jpm1ArkajddHLuecePRmkHp+nFFOhkLEqvaqFM/RyBRB4b76XC4/FNz
 P4E=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:42 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:54 -0700
Message-Id: <faae16612c163bd6e65cf3d629b0a3c65666821b.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680108414.git.johannes.thumshirn@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The btrfs repair bio submission code uses bio_add_page() to
 add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1phZG0-008aXc-0q
Subject: [Jfs-discussion] [PATCH 08/19] btrfs: repair: use __bio_add_page
 for adding single page
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
Cc: linux-raid@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The btrfs repair bio submission code uses bio_add_page() to add a page to
a newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/btrfs/bio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/btrfs/bio.c b/fs/btrfs/bio.c
index 726592868e9c..73220a219c91 100644
--- a/fs/btrfs/bio.c
+++ b/fs/btrfs/bio.c
@@ -224,7 +224,7 @@ static struct btrfs_failed_bio *repair_one_sector(struct btrfs_bio *failed_bbio,
 	repair_bio = bio_alloc_bioset(NULL, 1, REQ_OP_READ, GFP_NOFS,
 				      &btrfs_repair_bioset);
 	repair_bio->bi_iter.bi_sector = failed_bbio->saved_iter.bi_sector;
-	bio_add_page(repair_bio, bv->bv_page, bv->bv_len, bv->bv_offset);
+	__bio_add_page(repair_bio, bv->bv_page, bv->bv_len, bv->bv_offset);
 
 	repair_bbio = btrfs_bio(repair_bio);
 	btrfs_bio_init(repair_bbio, failed_bbio->inode, NULL, fbio);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
