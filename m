Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F13086D0258
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0t-00060X-1u;
	Thu, 30 Mar 2023 11:00:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0s-00060R-KA for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9N1nbrpzeskxzY8j0FOtrl+cQrtbVwT0+sKnvHUTqGU=; b=AISiry8+g7GtkuKgopsVG0VChN
 HYzwERAA0bTqolL/0ZsOcIm8GFVzFGGIv4ux0H5cdiAg1Qr948qbRt8o3W8f7lV3sZb38U49m1bUR
 Zyd1xabscEazwua3/b7IDmEcutimowYjntmNn3kjvQ+CrRSDmEHmE/OD+c9GAZTSgK5M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9N1nbrpzeskxzY8j0FOtrl+cQrtbVwT0+sKnvHUTqGU=; b=OWYN8joxY4K7liWolUOsX7QHxp
 IlNHfprBxzOxcGcJcv7CKWxGqQTbj+95SjELNKBW/D0K9YMkcbuOGT6/56TjkK1oUJFLePYmNFyyP
 6GJLntTthq12VZatc8USa2Qm+fEdKXogoQXdcYcmOC/GTM0B79A9kHnmoO+Nagt+uHGA=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0s-0007Uu-Qx for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680174014; x=1711710014;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EUpgRxBtOLFJ91CyJDOvQQnrN1sWY+otarb8WY7sZkU=;
 b=p797xzW4w6BO6yEtPfg4P1ZVnUopQ2PYR9xApeD4OA21AYs6xxReAEbp
 2SOQNK9pSeuzCmfiv8n9FoYKs5wa8a9Z56sAxwHpg5Urd4Bwzvw5T7gy/
 Apdpj8vMJsHxh52E0V7MJum+kE85URzqUdFZ4gBPRRraqFDvtfH3pDYUL
 QxYM6uRKD0YVhtL7PW+1aBS4cwJ7L9ejuDCxvvlc5YJfxu3nPcs0bVXNp
 1JAbZQNDRWNFSQqEUemQ68/zKtpBMeoO5nOMNnf6f40guBEOau6PxkNXr
 7YrdjmbONZm/q2YheuGCAe832/hDNY8RW3cIQm6DQqbxv88lhAP53UpyE w==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948149"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:41 +0800
IronPort-SDR: 5JBLpb92hSS5bNpxleU3ELIiqyH0sYryJELh7s4phiU3JXD1I8OO2z9Imj6QhIhI0Y3N8f0Xd6
 bk3QSjC7tdnPOGyf/NZT4RQmBG28Fez9OCZiIVfh90UxzBnOx+id70/7fDKyG+7uz3HTvI0KJ1
 IHn83DPSheIoeRXVJKHnO19bdKiTbju99ztMBcXRK8N/TItRPQJW5czw+JLR6vGPk81L4CcH1A
 9RJ17kzD52jAbDuuW6tMKo9C/GzgyzFOxr8j71qvtgvEh7PwMwiwwtQjY8+kOic2R24AyXIFTV
 Fnw=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:49 -0700
IronPort-SDR: VYA9BgUUDr4sRMMfeFHmoTvJAnU8njSRM2w2NjoxJH3Cs70Kv8EJ/NbwobjN2EMuJHAYNPSu+2
 Nv24R+meZtBuzWBLMI2rGIlIum+FZJ3DzLLEATptDFEbE2+Hak6NpQWmS1jl66KjmWQRpANrQO
 SJDRkUryKsiMGPqt9zUBSBJ1Bi1cbUurM7jtK569mscScXqA2oFbNgVwXqIwxlQ2MR+O4fo2VQ
 EV+jUSVXErWdsRYtr4iObYolOTAsYF/RWA3lThvvL1VeJ33ahhyJvlra7p2jf2qsTPNoO6Xbj7
 kMw=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:39 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:54 -0700
Message-Id: <1b1bdd842de5f699d76191565fb2b6659aa38922.1680172791.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680172791.git.johannes.thumshirn@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1phq0s-0007Uu-Qx
Subject: [Jfs-discussion] [PATCH v2 12/19] zonefs: use __bio_add_page for
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

The zonefs superblock reading code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
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
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
