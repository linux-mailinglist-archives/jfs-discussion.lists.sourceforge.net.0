Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C3C543607
	for <lists+jfs-discussion@lfdr.de>; Wed,  8 Jun 2022 17:05:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nyxFH-0004tk-Ew; Wed, 08 Jun 2022 15:05:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+ba9ae8ab3d8ecaf97ba4+6863+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nyxFG-0004ta-Pj
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 15:05:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x7JOqfa2RI0AOqNl02SQf1wFVJ5Ok2YV4zXvh/LnRsU=; b=N9SBXG7VEpspjK6JhxRWHFyxbh
 NNokW4JeKdihsw1WPuPd8bsEWQCnXXvNLPv2iB6THNi8rLHTay7cpqcApYHf3vLMPEBHghcEKXVwl
 5XTd/uH0ZulfB+muHVmls49t1qq1L9WXdMEofNjQkzRGCto6dcaqZBw9cNMI0300K+VI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x7JOqfa2RI0AOqNl02SQf1wFVJ5Ok2YV4zXvh/LnRsU=; b=EjiyQIvxH4+31CF5QwNk+8SX3B
 y5VvsAKv+j+FEMJ648kA/ycqZZ0UIyRGBKSQoBo+jgrhYI2VllFPhgkL/FdBJw+bAF5qJIxIcvddu
 QSlRCO0qqj6rpd/7uZfVMzVLzx7SxG6eWJm85P6BIGKf1sPCZ3yGTXSzUhPekwZJGK4I=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyxFF-009y72-45
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 15:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=x7JOqfa2RI0AOqNl02SQf1wFVJ5Ok2YV4zXvh/LnRsU=; b=NvquLW9gwRTmhQyGqfAPWAzDSN
 4aTfkhphSIRmLdBhL7Ly2eznMvI5BlkmIvMfX0PAvbTrLMWaPaXQk77zIFeoTaMC2d6/fSgmBeGY5
 NBJsAVSelW5jk+jBVipAcF5jodxqxIdDEOT3vshgvQ9U606vkPaoZCuJ+J4YLRtkKLtyQd+y6D5Pw
 Dq1o2qdpFW1TJRWX/KWryCq2LbW8kO+Ln5kb8GeWSdYzdeoyJiNIPx6IPgeeevsJn+eXJMc0xPDrF
 nhnmtjbYfT/85dPWS/7Lnvv/QPpd1N9vKDRYsB3miIORTclPMJo1oH63rR4HwdtYFC2Ldp7DFxtFZ
 IEyN3EHA==;
Received: from [2001:4bb8:190:726c:66c4:f635:4b37:bdda] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nyxF4-00DtL1-No; Wed, 08 Jun 2022 15:05:07 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ext4@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Date: Wed,  8 Jun 2022 17:04:50 +0200
Message-Id: <20220608150451.1432388-5-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220608150451.1432388-1-hch@lst.de>
References: <20220608150451.1432388-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: All callers of mpage_writepage use block_write_full_page as
 their ->writepage implementation, so hard code that. Signed-off-by: Christoph
 Hellwig <hch@lst.de> --- fs/mpage.c | 2 +- 1 file changed, 1 insertion(+),
 1 deletion(-) 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1nyxFF-009y72-45
Subject: [Jfs-discussion] [PATCH 4/5] fs: don't call ->writepage from
 __mpage_writepage
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

All callers of mpage_writepage use block_write_full_page as their
->writepage implementation, so hard code that.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/mpage.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/mpage.c b/fs/mpage.c
index 31a97a0acf5f5..a354ef2b4b4eb 100644
--- a/fs/mpage.c
+++ b/fs/mpage.c
@@ -624,7 +624,7 @@ static int __mpage_writepage(struct page *page, struct writeback_control *wbc,
 	/*
 	 * The caller has a ref on the inode, so *mapping is stable
 	 */
-	ret = mapping->a_ops->writepage(page, wbc);
+	ret = block_write_full_page(page, mpd->get_block, wbc);
 	mapping_set_error(mapping, ret);
 out:
 	mpd->bio = bio;
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
