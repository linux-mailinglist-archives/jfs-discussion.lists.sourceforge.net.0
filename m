Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BB37167C0
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41c8-00089t-5o;
	Tue, 30 May 2023 15:50:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41c6-00089h-RP for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vIj6KpJJXGI4GjCHBbNFJm1+SIz5iVkLzC/I2Fd0ozs=; b=PjBYtP6NDfWZTTBfU5pYiHCULw
 eBnXT+Xl+ExsbB1ihC4rzP/JLWDtMI0l04O670D4WlM/65z9uOWClV4oMGTdVQ0FoSs4zatFp+Abi
 /CR6qnKEJr3nnqs1LfCYBLB0Z6Ok14K4ut9OwymQkicZ+kc7O4zcB3OQ0j9Y+5dGQDi8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vIj6KpJJXGI4GjCHBbNFJm1+SIz5iVkLzC/I2Fd0ozs=; b=GHrNhEjuJ/V4jemuPOfK7wBy0T
 +1l50q2FO+wyAgj+MYVnBXEn+wb1d7mlHlqZqf6bU9kya/jhfz9OGZFToJ2CNIK85ACQpDD/pNNGZ
 dTIsr1pGIETMmEVQnhkofbac4nhmmumBZMZfFJVRymryLNkLvGAg+xZa3R7DAX4LGUJc=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41c7-006fvb-2S for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461822; x=1716997822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C+NYxtWZcIKLiQW8aZvWShDgl/gtDFIUIUOTPRiObYM=;
 b=Np+6xi1wvpJj2FUrm3fzoNpfBIH+adCLwUr/LwxpvLdYFeeqJ36WNtq2
 3ErDohFJ3NSwTdCgDlnFZUBPt2JQog17spxCVUBBHyeUF9cxDOO8BYqqp
 i1awvZKQbUJNw6PP9luuNRHazq/J4SL8XJIDau+CfMC4wjK13/mVR/HA/
 633FVO13KGlJpXOM9zqGz+t4WXAGdCZG0UbQTmveIjpDZ5rNFEYlOFgnd
 rROKAVHY00nWdUqoMN4WyDQleZhzfPJ4Q2Vb9tKnION050z4aM/jlcP7P
 QziEVqxBgrR+UwpbaBa/vKwA/Y0gdqeIgFhXkgeOxzRXVH7yk5i1u691M A==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="236922712"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:50:18 +0800
IronPort-SDR: jjP9nJ7b3afOim6nKz27s4QJfAgjw6XAk1oPoQcrSRW2My3CFyCr8mkf+HyW6fT8WxEBgRhtoM
 LnJAXB+THT2aGBBxPoJo9qnUnTnM/APGDM/AMA425VtuEUhjDMBSR30jn2pE1pKGSAQPhKw/hH
 KKM3Xuaf6bkMJS7IF3uVum/0n2OG316ZcAXk4gAjEBBZ3CG11luwZjU0s+ZjFbQJhUblE66uaW
 t0mM1Da47Ck+NJG/P+EdENTVuxNKW0SwOjXvTpem/izWx6FiKtutLxAxIlF5O6AWa1RjpNBuar
 kq8=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:05:11 -0700
IronPort-SDR: nWMXgYPXj9My0dJwx11mPIKRe2pSzWz6O3nUVEtHmwd7YXnITNPMVp+01mOZjGN5zhcXbH+IdK
 m4NVW5MyTKxZspeJpQdq/5lcWtTCTrtHWknfnsfGCvolyx2j0ZqjEnJPHzs6IqRD93mSDPBKaJ
 W3wnvvvnGzwMhFNe3tC3vpLamIMSeTnweXnIJe6DaIylSDsi76tjZmEcCIggRMz2kCpsmYogzT
 umSo039ixODhCfl7GjDCN2dVBtWEhKpEVTPbeeTLYiBLVoeQNEC7m5EzM08Q+jnw67MjY23eAu
 xTo=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:50:15 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:19 -0700
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
X-Headers-End: 1q41c7-006fvb-2S
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
 Hannes Reinecke <hare@suse.de>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, gouhao@uniontech.com,
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
