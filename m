Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D63D39062B0
	for <lists+jfs-discussion@lfdr.de>; Thu, 13 Jun 2024 05:35:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sHbFL-0001vI-WE;
	Thu, 13 Jun 2024 03:35:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <llfamsec@gmail.com>) id 1sHbFK-0001vA-PN
 for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Jun 2024 03:35:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KBpCYUhbQVKj2RnRh2Ko1GqGtKsOhrGNof4iwYY1cA0=; b=k7TcxSfWBCPKeK4u5n1DVC6Mh6
 oNn03IbUJdYayJcMPC8EAxocaGXcwHcxHlwZAovFP0lOyPqOydNd/HKc4ag9sKn58qnTuZIxEOhEg
 5zwiIGQJW41MJXuGPjwTUtf2TR9vk+kJJI6mh91n7pqUcwt2SCL3iYIfm5pL01opLNbk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KBpCYUhbQVKj2RnRh2Ko1GqGtKsOhrGNof4iwYY1cA0=; b=kCtAeXwbaAswkE1Mofnh+shVA3
 Yco1nSqMfLv0yfoK1Vm9HhkfQmh29keg3Hv5MDRaMKbqT6UHQKBlRmVJrR74fzKJaDBHd4p2HB/7b
 GbsY245/WOK3ACWZcR+STvj+fqmio5eq+3gdaqmP0HiYZNYmCQt/gk9TMSkPgIQscSD0=;
