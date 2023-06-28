Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F45774134A
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Jun 2023 16:03:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEVlG-0005Y8-48;
	Wed, 28 Jun 2023 14:03:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smfrench@gmail.com>) id 1qEVlE-0005Y2-4D
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 14:03:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9++kyskAcuLSTCdvz4cuOcuwZ+7nEt7UgMySKIzNZkY=; b=hVhf0Kq2ocoBER08dCXegSEq7r
 Ia52m/tldnNn52YJ3iJrBKO9Xx2hVMF8kS9kuC2evZVRxZRruTYr1SX+eSmeuPZj4Gr/MuiuLqT2q
 rQiXPiWjV166bdEhKPonkm3pz/lntCFxk4mB2SnedXr5ImGfoFqr3u7qSTGOOSqa0miU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9++kyskAcuLSTCdvz4cuOcuwZ+7nEt7UgMySKIzNZkY=; b=etXvO3PSJupcLngDedm647M870
 NLbazNDSKIvCOw5mX51TkP6bYiAaoamsIpccRT1olAfBG7dO4ySHJ3vOsoJo8UM4bEF73zOGMgK/L
 c9h8m4mj8DMdrSQQJONPGBz5qyFVWGVhvCAjN8ffok/7Fn7aOqlvpAwe1mClW7/6Vr40=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qEVl7-00054u-2Q for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 14:03:04 +0000
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2b69ed7d050so59918561fa.2
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 28 Jun 2023 07:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687960974; x=1690552974;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9++kyskAcuLSTCdvz4cuOcuwZ+7nEt7UgMySKIzNZkY=;
 b=bZSr1gisAoHvMUzOjN2iYx4JPE9w+BVuk/wojslN7pMzeSLYX85uI+M/+vom43bFT2
 c5uSzw0Q/mB5FjHmHh1ClZA4aiB/96Ez8s7t0bdFsLLDlvN7TR7NTkqBne+p9VwW6IRu
 DK9Wd5tgF2foEFCdPNvr4zcn7JHEW8ChgEhWMdMnkJQjK7bd7Onh3k+O362NwEPUJmcW
 jVHWq19UY3FVruPHq/L9UhM52jWwcnlWY8qQ7KLHPF2hZogrCmfLYwDHmMXkfJy9Nha8
 FtFV6c9ZcEMN40q03KAof6TNPxw5e4Nf7ldmgD7eldle0DhWgpTsJwB/q5w6R4qCpjcJ
 +PuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687960974; x=1690552974;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9++kyskAcuLSTCdvz4cuOcuwZ+7nEt7UgMySKIzNZkY=;
 b=P+7RMm+bjZqxLF/KX8ebKECqmpwXSR1EEZAUtTf2tLRtBbbwLjyZyBRrhUiUxlzyIc
 TZjIKp1CLIwlvzJIY2pCDeIb5hbHfHbttikNR3M93d9dpmDXklAi4KTZMMCnebGT0MNu
 mVX2BipC/8XjVwEpiiLTBEErqhZtwOR8uJe63hG4pvZBHcsmSH+CKN5y4YJoae/mACpe
 9Ege9oA57ZaB65YByYfCpTCIAAtrc5RATs4QvhHDsqWSzTwEoE8EtaCYthCR6HB/N8t7
 6qVQ2Nk1lmKo92DPInj7PcZh+ZOtgNrRsCniPVSZXaUeAh7QlghR2fFtZ5Bk5l6iMMqQ
 5twQ==
X-Gm-Message-State: AC+VfDyQJw32kdZq5CGmaXADIsKiD0EuXMkMzYO+JX9JDTaZcvE+qc6u
 GsMlrRa/PTCgOM6lVq7PXMK1xLXjRVzJ2FWHVCI=
