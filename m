Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B10B5778CE5
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Aug 2023 13:05:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qUPxI-0005O0-Cg;
	Fri, 11 Aug 2023 11:05:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qUPxG-0005Nm-UC
 for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Aug 2023 11:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YbL1jB0gw8NcX5YzrxPjacdQT9zshpKmgEF68oHePV8=; b=FrzfmT+6ziXwGXfvzhbVH9GFEQ
 h7mqzKqEWkdPuZDlkgU/a60GKPhE/bKjXOq2JkFhEMZDXNWUOe5YFOhZuOMPRdw2DfOQmdBGfO92g
 PGpnmzq0tAB7ZwNI03sC2g56p0BlBA1OtChkhpFvpTOmfnZUc75vV5eKXrN0U7thfMsc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YbL1jB0gw8NcX5YzrxPjacdQT9zshpKmgEF68oHePV8=; b=RdpK3II9EpQSIF8qNl6bZHku5K
 8Ch35+qiiJzQtow92stqDOcH8K0NoRaxsAilanC9mf3/3+D9F7+wDqZaZXoBoRZfXlIc7B1D8yt3l
 er+GXNkQFnkY2TGzodZSWCtDf+LjtBerXy0k5JBRM7fusTMIujbVKT7iWNpQJJAPLR9g=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qUPxE-002RMe-KG for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Aug 2023 11:05:18 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 7E1CC21887;
 Fri, 11 Aug 2023 11:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1691751906; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YbL1jB0gw8NcX5YzrxPjacdQT9zshpKmgEF68oHePV8=;
 b=HL1yTw5+aJ6DL/4Rhs9ZIcHYInFO8AgIZxxIlhxbesNOetgvOEJyvzJuKYYrjtDJubX0JJ
 q4DqURkrP15+eYkzSU5dW5Ch+SGRI3STSbXDPPFTZ9gbE2sb/PYskTJ8FeNpe1RmKvjdbb
 HRce7WqBWcY78U1L4ouU7j+a2tplUyg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1691751906;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YbL1jB0gw8NcX5YzrxPjacdQT9zshpKmgEF68oHePV8=;
 b=EI4zPSclRIbl6j1Ibij0/oLjP6Iy3LVYsvO4OA+C6HH062J4WoMUcrV5WRIeoMco/nbpvk
 3brVE5Xb487+r3Dw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 6D20B139F3;
 Fri, 11 Aug 2023 11:05:06 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id LCBiGuIV1mR6RQAAMHmgww
 (envelope-from <jack@suse.cz>); Fri, 11 Aug 2023 11:05:06 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 4B8FCA0798; Fri, 11 Aug 2023 13:05:05 +0200 (CEST)
From: Jan Kara <jack@suse.cz>
To: <linux-fsdevel@vger.kernel.org>
Date: Fri, 11 Aug 2023 13:04:55 +0200
Message-Id: <20230811110504.27514-24-jack@suse.cz>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230810171429.31759-1-jack@suse.cz>
References: <20230810171429.31759-1-jack@suse.cz>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4931; i=jack@suse.cz;
 h=from:subject; bh=lvN7YZqBMIuJ4bHhyX7PFELxsVrCCFbKXQjI9mYpAT0=;
 b=owEBbQGS/pANAwAIAZydqgc/ZEDZAcsmYgBk1hXXOJTN7Auk28Uaa4WA8JasOUWzFtv7zPx6jFt4
 r44ih2qJATMEAAEIAB0WIQSrWdEr1p4yirVVKBycnaoHP2RA2QUCZNYV1wAKCRCcnaoHP2RA2dG1CA
 CZr3ui2RT0rCRPpK+RSEnN/+dguzerfN6wQmQqKeLT45yQ16rEC1iU9eI3DTGfkVTgcAamHWVZyq+2
 J2TFV2pn9Fe/ZBjKxHuba6uG+mUCN4X+jfSGfKNq9OPqZWt4Nvt7gqKm4IHWsugev+a2U3E9TnEoch
 x7dBKcPeveCEc33OcWBqpRZefDF7rPAFQnxBbI90jl8y8s6RfzjQHz0jJshJqc1opmBLszf0OwutXn
 oLQPoKEBj8ImobzJJyUwnJHCZ+Ti2TOKRb8RqvCnA/F30aGDeu2vY/V0s3pWpCXGxXuEeEjU7SAfBk
 vimz/1vWpAZC2LfbBBkaKucx6v634Q
