Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E506CF055
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZGS-0002dT-9E;
	Wed, 29 Mar 2023 17:07:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZGQ-0002dK-78 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BpRyH3T+b0hPPGGNCaeUc0CsD3++4ChCfoIiS/mbSiI=; b=bi/MN5eIcTZfXHe81H+J0LsqHA
 N8RQuLpB/62bTOwn3hWUEkOGs6dF53F3/qNik9K9gbOc51lv3PQ24hSOM3q6hQumOmnG7fELTOL4v
 IM44r71tvA2TVYZfauPG2f5UON1LGyXSZe56Ucttoz+n/TLQjXMULQFjDIciJi2H++NU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BpRyH3T+b0hPPGGNCaeUc0CsD3++4ChCfoIiS/mbSiI=; b=jUmr1x+T6iBdwJPRG0LY1ZKeU3
 3A+PaTbKLmaTmaDOFWgDuaUAFi2MtP0D7w3+QjIgp9g27Hciz1A126P3+dczH1RW4lrVrC8WQMMVk
 1B9SUroQYn+YxP09HFj+xNlfgcy9z62RTuIAB8rSKPA0sZwJhD6Iwjw1GtxfYL4KXe/8=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZGP-008aXc-NK for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109629; x=1711645629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I1IOtKJu7Qm2q7N0lw4Ylfd8zAyg7sJl8PUDn+a8a0Q=;
 b=ZIrosxpGG7V5WkgkT5DqWcZVQyJFRK7chxbgT8bC7CgOVtNtu8lWSq4W
 MSoRZJ4cx0+NIfk/O09nYoWU+YhbGhryswF2I4W6IYdOgisZqmrE5s5dG
 onH+xMe+RBBlfCblZbIA88dcIyxf761apdzqMvz5g9yAIw1IasDeeesYa
 Qf1EClgN3XFVw1cgm+WSdnkk3p2bdqwEDZOl32Xnt0TwemRGqD+HKfgpW
 4rKNqpQV7BZvInMA4fzycYmV6c6YijrDUBOAYWLHq0Rkejp151nJnljca
 uoviX8IKM3dj4FJHWzRAPp/KYTL860zNkRsQZK3gFMRpKiYMJt7jjfKCo g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807107"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:07:09 +0800
IronPort-SDR: szDRzWDo1uxUvi5ZSs712Fk2gRnkKR5/MUxdRQHWL26siKSbNrxoRUlyJ3rC2+dAG1OOYxGPuH
 zFYRCJLCxsN6jecf+U5xb/c2OfOxbOGI+r1ucjNONJGN6S6N0L8xpCEhiYMSNU3y8+Vqz6cPe4
 g0mWX/2hPQcX11BHGb7R5Dn+0owD5uGPWfJ91iaFtk8JQH0Eq6iSfqpcecZgREZTWV0XvAUci0
 XzI/Iz9QlgUr8Mgy+yFUmUnyBVIGqXPM4AnniNkqZBfzbwcJexnDMyTpFPpeTsWXOxqC1hXGsM
 nvw=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:23:18 -0700
IronPort-SDR: viCEK69jTCbLVPYfSPHd/6CBJALlqph49HjUR1colbGaK0Lgbfrebvo8dwmNEmOHMHTZRkfRQB
 vvHWoJpYznlCku1pvW+JJdGG7HzrUkK08/8VC9+32lQr+nLMcEMoNPch20WVqgI3us1Vxa+4Ca
 C6Ko1isbeJ080GTeYV4qNaRBsBV8XLQ6lMr+xyFq9eqWcHMYCbmZbt6NVCkNrT5F3zDoUBT4ZW
 fFd3cyh6qwWEcmkuDYxsFiuAvwvdEKoHMo6Gz1nS4Cl/UXPxkpMxZvew6C33popOLndwg3upAA
 xww=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:07:08 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:06:03 -0700
Message-Id: <e2f96e539befa4f9d57f19ff1fc26cfc0d109435.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680108414.git.johannes.thumshirn@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Check if adding pages to resync bio fails and if bail out.
 As the comment above suggests this cannot happen, WARN if it actually happens.
 This way we can mark bio_add_pages as __must_check. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phZGP-008aXc-NK
Subject: [Jfs-discussion] [PATCH 17/19] md: raid1: check if adding pages to
 resync bio fails
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

Check if adding pages to resync bio fails and if bail out.

As the comment above suggests this cannot happen, WARN if it actually
happens.

This way we can mark bio_add_pages as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid1-10.c |  7 ++++++-
 drivers/md/raid10.c   | 12 ++++++++++--
 2 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/md/raid1-10.c b/drivers/md/raid1-10.c
index e61f6cad4e08..c21b6c168751 100644
--- a/drivers/md/raid1-10.c
+++ b/drivers/md/raid1-10.c
@@ -105,7 +105,12 @@ static void md_bio_reset_resync_pages(struct bio *bio, struct resync_pages *rp,
 		 * won't fail because the vec table is big
 		 * enough to hold all these pages
 		 */
-		bio_add_page(bio, page, len, 0);
+		if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
+			bio->bi_status = BLK_STS_RESOURCE;
+			bio_endio(bio);
+			return;
+		}
+
 		size -= len;
 	} while (idx++ < RESYNC_PAGES && size > 0);
 }
diff --git a/drivers/md/raid10.c b/drivers/md/raid10.c
index 6c66357f92f5..5682dba52fd3 100644
--- a/drivers/md/raid10.c
+++ b/drivers/md/raid10.c
@@ -3808,7 +3808,11 @@ static sector_t raid10_sync_request(struct mddev *mddev, sector_t sector_nr,
 			 * won't fail because the vec table is big enough
 			 * to hold all these pages
 			 */
-			bio_add_page(bio, page, len, 0);
+			if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
+				bio->bi_status = BLK_STS_RESOURCE;
+				bio_endio(bio);
+				goto giveup;
+			}
 		}
 		nr_sectors += len>>9;
 		sector_nr += len>>9;
@@ -4989,7 +4993,11 @@ static sector_t reshape_request(struct mddev *mddev, sector_t sector_nr,
 			 * won't fail because the vec table is big enough
 			 * to hold all these pages
 			 */
-			bio_add_page(bio, page, len, 0);
+			if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
+				bio->bi_status = BLK_STS_RESOURCE;
+				bio_endio(bio);
+				return sectors_done; /* XXX: is this correct? */
+			}
 		}
 		sector_nr += len >> 9;
 		nr_sectors += len >> 9;
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
