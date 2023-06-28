Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BA4741413
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Jun 2023 16:48:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEWSq-0007F7-NN;
	Wed, 28 Jun 2023 14:48:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smfrench@gmail.com>) id 1qEWSl-0007F0-Fo
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 14:48:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e1YW04UU50We/tDixqQJR64b2VyQ7y4Z8YwnYoU/27Y=; b=EzKqlIyUn6SzQBXkGGTwNoEAez
 GzKJIBRYu3mHU2qI89Kmc7FGTXh5rUT06MlYHf7P08r52gKvW6Jx/BnGI3WxQVlfN5FmLQXVstxYZ
 Zi7kgIoLy/s9F8XfPb9Sxr40KkSnvaL9vin29a5UCWFg9hvqwHGKBDKrB868u0/SCgWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e1YW04UU50We/tDixqQJR64b2VyQ7y4Z8YwnYoU/27Y=; b=FoDOGGMTe4isV+ZhTf2Qw2Yhs1
 0t9b/23+vopfVh1/c6er14oqNwxMn/WiQhM3A9UfWlLnKU5Tu0lVZqm92qFAXjVvKzeQVPMpuv2R+
 hmLNFq5/A77id/l3TyPrL2xBIFdAknGsv4Kjxnm4i3RG+8YQ4vGlFTiF4JYDwyBAKFD4=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qEWSl-000G7w-Jm for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 14:48:08 +0000
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2b69a48368fso62653281fa.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 28 Jun 2023 07:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687963681; x=1690555681;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=e1YW04UU50We/tDixqQJR64b2VyQ7y4Z8YwnYoU/27Y=;
 b=gZdBV6+46sAPCfbZOVNA4lYadj64AT6TE58CoTLMkYIAD0VaV8reG7VDE2Xd+IusnO
 i4hcCprFn3uOSxJB3DiW++DlwlHtxBKYrP5LOfgZ0gR/5FX7IGNpOmKHUTI6y7l3v2rL
 ox/FfGig8cKafWSPor1BR/9aLpm2Aa8nijawte3QW/QUDETMmsvRdtSDVGJl5CZ4YcX3
 ddLHAgWdpfh5C86jpXMrWhDvZ5zQz25IiCh5KjUmIbmj9EEacDiWn9+9ltb1etlDJK9M
 0UzmQYKP83YYqQLOF0F+efp97n+AeVKmpC8+amItdgbgp6LnlN62eqW+Aqoqj5DZElK/
 4BfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687963681; x=1690555681;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=e1YW04UU50We/tDixqQJR64b2VyQ7y4Z8YwnYoU/27Y=;
 b=PR0IAjp4UT5Ww6SyOc9vM83EkHGaVUvV8tfqNDouApAkM5BW+oPCpXzFVUiThCBEiu
 rliWbMHqtdNOZRiUQLd5sXb8cVn8MU39BZnGa8bLlFyy83ewg1tBNwSNbKGsPoiYV0ff
 2yrxPOoz25U6q1TX1iuaC7Qgj/D4u2iiD6Ad4k0xQQQgVMJM7dCf0S9qTM2SrFOl1wOf
 oCbd0IuXKD1XGHBPouFEJxoeBJ0wKWt0bBQxRdh7NRTwz0uI3IoQ3EDC3WkQAqCMPzQr
 bNsOnROkQRuZ9TPiSr7J2lqb28/ogNQBsAsulgOum+Fhe/ov/VNR8hBb0s2pF78ymtX9
 0ngQ==
X-Gm-Message-State: AC+VfDzPXd+j1jSXhooF6pwGk1vaeu6Nyst3MuIwkcWFBelPfrPfnfVw
 AAyVVpSAQ9zu2Ro5kmf6qGjS0xdZr+m2L3nnklM=
X-Google-Smtp-Source: ACHHUZ4V4luOlVImmSO22TeirzJZI8KUcreJ0Wd+SzXba9EvdhUFQLB7RmaigJsQwmmHiHC1M03C5gJ7uA7tMsIjJkw=
X-Received: by 2002:a2e:97cc:0:b0:2b6:a44d:e255 with SMTP id
 m12-20020a2e97cc000000b002b6a44de255mr5934312ljj.0.1687963680671; Wed, 28 Jun
 2023 07:48:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230628011439.159678-1-linux@treblig.org>
 <9343462e-6a4a-ca7b-03b8-4855e5a33b72@talpey.com>
 <ZJw4iLlFWRMq6a3S@gallifrey> <ZJw50e0pvn/IN5Gj@gallifrey>
 <66391bef-ab6c-7cad-3588-3f0a0dfb7d47@oracle.com>
