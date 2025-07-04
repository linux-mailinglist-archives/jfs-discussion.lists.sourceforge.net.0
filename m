Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CC2AF9A06
	for <lists+jfs-discussion@lfdr.de>; Fri,  4 Jul 2025 19:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pMAlxeg18Lpt6cPacvcEcsKN1ZjTRIN0geW7wetmpE4=; b=dCwsgCUqiSekHJhKMO8X74GGQM
	JyeOh4yIArzCor6eOJLblbNRVFb9Q/qzVF36zvcyvm8brKR5KM3xWpWJy4QItdwtZ1OMhH/zh6uc/
	bVP2uhNSuvHRnb2/FZ3PQSU0D/zA0qUtY7NT3mDimmsPNCyFCluzZ1UjBWAE43EQvKA0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uXkTo-0005cq-NR;
	Fri, 04 Jul 2025 17:45:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <slava@dubeyko.com>) id 1uXkTm-0005cb-J5
 for jfs-discussion@lists.sourceforge.net;
 Fri, 04 Jul 2025 17:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sRRTUBR1HhzbPWZOo6ysCxsvxUXtkw1uTBwQrVosYbE=; b=Q8RlwYsuBaAovEeMcFmN0H4sH6
 qYaacXHlHzf2lSQFcVoIn56oKFIVJKKiM+Lw3AwTr3HqJclZMCgC2N5z+x9iAnPbsGUlkFICUGZyC
 JN5QPtuYbRxTUASdiKmv8JaJxQf9xnYl7o1nD3sqjhgVZY3v1LLilP7fARSotqfGfG8s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sRRTUBR1HhzbPWZOo6ysCxsvxUXtkw1uTBwQrVosYbE=; b=T6i+uWfD008lr9YvWQ7pfC2Z7T
 ZleiCoKORYIkDOHXmFIeScMdDgdCrJnbgEjJWODGuqsFf3kYKFy8IA7nPmKrRLBSL81njjy0LYvGv
 gZ1nAVnWOh1oh0Ik1CtWsjnN1dtdCCbE7vOzjzIZeeMH2EnQez4HSGI3ks7YiHe4uOBo=;
