Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D582C543606
	for <lists+jfs-discussion@lfdr.de>; Wed,  8 Jun 2022 17:05:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nyxFK-0003iY-RW; Wed, 08 Jun 2022 15:05:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+ba9ae8ab3d8ecaf97ba4+6863+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nyxFI-0003iR-4f
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 15:05:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+wB/nqOESlmBKGsPGGPvPk+1JR7GdqX/FHAB3WXgdkI=; b=AmCv7SjSST5vUs8GrAiYBmfU/2
 hCOHr4MjD3p8anEq59pj2k/5EX+cQFzz71egbRO1e+cFxlS81cArMm5FY81lCqwyp7f9CuFbnBVMQ
 9bLGAU+WVN98GqzuLIx91bukTcSv6fEXa1jdByQkVnZISr0dFnmwgA3lmog1+4kjjPW8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+wB/nqOESlmBKGsPGGPvPk+1JR7GdqX/FHAB3WXgdkI=; b=UyQ7HxxoZ+sl19S2jMtWvky+IB
 PEjVoOiLC6uWcInItYaZA8zzv6UwM150STzSmWnV875UINdZAhJ1q5buMBivtKNJCYfvKqTuuEU1A
 VT3HVoL1GQFGh2TDrZivGnsIsU/o94TkyOQrm2+Ww6+rD6Lk1UEr9failJwl/OD1wbLA=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyxFB-0005Nb-Na
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 15:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=+wB/nqOESlmBKGsPGGPvPk+1JR7GdqX/FHAB3WXgdkI=; b=RNFSUCreMEUz8c9RdJFErzY9Oq
 EKV47HQd1TVXLX0ekY7V6SwObNC7KGrbTOousoXYSZDcH2dMldeK+cVGzqvmLl3TqgY3+/WoiiQeG
 NhHbQw8iawjh1njiisBBaWAK4tFuAcYRs0WE0rungjaQqcICzYIE+aXMXEGW1ojCLD0TxsvJyBpgX
 JGgMIkng/FB3p8d8uDWIUqZDKR0EO1CLYOBg799oqrwJ5+1nxI+O9kabupy9IfMWMbS6kOoJ41Gl/
 7AwH2qxEWH7TL3S+rf3YHCJmnfU1peJMtru9bn6Kiscb1WP4uQ7Xmy0uWWJHioThqLRXwVvC94WLc
 EOLZk+ww==;
Received: from [2001:4bb8:190:726c:66c4:f635:4b37:bdda] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nyxEy-00DtIM-Cn; Wed, 08 Jun 2022 15:05:00 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ext4@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Date: Wed,  8 Jun 2022 17:04:48 +0200
Message-Id: <20220608150451.1432388-3-hch@lst.de>
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
 Content preview: The nobh mode is an obscure feature to save lowlevel for
 large
 memory 32-bit configurations while trading for much slower performance and
 has been long obsolete. Switch to the regular buffer head base [...] 
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
X-Headers-End: 1nyxFB-0005Nb-Na
Subject: [Jfs-discussion] [PATCH 2/5] jfs: stop using the nobh helper
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

The nobh mode is an obscure feature to save lowlevel for large memory
32-bit configurations while trading for much slower performance and
has been long obsolete.  Switch to the regular buffer head based helpers
instead.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/jfs/inode.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 259326556ada6..d1ec920aa030a 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -301,13 +301,25 @@ static int jfs_write_begin(struct file *file, struct address_space *mapping,
 {
 	int ret;
 
-	ret = nobh_write_begin(mapping, pos, len, pagep, fsdata, jfs_get_block);
+	ret = block_write_begin(mapping, pos, len, pagep, jfs_get_block);
 	if (unlikely(ret))
 		jfs_write_failed(mapping, pos + len);
 
 	return ret;
 }
 
+static int jfs_write_end(struct file *file, struct address_space *mapping,
+		loff_t pos, unsigned len, unsigned copied, struct page *page,
+		void *fsdata)
+{
+	int ret;
+
+	ret = generic_write_end(file, mapping, pos, len, copied, page, fsdata);
+	if (ret < len)
+		jfs_write_failed(mapping, pos + len);
+	return ret;
+}
+
 static sector_t jfs_bmap(struct address_space *mapping, sector_t block)
 {
 	return generic_block_bmap(mapping, block, jfs_get_block);
@@ -346,7 +358,7 @@ const struct address_space_operations jfs_aops = {
 	.writepage	= jfs_writepage,
 	.writepages	= jfs_writepages,
 	.write_begin	= jfs_write_begin,
-	.write_end	= nobh_write_end,
+	.write_end	= jfs_write_end,
 	.bmap		= jfs_bmap,
 	.direct_IO	= jfs_direct_IO,
 };
@@ -399,7 +411,7 @@ void jfs_truncate(struct inode *ip)
 {
 	jfs_info("jfs_truncate: size = 0x%lx", (ulong) ip->i_size);
 
-	nobh_truncate_page(ip->i_mapping, ip->i_size, jfs_get_block);
+	block_truncate_page(ip->i_mapping, ip->i_size, jfs_get_block);
 
 	IWRITE_LOCK(ip, RDWRLOCK_NORMAL);
 	jfs_truncate_nolock(ip, ip->i_size);
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
