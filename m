Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79169A873E6
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Apr 2025 23:03:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u44Tr-0003ZV-2a;
	Sun, 13 Apr 2025 21:03:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <suchitkarunakaran@gmail.com>) id 1u44Tp-0003ZM-La
 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Apr 2025 21:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oExSuRgSkOYG1U5jJabPZvKPbMxgJkOF/aB8GjfoPCg=; b=MYH6bC+5Ey+yW3AXv6wk0CYhG1
 4+N4Bl4vK/IEOM16I1QZ/Q+c/g/ru1TfFktLru0BA7BO83zemuvnXjLJokFV5cHQZwDEZ9Vw8DHwF
 LdJnM+lTrHYpJzGPX5np1Amh1ssSeqUKyt31uQj5YmbsnmzSkCtS9yByam1YXBnOabQc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oExSuRgSkOYG1U5jJabPZvKPbMxgJkOF/aB8GjfoPCg=; b=U
 B9dcyrq8GaHlpoNRq+RSbANJLSKHzpI1Tq0VCnIXFnzXhGbF4THo5w4ZpIGyiYgFSSJmlCj5mghk+
 4ATCg5wR/yhWg4A0y0osZ7MUub2nmyAD+nkr2lWf/F2ZN58WLX/05VuhnIwD7yHqNjInUNVb4EUXx
 wjuU8PqOWllcoAPQ=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u44TY-0001zz-DC for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Apr 2025 21:03:04 +0000
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-223fb0f619dso37076015ad.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 13 Apr 2025 14:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744578158; x=1745182958; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=oExSuRgSkOYG1U5jJabPZvKPbMxgJkOF/aB8GjfoPCg=;
 b=Ew/P7pvefOScaJD/8LKOIh5BW+VGnRlVmp/1WNzgC3Eng+1Kv8ugCU0tn3b/zUtrsU
 A47Znb52aTqHtw6dxiiYisuPJjXG9nahm6hMyCAeKTbqvbtpPVtaRalARwiZNU6oV7u6
 gClt7PvC95R89rcw//ti4DJNkfQLX0G7qhvXsTGZ26KJza57bBy9w6aDY6qKdtajTdiB
 Sa0DsMd5/yvD0t/5tYf8EjHeywXdzIWAOP8lqc/cyqkE76VqFb8xOSCW6VH1K2MNA2KZ
 cA3EFrYFD9TkZmwdzbMJaGg8B+YdNdhH0vEyPB3+6hF3polYP54aN/i3mYwCpEptoWXI
 exVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744578158; x=1745182958;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oExSuRgSkOYG1U5jJabPZvKPbMxgJkOF/aB8GjfoPCg=;
 b=UtfJcbAAgkhARpWT2NSU8CVpyk5O7gk6LUGeY+T4oYd5ZO26awuk3s6P+ftMRtPZHv
 OZTTY4/bxd9sDN8pv5rbUS9FLMfmwqccYehuj5fTz+3jiVnotYuG/jiPmvRHI/nZRQXV
 c3LpZZ5avnMKZQb1CTd4wsRSxLpXN3i3TJyloqspyqR3KJDg8SxSCEzkMa7lsybE+cGo
 asDuzfSH/kLhJ3YiXjUs9FY7FmreTA9jCd0UefhBjwednHk2XzLmWkOD1Jup6ESqR8kt
 ZAzNzbGeym6UOnTQp5fnMHH/ET4mvVgkny79+ixTBiwh4yK+CUtr4gerjCG9lIW+Y6A+
 B4fw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXdk8Y5+iCmbW8hyGa61/7bwtrWC4r7aRnI03me8WIgcXTlAqX4IAv8lJ1SSPuqg6pkrXjsdrfoZx7gzAbWfg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwUsmDBWbhF8yJzphsEG0mJcK/K6IaBxcXdR/FzAh/Honokkoer
 6jxOvXraLrjbtvB+uVCbpZXK8JgOdLLCSp2hODGVOHv+ZMn3s0tO
X-Gm-Gg: ASbGncuTnStQ6K705lts4ivjf1a5JhR0VlEzInwWO257HRD/PJdWt41ADNBLJY/2db1
 eGGUkLzkRTq+NAVjWCIjCVIOAj9PZ6eJGbpybzC26Bps4Nf+1z6qspkMqtpvLBzXQQvTKCYbQBi
 gECppJH2laZvSm+rBiZSsk7Agp8n7Ztt9HGTMF3eUarkVV3ETJTlIzb+0+SjMmwqRfZvZWDrtqI
 WsEAP58YiZB2sRvL10m8LcasBipoSdLe07DqvBFnTSEarIBsHEtFxCHc56p8EbTgBL54Iz6RYBo
 Jy35xXUj+8Aj7H4ULFq3/sQd2dGCuYbVmeDbabb2fydhTPl1sA==
X-Google-Smtp-Source: AGHT+IF0dOs0iCfPOxj+3D4d4UqDWm2ILpwsXwoRsCyX1J6rpUpFZJN7mY8/7lWBtAy7NnquaO0L6Q==
X-Received: by 2002:a17:903:8d0:b0:21f:136a:a374 with SMTP id
 d9443c01a7336-22bea4fcf7bmr146617735ad.43.1744578157486; 
 Sun, 13 Apr 2025 14:02:37 -0700 (PDT)
