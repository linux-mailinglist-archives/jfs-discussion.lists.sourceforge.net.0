Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDeFNR8TgWkqEAMAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 22:11:59 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7B1D192A
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 22:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:References:In-Reply-To:Message-Id:To:Date:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MaEeHDud/yZOg/t7Xot+mZ+aFD5fMdKSGX4JS9kLMmM=; b=fxDF/97lVp9ynaMjZh8NqcqHDF
	iKQ1CI1PjWv3YlSwiRt89mz2bHs/+onjNz699bFwX2EJM0eMqU/PKfP6/D6gRznHjiOUZYg6TwUIv
	pZQvEScYsAmBuDe6cm40rcIn4zpk/OAmkcXnl3FTgVVYRvlmBotk6YGFh3I0O7Lq0Bng=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vn1CY-0001Qe-KW;
	Mon, 02 Feb 2026 21:11:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1vn1CX-0001QU-9m
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 21:11:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZXGUWxC8uY9RWcgAZ2OwD0LCj9HH34Gg0ZxV1pDZZv0=; b=SehidJv8iAMdWHAdw1VL52J33e
 wrh6PHu/wG41zUf3F7CwGcvdgZkpVxbWxtAvLsUnabNTP2Yq9qUFly13w4Y9RijDZQVSX97yYkxyd
 FotR7VI96MObjZMsxEf5NFnkIfTUyga0O49YjN2krxjwq/LNtz40TSZKiMIiF4xP1CMM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZXGUWxC8uY9RWcgAZ2OwD0LCj9HH34Gg0ZxV1pDZZv0=; b=a1zsEXTnmCUnxUsj5wjzIcFpdi
 yHvTZDQmaQlGrB9HBBzRdXHC6+1tzrXFlnk8DftCL6xgMvfPqgVblTdMtff825bV28eMzBD7oN4l1
 +udqDXWU0V9OKAGBB1wuDTS8rgCqaTw18RC8Hivah0gkCoBjA43ZbVpkFMoiZswCE0Ls=;
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vn1CW-0005SZ-6k for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 21:11:17 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.phl.internal (Postfix) with ESMTP id D4C04EC0559;
 Mon,  2 Feb 2026 15:44:29 -0500 (EST)
Received: from phl-imap-02 ([10.202.2.81])
 by phl-compute-04.internal (MEProxy); Mon, 02 Feb 2026 15:44:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1770065069;
 x=1770151469; bh=ZXGUWxC8uY9RWcgAZ2OwD0LCj9HH34Gg0ZxV1pDZZv0=; b=
 p5nmoEfrBL4bivY8dcYzSA8e0Bj0ekQg7DDfdmhSiL9n1/lwvhARb2GnTqKZEopr
 OToEDbgScPs2b/m0Za5Q9tZvBtkr2G7h5mxsPJ1Jt6u5ffw8pjGJdI3km1WaRqO6
 SqkeWi5RGUZxy8iC7n+flIiuIAttR6BZtXJnydvK5KAeCaYagfswsWC/lFxpnhxG
 VncTl7QWkP6yNwCaQwe+X3WPw+hG+4LM8pCoMkgDLxW2iK2WD/kadskwVi6DOGls
 Zp2Sx2PIO2c3CRcDZnv0F34P2j3Oenyu0utjqOrp2RUCQUOTql5fk5HmTRpedwKv
 sRdniYJoUoeITwVGDz807g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770065069; x=
 1770151469; bh=ZXGUWxC8uY9RWcgAZ2OwD0LCj9HH34Gg0ZxV1pDZZv0=; b=d
 oleNXp0AOKl8hd3PiHV6Qnc6EDRNnnyQ0CgQmTHkHsOs8ofNt/P/5ZCd37aIF3H+
 /8apU8qjDqV5E8zzJP3+gZHDWCI9YvGizKbBPTITkgxLvpgXqTnRInAjt1fqfAZY
 pjtgctxp/1CSh5OKhbJ/UC8BEAM+RKPWn2E4kKxKY/mfgIt0ksV786xRkaRYqVQj
 j/32g/znS4pSm5URESkJDII2CsJdKpXdj/BTADCqBQQhNrqY3boHXIe1yMDB+TFw
 rMMw++/bxWAmVrIZRe3ljNFL5M5FnvJC6PWPehhBdTMwPTj2qG8QI1bW3w3XqLBf
 c7A8tBv8S8du/Dhgz58Pw==