Received: from mail-yb1-f182.google.com ([209.85.219.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sHbFM-00035m-0L for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Jun 2024 03:35:31 +0000
Received: by mail-yb1-f182.google.com with SMTP id
 3f1490d57ef6-dfdd394506dso587218276.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Jun 2024 20:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718249725; x=1718854525; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KBpCYUhbQVKj2RnRh2Ko1GqGtKsOhrGNof4iwYY1cA0=;
 b=fz34Q49ritqiAOq0rXBxZDF41ex0NGCJlS9nRi1MhdBl1gR6v2fPJyxhoVD2QDdM/r
 b+dlSMH7ThhGxIowhv2fTscGmxixUEo5xFSCdiNmHyAMr9eps3YnCtf9E0QVAltCzwsP
 xD7iaSupc037iMhc7R+7SCwhX+ysMi2vTwbuiE88j/942I9mT1gJPQGSkGdhfGyJqier
 6F7HWihntIbh5VJEbMnZ2gjC/l4pnZv2BYT7d66CrNzyfqTUv4f0Jc1CdTZxw4hwdDdj
 xcDPRq0cobiGObmTj/j+KDP9uTZRBB/HOhWsAClrnCHE+cmfWrr+CIL5TQMtOCUxCH2g
 z7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718249725; x=1718854525;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KBpCYUhbQVKj2RnRh2Ko1GqGtKsOhrGNof4iwYY1cA0=;
 b=qgd3TSC4GGgKRi8HqTLG3XIK8s4RAw95XQjAYWwBLwWp3FGnhIM2rsRtGH0tk/9pqM
 l0aTLRVpGGl3QUg/ZBAl0JcnJbNa9k7GSYN+Qf7w35xSM0zqH0SU6r45DmkPsDvCPdT3
 OxcPD+e8IxWhLR/ZUWcx1vHcktJf7Fl+uZBUTi3vVmo1qL1//W3gsYHzZ0tD6Umq7u0W
 efnrUW/dWJZCDSOmNHoaYFwv059eGGmnIRA77EtUBdFCDEpCKaWJBCOKGuOCYQFmu0td
 tFQ0wBNVMu3IhCAXqsikaFlK4Txfs6k7M0DkTfpF9lntwG4q8s/QRdGKo5W+nBLpCAjp
 qoyg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWcQiiZ7wH9EaXwhhTFpwo8fBYI0z9vH5JdTkaSddQd/XVbwcbUbOfvluTx2CL0oVdA8caCTsKUpi5L4M1aPJIsZ2qFwzQ6PHUY6Ji/kD+fJEZYUjY=
X-Gm-Message-State: AOJu0YztIjCRNKNSlXQwbRcf9LWSSaVJBRpw5HFI9KVmNw5xtKNszMk/
 MWA8Jj+p0GOxLJkoIXeEijJc+lImTwpx8GTsT7RMTy4QGzJ9T7pzGhGdZXy1MerivYj8Duyrkdx
 UM0WEw/Is+r1JiieruFojcniwoL4=
X-Google-Smtp-Source: AGHT+IEsEOrJ3X2nDGj/EIgScp10jPrH4F2Mak2bpaMZEK39aH0kSZlqIq3BSJQFICaO3j38YMg0o64K7DDPuISL6M4=
X-Received: by 2002:a25:fe05:0:b0:dfe:4535:1c5f with SMTP id
 3f1490d57ef6-dfe68c0c68amr3296130276.48.1718249725269; Wed, 12 Jun 2024
 20:35:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240528183040.17068-1-llfamsec@gmail.com>
In-Reply-To: <20240528183040.17068-1-llfamsec@gmail.com>
Date: Thu, 13 Jun 2024 11:35:14 +0800
Message-ID: <CAEBF3_a7jg5mFisa=PEsqWO=8+MvFVrdUjUU=N_TRpD7U-p+nw@mail.gmail.com>
To: dave.kleikamp@oracle.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dave, Do you have further comments and/or suggestions?
 Or give a RVB pls :D Thanks, LL 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.219.182 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [llfamsec[at]gmail.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.219.182 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.219.182 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHbFM-00035m-0L
Subject: Re: [Jfs-discussion] [PATCH v2] jfs: don't walk off the end of
 ealist
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
From: lei lu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: lei lu <llfamsec@gmail.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGkgRGF2ZSwKCkRvIHlvdSBoYXZlIGZ1cnRoZXIgY29tbWVudHMgYW5kL29yIHN1Z2dlc3Rpb25z
PyBPciBnaXZlIGEgUlZCIHBscyA6RAoKVGhhbmtzLApMTAoKT24gV2VkLCBNYXkgMjksIDIwMjQg
YXQgMjozMeKAr0FNIGxlaSBsdSA8bGxmYW1zZWNAZ21haWwuY29tPiB3cm90ZToKPgo+IEFkZCBh
IGNoZWNrIGJlZm9yZSB2aXNpdGluZyB0aGUgbWVtYmVycyBvZiBlYSB0bwo+IG1ha2Ugc3VyZSBl
YWNoIGVhIHN0YXlzIHdpdGhpbiB0aGUgZWFsaXN0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogbGVpIGx1
IDxsbGZhbXNlY0BnbWFpbC5jb20+Cj4gLS0tCj4gIGZzL2pmcy94YXR0ci5jIHwgMjMgKysrKysr
KysrKysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZnMvamZzL3hhdHRyLmMgYi9mcy9qZnMveGF0
dHIuYwo+IGluZGV4IDBmYjdhZmFjMjk4ZS4uYWI5Yjg1Y2U3ZmY3IDEwMDY0NAo+IC0tLSBhL2Zz
L2pmcy94YXR0ci5jCj4gKysrIGIvZnMvamZzL3hhdHRyLmMKPiBAQCAtNzk1LDcgKzc5NSw3IEBA
IHNzaXplX3QgX19qZnNfZ2V0eGF0dHIoc3RydWN0IGlub2RlICppbm9kZSwgY29uc3QgY2hhciAq
bmFtZSwgdm9pZCAqZGF0YSwKPiAgICAgICAgICAgICAgICAgICAgICAgIHNpemVfdCBidWZfc2l6
ZSkKPiAgewo+ICAgICAgICAgc3RydWN0IGpmc19lYV9saXN0ICplYWxpc3Q7Cj4gLSAgICAgICBz
dHJ1Y3QgamZzX2VhICplYTsKPiArICAgICAgIHN0cnVjdCBqZnNfZWEgKmVhLCAqZWFsaXN0X2Vu
ZDsKPiAgICAgICAgIHN0cnVjdCBlYV9idWZmZXIgZWFfYnVmOwo+ICAgICAgICAgaW50IHhhdHRy
X3NpemU7Cj4gICAgICAgICBzc2l6ZV90IHNpemU7Cj4gQEAgLTgxNSw5ICs4MTUsMTYgQEAgc3Np
emVfdCBfX2pmc19nZXR4YXR0cihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBjb25zdCBjaGFyICpuYW1l
LCB2b2lkICpkYXRhLAo+ICAgICAgICAgICAgICAgICBnb3RvIG5vdF9mb3VuZDsKPgo+ICAgICAg
ICAgZWFsaXN0ID0gKHN0cnVjdCBqZnNfZWFfbGlzdCAqKSBlYV9idWYueGF0dHI7Cj4gKyAgICAg
ICBlYWxpc3RfZW5kID0gRU5EX0VBTElTVChlYWxpc3QpOwo+Cj4gICAgICAgICAvKiBGaW5kIHRo
ZSBuYW1lZCBhdHRyaWJ1dGUgKi8KPiAtICAgICAgIGZvciAoZWEgPSBGSVJTVF9FQShlYWxpc3Qp
OyBlYSA8IEVORF9FQUxJU1QoZWFsaXN0KTsgZWEgPSBORVhUX0VBKGVhKSkKPiArICAgICAgIGZv
ciAoZWEgPSBGSVJTVF9FQShlYWxpc3QpOyBlYSA8IGVhbGlzdF9lbmQ7IGVhID0gTkVYVF9FQShl
YSkpIHsKPiArICAgICAgICAgICAgICAgaWYgKHVubGlrZWx5KGVhICsgMSA+IGVhbGlzdF9lbmQp
IHx8Cj4gKyAgICAgICAgICAgICAgICAgICB1bmxpa2VseShORVhUX0VBKGVhKSA+IGVhbGlzdF9l
bmQpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgc2l6ZSA9IC1FVUNMRUFOOwo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGdvdG8gcmVsZWFzZTsKPiArICAgICAgICAgICAgICAgfQo+ICsK
PiAgICAgICAgICAgICAgICAgaWYgKChuYW1lbGVuID09IGVhLT5uYW1lbGVuKSAmJgo+ICAgICAg
ICAgICAgICAgICAgICAgbWVtY21wKG5hbWUsIGVhLT5uYW1lLCBuYW1lbGVuKSA9PSAwKSB7Cj4g
ICAgICAgICAgICAgICAgICAgICAgICAgLyogRm91bmQgaXQgKi8KPiBAQCAtODMyLDYgKzgzOSw3
IEBAIHNzaXplX3QgX19qZnNfZ2V0eGF0dHIoc3RydWN0IGlub2RlICppbm9kZSwgY29uc3QgY2hh
ciAqbmFtZSwgdm9pZCAqZGF0YSwKPiAgICAgICAgICAgICAgICAgICAgICAgICBtZW1jcHkoZGF0
YSwgdmFsdWUsIHNpemUpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gcmVsZWFzZTsK
PiAgICAgICAgICAgICAgICAgfQo+ICsgICAgICAgfQo+ICAgICAgICBub3RfZm91bmQ6Cj4gICAg
ICAgICBzaXplID0gLUVOT0RBVEE7Cj4gICAgICAgIHJlbGVhc2U6Cj4gQEAgLTg1OSw3ICs4Njcs
NyBAQCBzc2l6ZV90IGpmc19saXN0eGF0dHIoc3RydWN0IGRlbnRyeSAqIGRlbnRyeSwgY2hhciAq
ZGF0YSwgc2l6ZV90IGJ1Zl9zaXplKQo+ICAgICAgICAgc3NpemVfdCBzaXplID0gMDsKPiAgICAg
ICAgIGludCB4YXR0cl9zaXplOwo+ICAgICAgICAgc3RydWN0IGpmc19lYV9saXN0ICplYWxpc3Q7
Cj4gLSAgICAgICBzdHJ1Y3QgamZzX2VhICplYTsKPiArICAgICAgIHN0cnVjdCBqZnNfZWEgKmVh
LCAqZWFsaXN0X2VuZDsKPiAgICAgICAgIHN0cnVjdCBlYV9idWZmZXIgZWFfYnVmOwo+Cj4gICAg
ICAgICBkb3duX3JlYWQoJkpGU19JUChpbm9kZSktPnhhdHRyX3NlbSk7Cj4gQEAgLTg3NCw5ICs4
ODIsMTYgQEAgc3NpemVfdCBqZnNfbGlzdHhhdHRyKHN0cnVjdCBkZW50cnkgKiBkZW50cnksIGNo
YXIgKmRhdGEsIHNpemVfdCBidWZfc2l6ZSkKPiAgICAgICAgICAgICAgICAgZ290byByZWxlYXNl
Owo+Cj4gICAgICAgICBlYWxpc3QgPSAoc3RydWN0IGpmc19lYV9saXN0ICopIGVhX2J1Zi54YXR0
cjsKPiArICAgICAgIGVhbGlzdF9lbmQgPSBFTkRfRUFMSVNUKGVhbGlzdCk7Cj4KPiAgICAgICAg
IC8qIGNvbXB1dGUgcmVxdWlyZWQgc2l6ZSBvZiBsaXN0ICovCj4gLSAgICAgICBmb3IgKGVhID0g
RklSU1RfRUEoZWFsaXN0KTsgZWEgPCBFTkRfRUFMSVNUKGVhbGlzdCk7IGVhID0gTkVYVF9FQShl
YSkpIHsKPiArICAgICAgIGZvciAoZWEgPSBGSVJTVF9FQShlYWxpc3QpOyBlYSA8IGVhbGlzdF9l
bmQ7IGVhID0gTkVYVF9FQShlYSkpIHsKPiArICAgICAgICAgICAgICAgaWYgKHVubGlrZWx5KGVh
ICsgMSA+IGVhbGlzdF9lbmQpIHx8Cj4gKyAgICAgICAgICAgICAgICAgICB1bmxpa2VseShORVhU
X0VBKGVhKSA+IGVhbGlzdF9lbmQpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgc2l6ZSA9
IC1FVUNMRUFOOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gcmVsZWFzZTsKPiArICAg
ICAgICAgICAgICAgfQo+ICsKPiAgICAgICAgICAgICAgICAgaWYgKGNhbl9saXN0KGVhKSkKPiAg
ICAgICAgICAgICAgICAgICAgICAgICBzaXplICs9IG5hbWVfc2l6ZShlYSkgKyAxOwo+ICAgICAg
ICAgfQo+IC0tCj4gMi4zNC4xCj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25A
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
