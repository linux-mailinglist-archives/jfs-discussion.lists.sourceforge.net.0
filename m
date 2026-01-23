Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wK0sLqM7c2kztgAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Jan 2026 10:13:07 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9AD730DD
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Jan 2026 10:13:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SRGW9QCWhI8VWMFDPACI80G2Z3cIYzvj8PolYv86Wa4=; b=MF2dSNupvWYg4Yg6lNb6Sjqqo4
	JWEfOOtb5aKmQbM4x63xPqkUsvoDJBCx+xYocd3qW2vzD1QOHHAiJL5bGp0raHK1R30DUcawIzYTk
	/Ql6QdCrxwSpI9dDAgM12O5lW77MBM6AAwfrVvPAi+JGF6CMGB2+0Go1e9V6roHfaGAk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vjDDf-0005gg-RJ;
	Fri, 23 Jan 2026 09:12:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kartikey406@gmail.com>) id 1vjDDe-0005gZ-PC
 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jan 2026 09:12:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UYjjSXoZ8KY4OISrpWK9jrnnKzhKIHB6meD+8H3qiYU=; b=mm+6/fctdTj2LWc3OlNjKEWYtE
 t8kSusJ4t1THebpyA0/Q8/lsdVvUHd4hiMK0H9XU5NK78K4soowLn87uO2TwxKz2NFo9rVNo70yRY
 by1vKSZ/cDIpkqZBptFZom+jgrIwOtj3CxkfWC+nuh4fFlaAwkxlOV7aSkWMFHX7BxIA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UYjjSXoZ8KY4OISrpWK9jrnnKzhKIHB6meD+8H3qiYU=; b=I
 J3K99cN+/1hbmnJu95aGqobonRxAcRchVays0Jpiz8sAG9lGqNDW3aQYEYowIVpmX5hQeA1qnpn3G
 247aTwCRIaubHIC7EuQroi5TrgaDiY03+dXqE0/gsCpWYgTk5XUGm6vOVIEYpzqBnInAj+YO8zca8
 QxXj21iPQUvXSMQY=;
