Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BF36E7BA2
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Apr 2023 16:11:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pp8WF-0003M1-VQ;
	Wed, 19 Apr 2023 14:10:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1pp8WD-0003Lo-TX
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F5xZASE6AX0FDAF9QaXMQYNUIt4BDoCJAIYtVfQg3gg=; b=Mc6TjKX2DZt4nyL6g6MSVZqWEa
 9+EOb0Fdni5x0fQOslipTzzPUjgoFYIqq6mEVQRmaHVzdVspMy0tUnoF7zEvCCS9xF9Gdf1P8JrYL
 bZTOCgXby5PqQ8WZAf8da0djLKrjWCKnW6LkvI7hX4N//0S63nY4yhW31bgG8/xxw8J8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F5xZASE6AX0FDAF9QaXMQYNUIt4BDoCJAIYtVfQg3gg=; b=MH0qovaJCbDvFVzor3266WlgDQ
 qklVXRnTEGSKpClBAKRlu2sVz2bZT2bmwa8NrIPokKnw99BrGvPnEyrvLVEZ0Pu6LX8WFxNg8QHlp
 fDnmqvcAGk9i9/St7NMzoVKx0Yo/CM4Dx12WQkltBkpFnjgHknpcpBONZ6s5Aviih4mI=;
Received: from mail-wm1-f42.google.com ([209.85.128.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pp8WE-00Cc61-9x for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:10:46 +0000
Received: by mail-wm1-f42.google.com with SMTP id
 5b1f17b1804b1-3f18123d9f6so3363035e9.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Apr 2023 07:10:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681913440; x=1684505440;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=F5xZASE6AX0FDAF9QaXMQYNUIt4BDoCJAIYtVfQg3gg=;
 b=WUrk86Z02Q4VwAF64n8hGo74AA2i92/zlOWHom9QD/VSPDt7KqLLQd96dW5GTLof6k
 HAQcaxWf2WHgBfwQn6/BMtePkzI9zz3RagGEIOxyFtiV5AeEkOd1wjpBRxjLo/9k34WK
 ZtJmu5BiCHr/U5zk5vLhQM+IXbyGDtP+rbI9NpAOt01JDjbCsaw5laPNTzLTi/Ez1qwW
 E5YevaTBxoaw2AFyJBRKwJGs8pvbkFieFOZD8VwUu/kMJR7UmZVJSkcc5Sp+64AJII24
 o8U1M6lP7qqiGyJuZwt4KojY3rUSosPlb0LGMZE2ey637oTaTIuquz2hrOcxhwX+IPES
 hyQw==
X-Gm-Message-State: AAQBX9cXewMFxQwuTLXeF2zchTTeyDRDCEJ85TElNvubnSQzAUd4/keP
 Q3+Cn53jOsPUrforYk24fyk=
X-Google-Smtp-Source: AKy350b5HmMSxUjSF6do3ACzNk+y0AqqAyJ4H9Xhpj5FHnN7rtVrL4Qm/xE5kNgOgQjjoDpX1eOxug==
X-Received: by 2002:a05:6000:11cb:b0:2f9:4fe9:74e7 with SMTP id
 i11-20020a05600011cb00b002f94fe974e7mr4966092wrx.70.1681913439747; 
 Wed, 19 Apr 2023 07:10:39 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-204.dynamic.mnet-online.de. [62.216.205.204])
 by smtp.googlemail.com with ESMTPSA id
 q17-20020a5d61d1000000b002faaa9a1721sm7612089wrv.58.2023.04.19.07.10.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Apr 2023 07:10:39 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Wed, 19 Apr 2023 16:09:17 +0200
Message-Id: <20230419140929.5924-8-jth@kernel.org>
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
 raid5-ppl submission code uses bio_add_page() to add a page to a newly created
 bio. bio_add_page() can fail, but the return value is never checked. For
 adding consecutive pages, the return is actu [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.42 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pp8WE-00Cc61-9x
Subject: [Jfs-discussion] [PATCH v3 07/19] md: raid5: use __bio_add_page to
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

The raid5-ppl submission code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked. For adding consecutive pages, the return is actually checked and
a new bio is allocated if adding the page fails.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
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
