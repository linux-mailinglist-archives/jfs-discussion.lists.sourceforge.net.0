Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 231B56E7B9F
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Apr 2023 16:10:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pp8W7-0002JZ-VN;
	Wed, 19 Apr 2023 14:10:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1pp8W6-0002JS-B8
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:10:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=orhZa1fQDVNg13Xf2hv14fXxJ7CL2ohR8GPEx9ozulE=; b=kqkg1a7NObWkO+lN1iuq4DBdpd
 XFbQK3fwg96J9FsUt/iO9NubQbm5pNnjCUm+cnTAdauVUsxAhJTgzZh5E80nIeivYmXwqFqipJ/9A
 48l2UCXHzyDx4qnBpNtcwrVx2Suj9jZIo354jqcCuge8D68LD2/KPpW86wumx/ehHSBg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=orhZa1fQDVNg13Xf2hv14fXxJ7CL2ohR8GPEx9ozulE=; b=BY7oUREnllzQO8vMhGsL8b4jhI
 3UyBqeic29zce/HFPplc6VsJHnFQ/f019Ytz618nTTsuMK8SHIYRoHJzAlB3/XNEuMtOlt+3r51gh
 8rrFNWRdXqKUL8mwozClyThWAa47JDiQd5QwMgtACEJB+Pa+W+cVARsnriPt1e84zynA=;
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pp8W6-00Cc5Y-0D for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:10:38 +0000
Received: by mail-wr1-f43.google.com with SMTP id
 ffacd0b85a97d-2f8405b3dc1so2122314f8f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Apr 2023 07:10:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681913431; x=1684505431;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=orhZa1fQDVNg13Xf2hv14fXxJ7CL2ohR8GPEx9ozulE=;
 b=Q+WkRFZj8aIiTzYU2l4prVCv2SxbO0SmqBcJsxM0iSOBAvuKPb9QhZ50dhT4Tg4iHq
 2AcaB9uC5f8/qj6BQ++YvMdVbwjYAKF8zdo3vNi2uDtUeJxJL/yKSHfcwIj9ZarSy9+R
 7ptU+R+P8XwEoYsW13zUO2r2NkVxeM3P4j2qBgfvqKpWhMVwZ2HdYcPWiFLVen5V+5Gp
 VPH1G/RCZOWhC6jNqpPT+pWh3Tglpz1ZQ4tB4z3f5VPODU9oJM7Bfcq4mqa593hvh98R
 Cb9T214FEKEE6egOFLD8Wncmdonkr+c+K2OvoxfyabwmcF9E2IwUzZ4unt8wqKbtVIIt
 nbGg==
X-Gm-Message-State: AAQBX9fEoRMbB6gFlH8akhazv1X1hq0cE2KiJQKjvTA4JhXsYpGJ3bgF
 2rxl5tUwaW3lrtMdKOpWZ4M=
X-Google-Smtp-Source: AKy350ZGnNvFCGHtOF5DkVkLZweQA6NX/MNorpPWAg7TznL+D24Y2XSpeMvyxjzCOqr7ZSOtL7zx4g==
X-Received: by 2002:adf:e301:0:b0:2f7:e3aa:677a with SMTP id
 b1-20020adfe301000000b002f7e3aa677amr4994062wrj.46.1681913431422; 
 Wed, 19 Apr 2023 07:10:31 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-204.dynamic.mnet-online.de. [62.216.205.204])
 by smtp.googlemail.com with ESMTPSA id
 q17-20020a5d61d1000000b002faaa9a1721sm7612089wrv.58.2023.04.19.07.10.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Apr 2023 07:10:30 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Wed, 19 Apr 2023 16:09:12 +0200
Message-Id: <20230419140929.5924-3-jth@kernel.org>
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
 Content preview:  From: Johannes Thumshirn <johannes.thumshirn@wdc.com> The
 drbd code only adds a single page to a newly created bio. So use
 __bio_add_page()
 to add the page which is guaranteed to succeed in this case. 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.43 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pp8W6-00Cc5Y-0D
Subject: [Jfs-discussion] [PATCH v3 02/19] drbd: use __bio_add_page to add
 page to bio
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

The drbd code only adds a single page to a newly created bio. So use
__bio_add_page() to add the page which is guaranteed to succeed in this
case.

This brings us closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/block/drbd/drbd_bitmap.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/block/drbd/drbd_bitmap.c b/drivers/block/drbd/drbd_bitmap.c
index 289876ffbc31..050154eb963d 100644
--- a/drivers/block/drbd/drbd_bitmap.c
+++ b/drivers/block/drbd/drbd_bitmap.c
@@ -1043,9 +1043,7 @@ static void bm_page_io_async(struct drbd_bm_aio_ctx *ctx, int page_nr) __must_ho
 	bio = bio_alloc_bioset(device->ldev->md_bdev, 1, op, GFP_NOIO,
 			&drbd_md_io_bio_set);
 	bio->bi_iter.bi_sector = on_disk_sector;
-	/* bio_add_page of a single page to an empty bio will always succeed,
-	 * according to api.  Do we want to assert that? */
-	bio_add_page(bio, page, len, 0);
+	__bio_add_page(bio, page, len, 0);
 	bio->bi_private = ctx;
 	bio->bi_end_io = drbd_bm_endio;
 
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
