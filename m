Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D19BA717F12
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:52:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMt-0004rE-Ut;
	Wed, 31 May 2023 11:51:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMs-0004r0-JN for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6L0r6L5WYBy6S5nxfnPMsigOf27hWxRb+7ozzJcAxf8=; b=kr/8RXz3rUJna9vg/Ix3PeGNfI
 T2Gum769WI25hSzs09F+DqQ/pODH+ig5fB6tTjLe3PO9HZKLef0nDhi9DM/zOnQScGYf3JsZ6Q+4t
 WxGZAcf/b1INGYZI/qYc22b3aQc6g88tCjl41zOElVoPorTDh/CJboxItHgrTGxiLotg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6L0r6L5WYBy6S5nxfnPMsigOf27hWxRb+7ozzJcAxf8=; b=IfkyHxnKwIIgFaygGOvWk3KVT+
 lRzheYFAhEfxZA0DEm2+HfH9biDWHuDDG6RgxqDg9OVgOFxj+q/73ns2ULhQDd/yMbEXGX2NmKKtJ
 BEo8HUhSNEICOLH3EVV7vqYheNK7zAqM6vpr9uPs3AECxIgcEyMS0bcGaarPVTJQa2I0=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMs-007QQu-H7 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533914; x=1717069914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TXHm8cKgeXSbycf6VjVIJnX8HwRGv+9KYRMuHSdcMO8=;
 b=Tv5QZscz+06w79QP+eMzUcfTrYQeIBNY7nEfx5bsBrZbnoBm/Z4Fc7CJ
 Wq39Ta7fNit0IfZmjBRMEUfUtQctuS5/uv2D21fm8jvQLI2TAeKKM2Ise
 LP8JU5ARyyWnNCBHPYNTfce6BiBgqHmxAEnzgBUEFpWH3cPYoGfsU7mPj
 NY2QTNEAFjen+Ays9xsVLgfacJKHtGrBTj8U1AMJKtOSztoUikHuUtl08
 iVLYiAtbQD5N4gZe4oko1mFKl3Od0NSWVxv2ybRhtyfNBtwhYfABMP3/P
 JSknVEJdEVF+PaGOb1BHL8/WHrq3dYFZ9P2fTopKd42gdYe4fQHTwIOqj w==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="237002014"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:54 +0800
IronPort-SDR: khDcIXQVbAWoNcaL0wWPcPX1j623nuXQoAL/GN0kQyr/S2uBOuPq7NoqrHwXPHeZzq1M4hS6uL
 D8/yEUwEPdHOQGx6/0x5ibgwYuckMbcOAwFysj7TGXqDCnDFvI5OCN25HT7F2tozTXh9rPi6Kb
 R0Sgzh6qk+0njclrDHkrwaTSAKxqtI6dR+iJNvPo8CzQY+YDOJcgmQUusvj+1vlMzxjOfzB3Ru
 NDr4+0K+RIyyUniNXrrxCjK9C5qRSoJOCqWGmzjLgkCMTfOf5fBwlewJh2Y2QPBou4HYWDz5H8
 ZSE=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:06:46 -0700
IronPort-SDR: K8DGvXh3flLPynticzqNOEK+cYmmrpCanEBz66JFrWIngUtekJYSQhCrCrQqqhG+xCFaPCQa2f
 kPJSf1LI5UoWCk4clEw/qwVZ0W4JIS0jS8S+dvN+TLf0ZfYCIO+3Xte4UP0xRPIscBgFVDQ2Kd
 i0oECfF+1dh8ufMGv5dV011PahNQRw/rJMUEPkg/QmDHoXKUFcS063SfGvdOMAWACqKfwoUrw7
 ZHc2iWsZBS8kDjkwhUtPmAIWhJo/MvPANH9LDUtKSOoqChVFdvi5WpUhFTDcEYLLYC3pqPKsMY
 Ipk=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:50 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:43 -0700
Message-Id: <381360a45ac3684120cfbe1e07685e9c36256e47.1685532726.git.johannes.thumshirn@wdc.com>
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
 Content preview: Now that all callers of bio_add_folio() check the return
 value, 
 mark it as __must_check. Reviewed-by: Matthew Wilcox (Oracle)
 <willy@infradead.org>
 Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com> ---
 include/linux/bio.h
 | 3 ++- 1 file changed, 2 insertions(+), 1 deletion(-) 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q4KMs-007QQu-H7
Subject: [Jfs-discussion] [PATCH v7 20/20] block: mark bio_add_folio as
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

Now that all callers of bio_add_folio() check the return value, mark it as
__must_check.

Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 include/linux/bio.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index f907d75af205..c7a9425d19ee 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -467,7 +467,8 @@ void bio_chain(struct bio *, struct bio *);
 
 int __must_check bio_add_page(struct bio *bio, struct page *page, unsigned len,
 			      unsigned off);
-bool bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
+bool __must_check bio_add_folio(struct bio *bio, struct folio *folio,
+				size_t len, size_t off);
 extern int bio_add_pc_page(struct request_queue *, struct bio *, struct page *,
 			   unsigned int, unsigned int);
 int bio_add_zone_append_page(struct bio *bio, struct page *page,
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
