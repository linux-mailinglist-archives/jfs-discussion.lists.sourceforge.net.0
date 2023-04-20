Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFE96E8EF0
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 12:06:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppRAx-0001pP-FM;
	Thu, 20 Apr 2023 10:06:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppRAv-0001p4-N1
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=asKpmswp0ZeanhVo76Eo+6VNkXdxI3jhQK0PDuQZThY=; b=QWyw8NlqSkM1/C+oefYffL87An
 MhJJbzw46S9S5t/Wq0+HGNmVjyJ8Jtguw3g/N350NQiM4ZsHQtIXvoFAmNrGb/k7rqcftE9UYvC6V
 0BB0nlOX2z/6ZItAUmzo0aFF/eLrgzinyEMESZhDJW5sb8ud+z8VQgP1g2fKiVNQ3amM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=asKpmswp0ZeanhVo76Eo+6VNkXdxI3jhQK0PDuQZThY=; b=CP/clCPfyiMEHflguNajHREbnd
 JhRO0kmrssuctYIbtfeFNmOp5kmVT6pPfqt22MFm5FIzOD2GPQ78Ii7/KhhaLe731lvZg3nW34tOC
 lLgVXpxPJSn7pM6L5YAFu3+1Sr85t2n/jKu3hrU4pzXtMvgScYqD8AUAf3bQeSOdTHSc=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppRAu-0002dx-6n for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:00 +0000
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-3f189819513so4519685e9.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 03:06:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681985154; x=1684577154;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=asKpmswp0ZeanhVo76Eo+6VNkXdxI3jhQK0PDuQZThY=;
 b=iKzYRM3sglAQU16uGYKDALfv7SA9jjZ0eY5jkElKN8DbKv/J3pzRk81iUlkwHtPrgR
 nJh/3UBtO67UazsO6qFAJsyZ0vTzaWVI155wLaL7TVxibMttF3nbDBDEMcxmQqWaPRm7
 LrvyzQR9qV4Ui2gb8A18b+BUUAy5AXnSQKsXEnWVfeaifx0bTmw9aNs1vFxXJde2kT5G
 53s26mW/o6mI3BnQ/v08AmmA3XyxvU/AOeFsU9/QNgXTISVTAFqdKSBHvNDZodGA+suY
 LcpPfGgbeVqfC92RAe0bXcyQjlPVbmJp4wkeUv9hHgaVA/RBdLbdhNsFFD+wNsW7wJ4e
 VHtw==
X-Gm-Message-State: AAQBX9eBFEHr8xR7rGtM1jdxHAdxUSbhjl03yrPTVkE3sHJIzeyyyy+1
 mTlkeUcS774jV8wXsdlezIU=
X-Google-Smtp-Source: AKy350aEPjl5npFp/5W8Iqf2usu87C/1xVbllQj+JBJFP+rdftTKzTknJoS6cfDyj7W7tb2o1uXlCw==
X-Received: by 2002:a5d:4ecd:0:b0:2fb:4121:285a with SMTP id
 s13-20020a5d4ecd000000b002fb4121285amr782830wrv.57.1681985153608; 
 Thu, 20 Apr 2023 03:05:53 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-208.dynamic.mnet-online.de. [62.216.205.208])
 by smtp.googlemail.com with ESMTPSA id
 l11-20020a5d674b000000b0030276f42f08sm201410wrw.88.2023.04.20.03.05.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 03:05:53 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Thu, 20 Apr 2023 12:04:42 +0200
Message-Id: <20230420100501.32981-4-jth@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230420100501.32981-1-jth@kernel.org>
References: <20230420100501.32981-1-jth@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Johannes Thumshirn <johannes.thumshirn@wdc.com>
 dm-zoned
 uses bio_add_page() for adding a single page to a freshly created metadata
 bio. Use __bio_add_page() instead as adding a single page to a new bio is
 always guaranteed to succeed. 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.43 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ppRAu-0002dx-6n
Subject: [Jfs-discussion] [PATCH v4 03/22] dm: dm-zoned: use __bio_add_page
 for adding single metadata page
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

dm-zoned uses bio_add_page() for adding a single page to a freshly created
metadata bio.

Use __bio_add_page() instead as adding a single page to a new bio is
always guaranteed to succeed.

This brings us a step closer to marking bio_add_page() __must_check

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/md/dm-zoned-metadata.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/md/dm-zoned-metadata.c b/drivers/md/dm-zoned-metadata.c
index cf9402064aba..8dbe102ab271 100644
--- a/drivers/md/dm-zoned-metadata.c
+++ b/drivers/md/dm-zoned-metadata.c
@@ -577,7 +577,7 @@ static struct dmz_mblock *dmz_get_mblock_slow(struct dmz_metadata *zmd,
 	bio->bi_iter.bi_sector = dmz_blk2sect(block);
 	bio->bi_private = mblk;
 	bio->bi_end_io = dmz_mblock_bio_end_io;
-	bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
+	__bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
 	submit_bio(bio);
 
 	return mblk;
@@ -728,7 +728,7 @@ static int dmz_write_mblock(struct dmz_metadata *zmd, struct dmz_mblock *mblk,
 	bio->bi_iter.bi_sector = dmz_blk2sect(block);
 	bio->bi_private = mblk;
 	bio->bi_end_io = dmz_mblock_bio_end_io;
-	bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
+	__bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
 	submit_bio(bio);
 
 	return 0;
@@ -752,7 +752,7 @@ static int dmz_rdwr_block(struct dmz_dev *dev, enum req_op op,
 	bio = bio_alloc(dev->bdev, 1, op | REQ_SYNC | REQ_META | REQ_PRIO,
 			GFP_NOIO);
 	bio->bi_iter.bi_sector = dmz_blk2sect(block);
-	bio_add_page(bio, page, DMZ_BLOCK_SIZE, 0);
+	__bio_add_page(bio, page, DMZ_BLOCK_SIZE, 0);
 	ret = submit_bio_wait(bio);
 	bio_put(bio);
 
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
