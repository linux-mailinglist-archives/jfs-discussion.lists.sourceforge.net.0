Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OS1MNeygGn6AQMAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 15:21:11 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E14D8CD424
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 15:21:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=djswbpvzZ83xsA7cBADMZ3RNiURY6g8WjZQ/5eU/XEQ=; b=h5DJe9osnLtQ2Q2i2DDzPy9dc+
	vAy8Tau++r344st9KMDCGy7KNaFD6WpDVnUY5ZYQtsAbLf+YQTuk7hjK4zfcnCL5pfoF4Ma4dL9XG
	AVi92kSxKo7IilyHA6TkJ5dp2cuHmPYg/1ijq/vzTGhQsWcQHNGVNaTZnJRTFVLScFm0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vmumx-0004fk-0l;
	Mon, 02 Feb 2026 14:20:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@kernel.org>) id 1vmqZS-0001it-RI
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 09:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DQ8yRBkBtUIhR4SFa3h5n6EkFWshA9lGZoUD5c0+X5Y=; b=lC301Rm5tNFItZ5x/Ba0o8KvIa
 jY/ECozdGfIiV50eOY48/1NY/QPX7PkaKToLujtn5MedDXHlQ2zE0UV3M3ocYPkwyh4jZCmfSY41O
 kjKddbuKj1z0b6SUX6jJ51Iz25xLbDWtAvG5RqnIp/EoPzr3y9kGT4T6NRfHuS12o+U8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DQ8yRBkBtUIhR4SFa3h5n6EkFWshA9lGZoUD5c0+X5Y=; b=P
 +CBX7X1nGozXeQpsc9Og24m6ED5uybiTnVQoWEBnmVjgaEF3f52++WVYKRW2avOoo36RfqmqQ4ymF
 38mE6q6ETiQq00ZJGxSzKD1X4IIoXH1t2+J0t9KcL57tOXthclwY2TIyWc5MXe3DhmfVtPacN1jWS
 ENwbp1d8RhL5FqkQ=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vmqZS-0008RM-Ds for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 09:50:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BEB00600C3;
 Mon,  2 Feb 2026 09:50:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0213CC116C6;
 Mon,  2 Feb 2026 09:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1770025803;
 bh=KGmSrfQi/Lnf2xHNhl2wOyJ/ND0MoBJUfB0nmNstbNA=;
 h=From:To:Cc:Subject:Date:From;
 b=t8ZyPOTTJI9+AcAIJV3wVR4r7I26deqLnhbpfDX9o5/CrSEy8jyt3dtYP7PlQCsu2
 s5CBkMGOAXVPCcJPErg86HjsNKNGJHgJWSufNXzpPZ2AJEJVHi00u3M4OFpCEtEXcn
 bwcxRrL54yeag3XlBZbhY7xgvWPQh/jnESCkoPB3MnRwtuvYfUa1jYILlsuOkvGz63
 oL1Du3geFVTAUvVNOkmJHV0FvxYOSBhkvmYn9QKVfE6WwMeeVjnEo73VMf/Zo3EALQ
 KewlkE9Iy7xSXFjDZlDBM+GaP0KWuQ3xpuVGL2A9Z+K4cX5fbjlYDhP40ijoULyhTx
 aZnczSTfo/Mng==
To: Dave Kleikamp <shaggy@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Zheng Yu <zheng.yu@northwestern.edu>
Date: Mon,  2 Feb 2026 10:49:53 +0100
Message-Id: <20260202094958.1232478-1-arnd@kernel.org>
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
X-Headers-End: 1vmqZS-0008RM-Ds
X-Mailman-Approved-At: Mon, 02 Feb 2026 14:20:26 +0000
Subject: [Jfs-discussion] [PATCH] jfs: avoid
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
X-Rspamd-Queue-Id: E14D8CD424
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

Rephrase this again by adding a cast. The check is still always false,
but the compiler shuts up about it.

Fixes: cafc6679824a ("jfs: replace hardcoded magic number with DTPAGEMAXSLOT constant")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 fs/jfs/jfs_dtree.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 0ab83bb7bbdf..e3301e5fa037 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -2903,7 +2903,7 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
 		stbl = DT_GETSTBL(p);
 
 		for (i = index; i < p->header.nextindex; i++) {
-			if (stbl[i] < 0 || stbl[i] >= DTPAGEMAXSLOT) {
+			if (stbl[i] < 0 || (unsigned char)stbl[i] >= DTPAGEMAXSLOT) {
 				jfs_err("JFS: Invalid stbl[%d] = %d for inode %ld, block = %lld",
 					i, stbl[i], (long)ip->i_ino, (long long)bn);
 				free_page(dirent_buf);
@@ -3108,7 +3108,7 @@ static int dtReadFirst(struct inode *ip, struct btstack * btstack)
 		/* get the leftmost entry */
 		stbl = DT_GETSTBL(p);
 
-		if (stbl[0] < 0 || stbl[0] >= DTPAGEMAXSLOT) {
+		if (stbl[0] < 0 || (unsigned char)stbl[0] >= DTPAGEMAXSLOT) {
 			DT_PUTPAGE(mp);
 			jfs_error(ip->i_sb, "stbl[0] out of bound\n");
 			return -EIO;
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
