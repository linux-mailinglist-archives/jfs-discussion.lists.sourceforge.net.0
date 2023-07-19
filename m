Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4020D759D06
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Jul 2023 20:03:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMBVk-00072I-9a;
	Wed, 19 Jul 2023 18:02:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smfrench@gmail.com>) id 1qMBVd-00072B-If
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 18:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bBHJ5zznIS99/1DyqAk4yervL0PEta1EYDdROer+oA8=; b=RpVDlA6fk11kLckX+T19aJSixd
 EMbYBDjZCeukaMzjQBIEXq3pDhtP5f72DDTgDeoplOux/YdrYh9y9MbDmETXymPB5e85OPG1Qt4A/
 hv+oapaMHhgLhYLBpQVcQafxzfuDHhy//tQdn4PqFK+GBTCylKKwKN45GJh39x5sjvUM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bBHJ5zznIS99/1DyqAk4yervL0PEta1EYDdROer+oA8=; b=T3JP+Nfo62reF3sxzXP5r0UpqW
 Wp8OZQKfHk/0kvI/nrSMmns2NP3IkfUl1iRPKL3cGp3PavNHYEQqsuoEb9AbY2lFp0frOyRWzktz7
 8DWTC9hiCJ90GqB0M/L0fXz/jqoz479vrwKrLSiKsluD74hj4F6XEugJogqN8crIoWAo=;
