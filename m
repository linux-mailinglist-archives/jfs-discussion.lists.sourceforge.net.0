Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E92DC717E3B
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:38:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4K9s-0004WZ-PM;
	Wed, 31 May 2023 11:38:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4K9p-0004WK-Tq for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lesC7ZHzHc7ah/ToJ8yOzNcL34jZPc+O7TdhQ2cqcu8=; b=HpS32978hNMOqyRPn/2FiylrTq
 5OPUN302ryArecpsbjQMnSuMv58LpqF3M3XkyuqGv/4YaofVeSPhPteSBzmVbf+gHYDe2autrA24B
 Vgy/+XN6ur4fttytVCInU2Bl/wvSM6FOQB92CL5wB0f9pB4l26chwPLtxehoLtyUXcus=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lesC7ZHzHc7ah/ToJ8yOzNcL34jZPc+O7TdhQ2cqcu8=; b=UJsjPjDRGjja6TON6jWjOqmPNP
 78wHR6QT6NA8637OtqINRCIG85c5IJNZxdHbt43u5ZwH4r5TG01WTX3ngjT9vkNSORxXCDiSpg2Uj
 NkvVeUC9115hE114IDJCYuWVQxxVZkPign/BLU0EeGGLO4LpyQjrc/th1hv15BfoGe8Q=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4K9p-0006rs-PT for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533105; x=1717069105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mEDf+2bPYBdApkRtQGcrKQLhlyK4U4yv8ooj5C9H9Fo=;
 b=DYzFY3poJU/neZZFQ2+rSVxDjdSkgTWMjTmmgNWzZYLdNwdLP6+EIORn
 s5Qx5ktORioZsMNQz+RCiIX1olOJpQG61zzqwGzIsrVswxI0S19tLJZwm
 fG8Vo3DgRnEp54m8Ath+l5gU8j/k+Datvmkdx4bDbZSUTpJUp1hGxUW7+
 m11MJwYvrcoytxUkmTyrNokLx9RKQsOgPo6FeOb86UcpHioH3MTdkWpfI
 IrBfDwWuLesCiQPUZyYPw7/Qezy5nns9nlnuTSD5PnvM0DtV6VBAHwnQI
 ZT4uOFMKC/5Slu4KEIzv0FS6EnJqp7Mg5g0CPthYM7qPotBtpfrTxFbU5 w==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179056"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:38:25 +0800
IronPort-SDR: zSn+CnU9ySJ0Mxo5xmLeh+IQj8cqTUMvPLxqjnjIfeQ81NShD7tw084hUjMc8ILp8fLtli7stJ
 Td+hxV5vdIgA+vMYVWi+0uJ9IxAOeeBv4c2vHIOF0Zz8XD8S/YnF2W1HdGtPcwjnCiypJ2RGt0
 eq4D7s1M1ZePV7xzq05z7sBXx5bp3yRNewK8W2Qt5jRcKamP6Xv5+4DbUSEHcXT7jyabVMabih
 Vltm5BdTROQ6BKjpH8Cmh4fG9J+EPe1nHVXAF5mAWmDT6Wa5KOxRIO4ky7fsD1tF3zHBwb1MgM
 qrc=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:47:37 -0700
IronPort-SDR: aNTVBj/pNYOm8LQW/Ysyt++eETiXP7If4qejTn0fgwq+ZBvvjbFqnWjX4cdzAcsB81x+GtufD5
 4CHrk3zAtKxRtt5SrrV2bu+MNhH63gMrYcc4D4gKpDa93KWb6m58gjDK9xoBngjeugS4uWE7z9
 NwbSUCGGc2OIi/GQCF/6Y8t55/FhJdhT39gpNtonggVW3HmW/CajaG1O4A2XU5aP3EL6Og0AOz
 J6wM93B7s7mTIZOtB8dnVwSE7Xkm+VtttBGZJwZi8mxnvp3q64E/M567+71xJT/zY9kw6Ysvqx
 QD8=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:38:22 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:37:48 -0700
Message-Id: <1ee0465c7b2634a4435e65a4d0b06019a73d8389.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685461490.git.johannes.thumshirn@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The raid5 log metadata submission code uses bio_add_page()
 to add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q4K9p-0006rs-PT
Subject: [Jfs-discussion] [PATCH v6 06/20] md: raid5-log: use __bio_add_page
 to add single page
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Song Liu <song@kernel.org>, dm-devel@redhat.com,
 Christoph Hellwig <hch@lst.de>, Andreas Gruenbacher <agruenba@redhat.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Matthew Wilcox <willy@infradead.org>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Mike Snitzer <snitzer@kernel.org>,
 Ming Lei <ming.lei@redhat.com>, linux-raid@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Hannes Reinecke <hare@suse.de>, gouha7@uniontech.com,
 linux-block@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-mm@kvack.org, Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The raid5 log metadata submission code uses bio_add_page() to add a page
to a newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid5-cache.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/md/raid5-cache.c b/drivers/md/raid5-cache.c
index 46182b955aef..852b265c5db4 100644
--- a/drivers/md/raid5-cache.c
+++ b/drivers/md/raid5-cache.c
@@ -792,7 +792,7 @@ static struct r5l_io_unit *r5l_new_meta(struct r5l_log *log)
 	io->current_bio = r5l_bio_alloc(log);
 	io->current_bio->bi_end_io = r5l_log_endio;
 	io->current_bio->bi_private = io;
-	bio_add_page(io->current_bio, io->meta_page, PAGE_SIZE, 0);
+	__bio_add_page(io->current_bio, io->meta_page, PAGE_SIZE, 0);
 
 	r5_reserve_log_entry(log, io);
 
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
