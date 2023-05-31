Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8112B717E6D
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:39:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KAV-0004os-W7;
	Wed, 31 May 2023 11:39:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KAN-0004ni-4w for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vIj6KpJJXGI4GjCHBbNFJm1+SIz5iVkLzC/I2Fd0ozs=; b=UHbDDRAHlJi/hcxhGXh3NzEfoF
 64qtU/CfVLMWEQUCa2yD8XuRvljzs9/L/kYM0wLYjEpbcdpR1iXgKiCaAyk7nCYzWeuYtEgp0Jnrn
 ukgiBXpCqzdeYUvqH/72iE64+jAq1YwUWGxO+eMqyPAZbzqbhIC9ExuwSfKczuu/MPk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vIj6KpJJXGI4GjCHBbNFJm1+SIz5iVkLzC/I2Fd0ozs=; b=QybO3ZP3eCACiOlmH1Pbs3XXYW
 Yi8e7YJD3y7juETmGP9ogLjP2arSyqty5rHsZryzN+0WBRD22dYpRWIyWP0yu/xbNgeUcvjxjalTv
 nYbWHGvHDlformKAhXy3M+to20xcEPA9JMZh3iVip85ejakFFmDWbUSk98wti0gPwvE0=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KAK-0006rs-Gt for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533136; x=1717069136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C+NYxtWZcIKLiQW8aZvWShDgl/gtDFIUIUOTPRiObYM=;
 b=qZb9aDbtjwV2cRnuCD735jsONPVaf404Svgp8zEyKy/kEsqFhzyy3N6n
 MethnOULEaTBxGcZ4iRYD4iDtNpJ6JS6fOKZFqfrERjaQZw1+uKxKKv2C
 X/chzz3tT2ipY8+dsnOHg+WTB1unRgVZyPjs32Rll8pHe0vqpXShgThQ1
 OGymdOgEYWbcsQcxDP8zjkoDHgnYITRLStJA6EZEimwn56FqVdulT4R54
 0jMeK0oZEnTXAuaMwtati41uWWO81nVQ0dUf/z8oBhz/B3TscjxxlxQsj
 1RS5kezEIiMznJh4T1qq2eb1wkfu1Py0A1NGMk6RVB627Y4L4211/kYt3 g==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179125"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:38:56 +0800
IronPort-SDR: KJxrXjApGHiyYW4nuWunXofDPQa56WDCYNSbwnmILVLOZgmXRtpqk7doSTVN1BmWCkZ5MULz0H
 PLOoYCVVqrreWoLpckRnnQB4D0kgLyqDvp+luNORinqmqRSeGJGQm3dXfMJjeU3SnuWuhegA4I
 hJrSIMOHf23mhMX80W51YOYhOaoKYCMHNl0V/xXWE6XPQlts5MR/QQpoHSpPxJz7/oqvBys3xr
 mia0qjiXeg1RCMfmpv8IrfjlozuD8/9XZLbaKFUOd9U7v9KbVcGjdgvByUcVn4Jm3CTGMsYEox
 Ll8=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:48:08 -0700
IronPort-SDR: PKSrcm3NLNbiBK+MDQubevMRCFG4qYLLpgaKSxArlKlOXwW0E2BOzt5f10GZ8a1A+2vN6P0M26
 WxUV3N8icLO2ZI2b6wUvGTR/5lBbq92cfmOjXbzq+xJLRd95oOr+yPHrEb9f4OyqGbaMvtJDpN
 u/ss2e1pjPU9QWjjEw6cCVIwv43Blx8EnaXRymC0CiQS/6JKngFCZrNfKU9sh23zLkSiQp8wJg
 /p5T3+o8yTKVEDHWcCFvmVOZj2XoVpeJcgdYtjcA8cYxZJnOw3mdTok85yL8g8qD+jojKuWwK2
 3wA=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:38:53 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:37:58 -0700
Message-Id: <e1c7ed59e2d2b69567ef2d9925fa997ecb7b4822.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview: Check if adding pages to clone bio fails and if it does retry
 with reclaim. This mirrors the behaviour of page allocation in
 crypt_alloc_buffer().
 This way we can mark bio_add_pages as __must_check. Reviewed-by: Damien Le
 Moal <damien.lemoal@opensource.wdc.com> Signed-off-by: Johannes Thumshirn
 <johannes.thumshirn@wdc.com> --- drivers/md/dm-crypt.c | 5 ++++- 1 file
 changed, 4 insertions(+), 1 del [...] 
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
X-Headers-End: 1q4KAK-0006rs-Gt
Subject: [Jfs-discussion] [PATCH v6 16/20] dm-crypt: check if adding pages
 to clone bio fails
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

Check if adding pages to clone bio fails and if it does retry with
reclaim. This mirrors the behaviour of page allocation in
crypt_alloc_buffer().

This way we can mark bio_add_pages as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/dm-crypt.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
index 8b47b913ee83..0dd231e61757 100644
--- a/drivers/md/dm-crypt.c
+++ b/drivers/md/dm-crypt.c
@@ -1693,7 +1693,10 @@ static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io, unsigned int size)
 
 		len = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;
 
-		bio_add_page(clone, page, len, 0);
+		if (!bio_add_page(clone, page, len, 0)) {
+			WARN_ONCE(1, "Adding page to bio failed\n");
+			return NULL;
+		}
 
 		remaining_size -= len;
 	}
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