Received: from mail-lj1-f179.google.com ([209.85.208.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qMBVd-00DK8j-82 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 18:02:45 +0000
Received: by mail-lj1-f179.google.com with SMTP id
 38308e7fff4ca-2b703caf344so106448341fa.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Jul 2023 11:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689789758; x=1690394558;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bBHJ5zznIS99/1DyqAk4yervL0PEta1EYDdROer+oA8=;
 b=CJi8/yl+47Yh9Kwk9UJYfszuGOwBrtcd3kkj8+k/hM6XwtvYQnswt+9l5kx5w6l+JW
 Pf1pkx4nAG2GxfLdljDLsrpuGn4910S++QJI/u7DkoAR2tHmuMLCayjLX9v9NK3ddR29
 EV/DjrjjyxXK1m+JJvit5D+pzBDTUmvDWLAlEg1fmjD2WHvAHd/bUuugJlLuserF3hVH
 D3ZMff/erGW7+o+J0uN2fSJ06ct6NOAJlRi1WKLxdSd+p7pij+gvMwq8CHGjM+4qeFGy
 M82JVyCsZD2Y+Tx2zQ8MIs7hLH0KvKONhM3EimNxr3SoEqpfVNym/8jrt4YrTnNXYmJp
 Qb8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689789758; x=1690394558;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bBHJ5zznIS99/1DyqAk4yervL0PEta1EYDdROer+oA8=;
 b=WUCwSJtP2hejWzKOTWfYDdrFrH30OMtAHdunrqdLRdStV7gIoGwGpnaRbJNf6gVcBP
 izk/WuHCnHwJYNmHwE64FSL32hSCCCfA9/ZeldpdFGkzQGq4fGBfflwemPVCaMbPTGU8
 W3Vz12Pcwj425Aglgw78ptUj7bXpEPa5+ZttJvadDtMnzoit0UaMF3oAUB6EBFpL4YF1
 XwFBhA5pRaIjEXYq6wkuhHLzf/cx9TN80Sl8e5fswQaOrBZuC5fEDHlRpYdMbQ7klCWV
 pyWo/bSVKgI8mWXFVjzyiBk8TyNB5sFf5IBBxH9/fdH6HJ4dX2wa0C88MNe6JBGedI/v
 T/DQ==
X-Gm-Message-State: ABy/qLaHFe3cZSASKfsyBGy0z8w+2GCT95aLuyDGfD/xbbvpTdStJ/4N
 FXWZUb1YnGPULUsR28Q2tVjGarIGEBEFhbuwfpk=
X-Google-Smtp-Source: APBJJlEmxHipuzXPKDdED5w7bl7mjtpLoEV1pqtEokzwAwo2FlEBgMIh13kfzR6FclKI1K183n9Tobgj4uzDjPnC/l0=
X-Received: by 2002:a2e:86d1:0:b0:2b7:3633:2035 with SMTP id
 n17-20020a2e86d1000000b002b736332035mr502768ljj.32.1689789758212; Wed, 19 Jul
 2023 11:02:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
 <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
In-Reply-To: <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
Date: Wed, 19 Jul 2023 13:02:27 -0500
Message-ID: <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The related question is which tree to send it from, if no
   problems reported (presumably mine since it mostly affect cifs.ko and ksmbd.ko,
    and because there hasn't been activity in fs/nls for years) On Wed, Jul 19,
    2023 at 12:56 PM Steve French wrote: > > No objections to this on my part.
    If Shaggy is ok with the JFS > change, we could target it for 6.6-rc1 if
   it tests out ok > > On Wed, Jul [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.179 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [smfrench[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qMBVd-00DK8j-82
Subject: Re: [Jfs-discussion] [PATCH v2 0/4] dedupe smb unicode files
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
From: Steve French via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Steve French <smfrench@gmail.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org, tom@talpey.com,
 krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

VGhlIHJlbGF0ZWQgcXVlc3Rpb24gaXMgd2hpY2ggdHJlZSB0byBzZW5kIGl0IGZyb20sIGlmIG5v
IHByb2JsZW1zCnJlcG9ydGVkIChwcmVzdW1hYmx5IG1pbmUgc2luY2UgaXQgbW9zdGx5IGFmZmVj
dCBjaWZzLmtvIGFuZCBrc21iZC5rbywKYW5kIGJlY2F1c2UgdGhlcmUgaGFzbid0IGJlZW4gYWN0
aXZpdHkgaW4gZnMvbmxzIGZvciB5ZWFycykKCk9uIFdlZCwgSnVsIDE5LCAyMDIzIGF0IDEyOjU2
4oCvUE0gU3RldmUgRnJlbmNoIDxzbWZyZW5jaEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gTm8gb2Jq
ZWN0aW9ucyB0byB0aGlzIG9uIG15IHBhcnQuICBJZiBTaGFnZ3kgaXMgb2sgd2l0aCB0aGUgSkZT
Cj4gY2hhbmdlLCB3ZSBjb3VsZCB0YXJnZXQgaXQgZm9yIDYuNi1yYzEgaWYgaXQgdGVzdHMgb3V0
IG9rCj4KPiBPbiBXZWQsIEp1bCAxMiwgMjAyMyBhdCA2OjI44oCvUE0gRHIuIERhdmlkIEFsYW4g
R2lsYmVydCA8ZGF2ZUB0cmVibGlnLm9yZz4gd3JvdGU6Cj4gPgo+ID4gKiBsaW51eEB0cmVibGln
Lm9yZyAobGludXhAdHJlYmxpZy5vcmcpIHdyb3RlOgo+ID4gPiBGcm9tOiAiRHIuIERhdmlkIEFs
YW4gR2lsYmVydCIgPGxpbnV4QHRyZWJsaWcub3JnPgo+ID4gPgo+ID4gPiBUaGUgc21iIGNsaWVu
dCBhbmQgc2VydmVyIGNvZGUgaGF2ZSAobW9zdGx5KSBkdXBsaWNhdGVkIGNvZGUKPiA+ID4gZm9y
IHVuaWNvZGUgbWFuaXB1bGF0aW9uLCBpbiBwYXJ0aWN1bGFyIHVwcGVyIGNhc2UgaGFuZGxpbmcu
Cj4gPiA+Cj4gPiA+IEZsYXR0ZW4gdGhpcyBsb3QgaW50byBzaGFyZWQgY29kZS4KPiA+Cj4gPiBH
ZW50bGUgdHdvIHdlZWsgcGluZyBvbiB0aGlzIHBsZWFzZS4KPiA+Cj4gPiBEYXZlCj4gPgo+ID4g
KEFwb2xvZ2llcyB0byB0aGUgMyBvZiB5b3Ugd2hvIGFscmVhZHkgZ290IGEgY29weSBvZiB0aGlz
IHBpbmcsCj4gPiByZWNlbnQgZHVlIHRvIGEgbWlzc2luZyBoZWFkZXIgJywnICkKPiA+Cj4gPiA+
IFRoZXJlJ3Mgc29tZSBjb2RlIHRoYXQncyBzbGlnaHRseSBkaWZmZXJlbnQgYmV0d2VlbiB0aGUg
dHdvLCBhbmQKPiA+ID4gSSd2ZSBub3QgYXR0ZW1wdGVkIHRvIHNoYXJlIHRoYXQgLSB0aGlzIHNo
b3VsZCBiZSBzdHJpY3RseSBhIG5vCj4gPiA+IGJlaGF2aW91ciBjaGFuZ2Ugc2V0Lgo+ID4gPgo+
ID4gPiBJbiBhZGRpdGlvbiwgdGhlIHNhbWUgdGFibGVzIGFuZCBjb2RlIGFyZSBzaGFyZWQgaW4g
amZzLCBob3dldmVyCj4gPiA+IHRoZXJlJ3MgdmVyeSBsaXR0bGUgdGVzdGluZyBhdmFpbGFibGUg
Zm9yIHRoZSB1bmljb2RlIGluIHRoZXJlLAo+ID4gPiBzbyBqdXN0IHNoYXJlIHRoZSByYXcgZGF0
YSB0YWJsZXMuCj4gPiA+Cj4gPiA+IEkgc3VzcGVjdCB0aGVyZSdzIG1vcmUgVUNTLTIgY29kZSB0
aGF0IGNhbiBiZSBzaGFyZWQsIGluIHRoZSBOTFMgY29kZQo+ID4gPiBhbmQgaW4gdGhlIFVDUy0y
IGNvZGUgdXNlZCBieSB0aGUgRUZJIGludGVyZmFjZXMuCj4gPiA+Cj4gPiA+IExpZ2h0bHkgdGVz
dGVkIHdpdGggYSBtb2R1bGUgYW5kIGEgbW9ub2xpdGhpYyBidWlsZCwgYW5kIGp1c3QgbW91bnRp
bmcKPiA+ID4gaXRzZWxmLgo+ID4gPgo+ID4gPiBUaGlzIGR1cGUgd2FzIGZvdW5kIHVzaW5nIFBN
RDoKPiA+ID4gICBodHRwczovL3BtZC5naXRodWIuaW8vcG1kL3BtZF91c2VyZG9jc19jcGQuaHRt
bAo+ID4gPgo+ID4gPiBEYXZlCj4gPiA+Cj4gPiA+IFZlcnNpb24gMgo+ID4gPiAgIE1vdmVkIHRo
ZSBzaGFyZWQgY29kZSB0byBmcy9ubHMgYWZ0ZXIgdjEgZmVlZGJhY2suCj4gPiA+ICAgUmVuYW1l
ZCBzaGFyZWQgdGFibGVzIGZyb20gU21iIHRvIE5scyBwcmVmaXgKPiA+ID4gICBNb3ZlIFVuaVN0
cmNhdCBhcyB3ZWxsCj4gPiA+ICAgU2hhcmUgdGhlIEpGUyB0YWJsZXMKPiA+ID4KPiA+ID4gRHIu
IERhdmlkIEFsYW4gR2lsYmVydCAoNCk6Cj4gPiA+ICAgZnMvc21iOiBSZW1vdmUgdW5pY29kZSAn
bG93ZXInIHRhYmxlcwo+ID4gPiAgIGZzL3NtYjogU3dpbmcgdW5pY29kZSBjb21tb24gY29kZSBm
cm9tIHNtYi0+TkxTCj4gPiA+ICAgZnMvc21iL2NsaWVudDogVXNlIGNvbW1vbiBjb2RlIGluIGNs
aWVudAo+ID4gPiAgIGZzL2pmczogVXNlIGNvbW1vbiB1Y3MyIHVwcGVyIGNhc2UgdGFibGUKPiA+
ID4KPiA+ID4gIGZzL2pmcy9LY29uZmlnICAgICAgICAgICAgICAgfCAgIDEgKwo+ID4gPiAgZnMv
amZzL01ha2VmaWxlICAgICAgICAgICAgICB8ICAgMiArLQo+ID4gPiAgZnMvamZzL2pmc191bmlj
b2RlLmggICAgICAgICB8ICAxNyArLQo+ID4gPiAgZnMvamZzL2pmc191bml1cHIuYyAgICAgICAg
ICB8IDEyMSAtLS0tLS0tLS0tLS0tCj4gPiA+ICBmcy9ubHMvS2NvbmZpZyAgICAgICAgICAgICAg
IHwgICA4ICsKPiA+ID4gIGZzL25scy9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgIDEgKwo+ID4g
PiAgZnMvbmxzL25sc191Y3MyX2RhdGEuaCAgICAgICB8ICAxNSArKwo+ID4gPiAgZnMvbmxzL25s
c191Y3MyX3V0aWxzLmMgICAgICB8IDE0NCArKysrKysrKysrKysrKysKPiA+ID4gIGZzL25scy9u
bHNfdWNzMl91dGlscy5oICAgICAgfCAyODUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gPiA+ICBmcy9zbWIvY2xpZW50L0tjb25maWcgICAgICAgIHwgICAxICsKPiA+ID4gIGZzL3Nt
Yi9jbGllbnQvY2lmc191bmljb2RlLmMgfCAgIDEgLQo+ID4gPiAgZnMvc21iL2NsaWVudC9jaWZz
X3VuaWNvZGUuaCB8IDMzMCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4g
PiAgZnMvc21iL2NsaWVudC9jaWZzX3VuaXVwci5oICB8IDIzOSAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gPiA+ICBmcy9zbWIvc2VydmVyL0tjb25maWcgICAgICAgIHwgICAxICsKPiA+ID4g
IGZzL3NtYi9zZXJ2ZXIvdW5pY29kZS5jICAgICAgfCAgIDEgLQo+ID4gPiAgZnMvc21iL3NlcnZl
ci91bmljb2RlLmggICAgICB8IDMyNSArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4gPiA+ICBmcy9zbWIvc2VydmVyL3VuaXVwci5oICAgICAgIHwgMjY4IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPiA+ID4gIDE3IGZpbGVzIGNoYW5nZWQsIDQ2NyBpbnNlcnRpb25zKCsp
LCAxMjkzIGRlbGV0aW9ucygtKQo+ID4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGZzL2pmcy9qZnNf
dW5pdXByLmMKPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBmcy9ubHMvbmxzX3VjczJfZGF0YS5o
Cj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZnMvbmxzL25sc191Y3MyX3V0aWxzLmMKPiA+ID4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBmcy9ubHMvbmxzX3VjczJfdXRpbHMuaAo+ID4gPiAgZGVsZXRl
IG1vZGUgMTAwNjQ0IGZzL3NtYi9jbGllbnQvY2lmc191bml1cHIuaAo+ID4gPiAgZGVsZXRlIG1v
ZGUgMTAwNjQ0IGZzL3NtYi9zZXJ2ZXIvdW5pdXByLmgKPiA+ID4KPiA+ID4gLS0KPiA+ID4gMi40
MS4wCj4gPiA+Cj4gPiAtLQo+ID4gIC0tLS0tT3BlbiB1cCB5b3VyIGV5ZXMsIG9wZW4gdXAgeW91
ciBtaW5kLCBvcGVuIHVwIHlvdXIgY29kZSAtLS0tLS0tCj4gPiAvIERyLiBEYXZpZCBBbGFuIEdp
bGJlcnQgICAgfCAgICAgICBSdW5uaW5nIEdOVS9MaW51eCAgICAgICB8IEhhcHB5ICBcCj4gPiBc
ICAgICAgICBkYXZlIEAgdHJlYmxpZy5vcmcgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IEluIEhleCAvCj4gPiAgXCBfX19fX19fX19fX19fX19fX19fX19fX19ffF9fX19fIGh0dHA6
Ly93d3cudHJlYmxpZy5vcmcgICB8X19fX19fXy8KPgo+Cj4KPiAtLQo+IFRoYW5rcywKPgo+IFN0
ZXZlCgoKCi0tClRoYW5rcywKClN0ZXZlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
