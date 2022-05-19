Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAC452DDEA
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 May 2022 21:45:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nrm4w-0007yk-Sp; Thu, 19 May 2022 19:44:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nrm4v-0007ye-9k
 for jfs-discussion@lists.sourceforge.net; Thu, 19 May 2022 19:44:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lsqGn3eyK2DrcqkGnGxhUNX0KbccC55iqHUDsH+ISxQ=; b=M4EDElATwvrE1qUDhp3YYWdI8j
 6+5OFONswUiXpO8f28CCZ7HpcwsOOACrwZoR15HEHjm5o9j7EX08eLbjqiiR8imSOiXszkBngbUBR
 OCG2YneR/D84sM7O8zaI9jPN2ASQGMLL59AhLKDrdvUOyGGWuJBjAwcqORW0cMZfz2IQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lsqGn3eyK2DrcqkGnGxhUNX0KbccC55iqHUDsH+ISxQ=; b=f
 jRn4PGcD0zyzbzzCndYg2CeWy4elEknMneBUol11kbLkCxIMXEkUAhEZw57mpenVDLFD0fRm4O9aR
 up1+oiClVHZETVuLnA2EFHN7L2zj1PAtkAdEkKg9a3PXj9UrH8slfbA9ei1xjcoYPerB0WbLlk1gf
 M8I9cpJ/rfTAl+KU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nrm4q-00AIDj-EW
 for jfs-discussion@lists.sourceforge.net; Thu, 19 May 2022 19:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=lsqGn3eyK2DrcqkGnGxhUNX0KbccC55iqHUDsH+ISxQ=; b=m3krLVnnv6dE0c0ZuTMUF3caxM
 yHZVlcnaml88CSGkYPGUYgSQL6o7KbXO+kHJRWnrwNqoa7ukkg4o8k7UwqHfcuIFjRHMs9VRznhjF
 faiVC4q71JfZLFRVTefy9vnjG8Neqco1uDPDMlF1VvZ6I716ZUveWQKwCluJQNy1AMmba48qpJ2Vw
 a/6TLzbnRRmk1npTlySlFXRrcmcSHxLaNc24axP9tLlzjvRMUdeIvJbJ0CN54FhjyOKlfClafkxV4
 dsAwwiIAZHJvAf1mmRePQ5XJJ9ergenfPddR/qJpidQzJ4+MWNNpJ0uJp2cNDWsly/GispnHCNSIl
 Krfq+OhQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nrm4a-00D3FG-Ea; Thu, 19 May 2022 19:44:36 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org
Date: Thu, 19 May 2022 20:44:35 +0100
Message-Id: <20220519194435.3110635-1-willy@infradead.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This isn't going to apply to your tree;
 it will apply to today's
 -next though. Happy to take this on top of my current pagecache patch set
 with appropriate acks. Maybe it's the wrong fix; I haven't sp [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nrm4q-00AIDj-EW
Subject: [Jfs-discussion] [PATCH] jfs: Release even dirty metapages on
 invalidate
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
Cc: "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This isn't going to apply to your tree; it will apply to today's -next
though.  Happy to take this on top of my current pagecache patch set
with appropriate acks.  Maybe it's the wrong fix; I haven't spent very
long trying to understand what all the parts of mp mean ... maybe it
should only override the META_Dirty check and it needs to do something
else for the other two checks?

--- 8< ---

For ->release_folio(), we can fail to release the metapage if, for
example, it's dirty.  For ->invalidate_folio(), we must release the
metapage as the page is being removed and will be freed.  Failing to
release the metapage results in xfstests generic/537 hitting BUG reports
like this:

BUG: Bad page state in process umount  pfn:12b03a
page:000000000c3e2db5 refcount:0 mapcount:0 mapping:0000000000000000 index:0x10 pfn:0x12b03a
flags: 0x8000000000002004(uptodate|private|zone=2)
raw: 8000000000002004 ffffea000417a5c8 ffff88810a41bbe0 0000000000000000
raw: 0000000000000010 ffff888124e12680 00000000ffffffff 0000000000000000
page dumped because: PAGE_FLAGS_CHECK_AT_FREE flag(s) set

as the page allocator checks that the page no longer has private data.

Add a bool argument to inform the release routine whether to override
the checks and release the metapage anyway.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 2e8461ce74de..5b4f0cd8d276 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -524,7 +524,8 @@ static int metapage_read_folio(struct file *fp, struct folio *folio)
 	return -EIO;
 }
 
-static bool metapage_release_folio(struct folio *folio, gfp_t gfp_mask)
+static bool __metapage_release_folio(struct folio *folio, gfp_t gfp_mask,
+		bool force)
 {
 	struct metapage *mp;
 	bool ret = true;
@@ -537,8 +538,9 @@ static bool metapage_release_folio(struct folio *folio, gfp_t gfp_mask)
 			continue;
 
 		jfs_info("metapage_release_folio: mp = 0x%p", mp);
-		if (mp->count || mp->nohomeok ||
-		    test_bit(META_dirty, &mp->flag)) {
+		if (!force &&
+		    (mp->count || mp->nohomeok ||
+		     test_bit(META_dirty, &mp->flag))) {
 			jfs_info("count = %ld, nohomeok = %d", mp->count,
 				 mp->nohomeok);
 			ret = false;
@@ -553,6 +555,11 @@ static bool metapage_release_folio(struct folio *folio, gfp_t gfp_mask)
 	return ret;
 }
 
+static bool metapage_release_folio(struct folio *folio, gfp_t gfp)
+{
+	return __metapage_release_folio(folio, gfp, false);
+}
+
 static void metapage_invalidate_folio(struct folio *folio, size_t offset,
 				    size_t length)
 {
@@ -560,7 +567,7 @@ static void metapage_invalidate_folio(struct folio *folio, size_t offset,
 
 	BUG_ON(folio_test_writeback(folio));
 
-	metapage_release_folio(folio, 0);
+	__metapage_release_folio(folio, 0, true);
 }
 
 const struct address_space_operations jfs_metapage_aops = {
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
