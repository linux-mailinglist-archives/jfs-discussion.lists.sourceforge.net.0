Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B436E8F00
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 12:06:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppRBD-0005dt-2N;
	Thu, 20 Apr 2023 10:06:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppRBB-0005dW-FF
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6vsuN/DXTgv6nXT8tixf/9v37orpsS/ZRMb3IsbWCsU=; b=VSNq6uJAn1y7z4T0X5YiJFmUXh
 ZhD6ayVjjjLPso6X3XwzqF7wi0Ox1oCfG+GOVm40i21Bq9DbJm/0sb95/t7izLLJ+0Rbev/EWoOZX
 n0LMMCosBYCNaXEgMkLIoyf2U8YiP8bq8S3lPKAB6CY8iUdWgZdxPJo+DGu+Y9D4I0V8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6vsuN/DXTgv6nXT8tixf/9v37orpsS/ZRMb3IsbWCsU=; b=OqOPivQ3Qhqv0z1l58i410/D4O
 EsCLiDf7eP+KrqnaaDi7XlranDCFeaij5YdcCrAV/Jg4BZLmyv734ws7Ig+GdG5sRO7zRL96bf7ml
 4M8IzfHH9twrUzSXf4QBZHW+PtfcLD88+hqppB1cW1LR4OaLlmwnXxzzz+yiKLt5kmOM=;
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppRB9-0002ed-Vp for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:16 +0000
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-3f17b967bfbso14829625e9.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 03:06:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681985169; x=1684577169;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6vsuN/DXTgv6nXT8tixf/9v37orpsS/ZRMb3IsbWCsU=;
 b=iBOfAAh1Ds95Uv2VdwxjN5QX08vK8MlThk/hTz6YK7JYS5mpyRFyyYsc/egwbBt6XO
 DuPrrxkX2QKnq2+XlArQtZ6Fp50an5w9TbnUAP6P1vR1BotMZp2xluZQPQ0v8w8zn/MD
 UDzf2Y5SmfTfacvvNdhoG1PhWq2/nlBvN97o2OW/cR6MikGVPO3i5wHpGSkv9FyucmOl
 diqBItygdN9PQAJhyqeAKy+86MF4fytXz/c9wn1H3lxvXfFNHPmdOm4fJ3Mk/u2idhDP
 AscCTi0+WJ6BHFbSdsZghNK6Dqu0o2DafeVYw7dYplatYrfQmCTsqlht0CAG8B2hYR1n
 RauA==
X-Gm-Message-State: AAQBX9cxYDfpfonxuHDEDWlnZkTyVRetUglgOOqqgLWVE0OMOnUpuD2B
 mvGxZMgAWmLQycJgd2uaEfc=
X-Google-Smtp-Source: AKy350bi17OiBWEFnlcQi09SOCVUbwgGf05MJ1fWFG3PfYDqnN4wrKiZQ9TzOmB9mPzeZUp0HmKXDA==
X-Received: by 2002:a5d:458a:0:b0:2fa:3108:f962 with SMTP id
 p10-20020a5d458a000000b002fa3108f962mr4684729wrq.24.1681985169353; 
 Thu, 20 Apr 2023 03:06:09 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-208.dynamic.mnet-online.de. [62.216.205.208])
 by smtp.googlemail.com with ESMTPSA id
 l11-20020a5d674b000000b0030276f42f08sm201410wrw.88.2023.04.20.03.06.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 03:06:08 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Thu, 20 Apr 2023 12:04:55 +0200
Message-Id: <20230420100501.32981-17-jth@kernel.org>
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
 Content preview:  From: Johannes Thumshirn <johannes.thumshirn@wdc.com> The
 sync request code uses bio_add_page() to add a page to a newly created bio.
 bio_add_page() can fail,
 but the return value is never checked. Use __bio_add_page()
 as adding a single page to a newly created bio is guaranteed to succeed. 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ppRB9-0002ed-Vp
Subject: [Jfs-discussion] [PATCH v4 16/22] md: raid1: use __bio_add_page for
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

The sync request code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
---
 drivers/md/raid1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/md/raid1.c b/drivers/md/raid1.c
index 8283ef177f6c..ff89839455ec 100644
--- a/drivers/md/raid1.c
+++ b/drivers/md/raid1.c
@@ -2917,7 +2917,7 @@ static sector_t raid1_sync_request(struct mddev *mddev, sector_t sector_nr,
 				 * won't fail because the vec table is big
 				 * enough to hold all these pages
 				 */
-				bio_add_page(bio, page, len, 0);
+				__bio_add_page(bio, page, len, 0);
 			}
 		}
 		nr_sectors += len>>9;
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
