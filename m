Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA376E7BAA
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Apr 2023 16:11:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pp8WS-0002LP-2j;
	Wed, 19 Apr 2023 14:11:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1pp8WN-0002Kr-K5
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:10:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D58hy5/Cr3/DLqz8bPLF+cijdU1EeyUsaB6+w7+K1A4=; b=YEPyl9KJcaIXpl/7sMDvhnpoLt
 0U30v0y35uAaqxNkrw9Ywrb2r58vHbeaqbOXt27OU6ogIIYyW7FpLOLesWneGlyJxMOHiDXhJGTRA
 n+JAvD+Cg+WCrIZJw0B/tXzxk8/cJfaoknljeZ4fANlxBbwJosUK1WzkEwTrGcbhTkf4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D58hy5/Cr3/DLqz8bPLF+cijdU1EeyUsaB6+w7+K1A4=; b=CjMwsxtN/uzZ6bsnaLQRJawbW3
 ASDpI6Fgaarcv6B6PgGxB6YhTQnSA8+GjXCRSmfyjqhMNe7XxAUjID+Pz1GbZqhtc+iHeGm34ek2H
 4L7f2b0PZCo02j1Ryj0T7r89hsIRXlspCb4IVnD9hLYnqb4o1cw3ywrgnApv0q0foLc4=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pp8WN-00Cc6O-El for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:10:55 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 m39-20020a05600c3b2700b003f170e75bd3so2154142wms.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Apr 2023 07:10:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681913449; x=1684505449;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=D58hy5/Cr3/DLqz8bPLF+cijdU1EeyUsaB6+w7+K1A4=;
 b=MbQv50N13wGY25uMZe9resdjHMliIbYw+fYctSlohiaJHLnGJJ4ah5mkD8pKvdYgY3
 pDYVvpkSRrx+JIY/UBwUobrZ3m9vNnSnhzy3+hdXAltOwUL0/c1HTnNOXJ6BS7nPrXHJ
 3BexuFnQMuyQoid8XimbLVmnoSu/9Nk4shoD+8cgISA4IswMi9ExcmtG2wxr3B3XEdKv
 DM4U3xTBR7suwQkWP/KIaJVXvm6PxUPsbExxh5QMfWOwT6UXlv0YpHG0uBhQkGrsPJY+
 5fVBpzSMAD0fEEXQNSJWOB/O1Cr0wWOCTVJy7KOOj9ZeJbufljmaaLBymQVPe7ZccqLe
 Z/pg==
X-Gm-Message-State: AAQBX9cVwP0A+avjHXSb3dQjNf6ZpmkzeBxxrHi3O6QI1fcsjUCMiE79
 owg9VED1VnLxTs1JxesW/6Y=
X-Google-Smtp-Source: AKy350YVGom4jRqLlz1SlZT1B3VxAH80TCdfTvTrIcrTBS48HRxL8jnx3ehntNMClr8C3qNVzqHCog==
X-Received: by 2002:a05:600c:24d:b0:3f0:373d:780 with SMTP id
 13-20020a05600c024d00b003f0373d0780mr16769739wmj.34.1681913448956; 
 Wed, 19 Apr 2023 07:10:48 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-204.dynamic.mnet-online.de. [62.216.205.204])
 by smtp.googlemail.com with ESMTPSA id
 q17-20020a5d61d1000000b002faaa9a1721sm7612089wrv.58.2023.04.19.07.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Apr 2023 07:10:48 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Wed, 19 Apr 2023 16:09:23 +0200
Message-Id: <20230419140929.5924-14-jth@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230419140929.5924-1-jth@kernel.org>
References: <20230419140929.5924-1-jth@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Johannes Thumshirn <johannes.thumshirn@wdc.com> The
 zram writeback code uses bio_add_page() to add a page to a newly created bio.
 bio_add_page() can fail, but the return value is never checked. 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pp8WN-00Cc6O-El
Subject: [Jfs-discussion] [PATCH v3 13/19] zram: use __bio_add_page for
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

The zram writeback code uses bio_add_page() to add a page to a newly
created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/block/zram/zram_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/zram/zram_drv.c b/drivers/block/zram/zram_drv.c
index aa490da3cef2..9179bd0f248c 100644
--- a/drivers/block/zram/zram_drv.c
+++ b/drivers/block/zram/zram_drv.c
@@ -760,7 +760,7 @@ static ssize_t writeback_store(struct device *dev,
 			 REQ_OP_WRITE | REQ_SYNC);
 		bio.bi_iter.bi_sector = blk_idx * (PAGE_SIZE >> 9);
 
-		bio_add_page(&bio, bvec.bv_page, bvec.bv_len,
+		__bio_add_page(&bio, bvec.bv_page, bvec.bv_len,
 				bvec.bv_offset);
 		/*
 		 * XXX: A single page IO would be inefficient for write
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
