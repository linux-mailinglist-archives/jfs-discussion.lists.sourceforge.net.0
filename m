Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPQtNEj2iWl7FAAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 09 Feb 2026 15:59:20 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4893111535
	for <lists+jfs-discussion@lfdr.de>; Mon, 09 Feb 2026 15:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jtfqzl5dEY3FprYioh1j59f3oCOG6Ag1gPce0thuVyI=; b=eUUIC05PFlIee9XQu895LvIQA9
	u8Y0PpljXhC4cprqtxvl1C6k1DgiGZ3T9Q5F8ra4v319RyynMuR/h20ssv2CzWX8URDEmxSowUrhL
	7jiuFbCH84U0Wpwuh6jDN0gOAmHPi6UZaSIZLnD37JP94OWHni/592I/KuaLzU9W04Fw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vpSih-0004pT-Gr;
	Mon, 09 Feb 2026 14:58:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <syzbot@kernel.org>) id 1vnZ6I-00047q-OK
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Feb 2026 09:23:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u2Ab8oUY5oTxiXarFP5BEM+YiY7JQEgTt2ABriJa5Dg=; b=aY5MIzfuhLfp3Odttp+gMAJuIY
 K/l1zOXRG0dCaKA51vWny0bIS0gn/cJQZ/fdLLoYK5ZY7YkQqRrmozitxgxMj90KmnL/UntGoq6hd
 YlzA+kWDisltPsPGexhVIev8lxSltwjlcagtSnVI9TVv6x9gHrLNNBWtsSuWzQy4dclI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=u2Ab8oUY5oTxiXarFP5BEM+YiY7JQEgTt2ABriJa5Dg=; b=f
 i1RY0okJHJnePBy2k8JPTh2fRqr8w70QRxfArUiRwKWYFOVtk4Kc9bMMFCW4P7aJSYwjFAPTj3Q0d
 h11S1h7f6ahhgvxlNbINP78ovr0mUkiY1+JjXPmNbaa8QnI8n8ssgY8CU5pPRFjG3A1/N5QrIY0V5
 oz9daP703y63az98=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vnZ6I-000139-0Q for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Feb 2026 09:23:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id AE1B441A1D;
 Wed,  4 Feb 2026 09:23:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0CEC4CEF7;
 Wed,  4 Feb 2026 09:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1770196980;
 bh=xpBNHLw1ybQAm9G2QR0TrOLsIa2kQxFTbxJgZSQ8QvI=;
 h=From:To:Cc:Subject:Date:From;
 b=c6mgO+179ipCFsaJ3+MxLIojtjIeuMwGB9/lhzbLg2stnjYZ5nSM9o+NAy7A+gjdq
 2qkudYPJEngZSWNlzsFI2m+qhiPL/l9/Ihei+igdFS2AUPsDRCeMXu4VSwGIVu7rSQ
 6M0hc6zBDp2v7k4MCzpGpTFWKE9LU0WGjm1Feq2oCyjKtAfHIxoDXuzu0tjqfcaqD0
 bCpK6eey8PVoZAJ5PSbbnSwY3MMQay3TOjP382smn4mI+nx8cu1VIjbGLbtC3pilD+
 ej3jLhObd/3JLwEqBNdJFCOCFcparqdF98hv85zYTR06iiR9Fc/p3j4KYoj90AXgk4
 qo/1kKWe2Kg+Q==
To: jfs-discussion@lists.sourceforge.net, shaggy@kernel.org,
 ghandatmanas@gmail.com
Date: Wed,  4 Feb 2026 10:22:30 +0100
Message-ID: <20260204092230.2540042-1-syzbot@kernel.org>
X-Mailer: git-send-email 2.53.0.rc2.204.g2597b5adb4-goog
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: UBSAN reported an array-index-out-of-bounds issue in
 dbFindLeaf:
 index 1365 is out of range for type 's8[1365]' (aka 'signed char[1365]')
 CPU: 0 UID: 0 PID: 6287 Comm: syz-executor268 Not tainted ... Call Trace:
 ... __ubsan_handle_out_of_bounds+0x115/0x140 lib/ubs [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vnZ6I-000139-0Q
X-Mailman-Approved-At: Mon, 09 Feb 2026 14:58:34 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dbFindLeaf
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
From: syzbot via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot <syzbot@kernel.org>
Cc: syzbot <syzbot@kernel.org>, stable@vger.kernel.org,
 syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-5.71 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[125];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lists.sourceforge.net,kernel.org,gmail.com];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[jfs-discussion,1afe7ef2d0062e19eeb3];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[syzbot@kernel.org];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[appspotmail.com:email,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: E4893111535
X-Rspamd-Action: no action

UBSAN reported an array-index-out-of-bounds issue in dbFindLeaf:

  index 1365 is out of range for type 's8[1365]' (aka 'signed char[1365]')
  CPU: 0 UID: 0 PID: 6287 Comm: syz-executor268 Not tainted ...
  Call Trace:
   ...
   __ubsan_handle_out_of_bounds+0x115/0x140 lib/ubsan.c:455
   dbFindLeaf+0x308/0x520 fs/jfs/jfs_dmap.c:2976
   dbFindCtl+0x267/0x520 fs/jfs/jfs_dmap.c:1717
   ...

The issue is caused by an off-by-one error in the bounds check within
dbFindLeaf. The function traverses the dmap tree to find free blocks.
It uses a loop to iterate through the levels of the tree, calculating
the index `x + n` to access the `tp->dmt_stree` array. The variable
`max_size` represents the size of this array (CTLTREESIZE (1365) for
dmapctl or TREESIZE (341) for dmaptree).

The bounds check `if (x + n > max_size)` allows `x + n` to be equal to
`max_size`. However, since the array size is `max_size`, the valid
indices are `0` to `max_size - 1`. Accessing `tp->dmt_stree[max_size]`
results in an array-index-out-of-bounds access.

This can occur when the `dmt_height` field in the on-disk structure is
corrupted or fuzzed to be larger than the fixed height supported by the
`dmt_stree` array.

Fix this by changing the condition to `>=` to correctly reject indices
equal to or greater than the array size.

Signed-off-by: syzbot@kernel.org
Signed-off-by: Dmitry Vyukov <dvyukov@google.com>
Fixes: 22cad8bc1d36 ("jfs: fix array-index-out-of-bounds in dbFindLeaf")
Reported-by: syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com
To: <jfs-discussion@lists.sourceforge.net>
To: "Dave Kleikamp" <shaggy@kernel.org>
To: "Manas Ghandat" <ghandatmanas@gmail.com>
Cc: <linux-kernel@vger.kernel.org>
Cc: <stable@vger.kernel.org>
---
This patch was generated by Google Gemini LLM model.
It was pre-reviewed and Signed-off-by a human, but please review carefully.

Gerrit code review with full side-by-side diffs:
https://linux-review.git.corp.google.com/c/linux/kernel/git/torvalds/linux/+/26122

Change-Id: I92f694e86518349eafa132b2ba314d8dfff6c86e
---

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cdfa699..18a7dc5 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2971,7 +2971,7 @@ static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
 			/* sufficient free space found.  move to the next
 			 * level (or quit if this is the last level).
 			 */
-			if (x + n > max_size)
+			if (x + n >= max_size)
 				return -ENOSPC;
 			if (l2nb <= tp->dmt_stree[x + n])
 				break;

base-commit: 63804fed149a6750ffd28610c5c1c98cce6bd377


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
