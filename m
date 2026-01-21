Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ClaDmg4cWnKfQAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 Jan 2026 21:34:48 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 731EB5D562
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 Jan 2026 21:34:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XISHp5U4KDKXh7EjoA/5hcKE724eqh7YyjVJrQu3e48=; b=bo6K+N/jKtNLogrZjzo777brkf
	tdLC3wOU0mk9fqXTbFu+gR4vFhe3+YgyYKDgbkr6EpSe4lvaxSXy6aMr7DpTRBntaBgexXEy5GDlr
	4V0bkYBupKkHpM1Zt2RZ5MHH3KGmZ7QnuS8iQwiY6m9JUKHhSq4XOeLtHbpS3f4/PY7E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vieuC-0001lU-K2;
	Wed, 21 Jan 2026 20:34:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qikeyu2017@gmail.com>) id 1viesA-0007nw-27
 for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Jan 2026 20:32:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jFa/fNjvdIQh3CVIwiGWrGESLBSoMJOat8/avU4HWX4=; b=B/rz9tuVc/Hn11Hilae2YZSQoC
 EA2rwQYckGppz/u+mtk9WwF1dn+LSc32NbEM906zqWrpyh9dYepZY+hcYo6ySWxy9ch2KM3vOH077
 AIfX18pg1ol+Oa5jGTX1TCG920g6c98DUYrvonnobEWGu5HS1oNo829s3EAW8yKonzRg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jFa/fNjvdIQh3CVIwiGWrGESLBSoMJOat8/avU4HWX4=; b=U
 dzk8qkc2zSg1Mq1ryUaHkaTIdMNAbmIS+4ZnAff/mG3oXsVtB42EL17GdAqeYr4bRBebFbawD7zjW
 6M5XtvurpZ3OhcAsaKb2qlVZei8SapynZuR2kxXO+jCF94YGj8aoscZtVo5vslyrJg4DvJcNKmFWy
 NuyEArUQIdKdyaus=;
