Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B216D6D025A
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq10-0004LE-JW;
	Thu, 30 Mar 2023 11:00:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0x-0004L7-6S for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V0jPG80dy4YOQg256dCn8ko7STdlb+pxF3jtDwme0LU=; b=JfDtUt2a0sW3rucJcM1CgotX2/
 P0KjOBXY73GZuOqRPgzL9XWJESapXB5b8O6pNXj1pJbIy9En6+DsalMdk0DuC3XKJ/8wdpMmzDFpj
 +bkqyJBY5MSD5Hf0DtSZLLnw44ar3r8Oxi1dWFzoDQoEWCYmqUmMKY1LgM/WbBIKlbKk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V0jPG80dy4YOQg256dCn8ko7STdlb+pxF3jtDwme0LU=; b=fGX+vAJQBxaXD1+lNBMbK6HNS6
 9WEXeQXk9vcCF1jEwgiWqTVgfLs/dB1ru9y/CLXpwedg6wryoLKZ2p0Q74oO5rg2bUOrhPSkMdzGF
 FLSOEA5VMT1z36yRMnnD0XWX/dLTYsehtJ218MpkgficqmDTU/kMCR0rEq26Cov0o9C8=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0v-0007Uu-OD for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680174017; x=1711710017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oL2U/g4EaJMTT3671h8rphk5MC+hx36IPn/aySLD9mI=;
 b=Uihc6qQFqE3y46oLMpYz2qMvT6OVT+1f5T1sgkZVscQmXkU/nmUzgNEX
 q/OD5J8vJM24W4+eutJ68pV32+SBG5cWvJgaUemC7A3sGgKDGU5eu7UtU
 5PZjOnwmlsNs+g/n//s/rfNrc5oD/edrUHYRDngyMLhakv7/cdCtQQVO3
 2lKf8Mrzr8D//n2PIxS4Ye9YorxwvIaKan/tpXHAxs2bNuEVGCxYjbFpe
 OstbtUJcRdCML0aKEdGBD9SctvZm60WtaAVpPxWIUFVfadAXQg9zErbdk
 eybJVvS/Y1MKtIyHvZgAaM2lB/IEGXTTMo+h1pkZRWEdQPBwfCmm4qoRM w==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948185"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:53 +0800
IronPort-SDR: RRgbAGVgEumjItA4U4wEVG8GdxcC19hYnYMHz23F7wxR+Fji84bmpWYfBklDckArvsT/um55A3
 z686qr3ThaEcUMgINS58lMgeV4Vb3A2467doxUARzPIJDICOfUNYoQeSjXKiRGUU+XV9EnU4bw
 dDP/vZYf09ydY8+pN/kt/MCJBCBoGSBlXKWTD7OIv9fM3600jLBP0+oIlVDy4+VKXhIboifrGU
 WoFq+x5ajwOrHJWGG5yfKkYwlkcyVIYLgCkUrtYclOyeEp/MbkcRz8biLXxrpd0eCg5MQJy5zn
 4TQ=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:01:01 -0700
IronPort-SDR: CoMzsHiAS2JR6nHz7NkC2bnUoQ56O2VVvllRrO/O/vDND9erWG2x+0sd/n32CtrHJXq89I7Vpx
 3yXADu4Qzn1egGoPoaR5LOqXgneY+WCGslMK0kk4RtBPu9UBwrphetuapusHacgSbZc/GjpP04
 rOM2hwuQmwq0JHF9BBbZ161hAs47W3Bw7eBGyL1xrobBRYyZFBMncwXMAQ3J+2GPapCugFKR9F
 g47K64zulVURfvgH0krXU+jb73cw0ekyXDiawSnLCfzfBr1nZC/vguolrUE0Kyqh7/cxMzE5Dn
 xv4=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:51 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:58 -0700
Message-Id: <4c9eaedd34f80d3477a5049f49610a8da8859744.1680172791.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680172791.git.johannes.thumshirn@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The sync request code uses bio_add_page() to add a page to
 a newly created bio. bio_add_page() can fail, but the return value is never
 checked. Use __bio_add_page() as adding a single page to a newly created
 bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phq0v-0007Uu-OD
Subject: [Jfs-discussion] [PATCH v2 16/19] md: raid1: use __bio_add_page for
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
 Bob Peterson <rpeterso@redhat.com>, Hannes Reinecke <hare@suse.de>,
 David Sterba <dsterba@suse.com>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The sync request code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/md/raid1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/md/raid1.c b/drivers/md/raid1.c
index bd7c339a84a1..c226d293992f 100644
--- a/drivers/md/raid1.c
+++ b/drivers/md/raid1.c
@@ -2915,7 +2915,7 @@ static sector_t raid1_sync_request(struct mddev *mddev, sector_t sector_nr,
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
