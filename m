Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DFA547F08
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Jun 2022 07:38:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1o0clt-0001ZM-1F; Mon, 13 Jun 2022 05:37:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+6ef1cfbcd5439e194ca7+6868+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1o0clq-0001Yx-VR
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 05:37:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DDsG9TIypX9i4Jub9ds/rZf5G8m0UHXd5E1QbdoBBD0=; b=MBxKtjJ3tjvv9r0PUbMT5xHeHv
 skz/YCsn5sd+oq1oKMEJyLWpP1s4baJ/Bnl9+2WLQsr9ZVwhKBbFa9UxvMNUsDgRjCPD2FjXh6bq6
 epYcDZaffShytOvmzap9LFukG3dYsjgBkgfbsR7kbLlIc3KEmNlnjOA1T4QF+8LTDZgE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DDsG9TIypX9i4Jub9ds/rZf5G8m0UHXd5E1QbdoBBD0=; b=Lzfv3FAM6yJE+taviYHw7v+5IM
 +T7vMz26NvasUF0njCdczCFY/nAK1NBmOFOFBRqbcJmCjQHWowlZo2Cie16uwe2bu+Y6BC8rQYcFx
 r0fTKBRMPIEs1ln+bS5DI7CByWUPWOMaVYPW/5J8jUPjgjlF6SSEJM9B2hBtHKUkcVNk=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0cld-00026P-SD
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 05:37:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=DDsG9TIypX9i4Jub9ds/rZf5G8m0UHXd5E1QbdoBBD0=; b=N9TsM8iT7ekZbDQfUGaiTFwUXU
 JcI0aBGvdUEZlGHwm/7Gg19OovVj+VIwh/QosgXQTjie0wQ5v6DSgzZEOGJHsJQ4BQPEuuEkHddhv
 /Mb8t3PZkjApccMEshQeDjGPr4ZIL01urVDOiZJMlV7XetbwzGTWR1jOLSNkHdWkbQm0UsSPYaCRf
 V9LU0XmI/FR72D18BfloytbAj/xb6rWUIRKfCAGGPZCyzLf2QjZJWUIiDEgZkl+0OUSB4Tu9Yojo9
 x2Ka0CGp1GvnzyMkLcGbhDM+ML2XWh0ReJ2ijpIE4h0Jery3bob4pKQtwxcC3N82tUVGyhUAsurVo
 nBM/rNQA==;
Received: from [2001:4bb8:180:36f6:f125:c38b:d3d6:ae6c] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1o0clN-001V4A-It; Mon, 13 Jun 2022 05:37:22 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Date: Mon, 13 Jun 2022 07:37:10 +0200
Message-Id: <20220613053715.2394147-2-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220613053715.2394147-1-hch@lst.de>
References: <20220613053715.2394147-1-hch@lst.de>
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
 Content preview: Handle the resident case with an explicit generic_writepages
 call instead of using the obscure overload that makes mpage_writepages with
 a NULL get_block do the same thing. Signed-off-by: Christoph Hellwig
 <hch@lst.de>
 --- fs/ntfs3/inode.c | 8 +++----- 1 file changed, 3 insertions(+),
 5 deletions(-)
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
X-Headers-End: 1o0cld-00026P-SD
Subject: [Jfs-discussion] [PATCH 1/6] ntfs3: refactor ntfs_writepages
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
Cc: linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
 ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Handle the resident case with an explicit generic_writepages call instead
of using the obscure overload that makes mpage_writepages with a NULL
get_block do the same thing.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/ntfs3/inode.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
index be4ebdd8048b0..28c09c25b823d 100644
--- a/fs/ntfs3/inode.c
+++ b/fs/ntfs3/inode.c
@@ -851,12 +851,10 @@ static int ntfs_writepage(struct page *page, struct writeback_control *wbc)
 static int ntfs_writepages(struct address_space *mapping,
 			   struct writeback_control *wbc)
 {
-	struct inode *inode = mapping->host;
-	struct ntfs_inode *ni = ntfs_i(inode);
 	/* Redirect call to 'ntfs_writepage' for resident files. */
-	get_block_t *get_block = is_resident(ni) ? NULL : &ntfs_get_block;
-
-	return mpage_writepages(mapping, wbc, get_block);
+	if (is_resident(ntfs_i(mapping->host)))
+		return generic_writepages(mapping, wbc);
+	return mpage_writepages(mapping, wbc, ntfs_get_block);
 }
 
 static int ntfs_get_block_write_begin(struct inode *inode, sector_t vbn,
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