Received: from mail-yb1-f174.google.com ([209.85.219.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uXkTm-0006Fe-92 for jfs-discussion@lists.sourceforge.net;
 Fri, 04 Jul 2025 17:45:42 +0000
Received: by mail-yb1-f174.google.com with SMTP id
 3f1490d57ef6-e7569ccf04cso995552276.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 04 Jul 2025 10:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dubeyko-com.20230601.gappssmtp.com; s=20230601; t=1751651131; x=1752255931;
 darn=lists.sourceforge.net; 
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=sRRTUBR1HhzbPWZOo6ysCxsvxUXtkw1uTBwQrVosYbE=;
 b=EmujsFcGQu00zL4CLLvWG5KjltmrsPHPLNSlB/3U30brRZ/J3LPpzR0VghVQ7vjneM
 kzLRAlZWTZ6rTefsXOj1kRJRJCZiGmZnNRU8t4iNVFdb5ClpF+zND6uh/2Cn3JYh/zuq
 1HWEcY9Np2fafGcigbIFTMUN7JTrmiKXuOfMjmGjYpRybqswPoebkF8ESo+6q4GivZrg
 ZN9LetDxrUCg7DPI8fzWue91f3CtThWlaiB6Wpju4oy+iJyu1OrGrwYa5tpRQ4v3NI3j
 Xpd0UpXGLOyTycD1XsZ0x7Rx6lQPRkiMo55U6gjf4aXtjfyXYHO5CZ97tixzqaJ21YPM
 6sLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751651131; x=1752255931;
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sRRTUBR1HhzbPWZOo6ysCxsvxUXtkw1uTBwQrVosYbE=;
 b=Je5bMQEeyyFMnwDBkdagHEReqFDFYe9PYXu4gLXNZFBQ6Olpp7sb1kLdMlfxxQiGyQ
 Vo8pPLZMuuV+1nVL/JIdHyp6y60Zr3OQXxpqJnFXHsIRhekvArWwgwapINxxqk6mjcV4
 HCsRKI6aNcU4Xid0bRohjjdsb9LLksbA7De8IEmEqrJ6HA/wvzkAhGtM0xUm5bbYPbUd
 zo7XlEzPZ4JLeckAAvOAmD0PVgRbuSXyIEnDYe5iVHiAUzvx4IBMQvZ81EWl9g5z8knX
 YJjIa03I3bKJ/GzBW3ujYgEy5fCo8FpW/TeRpWIDvosymq1Rwbgg7apX7A72aqp2fgUA
 H50A==
X-Forwarded-Encrypted: i=1;
 AJvYcCV45b+A7+X8JzjauN7X9JvvREOqX91bf871PoSx5nJoMXQ3AsvbGGyqbJ3DR/aLOs5FU+TKKiS+gtYtBIxvCw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzwjLSAb3be+Yf3u5rYg2LHR5ayG/hB2sgm5fEw4VldXN7555Vo
 fKx5tYjHRt6Qq2MmYFnqCHp9g0bMZR+d9K8axsIrYsEnFeS8bXQmfpftic3joGcW2G4=
X-Gm-Gg: ASbGnctOcrL/CTan88LWHL21gGz6vuGKF8NTHLjm1+9wHVf5wgCZ726VP2fD1IpXuQY
 IbLGqyWkYrTV+yrwTduqtPFeJxdFLkseRfCFwBz2mIzmko9AigbWAivWjQp4PQil7MqkXLRN72Z
 gYmwWyQh6seTYdgkJ2iS9I0WDBs2NgWrqkvuHqzZB31taQXfVgAN9aEK7KcPxeWF9aFZNCu1gzQ
 +P7XQ5aow2V9xZN1LRCPaon0oC6dQQu7Rh7Uj2RxMPLLvBj3vwZI4n+BB4HQ2U4zs89j5uzHdON
 Rq1GEkPttscpdjfWvbjT+Gd19peavmSn+HgtPwZ/He9R5zGGK9dxsY7ldEY4kDdQe43ECoHaIpK
 3REK+wN145igHK7Hare3qnKKGuzotLwU=
X-Google-Smtp-Source: AGHT+IHavxdRXfQcFPtCri7JPle6nXppaWnSECfYS7k4+PrbVcT/6JmmoNF/J8UBNVnhAzeOW0UVtw==
X-Received: by 2002:a05:690c:3709:b0:70e:29d2:fba1 with SMTP id
 00721157ae682-7166b66f4d6mr36192927b3.23.1751651131297; 
 Fri, 04 Jul 2025 10:45:31 -0700 (PDT)
Received: from ?IPv6:2600:1700:6476:1430:f030:281a:9e2c:722?
 ([2600:1700:6476:1430:f030:281a:9e2c:722])
 by smtp.gmail.com with ESMTPSA id
 3f1490d57ef6-e899c48ba54sm754640276.43.2025.07.04.10.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jul 2025 10:45:30 -0700 (PDT)
Message-ID: <3c4ac1ab5f7afbbd745f88c595ee1465fc2e9ac6.camel@dubeyko.com>
From: Viacheslav Dubeyko <slava@dubeyko.com>
To: Yangtao Li <frank.li@vivo.com>, axboe@kernel.dk,
 aivazian.tigran@gmail.com, 	viro@zeniv.linux.org.uk, brauner@kernel.org,
 jack@suse.cz, linkinjeon@kernel.org, 	sj1557.seo@samsung.com,
 yuezhang.mo@sony.com, glaubitz@physik.fu-berlin.de, 	shaggy@kernel.org,
 konishi.ryusuke@gmail.com, 	almaz.alexandrovich@paragon-software.com,
 me@bobcopeland.com, 	willy@infradead.org, josef@toxicpanda.com,
 kovalev@altlinux.org, dave@stgolabs.net, 	mhocko@suse.com,
 chentaotao@didiglobal.com
Date: Fri, 04 Jul 2025 10:45:27 -0700
In-Reply-To: <20250626173023.2702554-4-frank.li@vivo.com>
References: <20250626173023.2702554-1-frank.li@vivo.com>
 <20250626173023.2702554-4-frank.li@vivo.com>
Autocrypt: addr=slava@dubeyko.com; prefer-encrypt=mutual;
 keydata=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
 fAMjjkInIPg7RLGs8FiwxfcpkILP0YbVWHiNAaQ==
User-Agent: Evolution 3.56.1 (by Flathub.org) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2025-06-26 at 11:30 -0600, Yangtao Li wrote: > Now
 cont_write_begin() support DONTCACHE mode, let's set > FOP_DONTCACHE > flag
 to enable uncached buffer io support for hfsplus. > > Signed-off- [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.174 listed in wl.mailspike.net]
X-Headers-End: 1uXkTm-0006Fe-92
Subject: Re: [Jfs-discussion] [PATCH 3/4] hfsplus: enable uncached buffer io
 support
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
Cc: jfs-discussion@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCAyMDI1LTA2LTI2IGF0IDExOjMwIC0wNjAwLCBZYW5ndGFvIExpIHdyb3RlOgo+IE5v
dyBjb250X3dyaXRlX2JlZ2luKCkgc3VwcG9ydCBET05UQ0FDSEUgbW9kZSwgbGV0J3Mgc2V0Cj4g
Rk9QX0RPTlRDQUNIRQo+IGZsYWcgdG8gZW5hYmxlIHVuY2FjaGVkIGJ1ZmZlciBpbyBzdXBwb3J0
IGZvciBoZnNwbHVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFlhbmd0YW8gTGkgPGZyYW5rLmxpQHZp
dm8uY29tPgo+IC0tLQo+IMKgZnMvaGZzcGx1cy9pbm9kZS5jIHwgMSArCj4gwqAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZnMvaGZzcGx1cy9pbm9kZS5j
IGIvZnMvaGZzcGx1cy9pbm9kZS5jCj4gaW5kZXggMjZjYzE1MDg1NmI5Li5iNzkwZmZlOTIwMTkg
MTAwNjQ0Cj4gLS0tIGEvZnMvaGZzcGx1cy9pbm9kZS5jCj4gKysrIGIvZnMvaGZzcGx1cy9pbm9k
ZS5jCj4gQEAgLTM3Miw2ICszNzIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0
aW9ucwo+IGhmc3BsdXNfZmlsZV9vcGVyYXRpb25zID0gewo+IMKgCS5vcGVuCQk9IGhmc3BsdXNf
ZmlsZV9vcGVuLAo+IMKgCS5yZWxlYXNlCT0gaGZzcGx1c19maWxlX3JlbGVhc2UsCj4gwqAJLnVu
bG9ja2VkX2lvY3RsID0gaGZzcGx1c19pb2N0bCwKPiArCS5mb3BfZmxhZ3MJPSBGT1BfRE9OVENB
Q0hFLAo+IMKgfTsKPiDCoAo+IMKgc3RydWN0IGlub2RlICpoZnNwbHVzX25ld19pbm9kZShzdHJ1
Y3Qgc3VwZXJfYmxvY2sgKnNiLCBzdHJ1Y3QgaW5vZGUKPiAqZGlyLAoKVGhlIHNhbWUgcXVlc3Rp
b24gZm9yIEhGUysuIEJlY2F1c2UsIGl0IGlzIGFnYWluIG9sZCBhbmQgcHJldHR5Cm9ic29sZXRl
IGZpbGUgc3lzdGVtLiA6KSBUaGUgbWFpbiB1c2UtY2FzZSBpcyBzaW1wbHkgc3VwcG9ydCB0aGUK
Y2FwYWJpbGl0eSB0byBtb3VudCBIRlMrIHZvbHVtZSBpcyBjcmVhdGVkIHVuZGVyIE1hYyBPUyBY
LCBmb3IgZXhhbXBsZSwKYW5kIHRvIGFjY2VzcyB0aGUgZGF0YSB0aGVyZS4gV2hhdCBpcyB0aGUg
cG9pbnQgdG8gc3VwcG9ydCB0aGlzIGZlYXR1cmUKaW4gSEZTKz8gQ3VycmVudGx5LCBhcm91bmQg
MjAwIHhmc3Rlc3RzIGZhaWxzIGluIEhGUy9IRlMrLiBXZSBldmVuCmNhbm5vdCB0ZXN0IGFueSBu
ZXcgZnVuY3Rpb25hbGl0eSBwcm9wZXJseS4gQW5kIGd1eXMgcmVwb3J0cyBidWdzIGluCmV4aXN0
aW5nIGZ1bmN0aW9uYWxpdHkuIFdlIG5lZWQgdG8gYmUgZm9jdXNlZCBvbiB0aGlzIHJpZ2h0IG5v
dy4gU29ycnksCkhGUy9IRlMrIGlzIG5vdCBzbyBnb29kIGdyb3VuZCBmb3IgaW1wbGVtZW50aW5n
IG5ldyBmZWF0dXJlcy4gOikKV2UgcmVhbGx5IG5lZWQgdG8gc3RhYmlsaXplIHRoZSBleGlzdGlu
ZyBmdW5jdGlvbmFsaXR5IHJpZ2h0IG5vdy4gQW5kCndlIGhhdmUgYSBsb3Qgb2Ygd29yayB5ZXQu
IDopIAoKVGhhbmtzLApTbGF2YS4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9u
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
