Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CFB7167BD
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41c7-0000NK-08;
	Tue, 30 May 2023 15:50:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41bt-0000Mo-Rs for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kfbXVXnOIfMtfpOW0KwQK8XZeszf1+haBQT/gEejogo=; b=AnnrTsrJ0xiJaCs6oatsz0qONf
 qI8B2uB8wlWCEZNTIoHzkM8GghiRSN0+AQyPAy1yUqRPfHOs6fK3Xfb5HHGq6ApN/QuQrDPUtLv6X
 lychU2N6KTInRlLGMs1nWv/3EL9wujrEWs5ULwRvOhQ0JQKzNQX6kpZqmuWN73iFs+MI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kfbXVXnOIfMtfpOW0KwQK8XZeszf1+haBQT/gEejogo=; b=GuWw2LFxmtUuW/0yTaTYJs+WVz
 L1AnIx3U6Yim4x11cW4WgHWCIev/tPoUMHT97lQnoDd3mrlM7LwGpAu8+QkSS6x5ea2UD4fiWStSM
 /SH1OAV0Y4VoWgy+WzaYMe8Bf9+JRzRIgC5L/laF68KBMftG1AeDY6z8OaSRPjyBvRqg=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41bt-006ftx-BR for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461809; x=1716997809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VBiHAYrZ5iVLErIRk58IVnEcVkubX6MqVTAomfOuNwY=;
 b=at9iYzBijzJuDuHPhFDfKUc1IJRHk1ExEyAm21JLebBchAuAxzwLwAu1
 eA36i9QEuPZAge71+dbEaWJmq3o4dR6qweNXSnf1YwEWn2xs4fgFlEUc5
 BvC4dq9o7beBZoZ5jPwOTsK3+Er8OP79sJD3SqNwnhn1vswuxtaQwAOWo
 gzzafoFIYnUAT/ErEbjOtH42+RJ2G3Ij6As381q7iPVxfZ2b97hHGilq0
 hEckoL/BXdiM0sCGYoBiyEZ4gj6ayYRHQBW4Lw2CnjJKQy44DaXpJRwrO
 9wB4WDBbtqq6/Yt45vb3M2OC05Wx/9YPZ+ypT1mBbMcb5gpcaFy8fdcuE A==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="236922679"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:50:09 +0800
IronPort-SDR: 39dfbT6dsFMAG+xYg33dkEM60HU0quXjpgdCXGr/iHZBAlJ/6jaCjqJjJRIlogxm/8D3a0uEPh
 1jPJQAYGXDAnlPhmihgwqFfgt+nkh6tfU42q+LUJiasPG1SCE4YX18jFcJqyJWn1xjfM3pcOSo
 ZBmiJhzdNNDAbR/QM9yOXLodYJ7+8vfdnlAu1kr4tg7C4Yyn9fFXdjWxUo5iDSxsjfCayDExkx
 4VEFwKXO3Tia0OMM/+DSYDp8MsQrKRDvT4YRWMjq6rKKjmAKubnxPMhF65mWZ1wLW2tViMq3SS
 GtM=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:05:02 -0700
IronPort-SDR: P8Y6Jd83vQweumNav4silCK78F18+npfP53U6otRJi27bXYVZjQeG19QgfdDPNWr1dSjMk/mR0
 TdQwe1yI9lQT8scICxHJ6QWWNvtw6CpvMEfGKX0/h2/HRnwwlFzCTEOhpHvRwXqArmvKCIqw33
 ppmdUhNH/kHH580hO75tFT3x/8Uyc3S+cBMv20/BBkhaZLKkAVgh0pxoEQ8eaQU2CR7VRKPGtI
 xQvmwMzb+rhKJ4KrnyzbkU6q4fYwpSUwIQMfpbXadsUNzjaagJ7+TEz8B0KEm1VNYW+RFH1x1t
 ltA=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:50:06 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:16 -0700
Message-Id: <d7cfd04d410accee4148d8c0e51230bcb8b4bb8f.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685461490.git.johannes.thumshirn@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  alloc_behind_master_bio() can possibly add multiple pages
 to a bio, but it is not checking for the return value of bio_add_page() if
 adding really succeeded. Check if the page adding succeeded and if not bail
 out. Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q41bt-006ftx-BR
Subject: [Jfs-discussion] [PATCH v6 13/20] md: check for failure when adding
 pages in alloc_behind_master_bio
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
 Hannes Reinecke <hare@suse.de>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, gouhao@uniontech.com,
 linux-mm@kvack.org, Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

alloc_behind_master_bio() can possibly add multiple pages to a bio, but it
is not checking for the return value of bio_add_page() if adding really
succeeded.

Check if the page adding succeeded and if not bail out.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid1.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/md/raid1.c b/drivers/md/raid1.c
index 68a9e2d9985b..8283ef177f6c 100644
--- a/drivers/md/raid1.c
+++ b/drivers/md/raid1.c
@@ -1147,7 +1147,10 @@ static void alloc_behind_master_bio(struct r1bio *r1_bio,
 		if (unlikely(!page))
 			goto free_pages;
 
-		bio_add_page(behind_bio, page, len, 0);
+		if (!bio_add_page(behind_bio, page, len, 0)) {
+			free_page(page);
+			goto free_pages;
+		}
 
 		size -= len;
 		i++;
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
