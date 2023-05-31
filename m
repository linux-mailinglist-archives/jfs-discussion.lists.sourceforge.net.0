Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7524717F0B
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:51:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMX-0006zx-Vd;
	Wed, 31 May 2023 11:51:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMW-0006zj-7X for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4wltjMlOzsPDRwIgGzzKckeo7q3CC1AtmBW5BIRqZZc=; b=WFFrNjWicUCYm58hWvRzYcdIiQ
 1PMeiWtzxCcJVeS8z0sIAuG07ORLiI/HmcCdA4WeLKPLHcMnhal/iRu0RGQFgggp2jz2e3CwRfVb8
 vmzBRsb2TJgqXgDRUVyeARDQcB44qbjOXBz9rcA7g0YI7NF4y+TQASNMGjI9i/GWlN24=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4wltjMlOzsPDRwIgGzzKckeo7q3CC1AtmBW5BIRqZZc=; b=HHs+bd6Kbm+0lE54lptuba8vdW
 /Kcvbn4hzdpm7h/95t3gXrH7mz66hsaGUeRTGW5QqIsWhBjGiDV8/8oVDU1Ixd+d+c/zTFn/ux7Tm
 cxYL+UBL0ZlkXWbrz6L0xXiqAFHexVXHmM+/qAVTtrJ5QZwzAzAqiGwZ0cHOC3fvUSGk=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMW-007QMk-Fu for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533892; x=1717069892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ea2jSAo1rrcM5ItwZsgG7lxFamxzjCiiRPLmWH2vTf4=;
 b=e+3h/c5lnfwZWZdQgchdUaawY0qdxXli2Fm1EFO8BRXJYEWjz/xA/KOq
 ZVLhoina92KoURvboGuWx6GEFzjjR2xbmBcges+24KcmV3+4iGHyay3Wv
 YD0zos1WPUTRLA3a0R7fxppG3m5EdCxNSV9YpRSDG20Soc+ac/dgcdDLD
 PEdlzFlLUYyeKrNIxL7+lIyweUa0pnbXG3G9DyXaGS2IoKcO1+qdavKyb
 LNmavho0nrF3AuuGLvVI+gbuF4hIVfn9V5xj2Xhj2uXRtWOfwDTNo6h2Q
 HVY12h6oUcsGwK5DrPPj+H0J7u3jDs9eCf4fjr0oNczIXpVe/rf4v8ND+ A==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179932"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:31 +0800
IronPort-SDR: h40ZRFit+8r2RBVSYGuQg2mXysN2kqI6q5suauR35Tzx2kiObPyddwaVErKnF6xvecg1hdKVvT
 pwuHBoVT9XJ1HcJOeo5EBXR53zk27byqLfVjNZ8o4qpcwcdsTdPRRDsMNeJRPei2vJGmGn7/9K
 3aytvEG/kEOrNoDdFR+upxLcWfnjksQCKOZsX7b4sHJXg6Ij1y4couVOXmeJ/GKgNsn9z7R2EX
 5CMzg5vskupdEaW0vgCSiqay23HM5127MRU4EKUiEsiieCuYy8olDPzFi4VXrYMyJ88a46R6JQ
 4+Q=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:06:24 -0700
IronPort-SDR: Z6zZ5moCZAo8HyghcdM8Wh0qvfaCT2LiPQW+ewVuXAv+zyl3VKWafiSq2yJXvM/A54CkcTJN+V
 kRVbq0irr40y+MWSjgjPIzREhnBw/QeLa6OkO6LV2aSFbCYOSOdgOKC/mj9w510XzxJvNJ+Ppc
 bKsq1lcjXCfe5M8sYfeB+boMuGe7XuwZ5WTGw2/M7CwC8jX4gUJEv1IB/iHxsG6xSoVSNEIkFI
 s8y0GfyXNSKO/vqm5AA9muwlpfgMinBcH8LoI7yFQZewBeLk1GwYOBtK16jZm+Elw8Aj2MWMYn
 WJY=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:29 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:36 -0700
Message-Id: <827aa12d44ebf3f50b41b47f5cedc0f80179f2c1.1685532726.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685532726.git.johannes.thumshirn@wdc.com>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
X-Headers-End: 1q4KMW-007QMk-Fu
Subject: [Jfs-discussion] [PATCH v7 13/20] md: check for failure when adding
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
 Hannes Reinecke <hare@suse.de>, gouha7@uniontech.com,
 linux-block@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-mm@kvack.org, Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

alloc_behind_master_bio() can possibly add multiple pages to a bio, but it
is not checking for the return value of bio_add_page() if adding really
succeeded.

Check if the page adding succeeded and if not bail out.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Acked-by: Song Liu <song@kernel.org>
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