X-Developer-Key: i=jack@suse.cz; a=openpgp;
 fpr=93C6099A142276A28BBE35D815BC833443038D8C
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Convert jfs to use bdev_open_by_dev() and pass the handle
 around. CC: Dave Kleikamp <shaggy@kernel.org> CC:
 jfs-discussion@lists.sourceforge.net
 Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com> Signed-off-by: Jan Kara
 <jack@suse.cz> --- fs/jfs/jfs_logmgr.c | 29 ++ [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1qUPxE-002RMe-KG
Subject: [Jfs-discussion] [PATCH 24/29] jfs: Convert to bdev_open_by_dev()
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
Cc: Christoph Hellwig <hch@infradead.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Dave Kleikamp <shaggy@kernel.org>,
 linux-block@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Convert jfs to use bdev_open_by_dev() and pass the handle around.

CC: Dave Kleikamp <shaggy@kernel.org>
CC: jfs-discussion@lists.sourceforge.net
Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Jan Kara <jack@suse.cz>
---
 fs/jfs/jfs_logmgr.c | 29 +++++++++++++++--------------
 fs/jfs/jfs_logmgr.h |  2 +-
 fs/jfs/jfs_mount.c  |  3 ++-
 3 files changed, 18 insertions(+), 16 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index e855b8fde76c..c911d838b8ec 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1058,7 +1058,7 @@ void jfs_syncpt(struct jfs_log *log, int hard_sync)
 int lmLogOpen(struct super_block *sb)
 {
 	int rc;
-	struct block_device *bdev;
+	struct bdev_handle *bdev_handle;
 	struct jfs_log *log;
 	struct jfs_sb_info *sbi = JFS_SBI(sb);
 
@@ -1070,7 +1070,7 @@ int lmLogOpen(struct super_block *sb)
 
 	mutex_lock(&jfs_log_mutex);
 	list_for_each_entry(log, &jfs_external_logs, journal_list) {
-		if (log->bdev->bd_dev == sbi->logdev) {
+		if (log->bdev_handle->bdev->bd_dev == sbi->logdev) {
 			if (!uuid_equal(&log->uuid, &sbi->loguuid)) {
 				jfs_warn("wrong uuid on JFS journal");
 				mutex_unlock(&jfs_log_mutex);
@@ -1100,14 +1100,14 @@ int lmLogOpen(struct super_block *sb)
 	 * file systems to log may have n-to-1 relationship;
 	 */
 
-	bdev = blkdev_get_by_dev(sbi->logdev, BLK_OPEN_READ | BLK_OPEN_WRITE,
-				 log, NULL);
-	if (IS_ERR(bdev)) {
-		rc = PTR_ERR(bdev);
+	bdev_handle = bdev_open_by_dev(sbi->logdev,
+			BLK_OPEN_READ | BLK_OPEN_WRITE, log, NULL);
+	if (IS_ERR(bdev_handle)) {
+		rc = PTR_ERR(bdev_handle);
 		goto free;
 	}
 
-	log->bdev = bdev;
+	log->bdev_handle = bdev_handle;
 	uuid_copy(&log->uuid, &sbi->loguuid);
 
 	/*
@@ -1141,7 +1141,7 @@ int lmLogOpen(struct super_block *sb)
 	lbmLogShutdown(log);
 
       close:		/* close external log device */
-	blkdev_put(bdev, log);
+	bdev_release(bdev_handle);
 
       free:		/* free log descriptor */
 	mutex_unlock(&jfs_log_mutex);
@@ -1162,7 +1162,7 @@ static int open_inline_log(struct super_block *sb)
 	init_waitqueue_head(&log->syncwait);
 
 	set_bit(log_INLINELOG, &log->flag);
-	log->bdev = sb->s_bdev;
+	log->bdev_handle = sb->s_bdev_handle;
 	log->base = addressPXD(&JFS_SBI(sb)->logpxd);
 	log->size = lengthPXD(&JFS_SBI(sb)->logpxd) >>
 	    (L2LOGPSIZE - sb->s_blocksize_bits);
@@ -1436,7 +1436,7 @@ int lmLogClose(struct super_block *sb)
 {
 	struct jfs_sb_info *sbi = JFS_SBI(sb);
 	struct jfs_log *log = sbi->log;
-	struct block_device *bdev;
+	struct bdev_handle *bdev_handle;
 	int rc = 0;
 
 	jfs_info("lmLogClose: log:0x%p", log);
@@ -1482,10 +1482,10 @@ int lmLogClose(struct super_block *sb)
 	 *	external log as separate logical volume
 	 */
 	list_del(&log->journal_list);
-	bdev = log->bdev;
+	bdev_handle = log->bdev_handle;
 	rc = lmLogShutdown(log);
 
-	blkdev_put(bdev, log);
+	bdev_release(bdev_handle);
 
 	kfree(log);
 
@@ -1972,7 +1972,7 @@ static int lbmRead(struct jfs_log * log, int pn, struct lbuf ** bpp)
 
 	bp->l_flag |= lbmREAD;
 
-	bio = bio_alloc(log->bdev, 1, REQ_OP_READ, GFP_NOFS);
+	bio = bio_alloc(log->bdev_handle->bdev, 1, REQ_OP_READ, GFP_NOFS);
 	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
 	__bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 	BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);
@@ -2113,7 +2113,8 @@ static void lbmStartIO(struct lbuf * bp)
 
 	jfs_info("lbmStartIO");
 
-	bio = bio_alloc(log->bdev, 1, REQ_OP_WRITE | REQ_SYNC, GFP_NOFS);
+	bio = bio_alloc(log->bdev_handle->bdev, 1, REQ_OP_WRITE | REQ_SYNC,
+			GFP_NOFS);
 	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
 	__bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 	BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);
diff --git a/fs/jfs/jfs_logmgr.h b/fs/jfs/jfs_logmgr.h
index 805877ce5020..84aa2d253907 100644
--- a/fs/jfs/jfs_logmgr.h
+++ b/fs/jfs/jfs_logmgr.h
@@ -356,7 +356,7 @@ struct jfs_log {
 				 *    before writing syncpt.
 				 */
 	struct list_head journal_list; /* Global list */
-	struct block_device *bdev; /* 4: log lv pointer */
+	struct bdev_handle *bdev_handle; /* 4: log lv pointer */
 	int serial;		/* 4: log mount serial number */
 
 	s64 base;		/* @8: log extent address (inline log ) */
diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
index b83aae56a1f2..415eb65a36ff 100644
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -430,7 +430,8 @@ int updateSuper(struct super_block *sb, uint state)
 
 	if (state == FM_MOUNT) {
 		/* record log's dev_t and mount serial number */
-		j_sb->s_logdev = cpu_to_le32(new_encode_dev(sbi->log->bdev->bd_dev));
+		j_sb->s_logdev = cpu_to_le32(
+			new_encode_dev(sbi->log->bdev_handle->bdev->bd_dev));
 		j_sb->s_logserial = cpu_to_le32(sbi->log->serial);
 	} else if (state == FM_CLEAN) {
 		/*
-- 
2.35.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
