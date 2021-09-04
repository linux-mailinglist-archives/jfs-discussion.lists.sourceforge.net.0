Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B10F2400956
	for <lists+jfs-discussion@lfdr.de>; Sat,  4 Sep 2021 04:38:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mMLZV-0003e2-NA; Sat, 04 Sep 2021 02:38:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <mudongliangabcd@gmail.com>) id 1mMLZU-0003dv-7m
 for jfs-discussion@lists.sourceforge.net; Sat, 04 Sep 2021 02:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3JPTdUwvyk1gA7gUvlVpOs/m2+cd0OzoZLCglRS429w=; b=NkEg4XPvzXImV+6UP7YpoJXghl
 cQVFr4mkXo9OMZ5EsOxTmPnBbhGkbIKQnzqG/f/ZIIXXXPsasxkSEEWLQ0Mj8s7o+tlS0eFzwLPHy
 O5T8II2bfy0Av8CmUM/fPRoSWkvNnhFDXU3L9WFKi87GowMlknyS6+WC0h6d2v1mEIaQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3JPTdUwvyk1gA7gUvlVpOs/m2+cd0OzoZLCglRS429w=; b=a
 gKKYqSzP6HN2mGhWWgf1zhMdlnkw51E+mIADiMITodGw/nDgbRLhS7VQCbhks2V35d2pukPN9odQc
 b5FTYroiE1DhTqiWtRh287Ab8qM1mIYF9UR3Az4CyZqGKTMuyv7nfnFJA116Rb2QZXeMvDv6ceoft
 kkXvyHoxNyTiYxUw=;
