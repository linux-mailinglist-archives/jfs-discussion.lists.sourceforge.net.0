Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C60333C8
	for <lists+jfs-discussion@lfdr.de>; Mon,  3 Jun 2019 17:42:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hXp60-0008Nr-0M; Mon, 03 Jun 2019 15:42:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hXofq-0001oK-Om
 for jfs-discussion@lists.sourceforge.net; Mon, 03 Jun 2019 15:14:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vh8QxY/2eU+MfTlkrwtovUOL/D1P2VcUf2erRfP82cY=; b=dzzg2/osaEmQAPiZjCj5WHQCd5
 8J4oTj5sXkRg1WGn12q9vByekfrAXcSMBrZg9ZDiLTg/FfLkzUKaicJ4uvFf/CqHeQta/5U6xOqtr
 GD6MHZCBY0f0ad65oBe9CP1E5Gk7uMVUOAS0mK445VKptTzBsUAdZ528+yTxfrjnSOMk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vh8QxY/2eU+MfTlkrwtovUOL/D1P2VcUf2erRfP82cY=; b=GR1bQTbuw2amsjhssfGN1iKqU7
 SokJ7NrAyZIWtNCaQFn6zdaIQpwGtII6yampNmSH1lsGcqtLmjXNEBrbxeFTCyG6D07JzQ3HLHS+f
 YQ61WUKg5TDNYjyfq+e/kAKdcsRwodW7zEeVPQGgbx0BGxNlm6g30AWZ2pL0pefP/JfA=;
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hXofn-003gRb-Nj
 for jfs-discussion@lists.sourceforge.net; Mon, 03 Jun 2019 15:14:58 +0000
Received: by mail-pl1-f193.google.com with SMTP id i2so2766606plt.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 03 Jun 2019 08:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anmolsarma-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=vh8QxY/2eU+MfTlkrwtovUOL/D1P2VcUf2erRfP82cY=;
 b=yZZr6/nr9vkqfmkjjdK1uR7KFZ3AMWpppOqzo9C9M32PmkKnn6saqWgctwYKYjzTpx
 8RWsqfeSrvmO8GCxJ0pfojSWVqEBdhwjIKu8D1enJ0lCm1hn3VFgReH89XnWcgbBaxmp
 L3hpfGOlRoQEWlE53vr+rqN30EyYteo6pDOzNMdDN5ICaVejxhoy68DLHk7ZMN81Kh/h
 FxPo2WGOf5V6XnHXn5jS/+Zat0a6gYTN2quApMDkB+RX68Zr7Rck0VI+ZYZb6RSzb+Le
 +Yvzir+ryhQWVmcWWFYiJvuVGyuThRt1ZLWg2O6R39V1R+5v1PiJndF2Di4RYVDkuHIz
 Xnnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vh8QxY/2eU+MfTlkrwtovUOL/D1P2VcUf2erRfP82cY=;
 b=Vyyy8y6mzp+ff3UgrPZ23szWHhEh1SBmzfqbjF/lUHVHtSQV1KCvsswo2lAp9flWkv
 fsc6NuO6S3TGP3m9AkBbTXMqrEPt0h4nmVOQC8/lFh9LC/8nw/45MviUROjwYfrPCyYj
 0fHYvvfadJvbbbQ9qllwGDSzSNIjve8clQzzaAiUWWvyX6aRtEt0QIvLYZ2ok4knO1vg
 VZRTY3CexMho2oIdxcFLM1Y0P4PinuW6m/PNKLgpr3YDLgyWgeFcTk2jlmdXb8diSvzB
 xOqt3Cn+9xHmkg0Dszr1w4hhxkr7NwTMfGz66/0wWmtTwopuTbptv34+4NPghPUkxu7v
 H7pg==
X-Gm-Message-State: APjAAAUTO2Ld+6NarhdvaSUM29zaAko72TqX2+NTAVFnfAbS8FYNOW/c
 JBpqtBg0RqorxapZVV8A3ysdzA==
X-Google-Smtp-Source: APXvYqxVjZt/iW4xJLSbfWc9jsq1qM0z8MTGZnQ6UBLvK8vDS3W571PkyUEC2Nn4RbJVbcaw0Jc9FA==
X-Received: by 2002:a17:902:363:: with SMTP id
 90mr30305076pld.131.1559574890142; 
 Mon, 03 Jun 2019 08:14:50 -0700 (PDT)
Received: from localhost.localdomain ([1.39.185.36])
 by smtp.gmail.com with ESMTPSA id n66sm4754916pfn.52.2019.06.03.08.14.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 08:14:49 -0700 (PDT)
