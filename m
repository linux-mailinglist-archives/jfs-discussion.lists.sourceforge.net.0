Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0C3717F10
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:52:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMq-0005z0-W0;
	Wed, 31 May 2023 11:51:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMo-0005yS-1Y for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7tVUjP4+PH6St5yF3wX9Wp96WFgE/j1N0ByIBSNUfaQ=; b=X4c4vNvL/UHxb8ZbHQKVeX1gdo
 94HK7az+mpUyEDjZDhWVJ7mmjAAG6U0q8CFQd6WWfiMcO+ehDneY9CbZlek4+bjC8j8oiGi91aGRQ
 JOVk5OJxCDzww4MfB+s2uP+XEE0k0Sk/VcTLsRMNQgJR9ICmaFb7RGcwHCQI2dWrQ2DU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7tVUjP4+PH6St5yF3wX9Wp96WFgE/j1N0ByIBSNUfaQ=; b=INOWG8ed30e0FNzgjb8cGEb0yT
 /Dpu5ipEJ67CO8o9qmGRv8wDgY3s0Y87LTr2sYOB1gjNao53E0F/IzSimqnL3+8DJ7aY0YDkRNc8V
 qy843xOsdaoiknd/Sprnr7yk5D4ULAXYgNRTeRaAbHz+d2N9DSUWxOZ3RHJwsi/HSo+Q=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMn-007QQu-HG for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533909; x=1717069909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wyX37qrNukpOnFd0kuw76h6e0vzZ4DyBtjizjt54zEs=;
 b=FbbF/BrPUT5BWyYul17m0A3jGK1R26gxF1JWeFOjwclOvwxb9k8ssT8Q
 hWw//w12De/fC8knpNKvFNozC+hYA5S3nNY4CNvv/8kII0hAmsqif3jXi
 3FXTeG3FV+gaz8MEraBx9PykrvJD5DRdsGY+z8wRE2FG/+OJRKfFW04as
 1j3XNtpvWD3XsdOA5ALUkK0aQZU+izpKitfHBlZnU1IijHnbphpL+sDlf
 sDEjNZeQJL9YR4VQtdbLAGxBkj6NS7KRc9JXEZy1OIhcrbFsHsgqzkm/3
 se2c3G4gSLYBJqd47WQ6hANxQ66tziAcnPmy5uMK2EWLD5MjPdoTFh4Rx g==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="237001990"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:44 +0800
IronPort-SDR: 5eGLiA4EKiIVAIffeRue3pxcsr/Di/VmiV6CMhDz782BAZ0TqfEtCA10FOo1ldVa1aFbfOKThP
 r+thMoS6gHEFfzZ1Z8z+mU/aJGuKzacMQCQlAcCyExfn2ovIWfHQcj9PwSzSlhivD4xory3Ulw
 aDTo2DqN3udy97wuB/fQu3DJ176u4X1ealEr6hxbn1KBKVenHKoNJWgC+Y509yS9SHLxhGZtRy
 /IlmeeiVBiZc7VjqS0w7aCsWTQaeLN5EkDJa/xUbhGzui3p2GqabW2HmirhJyqsmlFdd2D858t
 HTI=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:06:36 -0700
IronPort-SDR: xo459tElfFqtwBDe2sQAJqvwfBpbSzCQVTTIg+wPUWJFH5rvf87QZ0/LRdMy+YjMhlouZBBxmo
 sSFHKg9lUYcIkRHQv54nV+2OgEzxoHzxVahxn3BeeKZAyYylUuWRRTeDS6dvBOIxkJePE/rTcC
 eYbX1rHn5bbth8QftqRWLPHth0Gq61eGFZ6K61AfXG67LUgq2wZH8hWCBqD5V+7su+uSzYeeSR
 Ss5cmfzwMHsFg984FR8v7pis/w9ow+W2i6iaGIo6tiECTtkMKiiQqzdfNTk2BbJ95DDObBEoN5
 z/8=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:38 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:39 -0700
Message-Id: <f9a4dee5e81389fd70ffc442da01006538e55aca.1685532726.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685532726.git.johannes.thumshirn@wdc.com>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: crypt_alloc_buffer() already allocates enough entries in the
 clone bio's vector,
 so adding a page to the bio can't fail. Use __bio_add_page()
 to reflect this. Signed-off-by: Johannes Thumshirn
 <johannes.thumshirn@wdc.com>
 --- drivers/md/dm-crypt.c | 3 +-- 1 file changed, 1 insertion(+),
 2 deletions(-)
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4KMn-007QQu-HG
Subject: [Jfs-discussion] [PATCH v7 16/20] dm-crypt: use __bio_add_page to
 add single page to clone bio
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
Cc: linux-raid@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, gouha7@uniontech.com,
 Christoph Hellwig <hch@lst.de>, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

crypt_alloc_buffer() already allocates enough entries in the clone bio's
vector, so adding a page to the bio can't fail. Use __bio_add_page() to
reflect this.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/dm-crypt.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
index 8b47b913ee83..09e37ebf7cc8 100644
--- a/drivers/md/dm-crypt.c
+++ b/drivers/md/dm-crypt.c
@@ -1693,8 +1693,7 @@ static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io, unsigned int size)
 
 		len = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;
 
-		bio_add_page(clone, page, len, 0);
-
+		__bio_add_page(clone, page, len, 0);
 		remaining_size -= len;
 	}
 
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
