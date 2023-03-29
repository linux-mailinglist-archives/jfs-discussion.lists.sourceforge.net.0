Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A34B86CF042
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZG5-0008NL-TM;
	Wed, 29 Mar 2023 17:06:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZG4-0008NC-Ad for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x02oUNjO7QJjWY1PXTXGuNFM/HVTI0Li9/Hh3mHsQyc=; b=b2Ppt8Sys2/D0/W2nYqXTskqcV
 /+jJa2LGiCFFdAMT61xe3N22mEDNKOIBg+M2CGN8B5QotENxJ4roIQm6IY89Po1cQ1a5AHb5h1M0q
 OsdyxAKBwFdF/xJXP6tAVF1ZPPwYEdmaeeSVq0Y4Osa5BrT3rbeIzTKCWmmhPsCtO70g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x02oUNjO7QJjWY1PXTXGuNFM/HVTI0Li9/Hh3mHsQyc=; b=mzdtSjzwz+VRhtdSRr1j8ND7/T
 tyl+Foym7jFs0WwzhP30jn4e8aumN5hiboSstUNtMudQmOIanhhYPB89qtTk/8tpJ0zeEfnaSlzWT
 sPf8rrepBmNurQxotTwPGqllM4JpUeA/UTvfXa8n3RtmI5LhgN7Wmuok/CN2i0vvqJSQ=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZG2-008aXc-Tu for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109606; x=1711645606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k8CT487ce4SSO54vpXkhaUXbrl//N6dfoaIHSNrZXSc=;
 b=HzwyRcpISnPSmsaxQIWIreex8xnJnArVBxxCMFLG3wtRxD6y65pZsssb
 +gHjfreyd5y1snD1FS+YdkwLIDkpUZ5HzH2mjuHDFYNDvZrjLXco9DOQR
 pgStfUqXM4XRKQeRWzrdfeUB5qQ+3wICVI9c52ks9710vt39QkzfBOsbC
 8J3K2QEZmKASVmIfhDFW6gr5EVrzEh4rhzeVXg6e45m2u27v2W3MOHs1k
 /KZTouVv8VTgmkuv/as1b/RN3Bwrse2hAgxFmcCau1vtO7Nbt57jTkLZ7
 vPnIcOsyhTltlqY2xgjC9DRkO0pEHA8oKjE5V/1Fqmg/P88gTtgyLlgo4 A==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807059"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:46 +0800
IronPort-SDR: hoP6oSTVUPoZ1XLWklS9QEMWS5WR0I6pjRQsIZBbqM6LHBJ36fTfuHF5sEDX97bj3+QuCys/sI
 rDwd7BQsyLrUiDguktgMuIqQiWYWnSOvGFRgLP6PO/pClRKWm17YFaDKSkB5vkNA3yLv9f6jeh
 ZDQeRJVQghLmvKdmBvzoJ+NV8Waoj/Gs4iVG/cqZqLz12X/luI8rRG0hpTTYdfqJn8oiZBQvXz
 G6rhK13ZyH+tehmzupKpNOApnV6W56MHRHCZeQu02d/i8Bpl8tPU/4qqJLA/oFrw61OhRBq7oM
 taM=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:22:56 -0700
IronPort-SDR: MOOXixcYEV1/J4lyBRhkoD3BrfkuwpVTjAnSNbGauDrQItggC4QoQ11Hy/5dh8cwJqG4TR0IkO
 Lnow8+4PjvklzXGKvuMnewjdhwfoe2RXCWLLrlvUTUex+DEDozd3vEEbQbLHW3vObVIOGbX5+L
 9twd+og8XKgLZTmhzd7AQK5yODOqOEQMLfsU73Gxn69Zp7ZgBbmVcFqWvAs2LM4xS7ajmwhg/x
 f+DcHorKiciGGPhCff17T/c0ZTt7hWf/JGR8UxngNwnUUQ1TMJefX0ET3IFIG0c8MJgSPEpX7y
 R+E=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:45 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:55 -0700
Message-Id: <5ce38530bc488f9d4f1692d701ca7ad5ea8ca3e9.1680108414.git.johannes.thumshirn@wdc.com>
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
 Content preview: The btrfs raid58 sector submission code uses bio_add_page()
 to add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
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
X-Headers-End: 1phZG2-008aXc-Tu
Subject: [Jfs-discussion] [PATCH 09/19] btrfs: raid56: use __bio_add_page to
 add single page
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

The btrfs raid58 sector submission code uses bio_add_page() to add a page
to a newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/btrfs/raid56.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/btrfs/raid56.c b/fs/btrfs/raid56.c
index 642828c1b299..c8173e003df6 100644
--- a/fs/btrfs/raid56.c
+++ b/fs/btrfs/raid56.c
@@ -1108,7 +1108,7 @@ static int rbio_add_io_sector(struct btrfs_raid_bio *rbio,
 	bio->bi_iter.bi_sector = disk_start >> 9;
 	bio->bi_private = rbio;
 
-	bio_add_page(bio, sector->page, sectorsize, sector->pgoff);
+	__bio_add_page(bio, sector->page, sectorsize, sector->pgoff);
 	bio_list_add(bio_list, bio);
 	return 0;
 }
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