From: Anmol Sarma <me@anmolsarma.in>
X-Google-Original-From: Anmol Sarma
To: 
Date: Mon,  3 Jun 2019 20:42:27 +0530
Message-Id: <20190603151227.6110-1-me@anmolsarma.in>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.193 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: anmolsarma.in]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hXofn-003gRb-Nj
X-Mailman-Approved-At: Mon, 03 Jun 2019 15:41:59 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Add statx support
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
Cc: Dave Kleikamp <shaggy@kernel.org>, Anmol Sarma <me@anmolsarma.in>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Anmol Sarma <me@anmolsarma.in>

Return inode creation time and stx_attributes flags

Signed-off-by: Anmol Sarma <me@anmolsarma.in>
---
 fs/jfs/file.c      | 24 ++++++++++++++++++++++++
 fs/jfs/jfs_inode.h |  2 ++
 fs/jfs/namei.c     |  1 +
 fs/jfs/symlink.c   |  2 ++
 4 files changed, 29 insertions(+)

diff --git a/fs/jfs/file.c b/fs/jfs/file.c
index 36665fd37095..dedd27591836 100644
--- a/fs/jfs/file.c
+++ b/fs/jfs/file.c
@@ -23,6 +23,7 @@
 #include <linux/quotaops.h>
 #include "jfs_incore.h"
 #include "jfs_inode.h"
+#include "jfs_dinode.h"
 #include "jfs_dmap.h"
 #include "jfs_txnmgr.h"
 #include "jfs_xattr.h"
@@ -139,8 +140,31 @@ int jfs_setattr(struct dentry *dentry, struct iattr *iattr)
 	return rc;
 }
 
+int jfs_getattr(const struct path *path, struct kstat *stat, u32 request_mask,
+		unsigned int query_flags)
+{
+	struct inode *inode = d_inode(path->dentry);
+	struct jfs_inode_info *j_inode = JFS_IP(inode);
+	uint ji_flags = j_inode->mode2;
+
+	stat->result_mask |= STATX_BTIME;
+	stat->btime.tv_sec = j_inode->otime;
+	stat->btime.tv_nsec = 0;
+
+	if (ji_flags & JFS_APPEND_FL)
+		stat->attributes |= STATX_ATTR_APPEND;
+	if (ji_flags & JFS_IMMUTABLE_FL)
+		stat->attributes |= STATX_ATTR_IMMUTABLE;
+
+	stat->attributes_mask |= STATX_ATTR_APPEND | STATX_ATTR_IMMUTABLE;
+
+	generic_fillattr(inode, stat);
+	return 0;
+}
+
 const struct inode_operations jfs_file_inode_operations = {
 	.listxattr	= jfs_listxattr,
+	.getattr	= jfs_getattr,
 	.setattr	= jfs_setattr,
 #ifdef CONFIG_JFS_POSIX_ACL
 	.get_acl	= jfs_get_acl,
diff --git a/fs/jfs/jfs_inode.h b/fs/jfs/jfs_inode.h
index 7b0b3a40788f..e8279a4cb7f7 100644
--- a/fs/jfs/jfs_inode.h
+++ b/fs/jfs/jfs_inode.h
@@ -39,6 +39,8 @@ extern struct dentry *jfs_fh_to_parent(struct super_block *sb, struct fid *fid,
 	int fh_len, int fh_type);
 extern void jfs_set_inode_flags(struct inode *);
 extern int jfs_get_block(struct inode *, sector_t, struct buffer_head *, int);
+extern int jfs_getattr(const struct path *path, struct kstat *stat,
+		       u32 request_mask, unsigned int query_flags);
 extern int jfs_setattr(struct dentry *, struct iattr *);
 
 extern const struct address_space_operations jfs_aops;
diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index fa719a1553b6..8070c25f7551 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -1533,6 +1533,7 @@ const struct inode_operations jfs_dir_inode_operations = {
 	.mknod		= jfs_mknod,
 	.rename		= jfs_rename,
 	.listxattr	= jfs_listxattr,
+	.getattr	= jfs_getattr,
 	.setattr	= jfs_setattr,
 #ifdef CONFIG_JFS_POSIX_ACL
 	.get_acl	= jfs_get_acl,
diff --git a/fs/jfs/symlink.c b/fs/jfs/symlink.c
index 38320607993e..858e9de8ff74 100644
--- a/fs/jfs/symlink.c
+++ b/fs/jfs/symlink.c
@@ -23,12 +23,14 @@
 
 const struct inode_operations jfs_fast_symlink_inode_operations = {
 	.get_link	= simple_get_link,
+	.getattr	= jfs_getattr,
 	.setattr	= jfs_setattr,
 	.listxattr	= jfs_listxattr,
 };
 
 const struct inode_operations jfs_symlink_inode_operations = {
 	.get_link	= page_get_link,
+	.getattr	= jfs_getattr,
 	.setattr	= jfs_setattr,
 	.listxattr	= jfs_listxattr,
 };
-- 
2.17.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