X-ME-Sender: <xms:rQyBaYDS8owMiUWLCdEanuS82iJ6E0XIYBjumUqvDu5lYM_bfVIuVQ>
 <xme:rQyBaVV0ERZDfMYEJIBDMRXVxD5bo4qqb-xtFm43KK5RtjCFV3tr29tm49L4evLIi
 VQzD9Pe3jYK9N_xIjOxubdazmpdsZkR8A8lt8onoaGt_61YoC1JBiM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddujeekieefucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedftehrnhgu
 uceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrthhtvg
 hrnhephfdthfdvtdefhedukeetgefggffhjeeggeetfefggfevudegudevledvkefhvdei
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnh
 gusegrrhhnuggsrdguvgdpnhgspghrtghpthhtohepudefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopeguuhhtthgrughithihrgdukeesghhmrghilhdrtghomhdprhgtph
 htthhopehnihgtkhdruggvshgruhhlnhhivghrshdolhhkmhhlsehgmhgrihhlrdgtohhm
 pdhrtghpthhtohepjhhushhtihhnshhtihhtthesghhoohhglhgvrdgtohhmpdhrtghpth
 htohepmhhorhgsohesghhoohhglhgvrdgtohhmpdhrtghpthhtoheprghrnhgusehkvghr
 nhgvlhdrohhrghdprhgtphhtthhopehnrghthhgrnheskhgvrhhnvghlrdhorhhgpdhrtg
 hpthhtohepshhhrghgghihsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehllhhvmhes
 lhhishhtshdrlhhinhhugidruggvvhdprhgtphhtthhopehjfhhsqdguihhstghushhsih
 honheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:rQyBaUz7FqMwygHqKFuZguZyDJTqKiqBQkHzi1e1o0KrFd03851bXA>
 <xmx:rQyBab86ZUYW8bGZuYRb5LumTy-XYm3Byw5-nUZ_l4yfwVUhXI2sUQ>
 <xmx:rQyBae_qbH2hUrh12TtUtUN0EIMmqI2_PXT4tNTVwFmX_tQSKKKTbA>
 <xmx:rQyBaT4JR0ncxNB4GLPL-6fuziBxgXxjVYPJmEevkMIAZR31HJ9z1g>
 <xmx:rQyBaRKklxo8IJ0IYtkIMJ7iqvNDYuVtpdQAeay-MXC8oK4OUXfFXUmv>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 02045700065; Mon,  2 Feb 2026 15:44:28 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AZJ3wBr6n4EF
Date: Mon, 02 Feb 2026 21:44:08 +0100
To: "Dave Kleikamp" <dave.kleikamp@oracle.com>,
 "Arnd Bergmann" <arnd@kernel.org>, "Dave Kleikamp" <shaggy@kernel.org>,
 "Nathan Chancellor" <nathan@kernel.org>,
 "Zheng Yu" <zheng.yu@northwestern.edu>
Message-Id: <38f05cd4-6844-481a-8293-3b87f9f1a9c6@app.fastmail.com>
In-Reply-To: <fd1854c2-d3f1-4901-8b7d-c6ce944caf61@oracle.com>
References: <20260202094958.1232478-1-arnd@kernel.org>
 <fd1854c2-d3f1-4901-8b7d-c6ce944caf61@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Feb 2, 2026, at 18:34,
 Dave Kleikamp wrote: > On 2/2/26
 3:49AM, Arnd Bergmann wrote: >> From: Arnd Bergmann <arnd@arndb.de> >> >>
 A recent change for the range check started triggering a clang [...] 
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
X-Headers-End: 1vn1CW-0005SZ-6k
Subject: Re: [Jfs-discussion] [PATCH] jfs: avoid
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
Reply-To: Arnd Bergmann <arnd@arndb.de>
Cc: jfs-discussion@lists.sourceforge.net, llvm@lists.linux.dev,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 linux-kernel@vger.kernel.org, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Aditya Dutt <duttaditya18@gmail.com>,
 Roman Smirnov <r.smirnov@omp.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.70 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dave.kleikamp@oracle.com,m:arnd@kernel.org,m:shaggy@kernel.org,m:nathan@kernel.org,m:zheng.yu@northwestern.edu,m:jfs-discussion@lists.sourceforge.net,m:llvm@lists.linux.dev,m:nick.desaulniers+lkml@gmail.com,m:linux-kernel@vger.kernel.org,m:morbo@google.com,m:justinstitt@google.com,m:duttaditya18@gmail.com,m:r.smirnov@omp.ru,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,lists.linux.dev,gmail.com,vger.kernel.org,google.com,omp.ru];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,arndb.de:s=fm2,messagingengine.com:s=fm3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[arnd@arndb.de];
	TAGGED_RCPT(0.00)[jfs-discussion,lkml];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,arndb.de:-,messagingengine.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,app.fastmail.com:mid,arndb.de:replyto,arndb.de:email]
X-Rspamd-Queue-Id: CC7B1D192A
X-Rspamd-Action: no action

On Mon, Feb 2, 2026, at 18:34, Dave Kleikamp wrote:
> On 2/2/26 3:49AM, Arnd Bergmann wrote:
>> From: Arnd Bergmann <arnd@arndb.de>
>> 
>> A recent change for the range check started triggering a clang warning:
>> 
>> fs/jfs/jfs_dtree.c:2906:31: error: result of comparison of constant 128 with expression of type 's8' (aka 'signed char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>>   2906 |                         if (stbl[i] < 0 || stbl[i] >= DTPAGEMAXSLOT) {
>>        |                                            ~~~~~~~ ^  ~~~~~~~~~~~~~
>> fs/jfs/jfs_dtree.c:3111:30: error: result of comparison of constant 128 with expression of type 's8' (aka 'signed char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>>   3111 |                 if (stbl[0] < 0 || stbl[0] >= DTPAGEMAXSLOT) {
>>        |                                    ~~~~~~~ ^  ~~~~~~~~~~~~~
>> 
>> Both the old and the new check were useless, but the previous version
>> apparently did not lead to the warning.
>> 
>> Rephrase this again by adding a cast. The check is still always false,
>> but the compiler shuts up about it.
>
> I think it would be better to just drop the useless part of these tests.

Fair enough, sent v2 now.

      Arnd


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
