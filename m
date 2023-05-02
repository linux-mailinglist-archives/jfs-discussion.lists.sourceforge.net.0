Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 508AE6F414D
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:22:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn8z-0003z7-JU;
	Tue, 02 May 2023 10:22:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn8y-0003ys-1q for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A3Uxb7ToyZzCXpo6dytQ6jfGB5eFnK50HXW6JYeP39Q=; b=QBBAysmdhyHIeV/ACwL+EpPNnv
 GyEUeBbrjEoQ+7X0cJoGKF7Rji5FHiJc04mN9w+Vk43aweF/nJg1/1kmWSEWqP8nf4E9oBZWhWiob
 UVAod0qGKLu9ljAZQ4ec/BjyYJjuTSyUHz/6UwH6hI0YTTOa9tGQlls0RCAOebmECmrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A3Uxb7ToyZzCXpo6dytQ6jfGB5eFnK50HXW6JYeP39Q=; b=mHxpMmrL7oCh2ra8xN0/z2ohUW
 day6seWEIiDPIhNVj5efbKCjZk5NnIP5O+MnQ8SzeL0leJpxkYWy37efogbTpUmr9IYAoTheD5T3V
 9U+mG+SLALuG9H99AFElaPWUZfaMhtMmj2NDeW/7TUD9LR1LQVgykR9HIRbaGM+sI+ac=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn8u-00BQek-W2 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022917; x=1714558917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V5SKzmXLiqYlN1FT56vogdtjTkaUplMsRNtsQa39yz4=;
 b=NB3nFnsFotkZ5Ez8v7ew1KsHhU2qWZiDeRgYpzghSLns0HF17zSFu+5E
 W8DpIweMRqWr8YEcaeNnlpN0AGq9wF0efKqL9XDVbTM4C3z2V7FZY/XK/
 G2c7LvZvMHCqDw0vWzmlfXKabzIBOPcCcsoYpIMZm0g0mddu5Jy8EcUXN
 S8f57+WwhgStj0nC0hWSfwuGG7aEuRa0Q/P+5OsWHRzW7SDS5xBaAtgd2
 p8aeyxXg7CbG9tdpWJcV0EdnaelCnRC1fXBFjAtwf9FVGu/khsS7w8Hcx
 69XKLqCBoXZqxZGZKoNcz+dWAWZgUdvf2IldnTbE4Miv8/uKbu4RTKQtS g==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="229597972"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:52 +0800
IronPort-SDR: R8zXT69VecYbttBtJHjqRm+Gxszx1WzgMbV0Yhle4R0/FEcwXb4DKjk45ohO+COc8obmRXa9zy
 5ZeLqJ3REw46nZie4McRMXfNnUg3RimNzN5xIOGKZhJJYORKhEF+zgHD7dhH7W5qFsAH5xLt+V
 FwLwkEk01js2OZk9Y0Xhg/z/NmPtIiuTuglIFwIc+Quoh4ENO8ZrvXmUxd0FCJ87d6t8Fz9k78
 SxbFGalQUGXfnOi1JylcfmB3mJXbrfNDxpXNuYTYkh7RiMvWmL5furAQ5aN9F5AfWhKCyOyi3I
 qgY=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:37:17 -0700
IronPort-SDR: h/+Uzz4d3DSZxkslqyyemyuLPtMI7jhBm8cQQC8WAsiGwmug14lleOQVx+xkHcNGsmIX7lpU55
 87VMP+4tfW26aWu+a5oN3DVTq3PFVs2iF9WR+8oTmTwDIaFXmRGIznTUpQ4aZU0a4rymtj3WZj
 kk/AGz0dRlK1ZycoHqrgPH8iVANoXrBCJuUG9lP22ljDr/8WOx6RnsE9CFJXzzQSnh3bYujqEQ
 6hczuVykrgqMnIl3wnx+DJrdhTydW+7Qj1cYcXsZMgrNIFeXRvMoDlU7CYgbRhYHjf2G0hJiZj
 X44=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:46 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:30 +0200
Message-Id: <20230502101934.24901-17-johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
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
 <johannes.thumshirn@wdc.com> --- drivers/md/dm-crypt.c | 9 ++++++++- 1 file
 changed, 8 insertions(+), 1 [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
X-Headers-End: 1ptn8u-00BQek-W2
Subject: [Jfs-discussion] [PATCH v5 16/20] dm-crypt: check if adding pages
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

Check if adding pages to clone bio fails and if it does retry with
reclaim. This mirrors the behaviour of page allocation in
crypt_alloc_buffer().

This way we can mark bio_add_pages as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/dm-crypt.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
index 8b47b913ee83..b234dc089cee 100644
--- a/drivers/md/dm-crypt.c
+++ b/drivers/md/dm-crypt.c
@@ -1693,7 +1693,14 @@ static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io, unsigned int size)
 
 		len = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;
 
-		bio_add_page(clone, page, len, 0);
+		if (!bio_add_page(clone, page, len, 0)) {
+			mempool_free(page, &cc->page_pool);
+			crypt_free_buffer_pages(cc, clone);
+			bio_put(clone);
+			gfp_mask |= __GFP_DIRECT_RECLAIM;
+			goto retry;
+
+		}
 
 		remaining_size -= len;
 	}
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
