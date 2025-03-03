Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DB6A4E15D
	for <lists+jfs-discussion@lfdr.de>; Tue,  4 Mar 2025 15:43:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tpTTm-0006dE-4O;
	Tue, 04 Mar 2025 14:42:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <suchitkarunakaran@gmail.com>) id 1toyGv-0005l2-Ok
 for jfs-discussion@lists.sourceforge.net;
 Mon, 03 Mar 2025 05:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nQyMj5PE5gUiweDRcbAeh1T6kmfInpXRvaLuaWvbDMA=; b=j4Ev1POgXoCgQAY8c4v0RFTg5Z
 HjsX8GEQ1f2TGCvmH7QRV2pyVF35+vXFUqYOPI37oJs4nuNmVUVB991+08LFrj1psqqZKqJah2T70
 df8BInFhLEPtFZ62Hudiclaww6mW0MHF/bN0m5ctGYOCEiJTBiyH0CNXicg1THP+q71w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nQyMj5PE5gUiweDRcbAeh1T6kmfInpXRvaLuaWvbDMA=; b=Y
 SueMsufuI5g+r+oqA1JNx5Eu1nkVBxJnV5ZOHgFcZRYmyy3Ox7a3z0c3dbw4trudhWpKnoFWVtfwT
 EpetVOwu3FaL+mhRLlfj2UJGb+NJHzCXirniKdMSueP7haW6IZ80Lhlct+5cQ49L1+iznfLxdMqwX
 8o2ZWj5WVHmUD4p4=;
