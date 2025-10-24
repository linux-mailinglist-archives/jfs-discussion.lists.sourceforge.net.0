Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6308C04EE4
	for <lists+jfs-discussion@lfdr.de>; Fri, 24 Oct 2025 10:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fjcP/FB5bxd1Vm+SQjsaG0a9s41cUOlLkfc8kfZuAZs=; b=SWHMnKOPp89nM8kOj+6WQm4D9l
	KiGY37ErOjvsR/hgUPemUco7El7rxUMLvhPtg7m2Zp3es0N0TbqSrP81q9fThSr0Tv5eNbooIKp0p
	13NR+qsV1MOUrYn45ysTmCq3nniXhieQA3R8LVmiSVBRXWI6h+PKlcE9rwR8Ngj0msD0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vCCnE-0000jF-Cp;
	Fri, 24 Oct 2025 08:05:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+aa390122061dbb70398c+8097+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1vCCnC-0000j9-TJ for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 08:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jYNTxYIvfkheoJqN9754McBKPDeXnK4exyWJDqYAb+Q=; b=l4GXDvBlbH030vise921T7hRFo
 vf5ENLlMDzAKGDYeMvTCtYhnHZ05wq2w4nwDrapUlA9uV8uaCPmQQFvnVU8+Y+ltN5yHNUk3YU3pR
 ctEv9ZB0BZUtQyFjxDhhfmWFQpHXr3VGTr3ZIdoKKb5o1tLcjnWmioKQejmf8gHojLZs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jYNTxYIvfkheoJqN9754McBKPDeXnK4exyWJDqYAb+Q=; b=J2v+fcVd8m7uv1LCW0QdQi0X0B
 KRgulJosci8duMQvTfj/OE0LnCf4WM87xymEIppb5zV+tzbo4lfb7SN1X5Dg724twrHM/6uLreHAV
 J9cccP3AbSP/0HwMJMJ2hGuMMWin/ZQkizEJTDlpr3hegrYsMyQL3xJnh8vQ0Joa+6ZQ=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCCnB-0004Pi-E9 for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 08:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=jYNTxYIvfkheoJqN9754McBKPDeXnK4exyWJDqYAb+Q=; b=OJ7tYu38O/M/EmCj56S9HyxwM+
 j/MgDY2cewA4DHdbgZD5+lsfdRKWYE/thmo+DAAhTEQJvcx94qZtN5GUp//euqbZRrUAwub+7D/ip
 BwH6Z2MPj6e9TBe09HjUYdUpwV314GvopmTdoe6bjiT0hcxtSHZCE9+2QbDGVtA+2WW65fYjlI5Sg
 UFbHzmBdpwRNvAHbYFJd4jgnj2Yw5q9nJAgB4ZrGcAap7PO12c6ltZJyTpogW6/htvsVKPTrGP5Ow
 3SvSCyiGRQfpMC0paMwsE+z+lcv6VFfZSYkbRECS1l/nrIY6dzsv1ZcYw3B2hDw9NPdeEgxNIB8Uk
 vQC81CeA==;
Received: from
 2a02-8389-2341-5b80-d601-7564-c2e0-491c.cable.dynamic.v6.surfer.at
 ([2a02:8389:2341:5b80:d601:7564:c2e0:491c] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1vCCn1-00000008c2S-1B1p; Fri, 24 Oct 2025 08:04:47 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Fri, 24 Oct 2025 10:04:12 +0200
Message-ID: <20251024080431.324236-2-hch@lst.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251024080431.324236-1-hch@lst.de>
References: <20251024080431.324236-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use filemap_fdatawrite_range instead of opencoding the logic
 using filemap_fdatawrite_wbc. Signed-off-by: Christoph Hellwig <hch@lst.de>
 Reviewed-by: David Hildenbrand <david@redhat.com> Reviewed-by: Jan Kara
 <jack@suse.cz>
 Reviewed-by: Damien Le Moal <dlemoal@kernel.org> Reviewed-by: Johan [...]
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vCCnB-0004Pi-E9
Subject: [Jfs-discussion] [PATCH 01/10] mm: don't opencode
 filemap_fdatawrite_range in filemap_invalidate_inode
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
From: Christoph Hellwig via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christoph Hellwig <hch@lst.de>
Cc: linux-xfs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, v9fs@lists.linux.dev,
 David Hildenbrand <david@redhat.com>, Josef Bacik <josef@toxicpanda.com>,
 linux-block@vger.kernel.org, ocfs2-devel@lists.linux.dev,
 Damien Le Moal <dlemoal@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Use filemap_fdatawrite_range instead of opencoding the logic using
filemap_fdatawrite_wbc.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: David Hildenbrand <david@redhat.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 mm/filemap.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/mm/filemap.c b/mm/filemap.c
index 13f0259d993c..99d6919af60d 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -4457,16 +4457,8 @@ int filemap_invalidate_inode(struct inode *inode, bool flush,
 	unmap_mapping_pages(mapping, first, nr, false);
 
 	/* Write back the data if we're asked to. */
-	if (flush) {
-		struct writeback_control wbc = {
-			.sync_mode	= WB_SYNC_ALL,
-			.nr_to_write	= LONG_MAX,
-			.range_start	= start,
-			.range_end	= end,
-		};
-
-		filemap_fdatawrite_wbc(mapping, &wbc);
-	}
+	if (flush)
+		filemap_fdatawrite_range(mapping, start, end);
 
 	/* Wait for writeback to complete on all folios and discard. */
 	invalidate_inode_pages2_range(mapping, start / PAGE_SIZE, end / PAGE_SIZE);
-- 
2.47.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
