Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A60307607
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ot-0000WM-Nk; Thu, 28 Jan 2021 12:27:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51XB-0002eR-Ak
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:16:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xKI3ZVJ4gSV2TcUfdV6t7z19wlxAyT6x6dpRqrPmOr8=; b=CAAeaKEK9na5LucBbchEtRwacX
 2e4L5AlAUYYssWuN6PK9QD8oAD1kanPB16gTXj1+eQEYoV5Gs3JQlv1sE3znRAVtO3YkDOceOAPy3
 hC3k47XGBJeBoOQv9qEWvHe0tWr+B/1IsTFoaAPYFUetciijgrYtLXlR4Mhr3Yas+HIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xKI3ZVJ4gSV2TcUfdV6t7z19wlxAyT6x6dpRqrPmOr8=; b=XNNGG5aHO/WjD155+e/j0A37Rw
 Vgv/O21n8GFNLRrEApMoT+asAqUWJY+zuRClFuFpK3lwcMLyrNKkoXPwPNaPb1ScMgs46fAV7vePo
 +yIzAc42lbdHY5/GvkBMykLT5GmyX5iHc5n4D6NSZo1z9KnLOjK2BP36Nk7qozcTaAAk=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51Wq-0000af-Qo
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:16:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818144; x=1643354144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mX0lBXgZV5dDDUNO5/xUPQTxA6WXojrnDbaB4rJIAQ4=;
 b=d+l8WCmNgXSIws1eSEccbMgC7Iha+uIKMP+KwqFCn9WdsE42hc8KM+jS
 RmcRvKwRaWqTt5h7XC9K9//95oTO0Ls0kZnnYZ5RnFWq3GzpAkmczgj6b
 C3VafxlTzVqg02c336Cfyzguy23Rf34WUYPInxK3Yxna4VPILZ+wLjoBR
 US1ze1Zk5a/9b70/KI7AryrhxWqIhtOv8RJQHJM0rWhiOo9FHedIODfkL
 nsHjMS8whXo08awBtgCCeOEp7IPO0wwvnZoIWbnT9QrAK9vt3RNsASx37
 PjgHcHLdSh3y7WQp8A2esWeFIvP9JJ187N+CNzLSLIlPkwqaUMN3wa/us Q==;
IronPort-SDR: lA0RK50Yo984ttPY9Y4JfdILI2QnEQm2zgzxW4aTT/vDF+dFUbhkoyzucw9hsr5F2azWt/BlP0
 5qo5tUiyydIkcCtaKYEx3oeECsJ5OBd4VTtJtLPTom2LNiUDb10KATINYaZ82fxT5Abx6BDWXy
 1Q6WmDtyFroROnTWIO4192152ZXGPf40tLa0fYjyrKtCLr9Jw+7WiFhWlL71F8bet21v3HHs2O
 IAXZetP6uZT7qcWkN/Yw3ugPKcTYTFsNHUD4Y9I/luBMCY84BxyapF69e21Lw/fnWaVEEaQXgJ
 nX0=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158518434"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:15:39 +0800
IronPort-SDR: FOtGM+oeTEAWwePJYvZRdwtA2zBGNNWGLjLI3pR82QGBGzu20C0gNJL2LiKkWst0tYQu8XHETF
 osVjaHp0HLzam21RPcQSYz8HNI8ebI05sL4gfjAFwu/SiONBi1UBjeMfbTihsQUJ0L2KZGm77n
 iZQcOpufrIDWe4IWMpQfyKPVV72p0mcR7JMPi1fIXDOPC1SPXJw7Oca8PsAmUA4ooRItRNK/sx
 U/+zuRdQHghWVok2uRL1yW8YKWSFgIw+EXeWNQngXUWpA2plKKK3afmWqam7Xt38vYkove6q6t
 DKaFgEVtf8OFwcLcGNIK/1Bp
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:59:59 -0800
IronPort-SDR: +tiKd6++/IklFSy7iDJaHbayhG5AQMYy46sQaNwq7O80dac1IZ8ZNlxjx4DxYbXvKYV6ua9+Jn
 RJlpIO7cWN3eoJjRXIKMWDgWPb2hxGv4A2WF6qkOCUmJWGu679NggrholDw0Y/zhUvvPmDPwT6
 YMwbiHmVzfz4ihKs4Lc84G8Ml2oUugQkKwA3saHG7RouPgTCEOWIbUjZGA0E7lav6RMiRyuWgb
 NQVibBmtLzaPM7sNDSYSURpVt5muhPgCfKQdUKPwhH4mY9hUDkI5QyIoSDd8h2S0Ai5kAfU9pn
 AHM=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:15:39 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:28 -0800
Message-Id: <20210128071133.60335-30-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l51Wq-0000af-Qo
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:46 +0000
Subject: [Jfs-discussion] [RFC PATCH 29/34] power/swap: use bio_new in
 hib_submit_io
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
Cc: shaggy@kernel.org, sergey.senozhatsky.work@gmail.com, snitzer@redhat.com,
 tiwai@suse.de, djwong@kernel.org, gustavoars@kernel.org,
 joseph.qi@linux.alibaba.com, pavel@ucw.cz, alex.shi@linux.alibaba.com,
 hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com, sagi@grimberg.me,
 mark@fasheh.com, osandov@fb.com, ebiggers@kernel.org, ngupta@vflare.org,
 len.brown@intel.com, chaitanya.kulkarni@wdc.com, konrad.wilk@oracle.com,
 hare@suse.de, ming.lei@redhat.com, viro@zeniv.linux.org.uk,
 jefflexu@linux.alibaba.com, jaegeuk@kernel.org, konishi.ryusuke@gmail.com,
 bvanassche@acm.org, axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 akpm@linux-foundation.org, martin.petersen@oracle.com, rjw@rjwysocki.net,
 philipp.reisner@linbit.com, minchan@kernel.org, tj@kernel.org,
 lars.ellenberg@linbit.com, jth@kernel.org, asml.silence@gmail.com,
 jlbec@evilplan.org, roger.pau@citrix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 kernel/power/swap.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/kernel/power/swap.c b/kernel/power/swap.c
index c73f2e295167..e92e36c053a6 100644
--- a/kernel/power/swap.c
+++ b/kernel/power/swap.c
@@ -271,13 +271,12 @@ static int hib_submit_io(int op, int op_flags, pgoff_t page_off, void *addr,
 		struct hib_bio_batch *hb)
 {
 	struct page *page = virt_to_page(addr);
+	sector_t sect = page_off * (PAGE_SIZE >> 9);
 	struct bio *bio;
 	int error = 0;
 
-	bio = bio_alloc(GFP_NOIO | __GFP_HIGH, 1);
-	bio->bi_iter.bi_sector = page_off * (PAGE_SIZE >> 9);
-	bio_set_dev(bio, hib_resume_bdev);
-	bio_set_op_attrs(bio, op, op_flags);
+	bio = bio_new(hib_resume_bdev, sect, op, op_flags, 1,
+		      GFP_NOIO | __GFP_HIGH);
 
 	if (bio_add_page(bio, page, PAGE_SIZE, 0) < PAGE_SIZE) {
 		pr_err("Adding page to bio failed at %llu\n",
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
