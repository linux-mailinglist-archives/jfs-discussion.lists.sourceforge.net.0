Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9E8ACF60A
	for <lists+jfs-discussion@lfdr.de>; Thu,  5 Jun 2025 19:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EPkPl57fWY3r9ra64Jui9ldWRMcZyVGZFNg5wgSpwxs=; b=azR9I2I1k5PpnMEk+uoBW7qEl7
	SuFwbbrDvfVatVsEfdu4jTen8tGSvUwt6Vv6QHCX3Mowb0rxUq+RbAZE6APt5SHnQjR5X/ClmcDaS
	7R9Swp1l2uPzoBwHrJPZXILkolm9TasCxM9dWgqq41TUkeloc3iXY9Zqop3zJJw0SWe4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uNEpl-00042e-Tm;
	Thu, 05 Jun 2025 17:56:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <suchitkarunakaran@gmail.com>) id 1uNEpi-00042T-7O
 for jfs-discussion@lists.sourceforge.net;
 Thu, 05 Jun 2025 17:56:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QE1NK7D9odSVao69Jtlb/9rs54V5GYBC5kloyXSAMRk=; b=OsOD0ezKM0aWgCSMAuBwtY9uPp
 QpQTQmniOXOdKpniiFwFDTRlR7P58dA0ThYJzQR88q+TjrqYp27tMvZ7J2ta5ykPB2kFwLza5aC06
 fDjYluvhLhD/XsZogB7FuB8PEemVn2yoN3PJ2Urq/Knf1wqFCrcy761UaCjjFCk4Ydw8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QE1NK7D9odSVao69Jtlb/9rs54V5GYBC5kloyXSAMRk=; b=d
 Pr5iS6zF3k9rrYoZTQ5xIWmNgYFDMbBky6NX3jfVAX2gLY+Df8lPTPHpJ4Hmh7Ma6hSPZAIk9Unma
 8CVQQ/xeseI9Y7x9WF7tfOdvkjtYumMz7aufcGv3W3M6XDR3ppb3pYofv5M6M1LAlizUKbMtX5cLn
 ey5UYktmeMRYZmVY=;
