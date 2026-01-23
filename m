Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBD6EjA7c2kztgAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Jan 2026 10:11:12 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86ECA73093
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Jan 2026 10:11:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SRGW9QCWhI8VWMFDPACI80G2Z3cIYzvj8PolYv86Wa4=; b=Bep823lJlGVvnEimpuK6F591e2
	DiBJuiJFMzkihIYeLUPCiTfeIidHzClj70g3bAMtZAcwkKqT/r280Ynbw0x83cihWoLDvlrQcNWKj
	VxegB6FyOlHWk1Vl6RpIcq383UrcCW4CYMOecLw1dE69v4wC+RY8oF380lmYXYDIsNZc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vjDBZ-0001P4-Vi;
	Fri, 23 Jan 2026 09:10:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kartikey406@gmail.com>) id 1vjDBU-0001Oe-I8
 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jan 2026 09:10:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UYjjSXoZ8KY4OISrpWK9jrnnKzhKIHB6meD+8H3qiYU=; b=jJuno8TlcquwuyhTXD6oMKV/lg
 SmbHL33qlG4MPpDhJjUEIkLe7PJddmZ17861JSDspXVaopve62H/DAN+vn0IHqgmOQ4WueCdtZMfN
 dRfuJ7yBwpy5CEh3SfCELxKZYq0PYDNXuK51aPjh/ABvVMyoBuvU7aBJJB+1AWAbifUE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UYjjSXoZ8KY4OISrpWK9jrnnKzhKIHB6meD+8H3qiYU=; b=M
 FdYHhyea2Tmy2ynAIFjC87vy56GRNN7zfXHqgfZTpEQrKrIyrA3aqoqpdrhtRPyuAT5gTKASKe3Gn
 QXGH5L3S4x6uBaUuBKyDipYYqVj49ggjbnFqqBPKt1dkDtp8/XOFICqfjBAtF2x12K1hYYJh1UZiO
 hD/gYC0ByzPKG5AM=;