Received: from mail-pf1-f173.google.com ([209.85.210.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1viesA-0004PU-6K for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Jan 2026 20:32:14 +0000
Received: by mail-pf1-f173.google.com with SMTP id
 d2e1a72fcca58-81e821c3d4eso251652b3a.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 21 Jan 2026 12:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769027523; x=1769632323; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=jFa/fNjvdIQh3CVIwiGWrGESLBSoMJOat8/avU4HWX4=;
 b=JJ3skEHCoXfUc883Mev6pNhDLsJd09otghRevUddjPh1kapize9XqKSwImxDCITPGY
 IVxNH+o8RpHexqn8nzBe+HuVhCH2lSDPmSOJcecmBwoQd8LGe5QSG0jF4+SIi836NY/U
 Kp8O+T+DUDm16z5fp5zVhjYdPgqC/mFew6wXRP5GFegN9DoFfuBTVw8W5ZQ49MZ6SuUq
 Sq78dGT06tUbogu52VX7N2y8HJE9Jcsx4GJu0osWZ8knx25b3XC7MODClX/LEOzkyyAT
 oP90YqN5CTIYWpsV9bSwX/jeCRdaT/srg/jkdArcq5w0g3lVB7sr2Z/omU94wYDliUig
 aEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769027523; x=1769632323;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jFa/fNjvdIQh3CVIwiGWrGESLBSoMJOat8/avU4HWX4=;
 b=o9pXymwUuNTuMAIGB3qRmvLXAiZ/OcSZOjW3Uv6F860sh6WaO8ds86xhveSq+EGgSG
 xJ87L5+AOB+GhRza4OkCHMOqfEwlObeS6QZiaELHxWHYDo12u2Z0uvRykXuKlkL5+doN
 D4J7AX70cHFDaqDU15ZnqwO0rjQRKeGxgXLBuANOooVq0MTge3XP11116lhmclDdfBfm
 Dqi8cjLFVRxBfMs2DNyxrMMVOWNtOYe72rryt4kZTuBPZN6KJERUNRVcq65adlzTdnaz
 VNsOPa7rntGJwzNZJZzcXX0OaMpFpQ16TeNjY3g1Hrbd1NLDBYfec6iQZxGhmy4WV0wV
 iqNw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVs2pThVXzvO9RWHj2/V74EaiKSIxSpyLSQHTMXZyOPefHbw1cRbaZ4+c3zgb25Tk7PuqB5hMJNit3Bjfobgg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwomW21NHju7KcMpTJ02kXpLm5axTfbB6YnbIl7/7sdvHpJTbDA
 kBZxHpjai/QDJMelhmhP1/kI32yPYPeyrA6bS1gL8LzBDfsZQElE0hw=
X-Gm-Gg: AZuq6aJ8P279Q/k/YFX6D4zpwSYBZnQj3H/vPoDCMZDMh6aroVKCLMkMGGcM+hhL0jb
 Ba/TRr+z1vty2VWe5YFG1ljxwXPzgngw06UxGXfUeDUKQpM+k3RaSfcpoCP3MFmk16UmVqzViY+
 3mOWMMP7HWz0STZKWEApytPXK5soq1uMY34hCoZTL6H4Bm5515hwosNORL72ac0+H6leFCW2+Fp
 Hlp2ttW/q6QC2yttcBjylryhDYuZ3f/NzB2PdsbdSHRQs072nHKtDp3U3iqTKKAWCEDkZR6gvmK
 kcwzSE6RNMe6xUwVtFyA3liNmPaU0ucW+CCsvX5dZorvx4I7auYOAZnCic4E+lKFBlpqbQC2pME
 Jw7cd1HrwW+/GZcDI7hncfH5XASWPcbClGvkEJWy2yZ7Ub8Yn4cq+TnlwFJ3uFAyEXLEwF4+0b6
 yHqxgNfGQIfVpTenUsjzHxZ+1CAg==
X-Received: by 2002:a05:6a00:ac3:b0:81e:f623:b9fe with SMTP id
 d2e1a72fcca58-81f9f7f61dcmr17548926b3a.4.1769027523419; 
 Wed, 21 Jan 2026 12:32:03 -0800 (PST)
Received: from DESKTOP-BKIPFGN ([38.76.140.13])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-81fa129629asm10027765b3a.52.2026.01.21.12.32.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jan 2026 12:32:03 -0800 (PST)
To: shaggy@kernel.org
Date: Thu, 22 Jan 2026 04:31:21 +0800
Message-ID: <20260121203121.1867-2-qikeyu2017@gmail.com>
X-Mailer: git-send-email 2.50.1.windows.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Similar to the issue fixed in commit 27e56f59bab5 ("UBSAN:
 array-index-out-of-bounds in dtSplitRoot"),
 the loop that traverses the freelist
 in dtExtendPage() uses the condition (fsi != -1) to terminat [...] 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [qikeyu2017(at)gmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [qikeyu2017(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.173 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1viesA-0004PU-6K
X-Mailman-Approved-At: Wed, 21 Jan 2026 20:34:20 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dtExtendPage
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
From: Kery Qi via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Kery Qi <qikeyu2017@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Kery Qi <qikeyu2017@gmail.com>, zheng.yu@northwestern.edu,
 duttaditya18@gmail.com, r.smirnov@omp.ru
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-6.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:qikeyu2017@gmail.com,m:zheng.yu@northwestern.edu,m:duttaditya18@gmail.com,m:r.smirnov@omp.ru,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,vger.kernel.org,gmail.com,northwestern.edu,omp.ru];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[qikeyu2017@gmail.com]
X-Rspamd-Queue-Id: 731EB5D562
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Similar to the issue fixed in commit 27e56f59bab5 ("UBSAN:
array-index-out-of-bounds in dtSplitRoot"), the loop that traverses
the freelist in dtExtendPage() uses the condition (fsi != -1) to
terminate. However, if the filesystem image is corrupted or maliciously
crafted, f->next could contain a value less than -1 (e.g., -2), causing
the loop to continue and resulting in an out-of-bounds array access
when indexing sp->slot[fsi].

Fix this by changing the loop termination condition from (fsi != -1)
to (fsi >= 0), so that any negative value will properly terminate the
loop.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Kery Qi <qikeyu2017@gmail.com>
---
 fs/jfs/jfs_dtree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 0ab83bb7bbdf..3e365ccfb33b 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -1804,7 +1804,7 @@ static int dtExtendPage(tid_t tid,
 		do {
 			f = &sp->slot[fsi];
 			fsi = f->next;
-		} while (fsi != -1);
+		} while (fsi >= 0);
 
 		f->next = n;
 	}
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
