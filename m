Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7E26F41C2
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:36:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptnMt-0006Vz-7w;
	Tue, 02 May 2023 10:36:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptnMp-0006Vj-Od for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2CQkrnBDSeBD/itN+P8wJwd+9jFgjEBMRh6zMcNcvJ4=; b=lzoXwVDfoSIEEFhsTt4Qig8Ebp
 fh4WCbFEi0CNYjsNC1DZlkEXQg+uKKUTmBGmPVCoNR5DGT8LGfrGpo84mXlTHn7RqIm0rZ9InNHcW
 +grI6uq34bEF8vSwOnWRrl7FxSHoUWApytR/2fl1NQyBXKDHZYu+QnNUEhQaRISY5L9k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2CQkrnBDSeBD/itN+P8wJwd+9jFgjEBMRh6zMcNcvJ4=; b=TGUV2jzJu8wiU/vnsuziP8CJsW
 42/HQMQmOG1ctZIQicNXV6BKOjQLAwOM5E0AUFLiEMXox8Fr0EwsRakWkIiMjn/mOkeHz5P9qFnbf
 XW6tjsUi7Gbr3cD/jdLftUiEWuFXMeHKl9tcvsvRZ97i+5Cw3r4rwxAsQEqiYtjApkes=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptnMp-00BRMb-TA for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683023779; x=1714559779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FXpnjgB/ygwpmZKJ1wgHt/Ki7pqawjz1WS6cXCp7ZKc=;
 b=ZzauJMw9OgJSr4tyMHYcxPjYC+ZIXj0M+1dxcrM/KKREDGanyJz0MofX
 EZUqdLrRDJiRStDolOZtVwKM6DtZimy6/IFqfth/fv20/8Bw9tDvLVqFH
 woG5/8R6tfHsPaD8pYu5VcWG+Ji7Ph18uLFmfEzCGI7GFsACIUJAPg5ET
 0aBTMOfh6bEfedu9enoo6sQL+niid+8267T06D2tE03qlMFZnYJSjc8E6
 L/QnM7fjLFCqowW6R6UWJSMDQCQoz6+rRzPrlXaxiw9heoobK03ohFTuv
 Pq+Eb1k+XrSA5VifK1m3EhGp7fdPsyx6oWgpxQtIO/5YzoertuWEf1pvL Q==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="334136172"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:07 +0800
IronPort-SDR: NJP6UgB44obLjccj12n0EKpV5B6ahF39CoAWtBjnWOTOMuogRz59gaMnaCr8RjU2iTSWQORaGq
 eyhEpCQVdcGbGgW7M/EWevNCcv4dDpk1/g6GLjDV3JqibRecaHbhVpZgY2cMCfIJFsy/a7FrcB
 MNxbwnx9gI87xsepCm8rMY1K1LD7JkivAI2Ad55QtwOdWJXMj+wtlo+yznNrm1Bvb0sbedJHJC
 LKUTMW9C02DNzVR5GhfGXrFtZ8M2MqNxgjkK9axndtQ2CCpQe2tUa7RLxM3//lJf6vGGkR1JS7
 sUM=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:35 -0700
IronPort-SDR: mWtBTTHy90djKAbegefmDyP3WKoM6oP2zY9LncgzfFocNlEb1JermO/6eC4ZJMDhie29j2OtjW
 lptdro5cMeGM9kaWql7Z3j6h1oOXaDvNIEWz/ThhgjCFgs+VsseeDM3qqWWaA8jtZNxr812aSF
 WPCYWUlvjcno+HwbuSlNFNmNJdeO4ey/RN8/SbWz6G8OgGdzvlz05cLYWgBmoPXtw1YB+d9bMD
 LEIXW/AruICqoDNWgLp43Ig0EObTHoQwnl65bD70v5tSToP+lRLcqP1Zp8ujMKyHqk2IMC6uia
 kD0=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:03 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:21 +0200
Message-Id: <20230502101934.24901-8-johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ptnMp-00BRMb-TA
Subject: [Jfs-discussion] [PATCH v5 07/20] md: raid5: use __bio_add_page to
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
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, shaggy@kernel.org, song@kernel.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de, rpeterso@redhat.com
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

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
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
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
