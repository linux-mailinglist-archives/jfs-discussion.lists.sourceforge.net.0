Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD867741C69
	for <lists+jfs-discussion@lfdr.de>; Thu, 29 Jun 2023 01:25:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEeWq-0000rm-VA;
	Wed, 28 Jun 2023 23:24:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux@treblig.org>) id 1qEeWq-0000rg-3R
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 23:24:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y5tCgefofVOF+Jl1X4M4dmrctYVZ8TzBmUsn6af50QM=; b=PzLo4MRYbPPuoKZjolOwsrcfOD
 c8CLOaxYoBEaEV47H7bXJoG2eZyY/gLWMoo8Xc72QAw3pKjN/yyuG/Qc4PVJ45+LQPoLP4BTHQlD7
 UshdTQlrMW5d3thpSxKuKxAoELjg4cKmb+KIlBNFx2PSdoTFDZVMZ9KsHuJWW0p2ZvD4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y5tCgefofVOF+Jl1X4M4dmrctYVZ8TzBmUsn6af50QM=; b=VAPFi8L8dGALuyPVmxXO/F+UhA
 g0VJsV0ld72FK4gxJRg1Hmd+wXrBsTbBLFv5g9MRWM3oEbA5eaFZVT+IS2D5/8Tpyo7HWtkWJlAJE
 ZNecjNipB2hRJpOA4PDEWiWebMn9EFf63nRv5vdTKfUwZIxwqDxk1wmt0xPFEYTNnG1k=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qEeWo-0006pn-BX for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 23:24:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y5tCgefofVOF+Jl1X4M4dmrctYVZ8TzBmUsn6af50QM=; b=BsjJt0YvQf0AUPKKFJndZR+Ony
 HXns8OVtbiZmgTlPSnDnW7Gw+bGZrCc8rmFLcvqf77ZO+6D/QQ0OXaTe1O9+3gxvyJb+IAI0mt/wP
 kohBBkBVXenvPX5GvqTuwbsdCO3jFRBS0eT1Dvx07undPkk6wb+jl3DCRvztZh6xlz0mvugG3diW0
 PxhKjqXmryfpI48DSmLb5B4OOxK8ZYf3ngMMtc5QhTVeiSmUx+JVE2Vsv+SZ6Un21Ie92jC6niSWD
 RsKFu6aGhAvYnp1V3WvrUmHVDADfYbZVzIbvaktcMfZhL1PF1zGYR2SBgIm4eIc5zev4hqwvllFXA
 ARCQXDuw==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.94.2)
 (envelope-from <linux@treblig.org>)
 id 1qEeWZ-00GXy3-R6; Wed, 28 Jun 2023 23:24:34 +0000
From: linux@treblig.org
To: sfrench@samba.org, linkinjeon@kernel.org, tom@talpey.com,
 linux-cifs@vger.kernel.org
