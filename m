Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B3F6D025B
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq12-0004ab-OE;
	Thu, 30 Mar 2023 11:00:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0z-0004Zs-C6 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fmpnWNPMV+BqMLoDCsDPI2a19KpwiU9iA+gUwkLC9vI=; b=NQoZcDjtJR+Xb3BAX7g/QoIXVL
 iogxGnqGV995r2dVsQVZI2oEfAIO+78SOxWQO0VJpIwxZ7UbWYUXhC7pHs2Km0wA761p751bUHlbK
 815sQ1nF9QUGj+ZrRHNjlLm+aNqqYsc3u45THwES3XaELpR3mDqNJklAoUVPwXbdNvlU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fmpnWNPMV+BqMLoDCsDPI2a19KpwiU9iA+gUwkLC9vI=; b=OCKoBMY3A59AXPS6lC7FnyCsZk
 Ty97ejHynXx2PeIwWtueaOurWqPeEZrtBoV75LisjtEnfmahaZ/7z/W/Dl+FvLWg9msH6CbOolb2S
 Ft5zPEwnfrW6Rk+ajW69xniKtZdFD9hYcqI3ek/LO6tI1/tS9sOzsoOoKSdTendIBFvM=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0x-0007Uu-Qv for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680174019; x=1711710019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9YnFTpWsIBbNef/OiYe0uKZ66yfnQqenOqdfFhTWuvw=;
 b=j0Obs8j6V7+9qn/OJXwbi4NxUP7idTinCzikn1isHwAd73eE1Hz/rwoa
 ltxtJ5TezTlABf4oqOlA7OorMP6+B+r2ycDZxzjzMAdI7YMdeE5bjxQ6a
 NoRYJcSXnDkgXfo2kt3vTqripK66PAEwBBv5vjo8FXmwlBcuJickX/uA5
 iphc0DU1NcGboz0Oysj6/BmHS6L4GaZr2aoByt5MA7T5Vw+sglf+f1Kjb
 ZUQVRXcQN4wHaeO98ZraGqpurCknqlO2mL1AnhfL4fRTvUQo4rGN/enkF
 +c7gvAE0fw91BAl9rL7zN82nCPWy7q490abW2c9sXGs6mTGDJ356CH6Na Q==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948211"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:45:02 +0800
IronPort-SDR: fskzZVn/aL65wZNshiOkp5Ly25AyngWUfv4fRrbSKSKh5l216qb8tS6vrMWobDB1Rkf03gHAK2
 uRv0FBPZCH+fq3iXQdwTfDs7nA53J7G+XkWNr9BCviadSq+S2O0YyW/a+xbTh6QSUkX3Q4zZcz
 XKc0wk5yce1AXFXs7veZOTZQSTcfklIGr/uB16Fz3+IhFS+GYX8c1i7clrAzJNULsf9xGJkwZ9
 xhXxKucoy3YGuJhSuVYc22knGs/Pc2+qzYRz9El2ehYatAFGl5k0NMMUgW3v8XYRtP+lp/KpeI
 3h8=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:01:10 -0700
IronPort-SDR: 9/iVByN1BTBiF+2N/dyRq0R7dQSPqShiTdspahbVYlwZj+qd277O1HWwqfoLFDxzoWSe+cmGNO
 qkqMCZzgrdZnDhpQxYdEe8150myn5LsK8KEx5pL72+ObD0hqMaaHSizvdtrMKOqlTNP+VQELhc
 NlTnbrlHYwL6lfM55WWo+X+nqbpVvrNh8MXJJfN+oROGcrGXbtZ95QXnOLEHZI8U/WSie1EYFD
 ciM8A+htMWi8T8Q2A6kN9QQtMNJHy+EVASUqPt+O4sCYrrpZ40AnMpPDuYxlZJyUb2MJgf0HsW
 yDM=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:45:00 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:44:01 -0700
Message-Id: <981a2b8809dedbd6dd756d7af1df4251944f42b0.1680172791.git.johannes.thumshirn@wdc.com>
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
 Content preview: Now that all users of bio_add_page check for the return value,
 mark bio_add_page as __must_check. Signed-off-by: Johannes Thumshirn
 <johannes.thumshirn@wdc.com>
 Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com> ---
 include/linux/bio.h
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion( [...] 
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
X-Headers-End: 1phq0x-0007Uu-Qv
Subject: [Jfs-discussion] [PATCH v2 19/19] block: mark bio_add_page as
 __must_check
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

Now that all users of bio_add_page check for the return value, mark
bio_add_page as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 include/linux/bio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index d766be7152e1..0f8a8d7a6384 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -465,7 +465,7 @@ extern void bio_uninit(struct bio *);
 void bio_reset(struct bio *bio, struct block_device *bdev, blk_opf_t opf);
 void bio_chain(struct bio *, struct bio *);
 
-int bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
+int __must_check bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
 bool bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
 extern int bio_add_pc_page(struct request_queue *, struct bio *, struct page *,
 			   unsigned int, unsigned int);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
