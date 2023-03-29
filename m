Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2576CF033
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:06:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZFq-0008LX-HP;
	Wed, 29 Mar 2023 17:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZFo-0008LO-Vt for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rasp905dSQTJPw1S7wJBQPjV4Dpg0Zhy7IvXBhZnf/g=; b=hBEaP6JEjFAsDMhIYZc3oC2bws
 idqb47sp9QLeycyVsEHy3Zo/1hpj4lbWFRbXrhgx/btpS7zgM8b3QenuKVoDXdwXMEZSNMSi4N5h8
 K7St+stlHJHhXt3s25Vfw50ML2n6dfWR6d4TxkZPskioYEuG6iQesNLRF47diJtD4mQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rasp905dSQTJPw1S7wJBQPjV4Dpg0Zhy7IvXBhZnf/g=; b=JwtSUtwGjp1xzKGDAA9H3sRsWi
 Z0oOZHVXqA3A/M65mPtmAslcq4cJgPS+rpr2TnKA6lCswmkXcMQu7o458w4ZI44Sa37Nl09kAwzV7
 B6FELUl+JuUGf7CHMaKZXbqb48jEB/vlckkwomxNxnAWeCfva+9exfnSEjV68JwzjVVk=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZFo-008aXc-Ka for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109592; x=1711645592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w7ULCTtwVmRs76XZxrCBBgDjRvqinAOmkneoFyK+NvA=;
 b=duqTnaPtzkLL98plrZ66TzJ4SALNmFKX3I14A0s59SS47hUb7HxzLp26
 lwMNlJ8qLt1X9vM9LLoHB/BMT6G1Z284thEo8LwdAHVc9c/oqgZv7kVUw
 Jy9PCojGWKBceAZjJFwh0LIuG5hyATLnkO9GcaZpaQB6bn2Hn/TTf41xn
 KceTLeNjVDVCd/hHWw0DtZvDopdzNcg7/QerWJU7Kd2EMRVUpOq6ij4MR
 P39rrzME+W+4R6mr8A4Vio0vDGuytu9pxZLNf98V9itD305x4H5xR0e8T
 yvrqAzUFSlsnFLCWIgyqB2KXafSwsGTRGodkb56A3a3NJCJ1knrrme/VP Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807024"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:32 +0800
IronPort-SDR: aJbh1ENqXcibAjj8FHv1M9njejGyFTzp3dWWfUdhHIyH246jcFzvzOoKDvA7Da0B6Jp3CWFmD5
 wMzPWpOZF7uHNAyO7cROuN6uNC+5ch8AUX9E5i0kKORxe4WEFcb5FS3A69Fc8CnPjWSGkufWJX
 NyKLXt9vc4k0ISJ+VQuxOpLsqFv5GrFqhMZZ0cFzWVrTG2wHSv8sxhDAMUTDPsc2iwztXqC47L
 YgUJ8oR+NncyXPMa+K8a/CfoC+T2upqiGQgJcXptcmbRRqskN2jL1CU5C9MuRJh39t0ejBhwsI
 f4Q=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:22:41 -0700
IronPort-SDR: HxoeR2ZiwSifjLJAm4GM6J9SbigI8oViKXc7BCkcshpggE9TOaZcyDqhVSgcBLgj4CeCbAetZI
 +UtoI8hvcC0aeY4gXAT+WWBWHXSNAnTXctf9VPJWFomeAXHReYsBRLLfqTSsStRS6jxBLp1674
 vgvEKqUZp9f6u7w4Gk4HVPSF59cBQy2yyUeoHZgaezaaXfhXfpLpfF7TyUmHcjLZzHv3zOPW/B
 mD5ohyDY4XjUiEY10JRmTnJm3UatvjKaPFVIROi629lwjbNdQVKZlCgN+4RJr2LXT9esfOlGAy
 MBk=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:31 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:50 -0700
Message-Id: <56321f8ef1e70e9e541074593575b74d3e25ade2.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680108414.git.johannes.thumshirn@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The buffer_head submission code uses bio_add_page() to add
 a page to a newly created bio. bio_add_page() can fail, but the return value
 is never checked. Use __bio_add_page() as adding a single page to a newly
 created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phZFo-008aXc-Ka
Subject: [Jfs-discussion] [PATCH 04/19] fs: buffer: use __bio_add_page to
 add single page to bio
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
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The buffer_head submission code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/buffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index 9e1e2add541e..855dc41fe162 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2733,7 +2733,7 @@ static void submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
 
 	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
 
-	bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
+	__bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
 	BUG_ON(bio->bi_iter.bi_size != bh->b_size);
 
 	bio->bi_end_io = end_bio_bh_io_sync;
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