Date: Thu, 29 Jun 2023 00:24:14 +0100
Message-ID: <20230628232417.120844-2-linux@treblig.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230628232417.120844-1-linux@treblig.org>
References: <20230628232417.120844-1-linux@treblig.org>
MIME-Version: 1.0
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: "Dr. David Alan Gilbert" <linux@treblig.org> The
 unicode
 glue in smb/*/..uniupr.h has a section guarded by 'ifndef UNIUPR_NOLOWER'
 - but that's always defined in smb/*/..unicode.h. Nuke those tables. 
 Content analysis details:   (2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qEeWo-0006pn-BX
Subject: [Jfs-discussion] [PATCH v2 1/4] fs/smb: Remove unicode 'lower'
 tables
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
Cc: jfs-discussion@lists.sourceforge.net, krisman@collabora.com,
 linux-kernel@vger.kernel.org, "Dr. David Alan Gilbert" <linux@treblig.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: "Dr. David Alan Gilbert" <linux@treblig.org>

The unicode glue in smb/*/..uniupr.h has a section guarded
by 'ifndef UNIUPR_NOLOWER' - but that's always
defined in smb/*/..unicode.h.  Nuke those tables.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 fs/smb/client/cifs_unicode.h |  50 --------------
 fs/smb/client/cifs_uniupr.h  | 116 -------------------------------
 fs/smb/server/unicode.h      |  48 -------------
 fs/smb/server/uniupr.h       | 129 -----------------------------------
 4 files changed, 343 deletions(-)

diff --git a/fs/smb/client/cifs_unicode.h b/fs/smb/client/cifs_unicode.h
index 80b3d845419f..33b651def482 100644
--- a/fs/smb/client/cifs_unicode.h
+++ b/fs/smb/client/cifs_unicode.h
@@ -22,8 +22,6 @@
 #include <linux/types.h>
 #include <linux/nls.h>
 
-#define  UNIUPR_NOLOWER		/* Example to not expand lower case tables */
-
 /*
  * Windows maps these to the user defined 16 bit Unicode range since they are
  * reserved symbols (along with \ and /), otherwise illegal to store
@@ -84,11 +82,6 @@ extern signed char CifsUniUpperTable[512];
 extern const struct UniCaseRange CifsUniUpperRange[];
 #endif				/* UNIUPR_NOUPPER */
 
-#ifndef UNIUPR_NOLOWER
-extern signed char CifsUniLowerTable[512];
-extern const struct UniCaseRange CifsUniLowerRange[];
-#endif				/* UNIUPR_NOLOWER */
-
 #ifdef __KERNEL__
 int cifs_from_utf16(char *to, const __le16 *from, int tolen, int fromlen,
 		    const struct nls_table *cp, int map_type);
@@ -358,47 +351,4 @@ UniStrupr(register __le16 *upin)
 }
 #endif				/* UNIUPR_NOUPPER */
 
-#ifndef UNIUPR_NOLOWER
-/*
- * UniTolower:  Convert a unicode character to lower case
- */
-static inline wchar_t
-UniTolower(register wchar_t uc)
-{
-	register const struct UniCaseRange *rp;
-
-	if (uc < sizeof(CifsUniLowerTable)) {
-		/* Latin characters */
-		return uc + CifsUniLowerTable[uc];	/* Use base tables */
-	} else {
-		rp = CifsUniLowerRange;	/* Use range tables */
-		while (rp->start) {
-			if (uc < rp->start)	/* Before start of range */
-				return uc;	/* Uppercase = input */
-			if (uc <= rp->end)	/* In range */
-				return uc + rp->table[uc - rp->start];
-			rp++;	/* Try next range */
-		}
-	}
-	return uc;		/* Past last range */
-}
-
-/*
- * UniStrlwr:  Lower case a unicode string
- */
-static inline wchar_t *
-UniStrlwr(register wchar_t *upin)
-{
-	register wchar_t *up;
-
-	up = upin;
-	while (*up) {		/* For all characters */
-		*up = UniTolower(*up);
-		up++;
-	}
-	return upin;		/* Return input pointer */
-}
-
-#endif
-
 #endif /* _CIFS_UNICODE_H */
diff --git a/fs/smb/client/cifs_uniupr.h b/fs/smb/client/cifs_uniupr.h
index 7b272fcdf0d3..b1d51d0da4fe 100644
--- a/fs/smb/client/cifs_uniupr.h
+++ b/fs/smb/client/cifs_uniupr.h
@@ -121,119 +121,3 @@ const struct UniCaseRange CifsUniUpperRange[] = {
 	{0}
 };
 #endif