Received: from mail-pj1-f47.google.com ([209.85.216.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mMLZT-00Dsbx-HU
 for jfs-discussion@lists.sourceforge.net; Sat, 04 Sep 2021 02:38:20 +0000
Received: by mail-pj1-f47.google.com with SMTP id
 n13-20020a17090a4e0d00b0017946980d8dso687980pjh.5
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 03 Sep 2021 19:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3JPTdUwvyk1gA7gUvlVpOs/m2+cd0OzoZLCglRS429w=;
 b=EeDsTRAjbWKMy7c9STNLw837RR1O8FVXGJJ7fhmgcsMGU0q6dRrP/KY+FvlZwy4sSf
 4o64rhxRDWmsXShIHq92PaIHNCeBBNpInGATmmg+pYkM64LsRz9kXLhZ5WEHV+2DOSgY
 Lkf7Xkrl3FpJbrJ+Ob6dj8IfVsGvuXKuTy21kv4YJjJo+Qk9F9UenWVTNne1R+HR5KV6
 s7PYctM8lAcUGx+I7uHNp5IjTsilBE8k2NGRY2k224FpM5hvtNLCm7G6LA+VFfOiRss3
 EW3Y6TUu4DkToWXciDmiaIyAw+hfk/VpKgOHn2vpJ9TQWW6dfy9fhKk0HcBzwXkxwYWP
 ayMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3JPTdUwvyk1gA7gUvlVpOs/m2+cd0OzoZLCglRS429w=;
 b=BvRngpru6+gE287ZoYw9oUeJVLGrhPHzo32hKP/3PEiA9cfnVUXwibICzoHmt82AjR
 w+J9nsfnXoHRD5rj0rnvOsb3UiVn4o+dKcm6GsT0Us9MBXotBy/k/VGbV+brR7wUS/7f
 GCMxZ22g9s1l8obMVAn0Okhx/9QFiDHLth2MtbRFyEivrcT7JYHgKRF5ngM6XG/PAtyZ
 SCKKgszDlzF2URETY2l3Sb09CzhRFlYeDgU1SMQi6/6/1HxMLXF696U0Q5yqAzeahAUI
 cSmvaM2CKHEcLgUk0dZMPXCpHDWQn/7M1ouKb0XsLfwQP1DgHrE6i3slRvGg+up/THTe
 EJ2A==
X-Gm-Message-State: AOAM532jXcMDdUxA8Acgdu8OxYUMPUWrEtpFQ4HdPJOVSGlEAbUoe8TH
 Zj2TAZeJzAKf/G3ryM6QLhwroMUja8VcW5tn
X-Google-Smtp-Source: ABdhPJzDBorMIDhxDqeSwnExGfafnpKI/eBSHxvQXTU+mBUkjwGScnrGMDx4FvSg+FxQnzICi+Jq9Q==
X-Received: by 2002:a17:90a:aa14:: with SMTP id
 k20mr2006370pjq.88.1630723093603; 
 Fri, 03 Sep 2021 19:38:13 -0700 (PDT)
Received: from localhost.localdomain ([45.135.186.104])
 by smtp.gmail.com with ESMTPSA id g2sm600455pfr.35.2021.09.03.19.38.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 19:38:13 -0700 (PDT)
From: Dongliang Mu <mudongliangabcd@gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Sat,  4 Sep 2021 10:37:41 +0800
Message-Id: <20210904023800.1813036-1-mudongliangabcd@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In jfs_mount, when diMount(ipaimap2) fails,
 it goes to errout35.
 However, the following code does not free ipaimap2 allocated by diReadSpecial.
 Fix this by refactoring the error handling code of jfs_mount. To be specific, 
 modify the lable name and free ipaimap2 when the above error ocurrs. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mudongliangabcd[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.47 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mMLZT-00Dsbx-HU
Subject: [Jfs-discussion] [PATCH v2] JFS: fix memleak in jfs_mount
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
Cc: jfs-discussion@lists.sourceforge.net,
 Dongliang Mu <mudongliangabcd@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In jfs_mount, when diMount(ipaimap2) fails, it goes to errout35. However,
the following code does not free ipaimap2 allocated by diReadSpecial.

Fix this by refactoring the error handling code of jfs_mount. To be
specific, modify the lable name and free ipaimap2 when the above error
ocurrs.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
---
v1->v2: change "return rc" to "goto out"; fix one coding style
 fs/jfs/jfs_mount.c | 51 ++++++++++++++++++++--------------------------
 1 file changed, 22 insertions(+), 29 deletions(-)

diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
index 5d7d7170c03c..aa4ff7bcaff2 100644
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -81,14 +81,14 @@ int jfs_mount(struct super_block *sb)
 	 * (initialize mount inode from the superblock)
 	 */
 	if ((rc = chkSuper(sb))) {
-		goto errout20;
+		goto out;
 	}
 
 	ipaimap = diReadSpecial(sb, AGGREGATE_I, 0);
 	if (ipaimap == NULL) {
 		jfs_err("jfs_mount: Failed to read AGGREGATE_I");
 		rc = -EIO;
-		goto errout20;
+		goto out;
 	}
 	sbi->ipaimap = ipaimap;
 
@@ -99,7 +99,7 @@ int jfs_mount(struct super_block *sb)
 	 */
 	if ((rc = diMount(ipaimap))) {
 		jfs_err("jfs_mount: diMount(ipaimap) failed w/rc = %d", rc);
-		goto errout21;
+		goto err_ipaimap;
 	}
 
 	/*
@@ -108,7 +108,7 @@ int jfs_mount(struct super_block *sb)
 	ipbmap = diReadSpecial(sb, BMAP_I, 0);
 	if (ipbmap == NULL) {
 		rc = -EIO;
-		goto errout22;
+		goto err_umount_ipaimap;
 	}
 
 	jfs_info("jfs_mount: ipbmap:0x%p", ipbmap);
@@ -120,7 +120,7 @@ int jfs_mount(struct super_block *sb)
 	 */
 	if ((rc = dbMount(ipbmap))) {
 		jfs_err("jfs_mount: dbMount failed w/rc = %d", rc);
-		goto errout22;
+		goto err_ipbmap;
 	}
 
 	/*
@@ -139,7 +139,7 @@ int jfs_mount(struct super_block *sb)
 		if (!ipaimap2) {
 			jfs_err("jfs_mount: Failed to read AGGREGATE_I");
 			rc = -EIO;
-			goto errout35;
+			goto err_umount_ipbmap;
 		}
 		sbi->ipaimap2 = ipaimap2;
 
@@ -151,7 +151,7 @@ int jfs_mount(struct super_block *sb)
 		if ((rc = diMount(ipaimap2))) {
 			jfs_err("jfs_mount: diMount(ipaimap2) failed, rc = %d",
 				rc);
-			goto errout35;
+			goto err_ipaimap2;
 		}
 	} else
 		/* Secondary aggregate inode table is not valid */
@@ -168,7 +168,7 @@ int jfs_mount(struct super_block *sb)
 		jfs_err("jfs_mount: Failed to read FILESYSTEM_I");
 		/* open fileset secondary inode allocation map */
 		rc = -EIO;
-		goto errout40;
+		goto err_umount_ipaimap2;
 	}
 	jfs_info("jfs_mount: ipimap:0x%p", ipimap);
 
@@ -178,41 +178,34 @@ int jfs_mount(struct super_block *sb)
 	/* initialize fileset inode allocation map */
 	if ((rc = diMount(ipimap))) {
 		jfs_err("jfs_mount: diMount failed w/rc = %d", rc);
-		goto errout41;
+		goto err_ipimap;
 	}
 
-	goto out;
+	return rc;
 
 	/*
 	 *	unwind on error
 	 */
-      errout41:		/* close fileset inode allocation map inode */
+err_ipimap:
+	/* close fileset inode allocation map inode */
 	diFreeSpecial(ipimap);
-
-      errout40:		/* fileset closed */
-
+err_umount_ipaimap2:
 	/* close secondary aggregate inode allocation map */
-	if (ipaimap2) {
+	if (ipaimap2)
 		diUnmount(ipaimap2, 1);
+err_ipaimap2:
+	/* close aggregate inodes */
+	if (ipaimap2)
 		diFreeSpecial(ipaimap2);
-	}
-
-      errout35:
-
-	/* close aggregate block allocation map */
+err_umount_ipbmap:	/* close aggregate block allocation map */
 	dbUnmount(ipbmap, 1);
+err_ipbmap:		/* close aggregate inodes */
 	diFreeSpecial(ipbmap);
-
-      errout22:		/* close aggregate inode allocation map */
-
+err_umount_ipaimap:	/* close aggregate inode allocation map */
 	diUnmount(ipaimap, 1);
-
-      errout21:		/* close aggregate inodes */
+err_ipaimap:		/* close aggregate inodes */
 	diFreeSpecial(ipaimap);
-      errout20:		/* aggregate closed */
-
-      out:
-
+out:
 	if (rc)
 		jfs_err("Mount JFS Failure: %d", rc);
 
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
