Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43050A4E15C
	for <lists+jfs-discussion@lfdr.de>; Tue,  4 Mar 2025 15:43:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tpTTj-0006cE-T9;
	Tue, 04 Mar 2025 14:42:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <suchitkarunakaran@gmail.com>) id 1toonR-000628-Tb
 for jfs-discussion@lists.sourceforge.net;
 Sun, 02 Mar 2025 19:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NlA0SU/ZCYX8gJRmy6w4sqXzVHg1EdDuRlFFqXo2oIE=; b=eIiFPOx9pBOl99oNiIGoE6InHj
 kRB1WywKwuirmSsF3gZXcNdBPG2OE3+8w9ajAJe/cgRW3X70dZUt3Ny40GNvOaFzfB7sPhNxshw6e
 LT2h71diGtUtsl6SfbolTEc/9w+PcTyzpdowJffBstDAovDOhYvSKLw2SapVsRhquz3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NlA0SU/ZCYX8gJRmy6w4sqXzVHg1EdDuRlFFqXo2oIE=; b=Z
 fbU/YqfgaMDVB5rz20BvnJKp3QG80DhjUPT6p8EeazviTtINJXfyV7z0gFFw6elv17pcLYAK5akij
 6Dk280C+jXazk5stZdqYa9eKWyIe+rM6pOP7BUTd8Y6tuos26hH/2OG15Gt8EICBrF7MAu3RW1qLW
 DT/1URABshOWFaFw=;
