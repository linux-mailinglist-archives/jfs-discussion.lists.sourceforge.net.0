Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7685353F8
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 May 2022 21:29:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuJAz-0002pU-B5; Thu, 26 May 2022 19:29:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuJAx-0002ou-Oi
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m5kSAorTKHqAiImG8w+f7lMP3eiW2gQkHIrZBORqjjE=; b=Aaa1GGRw2BEsjvfetkdKaE2S44
 Qv9Cc/OKNvwkFKlkwskwF8jEzyzZ4vYVKzt4CbYK8ujIQf7pgdHgVW03cN6l9XMPMMNhGXjMozMOZ
 T1gKP7xwOJo5ZGF0eHxEYFau/q35DhQNcOY+9+OII54u2YxUlaRUUAzkK9jDeMSe1gw8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m5kSAorTKHqAiImG8w+f7lMP3eiW2gQkHIrZBORqjjE=; b=VZ/34xplyotiB1+tcPyXJwZop1
 Kn3aNHli8tIMvHEH9fD5Q3jKR4HFNLARBru3xEc65lHeHXmBQ3aB6eoyBzMT+v5mU6PYozS4FO9Ui
 o9jqD19HZaL0wJwRBsbYOFSHOJyVXxPl0of/MzaGC0X86s0Hr2gCvEXYDqr1pT60a0h0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuJAr-0000tA-F3
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=m5kSAorTKHqAiImG8w+f7lMP3eiW2gQkHIrZBORqjjE=; b=eHVXSz5/mts7NdVRxF/PgQdQ5P
 7QVIMMKWtWkesGFGC2f5CnFSv75Px4EFICivOxRDSAiE4VQdSda6AclZ0n9qZxgmXuBrZr7v9l0Il
 pFcJx2S7ctmTBobKEROx4vecFbtEa17mWzjT+QkI3baPlHFvTXs3irTvBdCEz3N2gu0mfyOoNWooT
 Jj1WHQss5T60+XIrO+fe1k89zSyKadrBiKB4bNdJq3QX5xeoH+Yo8h8Vhz9766yo/+ovlXaOdQoWX
 lLxzEV/yJIWqYox8/T5w4xehOgBGEdf/Vhd2Z2BmWX+wFE2nCoxM2XQTK/IfsS+AA8OLxOEazne+C
 JbmGCgmw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuJAa-001UuT-RA; Thu, 26 May 2022 19:29:16 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net,
	linux-fsdevel@vger.kernel.org
Date: Thu, 26 May 2022 20:29:05 +0100
Message-Id: <20220526192910.357055-5-willy@infradead.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220526192910.357055-1-willy@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use the new iomap support to handle direct IO writes.
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/jfs/file.c | 36
 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-) 
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
X-Headers-End: 1nuJAr-0000tA-F3
Subject: [Jfs-discussion] [RFC PATCH 4/9] jfs: Convert direct_IO write
 support to use iomap
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
Cc: Christoph Hellwig <hch@infradead.org>,
 "Darrick J . Wong" <djwong@kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Use the new iomap support to handle direct IO writes.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/file.c | 36 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/file.c b/fs/jfs/file.c
index 0d074a9e0f77..bf9d4475ddb5 100644
--- a/fs/jfs/file.c
+++ b/fs/jfs/file.c
@@ -4,6 +4,7 @@
  *   Portions Copyright (C) Christoph Hellwig, 2001-2002
  */
 
+#include <linux/backing-dev.h>
 #include <linux/fs.h>
 #include <linux/iomap.h>
 #include <linux/mm.h>
@@ -86,6 +87,39 @@ static ssize_t jfs_read_iter(struct kiocb *iocb, struct iov_iter *to)
 	return generic_file_read_iter(iocb, to);
 }
 
+static ssize_t jfs_write_iter(struct kiocb *iocb, struct iov_iter *from)
+{
+	struct file *file = iocb->ki_filp;
+	struct inode *inode = file->f_mapping->host;
+	ssize_t ret;
+
+	inode_lock(inode);
+	current->backing_dev_info = inode_to_bdi(inode);
+
+	ret = generic_write_checks(iocb, from);
+	if (ret <= 0)
+		goto err;
+	ret = file_remove_privs(file);
+	if (ret < 0)
+		goto err;
+	ret = file_update_time(file);
+	if (ret < 0)
+		goto err;
+
+	if (iocb->ki_flags & IOCB_DIRECT)
+		ret = iomap_dio_rw(iocb, from, &jfs_iomap_ops, NULL,
+				IOMAP_DIO_NOSYNC, NULL, 0);
+	else
+		ret = __generic_file_write_iter(iocb, from);
+
+err:
+	current->backing_dev_info = NULL;
+	inode_unlock(inode);
+	if (ret > 0)
+		ret = generic_write_sync(iocb, ret);
+	return ret;
+}
+
 static int jfs_release(struct inode *inode, struct file *file)
 {
 	struct jfs_inode_info *ji = JFS_IP(inode);
@@ -158,7 +192,7 @@ const struct file_operations jfs_file_operations = {
 	.open		= jfs_open,
 	.llseek		= generic_file_llseek,
 	.read_iter	= jfs_read_iter,
-	.write_iter	= generic_file_write_iter,
+	.write_iter	= jfs_write_iter,
 	.mmap		= generic_file_mmap,
 	.splice_read	= generic_file_splice_read,
 	.splice_write	= iter_file_splice_write,
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
