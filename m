Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA1720B35B
	for <lists+jfs-discussion@lfdr.de>; Fri, 26 Jun 2020 16:17:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jop9r-0007FC-5L; Fri, 26 Jun 2020 14:16:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cgxu519@mykernel.net>) id 1johHA-0000a1-Qq
 for jfs-discussion@lists.sourceforge.net; Fri, 26 Jun 2020 05:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=38p+ZZeAwAW4P+uY9+lkPLWkJahkcxqdsw/dCI+H5mM=; b=c9HH9gBu6J53KSd5ROr4yV51Jr
 +iFyu14rlvWn6Y95ykJ43I/0czy1nUfHzeplbc1mwApSYPoBe80gxnD9sbuMJ4+L3uKFAirQ97D92
 3ohJKA2oY7SUUc5ysKfDWJIWS1Rqx0DLA7zbqMAJo8dT3nbf8Vl722E3UAnK0zN0Zy1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Date:Subject:
 Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=38p+ZZeAwAW4P+uY9+lkPLWkJahkcxqdsw/dCI+H5mM=; b=Xau9lRIbImBeqK0U5Aztg9Ws21
 mAMrPquhsloggFATakKONZLOfc391fQjCFkTLiwpi2/gkM72VkDpNvg0L8WAQBgyJ/pZcXToxHTmG
 SkCjVWfGwTO4fBzkHJFqbsG6YHckKlg/pBSou17aVPsODJyCsecRZ7tczdaqtAF+nHP8=;
Received: from [163.53.93.243] (helo=sender2-op-o12.zoho.com.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1johGx-001aDX-6i
 for jfs-discussion@lists.sourceforge.net; Fri, 26 Jun 2020 05:51:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1593150670; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=iNbDzhqENpkMVl0rboMbjSsg5064dC1MVzoDJTcBQ8lF3QEFfvlYbTogybTXEZFE6uPIFrP1xfxBYJwISqM6k0iPktRZvSCYqxKx/R0Xx1l+1e6SGSVVMNs2+hAWhznUSWPTc1b+CAyTc8hXhi5n9WbNiXgBVkZDQuCFukEIdqc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1593150670;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=38p+ZZeAwAW4P+uY9+lkPLWkJahkcxqdsw/dCI+H5mM=; 
 b=cEBfe2pRLFYYaojbkEN7y9bYP6ckjCtFLvmudUgavaYoKJcTt35guEuf9PyKlMxstKXVIzLF+4xOmivTPuKh+KjnSohs8/j44CK1EwRtzHAZxOtpF/l60/CvS/RfARBtfJCUDHtdhkrd+48LAV4FcqZV8BBQESSTgerLQxyJepI=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=mykernel.net;
 spf=pass  smtp.mailfrom=cgxu519@mykernel.net;
 dmarc=pass header.from=<cgxu519@mykernel.net>
 header.from=<cgxu519@mykernel.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1593150670; 
 s=zohomail; d=mykernel.net; i=cgxu519@mykernel.net;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=38p+ZZeAwAW4P+uY9+lkPLWkJahkcxqdsw/dCI+H5mM=;
 b=OjFX4+S1nEWL5+IyRYl/zWT53otJ+r+Z0vy6aLnedPL3ZykWPvdGCNNgkasyrRiD
 c9XcDVyCQE91bMCag+cHG/Iwjfb6FfFRODQCRxO0u99TRTGM6t9K0uL2JJWN/8nhouv
 iyg5HJ/uXU8M95SjPUoNtPKkgp3WRAxjLGXZuB7E=
Received: from localhost.localdomain (116.30.194.71 [116.30.194.71]) by
 mx.zoho.com.cn with SMTPS id 1593150668492488.9291615956349;
 Fri, 26 Jun 2020 13:51:08 +0800 (CST)
From: Chengguang Xu <cgxu519@mykernel.net>
To: shaggy@kernel.org
Message-ID: <20200626055106.114239-1-cgxu519@mykernel.net>
Date: Fri, 26 Jun 2020 13:51:06 +0800
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [163.53.93.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1johGx-001aDX-6i
X-Mailman-Approved-At: Fri, 26 Jun 2020 14:16:43 +0000
Subject: [Jfs-discussion] [PATCH] jfs: initialize quota info in EA operations
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
Cc: Chengguang Xu <cgxu519@mykernel.net>, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In order to correctly account/limit space usage, should initialize
quota info before calling quota related functions.

Signed-off-by: Chengguang Xu <cgxu519@mykernel.net>
---
 fs/jfs/xattr.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
index db41e7803163..c8a62c3f29d5 100644
--- a/fs/jfs/xattr.c
+++ b/fs/jfs/xattr.c
@@ -666,6 +666,10 @@ int __jfs_setxattr(tid_t tid, struct inode *inode, const char *name,
 	int rc;
 	int length;
 
+	rc = dquot_initialize(inode);
+	if (rc)
+		return rc;
+
 	down_write(&JFS_IP(inode)->xattr_sem);
 
 	xattr_size = ea_get(inode, &ea_buf, 0);
@@ -801,6 +805,11 @@ ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
 	ssize_t size;
 	int namelen = strlen(name);
 	char *value;
+	int rc;
+
+	rc = dquot_initialize(inode);
+	if (rc)
+		return rc;
 
 	down_read(&JFS_IP(inode)->xattr_sem);
 
@@ -861,6 +870,11 @@ ssize_t jfs_listxattr(struct dentry * dentry, char *data, size_t buf_size)
 	struct jfs_ea_list *ealist;
 	struct jfs_ea *ea;
 	struct ea_buffer ea_buf;
+	int rc;
+
+	rc = dquot_initialize(inode);
+	if (rc)
+		return rc;
 
 	down_read(&JFS_IP(inode)->xattr_sem);
 
-- 
2.26.2




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