-
-#ifndef UNIUPR_NOLOWER
-/*
- * Latin lower case
- */
-signed char CifsUniLowerTable[512] = {
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 000-00f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 010-01f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 020-02f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 030-03f */
-	0, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,	/* 040-04f */
-	32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0, 0, 0, 0, 0,	/* 050-05f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 060-06f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 070-07f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 080-08f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 090-09f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 0a0-0af */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 0b0-0bf */
-	32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,	/* 0c0-0cf */
-	32, 32, 32, 32, 32, 32, 32, 0, 32, 32, 32, 32, 32, 32, 32, 0,	/* 0d0-0df */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 0e0-0ef */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 0f0-0ff */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 100-10f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 110-11f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 120-12f */
-	0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1,	/* 130-13f */
-	0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0,	/* 140-14f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 150-15f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 160-16f */
-	1, 0, 1, 0, 1, 0, 1, 0, -121, 1, 0, 1, 0, 1, 0, 0,	/* 170-17f */
-	0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 79, 0,	/* 180-18f */
-	0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,	/* 190-19f */
-	1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1,	/* 1a0-1af */
-	0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0,	/* 1b0-1bf */
-	0, 0, 0, 0, 2, 1, 0, 2, 1, 0, 2, 1, 0, 1, 0, 1,	/* 1c0-1cf */
-	0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0,	/* 1d0-1df */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e0-1ef */
-	0, 2, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1f0-1ff */
-};
-
-/* Lower case range - Greek */
-static signed char UniCaseRangeL0380[44] = {
-	0, 0, 0, 0, 0, 0, 38, 0, 37, 37, 37, 0, 64, 0, 63, 63,	/* 380-38f */
-	0, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,	/* 390-39f */
-	32, 32, 0, 32, 32, 32, 32, 32, 32, 32, 32, 32,
-};
-
-/* Lower case range - Cyrillic */
-static signed char UniCaseRangeL0400[48] = {
-	0, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 0, 80, 80,	/* 400-40f */
-	32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,	/* 410-41f */
-	32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,	/* 420-42f */
-};
-
-/* Lower case range - Extended cyrillic */
-static signed char UniCaseRangeL0490[60] = {
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 490-49f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 4a0-4af */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 4b0-4bf */
-	0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
-};
-
-/* Lower case range - Extended latin and greek */
-static signed char UniCaseRangeL1e00[504] = {
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e00-1e0f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e10-1e1f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e20-1e2f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e30-1e3f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e40-1e4f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e50-1e5f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e60-1e6f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e70-1e7f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e80-1e8f */
-	1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0,	/* 1e90-1e9f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1ea0-1eaf */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1eb0-1ebf */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1ec0-1ecf */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1ed0-1edf */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1ee0-1eef */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0,	/* 1ef0-1eff */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f00-1f0f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, 0, 0,	/* 1f10-1f1f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f20-1f2f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f30-1f3f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, 0, 0,	/* 1f40-1f4f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, -8, 0, -8, 0, -8, 0, -8,	/* 1f50-1f5f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f60-1f6f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 1f70-1f7f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f80-1f8f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f90-1f9f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1fa0-1faf */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -74, -74, -9, 0, 0, 0,	/* 1fb0-1fbf */
-	0, 0, 0, 0, 0, 0, 0, 0, -86, -86, -86, -86, -9, 0, 0, 0,	/* 1fc0-1fcf */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -100, -100, 0, 0, 0, 0,	/* 1fd0-1fdf */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -112, -112, -7, 0, 0, 0,	/* 1fe0-1fef */
-	0, 0, 0, 0, 0, 0, 0, 0,
-};
-
-/* Lower case range - Wide latin */
-static signed char UniCaseRangeLff20[27] = {
-	0, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,	/* ff20-ff2f */
-	32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
-};
-
-/*
- * Lower Case Range
- */
-const struct UniCaseRange CifsUniLowerRange[] = {
-	{0x0380, 0x03ab, UniCaseRangeL0380},
-	{0x0400, 0x042f, UniCaseRangeL0400},
-	{0x0490, 0x04cb, UniCaseRangeL0490},
-	{0x1e00, 0x1ff7, UniCaseRangeL1e00},
-	{0xff20, 0xff3a, UniCaseRangeLff20},
-	{0}
-};
-#endif
diff --git a/fs/smb/server/unicode.h b/fs/smb/server/unicode.h
index 076f6034a789..b48c7b11b9c7 100644
--- a/fs/smb/server/unicode.h
+++ b/fs/smb/server/unicode.h
@@ -26,8 +26,6 @@
 #include <linux/nls.h>
 #include <linux/unicode.h>
 