X-Google-Smtp-Source: ACHHUZ68oLVhXjotD3TU0EQBJWaKIPvJRdeVR/ctTiw1P3PXSMIZdlXmsFqY8H46WolZHg3+MW+co0zo2yZ7DRMflXk=
X-Received: by 2002:a2e:854e:0:b0:2b5:80c9:9806 with SMTP id
 u14-20020a2e854e000000b002b580c99806mr15449461ljj.6.1687960973954; Wed, 28
 Jun 2023 07:02:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230628011439.159678-1-linux@treblig.org>
 <9343462e-6a4a-ca7b-03b8-4855e5a33b72@talpey.com>
 <ZJw4iLlFWRMq6a3S@gallifrey> <ZJw50e0pvn/IN5Gj@gallifrey>
In-Reply-To: <ZJw50e0pvn/IN5Gj@gallifrey>
From: Steve French <smfrench@gmail.com>
Date: Wed, 28 Jun 2023 09:02:42 -0500
Message-ID: <CAH2r5muALCzCujwMZQFpWMtwvv97ZykP-1Wkf3PF4ybkgYNhGw@mail.gmail.com>
To: "Dr. David Alan Gilbert" <linux@treblig.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Jun 28, 2023 at 8:56 AM Dr. David Alan Gilbert wrote:
    > > * Dr. David Alan Gilbert (dave@treblig.org) wrote: > > * Tom Talpey (tom@talpey.com)
    wrote: > > > On 6/27/2023 9:14 PM, > > > > [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.172 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [smfrench[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.172 listed in wl.mailspike.net]
X-Headers-End: 1qEVl7-00054u-2Q
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
 Tom Talpey <tom@talpey.com>, linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgODo1NuKAr0FNIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQK
PGxpbnV4QHRyZWJsaWcub3JnPiB3cm90ZToKPgo+ICogRHIuIERhdmlkIEFsYW4gR2lsYmVydCAo
ZGF2ZUB0cmVibGlnLm9yZykgd3JvdGU6Cj4gPiAqIFRvbSBUYWxwZXkgKHRvbUB0YWxwZXkuY29t
KSB3cm90ZToKPiA+ID4gT24gNi8yNy8yMDIzIDk6MTQgUE0sIGxpbnV4QHRyZWJsaWcub3JnIHdy
b3RlOgo+ID4gPiA+IEZyb206ICJEci4gRGF2aWQgQWxhbiBHaWxiZXJ0IiA8bGludXhAdHJlYmxp
Zy5vcmc+Cj4gPiA+ID4KPiA+ID4gPiBUaGUgc21iIGNsaWVudCBhbmQgc2VydmVyIGNvZGUgaGF2
ZSAobW9zdGx5KSBkdXBsaWNhdGVkIGNvZGUKPiA+ID4gPiBmb3IgdW5pY29kZSBtYW5pcHVsYXRp
b24sIGluIHBhcnRpY3VsYXIgdXBwZXIgY2FzZSBoYW5kbGluZy4KPiA+ID4gPgo+ID4gPiA+IEZs
YXR0ZW4gdGhpcyBsb3QgaW50byBzaGFyZWQgY29kZS4KPiA+ID4gPgo+ID4gPiA+IFRoZXJlJ3Mg
c29tZSBjb2RlIHRoYXQncyBzbGlnaHRseSBkaWZmZXJlbnQgYmV0d2VlbiB0aGUgdHdvLCBhbmQK
PiA+ID4gPiBJJ3ZlIG5vdCBhdHRlbXB0ZWQgdG8gc2hhcmUgdGhhdCAtIHRoaXMgc2hvdWxkIGJl
IHN0cmljdGx5IGEgbm8KPiA+ID4gPiBiZWhhdmlvdXIgY2hhbmdlIHNldC4KPiA+ID4gPgo+ID4g
PiA+IEknZCBsb3ZlIHRvIGFsc28gYm9pbCBvdXQgdGhlIHNhbWUgY29kZSBmcm9tIGZzL2pmcy8g
LSBidXQgdGhhdCdzCj4gPiA+ID4gYSB0aG91Z2h0IGZvciBhbm90aGVyIHRpbWUgKGFuZCBoYXJk
ZXIgc2luY2UgdGhlcmUncyBubyBnb29kIHRlc3QKPiA+ID4gPiBmb3IgaXQpLgo+ID4gPiA+Cj4g
PiA+ID4gTGlnaHRseSB0ZXN0ZWQgd2l0aCBhIG1vZHVsZSBhbmQgYSBtb25vbGl0aGljIGJ1aWxk
LCBhbmQganVzdCBtb3VudGluZwo+ID4gPiA+IGl0c2VsZi4KPiA+ID4gPgo+ID4gPiA+IFRoaXMg
ZHVwZSB3YXMgZm91bmQgdXNpbmcgUE1EOgo+ID4gPiA+ICAgIGh0dHBzOi8vcG1kLmdpdGh1Yi5p
by9wbWQvcG1kX3VzZXJkb2NzX2NwZC5odG1sCj4gPiA+ID4KPiA+ID4gPiBEYXZlCj4gPiA+ID4K
PiA+ID4gPiBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0ICgzKToKPiA+ID4gPiAgICBmcy9zbWI6IFJl
bW92ZSB1bmljb2RlICdsb3dlcicgdGFibGVzCj4gPiA+ID4gICAgZnMvc21iOiBTd2luZyB1bmlj
b2RlIGNvbW1vbiBjb2RlIGZyb20gc2VydmVyLT5jb21tb24KPiA+ID4gPiAgICBmcy9zbWIvY2xp
ZW50OiBVc2UgY29tbW9uIGNvZGUgaW4gY2xpZW50Cj4gPiA+ID4KPiA+ID4gPiAgIGZzL3NtYi9j
bGllbnQvY2lmc191bmljb2RlLmMgICAgICAgICAgICAgICAgICB8ICAgMSAtCj4gPiA+ID4gICBm
cy9zbWIvY2xpZW50L2NpZnNfdW5pY29kZS5oICAgICAgICAgICAgICAgICAgfCAzMTMgKy0tLS0t
LS0tLS0tLS0tLS0tCj4gPiA+ID4gICBmcy9zbWIvY2xpZW50L2NpZnNfdW5pdXByLmggICAgICAg
ICAgICAgICAgICAgfCAyMzkgLS0tLS0tLS0tLS0tLQo+ID4gPiA+ICAgZnMvc21iL2NvbW1vbi9N
YWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiA+ID4gPiAgIC4uLi91bml1
cHIuaCA9PiBjb21tb24vY2lmc191bmljb2RlX2NvbW1vbi5jfSB8IDE1NiArLS0tLS0tLS0KPiA+
ID4gPiAgIGZzL3NtYi9jb21tb24vY2lmc191bmljb2RlX2NvbW1vbi5oICAgICAgICAgICB8IDI3
OSArKysrKysrKysrKysrKysrCj4gPiA+Cj4gPiA+IFNvIGZhciBzbyBnb29kLCBidXQgcGxlYXNl
IGRyb3AgdGhlICJjaWZzXyIgcHJlZml4IGZyb20gdGhpcyBuZXcgZmlsZSdzCj4gPiA+IG5hbWUs
IHNpbmNlIGl0cyBjb250ZW50cyBhcHBseSB0byBsYXRlciBzbWIgZGlhbGVjdHMgYXMgd2VsbC4K
PiA+Cj4gPiBTdXJlLgo+Cj4gQWN0dWFsbHksIHdvdWxkIHlvdSBiZSBvayB3aXRoIHNtYl91bmlj
b2RlX2NvbW1vbiA/ICBUaGUgcmVhc29uIGlzIHRoYXQKPiB5b3UgZW5kIHVwIHdpdGggYSBtb2R1
bGUgbmFtZWQgdW5pY29kZV9jb21tb24gIHRoYXQgc291bmRzIHRvbyBnZW5lcmljLgoKU2luY2Ug
aXQgaXMgYWxyZWFkeSBpbiB0aGUgc21iL2NvbW1vbiBkaXJlY3RvcnksIHNlZW1zIGVhc2llciB0
byBuYW1lIHRoZW06CnNtYi9jb21tb24vdW5pY29kZS5jCm9yIHNtYi9jb21tb24vc21iX3VuaWNv
ZGUuYwoKLS0gClRoYW5rcywKClN0ZXZlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