Received: from mail-pl1-f170.google.com ([209.85.214.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1toonQ-0007rM-Dm for jfs-discussion@lists.sourceforge.net;
 Sun, 02 Mar 2025 19:16:17 +0000
Received: by mail-pl1-f170.google.com with SMTP id
 d9443c01a7336-2238d965199so13318925ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 02 Mar 2025 11:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740942971; x=1741547771; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=NlA0SU/ZCYX8gJRmy6w4sqXzVHg1EdDuRlFFqXo2oIE=;
 b=cgUKgn0IbinTIO6XrVxCxVL90nrUvWwWZSWqfLtGDy3uzk2eTdDmnzrDRupxPGpEMO
 Wr223zCZ6+SFchz7t9e4pVuBbrY3jn6SPy1eAKZ8DUlK+YdUyxKyH2W+Fls78bDbgJZA
 K+Qki01S8JYe+CWnabdGftoVIK0+acDwPk8LgrmujCRGHFriLMTrTWB1BHHZEJ1bGOuO
 n6XZnluOv/ozMx8XABFImmF/M2hZu9twNIjFAt2UaE19cPhsEotbslFQAiRh/xdqiwzu
 fNO1f5A98bvJbgbZ6cqtHtpjMVnfNL9Hp/thryDNm9KH7A0N2U9saaUWprYl69nPRBRs
 1zfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740942971; x=1741547771;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NlA0SU/ZCYX8gJRmy6w4sqXzVHg1EdDuRlFFqXo2oIE=;
 b=FrPyDj1mvANSYh4BClZmjCobcaSOPPVCv3xX9f3xDT3GEq3ch0OmHpK9hLKcqe7JfA
 85IkcDN6ma+Gy4lDS/+QAAhUym8a/wZX+xbEZFasLd/sKE56lnQsbXcJkgnaNWHmC4ce
 qAEnWxzuovXFCh8psx8g/sKb4kUHbD0pwSFWYiNGixcp9n1ghbnLynhasYD9KN+Uhkbc
 8gKgrV5SFlQ86Eo0Gg82QpYVvAn7NmRJZQ4FVGJGfjjII8gm8oAwscTttkPjfxzBmQKt
 ON3pQ4JZThjQ/NGpxw7sqFWxXJW4nqJFk9lw4b3cEGmsSg4N7XvhZAvf4ougxsPzdI4q
 KFEQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUh85cpIdm4qVuy+oxBqWkGmFxCtn9r2Gaf5io7A93HW4wphk4g7HIn9yopKQQOAoV+MdVWlv8K1+dLmWlFLw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzIKsAY+9H1acuRJJQHePxVZlvYgy10pAELBbP8jVDKuS5h2IDb
 H4RP1ab8bnlpWS3Ry+yppNkeMpD/tvrLMlnm58oMAhbT4g9JhLUDYQviKeyT
X-Gm-Gg: ASbGncsK6PB8l29Vxkz84pN+ASrVeHd/HePST5U0ZoLeg8AJiriJcWc8vN7oSqMxUNu
 OGhwUmO9gVAoJCBXmMlFAVQaT9sxfFwLGyZgGJYRyCHPHw9O58VJl5NDmMASgvhT4MbXq3fDbOO
 U+rz0lhcwDlHYFXaA1d/6/SKFyca2+KjNbN2v18sqSEIsQi+fDXMwrYW6+75MSpDogNqHeFSYa1
 YF+KsG6ZTN+Oe+B/HjMS6LWNCQ5dDHzc0D3BjeKXcG5x8PjMhJSH1sTgWqME3LERsVCTvvR/oOs
 fY6Sp7xLxBxl5yE/CvEqYu8Bf9aw5MKSNv9sddNa8A1JadU2lEXPHE6nNCWi4BMvmSNHYLdJ
X-Google-Smtp-Source: AGHT+IEUIR3w9wMZn8Db6v2BPHzh68hOPUs53803xNBe5fHHG76OjaCGUoV53tdN08AN3St6ZgxuXA==
X-Received: by 2002:a05:6a20:729c:b0:1ee:833a:3990 with SMTP id
 adf61e73a8af0-1f2f4c95d0fmr19015154637.7.1740942970568; 
 Sun, 02 Mar 2025 11:16:10 -0800 (PST)
Received: from localhost.localdomain
 ([2401:4900:6284:cc95:ed3b:6b9c:32c0:58a6])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73630a224b3sm3655036b3a.164.2025.03.02.11.16.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Mar 2025 11:16:10 -0800 (PST)
To: shaggy@kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Mon,  3 Mar 2025 00:45:58 +0530
Message-ID: <20250302191558.47180-1-suchitkarunakaran@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Replace legacy XT_GETPAGE macro with an inline function and
 update all instances of XT_GETPAGE in jfs_xtree.c file to use the new
 function.
 Signed-off-by: Suchit Karunakaran --- fs/jfs/jfs_xtree.c | 86
 ++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+), 34 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.170 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [suchitkarunakaran[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.170 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.170 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1toonQ-0007rM-Dm
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
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Replace legacy XT_GETPAGE macro with an inline function and update all
instances of XT_GETPAGE in jfs_xtree.c file to use the new function.

Signed-off-by: Suchit Karunakaran <suchitkarunakaran@gmail.com>
---
 fs/jfs/jfs_xtree.c | 86 ++++++++++++++++++++++++++++------------------
 1 file changed, 52 insertions(+), 34 deletions(-)

diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 5ee618d17e77..fb736a06ea58 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -49,26 +49,6 @@
 
 #define XT_PAGE(IP, MP) BT_PAGE(IP, MP, xtpage_t, i_xtroot)
 
-/* get page buffer for specified block address */
-/* ToDo: Replace this ugly macro with a function */
-#define XT_GETPAGE(IP, BN, MP, SIZE, P, RC)				\
-do {									\
-	BT_GETPAGE(IP, BN, MP, xtpage_t, SIZE, P, RC, i_xtroot);	\
-	if (!(RC)) {							\
-		if ((le16_to_cpu((P)->header.nextindex) < XTENTRYSTART) || \
-		    (le16_to_cpu((P)->header.nextindex) >		\
-		     le16_to_cpu((P)->header.maxentry)) ||		\
-		    (le16_to_cpu((P)->header.maxentry) >		\
-		     (((BN) == 0) ? XTROOTMAXSLOT : PSIZE >> L2XTSLOTSIZE))) { \
-			jfs_error((IP)->i_sb,				\
-				  "XT_GETPAGE: xtree page corrupt\n");	\
-			BT_PUTPAGE(MP);					\
-			MP = NULL;					\
-			RC = -EIO;					\
-		}							\
-	}								\
-} while (0)
-
 /* for consistency */
 #define XT_PUTPAGE(MP) BT_PUTPAGE(MP)
 
@@ -114,6 +94,44 @@ static int xtSplitPage(tid_t tid, struct inode *ip, struct xtsplit * split,
 static int xtSplitRoot(tid_t tid, struct inode *ip,
 		       struct xtsplit * split, struct metapage ** rmpp);
 
+/*
+ *	xt_getpage()
+ *
+ * function:	get the page buffer for a specified block address.
+ *
+ * parameters:
+ *	ip      - pointer to the inode
+ *	bn      - block number (s64) of the xtree page to be retrieved;
+ *	mp      - pointer to a metapage pointer where the page buffer is returned;
+ *	size    - size parameter to pass to BT_GETPAGE;
+ *	p       - pointer to an xtpage_t pointer mapping the page's data.
+ *
+ * returns:
+ *	0 on success, or -EIO if the page is corrupt or an error occurs.
+ */
+
+static inline int xt_getpage(struct inode **ip, s64 bn, struct metapage **mp,
+			unsigned int size, xtpage_t **p)
+{
+	int rc;
+
+	BT_GETPAGE(ip, bn, *mp, xtpage_t, size, *p, rc, i_xtroot);
+
+	if (!rc) {
+		if ((le16_to_cpu((*p)->header.nextindex) < XTENTRYSTART) ||
+			(le16_to_cpu((*p)->header.nextindex) >
+				le16_to_cpu((*p)->header.maxentry)) ||
+			(le16_to_cpu((*p)->header.maxentry) >
+				((bn == 0) ? XTROOTMAXSLOT : PSIZE >> L2XTSLOTSIZE))) {
+			jfs_error(ip->i_sb, "xt_getpage: xtree page corrupt\n");
+			BT_PUTPAGE(*mp);
+			*mp = NULL;
+			rc = -EIO;
+		}
+	}
+	return rc;
+}
+
 /*
  *	xtLookup()
  *
@@ -252,7 +270,7 @@ static int xtSearch(struct inode *ip, s64 xoff,	s64 *nextp,
 	 */
 	for (bn = 0;;) {
 		/* get/pin the page to search */
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 
@@ -807,7 +825,7 @@ xtSplitUp(tid_t tid,
 		 * insert router entry in parent for new right child page <rp>
 		 */
 		/* get/pin the parent page <sp> */
-		XT_GETPAGE(ip, parent->bn, smp, PSIZE, sp, rc);
+		rc = xt_getpage(ip, parent->bn, &smp, PSIZE, &sp);
 		if (rc) {
 			XT_PUTPAGE(rcmp);
 			return rc;
@@ -1062,7 +1080,7 @@ xtSplitPage(tid_t tid, struct inode *ip,
 	 * update previous pointer of old next/right page of <sp>
 	 */
 	if (nextbn != 0) {
-		XT_GETPAGE(ip, nextbn, mp, PSIZE, p, rc);
+		rc = xt_getpage(ip, nextbn, &mp, PSIZE, &p);
 		if (rc) {
 			XT_PUTPAGE(rmp);
 			goto clean_up;
@@ -1417,7 +1435,7 @@ int xtExtend(tid_t tid,		/* transaction id */
 			return rc;
 
 		/* get back old page */
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 		/*
@@ -1433,7 +1451,7 @@ int xtExtend(tid_t tid,		/* transaction id */
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 			if (rc)
 				return rc;
 
@@ -1711,7 +1729,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 			return rc;
 
 		/* get back old page */
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 		/*
@@ -1727,7 +1745,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 			if (rc)
 				return rc;
 
@@ -1788,7 +1806,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 		XT_PUTPAGE(mp);
 
 		/* get new right page */
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 
@@ -1864,7 +1882,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
 			return rc;
 
 		/* get back old page */
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 
@@ -1881,7 +1899,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 			if (rc)
 				return rc;
 
@@ -2268,7 +2286,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
 	 * first access of each page:
 	 */
       getPage:
-	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 	if (rc)
 		return rc;
 
@@ -2506,7 +2524,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
 
 	/* get back the parent page */
 	bn = parent->bn;
-	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 	if (rc)
 		return rc;
 
@@ -2791,7 +2809,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
 		 * first access of each page:
 		 */
       getPage:
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 		if (rc)
 			return rc;
 
@@ -2836,7 +2854,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
 
 	/* get back the parent page */
 	bn = parent->bn;
-	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
 	if (rc)
 		return rc;
 
-- 
2.48.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
