Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F91522E5E9
	for <lists+jfs-discussion@lfdr.de>; Mon, 27 Jul 2020 08:35:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jzwii-0006Y2-Ar; Mon, 27 Jul 2020 06:34:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jernej's-sflist@eternallybored.org>)
 id 1jzwig-0006Xu-Gu
 for jfs-discussion@lists.sourceforge.net; Mon, 27 Jul 2020 06:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Subject:CC:To:Message-ID:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lr6SyiOJJsp2oMegW+clEMtNqcO5xufkZ5V10rX9tWo=; b=ep43uyEZLiDf4E03c27abB+meA
 QxI5NBtxlPZN9FhteSPK7H+kFkovMa0TkAtzymJjOhYwo4YgdjcJ5dj9uBslLGSP1ubB4mIF3vZbo
 QXE5Ni7qxywsunN1bsvf5eRB4FVqmhCi+PKKqn9Pgtst8JS1jaiVRRGij4+Gzf/Kw87g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Subject:CC:To:Message-ID:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lr6SyiOJJsp2oMegW+clEMtNqcO5xufkZ5V10rX9tWo=; b=K4sAbagZ+f1OROBNXhKx6LwVMO
 C7UGTN1F4i5r6NGl5uvJEq7+E4RbvFGEHBBK5kN0ezxoEXpd8yJV43pCo8S/xv+Ai+AQAXmAVgeKF
 WEp4WijQEDAprPJffMsqYO+8FkFnypUZE/YnhUql60y8tXJV04cg4BU59MHxEWAka+Lg=;
Received: from m0.konto.si ([93.103.81.110])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jzwic-00ASLS-4B
 for jfs-discussion@lists.sourceforge.net; Mon, 27 Jul 2020 06:34:42 +0000
Received: from localhost (postar.konto.si [127.0.0.1])
 by m0.konto.si (Postfix) with ESMTP id 7F721130A0A0F;
 Mon, 27 Jul 2020 08:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 eternallybored.org; h=content-transfer-encoding:content-type
 :content-type:mime-version:references:in-reply-to:subject
 :subject:message-id:organization:x-mailer:from:from:date:date
 :received:received; s=k1; t=1595831665; x=1597646066; bh=p4394YS
 6Jh/xPA6HfMB1KLb/E8s12/DkkuvrttJrKTE=; b=Je9P5V+FgzV7YmVtAjJlFfZ
 kY9u4urRwaw/52YMe+ohm32HPXOPMz3AK4odNije/KVJeyg0PNw781TuZ/EekSS5
 MlvaAh6BcQJ1s6p4HE/6mzUwdk7f+PqZUUI0+QZqQo2smu9ulCjwJtjyRvcIkQPu
 6VK5AvnZF2xUsxt+E9mzUkswut4ybVZDtcG1hNicQelOYpIDZbduUOeNiumWS1Od
 EP1ukbQ4q4RwskJNLe2lmG18BjHXIImgGcvbl2ffycPO8kxkxT4AHi9kbwEblLkB
 2k9kMqTAzX2NmPMT6C8H1vmbWa07mdBuB/pSa1chNxDAOSPRJFrR1u+WA5vp5+w=
 =
X-Virus-Scanned: amavisd-new (outgoing)
Received: from m0.konto.si ([127.0.0.1])
 by localhost (postar.konto.si [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 2A6eMNvNor-N; Mon, 27 Jul 2020 08:34:25 +0200 (CEST)
Received: from HACTAR.yggdrasil.local (unknown
 [IPv6:2a01:260:4094:1:f498:7727:467:1e81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by m0.konto.si (Postfix) with ESMTPSA id D66A412591615;
 Mon, 27 Jul 2020 08:34:23 +0200 (CEST)
Date: Mon, 27 Jul 2020 08:34:23 +0200
From: =?utf-8?Q?Jernej_Simon=C4=8Di=C4=8D?=
 <jernej's-sflist@eternallybored.org>
X-Mailer: The Bat! (v9.2.2.1 (BETA)) Professional
Organization: E-mailaholics International
Message-ID: <146278034.20200727083423@eternallybored.org>
To: "Christian Kujau on [jfs-discussion]"
 <jfs-discussion@lists.sourceforge.net>
In-Reply-To: <alpine.DEB.2.22.1.446.2007262156160.9019@trent.utfs.org>
References: <833415339.20200726144354@eternallybored.org> 
 <431784596.20200726211752@eternallybored.org>
 <alpine.DEB.2.22.1.446.2007262156160.9019@trent.utfs.org>
X-Face: *BXrgB!?f3c"BwmeN:<Q~Z[5F-qZK~t;
 k]KluGog=8Wl6qa@Rhn=(<OL//@Zo*+3C1opTjt
 7l,QM>=h6[k:#^'6]0MuPu-@By.:}Io=wJ\]<V4L,<C`FM}a7R2oNq@Q8jY8`s)2^~@4o:FM>}W1N>
 n:~ixb-b:#nOD2|Eut%&
MIME-Version: 1.0
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.8 APOSTROPHE_FROM        From address contains an apostrophe
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.8 NICE_REPLY_A           Looks like a legit reply (A)
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jzwic-00ASLS-4B
Subject: Re: [Jfs-discussion] fsck.jfs segfaults
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
Cc: Christian Kujau <lists@nerdbynature.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gTW9uZGF5LCBKdWx5IDI3LCAyMDIwLCAwNzowMDoxMCwgQ2hyaXN0aWFuIEt1amF1IHdyb3Rl
OgoKPiBXaXRoIFNJR1NFR1YgZXJyb3JzLCBJJ20gYWx3YXlzIHJlbWluZGVkIGFib3V0IHRoZSAK
PiBodHRwczovL3d3dy5iaXR3aXphcmQubmwvc2lnMTEvIEZBUS4gU28sIG1heWJlIGl0IHJlYWxs
eSBpcyBoYXJkd2FyZSAKPiBlcnJvcnMgLSBkbyB5b3UgaGF2ZSB0aGUgY2hhbmNlIHRvIGF0dGFj
aCB0aGUgZGlzayB0byBhIGRpZmZlcmVudCBtYWNoaW5lCj4gYW5kIHJ1biBqZnNfZnNjayB0aGVy
ZT8KClRoaXMgdm9sdW1lIGlzIG9uIFJBSUQ2IChBcmVjYSAxMjgwTUwpLCBhbmQgdGhlIHNlcnZl
ciBoYXMgRUNDIFJBTTsKc2luY2UgSSdtIHJ1bm5pbmcgR2VudG9vLCBpdCdzIGNvbXBpbGluZyBz
dHVmZiBhbGwgdGhlIHRpbWUsIGFuZCBJCmhhdmVuJ3Qgbm90aWNlZCBhbnkgb3RoZXIgc3RhYmls
aXR5IHByb2JsZW1zLgoKSSBjYW4gbW91bnQgdGhlIHZvbHVtZSByZWFkLW9ubHksIEkganVzdCBk
b24ndCBjdXJyZW50bHkgaGF2ZSBhbnl3aGVyZQp0byBjb3B5IHRoZSBkYXRhLgoKLS0gCjwgSmVy
bmVqIFNpbW9uxI1pxI0gPjw+PD48Pjw+PCBodHRwczovL2V0ZXJuYWxseWJvcmVkLm9yZy8gPgoK
RXZlcnl0aGluZyBoYXBwZW5zIGF0IHRoZSBzYW1lIHRpbWUgd2l0aCBub3RoaW5nIGluIGJldHdl
ZW4uCiAgICAgICAtLSBSb2JlcnRzb24ncyBMYXcKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1k
aXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