Received: from mail-yx1-f54.google.com ([74.125.224.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vjDBT-0008Od-BU for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jan 2026 09:10:28 +0000
Received: by mail-yx1-f54.google.com with SMTP id
 956f58d0204a3-6481bd173c0so1803349d50.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 23 Jan 2026 01:10:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769159416; cv=none;
 d=google.com; s=arc-20240605;
 b=FSlpU7GGD6FTGz69+7sf5HpZYEwqYJHolVajn6vSHfDRjbkRaf9sxd4F5vuOOFE+op
 MIXfqUNWJToD0912+fjH54MbDxCPnxKVaYFiYMgTAfW4baiyJpDdmKqcDXvf0NVrPT5O
 8wCjAELYZ7vdbLQOMCW8lp0SF/Rasdfh3iY/w66Q+qPD2DnWW7ZlUblJgX6wdNhK5I45
 woKMVEQ+tCWkgqzSeA+MOXAybBu6cF+sGhoQbD70o31/0Z4dws+MjvR9AoaviC3cTsrN
 DqxKJGokc8XN3hIPLnETXy1gf9HLndyoar4xyRTPVH88OiJJC9E+4BfIfJOCEncGsyXh
 6GNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=UYjjSXoZ8KY4OISrpWK9jrnnKzhKIHB6meD+8H3qiYU=;
 fh=ZS+eBNBhuQFlqN98K6O7nsKVTXqwAlX2157SrCBg734=;
 b=fDbPbWYDut5Y7FDY6nO8BfDWDl1E0JrFudV5q853i8JJnzx/vKwFAbz1Qcj4eNX4AJ
 h9XaugoHNlfqvuI5SxJePNeZNU7XmH1mAMLHFPa3vmKY6EMn+kcKB9JLT0HP8erAekH+
 Lrjx9vzN4xVztvXyjGNJgOnb7sqOnNskuTdWeZg7hxtYazTLriijJTmb5Hh/WW1hKPCB
 yUcWpyZStc7HawnGX/taKdAoYE/1patVAVkApRNva0T72aznXcaGn4J5oSJ76nsNPq7G
 4aV3RZk8fHqviNuWlPf+UJAKvZFWDl/J1qoEzfzC+NtADH/tiWwlg9q2uCckJMt0hbum
 FtQQ==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769159416; x=1769764216; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=UYjjSXoZ8KY4OISrpWK9jrnnKzhKIHB6meD+8H3qiYU=;
 b=KMSvtB8nxaZ8LhEQqRqeoc8zCxvqjOsOikS2PM8IVb8szmp6MrXW4GpDiYmLcZhfs/
 UCXYWOq7jejGOTIS3R1L+e7/0BrAI/gToInNrBP1bD//zYfo2zYycypc4FjmMOO7loAK
 ubUEqsOwqUgHppZ+gajXhM62GzOnl9/lOT116dVFdvuJjERerbCsww78GMBz/pc+KHIM
 T6VegIiomzG/wSy6wYEgsOzpxHhJ/+AiUpI1awZrwBdlO7tz9sYAUg+fnIl95JpkgCsY
 mmT5IrbZ3n4BmHSZtgeg1AhFwUAsnwrGAXet/5Fx28gd3x/ANRfGjuSgr+R0SwblvQ6W
 WSaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769159416; x=1769764216;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UYjjSXoZ8KY4OISrpWK9jrnnKzhKIHB6meD+8H3qiYU=;
 b=PSbU/ka8yYhoZxiwxPdfMi03jbZVMPl7SG+5VtWYHMv72dgjF76X1FrtXU6/B5k/WF
 qZ+yqXfuDH5dcdRvMNcDdd45BJ9o4XHB3BWkXimwMLtCUUvBKElTro/qsE9GoVXOjLkj
 Kd2xCgxI+ascDaDkV3IwDWuR7x7+PgClGpezN1/yuHD7/JFmx0F0boRj4lMFkT9kY4ct
 40Gv7rWf0qoRK/bm+qrycCOoqhIWWH+PMwDakfuXC5YLOiBnSUZJC1fee88Ja1D6Rkxj
 lrVmzEEkEXNxnM++8bQf3ZIdoXsavxT6TlxhOhA5BrJ1qqFibAdj6AB/QnrtsVsUKRb4
 Zgmg==
X-Gm-Message-State: AOJu0YwP4ngA1zPmamr10pSLhfrcnSV2Vs6w/w71X63JEIVIhjVA15CN
 9IzC1aK8NPHADTWl/m8Of2F9OUlcdSzWIJH6+M8SDeAY7Dume5Y2G1QSRicjOf8kq1vgVzHACIl
 LCwPtVkA7w0Bvytca6FN2cmBoIIx7sxU=
X-Gm-Gg: AZuq6aKcWlXBBMidCxxtDGiEjvROrRzBr1VriopQ3tRiinQhBHDpS7MplD0XUAVkule
 qJ10BbkMDMxSrQCnF7bamnfKHavaBf/897rWHPp3ogztzZ1hydyOvRCLQDAha9E1A3/enZfTjED
 +vtJGKD8B6lM8f9lUk3me992k6mc01RvrHhQsX10VE6NZIT9drU7lumxSB3kH/LzKaBven1YGTa
 beXAQ7huXoT36tROfG2/OKEzUj0wgf3hZf7VGxNxmumFn+2bWp7CRLLI1pPZJ9uvgeYEeRYUdEU
 31A8hOyGnRIyKfHGQPgEIHe56kjjxMD09+Hh59GzKJGxJmQoexo7VXHixGsUNbXWLHOuWT4=
X-Received: by 2002:a05:690e:4104:b0:646:e67f:e97b with SMTP id
 956f58d0204a3-6495bee640emr1858729d50.15.1769159416547; Fri, 23 Jan 2026
 01:10:16 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 23 Jan 2026 14:40:04 +0530
X-Gm-Features: AZwV_QjIHLHPx4uo1REzsszw2s_18e1VyetyS15NycztdxDFXjnuSXD2lBlQidI
Message-ID: <CADhLXY7bkhVSLgOaSh5kU=HJBVJ1b7Dnq-Dy77puUaM40qj81Q@mail.gmail.com>
To: shaggy@kernel.org, brauner@kernel.org
X-Spam-Score: 0.1 (/)
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
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 [74.125.224.54 listed in wl.mailspike.net]
X-Headers-End: 1vjDBT-0008Od-BU
Subject: [Jfs-discussion] [PATCH RFC] jfs: fix KMSAN warning in txLock -
 need guidance
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
Cc: jfs-discussion@lists.sourceforge.net, mjguzik@gmail.com, b23@ee.vjti.ac.in,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-5.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:brauner@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:mjguzik@gmail.com,m:b23@ee.vjti.ac.in,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,gmail.com,ee.vjti.ac.in,vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,mail.gmail.com:mid,syzkaller.appspot.com:url];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.948];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[kartikey406@gmail.com]
X-Rspamd-Queue-Id: 86ECA73093
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
