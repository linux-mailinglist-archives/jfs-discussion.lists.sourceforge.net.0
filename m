Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4736CF04A
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZGM-0001Zi-4v;
	Wed, 29 Mar 2023 17:07:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZGL-0001Zb-HO for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7+bIXF2fTdL9cWuJDdsLfpimmTL4CGHXMEA6wqfKprk=; b=FIoxv//R6249Gbm8nyus69dpAX
 VoW5Je2kRldm92UMsJYF7KJcbq8SP4DGJVZomIdyU6yi4Luk5Gk1pcu27Z+PecLIt80SRK+j/SfFM
 pUjlb6sFRW7503LNhlB3ojZN/UEAoyQBAs7DBo6tKUBb8IRLDDfnBYX/cdhZ7rkNrcEQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7+bIXF2fTdL9cWuJDdsLfpimmTL4CGHXMEA6wqfKprk=; b=OzMGDLXr5jQk0Qqz5U8wz8QCyY
 0zbQR8stoaw0aG79QaSv94Zepa6o5hj/HT9LYFetL7lYbNr3+zYfqd4wAzKCi4FD6LCKsXU+Pcw0b
 gmq4+fNIjabBt7+B6/vuKw2JqfvaP8BIkCnmpxyfvgJ50MEYZkTjvzf1Z4TisaOestdw=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZGK-008aXc-17 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109623; x=1711645623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iZ22wN2mWRIC3IC0ve2ktcoeKHTOmDQMcv9pQZAGU1o=;
 b=SGhvdtBrBGAiwWYmbpWL0r5EgTrm2/elIo4Z5W2vDVOycHN0YBb3YLj/
 drB2wP9nXWsfeMJR5KX57d2q4ISV/kU92/d4gjW/8Z/EJRMtHwpmnGsoB
 yuTPO/MF9nVLhofAWh4MRUhsEKVu1RMzgsWYOnRnjxKvAORdHkQrYR08M
 OEzxH4PEJyD9rvj5sWHjyRQZG8Y8rdLIBaKSmESMdipYD80okVSFvh9Pb
 WHr05use4mhDDS0ysd2KXmNzHgj9bR6ZgshTTCywhgbQvlQ65pUMuSs0K
 hdo4bZLY3rV9iU54UBxD0Jvm3e17A98C8w1zOI2zDuap4BpG8tAWa9zao w==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807096"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:07:03 +0800
IronPort-SDR: Pm9gZ1ECudf3oFKANM58Qt1fh7nZavVRXjj7zg/nYeObt/j8r5YdtTZyb+xPdjw6buQbuQsFz/
 3j8blrNcq1CWCz6FQXtVQy09/cqiWv8hdQEHmlm530rnev58RgI/ZbHXfxLyHobUtqu8CjQToa
 xM8jidFDjBPITa9EBA1FiLm+hjeQ4WUBHkDc+UbSN7D/t4KR+pvafXX/uOsu/enrQAcsVnTKkI
 kn6O40Vpi1BFYD5HYk5dwm18wz1R8evGTXWmJtxMJL+YwQ28ygQPBs4VfrbdGLLsKZ6OlTkT9o
 oQs=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:23:13 -0700
IronPort-SDR: QenhUoCI4gCJokChYIRTxR/AmeR3KMt0i9Ax1ZUEuOE55BQNPmd9r5SN16Ch8MkiJkIpZRNt6I
 qUqUWECToDJ2WJWUpGDVQEaikqB6uT7pLfViFCRAcappfhtVNCd/noIg/ffVrtgTFQXaHZa2+9
 qvf0zarO4BdnnsxEfFyvXa+MLW55EgGw+iqxyMy9lk11OGTrZhPXyK+RBxeQV8dZU6/1rjQcdM
 2AqTxj/IU9pm/2z5SJvCrEd9J0iojU5OMLtUdmwaC41nSBL3uay8UbzV0sr/esbq/6zIeGVC7M
 m7k=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:07:02 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:06:01 -0700
Message-Id: <76f5748e386870c034b46e919101a878b87a79bf.1680108414.git.johannes.thumshirn@wdc.com>
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
 Content preview:  alloc_behind_master_bio() can possibly add multiple pages
 to a bio, but it is not checking for the return value of bio_add_page() if
 adding really succeeded. Check if the page adding succeeded and if not bail
 out. Content analysis details:   (-2.5 points, 6.0 required)
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
X-Headers-End: 1phZGK-008aXc-17
Subject: [Jfs-discussion] [PATCH 15/19] md: check for failure when adding
 pages in alloc_behind_master_bio
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

alloc_behind_master_bio() can possibly add multiple pages to a bio, but it
is not checking for the return value of bio_add_page() if adding really
succeeded.

Check if the page adding succeeded and if not bail out.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid1.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/md/raid1.c b/drivers/md/raid1.c
index 68a9e2d9985b..bd7c339a84a1 100644
--- a/drivers/md/raid1.c
+++ b/drivers/md/raid1.c
@@ -1147,7 +1147,8 @@ static void alloc_behind_master_bio(struct r1bio *r1_bio,
 		if (unlikely(!page))
 			goto free_pages;
 
-		bio_add_page(behind_bio, page, len, 0);
+		if (!bio_add_page(behind_bio, page, len, 0))
+			goto free_pages;
 
 		size -= len;
 		i++;
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
