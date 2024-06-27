Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CA8919D96
	for <lists+jfs-discussion@lfdr.de>; Thu, 27 Jun 2024 04:53:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sMfGD-00081B-Le;
	Thu, 27 Jun 2024 02:53:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <llfamsec@gmail.com>) id 1sMfG8-000810-7A
 for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Jun 2024 02:53:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vp0EPE8+DbaTcM76Gv4bi2n9Zjw+7/Yigu+Y95hdoaY=; b=coQ1r1wnxsCnXv1XvXJh8MuMCN
 IG/sB3N7Z8ET+DCIbSuYVn8L9CSIqtAq9TQLCgUmt7TzNKL0LH7cxD+TSdB2H+7X/HHQObz1GdAVF
 DfQwMie4BG0j4myB8H+OVnZD8MCgjqcDAGhugabQWHuyQy9Pp+eN8RRnmBATjzux9K9k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vp0EPE8+DbaTcM76Gv4bi2n9Zjw+7/Yigu+Y95hdoaY=; b=i9zqEeiO32MKnMgf17kBJRLoCj
 gjNguwlb3m//LAmhuucYMUWdtKtrLG0Fkd1CtmWJ71XerZyYgvycV7lytS3kPKy4wQbACpeMqxmEk
 dUoLWZ9YitxgnFcoviYQOiDJ8s3PZPSMzsv27u/Nyae5XWHqxp/RWmka87wl3shQEu1I=;
