Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFFABD15C1
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 06:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P99jrk2PuhvYyu7xOmNIjF43Fs89ZwcEfmfft2zw5vA=; b=SrULo+MzwPkoIiGAT33AePgnSc
	ZpxgyX2iL2kWwG0ZyHONiHNJFPNvt85RtBY106TeVZy8xmONf6YniPGRps6T6DlyRFOS4cpgX2YJu
	d25Iwq0gyWUV2fjEeZxuMc0Y3FhedCy2jVHAIOdpLZfZiWgVCEB5fiJaydKt2pz+i1fE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v89w3-0006A2-AD;
	Mon, 13 Oct 2025 04:13:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+429c5dd7f65f3a144064+8086+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1v89w1-00069t-9o for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:13:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U/DAAkWmq2Dxx5Ncu78XnJSF3nOk6rkN/CJQmqoQWpE=; b=Tf4P91XwseoEOtlxa6/rpjnYG/
 oCi6AWax8IZtb2ddZpnEqthIdcZSOJ2fGl7n2mFve9Bwfu9XK2u6kmRxfiLR7AhgVcRImEI9ip1y5
 0ACn6+aHDerVhpXQtxlVokyuPA1fcpEnRvws96VVsYFz1OEVtJxYHA3SVyIXupPIraws=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U/DAAkWmq2Dxx5Ncu78XnJSF3nOk6rkN/CJQmqoQWpE=; b=D7XNBBoyddjazdyHFuGfXUCbbN
 rPsfjDOXykguDNKCOCCqkoCUDlaf3UbVJk2LbrFp7FKsclZtvkW3jF7juUEHVIPVACI8CATQvoeYd
 /kZk572rjDfO5s9NL36a2kGmtsaTYdbT2o5t4I6adPHFdWvwdk1FwyD4oca9Wcq58s4A=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v89w0-00060R-UN for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:13:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=U/DAAkWmq2Dxx5Ncu78XnJSF3nOk6rkN/CJQmqoQWpE=; b=v1agg868KstaamClRF27PcxAmE
 NMKTaFWdSt0z5b2C9IP/DIDFPD7zXPVT89f4fnltVINDZ7ES6vsQPElxFC8Wahjh08WYsbT8Xx4U/
 PvrlxExKr7jaW23AlDsdD/3j2gQcVjYHULOZMyDMyzZAqBWpkyeLiMq2U9gSiO/Bb+vmTVicLSNbZ
 Qw50TbDFEfFk6Sf3Mmkw5eCgl+dyz4UEdgpPZcRfcYmq7GLBuF6TNzL/XPkSkZp7sBy4pqKdLpQdp
 AvSJJr70eSzdh+IVUoaoKh1XmeJJRiWgDBOsuQnXsHq40oDaH/Fwf5GzqpUljOMhy5j7WEKmQ12Wd
 6GjFwTpw==;
Received: from [220.85.59.196] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1v88lo-0000000C8BU-2H5E; Mon, 13 Oct 2025 02:58:45 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Mon, 13 Oct 2025 11:57:59 +0900
Message-ID: <20251013025808.4111128-5-hch@lst.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251013025808.4111128-1-hch@lst.de>
References: <20251013025808.4111128-1-hch@lst.de>
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
 Content preview: start_delalloc_inodes has a struct inode * pointer available
 in the main loop, use it instead of re-calculating it from the btrfs inode.
 Signed-off-by: Christoph Hellwig <hch@lst.de> --- fs/btrfs/inode.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-) 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1v89w0-00060R-UN
Subject: [Jfs-discussion] [PATCH 04/10] btrfs: use the local tmp_inode
 variable in start_delalloc_inodes
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
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org, v9fs@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

start_delalloc_inodes has a struct inode * pointer available in the
main loop, use it instead of re-calculating it from the btrfs inode.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/btrfs/inode.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/btrfs/inode.c b/fs/btrfs/inode.c
index 3b1b3a0553ee..9edb78fc57fc 100644
--- a/fs/btrfs/inode.c
+++ b/fs/btrfs/inode.c
@@ -8744,9 +8744,9 @@ static int start_delalloc_inodes(struct btrfs_root *root,
 		if (snapshot)
 			set_bit(BTRFS_INODE_SNAPSHOT_FLUSH, &inode->runtime_flags);
 		if (full_flush) {
-			work = btrfs_alloc_delalloc_work(&inode->vfs_inode);
+			work = btrfs_alloc_delalloc_work(tmp_inode);
 			if (!work) {
-				iput(&inode->vfs_inode);
+				iput(tmp_inode);
 				ret = -ENOMEM;
 				goto out;
 			}
@@ -8754,7 +8754,7 @@ static int start_delalloc_inodes(struct btrfs_root *root,
 			btrfs_queue_work(root->fs_info->flush_workers,
 					 &work->work);
 		} else {
-			ret = filemap_fdatawrite_wbc(inode->vfs_inode.i_mapping, wbc);
+			ret = filemap_fdatawrite_wbc(tmp_inode->i_mapping, wbc);
 			btrfs_add_delayed_iput(inode);
 			if (ret || wbc->nr_to_write <= 0)
 				goto out;
-- 
2.47.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