-#define  UNIUPR_NOLOWER		/* Example to not expand lower case tables */
-
 /*
  * Windows maps these to the user defined 16 bit Unicode range since they are
  * reserved symbols (along with \ and /), otherwise illegal to store
@@ -57,11 +55,6 @@ extern signed char SmbUniUpperTable[512];
 extern const struct UniCaseRange SmbUniUpperRange[];
 #endif				/* UNIUPR_NOUPPER */
 
-#ifndef UNIUPR_NOLOWER
-extern signed char CifsUniLowerTable[512];
-extern const struct UniCaseRange CifsUniLowerRange[];
-#endif				/* UNIUPR_NOLOWER */
-
 #ifdef __KERNEL__
 int smb_strtoUTF16(__le16 *to, const char *from, int len,
 		   const struct nls_table *codepage);
@@ -314,45 +307,4 @@ static inline __le16 *UniStrupr(register __le16 *upin)
 }
 #endif				/* UNIUPR_NOUPPER */
 
-#ifndef UNIUPR_NOLOWER
-/*
- * UniTolower:  Convert a unicode character to lower case
- */
-static inline wchar_t UniTolower(register wchar_t uc)
-{
-	register const struct UniCaseRange *rp;
-
-	if (uc < sizeof(CifsUniLowerTable)) {
-		/* Latin characters */
-		return uc + CifsUniLowerTable[uc];	/* Use base tables */
-	}
-
-	rp = CifsUniLowerRange;	/* Use range tables */
-	while (rp->start) {
-		if (uc < rp->start)	/* Before start of range */
-			return uc;	/* Uppercase = input */
-		if (uc <= rp->end)	/* In range */
-			return uc + rp->table[uc - rp->start];
-		rp++;	/* Try next range */
-	}
-	return uc;		/* Past last range */
-}
-
-/*
- * UniStrlwr:  Lower case a unicode string
- */
-static inline wchar_t *UniStrlwr(register wchar_t *upin)
-{
-	register wchar_t *up;
-
-	up = upin;
-	while (*up) {		/* For all characters */
-		*up = UniTolower(*up);
-		up++;
-	}
-	return upin;		/* Return input pointer */
-}
-
-#endif
-
 #endif /* _CIFS_UNICODE_H */
diff --git a/fs/smb/server/uniupr.h b/fs/smb/server/uniupr.h
index 26583b776897..d09c585f20c9 100644
--- a/fs/smb/server/uniupr.h
+++ b/fs/smb/server/uniupr.h
@@ -136,133 +136,4 @@ const struct UniCaseRange SmbUniUpperRange[] = {
 };
 #endif
 