Received: from mail-yw1-f173.google.com ([209.85.128.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sMfG5-00073F-NQ for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Jun 2024 02:53:17 +0000
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-632bcf111ffso71860487b3.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 26 Jun 2024 19:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1719456787; x=1720061587; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vp0EPE8+DbaTcM76Gv4bi2n9Zjw+7/Yigu+Y95hdoaY=;
 b=etbKZssenEWFpjuBelsicPStTvsO33NBSKWtW4iiPROMo7vN1MnW9qLF1qqxQrm0c1
 8ZcNgNxTjy4hKHprYtNdp1rqUlgJzwrDwnDIat1fuFh+xiJJHeu9frbiun5RBcDmsdRA
 NTgtmSQ/dSiKDpKqfe2XDsfqthS3uAeQmH+25cNSAzRl0keeVOGGlSZh+oXjt6AvEEmZ
 qCWIbmoN8Hp4+9h8w5sOmTb3ak3gegJf3nZc0ZQNzpyjwLusv0aIUTPMPgGi3K7oAN3b
 qFpTXNA9wUNKxpH9RFpUYL7PXIcS4kFA4hfoZ3ZNao07CTL6V9gfNRT8CL5MdHQUVIfn
 JD4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719456787; x=1720061587;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vp0EPE8+DbaTcM76Gv4bi2n9Zjw+7/Yigu+Y95hdoaY=;
 b=kbT9cqHOnN4RTsi9HMN6JWrywWRft901MFraTvaAeecKx4QlRjHbTIRK+2rbQo9SQq
 n5i9vxa5P/qqyJw/f05EDL0auZZnHgsbvn2h8h0Oz9zFWnmLSZzIwzJ71Sblwla1ymj9
 X/3IMQ/B+5bxn29UHm7zqcIlC+JypzB1wLyq+z9iQEx01UHUJaP4hrolOejxS8/Yhlxc
 WflHrvnzIhO8+K5cFSPKUq20mkVi+aOmIpDI1tNOynXZfcMlzch8P19/3qu29NkqH4Uc
 hE0qK7s5/DCJrUzgYDDHgb9NXSz+iLXJwTYjlQkS4ixl0EU89Xp2Dgg2nsoYc5iNktWq
 tadQ==
X-Gm-Message-State: AOJu0YxGQS1ojt+ug5AMGUVqbx1W8wtOwt93aXLtLrg3kVHI6xJiP8rm
 yb/wjXBBCauHXwzHHnZgGzYcDdJkvM9QMepMEnEPuJ6ZBgdKNgxwuLbaCvD3d+UH8Hu9T6jel+C
 ZKTexr7lR8Yw0GUQMiULQuZ+sUEOJILGwe0OazIHY
X-Google-Smtp-Source: AGHT+IHl/rY39OqPLd0eAy3x+8KNLJMNGGJOxWCDwTkNISUQ1xWY0mscqQBtXpz0DJEGB0/1amjZtFTtibg5F4YS1SM=
X-Received: by 2002:a5b:111:0:b0:e03:35e6:3b43 with SMTP id
 3f1490d57ef6-e0335e63c70mr3112452276.60.1719456787026; Wed, 26 Jun 2024
 19:53:07 -0700 (PDT)
MIME-Version: 1.0
References: <20240528183040.17068-1-llfamsec@gmail.com>
 <4f617ca0-218c-443b-8293-07877422825f@oracle.com>
In-Reply-To: <4f617ca0-218c-443b-8293-07877422825f@oracle.com>
Date: Thu, 27 Jun 2024 10:52:56 +0800
Message-ID: <CAEBF3_ZmMLbijYs=5SSMnyd2X3nzV0TJ_kMF_Kghvu6rDf+UMA@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jun 27, 2024 at 1:49 AM Dave Kleikamp wrote: > >
    On 5/28/24 1:30PM, lei lu wrote: > > Add a check before visiting the members
    of ea to > > make sure each ea stays within the ealist. > > So [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [209.85.128.173 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [209.85.128.173 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.128.173 listed in sa-accredit.habeas.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [llfamsec[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.173 listed in wl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1sMfG5-00073F-NQ
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
Cc: jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBKdW4gMjcsIDIwMjQgYXQgMTo0OeKAr0FNIERhdmUgS2xlaWthbXAgPGRhdmUua2xl
aWthbXBAb3JhY2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiA1LzI4LzI0IDE6MzBQTSwgbGVpIGx1IHdy
b3RlOgo+ID4gQWRkIGEgY2hlY2sgYmVmb3JlIHZpc2l0aW5nIHRoZSBtZW1iZXJzIG9mIGVhIHRv
Cj4gPiBtYWtlIHN1cmUgZWFjaCBlYSBzdGF5cyB3aXRoaW4gdGhlIGVhbGlzdC4KPgo+IFNvcnJ5
IGl0J3MgdGFrZW4gbWUgc28gbG9uZyB0byByZXNwb25kLgo+Cj4gSSBkbyBzdGlsbCBoYXZlIG9u
ZSBxdWVzdGlvbiwgYmVsb3cuCgpUaGFua3MgZm9yIHlvdXIgdGltZS4KCj4KPiA+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBsZWkgbHUgPGxsZmFtc2VjQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gICBmcy9q
ZnMveGF0dHIuYyB8IDIzICsrKysrKysrKysrKysrKysrKystLS0tCj4gPiAgIDEgZmlsZSBjaGFu
Z2VkLCAxOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9mcy9qZnMveGF0dHIuYyBiL2ZzL2pmcy94YXR0ci5jCj4gPiBpbmRleCAwZmI3YWZhYzI5OGUu
LmFiOWI4NWNlN2ZmNyAxMDA2NDQKPiA+IC0tLSBhL2ZzL2pmcy94YXR0ci5jCj4gPiArKysgYi9m
cy9qZnMveGF0dHIuYwo+ID4gQEAgLTc5NSw3ICs3OTUsNyBAQCBzc2l6ZV90IF9famZzX2dldHhh
dHRyKHN0cnVjdCBpbm9kZSAqaW5vZGUsIGNvbnN0IGNoYXIgKm5hbWUsIHZvaWQgKmRhdGEsCj4g
PiAgICAgICAgICAgICAgICAgICAgICBzaXplX3QgYnVmX3NpemUpCj4gPiAgIHsKPiA+ICAgICAg
IHN0cnVjdCBqZnNfZWFfbGlzdCAqZWFsaXN0Owo+ID4gLSAgICAgc3RydWN0IGpmc19lYSAqZWE7
Cj4gPiArICAgICBzdHJ1Y3QgamZzX2VhICplYSwgKmVhbGlzdF9lbmQ7Cj4gPiAgICAgICBzdHJ1
Y3QgZWFfYnVmZmVyIGVhX2J1ZjsKPiA+ICAgICAgIGludCB4YXR0cl9zaXplOwo+ID4gICAgICAg
c3NpemVfdCBzaXplOwo+ID4gQEAgLTgxNSw5ICs4MTUsMTYgQEAgc3NpemVfdCBfX2pmc19nZXR4
YXR0cihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBjb25zdCBjaGFyICpuYW1lLCB2b2lkICpkYXRhLAo+
ID4gICAgICAgICAgICAgICBnb3RvIG5vdF9mb3VuZDsKPiA+Cj4gPiAgICAgICBlYWxpc3QgPSAo
c3RydWN0IGpmc19lYV9saXN0ICopIGVhX2J1Zi54YXR0cjsKPiA+ICsgICAgIGVhbGlzdF9lbmQg
PSBFTkRfRUFMSVNUKGVhbGlzdCk7Cj4gPgo+ID4gICAgICAgLyogRmluZCB0aGUgbmFtZWQgYXR0
cmlidXRlICovCj4gPiAtICAgICBmb3IgKGVhID0gRklSU1RfRUEoZWFsaXN0KTsgZWEgPCBFTkRf
RUFMSVNUKGVhbGlzdCk7IGVhID0gTkVYVF9FQShlYSkpCj4gPiArICAgICBmb3IgKGVhID0gRklS
U1RfRUEoZWFsaXN0KTsgZWEgPCBlYWxpc3RfZW5kOyBlYSA9IE5FWFRfRUEoZWEpKSB7Cj4gPiAr
ICAgICAgICAgICAgIGlmICh1bmxpa2VseShlYSArIDEgPiBlYWxpc3RfZW5kKSB8fAo+Cj4gSSBz
dGlsbCBkb24ndCB1bmRlcnN0YW5kIHRoZSBmaXJzdCBwYXJ0IG9mIHRoaXMgdGVzdC4gVGhlIGZv
ciBsb29wIHdpbGwKPiBlbnN1cmUgdGhhdCBlYSA8IGVhbGlzdF9lbmQuIEl0IHNlZW1zIG9ubHkg
dGhlIGJlbG93IHBhcnQgaXMgbmVlZGVkLgoKVGhlIGxvb3AganVzdCBzaW1wbHkgY2hlY2tzIHRo
YXQgdGhlIHN0YXJ0IG9mZnNldCBvZiBlYSBpcyB3aXRoaW4gdGhlIHJhbmdlLgpTbyB3ZSBuZWVk
IHRvIGVuc3VyZSB0aGUgZm9sbG93aW5nIHR3byBzdHVmZnM6CiAgICAgICAgMSkgImVhICsgMSA+
IGVhbGlzdF9lbmQiOiBNYWtlIHN1cmUgZml4ZWQgbWVtYmVycyBpcyB3aXRoaW4gdGhlCiAgICAg
ICAgICAgICByYW5nZSBiZWZvcmUgYWNjZXNzaW5nIChORVhUX0VBIG1hY3JvIHdpbGwgYWNjZXNz
IGVhLT5uYW1lbGVuCiAgICAgICAgICAgICBhbmQgZWEtPnZhbHVlbGVuKQogICAgICAgIDIpICJO
RVhUX0VBKGVhKSA+IGVhbGlzdF9lbmQiIE1ha2Ugc3VyZSB2YXJpYWJsZSBtZW1iZXJzIChlYS0+
bmFtZSkKICAgICAgICAgICAgIGlzIHdpdGhpbiB0aGUgcmFuZ2UgYmVmb3JlIGFjY2Vzc2luZwoK
VGhhbmtzLApMTAoKPgo+ID4gKyAgICAgICAgICAgICAgICAgdW5saWtlbHkoTkVYVF9FQShlYSkg
PiBlYWxpc3RfZW5kKSkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHNpemUgPSAtRVVDTEVB
TjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIHJlbGVhc2U7Cj4gPiArICAgICAgICAg
ICAgIH0KPiA+ICsKPiA+ICAgICAgICAgICAgICAgaWYgKChuYW1lbGVuID09IGVhLT5uYW1lbGVu
KSAmJgo+ID4gICAgICAgICAgICAgICAgICAgbWVtY21wKG5hbWUsIGVhLT5uYW1lLCBuYW1lbGVu
KSA9PSAwKSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgLyogRm91bmQgaXQgKi8KPiA+IEBA
IC04MzIsNiArODM5LDcgQEAgc3NpemVfdCBfX2pmc19nZXR4YXR0cihzdHJ1Y3QgaW5vZGUgKmlu
b2RlLCBjb25zdCBjaGFyICpuYW1lLCB2b2lkICpkYXRhLAo+ID4gICAgICAgICAgICAgICAgICAg
ICAgIG1lbWNweShkYXRhLCB2YWx1ZSwgc2l6ZSk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAg
Z290byByZWxlYXNlOwo+ID4gICAgICAgICAgICAgICB9Cj4gPiArICAgICB9Cj4gPiAgICAgICAg
IG5vdF9mb3VuZDoKPiA+ICAgICAgIHNpemUgPSAtRU5PREFUQTsKPiA+ICAgICAgICAgcmVsZWFz
ZToKPiA+IEBAIC04NTksNyArODY3LDcgQEAgc3NpemVfdCBqZnNfbGlzdHhhdHRyKHN0cnVjdCBk
ZW50cnkgKiBkZW50cnksIGNoYXIgKmRhdGEsIHNpemVfdCBidWZfc2l6ZSkKPiA+ICAgICAgIHNz
aXplX3Qgc2l6ZSA9IDA7Cj4gPiAgICAgICBpbnQgeGF0dHJfc2l6ZTsKPiA+ICAgICAgIHN0cnVj
dCBqZnNfZWFfbGlzdCAqZWFsaXN0Owo+ID4gLSAgICAgc3RydWN0IGpmc19lYSAqZWE7Cj4gPiAr
ICAgICBzdHJ1Y3QgamZzX2VhICplYSwgKmVhbGlzdF9lbmQ7Cj4gPiAgICAgICBzdHJ1Y3QgZWFf
YnVmZmVyIGVhX2J1ZjsKPiA+Cj4gPiAgICAgICBkb3duX3JlYWQoJkpGU19JUChpbm9kZSktPnhh
dHRyX3NlbSk7Cj4gPiBAQCAtODc0LDkgKzg4MiwxNiBAQCBzc2l6ZV90IGpmc19saXN0eGF0dHIo
c3RydWN0IGRlbnRyeSAqIGRlbnRyeSwgY2hhciAqZGF0YSwgc2l6ZV90IGJ1Zl9zaXplKQo+ID4g
ICAgICAgICAgICAgICBnb3RvIHJlbGVhc2U7Cj4gPgo+ID4gICAgICAgZWFsaXN0ID0gKHN0cnVj
dCBqZnNfZWFfbGlzdCAqKSBlYV9idWYueGF0dHI7Cj4gPiArICAgICBlYWxpc3RfZW5kID0gRU5E
X0VBTElTVChlYWxpc3QpOwo+ID4KPiA+ICAgICAgIC8qIGNvbXB1dGUgcmVxdWlyZWQgc2l6ZSBv
ZiBsaXN0ICovCj4gPiAtICAgICBmb3IgKGVhID0gRklSU1RfRUEoZWFsaXN0KTsgZWEgPCBFTkRf
RUFMSVNUKGVhbGlzdCk7IGVhID0gTkVYVF9FQShlYSkpIHsKPiA+ICsgICAgIGZvciAoZWEgPSBG
SVJTVF9FQShlYWxpc3QpOyBlYSA8IGVhbGlzdF9lbmQ7IGVhID0gTkVYVF9FQShlYSkpIHsKPiA+
ICsgICAgICAgICAgICAgaWYgKHVubGlrZWx5KGVhICsgMSA+IGVhbGlzdF9lbmQpIHx8Cj4gPiAr
ICAgICAgICAgICAgICAgICB1bmxpa2VseShORVhUX0VBKGVhKSA+IGVhbGlzdF9lbmQpKSB7Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgc2l6ZSA9IC1FVUNMRUFOOwo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgIGdvdG8gcmVsZWFzZTsKPiA+ICsgICAgICAgICAgICAgfQo+ID4gKwo+ID4gICAg
ICAgICAgICAgICBpZiAoY2FuX2xpc3QoZWEpKQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHNp
emUgKz0gbmFtZV9zaXplKGVhKSArIDE7Cj4gPiAgICAgICB9CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0
Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
