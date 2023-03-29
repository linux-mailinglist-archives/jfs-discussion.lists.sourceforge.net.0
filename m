Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 360F66CF04C
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZGO-0008P3-If;
	Wed, 29 Mar 2023 17:07:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZGN-0008Ot-Gd for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wOSVNAp03D6yJbEXU5lvzsL+Loo8YVcL8MPqkfE/PTM=; b=Pm0bI8SRXLAq8y6MujfwDuEFR7
 D/oWFVuzADVGAgpafYbTsV+0I6zAP5S7OYgjjfNCJpTewLf7KVmgAilyOdy01gdDY1/IqCNr596jM
 Bb06ri6vnr3Ra665UbS8n88Wwk44lS4qR1I6morncAG8I+7o/WYgaXs0B+4TbscX1XCs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wOSVNAp03D6yJbEXU5lvzsL+Loo8YVcL8MPqkfE/PTM=; b=L0VytVOJPA33oNCb04k6NBtoGW
 ih2Y9Exg6w/hiJCY50Wt6bvUClubLNrdLSVHpWjvz3PMUdVPgLmCRvds0ZKDgo7/HVlVdHU6lhnt3
 QI+/osVWAnaRgylQpSX9bHBkCpKO0EujOzT3F3GW4Osf8ywzpUQFphXxOTcCvQYV/usY=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZGM-008aXc-Su for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109626; x=1711645626;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tkkYPg8owa+F6WBdgLFEdkckQq2ouOP6tkr56Y/Y4Vc=;
 b=X8P1H76vCT3RLVVuBZALl4dsv/MvG8tZY1sqChde8FsqqhxJ66mWiGSL
 JdQ0lPUvFUCjzosX5xL1s1i0sYORLk2WnVTxuvE13p0xjh6MUM0GXlruF
 FRftW7X/wZodh9OBVCao898d3Gw9QKkJh4h8SQT28e59WdIHLCyd2shCD
 A6cu8eDbLuQGPDrVz08VFrC01WUaDEvryJkbNVLsq5uH1TJpuem4XCAKI
 pc6mWpw/8jbKxwkxIa15u/br5L30tKfEjIeuwf8U4UQ4vT6nrICfXOxGI
 D2dE1eFaf+fu7Io+oLcyNyiQaDFi7548P6HMDNv2Qs8ceVQsVowgpE/t3 w==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807104"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:07:06 +0800
IronPort-SDR: 1NzUt45YOQ0c/pqsu1WOn2YbynlK1LObpe6F5NR3e5ZuOuPZqr0A6mTQnM7J1A/e0POog5pj9B
 G/igqdIuG/x+z9Jb9u1CWU1prvao5RBhfyECgPgupe66hauEtliV9RNnhpe16PJKWkgDK1FB61
 TZ3jfyV89RXqA1IbMrGJpwrnKFkffiSThxRAAGUKse33wf+ElfymicCYRVt9YM6eL499ThYGvr
 IN9r9Ng9YI97TLmWJYkJf2BLjjfTP0Wk5+mv3fi7y9cYjBii0WmoK5kFYyxCqxsYnOmadVlqM9
 hp8=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:23:16 -0700
IronPort-SDR: BtjkC8ComN1O7uUI2Q3Yo6aG1eA7nqScdNM5LexHUYipB8t3szY5zi2i62F3kkpHkyVnHuIOGM
 Ek1ZitEwQvILodyDt/DD/P+4JSQ4FfZCzk5nYQwqhwhLdGUxHoidj3oHzHVwykM3dzMqWELiYj
 t3kpcItSpp4K3NBCUe8+FOUVxWGvOPb+JBxKANt7O1k/TIuS3Ep1qDEGkSLpmmBcrzqjxJn4El
 2r0OJA5Y8NchSO4KSKjNHUAPoqdlwW5gG7Yff3aztbuLDzUEUgexB49y05wzoFymc9aBcG688l
 mnM=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:07:05 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:06:02 -0700
Message-Id: <8758569c543389604d8a6a9460de086246fabe89.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680108414.git.johannes.thumshirn@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1phZGM-008aXc-Su
Subject: [Jfs-discussion] [PATCH 16/19] md: raid1: use __bio_add_page for
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

The sync request code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
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
