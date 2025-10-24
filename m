Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E48C04EEB
	for <lists+jfs-discussion@lfdr.de>; Fri, 24 Oct 2025 10:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8qKA65KpGNBgLmxhi6DXLQVVCDEIkm91H/nj+t+Eyzw=; b=b+QXHo6rncCpe1feNc3lHB5Ka/
	w8ByoyLBatuXr3hyOD46yynxgrixOK7PBYCYoc4OKnjuuh12YF4mjlJUYASJZBJlOGj8PGJ2qKPBP
	w5geTWhk1xKqYvDx76vddvp9C7i62RvgWHnBVxyR6SamoN3ZxwyAs62w4DC16yF19TPI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vCCnR-0000yL-Qm;
	Fri, 24 Oct 2025 08:05:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+aa390122061dbb70398c+8097+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1vCCnQ-0000y5-Iu for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 08:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KHvBUxtcyVHjSYHDlnvJ4K1d0lqno9jHSlEtLibjOIA=; b=STkmxWP4dPsisw10ae0G3BREdg
 p5f/gejDcYzm2633G4bwi/5wfjyznpRv5Ukv/VyO4TVPMiKx8N6HDZaOemE1oPZpGuvufKQmLcr6E
 I3GJ0nd8JdXYlsgo/OkenUYpcrv0Ygb6MTEReUdyppJSS2pHtHDRjqsRNuBuVZKBkx0c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KHvBUxtcyVHjSYHDlnvJ4K1d0lqno9jHSlEtLibjOIA=; b=WVXdNSTdZUZ8ssMIwDz4ne9B1u
 IsO5n7+GqFqTdw3GH81Y03XCU/Jb+CeVWpjd7VpCSIi/Smdiew+nkE0kk9xAblgQvGCRN2lzzxPoj
 fP6QpnhX6xSIkH6c0oo+z2eXWqEGXD9uicJ1jqQdeWaeK1GBZw0kkfu5BXBH7qnOIH70=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCCnQ-0004Rg-SW for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 08:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=KHvBUxtcyVHjSYHDlnvJ4K1d0lqno9jHSlEtLibjOIA=; b=MidHAQ0kwxqlWDee9nUjX5/ncS
 /gU4JQOWSPMGAiFiG4yaffjRRz4MElW+Z2WYhMwXUVZWakiREcYe+ziH2B8X5Bvu2XQYQIaQQzbWV
 N0oWMwaWHyESKD7PyHomOsoOu8Guy7O65qijonMdiYnIXEedKnA+c9bYddZVHcIKmin5nHQeKLk/o
 edDFzGriSX5Pvxb4yJYL5rzOvMPTjTefiX0tXNO2lWVqdvU1hyciL/1qDgrgJ9Q+HV05qIN8ISqE7
 COsFc0cdNiZBzaigQNjXMS5B/ZUACtZbvri47/aoS80VVCs6ZOyP+fUSiPnv/2atttMGFOsL2sVoP
 rnAZBExA==;
Received: from
 2a02-8389-2341-5b80-d601-7564-c2e0-491c.cable.dynamic.v6.surfer.at
 ([2a02:8389:2341:5b80:d601:7564:c2e0:491c] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1vCCnC-00000008c3M-2cmC; Fri, 24 Oct 2025 08:04:59 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Fri, 24 Oct 2025 10:04:13 +0200
Message-ID: <20251024080431.324236-3-hch@lst.de>
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
 Reviewed-by: Jan Kara <jack@suse.cz> Reviewed-by: Damien Le Moal
 <dlemoal@kernel.org>
 Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com> --- fs/ [...]
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vCCnQ-0004Rg-SW
Subject: [Jfs-discussion] [PATCH 02/10] 9p: don't opencode
 filemap_fdatawrite_range in v9fs_mmap_vm_close
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
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Damien Le Moal <dlemoal@kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, jfs-discussion@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Use filemap_fdatawrite_range instead of opencoding the logic using
filemap_fdatawrite_wbc.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/9p/vfs_file.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index eb0b083da269..612a230bc012 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -483,24 +483,15 @@ v9fs_vm_page_mkwrite(struct vm_fault *vmf)
 
 static void v9fs_mmap_vm_close(struct vm_area_struct *vma)
 {
-	struct inode *inode;
-
-	struct writeback_control wbc = {
-		.nr_to_write = LONG_MAX,
-		.sync_mode = WB_SYNC_ALL,
-		.range_start = (loff_t)vma->vm_pgoff * PAGE_SIZE,
-		 /* absolute end, byte at end included */
-		.range_end = (loff_t)vma->vm_pgoff * PAGE_SIZE +
-			(vma->vm_end - vma->vm_start - 1),
-	};
-
 	if (!(vma->vm_flags & VM_SHARED))
 		return;
 
 	p9_debug(P9_DEBUG_VFS, "9p VMA close, %p, flushing", vma);
 
-	inode = file_inode(vma->vm_file);
-	filemap_fdatawrite_wbc(inode->i_mapping, &wbc);
+	filemap_fdatawrite_range(file_inode(vma->vm_file)->i_mapping,
+			(loff_t)vma->vm_pgoff * PAGE_SIZE,
+			(loff_t)vma->vm_pgoff * PAGE_SIZE +
+				(vma->vm_end - vma->vm_start - 1));
 }
 
 static const struct vm_operations_struct v9fs_mmap_file_vm_ops = {
-- 
2.47.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
