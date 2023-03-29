Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1E16CF05A
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZGa-0001ag-Uw;
	Wed, 29 Mar 2023 17:07:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZGV-0001aT-1q for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=upu32c8Yqy1t899K4t0IfOcHUkkaZO+LrWd5EvSYkRw=; b=PUeC08dQL3EhxqsvS7gj98bYni
 3GcoZhV/OvZ7pfkI67/xi3x4VZdBanzv0RZA+Rd468rf8Z89U7xFTqO3I1DETTPNaryCqMDHPYnNe
 lqqtQSf7e6ZR0vAfqBNr+m4YEbcPtDje3XCYFuWOt4JE4lerdHz20y5LJYGO+M7Cl6Q8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=upu32c8Yqy1t899K4t0IfOcHUkkaZO+LrWd5EvSYkRw=; b=bGw0EK7WTutBCj0nE6AH7OYCyH
 jziiZNtrM5Y5xQ2tHMJO+v0WM0WCkWVasCHlAPtOcDYUVyugyu4aw4zJS9HTpXkxnaQ31/ekMWm4j
 jf1hqeWRo2K1VqMI5aomRU8tYZfl7vJn8FAzEVGtZGcl/WCra7CYJEQcY3/GG0E2yKMw=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZGT-008aXc-9O for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109633; x=1711645633;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=813zYQzJ3ygRpxAxwRlfdubSOcWGUy1xvUxQHtIWz2U=;
 b=Yr1xDxNL/woJd+YGSKL7n751e0sUkh6SULnqPto1geuEjdUpSmn2zXFM
 BP2e8edXcwK2AXZAsW/ru9pNMjuekID3gbVJaUMpQoCLCAo0BBlTnO6DE
 aihlx3BsDowyRwAMzUrwvxanol8qhz5d6T49QigBS1m2WNP7OBk3NSwzG
 7klunoVeYT2WO5/HETvKfOdqn6tDc52SWi5eFOy7GsRlG/vszQMPS1EW+
 zZEWsiYZo3UKJvPOZv+KU2FcBgih7X26do265LVakqoDQnoUWlnRMwydX
 Yc481bGElYP7z06O+BI8lJT11odtfXpqU6zomCSEAyU1uSkncnzTAdl+W Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807117"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:07:12 +0800
IronPort-SDR: ZrNrjjTf+hZwIdrzLvNWAu3TILzKHaWcbQTzlFDlQHB8M6hLhTIBkyye1xqAwvAtmEkrB7fF5K
 PBoiDiyue2cYeT6jyXOQdXgC+mAo2yA2o83PyqUtHiSvur0rhjv8x0H+wGaY9+8fD+F0zOoa3B
 88P54gVfeN9xh6kNBbQTb2RvFpSdpwDW0h2IhPXs7YirYUv65mrMYlD0Nhm7xI7c9RG+ktGHWP
 2haTpqpOL3N0beL2dl0KzxcRS3GkhM4PKS67MZviWt0dRnd1HIfJP7JqG5mw8oHWoECPpgseWX
 Q94=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:23:21 -0700
IronPort-SDR: 5x6F8sxMltI4WaB27lEorTzv/W+x0JlN7rg04JjPfd38UU2ZZm/8DVpEHZF7Dz1SymcLD61OdU
 pMAulltziCw14vrFFK29xsFqr89kB9UbrC7cwH7R1RI8Lt7mmLGDYyj8PgO4p5chUbgRB50fDX
 pEWQG9uo914V+cwk1EfVh6hsltWKfNnh9Gqxgm0AGxlxSe7pa8UIAv+zE9lP4gByUZGpAjJ+IZ
 Lyi/Xsr9WvBwip9Y4KMe0trG46KV0zl+LFfsw1hbin01REWR95Nk66NcjalZz84eqJSVFLmHCh
 l0Q=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:07:11 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:06:04 -0700
Message-Id: <beea645603eccbb045ad9bb777e05a085b91808a.1680108414.git.johannes.thumshirn@wdc.com>
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
 Content preview:  Check if adding pages to clone bio fails and if bail out.
 This way we can mark bio_add_pages as __must_check. Signed-off-by: Johannes
 Thumshirn <johannes.thumshirn@wdc.com> --- drivers/md/dm-crypt.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-) 
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
X-Headers-End: 1phZGT-008aXc-9O
Subject: [Jfs-discussion] [PATCH 18/19] dm-crypt: check if adding pages to
 clone bio fails
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

Check if adding pages to clone bio fails and if bail out.

This way we can mark bio_add_pages as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
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
