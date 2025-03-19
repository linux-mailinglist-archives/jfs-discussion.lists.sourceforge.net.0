Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A321A685E8
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Mar 2025 08:40:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tuo1T-0000c7-DD;
	Wed, 19 Mar 2025 07:39:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <suchitkarunakaran@gmail.com>) id 1tuo1S-0000c1-2C
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Mar 2025 07:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zxDRI3yy3kbzuN5qeoEHV0+lf0cRz3kjqm00o+lSz2c=; b=l7oLFzFmucJXzfv8xCPCHUadyQ
 CNKAgqigPs1djW6Sbeg+aicYkUzA6PXhPokgKS2PH+61f7xOj2f8H1kqZHuRjdZEUzl0BHESP0hU0
 EizM4I+3v0fTeFFpotjBbG64NqyxG0ULxR0H1lN08uuRaV+kUoR8qRB2Ash4duLF1m3Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zxDRI3yy3kbzuN5qeoEHV0+lf0cRz3kjqm00o+lSz2c=; b=c
 HcdOoSOMLJv848KICdd7A3PO+Dw0ixiYzbpzO5kkO53huGuGurrAh/7wlf5aHJBtpvgSJawcrw2AQ
 2iQAaqrTNtYfp3FWLXG2+GTWyEXT9vatsKZ7PGONTlbtUZFizm6nkIDoTG1AYRqWfz/KAk+GIG0GC
 XT9AwVrQ/XSOrK8E=;
Received: from mail-pl1-f172.google.com ([209.85.214.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tuo1R-0005pB-6r for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Mar 2025 07:39:30 +0000
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-224191d92e4so125909185ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Mar 2025 00:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742369958; x=1742974758; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=zxDRI3yy3kbzuN5qeoEHV0+lf0cRz3kjqm00o+lSz2c=;
 b=V2WXwOGrl2I7XaXcKUMByebqcPdrJUvcRxKIaLI/7NLZs4knH0wF7BQbtMy1jEecbb
 /g/LztrguNUQU1A2k2Lv+hEg943Tuz6IO2LXnEaYSzXKhgwkc/Jr9mac/mVZUkOvX/IB
 MHKfUwWt4IdiW8iUCZBUNv7FZ2FiLqOeuwY/jsCRsbVuQnqR2ZHRnUwwViJZvDx9vW4D
 CBu0fjHSX0CWfJqVwRky8cft/vEu1t8jUE+hVHnTnK8FFxhhz9g85W7Kko6Q/Zm19bsu
 bMLYfBgsnBJwvt1TmynrmgGmAbT+5owY0hF0UoZKG/+BtENATQi1zaH+ZLeUBasCkBDt
 98uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742369958; x=1742974758;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zxDRI3yy3kbzuN5qeoEHV0+lf0cRz3kjqm00o+lSz2c=;
 b=KNzNrbdpzwox8XX2GLm9x+dQIPB+nem9dSEFaVx/WTY2nJKzs7nctbRWxiy1hcJaoW
 BvLU6n+wI733snCGxWwlfXhGn2O4JV6pH1FRzLLT6WyEYhx6MLJ5zPcYK5gVURj36GPv
 RColK+Och56aYDB5Z0XoLNOQAHgctVVmKeNCBbYN2yNJFAZNfjptrVXI7lrNb957ftvN
 Sd6/dfDOHUsCAEJT+C77XVTqTlryS5h9w2Xf13/7JFncpAZqpG+o67KbU06vJuQDTyc/
 GnSVtYXASgLCUYAeYWAg4XATA940kv+atdZPyi2W+DtMGYA377L03viOlX9nAnETCwON
 zY7A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXQdgynuFpY7CqJSv+/lkitJz0snCkBrEO3DyY+hQA/llbIEtppfQAvszDoNfshyroUx7xnHA+cjbu2e4WPNQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzS/ucJXz+Gb60IebjrGB/zV0cahzk+g7I77J9JPTlqS5mvlLh7
 x/5z0ApXHCE+4js+60qkTrZJP1H//2QqF67VpUH3Vc18cp0mIZzJ
X-Gm-Gg: ASbGncvS9HpgQai40hu0ca1NAqsqC8MeSVm27mde9Mk9dvXIi8T6GFs4EWagPJPHJeh
 GuJyE7ATBgiNDRFLVP6cb0vx4EKcy5cSv1tcBBJJl8p2XEymRL8dA/603YY0AW9elHAKR8u7Kpv
 2V7JbJit0P3JH9GrP1N7vw2h6np3GNsdeHM2zoPQ/qtFQkBvZJlcA0yiyp5xMO8qmdaASdLgWTd
 H1PMMNY+4nuyb+lnRXW9YI8kn7wJXUQHt6iJp/Px0B21XGs0IMqNpx3KVfI39FEwGMD9A25HwcI
 bfG/Izm5vH4xS3qo3v0C+HIrZJXeOgsG8BTskd1c0sc2o5lg4D10JQ==
X-Google-Smtp-Source: AGHT+IH7w54kbrZ4KACEo/HNZuJdpE+uY4oEwrMSF7BbiB75U+3UDroYU+kXdh1GJBNXlIS0Aq57SQ==
X-Received: by 2002:aa7:8885:0:b0:736:4fe0:2661 with SMTP id
 d2e1a72fcca58-7376d645d8cmr3026676b3a.11.1742369958356; 
 Wed, 19 Mar 2025 00:39:18 -0700 (PDT)
Received: from archlinux.nitk.ac.in ([2400:4f20:11:c00::103:25cc])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-737115295e5sm10923556b3a.23.2025.03.19.00.39.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Mar 2025 00:39:17 -0700 (PDT)
To: shaggy@kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Wed, 19 Mar 2025 13:09:12 +0530
Message-ID: <20250319073912.6849-1-suchitkarunakaran@gmail.com>
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
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.172 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.172 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [suchitkarunakaran[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.172 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.172 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tuo1R-0005pB-6r
Subject: [Jfs-discussion] [PATCH REPOST] jfs: jfs_xtree: replace XT_GETPAGE
 macro with xt_getpage() function
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
 linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev,
 skhan@linuxfoundation.org
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
index 5ee618d17e77..4fea5e90e29b 100644
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
+static inline int xt_getpage(struct inode *ip, s64 bn, struct metapage **mp,
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
