Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE36178A355
	for <lists+jfs-discussion@lfdr.de>; Mon, 28 Aug 2023 01:15:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qaOyR-0005ij-Bd;
	Sun, 27 Aug 2023 23:15:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smfrench@gmail.com>) id 1qaOyO-0005ic-0S
 for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Aug 2023 23:15:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IDyOSgiaTZBOTyCSK6opZGFKNTnmThLJYrBi96TQhjw=; b=icfAmy7Bc1WeBctXo7GxfhbKb2
 jVDHR0djgCVuUv9yecqFACLWtODehOQtRRiBJ0Wevio1K8y2uSUTnV80dmSm/AV+jECORtcBsiIR6
 fkuBKV4ssUHTeMm+d/5FlJM6HbsudCT276epQ+EgXG+2mxng/lDAF7BhhGKyR8AwRE3A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IDyOSgiaTZBOTyCSK6opZGFKNTnmThLJYrBi96TQhjw=; b=TtmHPW/ck7WfWcLSy83kHQg8JF
 8Ghu7et088r7lz0KVZVPAgkb/Q9eajt4QO+UtggrJPo93h9/AMI06TOluapnx/lOglSWsKU+fjM2g
 EfC8llvzasc5h6ty3VJAkyIQkr2iQGrBtYh9BWX/u+F/tMguw98j3Gc6nLM+nyMrhkb8=;