Received: from mail-yx1-f49.google.com ([74.125.224.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vjDDe-0008UP-A8 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jan 2026 09:12:42 +0000
Received: by mail-yx1-f49.google.com with SMTP id
 956f58d0204a3-649166a96a9so2045752d50.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 23 Jan 2026 01:12:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769159551; cv=none;
 d=google.com; s=arc-20240605;
 b=DEtBA8YpOMc3MtAAV2KvZEh7yyNyIxfNk4OIi5RLOr62LExgJrLiPh0r9br5rNaSAs
 xTkDKkkck1KUlomZ1Bnw6wCi60VCceRYSmk+KBLT5lErQe7+Rs4d4a9+O7FdgQHm29dU
 tLCQbLgiMAF5P7VITK3mkFqqGPSDro9NgkE5lcowv2nrkRou4fqHo8LdSP0rghachRV3
 N9gQBrgyKsGoYbrfZU14NK9+OuFHG9N+uSn4kGHmfhmtUP7VcLyrM3C10S+aqPgj7E9B
 CRs/tMKNdjyk+2sd5k4atfrDdCPeZoftIuqOdKZDX2BfDx2XfgA98/RVzyIY6IAcaTme
 ngAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=UYjjSXoZ8KY4OISrpWK9jrnnKzhKIHB6meD+8H3qiYU=;
 fh=bAMwTBHao6eRHBJmwbCpE9aFOrBXW0fZfPb7P5KAUCY=;
 b=PzIHs3/hBE7g16DsAuonc7C/6cfV7II7J6UyDu5SiDzpBws/Ul05j4vkWSGOvBk/jW
 t56GOw8spg1LDRT7auGQLGZiEILjrMknudbYSfGph6cLQAxGY3qwXrWzJftJPT32dKQF
 6lqCIa+X5wfjH474LcUD7DdifDjoVGn3lhGkBFkJMapQnADgIiPOjB7XnyjlEUaotn0z
 d1hXd5LLXImaGyeM1+VfWaCQfYD71wrFgtpvJIHrszcAihFgTe3Ba6iYsI3KbjZJ5Gk+
 +k3emFKx0xnlpdBCZGn/wa9JwLnlj4UBxFiyfSZThrR3lA8DskLjm2SGYbB/cX9GrKIb
 IBzg==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769159551; x=1769764351; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=UYjjSXoZ8KY4OISrpWK9jrnnKzhKIHB6meD+8H3qiYU=;
 b=OJ8PXGaDGbxedGadN4kOYhi769YGEoY18QZYIiRI4o/XvxVRPmD1JLOu7gsk75NSGv
 8TlfvBwGs69byyPqLh591gtsp9TuhpUWaVP2hTwtdLKobEq7X/yyXP9vwKhixV1kpyCF
 rjJzWEB+Z4s4CTsTK0zj84mbR+htvnemy3kz98cGDdPCd6v1B94VnDzHlLdexzjX5FRb
 cf958K9tMcWUrotDVDpefm+gngikfEPAB+plMA5HZcMzSujFG2QYBY4M8xZ5RTTWiKLE
 jhnpYJQCmua7eEs9iZ7RdlDBay63W/pMZptS4MkmeZNgSR0hh+fYwrkVZxXvBfRxrw77
 U9YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769159551; x=1769764351;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UYjjSXoZ8KY4OISrpWK9jrnnKzhKIHB6meD+8H3qiYU=;
 b=kHDF1Bz1XNDFRuCWJkLmXwBRFVU+KRdxFuRWB9ZSjKvUwI46Pl3U8udIeuuNdHJzez
 vUYE5c3i1EbEj5D8nWS2P0uFuh60NxE1S/vyHQGVHrFSWjad6vZmm5xQ9mBSFv5xbSHs
 XPY95iJ7Ie8zSPbBzsFXsSOnVtDZyXEvahOZ64MBYMmryBENkw8Cm2LKgTuHGRSqMbe7
 SArobgx00ZdcqiE+uJRyiR7lzSuT8yiJiq38bW1DbfCJKcX893dyG8WgCsR6fgpn/dgd
 wVvspg2Odx179AXEHtpl9Ne2kpazpDLPNS8DZqVx1GNNOzrsF80TUL/uWIfz9SJ5wjDG
 LFJA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTsgQccPpRC0jqiREeDczLR70/X5/Tj70UdtjAZf1H0VEtpt2TwiDQZiZYxgjo2GkZnxOJsxwNhSG3XL2WcA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxg+mtg+uyVxileAc8UgCCHc1UtCplAamRo4T7nyBUcdlnKnFDY
 fDW9jFXtUKfam3crEaFyK18gZN+ogI8ZzxQACmchsn6hinN4RcGZevSvhIj0LxAsOUrwCmJjTs5
 Gpys3uWVJouOtRZXJG3qOkmIE0YLn7ZE=
X-Gm-Gg: AZuq6aIHl5KpoxdLYZZnuIBOzIl3GcMUOvoMYa4TXdJVabmD87n0ve+bucUdLwcsH4D
 h6jbc2whOoEOuiiipqeM6eU3W5N4KKjBdBvbT5Z/ab7Nf/Arc8+DFkUHzMrppf1dM94Gi3TcMG0
 SLo3c+gGl9RDSFpOatVInFVPklbMaDBvz2VSRlzFlzh/Gkb9yZQVuBpRLznvicfFuXwYDFN2zxd
 vbI3JdmBbDZ4eRIRsIrX5qJQCJoCzsvrZf5gaqWO2yZAPn2ySaMReshivX8jhyNxt69z43N1aOX
 239QMZwbaW4Z+vu2bKLVJnYisI6Fcx/drzx0RdqwVoUspQpGY4cAsmhZ6nLPGh3tU4xwZSo=
X-Received: by 2002:a05:690e:1243:b0:649:518d:94db with SMTP id
 956f58d0204a3-6496125f49bmr398699d50.68.1769159551356; Fri, 23 Jan 2026
 01:12:31 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 23 Jan 2026 14:42:20 +0530
X-Gm-Features: AZwV_Qi8Ck6N1WoTmHsK8fgXgfEREZVk9mtUw1L-EImZAmGU-QQ5-yL2Q7EQTxs
Message-ID: <CADhLXY7wq8pNoajitb4vmv-qBCoO91mw5AATsuf6rcWpVRD5Jw@mail.gmail.com>
To: shaggy@kernel.org, brauner@kernel.org
X-Spam-Score: 4.1 (++++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi JFS maintainers,
 I'm investigating a KMSAN warning reported
 by syzbot: https://syzkaller.appspot.com/bug?extid=d3a57c32b9112d7b01ec The
 KMSAN trace shows uninitialized memory being read in txLock(): 
 Content analysis details:   (4.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 4.0 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?74.125.224.49>]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [kartikey406(at)gmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [kartikey406(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [74.125.224.49 listed in wl.mailspike.net]
X-Headers-End: 1vjDDe-0008UP-A8
Subject: [Jfs-discussion] Subject: [PATCH RFC] jfs: fix KMSAN warning in
 txLock - need guidance
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
From: Deepanshu Kartikey via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Deepanshu Kartikey <kartikey406@gmail.com>
Cc: syzbot+d3a57c32b9112d7b01ec@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, mjguzik@gmail.com,
 ssrane_b23@ee.vjti.ac.in,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[syzkaller.appspotmail.com,lists.sourceforge.net,gmail.com,ee.vjti.ac.in,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:brauner@kernel.org,m:syzbot+d3a57c32b9112d7b01ec@syzkaller.appspotmail.com,m:jfs-discussion@lists.sourceforge.net,m:mjguzik@gmail.com,m:ssrane_b23@ee.vjti.ac.in,m:linux-kernel@vger.kernel.org,m:syzbot@syzkaller.appspotmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion,d3a57c32b9112d7b01ec];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[kartikey406@gmail.com];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,syzkaller.appspot.com:url]
X-Rspamd-Queue-Id: 0A9AD730DD
X-Rspamd-Action: no action

Hi JFS maintainers,

I'm investigating a KMSAN warning reported by syzbot:
https://syzkaller.appspot.com/bug?extid=d3a57c32b9112d7b01ec

The KMSAN trace shows uninitialized memory being read in txLock():

BUG: KMSAN: uninit-value in txLock+0x13a2/0x2900 fs/jfs/jfs_txnmgr.c:659

Uninit was created at:
  vmalloc_noprof+0xce/0x140 mm/vmalloc.c:4146
  txInit+0xb5c/0xfa0 fs/jfs/jfs_txnmgr.c:297

The issue is that txInit() allocates the global TxLock array using
vmalloc(), which doesn't zero the memory. When txLock() later accesses
TxLock[].next fields, it reads uninitialized memory.

I have a simple fix - changing vmalloc() to vzalloc() in txInit():

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index c16578af3a77..4c72103a0b46 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -294,7 +294,7 @@ int txInit(void)
  * tlock id = 0 is reserved.
  */
  size = sizeof(struct tlock) * nTxLock;
- TxLock = vmalloc(size);
+ TxLock = vzalloc(size);
  if (TxLock == NULL) {
  vfree(TxBlock);
  return -ENOMEM;

This fixes the KMSAN warning. However, when testing with the reproducer,
this change exposes a different issue:

[  307.772029][ T6674] BUG at fs/jfs/jfs_txnmgr.c:662 assert(last)

It seems that with zeroed memory, the assert at line 662 now fails
because the code is trying to traverse a transaction lock list starting
from atlhead=0, and TxLock[0].next is now 0 (instead of garbage).

I believe my vzalloc() patch is correct - it fixes undefined behavior.
The assert failure appears to be a separate pre-existing logic bug that
was previously hidden by garbage memory values.

Questions:
1. Is my analysis correct?
2. Should I submit just the vzalloc() patch?
3. Should the assert be replaced with proper error handling?
4. Is there a case where atlhead=0 is valid and the code should handle it?

I'm a kernel newbie and would appreciate guidance on the right approach.

Thanks,
Deepanshu Kartikey


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