Received: from mail-pl1-f180.google.com ([209.85.214.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uNEph-0002PP-Na for jfs-discussion@lists.sourceforge.net;
 Thu, 05 Jun 2025 17:56:54 +0000
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-2353a2bc210so12812065ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 05 Jun 2025 10:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749146203; x=1749751003; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=QE1NK7D9odSVao69Jtlb/9rs54V5GYBC5kloyXSAMRk=;
 b=gtlLHfF6VSqKqJVR3lRjwT769pR8opazPsk7algq8HVCMeet4qb3bn/P4ziv6knHqx
 XZNY9BLibrPWoaTkfXCUZEesk1i1WykidP2+PH4pGzY2NqZJSZnOUMpTI6jtV4Tuh69C
 n1uUnRxquDIEakNVbU9KhWRwqSqatij9jo5Kw8x0uciFNxF1NpZKG+eqTJ5V0/cMJ0+N
 zLI0dMAqLFU8EeNs8UjxmipqytF7y6h8dy1Gi6clIcTr/E2Q6qDvXy7D2HbWBH5lWjpl
 ZNVvKrCd5s971VonplzszoxtyGa/kF9YfKIORVF9Ypuy2ZXmRc9WGI9QY0D6GVGy5YBK
 3XlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749146203; x=1749751003;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QE1NK7D9odSVao69Jtlb/9rs54V5GYBC5kloyXSAMRk=;
 b=XONU3VIqeWLcLXd+VrPbjmARvbz1l91QTruKrMBRTnKpSfF+mIbRsBJ+/W3GiLCMtZ
 cfuo5R57MaDZwqCl4LQkYRSZJCEV5773touYxc4BQ33i6ezMutWD5KBFJ8ro/THfG/UJ
 ZFo1wS3tNSGh/Yjtv4oy+cVZqWF6/XK4vMDjX4mGR7Y6y1T1LjlDP/1o4tEFZ+4R4mDk
 IjxySrDCdddBKkQDGE0uwpZ7Uh+qBc3bZYXRwNqiIPVS+UxsTd8EUMabWZQQtwKVSbGp
 z73VP0sDyZpKi1FUpU40zhY9v8dcGFxQ5UtOaARtGIMKmFaqxUf4r2AWK0uNjlBduP5k
 mMJw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWUN36ogcUUc4CeESdw4PLxuueYBe4dF1y8aRnHnliaAp9VKMeWxJVOQ/sC1w0yX4LSpNG3KF2IvAajSjniIg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxgBw8bHcPdulOW4OziXXN4JQ3iKB37arsHFHrWz7eOiRag7+Ry
 oGJtTlBz3MkynhTIrTEVAcg0SRovprRDdVOhaTIillsuVFI9otLOcosu
X-Gm-Gg: ASbGncvQky1kSfq4bD8r6ednQQh9i97kOW1hbnrq3TX1QBlj6z/e7nXC33lqu91U5/4
 UcugB+L+kBXmKpVNE3HHj3QQhnzJzmZ1VGfhM4RMM00oVIdZY915thedo23sZSHVX9qzNFm5hlt
 7B8neo2z16YAjYdqqVSkCoKeW0Zfh8PsUE9vWcvLdOgLjDi1UdZVVq0VuYk7G4onCJG2QhF68GM
 XYzMnITU0O8Dh9S3LLnxl6YuMBxbCnowxSaLpCNm0gOo1Mck2PBypymnWJ4Ack4ZcOzNccTtXSz
 wvlFs1u6HA7zRPGHZ/Jnlh/Q+b5yLlzBQ7t5aMVh7CpBDkULQuQZLMO0AUlGLLrqpakalPs7FGI
 =
X-Google-Smtp-Source: AGHT+IH7FuT0t4KYKzqRCX2QhSJh8CO4QqItoh8NieA7++j/STlROTlp6WkRws8oWHvWzTtPWPcDMQ==
X-Received: by 2002:a17:902:f686:b0:234:aa9a:9e0f with SMTP id
 d9443c01a7336-23601d21231mr4163485ad.23.1749146202802; 
 Thu, 05 Jun 2025 10:56:42 -0700 (PDT)
Received: from localhost.localdomain ([205.254.163.44])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-23506bdd0e9sm122228185ad.74.2025.06.05.10.56.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Jun 2025 10:56:42 -0700 (PDT)
To: shaggy@kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Thu,  5 Jun 2025 23:26:34 +0530
Message-ID: <20250605175634.16362-1-suchitkarunakaran@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Replace legacy XT_GETPAGE macro with an inline function that
 returns a xtpage_t pointer and update all instances of XT_GETPAGE in
 jfs_xtree.c
 Signed-off-by: Suchit Karunakaran --- fs/jfs/jfs_xtree.c | 87
 ++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+), 34 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [suchitkarunakaran(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.180 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uNEph-0002PP-Na
Subject: [Jfs-discussion] [PATCH RESEND] jfs: jfs_xtree: replace XT_GETPAGE
 macro with xt_getpage()
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

Replace legacy XT_GETPAGE macro with an inline function that returns a
xtpage_t pointer and update all instances of XT_GETPAGE in jfs_xtree.c

Signed-off-by: Suchit Karunakaran <suchitkarunakaran@gmail.com>
---
 fs/jfs/jfs_xtree.c | 87 ++++++++++++++++++++++++++++------------------
 1 file changed, 53 insertions(+), 34 deletions(-)

diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 5ee618d17e77..5b8b7819cf29 100644
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
 
@@ -114,6 +94,45 @@ static int xtSplitPage(tid_t tid, struct inode *ip, struct xtsplit * split,
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
+ *      rc      - pointer to an integer to store the return code;
+ *
+ * returns:
+ *      A pointer to the xtree page (xtpage_t) on success. If an error occurs,
+ *      sets rc to -EIO, releases the page buffer, sets mp to NULL and returns NULL.
+ */
+
+static inline xtpage_t *xt_getpage(struct inode *ip, s64 bn, struct metapage **mp,
+				unsigned int size, int *rc)
+{
+	xtpage_t *p;
+
+	BT_GETPAGE(ip, bn, *mp, xtpage_t, size, p, *rc, i_xtroot);
+
+	if (!(*rc)) {
+		if ((le16_to_cpu(p->header.nextindex) < XTENTRYSTART) ||
+			(le16_to_cpu(p->header.nextindex) >
+				le16_to_cpu(p->header.maxentry)) ||
+			(le16_to_cpu(p->header.maxentry) >
+				((bn == 0) ? XTROOTMAXSLOT : PSIZE >> L2XTSLOTSIZE))) {
+			jfs_error(ip->i_sb, "xt_getpage: xtree page corrupt\n");
+			BT_PUTPAGE(*mp);
+			*mp = NULL;
+			*rc = -EIO;
+		}
+	}
+	return p;
+}
+
 /*
  *	xtLookup()
  *
@@ -252,7 +271,7 @@ static int xtSearch(struct inode *ip, s64 xoff,	s64 *nextp,
 	 */
 	for (bn = 0;;) {
 		/* get/pin the page to search */
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 
@@ -807,7 +826,7 @@ xtSplitUp(tid_t tid,
 		 * insert router entry in parent for new right child page <rp>
 		 */
 		/* get/pin the parent page <sp> */
-		XT_GETPAGE(ip, parent->bn, smp, PSIZE, sp, rc);
+		sp = xt_getpage(ip, parent->bn, &smp, PSIZE, &rc);
 		if (rc) {
 			XT_PUTPAGE(rcmp);
 			return rc;
@@ -1062,7 +1081,7 @@ xtSplitPage(tid_t tid, struct inode *ip,
 	 * update previous pointer of old next/right page of <sp>
 	 */
 	if (nextbn != 0) {
-		XT_GETPAGE(ip, nextbn, mp, PSIZE, p, rc);
+		p = xt_getpage(ip, nextbn, &mp, PSIZE, &rc);
 		if (rc) {
 			XT_PUTPAGE(rmp);
 			goto clean_up;
@@ -1417,7 +1436,7 @@ int xtExtend(tid_t tid,		/* transaction id */
 			return rc;
 
 		/* get back old page */
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 		/*
@@ -1433,7 +1452,7 @@ int xtExtend(tid_t tid,		/* transaction id */
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+			p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 			if (rc)
 				return rc;
 
@@ -1711,7 +1730,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 			return rc;
 
 		/* get back old page */
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 		/*
@@ -1727,7 +1746,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+			p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 			if (rc)
 				return rc;
 
@@ -1788,7 +1807,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 		XT_PUTPAGE(mp);
 
 		/* get new right page */
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 
@@ -1864,7 +1883,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
 			return rc;
 
 		/* get back old page */
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 
@@ -1881,7 +1900,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+			p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 			if (rc)
 				return rc;
 
@@ -2268,7 +2287,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
 	 * first access of each page:
 	 */
       getPage:
-	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+	p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 	if (rc)
 		return rc;
 
@@ -2506,7 +2525,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
 
 	/* get back the parent page */
 	bn = parent->bn;
-	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+	p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 	if (rc)
 		return rc;
 
@@ -2791,7 +2810,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
 		 * first access of each page:
 		 */
       getPage:
-		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 
@@ -2836,7 +2855,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
 
 	/* get back the parent page */
 	bn = parent->bn;
-	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
+	p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 	if (rc)
 		return rc;
 
-- 
2.49.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
