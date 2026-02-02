Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJdtBMIMgWkCDwMAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 21:44:50 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 592C5D13AE
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 21:44:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Thy9wK5dBxamk2UJmsOiZyjwJ1Fv21IPF996HdfA7tE=; b=WP464TXLonK+WMOE8gvEC2w/2K
	sw4vibN5e+x/QmnCfhQ3IEqVzBV+ze7T7QfslYZMLOrCVxOgL94qXTQOHO1P40hDkP2FYGCXNB8Vn
	w3rSOFeTQLGSI58uJ1BrO/otE98+UWTP0FGuhmzc++vIRgWv4o+W/TffESJQWwxAVV5E=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vn0mH-0001Pc-Ap;
	Mon, 02 Feb 2026 20:44:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@kernel.org>) id 1vn0mF-0001PU-U6
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 20:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pBOJJyZv0pmK6vWKL7oRbuBBWCFKP/QpskTvzsrTARE=; b=fOYbOIVsW9Smht/XcBAmf9DC9x
 6qfQp6om9lN0OudoE0jHV7AsZg2o3AfZ3EZiceqHPsWVwBJ0MuMsZa+KqPMyck5qgH4cBH1Hh0+o+
 nLVy9BIUlWH+2v0lFSu9T0+6ENE/ePVGbUQXuKtZBXon0p4aXEmFrN0docxFe9TnTy30=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pBOJJyZv0pmK6vWKL7oRbuBBWCFKP/QpskTvzsrTARE=; b=n
 E38YiiaKROYlFSxBfyOcm9Uc533U8/DGX5tJr+W5+4c4SK7A0cNugG6islfp/rRNTAYeqfqInnKMS
 oHxPs7a7EAttNOPF/UFEEP00cin7InvN9kcOZF43pgvtlniD8dzyHkAcV8SSRxp/2tOj7OzRia7EW
 pTH8XASgTp65ltWw=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vn0mF-0003BD-D9 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 20:44:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 140A54087F;
 Mon,  2 Feb 2026 20:43:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A096C116C6;
 Mon,  2 Feb 2026 20:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1770065036;
 bh=H+vxRtqXYUbLYHIhSNNFvOS0z0tBjan7nM1QpxKjW/w=;
 h=From:To:Cc:Subject:Date:From;
 b=chslCmoXpvFF3T1UZ09jLPKnO65kuWAprczD4zgUzHq8uj+IbQL4xHUON4fpobgnq
 1eWrb0F1S0yALNla/5/t9LlD9zGy/ChALoWqhQ4GOiynBX1WgfW9wf5W7fbYc+ET7s
 tRvRFpg7gCg8PoqXQ9CACe0ACfyLANs6K0JZ2O9NlTw82q2iG1jFtNYawq9j7XSSIB
 RL+cDwDHI43jmXk8WXNNa6IQgTxmn3BMTX02bspD33417ih0M2SuxO++Tkidp0RFn0
 wMDi2NFrKT8fL6Q8gVIETKILwlcNnmCRg5UjSe32RKWpbVhpZn6QYnU2bv9Kt9hVwI
 3SkTMmfW/FPFg==
To: Dave Kleikamp <shaggy@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Zheng Yu <zheng.yu@northwestern.edu>
Date: Mon,  2 Feb 2026 21:43:45 +0100
Message-Id: <20260202204351.2174384-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Arnd Bergmann <arnd@arndb.de> A recent change for the
 range check started triggering a clang warning: fs/jfs/jfs_dtree.c:2906:31:
 error: result of comparison of constant 128 with expression of type 's8'
 (aka 'signed char') is always false [-Werror,
 -Wtautological-constant-out-of-range-compare] 2906 | i [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vn0mF-0003BD-D9
Subject: [Jfs-discussion] [PATCH] [v2] jfs: avoid
 -Wtautological-constant-out-of-range-compare warning
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
From: Arnd Bergmann via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Arnd Bergmann <arnd@kernel.org>
Cc: jfs-discussion@lists.sourceforge.net, llvm@lists.linux.dev,
 Arnd Bergmann <arnd@arndb.de>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 linux-kernel@vger.kernel.org, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Aditya Dutt <duttaditya18@gmail.com>,
 Roman Smirnov <r.smirnov@omp.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-5.71 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:nathan@kernel.org,m:zheng.yu@northwestern.edu,m:jfs-discussion@lists.sourceforge.net,m:llvm@lists.linux.dev,m:arnd@arndb.de,m:nick.desaulniers+lkml@gmail.com,m:linux-kernel@vger.kernel.org,m:morbo@google.com,m:justinstitt@google.com,m:duttaditya18@gmail.com,m:r.smirnov@omp.ru,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,lists.linux.dev,arndb.de,gmail.com,vger.kernel.org,google.com,omp.ru];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[jfs-discussion,lkml];
	HAS_REPLYTO(0.00)[arnd@kernel.org];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arndb.de:email,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 592C5D13AE
X-Rspamd-Action: no action

From: Arnd Bergmann <arnd@arndb.de>

A recent change for the range check started triggering a clang warning:

fs/jfs/jfs_dtree.c:2906:31: error: result of comparison of constant 128 with expression of type 's8' (aka 'signed char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
 2906 |                         if (stbl[i] < 0 || stbl[i] >= DTPAGEMAXSLOT) {
      |                                            ~~~~~~~ ^  ~~~~~~~~~~~~~
fs/jfs/jfs_dtree.c:3111:30: error: result of comparison of constant 128 with expression of type 's8' (aka 'signed char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
 3111 |                 if (stbl[0] < 0 || stbl[0] >= DTPAGEMAXSLOT) {
      |                                    ~~~~~~~ ^  ~~~~~~~~~~~~~

Both the old and the new check were useless, but the previous version
apparently did not lead to the warning.

Remove the extraneous range check for simplicity.

Fixes: cafc6679824a ("jfs: replace hardcoded magic number with DTPAGEMAXSLOT constant")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: drop the check instead of shutting up the warning
---
 fs/jfs/jfs_dtree.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 0ab83bb7bbdf..9ab3f2fc61d1 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -2903,7 +2903,7 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
 		stbl = DT_GETSTBL(p);
 
 		for (i = index; i < p->header.nextindex; i++) {
-			if (stbl[i] < 0 || stbl[i] >= DTPAGEMAXSLOT) {
+			if (stbl[i] < 0) {
 				jfs_err("JFS: Invalid stbl[%d] = %d for inode %ld, block = %lld",
 					i, stbl[i], (long)ip->i_ino, (long long)bn);
 				free_page(dirent_buf);
@@ -3108,7 +3108,7 @@ static int dtReadFirst(struct inode *ip, struct btstack * btstack)
 		/* get the leftmost entry */
 		stbl = DT_GETSTBL(p);
 
-		if (stbl[0] < 0 || stbl[0] >= DTPAGEMAXSLOT) {
+		if (stbl[0] < 0) {
 			DT_PUTPAGE(mp);
 			jfs_error(ip->i_sb, "stbl[0] out of bound\n");
 			return -EIO;
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