Received: from mail-lj1-f179.google.com ([209.85.208.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qaOyN-00HR84-2j for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Aug 2023 23:15:11 +0000
Received: by mail-lj1-f179.google.com with SMTP id
 38308e7fff4ca-2ba1e9b1fa9so39907731fa.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 27 Aug 2023 16:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693178104; x=1693782904;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IDyOSgiaTZBOTyCSK6opZGFKNTnmThLJYrBi96TQhjw=;
 b=bTHuEAmnT6JOXukEZ1V4X4jfm3+86j1EBtBDVMWkL0ZLgc6qashFc9bnY2Uy1EMB/7
 mGZbOfqtiPwmidNjkyOyOEKsk2Ld19JiDqSzfYka5b2JyGFfkxX4VPKC27ABIJzxPpOz
 Wnoagux2hZS9EfxuF9k0zrnjOOJfQ0CV0q3yVm1C6ufdUhvDEXXoyUi6BV0b3Z844kjA
 FjwVmXRdPDtfo9ov8Dr1exQymcKrq8UsP8b6b/0x+NyXY0EDBcW+J+mnAreQetPW8VQR
 Ey8M0IEzw/ftWN4AmcK+iZJ9/V7FQTM3NJFbIxE4IUDWNICtPG/nBMhQzu3vtARdePKe
 Cicw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693178104; x=1693782904;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IDyOSgiaTZBOTyCSK6opZGFKNTnmThLJYrBi96TQhjw=;
 b=BUEIUxi4H9230ykQx94E4tfc+XykLQo+ZzWgAVlEHg+m98Q8oXifF9RET27ygZCgt7
 SF0NNX9C6Wmx+PUHKYMbYiKMWHtBt0VbyuhcWOpdNSUnc+Zxcwh5UtzjPuykf6IZJHOL
 avonJuob6jOt1rD24MpwcMr0UNYK006WdsHpcVVJhosRkE1OXp9iJd9FOfocliMG6S+W
 XR6iIOlXIcjFHE6hemIx7NFm3hAoRyDMrjEudj6NJg0wjdFyk0mfsJkeYT4dpdP2jTKu
 bm7j4ZGbScBE5qx/REvuFH1q0q986e0xALRMGZox6egqUnnLYcDt6y68u6RM+Qsbntok
 kB8w==
X-Gm-Message-State: AOJu0YzA4Bu0znoyHtlBwzfleZ8sxi6+jlft4XDIBNuQ88wzKonaCuOB
 roBhIu2zxwxuZaQJG5Rm5z3ahIcK9lHBef/E/Tg=
X-Google-Smtp-Source: AGHT+IFTLhSC/X57Eee7vJx7GkarEgudwMA51wceosPi5cv22aXm4ogyqwY/Wgz4IJ11cpeytqMgTta5hWoKHE0rNJc=
X-Received: by 2002:a2e:8717:0:b0:2bc:c11c:4471 with SMTP id
 m23-20020a2e8717000000b002bcc11c4471mr16078819lji.21.1693178104154; Sun, 27
 Aug 2023 16:15:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
 <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
 <ZLhchajZaWEVM6D7@gallifrey> <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
In-Reply-To: <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
Date: Sun, 27 Aug 2023 18:14:52 -0500
Message-ID: <CAH2r5muFqOx91jiukxSVy3iqxZm+NOEZy7-oXKOT0G+yrUF3yw@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Shaggy, I can add these - am updating the series to include
    your RB On Wed, Jul 19, 2023 at 5:06 PM Dave Kleikamp wrote: > > On 7/19/23
    4:58PM, Dr. David Alan Gilbert wrote: > > * Steve French (smfrench@gmail.com)
    wrote: > >> The related question is which tree to [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.179 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.179 listed in wl.mailspike.net]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [smfrench[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1qaOyN-00HR84-2j
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
 "Dr. David Alan Gilbert" <linux@treblig.org>, krisman@collabora.com,
 linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

U2hhZ2d5LApJIGNhbiBhZGQgdGhlc2UgLSBhbSB1cGRhdGluZyB0aGUgc2VyaWVzIHRvIGluY2x1
ZGUgeW91ciBSQgoKT24gV2VkLCBKdWwgMTksIDIwMjMgYXQgNTowNuKAr1BNIERhdmUgS2xlaWth
bXAgPGRhdmUua2xlaWthbXBAb3JhY2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiA3LzE5LzIzIDQ6NThQ
TSwgRHIuIERhdmlkIEFsYW4gR2lsYmVydCB3cm90ZToKPiA+ICogU3RldmUgRnJlbmNoIChzbWZy
ZW5jaEBnbWFpbC5jb20pIHdyb3RlOgo+ID4+IFRoZSByZWxhdGVkIHF1ZXN0aW9uIGlzIHdoaWNo
IHRyZWUgdG8gc2VuZCBpdCBmcm9tLCBpZiBubyBwcm9ibGVtcwo+ID4+IHJlcG9ydGVkIChwcmVz
dW1hYmx5IG1pbmUgc2luY2UgaXQgbW9zdGx5IGFmZmVjdCBjaWZzLmtvIGFuZCBrc21iZC5rbywK
PiA+PiBhbmQgYmVjYXVzZSB0aGVyZSBoYXNuJ3QgYmVlbiBhY3Rpdml0eSBpbiBmcy9ubHMgZm9y
IHllYXJzKQo+ID4KPiA+IFRoYXQgd2FzIG15IGhvcGUsIGdpdmVuIHRoYXQgfmhhbGYgb2YgdGhl
IHBhdGNoZXMgYXJlIGRpcmVjdGx5IG9uIHRoYXQKPiA+IGNvZGUsIGFuZCBpdCdzIHRoZSBvbmx5
IHZlcnkgYWN0aXZlIHRyZWUgdGhpcyB0b3VjaGVzIGFzIGZhciBhcyBJIGNhbgo+ID4gdGVsbC4K
PiA+Cj4gPj4gT24gV2VkLCBKdWwgMTksIDIwMjMgYXQgMTI6NTbigK9QTSBTdGV2ZSBGcmVuY2gg
PHNtZnJlbmNoQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj4+Cj4gPj4+IE5vIG9iamVjdGlvbnMgdG8g
dGhpcyBvbiBteSBwYXJ0LiAgSWYgU2hhZ2d5IGlzIG9rIHdpdGggdGhlIEpGUwo+ID4+PiBjaGFu
Z2UsIHdlIGNvdWxkIHRhcmdldCBpdCBmb3IgNi42LXJjMSBpZiBpdCB0ZXN0cyBvdXQgb2sKPgo+
IEZvciB0aGUgc2VyaWVzOgo+IFJldmlld2VkLWJ5OiBEYXZlIEtsZWlrYW1wIDxkYXZlLmtsZWlr
YW1wQG9yYWNsZS5jb20+Cj4KPiBTdGV2ZSwKPiBGZWVsIGZyZWUgdG8gcHVsbCBpbiBldmVuIHRo
ZSA0dGggcGF0Y2ggaW50byB5b3VyIHRyZWUgd2l0aCBteSBjb25zZW50Lgo+IE9yIGlmIHlvdSdy
ZSBtb3JlIGNvbWZvcnRhYmxlLCBJIGNvdWxkIHN1Ym1pdCBpdCBhZnRlciB5b3VycyBoaXRzIG1h
aW5saW5lLgo+Cj4gU2hhZ2d5Cj4KPiA+Cj4gPiBUaGFua3MuCj4gPgo+ID4gRGF2ZQo+ID4KPiA+
Pj4gT24gV2VkLCBKdWwgMTIsIDIwMjMgYXQgNjoyOOKAr1BNIERyLiBEYXZpZCBBbGFuIEdpbGJl
cnQgPGRhdmVAdHJlYmxpZy5vcmc+IHdyb3RlOgo+ID4+Pj4KPiA+Pj4+ICogbGludXhAdHJlYmxp
Zy5vcmcgKGxpbnV4QHRyZWJsaWcub3JnKSB3cm90ZToKPiA+Pj4+PiBGcm9tOiAiRHIuIERhdmlk
IEFsYW4gR2lsYmVydCIgPGxpbnV4QHRyZWJsaWcub3JnPgo+ID4+Pj4+Cj4gPj4+Pj4gVGhlIHNt
YiBjbGllbnQgYW5kIHNlcnZlciBjb2RlIGhhdmUgKG1vc3RseSkgZHVwbGljYXRlZCBjb2RlCj4g
Pj4+Pj4gZm9yIHVuaWNvZGUgbWFuaXB1bGF0aW9uLCBpbiBwYXJ0aWN1bGFyIHVwcGVyIGNhc2Ug
aGFuZGxpbmcuCj4gPj4+Pj4KPiA+Pj4+PiBGbGF0dGVuIHRoaXMgbG90IGludG8gc2hhcmVkIGNv
ZGUuCj4gPj4+Pgo+ID4+Pj4gR2VudGxlIHR3byB3ZWVrIHBpbmcgb24gdGhpcyBwbGVhc2UuCj4g
Pj4+Pgo+ID4+Pj4gRGF2ZQo+ID4+Pj4KPiA+Pj4+IChBcG9sb2dpZXMgdG8gdGhlIDMgb2YgeW91
IHdobyBhbHJlYWR5IGdvdCBhIGNvcHkgb2YgdGhpcyBwaW5nLAo+ID4+Pj4gcmVjZW50IGR1ZSB0
byBhIG1pc3NpbmcgaGVhZGVyICcsJyApCj4gPj4+Pgo+ID4+Pj4+IFRoZXJlJ3Mgc29tZSBjb2Rl
IHRoYXQncyBzbGlnaHRseSBkaWZmZXJlbnQgYmV0d2VlbiB0aGUgdHdvLCBhbmQKPiA+Pj4+PiBJ
J3ZlIG5vdCBhdHRlbXB0ZWQgdG8gc2hhcmUgdGhhdCAtIHRoaXMgc2hvdWxkIGJlIHN0cmljdGx5
IGEgbm8KPiA+Pj4+PiBiZWhhdmlvdXIgY2hhbmdlIHNldC4KPiA+Pj4+Pgo+ID4+Pj4+IEluIGFk
ZGl0aW9uLCB0aGUgc2FtZSB0YWJsZXMgYW5kIGNvZGUgYXJlIHNoYXJlZCBpbiBqZnMsIGhvd2V2
ZXIKPiA+Pj4+PiB0aGVyZSdzIHZlcnkgbGl0dGxlIHRlc3RpbmcgYXZhaWxhYmxlIGZvciB0aGUg
dW5pY29kZSBpbiB0aGVyZSwKPiA+Pj4+PiBzbyBqdXN0IHNoYXJlIHRoZSByYXcgZGF0YSB0YWJs
ZXMuCj4gPj4+Pj4KPiA+Pj4+PiBJIHN1c3BlY3QgdGhlcmUncyBtb3JlIFVDUy0yIGNvZGUgdGhh
dCBjYW4gYmUgc2hhcmVkLCBpbiB0aGUgTkxTIGNvZGUKPiA+Pj4+PiBhbmQgaW4gdGhlIFVDUy0y
IGNvZGUgdXNlZCBieSB0aGUgRUZJIGludGVyZmFjZXMuCj4gPj4+Pj4KPiA+Pj4+PiBMaWdodGx5
IHRlc3RlZCB3aXRoIGEgbW9kdWxlIGFuZCBhIG1vbm9saXRoaWMgYnVpbGQsIGFuZCBqdXN0IG1v
dW50aW5nCj4gPj4+Pj4gaXRzZWxmLgo+ID4+Pj4+Cj4gPj4+Pj4gVGhpcyBkdXBlIHdhcyBmb3Vu
ZCB1c2luZyBQTUQ6Cj4gPj4+Pj4gICAgaHR0cHM6Ly9wbWQuZ2l0aHViLmlvL3BtZC9wbWRfdXNl
cmRvY3NfY3BkLmh0bWwKPiA+Pj4+Pgo+ID4+Pj4+IERhdmUKPiA+Pj4+Pgo+ID4+Pj4+IFZlcnNp
b24gMgo+ID4+Pj4+ICAgIE1vdmVkIHRoZSBzaGFyZWQgY29kZSB0byBmcy9ubHMgYWZ0ZXIgdjEg
ZmVlZGJhY2suCj4gPj4+Pj4gICAgUmVuYW1lZCBzaGFyZWQgdGFibGVzIGZyb20gU21iIHRvIE5s
cyBwcmVmaXgKPiA+Pj4+PiAgICBNb3ZlIFVuaVN0cmNhdCBhcyB3ZWxsCj4gPj4+Pj4gICAgU2hh
cmUgdGhlIEpGUyB0YWJsZXMKPiA+Pj4+Pgo+ID4+Pj4+IERyLiBEYXZpZCBBbGFuIEdpbGJlcnQg
KDQpOgo+ID4+Pj4+ICAgIGZzL3NtYjogUmVtb3ZlIHVuaWNvZGUgJ2xvd2VyJyB0YWJsZXMKPiA+
Pj4+PiAgICBmcy9zbWI6IFN3aW5nIHVuaWNvZGUgY29tbW9uIGNvZGUgZnJvbSBzbWItPk5MUwo+
ID4+Pj4+ICAgIGZzL3NtYi9jbGllbnQ6IFVzZSBjb21tb24gY29kZSBpbiBjbGllbnQKPiA+Pj4+
PiAgICBmcy9qZnM6IFVzZSBjb21tb24gdWNzMiB1cHBlciBjYXNlIHRhYmxlCj4gPj4+Pj4KPiA+
Pj4+PiAgIGZzL2pmcy9LY29uZmlnICAgICAgICAgICAgICAgfCAgIDEgKwo+ID4+Pj4+ICAgZnMv
amZzL01ha2VmaWxlICAgICAgICAgICAgICB8ICAgMiArLQo+ID4+Pj4+ICAgZnMvamZzL2pmc191
bmljb2RlLmggICAgICAgICB8ICAxNyArLQo+ID4+Pj4+ICAgZnMvamZzL2pmc191bml1cHIuYyAg
ICAgICAgICB8IDEyMSAtLS0tLS0tLS0tLS0tCj4gPj4+Pj4gICBmcy9ubHMvS2NvbmZpZyAgICAg
ICAgICAgICAgIHwgICA4ICsKPiA+Pj4+PiAgIGZzL25scy9NYWtlZmlsZSAgICAgICAgICAgICAg
fCAgIDEgKwo+ID4+Pj4+ICAgZnMvbmxzL25sc191Y3MyX2RhdGEuaCAgICAgICB8ICAxNSArKwo+
ID4+Pj4+ICAgZnMvbmxzL25sc191Y3MyX3V0aWxzLmMgICAgICB8IDE0NCArKysrKysrKysrKysr
KysKPiA+Pj4+PiAgIGZzL25scy9ubHNfdWNzMl91dGlscy5oICAgICAgfCAyODUgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4gPj4+Pj4gICBmcy9zbWIvY2xpZW50L0tjb25maWcgICAg
ICAgIHwgICAxICsKPiA+Pj4+PiAgIGZzL3NtYi9jbGllbnQvY2lmc191bmljb2RlLmMgfCAgIDEg
LQo+ID4+Pj4+ICAgZnMvc21iL2NsaWVudC9jaWZzX3VuaWNvZGUuaCB8IDMzMCArLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4+Pj4+ICAgZnMvc21iL2NsaWVudC9jaWZzX3Vu
aXVwci5oICB8IDIzOSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPj4+Pj4gICBmcy9zbWIv
c2VydmVyL0tjb25maWcgICAgICAgIHwgICAxICsKPiA+Pj4+PiAgIGZzL3NtYi9zZXJ2ZXIvdW5p
Y29kZS5jICAgICAgfCAgIDEgLQo+ID4+Pj4+ICAgZnMvc21iL3NlcnZlci91bmljb2RlLmggICAg
ICB8IDMyNSArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPj4+Pj4gICBmcy9z
bWIvc2VydmVyL3VuaXVwci5oICAgICAgIHwgMjY4IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPiA+Pj4+PiAgIDE3IGZpbGVzIGNoYW5nZWQsIDQ2NyBpbnNlcnRpb25zKCspLCAxMjkzIGRl
bGV0aW9ucygtKQo+ID4+Pj4+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IGZzL2pmcy9qZnNfdW5pdXBy
LmMKPiA+Pj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBmcy9ubHMvbmxzX3VjczJfZGF0YS5oCj4g
Pj4+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZnMvbmxzL25sc191Y3MyX3V0aWxzLmMKPiA+Pj4+
PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBmcy9ubHMvbmxzX3VjczJfdXRpbHMuaAo+ID4+Pj4+ICAg
ZGVsZXRlIG1vZGUgMTAwNjQ0IGZzL3NtYi9jbGllbnQvY2lmc191bml1cHIuaAo+ID4+Pj4+ICAg
ZGVsZXRlIG1vZGUgMTAwNjQ0IGZzL3NtYi9zZXJ2ZXIvdW5pdXByLmgKPiA+Pj4+Pgo+ID4+Pj4+
IC0tCj4gPj4+Pj4gMi40MS4wCj4gPj4+Pj4KPiA+Pj4+IC0tCj4gPj4+PiAgIC0tLS0tT3BlbiB1
cCB5b3VyIGV5ZXMsIG9wZW4gdXAgeW91ciBtaW5kLCBvcGVuIHVwIHlvdXIgY29kZSAtLS0tLS0t
Cj4gPj4+PiAvIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgICAgfCAgICAgICBSdW5uaW5nIEdOVS9M
aW51eCAgICAgICB8IEhhcHB5ICBcCj4gPj4+PiBcICAgICAgICBkYXZlIEAgdHJlYmxpZy5vcmcg
fCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IEluIEhleCAvCj4gPj4+PiAgIFwgX19f
X19fX19fX19fX19fX19fX19fX19fX3xfX19fXyBodHRwOi8vd3d3LnRyZWJsaWcub3JnICAgfF9f
X19fX18vCj4gPj4+Cj4gPj4+Cj4gPj4+Cj4gPj4+IC0tCj4gPj4+IFRoYW5rcywKPiA+Pj4KPiA+
Pj4gU3RldmUKPiA+Pgo+ID4+Cj4gPj4KPiA+PiAtLQo+ID4+IFRoYW5rcywKPiA+Pgo+ID4+IFN0
ZXZlCgoKCi0tIApUaGFua3MsCgpTdGV2ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vz
c2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
