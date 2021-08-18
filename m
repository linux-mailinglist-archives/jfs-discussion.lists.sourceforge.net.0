Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7683F05C9
	for <lists+jfs-discussion@lfdr.de>; Wed, 18 Aug 2021 16:09:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mGMFW-0005jN-LL; Wed, 18 Aug 2021 14:08:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <mudongliangabcd@gmail.com>) id 1mGImN-0000iV-2e
 for jfs-discussion@lists.sourceforge.net; Wed, 18 Aug 2021 10:26:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CIWpHyvhjM0v5hQGy4X7aU8xDXyHu3qVpUT347taFHQ=; b=hwplSYg5Id6Y9fZyrd6FKyDsS6
 ubNXFy4PqKhJI77KZiqRmOuUF4HwIfCjm3Xq2UFfF7s2JRbRfnM8ZfiMxUxaC3ZCkB9PJ4CpsnLUv
 6SoN/6mwWCoQnyI//q8YLHoeYMsIzm8WTF7LmrrH9RQvTbvutz2zEHqEXnRbMLDuYyjY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CIWpHyvhjM0v5hQGy4X7aU8xDXyHu3qVpUT347taFHQ=; b=f
 opa/GSdMih+Xm/7ZSQ3/G7khcoxmPOxJfJyaLErMmVlyaFXiW3a5myJVzbdi+ftV5ZpUK1ZSaXWhH
 49IbxNE6HSB+qGivl81TfLp59k1uBSELgNBCaudiFlcPizmOMzqZEC7JdmtZDyqLae9VEg1hoa8Jg
 4dTNRQDyD3Jom9oM=;
Received: from mail-pf1-f181.google.com ([209.85.210.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mGImL-00AMNc-B0
 for jfs-discussion@lists.sourceforge.net; Wed, 18 Aug 2021 10:26:39 +0000
Received: by mail-pf1-f181.google.com with SMTP id 7so1654661pfl.10
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 18 Aug 2021 03:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CIWpHyvhjM0v5hQGy4X7aU8xDXyHu3qVpUT347taFHQ=;
 b=EXvhJ9Nu2nrBbZ6Kanq7eyBFqYWQXpGM8xkALu2XfED/27p+Qdi133Et62KZ/DzHRb
 TqwgZhrIttVm/05nWTZ6rB+8vnGrIi+rgaG3nwStlHVoJdOSIN2ZpfAh8TB6ASZq3sJw
 hQJX1LdAz/RgcgVaor/da3Or9X33Nkt8BU9uRiYpHJOQ6e/BKcoOm9BLAibYFkAYgqIG
 K38BAVmotQm4KpKIgnJo2faCP5Dlu/Y5drsLnA4jCNFbg9WNUUf54j79XrUdtSHukh+q
 WRDEegQijaTjtJ/77c+JdA6zlYmAmhHC4B9F8hhfdgNGPv0FJFw7WdxQ/yCY4N4NAtJN
 0nng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CIWpHyvhjM0v5hQGy4X7aU8xDXyHu3qVpUT347taFHQ=;
 b=PDraZlQPUMhUTd4Y8QtmDKxImok45iiZOIFQCGu1gof+RZBYxG+6JCqRYOb3iPdfMR
 on1TxHzEAui0ohFP1+uUJ0Q9UJsaiYpCX0QIBPzNboNHlxkDhpnovRu2WHIrbdFPElBi
 z05SnQ3/TT706yDP72ltCX0GQpYmOlMOghhK6O9MyYAK8Wz4SvOkRXRT4o7mi5a+yabA
 3M6j+7mFaQ1z6nmpaX9HpUtlj46GRAvhBhMVhD5eZMHkEFFyET0kzRLHJYEBlxTBxyAU
 GaK+BEUmWAopr/mQ7Tr+DBySXYM8sHy6XXRE+lwzIfvsxYG/hRBu+Y5KV4Km8k4C+T26
 Lcaw==
X-Gm-Message-State: AOAM530VCa+ZF0mkjBAqgB9/8jKvZu5NVh4uUn4XNavOChd1zBZ+oPMF
 xR3uXZAPjDjJOg4Me4/Arl4=
X-Google-Smtp-Source: ABdhPJyelo8/aD3dOcCAmMFcIhm2DX/Do78AVsOE0x/pYJKj7o2q1NfZJcGkIEYuIPxBErdd4ZTe7g==
X-Received: by 2002:a62:65c7:0:b029:3c3:4eff:1b26 with SMTP id
 z190-20020a6265c70000b02903c34eff1b26mr8345347pfb.48.1629282391731; 
 Wed, 18 Aug 2021 03:26:31 -0700 (PDT)
Received: from localhost.localdomain ([154.16.166.182])
 by smtp.gmail.com with ESMTPSA id c12sm5396258pfl.56.2021.08.18.03.26.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 03:26:31 -0700 (PDT)
From: Dongliang Mu <mudongliangabcd@gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 18 Aug 2021 18:25:58 +0800
Message-Id: <20210818102612.864127-1-mudongliangabcd@gmail.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.181 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mudongliangabcd[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.181 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mGImL-00AMNc-B0
X-Mailman-Approved-At: Wed, 18 Aug 2021 14:08:55 +0000
Subject: [Jfs-discussion] [PATCH] JFS: fix memleak in jfs_mount
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
 fs/jfs/jfs_mount.c | 53 +++++++++++++++++++---------------------------
 1 file changed, 22 insertions(+), 31 deletions(-)

diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
index 5d7d7170c03c..638a4ecc4069 100644
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -81,14 +81,14 @@ int jfs_mount(struct super_block *sb)
 	 * (initialize mount inode from the superblock)
 	 */
 	if ((rc = chkSuper(sb))) {
-		goto errout20;
+		return rc;
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
 
@@ -178,41 +178,32 @@ int jfs_mount(struct super_block *sb)
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
-		diUnmount(ipaimap2, 1);
-		diFreeSpecial(ipaimap2);
-	}
-
-      errout35:
-
-	/* close aggregate block allocation map */
+	if (ipaimap2) diUnmount(ipaimap2, 1);
+err_ipaimap2:
+	/* close aggregate inodes */
+	if (ipaimap2) diFreeSpecial(ipaimap2);
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