Received: from archlinux.nitk.ac.in ([2400:4f20:11:c00::106:b642])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-22ac7c95cdcsm86630895ad.118.2025.04.13.14.02.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Apr 2025 14:02:37 -0700 (PDT)
To: shaggy@kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Mon, 14 Apr 2025 02:32:18 +0530
Message-ID: <20250413210218.111472-1-suchitkarunakaran@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Replace legacy XT_GETPAGE macro with an inline function and
 update all instances of XT_GETPAGE in jfs_xtree.c file to use the new
 function.
 Signed-off-by: Suchit Karunakaran --- fs/jfs/jfs_xtree.c | 55
 +++++++++++++++++++++++
 1 file changed, 28 insertions(+), 27 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.176 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.176 listed in bl.score.senderscore.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [suchitkarunakaran[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1u44TY-0001zz-DC
Subject: [Jfs-discussion] [PATCH v2] jfs: jfs_xtree: replace XT_GETPAGE
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
 fs/jfs/jfs_xtree.c | 55 +++++++++++++++++++++++-----------------------
 1 file changed, 28 insertions(+), 27 deletions(-)

diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 4fea5e90e29b..5b8b7819cf29 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -104,32 +104,33 @@ static int xtSplitRoot(tid_t tid, struct inode *ip,
  *	bn      - block number (s64) of the xtree page to be retrieved;
  *	mp      - pointer to a metapage pointer where the page buffer is returned;
  *	size    - size parameter to pass to BT_GETPAGE;
- *	p       - pointer to an xtpage_t pointer mapping the page's data.
+ *      rc      - pointer to an integer to store the return code;
  *
  * returns:
- *	0 on success, or -EIO if the page is corrupt or an error occurs.
+ *      A pointer to the xtree page (xtpage_t) on success. If an error occurs,
+ *      sets rc to -EIO, releases the page buffer, sets mp to NULL and returns NULL.
  */
 
-static inline int xt_getpage(struct inode *ip, s64 bn, struct metapage **mp,
-			unsigned int size, xtpage_t **p)
+static inline xtpage_t* xt_getpage(struct inode *ip, s64 bn, struct metapage **mp,
+				unsigned int size, int *rc)
 {
-	int rc;
+	xtpage_t *p;
 
-	BT_GETPAGE(ip, bn, *mp, xtpage_t, size, *p, rc, i_xtroot);
+	BT_GETPAGE(ip, bn, *mp, xtpage_t, size, p, *rc, i_xtroot);
 
-	if (!rc) {
-		if ((le16_to_cpu((*p)->header.nextindex) < XTENTRYSTART) ||
-			(le16_to_cpu((*p)->header.nextindex) >
-				le16_to_cpu((*p)->header.maxentry)) ||
-			(le16_to_cpu((*p)->header.maxentry) >
+	if (!(*rc)) {
+		if ((le16_to_cpu(p->header.nextindex) < XTENTRYSTART) ||
+			(le16_to_cpu(p->header.nextindex) >
+				le16_to_cpu(p->header.maxentry)) ||
+			(le16_to_cpu(p->header.maxentry) >
 				((bn == 0) ? XTROOTMAXSLOT : PSIZE >> L2XTSLOTSIZE))) {
 			jfs_error(ip->i_sb, "xt_getpage: xtree page corrupt\n");
 			BT_PUTPAGE(*mp);
 			*mp = NULL;
-			rc = -EIO;
+			*rc = -EIO;
 		}
 	}
-	return rc;
+	return p;
 }
 
 /*
@@ -270,7 +271,7 @@ static int xtSearch(struct inode *ip, s64 xoff,	s64 *nextp,
 	 */
 	for (bn = 0;;) {
 		/* get/pin the page to search */
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 
@@ -825,7 +826,7 @@ xtSplitUp(tid_t tid,
 		 * insert router entry in parent for new right child page <rp>
 		 */
 		/* get/pin the parent page <sp> */
-		rc = xt_getpage(ip, parent->bn, &smp, PSIZE, &sp);
+		sp = xt_getpage(ip, parent->bn, &smp, PSIZE, &rc);
 		if (rc) {
 			XT_PUTPAGE(rcmp);
 			return rc;
@@ -1080,7 +1081,7 @@ xtSplitPage(tid_t tid, struct inode *ip,
 	 * update previous pointer of old next/right page of <sp>
 	 */
 	if (nextbn != 0) {
-		rc = xt_getpage(ip, nextbn, &mp, PSIZE, &p);
+		p = xt_getpage(ip, nextbn, &mp, PSIZE, &rc);
 		if (rc) {
 			XT_PUTPAGE(rmp);
 			goto clean_up;
@@ -1435,7 +1436,7 @@ int xtExtend(tid_t tid,		/* transaction id */
 			return rc;
 
 		/* get back old page */
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 		/*
@@ -1451,7 +1452,7 @@ int xtExtend(tid_t tid,		/* transaction id */
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+			p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 			if (rc)
 				return rc;
 
@@ -1729,7 +1730,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 			return rc;
 
 		/* get back old page */
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 		/*
@@ -1745,7 +1746,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+			p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 			if (rc)
 				return rc;
 
@@ -1806,7 +1807,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 		XT_PUTPAGE(mp);
 
 		/* get new right page */
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 
@@ -1882,7 +1883,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
 			return rc;
 
 		/* get back old page */
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 
@@ -1899,7 +1900,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
 			XT_PUTPAGE(mp);
 
 			/* get new child page */
-			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+			p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 			if (rc)
 				return rc;
 
@@ -2286,7 +2287,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
 	 * first access of each page:
 	 */
       getPage:
-	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+	p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 	if (rc)
 		return rc;
 
@@ -2524,7 +2525,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
 
 	/* get back the parent page */
 	bn = parent->bn;
-	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+	p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 	if (rc)
 		return rc;
 
@@ -2809,7 +2810,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
 		 * first access of each page:
 		 */
       getPage:
-		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 		if (rc)
 			return rc;
 
@@ -2854,7 +2855,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
 
 	/* get back the parent page */
 	bn = parent->bn;
-	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
+	p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
 	if (rc)
 		return rc;
 
-- 
2.49.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