Received: from mail-pj1-f44.google.com ([209.85.216.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1toyGs-0003Wh-Nu for jfs-discussion@lists.sourceforge.net;
 Mon, 03 Mar 2025 05:23:21 +0000
Received: by mail-pj1-f44.google.com with SMTP id
 98e67ed59e1d1-2fea47bcb51so7986324a91.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 02 Mar 2025 21:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740979393; x=1741584193; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=nQyMj5PE5gUiweDRcbAeh1T6kmfInpXRvaLuaWvbDMA=;
 b=QRXn9hWRFY1lxpRT5HO+D8UpFyPe7pNSyrX4opQjlwogKICt7naL2Odt/qxjYmTIEO
 zhKPZtyd9bTBA+M6axT95f3OQkPKNKXSh1aet0oYpZX3tt7e5QQA9qR6Qe+68DZ6m05y
 2KMhWwM4AB7UHRYTNlRsedS8Wj3FJMNOJv76gp3UMaT8A2CIJeZghvM5W0ZCRDz51QJk
 X0zhjAjBw/HdA+7ZL6m2F/RUoIG84NHFG8ClTtCxjqCLtugq1prxCsiQsSKeY/WcvU3M
 6eyVLGKzhaIJzhRpNjz7LbNGxm7+2xJhY8R31KWN52JaFQ9smef84YSYhr5H6zTQgKZ9
 2t0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740979393; x=1741584193;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nQyMj5PE5gUiweDRcbAeh1T6kmfInpXRvaLuaWvbDMA=;
 b=hG2tgRGRefodUqW3X0IkJGBtFddd4wf1FqXsB1zi8r+OcdU9w8+VAQnEo5z9IdHI/z
 JO/Cv4hb2InVbowWzW8T0AZDaQNyHpOSwOnAr2cXgWFWQa86pK47JH1KZmb4aP+Dil8F
 1cEn5lnfyCAzqry91X5hifgwcpnF3KkVm/aLxWsKvXyAbI3JVgeF7cKR6LMm0HAdYCAJ
 Cl5Xy8KJzGRQfnFNKQb2F0mGukda1g3bMeQzG7WmqhEYuZNxyZ+rYWVH3SGSr3vR9KKk
 g4ZD6kAMJYuVf+13xSfIunTq7+MJdlMtLB6napkQ2JaGjyYEk98gWRim2/GaQ+V6sEro
 AJLg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWIidh6j+yT9yxnek9RjwBUZo01O0TEX9bnEmk7e+4W+oSHvDfYMT+ZJfJizb4CBLpsMu0cwKm26KhDtNFxSg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yyb65AM1AkU4kxvSk+wO6vloo6hCTiivkjLVaje3oU2PJoxAOtq
 lWD0xLiqxkVIwLvXAcUgNqFYBdD3AW5H3SmjKILofQBVnqsslbpa
X-Gm-Gg: ASbGnctxhLQcIdXEseNVvp+1AIppkYC0W4IZ6wUPpOyBv0lZnG4tZXZn1RlfSgB0yCN
 q114JWZoSUwRz1gPVyAjxZHpCyvohbHBsfbVzEDnjvo6CqjIczAcYsP+nXcYznjTIyngRTIDt6Y
 Q9/bd/LQ6Rl+nWnnaBmF95mcbu7OWeMaapMUgWc0pLjZ9FtrLW/KTBi+RAGqHddkZrd803SmEy2
 NhP+axXbBvXd76EcEzQTwsBvd7Hyv5M8KK3URYUpJDyyXLDqDyyPAVe1GrZHsCSvxWgfm1x+dVM
 5uq0gJYpnogTBtiFh94L2IE3PyQ56qQnxHsVX8D25JRIng/JfrnxgMEFxo4urJ0p6AosY/wR
X-Google-Smtp-Source: AGHT+IFC/BljQb5OFwlkFgIbTVSZBE2FadnD93ug9y5ymH8CspR8zNPlkoaoiAnz+Z+9FwRVDg0IMg==
X-Received: by 2002:a05:6a20:3d87:b0:1f0:ee68:aab4 with SMTP id
 adf61e73a8af0-1f2f4d224cemr19344596637.23.1740979392686; 
 Sun, 02 Mar 2025 21:23:12 -0800 (PST)
Received: from localhost.localdomain
 ([2401:4900:232d:15b4:ed40:d86a:9957:4de7])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-aee7de3ad9esm6128503a12.39.2025.03.02.21.23.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Mar 2025 21:23:12 -0800 (PST)
To: shaggy@kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Mon,  3 Mar 2025 10:50:34 +0530
Message-ID: <20250303052034.13420-1-suchitkarunakaran@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Reported-by: kernel test robot Closes: Signed-off-by: Suchit
 Karunakaran --- fs/jfs/jfs_xtree.c | 32 ++++++++++++++++ 1 file changed,
 16 insertions(+),
 16 deletions(-) diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
 index fb736a06ea58..fa4f77b436f0 100644 --- a/fs/jfs/jfs_xtree.c +++
 b/fs/jfs/jfs_xtree.c
 @@ -115,7 +115,7 @@ static inline int xt_getpage(struct i [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [suchitkarunakaran[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.44 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.44 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.44 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.44 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1toyGs-0003Wh-Nu
X-Mailman-Approved-At: Tue, 04 Mar 2025 14:42:38 +0000
Subject: [Jfs-discussion] [PATCH] jfs: jfs_xtree: replace XT_GETPAGE macro
 with xt_getpage() function
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
From: Suchit Karunakaran via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Suchit Karunakaran <suchitkarunakaran@gmail.com>
Cc: Suchit Karunakaran <suchitkarunakaran@gmail.com>,
 kernel test robot <lkp@intel.com>, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202503030707.dKjJdF6z-lkp@intel.com/

Signed-off-by: Suchit Karunakaran <suchitkarunakaran@gmail.com>
---
 fs/jfs/jfs_xtree.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index fb736a06ea58..fa4f77b436f0 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -115,7 +115,7 @@ static inline int xt_getpage(struct inode **ip, s64 bn, struct metapage **mp,
 {
 	int rc;
 
-	BT_GETPAGE(ip, bn, *mp, xtpage_t, size, *p, rc, i_xtroot);
+	BT_GETPAGE(*ip, bn, *mp, xtpage_t, size, *p, rc, i_xtroot);
 
 	if (!rc) {
 		if ((le16_to_cpu((*p)->header.nextindex) < XTENTRYSTART) ||
@@ -123,7 +123,7 @@ static inline int xt_getpage(struct inode **ip, s64 bn, struct metapage **mp,
 				le16_to_cpu((*p)->header.maxentry)) ||
 			(le16_to_cpu((*p)->header.maxentry) >
 				((bn == 0) ? XTROOTMAXSLOT : PSIZE >> L2XTSLOTSIZE))) {
-			jfs_error(ip->i_sb, "xt_getpage: xtree page corrupt\n");
+			jfs_error((*ip)->i_sb, "xt_getpage: xtree page corrupt\n");
 			BT_PUTPAGE(*mp);
 			*mp = NULL;
 			rc = -EIO;
@@ -270,7 +270,7 @@ static int xtSearch(struct inode *ip, s64 xoff,	s64 *nextp,
 	 */
 	for (bn = 0;;) {
 		/* get/pin the page to search */
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 
@@ -825,7 +825,7 @@ xtSplitUp(tid_t tid,
 		 * insert router entry in parent for new right child page <rp>
 		 */
 		/* get/pin the parent page <sp> */
-		rc = xt_getpage(ip, parent->bn, &smp, PSIZE, &sp);
+		rc = xt_getpage(&ip, parent->bn, &smp, PSIZE, &sp);
 		if (rc) {
 			XT_PUTPAGE(rcmp);
 			return rc;
@@ -1080,7 +1080,7 @@ xtSplitPage(tid_t tid, struct inode *ip,
 	 * update previous pointer of old next/right page of <sp>
 	 */
 	if (nextbn != 0) {
-		rc = xt_getpage(ip, nextbn, &mp, PSIZE, &p);
+		rc = xt_getpage(&ip, nextbn, &mp, PSIZE, &p);
 		if (rc) {
 			XT_PUTPAGE(rmp);
 			goto clean_up;
@@ -1435,7 +1435,7 @@ int xtExtend(tid_t tid,		/* transaction id */
 			return rc;
 
 		/* get back old page */
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 		/*
@@ -1451,7 +1451,7 @@ int xtExtend(tid_t tid,		/* transaction id */
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+			rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 			if (rc)
 				return rc;
 
@@ -1729,7 +1729,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 			return rc;
 
 		/* get back old page */
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 		/*
@@ -1745,7 +1745,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+			rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 			if (rc)
 				return rc;
 
@@ -1806,7 +1806,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 		XT_PUTPAGE(mp);
 
 		/* get new right page */
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 
@@ -1882,7 +1882,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
 			return rc;
 
 		/* get back old page */
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 
@@ -1899,7 +1899,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+			rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 			if (rc)
 				return rc;
 
@@ -2286,7 +2286,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
 	 * first access of each page:
 	 */
       getPage:
-	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+	rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 	if (rc)
 		return rc;
 
@@ -2524,7 +2524,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
 
 	/* get back the parent page */
 	bn = parent->bn;
-	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+	rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 	if (rc)
 		return rc;
 
@@ -2809,7 +2809,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
 		 * first access of each page:
 		 */
       getPage:
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 
@@ -2854,7 +2854,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
 
 	/* get back the parent page */
 	bn = parent->bn;
-	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+	rc = xt_getpage(&ip, bn, &mp, PSIZE, &p);
 	if (rc)
 		return rc;
 
-- 
2.48.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
