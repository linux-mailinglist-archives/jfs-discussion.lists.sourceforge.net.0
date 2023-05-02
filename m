Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0524F6F412F
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:21:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn8R-0003ps-O1;
	Tue, 02 May 2023 10:21:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn8O-0003pN-Rp for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3h0oefEWpX3Zb4Sip5N1P853j2l/GeNnp4CXfPNK+d8=; b=WAzw8BDg2L15Z/PTZfl0jczGKX
 dtiqHQGqZv6nT9DSEIv1gTwgUoA4K0qS3vsYrXYvnpPflR/LOxDd3qsbbjR+NrbfaUKiVH4IncQTC
 Xsgw1aw9HUXdUtwKo+E/fjmFu78SB1stf3VORx8vtrMnSmrhfn5qTvY5uGwumpotPyrY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3h0oefEWpX3Zb4Sip5N1P853j2l/GeNnp4CXfPNK+d8=; b=USjITbeWDYH10cKZoVbIvsN1o1
 I3guj4P5WFxBx5ozDd2maP5o5Aw9WH+qA5z5HB0U30dQPVYMbGIMcB30JDtmVkDQDSnK1ugWLomPR
 kSmDwp1YdFmsZl98zapfbi5VctylqnnH/p/fSiLu/v4oUCrpVBIyC/muAG1sgNZ7nNRQ=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn8N-0004ZU-7A for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:21:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022883; x=1714558883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RNSKAHMvkQdyo+4c/AL7LVpo7PNOthlJkp/YVH+vRC0=;
 b=V+jr76b0NEJfcpyUp11RZrAJddDFewFA2YyWELTC1Xz9Fuyzrnxi8hnM
 4Qp7OwCIqSgGj4l+xADqW3MBFSblZDOWDaNiLgi9NpU45xqpb1iJsKpnm
 7X9nX2IKlKG7E0l+GE5A/UcYEzRayCnUNB3AaGV1z13dw9CH8rfgYh0Lj
 7+7ktrieICYAVhTx5WgzZ7+d+Oddu50+5Szx58v/j+RQ7H7Xe/cZ/GHFw
 iKs6eYTMZzdXKcoEThyxRyE+UlhjSyBDnjUAJ9Q+3eP988z+mJK9XuupE
 dIbUWSBg93Penz2dD+IKOX7On3SkknMGZuKTI3DyIkyWlCg3759aO2sJR g==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="227916269"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:21 +0800
IronPort-SDR: zukBVTJjenjiGr5g3ii+FUVW/m90/IYF2otBEItAXH7hLK9PAxD8N24nTn8qhvDklwpBWcaXpy
 KEKFbp3uaErl2/EKJG9/i9286ybBliLMck5G/f2h9rcEBmDlNJsHm9LxnIJzuT/LS5CrbYS/zt
 7+1eW+YPP5PVCJuGLqeqQ1j8yqahRpzGyLaw2LTC7L61nhRgerVhWsfViUEXatrG7yW1Iqt9NR
 /tjtluYfNRBtSGL8FzscC47H10V3qxrgYiGq7jz19TUqR2bryiwlmZ2fZWgisPbrebZNYCBCNt
 nB0=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:49 -0700
IronPort-SDR: OXftfXuzS/ylyqnOnxToR0e4rnrEE+M2SfxYzfUhqTVRY+geH2QOyPfDvF1cGkLL9mbJeyp2hq
 mdIqLtoGwBXeS5BfK4Z8vSFMEtEpYjMxerMUsh3kSYcWBq9PuNhF4VGLXxRmBwCd6wr8/QNqqs
 4tRqp2Zxk4Qwc4ad1T4W2sP+crvnVDa5K20G/IUHvqVpxEL7P4R/ByV2un4SIHzKx29Qilb89F
 qgu3l1IZBOG+QkdA+5gbyGPQWJMgjJxs0Ml9+xbzyuALTexLar2VhaNNoCD6dUf87J0wANr7pu
 JyY=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:17 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:24 +0200
Message-Id: <20230502101934.24901-11-johannes.thumshirn@wdc.com>
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
 Content preview:  The zonefs superblock reading code uses bio_add_page() to
 add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ptn8N-0004ZU-7A
Subject: [Jfs-discussion] [PATCH v5 10/20] zonefs: use __bio_add_page for
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

The zonefs superblock reading code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/zonefs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/zonefs/super.c b/fs/zonefs/super.c
index 23b8b299c64e..9350221abfc5 100644
--- a/fs/zonefs/super.c
+++ b/fs/zonefs/super.c
@@ -1128,7 +1128,7 @@ static int zonefs_read_super(struct super_block *sb)
 
 	bio_init(&bio, sb->s_bdev, &bio_vec, 1, REQ_OP_READ);
 	bio.bi_iter.bi_sector = 0;
-	bio_add_page(&bio, page, PAGE_SIZE, 0);
+	__bio_add_page(&bio, page, PAGE_SIZE, 0);
 
 	ret = submit_bio_wait(&bio);
 	if (ret)
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