In-Reply-To: <66391bef-ab6c-7cad-3588-3f0a0dfb7d47@oracle.com>
From: Steve French <smfrench@gmail.com>
Date: Wed, 28 Jun 2023 09:47:49 -0500
Message-ID: <CAH2r5mvqHSBdNQHm88gu0yhayY+yr6sYq1ou6ekxRVfoOrT=vg@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Jun 28, 2023 at 9:24 AM Dave Kleikamp wrote: > >
    On 6/28/23 8:46AM, Dr. David Alan Gilbert wrote: > > * Dr. David Alan Gilbert
    (dave@treblig.org) wrote: > >> * Tom Talpey (tom@talpey.com) [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [smfrench[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.172 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qEWSl-000G7w-Jm
Subject: Re: [Jfs-discussion] [PATCH 0/3] dedupe smb unicode files
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
Cc: sfrench@samba.org, jfs-discussion@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tom Talpey <tom@talpey.com>, "Dr. David Alan Gilbert" <linux@treblig.org>,
 linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgOToyNOKAr0FNIERhdmUgS2xlaWthbXAgPGRhdmUua2xl
aWthbXBAb3JhY2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiA2LzI4LzIzIDg6NDZBTSwgRHIuIERhdmlk
IEFsYW4gR2lsYmVydCB3cm90ZToKPiA+ICogRHIuIERhdmlkIEFsYW4gR2lsYmVydCAoZGF2ZUB0
cmVibGlnLm9yZykgd3JvdGU6Cj4gPj4gKiBUb20gVGFscGV5ICh0b21AdGFscGV5LmNvbSkgd3Jv
dGU6Cj4gPj4+IE9uIDYvMjcvMjAyMyA5OjE0IFBNLCBsaW51eEB0cmVibGlnLm9yZyB3cm90ZToK
PiA+Pj4+IEZyb206ICJEci4gRGF2aWQgQWxhbiBHaWxiZXJ0IiA8bGludXhAdHJlYmxpZy5vcmc+
Cj4gPj4+Pgo+ID4+Pj4gVGhlIHNtYiBjbGllbnQgYW5kIHNlcnZlciBjb2RlIGhhdmUgKG1vc3Rs
eSkgZHVwbGljYXRlZCBjb2RlCj4gPj4+PiBmb3IgdW5pY29kZSBtYW5pcHVsYXRpb24sIGluIHBh
cnRpY3VsYXIgdXBwZXIgY2FzZSBoYW5kbGluZy4KPiA+Pj4+Cj4gPj4+PiBGbGF0dGVuIHRoaXMg
bG90IGludG8gc2hhcmVkIGNvZGUuCj4gPj4+Pgo+ID4+Pj4gVGhlcmUncyBzb21lIGNvZGUgdGhh
dCdzIHNsaWdodGx5IGRpZmZlcmVudCBiZXR3ZWVuIHRoZSB0d28sIGFuZAo+ID4+Pj4gSSd2ZSBu
b3QgYXR0ZW1wdGVkIHRvIHNoYXJlIHRoYXQgLSB0aGlzIHNob3VsZCBiZSBzdHJpY3RseSBhIG5v
Cj4gPj4+PiBiZWhhdmlvdXIgY2hhbmdlIHNldC4KPiA+Pj4+Cj4gPj4+PiBJJ2QgbG92ZSB0byBh
bHNvIGJvaWwgb3V0IHRoZSBzYW1lIGNvZGUgZnJvbSBmcy9qZnMvIC0gYnV0IHRoYXQncwo+ID4+
Pj4gYSB0aG91Z2h0IGZvciBhbm90aGVyIHRpbWUgKGFuZCBoYXJkZXIgc2luY2UgdGhlcmUncyBu
byBnb29kIHRlc3QKPiA+Pj4+IGZvciBpdCkuCj4gPj4+Pgo+ID4+Pj4gTGlnaHRseSB0ZXN0ZWQg
d2l0aCBhIG1vZHVsZSBhbmQgYSBtb25vbGl0aGljIGJ1aWxkLCBhbmQganVzdCBtb3VudGluZwo+
ID4+Pj4gaXRzZWxmLgo+ID4+Pj4KPiA+Pj4+IFRoaXMgZHVwZSB3YXMgZm91bmQgdXNpbmcgUE1E
Ogo+ID4+Pj4gICAgIGh0dHBzOi8vcG1kLmdpdGh1Yi5pby9wbWQvcG1kX3VzZXJkb2NzX2NwZC5o
dG1sCj4gPj4+Pgo+ID4+Pj4gRGF2ZQo+ID4+Pj4KPiA+Pj4+IERyLiBEYXZpZCBBbGFuIEdpbGJl
cnQgKDMpOgo+ID4+Pj4gICAgIGZzL3NtYjogUmVtb3ZlIHVuaWNvZGUgJ2xvd2VyJyB0YWJsZXMK
PiA+Pj4+ICAgICBmcy9zbWI6IFN3aW5nIHVuaWNvZGUgY29tbW9uIGNvZGUgZnJvbSBzZXJ2ZXIt
PmNvbW1vbgo+ID4+Pj4gICAgIGZzL3NtYi9jbGllbnQ6IFVzZSBjb21tb24gY29kZSBpbiBjbGll
bnQKPiA+Pj4+Cj4gPj4+PiAgICBmcy9zbWIvY2xpZW50L2NpZnNfdW5pY29kZS5jICAgICAgICAg
ICAgICAgICAgfCAgIDEgLQo+ID4+Pj4gICAgZnMvc21iL2NsaWVudC9jaWZzX3VuaWNvZGUuaCAg
ICAgICAgICAgICAgICAgIHwgMzEzICstLS0tLS0tLS0tLS0tLS0tLQo+ID4+Pj4gICAgZnMvc21i
L2NsaWVudC9jaWZzX3VuaXVwci5oICAgICAgICAgICAgICAgICAgIHwgMjM5IC0tLS0tLS0tLS0t
LS0KPiA+Pj4+ICAgIGZzL3NtYi9jb21tb24vTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAgMSArCj4gPj4+PiAgICAuLi4vdW5pdXByLmggPT4gY29tbW9uL2NpZnNfdW5pY29kZV9j
b21tb24uY30gfCAxNTYgKy0tLS0tLS0tCj4gPj4+PiAgICBmcy9zbWIvY29tbW9uL2NpZnNfdW5p
Y29kZV9jb21tb24uaCAgICAgICAgICAgfCAyNzkgKysrKysrKysrKysrKysrKwo+ID4+Pgo+ID4+
PiBTbyBmYXIgc28gZ29vZCwgYnV0IHBsZWFzZSBkcm9wIHRoZSAiY2lmc18iIHByZWZpeCBmcm9t
IHRoaXMgbmV3IGZpbGUncwo+ID4+PiBuYW1lLCBzaW5jZSBpdHMgY29udGVudHMgYXBwbHkgdG8g
bGF0ZXIgc21iIGRpYWxlY3RzIGFzIHdlbGwuCj4gPj4KPiA+PiBTdXJlLgo+ID4KPiA+IEFjdHVh
bGx5LCB3b3VsZCB5b3UgYmUgb2sgd2l0aCBzbWJfdW5pY29kZV9jb21tb24gPyAgVGhlIHJlYXNv
biBpcyB0aGF0Cj4gPiB5b3UgZW5kIHVwIHdpdGggYSBtb2R1bGUgbmFtZWQgdW5pY29kZV9jb21t
b24gIHRoYXQgc291bmRzIHRvbyBnZW5lcmljLgo+Cj4gQSBiaXQgb2ZmIHRvcGljLCBidXQgYSBx
dWVzdGlvbiBmb3IgU3RldmUuCj4KPiBJcyB0aGVyZSBhIG5lZWQgZm9yIHNlcGFyYXRlIG1vZHVs
ZXMgdW5kZXIgZnMvc21iL2NvbW1vbi8/IE9yIGNvdWxkIHRoZQo+IG1ha2VmaWxlIGRvIHNvbWV0
aGluZyBsaWtlOgo+Cj4gb2JqLSQoQ09ORklHX1NNQkZTKSArPSBzbWJfY29tbW9uLm8KPgo+IHNt
Yl9jb21tb24teSA6PSBjaWZzLmFyYzQubyBjaWZzX21kNC5vIHNtYl91bmljb2RlLm8KCgpTaW5j
ZSBhcmM0IGFuZCBtZDQgYXJlIHVzZWQgbW9yZSByYXJlbHkgdXNlZCB0aGFuIHNtYl91bmljb2Rl
IChhbmQgaW4Kc29tZSBlbnZpcm9ubWVudHMKdXNlIG9mIG1kNCBjb3VsZCBiZSBmb3JiaWRkZW4p
LCBhbmQgYWxzbyBzaW5jZSBhcmM0IGFuZCBtZDQgYXJlIG5vdApyZWFsbHkgc21iL2NpZnMgYnV0
IGNyeXB0bywKc2VlbXMgbW9yZSBsb2dpY2FsIHRvIGtlZXAgdGhlbSBzZXBhcmF0ZS4gICAgVGhl
cmUgYXJlIG90aGVyIHRoaW5ncwpsaWtlIHF1aWMgc3VwcG9ydAood2hpY2ggaXMgaW1wb3J0YW50
IGZvciBzbWIzLjEuMSkgdGhhdCB3aWxsIHByb2JhYmx5IGJlIG11Y2ggbGFyZ2VyCihldmVuIHdp
dGggdXBjYWxscykgdGhhdApjb3VsZCBhbHNvIGJlIGRpc3RpbmN0IG1vZHVsZXMgaW4gZnMvc21i
L2NvbW1vbiBpbiB0aGUgZnV0dXJlLgoKCi0tIApUaGFua3MsCgpTdGV2ZQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