-#ifndef UNIUPR_NOLOWER
-/*
- * Latin lower case
- */
-signed char CifsUniLowerTable[512] = {
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 000-00f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 010-01f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 020-02f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 030-03f */
-	0, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
-					 32, 32, 32,	/* 040-04f */
-	32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0, 0,
-					 0, 0, 0,	/* 050-05f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 060-06f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 070-07f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 080-08f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 090-09f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 0a0-0af */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 0b0-0bf */
-	32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
-				 32, 32, 32, 32,	/* 0c0-0cf */
-	32, 32, 32, 32, 32, 32, 32, 0, 32, 32, 32, 32,
-					 32, 32, 32, 0,	/* 0d0-0df */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 0e0-0ef */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 0f0-0ff */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 100-10f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 110-11f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 120-12f */
-	0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1,	/* 130-13f */
-	0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0,	/* 140-14f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 150-15f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 160-16f */
-	1, 0, 1, 0, 1, 0, 1, 0, -121, 1, 0, 1, 0, 1, 0,
-						 0,	/* 170-17f */
-	0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 79,
-						 0,	/* 180-18f */
-	0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,	/* 190-19f */
-	1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1,	/* 1a0-1af */
-	0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0,	/* 1b0-1bf */
-	0, 0, 0, 0, 2, 1, 0, 2, 1, 0, 2, 1, 0, 1, 0, 1,	/* 1c0-1cf */
-	0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0,	/* 1d0-1df */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e0-1ef */
-	0, 2, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1f0-1ff */
-};
-
-/* Lower case range - Greek */
-static signed char UniCaseRangeL0380[44] = {
-	0, 0, 0, 0, 0, 0, 38, 0, 37, 37, 37, 0, 64, 0, 63, 63,	/* 380-38f */
-	0, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
-						 32, 32, 32,	/* 390-39f */
-	32, 32, 0, 32, 32, 32, 32, 32, 32, 32, 32, 32,
-};
-
-/* Lower case range - Cyrillic */
-static signed char UniCaseRangeL0400[48] = {
-	0, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80,
-					 0, 80, 80,	/* 400-40f */
-	32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
-					 32, 32, 32,	/* 410-41f */
-	32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
-					 32, 32, 32,	/* 420-42f */
-};
-
-/* Lower case range - Extended cyrillic */
-static signed char UniCaseRangeL0490[60] = {
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 490-49f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 4a0-4af */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 4b0-4bf */
-	0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
-};
-
-/* Lower case range - Extended latin and greek */
-static signed char UniCaseRangeL1e00[504] = {
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e00-1e0f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e10-1e1f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e20-1e2f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e30-1e3f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e40-1e4f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e50-1e5f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e60-1e6f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e70-1e7f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1e80-1e8f */
-	1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0,	/* 1e90-1e9f */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1ea0-1eaf */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1eb0-1ebf */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1ec0-1ecf */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1ed0-1edf */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,	/* 1ee0-1eef */
-	1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0,	/* 1ef0-1eff */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f00-1f0f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, 0, 0,	/* 1f10-1f1f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f20-1f2f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f30-1f3f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, 0, 0,	/* 1f40-1f4f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, -8, 0, -8, 0, -8, 0, -8,	/* 1f50-1f5f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f60-1f6f */
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	/* 1f70-1f7f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f80-1f8f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1f90-1f9f */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -8, -8, -8, -8, -8, -8,	/* 1fa0-1faf */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -74, -74, -9, 0, 0, 0,	/* 1fb0-1fbf */
-	0, 0, 0, 0, 0, 0, 0, 0, -86, -86, -86, -86, -9, 0,
-							 0, 0,	/* 1fc0-1fcf */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -100, -100, 0, 0, 0, 0,	/* 1fd0-1fdf */
-	0, 0, 0, 0, 0, 0, 0, 0, -8, -8, -112, -112, -7, 0,
-							 0, 0,	/* 1fe0-1fef */
-	0, 0, 0, 0, 0, 0, 0, 0,
-};
-
-/* Lower case range - Wide latin */
-static signed char UniCaseRangeLff20[27] = {
-	0, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
-							 32,	/* ff20-ff2f */
-	32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
-};
-
-/*
- * Lower Case Range
- */
-const struct UniCaseRange CifsUniLowerRange[] = {
-	{0x0380, 0x03ab, UniCaseRangeL0380},
-	{0x0400, 0x042f, UniCaseRangeL0400},
-	{0x0490, 0x04cb, UniCaseRangeL0490},
-	{0x1e00, 0x1ff7, UniCaseRangeL1e00},
-	{0xff20, 0xff3a, UniCaseRangeLff20},
-	{0}
-};
-#endif
-
 #endif /* __KSMBD_UNIUPR_H */
-- 
2.41.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
