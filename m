Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19716717F0F
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:52:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMq-000736-6A;
	Wed, 31 May 2023 11:51:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMo-00072v-5w for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JV+QfbhswWYe7PfMrv2Yu8Kn7ZidQZ3SJddP0Uv61YU=; b=csKiNpzNj/EFRIxuOSof4oE69y
 3XgfBo+WXn2cYkCAehHpmV3B5quvr/YHA2DY9Gc30BGe+XDO7MGSaWYv8k7Xo1TWda/5ccXbZbrxG
 6GQ31faCK1cRhQ6s7bonW5yXqsZyRpwccHmkL8Uj4jUd3JdWX+3cBTkpfTUZ5PtcnIZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JV+QfbhswWYe7PfMrv2Yu8Kn7ZidQZ3SJddP0Uv61YU=; b=jk2kPE/N3KEffNjUd269w9Bd+e
 w8LPWs0n7ZEkoctfmq15H75T7mxvY1ZuUoX+KzlHuAJjp1WTRKkOFd1fMsQkWapE/+FDYci1snXax
 R8Gx5Dt2ooiwVdIP3Ud4YRQiMFO7yA2zLUYH++VW32GjipyQEKjsZTDFqDW+4G0c9/aw=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMo-007QQu-0V for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533909; x=1717069909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cYPPoEv62NQazrvih94Ycv2rGmT7BOuXvS8lrmnDxSU=;
 b=PIh9p0c88aZnYpef9CSgrXDyFvWRMVm4XfNhoWZ6kHFnvfezgftJBGSg
 xpuXZ6C6BXus6kkF5/W8J+2+pXyyvQztUouZyErQHPIGqVx1SzLIE85qU
 yBs6xZt9415X46F9uDf9tGPveeD6GLn2GVjBG11D/aM4tPrDPsKgf15Yj
 a46zhXo/+4WCzfrEpLMhGc4QTyJ+QgmVtkyiolEQKaNLYP3QJAky7lo9z
 qbi8HxnjlFr5ZI8GBI7MRUQjGroFNtcvPuNlcFuc9mA6f3U2Xx3cSbFFb
 IEXmVndqv09CNJa9omA6blTByjAOjvNY1bU5iCS9W5ia4FV+7192Cc7Ag Q==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="237001998"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:47 +0800
IronPort-SDR: LQwuCUjcoNSfAXY+hXuykHtnT42MVhfftu4Q1ylbqtztQtiiheB1b3dDlYB1+BKI5XY1QN9ufc
 noUuqw4AkCXEq7z/jeTVra2YIoq7CJXj0xTXis7SDnN5zaUEa49Tvd68vhyfiXaCe5IvjsZxfu
 KlxEqYyUtFyGXSwHbIabjNnebgpG7u2z67Dxxvz66HrkfNZzyyVIAabF6tbm/UFe8wbPr7esQD
 vNFrfXP3sio6uYT1SHv15bqxwdPMjPvG4oSFV9GbJDNwEfaFvaTJ+YLFcIG2FQWM9mRfQ53pGb
 +0c=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:06:39 -0700
IronPort-SDR: QS61h54T8yZW50RLo6/tAmhIU9dZKUSaD+j7SLLE6DJcuENXB0nA81DplHQBb61D4xQN5z6YYg
 lyD4dagzoF40PNFlLjzTZJ0Zg7tFZiGl11uz4H1TbZVmBSoN2y+wo62ttaYHvL6KiHjLe0+6zm
 FGyHqtygisbhzUI8rq/fYFXGU3w82UmCTVNSYk+2JCVsdH8VqjYSAJfn3rSnoQGKjalA3DHPXh
 ec/1PSkgm/XAUuzf+dnf+/NfDPsket5c3ZH5oLqRyfJ8DIpHZ5kI0+L0iQDvqE4e97x4r0cURX
 AEA=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:44 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:41 -0700
Message-Id: <924dff4077812804398ef84128fb920507fa4be1.1685532726.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685532726.git.johannes.thumshirn@wdc.com>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Just like for bio_add_pages() add a no-fail variant for
 bio_add_folio().
 Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org> Signed-off-by:
 Johannes Thumshirn <johannes.thumshirn@wdc.com> --- block/bio.c | 8 ++++++++
 include/linux/bio.h | 2 ++ 2 files changed, 10 in [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4KMo-007QQu-0V
Subject: [Jfs-discussion] [PATCH v7 18/20] block: add bio_add_folio_nofail
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

Just like for bio_add_pages() add a no-fail variant for bio_add_folio().

Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 block/bio.c         | 8 ++++++++
 include/linux/bio.h | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/block/bio.c b/block/bio.c
index 043944fd46eb..07bc5139f9db 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -1138,6 +1138,14 @@ int bio_add_page(struct bio *bio, struct page *page,
 }
 EXPORT_SYMBOL(bio_add_page);
 
+void bio_add_folio_nofail(struct bio *bio, struct folio *folio, size_t len,
+			  size_t off)
+{
+	WARN_ON_ONCE(len > UINT_MAX);
+	WARN_ON_ONCE(off > UINT_MAX);
+	__bio_add_page(bio, &folio->page, len, off);
+}
+
 /**
  * bio_add_folio - Attempt to add part of a folio to a bio.
  * @bio: BIO to add to.
diff --git a/include/linux/bio.h b/include/linux/bio.h
index ea2d937d3cba..f907d75af205 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -474,6 +474,8 @@ int bio_add_zone_append_page(struct bio *bio, struct page *page,
 			     unsigned int len, unsigned int offset);
 void __bio_add_page(struct bio *bio, struct page *page,
 		unsigned int len, unsigned int off);
+void bio_add_folio_nofail(struct bio *bio, struct folio *folio, size_t len,
+			  size_t off);
 int bio_iov_iter_get_pages(struct bio *bio, struct iov_iter *iter);
 void bio_iov_bvec_set(struct bio *bio, struct iov_iter *iter);
 void __bio_release_pages(struct bio *bio, bool mark_dirty);
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
