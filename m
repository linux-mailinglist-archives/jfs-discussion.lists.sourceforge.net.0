Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D246F414E
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:22:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn91-0001TM-Fb;
	Tue, 02 May 2023 10:22:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn8z-0001T7-N5 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QUuRbp5NP+IPgEW3PFFjEPb01UVY6wlfuqfl6L8i1Mw=; b=HEIZSe/0rlcwi07vFiwch2PZvv
 zI1VWjT8jjMRyfQW2T1lgw2ZuJ/QtbRgSxYaYUSQVMialb+8g6Wd4RXQ8KNCGRuHEss30CrHGLlg7
 XFEEjL8xaG3XgYOtLch6ZrUxN8YAFV8Frd3Mm3klZ1KJQcld9fNQ9srNYFE7Xc/ZevEo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QUuRbp5NP+IPgEW3PFFjEPb01UVY6wlfuqfl6L8i1Mw=; b=SVO+9HE78+pQutN66IeYiXHt5U
 Kddj/lygembv9yWTelySpXrKO2pOMyTdIEzDE0vZ2WnUmL8Cb2iAOQeHpo3r27q4RaX84Mswd5Hrl
 oHm3LVtzRHcl6TQBqxEhEGiJwd8N1cvSIrIZEVORQHiPbuOYM+wxUpNMuc4lemNPNccI=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn8y-00BQek-A8 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022920; x=1714558920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6AfPyqd2+81HTNsYYrGTux663HCZhra0xBEupwD85bc=;
 b=RqN7c9bEJVB8aCwmd9mwAtbeAVDeb3g+ghKkanlPTwwSburBeesb1xFA
 q+dSXA253fIHFbW5X3v/BMhfwJcAKLCkMTfYo6SS5tss3PMu+C+MFlBKl
 ZBcpa3y+9OeXjbhkVU/FSyodudxXKViYi5C7AMD6f4VquwVdV1jrQNzTm
 Xds5hxpVgAs3Srdko79NbMyu4vM9Na8DvFRQQ9hg7K44jm3W2kV8C7eHc
 g2KD+R/3NhjO/5mKt4p3G8RBax3jxvrUp03ZDXre8xSPBuG8UHBFCuddA
 owBiUujSEZNZFpxoMauKaRiMjexrEStdM7xTkd6pY1PdHr6a5TgVCv4al Q==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="229597979"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:54 +0800
IronPort-SDR: 9pP6Ieqxv7ea++kmnRfPq3n1W46VODLlh67+ud+2bsbP4yDyOI+Ng1GFgrekYXSVAhD3NokZVq
 0zQKfVRyprZVJikhUoXXkAPZk1E9bRmfLQzZPMY7cyR1LyI7K2Hp2RO22+8Hk0Nq+w/r8PVjih
 +HukN4+FPHzwjpcFUfUTaHQW8726xm9kPsJaf4CRBC4+65rtlI+nmCthas/OIQgpzdd2ailFmu
 Gbmc0F1gy9PjnfdMAbdD0zEuZvolT6YXE8dvlh34vBfANAd/fXRm6WCQyDCqsiO5SJJAte/z/K
 V0c=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:37:21 -0700
IronPort-SDR: xRv9qUm/jkFHj47mGNA/6praQO5Yqj7qnIh22218g9Ii/1T0IZaxn5IqFfB1tzk0UZbvAYefj0
 /ajkmqJdSFIwqCAr1990sRV9STv6FmnvwMuCFh00tUkv1kcz55Tru+sZ+t3DxI2ItwUvm8O/TT
 gAhMfAT/LF6mCdTT/kjCHonXe81T0BejQwdHvS2IGUexu6EtwJUc2lkNjjtG2t8eY8jjwTl9Fp
 NYdkUfUEbsQHza/zSMGe0al18yoLgAUHBBNoGU5+ItYpshssTx8F6JYNPfvX9YwFGkWwD9ZVsN
 NOY=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:50 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:31 +0200
Message-Id: <20230502101934.24901-18-johannes.thumshirn@wdc.com>
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
 Content preview: Now that all users of bio_add_page check for the return value,
 mark bio_add_page as __must_check. Reviewed-by: Damien Le Moal
 <damien.lemoal@opensource.wdc.com>
 Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com> ---
 include/linux/bio.h
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion( [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
X-Headers-End: 1ptn8y-00BQek-A8
Subject: [Jfs-discussion] [PATCH v5 17/20] block: mark bio_add_page as
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

Now that all users of bio_add_page check for the return value, mark
bio_add_page as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 include/linux/bio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index b3e7529ff55e..5d5b081ee062 100644
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
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
