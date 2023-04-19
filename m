Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D29286E7BB0
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Apr 2023 16:11:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pp8WV-0003OJ-Pd;
	Wed, 19 Apr 2023 14:11:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1pp8WU-0003OD-Uw
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:11:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C0hLQVWAy93GtM7oc6TpMOtkbIMql7YOXfxv+ovXyBI=; b=eyisAHW5/X20ja4C7ke3TpohP1
 TzXhmedJ2HjG7QRlukRDAY8PRX8hdN+I3lgzLByN2hyni4Xxiuw41AAWDi5gqMxFwBZ3dEAYUYujN
 8g1RPRFyNvIDeyXLbwH50NSaA6eAymBqsVcaT7z1E4Yjl5eMvZVtHU9rktPBNXUJ79sk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C0hLQVWAy93GtM7oc6TpMOtkbIMql7YOXfxv+ovXyBI=; b=TXb5i4ftogDkpyl6RqUqOHGQaf
 hMXc54y7pJTm/0GhvVLbnjBaRzlxzOgkpm4Vz878ACQxo+JZKgSTXwhWqrFFpk6Di+I0eVblMisK3
 SqCXf2MjB3qxU7oL0VAC9NiKZcnCtthjF3mUWoXU4ZA0bvW3dICqGvdZuqkSSf5gieqU=;
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pp8WV-0003Gg-7B for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:11:03 +0000
Received: by mail-wr1-f42.google.com with SMTP id
 ffacd0b85a97d-2f3fe12de15so2106024f8f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Apr 2023 07:11:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681913457; x=1684505457;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=C0hLQVWAy93GtM7oc6TpMOtkbIMql7YOXfxv+ovXyBI=;
 b=d/aYdKgXRiIGqtjTymG8GAAakhETHG/lBxGkowaeL2BoYuLT8BC84g3SA8Oft+7E1d
 ie6Ak4vBJku0+fvhBjIpcmeMSPUyD0jAbk6ww5PkAM3BJp4299FoMoervnylXIoixTpz
 1yHYH5IeAEF/u7ic4EF1ErRSgrG4RPPIMQYlH6Pb4APBQIjhzVe/2JuRUIfT9DE5R20f
 sd7di/WNqi5qNGNWNmwvKl25Y3qpffVir4WQx7/WtbIyROTMoEYEQjfp+DtjWCej1iVy
 R64MXFVZEHBx5FrmAdkZ/clW+0MT9sxECnslcMQfd+LWy2wux2ff+2nagdlZsKlsx+TB
 1IBw==
X-Gm-Message-State: AAQBX9dGa3rqk9iDTXD0qHQLw6zNyVyi4jv4rnt+UukGFO7I/pxpld6O
 WlgcNSXhaAdhHo6W8Tq7zpw=
X-Google-Smtp-Source: AKy350aVLE+txxcZm9LeX2yItutcTFI6YYsrFgCoIWHLD8EDS9H+yj3niCnWRjhD3VeCviDrTQZ6vw==
X-Received: by 2002:a05:6000:1a47:b0:2ce:d84d:388f with SMTP id
 t7-20020a0560001a4700b002ced84d388fmr5447194wry.40.1681913456733; 
 Wed, 19 Apr 2023 07:10:56 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-204.dynamic.mnet-online.de. [62.216.205.204])
 by smtp.googlemail.com with ESMTPSA id
 q17-20020a5d61d1000000b002faaa9a1721sm7612089wrv.58.2023.04.19.07.10.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Apr 2023 07:10:56 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Wed, 19 Apr 2023 16:09:27 +0200
Message-Id: <20230419140929.5924-18-jth@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230419140929.5924-1-jth@kernel.org>
References: <20230419140929.5924-1-jth@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Johannes Thumshirn <johannes.thumshirn@wdc.com> Check
 if adding pages to resync bio fails and if bail out. As the comment above
 suggests this cannot happen, WARN if it actually happens. 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pp8WV-0003Gg-7B
Subject: [Jfs-discussion] [PATCH v3 17/19] md: raid1: check if adding pages
 to resync bio fails
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-mm@kvack.org,
 dm-devel@redhat.com, hch@lst.de, agruenba@redhat.com,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, willy@infradead.org,
 cluster-devel@redhat.com, kch@nvidia.com, snitzer@kernel.org,
 ming.lei@redhat.com, linux-block@vger.kernel.org, rpeterso@redhat.com,
 hare@suse.de, dsterba@suse.com, linux-raid@vger.kernel.org,
 damien.lemoal@wdc.com, song@kernel.org, johannes.thumshirn@wdc.com,
 linux-fsdevel@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Check if adding pages to resync bio fails and if bail out.

As the comment above suggests this cannot happen, WARN if it actually
happens.

This way we can mark bio_add_pages as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/md/raid1-10.c | 11 ++++++-----
 drivers/md/raid10.c   | 20 ++++++++++----------
 2 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/md/raid1-10.c b/drivers/md/raid1-10.c
index e61f6cad4e08..cd349e69ed77 100644
--- a/drivers/md/raid1-10.c
+++ b/drivers/md/raid1-10.c
@@ -101,11 +101,12 @@ static void md_bio_reset_resync_pages(struct bio *bio, struct resync_pages *rp,
 		struct page *page = resync_fetch_page(rp, idx);
 		int len = min_t(int, size, PAGE_SIZE);
 
-		/*
-		 * won't fail because the vec table is big
-		 * enough to hold all these pages
-		 */
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
index 6c66357f92f5..59e52cf01569 100644
--- a/drivers/md/raid10.c
+++ b/drivers/md/raid10.c
@@ -3804,11 +3804,11 @@ static sector_t raid10_sync_request(struct mddev *mddev, sector_t sector_nr,
 		for (bio= biolist ; bio ; bio=bio->bi_next) {
 			struct resync_pages *rp = get_resync_pages(bio);
 			page = resync_fetch_page(rp, page_idx);
-			/*
-			 * won't fail because the vec table is big enough
-			 * to hold all these pages
-			 */
-			bio_add_page(bio, page, len, 0);
+			if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
+				bio->bi_status = BLK_STS_RESOURCE;
+				bio_endio(bio);
+				goto giveup;
+			}
 		}
 		nr_sectors += len>>9;
 		sector_nr += len>>9;
@@ -4985,11 +4985,11 @@ static sector_t reshape_request(struct mddev *mddev, sector_t sector_nr,
 		if (len > PAGE_SIZE)
 			len = PAGE_SIZE;
 		for (bio = blist; bio ; bio = bio->bi_next) {
-			/*
-			 * won't fail because the vec table is big enough
-			 * to hold all these pages
-			 */
-			bio_add_page(bio, page, len, 0);
+			if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
+				bio->bi_status = BLK_STS_RESOURCE;
+				bio_endio(bio);
+				return sectors_done;
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
