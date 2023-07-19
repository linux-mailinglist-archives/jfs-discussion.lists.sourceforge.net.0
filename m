Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB95759CE9
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Jul 2023 19:57:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMBPk-0003Sh-Nt;
	Wed, 19 Jul 2023 17:56:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smfrench@gmail.com>) id 1qMBPj-0003Sb-I3
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 17:56:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8+XMp8h3m8dCu8neoz5W1i52keRbzheZjzjhOpBzlSo=; b=coyIvZoMzCkZTeuMjjySTBUHLp
 zKolai+RtQPA9FIleA551nMoeAAQIwd2p/qbNaxw4WpjKKezplMtUP4sB/Ge9IOCIbb9i9IgfD+s5
 WlDUZAHjiarq7fjfjINTOJkQCrhaUrclOrfL2UGphI00TGrPd6XyEbsMjT55OjyUv2+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8+XMp8h3m8dCu8neoz5W1i52keRbzheZjzjhOpBzlSo=; b=SpUOleoc4fCBZFoNKmqi04Jtz3
 ZBEoYg+0wOw71BBkDs7hUROJJBkHEqfkF35YnlhaZ6XKMO+BAPA+glhCpLwpatOvZ2XDGbhAJl0WU
 DBZPXBxPf3BrPJdLRYJgPc1be9zF+f0IiW6t8U03bi5Yp0QNRm0w8nzbbItP96M//TRg=;
Received: from mail-lj1-f173.google.com ([209.85.208.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qMBPh-0004Eg-HN for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 17:56:39 +0000
Received: by mail-lj1-f173.google.com with SMTP id
 38308e7fff4ca-2b6f0508f54so109724321fa.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Jul 2023 10:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689789389; x=1690394189;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8+XMp8h3m8dCu8neoz5W1i52keRbzheZjzjhOpBzlSo=;
 b=srpU9LvvLcII1UinIHpxS2X9G5nD1jhKi8rB1amEkHn2FpIORNq8uRlKumxPNPg85h
 ubcU8Lx44ngV/Db65GlJTDg6BMfirT34yxTZgadMD4aqA4VgkiGCaD8QsIa7sMpgirEq
 Y/Mf+a6VT18TEb5XcT1PriTTe5qkM1GQEUebmDa0sqIEnThMNAcsR+qyALujpzOJakVe
 6jPgfgZRA+VZjwsJgB8kcpbGcDYDuZCrrXkih4FHAjx2YweQ7tcmFO27y4V7z56xuSPK
 2b/kMuZjbJ9W7CM7Ehk0IHsTE2fSTeehtTLYPhoasQ3CFpDipu4Wg73bJXk3+nbSk6sM
 AbVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689789389; x=1690394189;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8+XMp8h3m8dCu8neoz5W1i52keRbzheZjzjhOpBzlSo=;
 b=h0Q7zWrLFJmSC+wxZyy8eZjpYxE8xHW1YrC0K6wiF4U9Fz3uIEdwM1htedI+x2UYzk
 KiOE/qVfyNhiEclvZNB/VPbuUjiflwgnQMHMPEXp+DdH1RClqXqOZT7GH79HSKKPPEVU
 jIvlGJaKytvwNzlptWF6f2N1XfGNfLSH3sRJO3MCSnuuKvL+BlQv4S7mCKxv6ltN15ON
 pA7ZFxBIj/k3Lr/KSnrWIL6uHp2TQ9jPNVKJPMzgYDxGVMnpTZ8u3ioi9qAUvk6IbnJb
 zgERnVHmjg/ztxg0M7DebTjtwB+tHhMU+PkLwVus5h4TU89PAxLq4Ff1pRfNLAb4z9lS
 yOzw==
X-Gm-Message-State: ABy/qLbfAHlAgVFS5sUiCHXnFyCycTlUiJRZT8pFGtiGCoe1351xoq6k
 VGA6UbtUVha18n40L8xJItnj34BtexeqfF6Uvj4zehPm
X-Google-Smtp-Source: APBJJlHbu45fZzYbZYn/cZ2aaY9iML8EUbFLOUhXDrVS3/iIVLTblzc0ysCC9Hbwp87Zw9J5ELt78UNF0vivTYkVZdw=
X-Received: by 2002:a2e:6e13:0:b0:2b6:e2c1:6cda with SMTP id
 j19-20020a2e6e13000000b002b6e2c16cdamr12642ljc.46.1689789388374; Wed, 19 Jul
 2023 10:56:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
In-Reply-To: <ZK80mu/YbHLEABAB@gallifrey>
Date: Wed, 19 Jul 2023 12:56:17 -0500
Message-ID: <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  No objections to this on my part. If Shaggy is ok with the
    JFS change, we could target it for 6.6-rc1 if it tests out ok On Wed, Jul
    12, 2023 at 6:28 PM Dr. David Alan Gilbert wrote: > > * linux@treblig.org
    (linux@treblig.org) wrote: > > From: "Dr. David Alan Gilbert" > > > > The
    smb client and server code have (m [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [smfrench[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.173 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.173 listed in list.dnswl.org]
X-Headers-End: 1qMBPh-0004Eg-HN
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

Tm8gb2JqZWN0aW9ucyB0byB0aGlzIG9uIG15IHBhcnQuICBJZiBTaGFnZ3kgaXMgb2sgd2l0aCB0
aGUgSkZTCmNoYW5nZSwgd2UgY291bGQgdGFyZ2V0IGl0IGZvciA2LjYtcmMxIGlmIGl0IHRlc3Rz
IG91dCBvawoKT24gV2VkLCBKdWwgMTIsIDIwMjMgYXQgNjoyOOKAr1BNIERyLiBEYXZpZCBBbGFu
IEdpbGJlcnQgPGRhdmVAdHJlYmxpZy5vcmc+IHdyb3RlOgo+Cj4gKiBsaW51eEB0cmVibGlnLm9y
ZyAobGludXhAdHJlYmxpZy5vcmcpIHdyb3RlOgo+ID4gRnJvbTogIkRyLiBEYXZpZCBBbGFuIEdp
bGJlcnQiIDxsaW51eEB0cmVibGlnLm9yZz4KPiA+Cj4gPiBUaGUgc21iIGNsaWVudCBhbmQgc2Vy
dmVyIGNvZGUgaGF2ZSAobW9zdGx5KSBkdXBsaWNhdGVkIGNvZGUKPiA+IGZvciB1bmljb2RlIG1h
bmlwdWxhdGlvbiwgaW4gcGFydGljdWxhciB1cHBlciBjYXNlIGhhbmRsaW5nLgo+ID4KPiA+IEZs
YXR0ZW4gdGhpcyBsb3QgaW50byBzaGFyZWQgY29kZS4KPgo+IEdlbnRsZSB0d28gd2VlayBwaW5n
IG9uIHRoaXMgcGxlYXNlLgo+Cj4gRGF2ZQo+Cj4gKEFwb2xvZ2llcyB0byB0aGUgMyBvZiB5b3Ug
d2hvIGFscmVhZHkgZ290IGEgY29weSBvZiB0aGlzIHBpbmcsCj4gcmVjZW50IGR1ZSB0byBhIG1p
c3NpbmcgaGVhZGVyICcsJyApCj4KPiA+IFRoZXJlJ3Mgc29tZSBjb2RlIHRoYXQncyBzbGlnaHRs
eSBkaWZmZXJlbnQgYmV0d2VlbiB0aGUgdHdvLCBhbmQKPiA+IEkndmUgbm90IGF0dGVtcHRlZCB0
byBzaGFyZSB0aGF0IC0gdGhpcyBzaG91bGQgYmUgc3RyaWN0bHkgYSBubwo+ID4gYmVoYXZpb3Vy
IGNoYW5nZSBzZXQuCj4gPgo+ID4gSW4gYWRkaXRpb24sIHRoZSBzYW1lIHRhYmxlcyBhbmQgY29k
ZSBhcmUgc2hhcmVkIGluIGpmcywgaG93ZXZlcgo+ID4gdGhlcmUncyB2ZXJ5IGxpdHRsZSB0ZXN0
aW5nIGF2YWlsYWJsZSBmb3IgdGhlIHVuaWNvZGUgaW4gdGhlcmUsCj4gPiBzbyBqdXN0IHNoYXJl
IHRoZSByYXcgZGF0YSB0YWJsZXMuCj4gPgo+ID4gSSBzdXNwZWN0IHRoZXJlJ3MgbW9yZSBVQ1Mt
MiBjb2RlIHRoYXQgY2FuIGJlIHNoYXJlZCwgaW4gdGhlIE5MUyBjb2RlCj4gPiBhbmQgaW4gdGhl
IFVDUy0yIGNvZGUgdXNlZCBieSB0aGUgRUZJIGludGVyZmFjZXMuCj4gPgo+ID4gTGlnaHRseSB0
ZXN0ZWQgd2l0aCBhIG1vZHVsZSBhbmQgYSBtb25vbGl0aGljIGJ1aWxkLCBhbmQganVzdCBtb3Vu
dGluZwo+ID4gaXRzZWxmLgo+ID4KPiA+IFRoaXMgZHVwZSB3YXMgZm91bmQgdXNpbmcgUE1EOgo+
ID4gICBodHRwczovL3BtZC5naXRodWIuaW8vcG1kL3BtZF91c2VyZG9jc19jcGQuaHRtbAo+ID4K
PiA+IERhdmUKPiA+Cj4gPiBWZXJzaW9uIDIKPiA+ICAgTW92ZWQgdGhlIHNoYXJlZCBjb2RlIHRv
IGZzL25scyBhZnRlciB2MSBmZWVkYmFjay4KPiA+ICAgUmVuYW1lZCBzaGFyZWQgdGFibGVzIGZy
b20gU21iIHRvIE5scyBwcmVmaXgKPiA+ICAgTW92ZSBVbmlTdHJjYXQgYXMgd2VsbAo+ID4gICBT
aGFyZSB0aGUgSkZTIHRhYmxlcwo+ID4KPiA+IERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgKDQpOgo+
ID4gICBmcy9zbWI6IFJlbW92ZSB1bmljb2RlICdsb3dlcicgdGFibGVzCj4gPiAgIGZzL3NtYjog
U3dpbmcgdW5pY29kZSBjb21tb24gY29kZSBmcm9tIHNtYi0+TkxTCj4gPiAgIGZzL3NtYi9jbGll
bnQ6IFVzZSBjb21tb24gY29kZSBpbiBjbGllbnQKPiA+ICAgZnMvamZzOiBVc2UgY29tbW9uIHVj
czIgdXBwZXIgY2FzZSB0YWJsZQo+ID4KPiA+ICBmcy9qZnMvS2NvbmZpZyAgICAgICAgICAgICAg
IHwgICAxICsKPiA+ICBmcy9qZnMvTWFrZWZpbGUgICAgICAgICAgICAgIHwgICAyICstCj4gPiAg
ZnMvamZzL2pmc191bmljb2RlLmggICAgICAgICB8ICAxNyArLQo+ID4gIGZzL2pmcy9qZnNfdW5p
dXByLmMgICAgICAgICAgfCAxMjEgLS0tLS0tLS0tLS0tLQo+ID4gIGZzL25scy9LY29uZmlnICAg
ICAgICAgICAgICAgfCAgIDggKwo+ID4gIGZzL25scy9NYWtlZmlsZSAgICAgICAgICAgICAgfCAg
IDEgKwo+ID4gIGZzL25scy9ubHNfdWNzMl9kYXRhLmggICAgICAgfCAgMTUgKysKPiA+ICBmcy9u
bHMvbmxzX3VjczJfdXRpbHMuYyAgICAgIHwgMTQ0ICsrKysrKysrKysrKysrKwo+ID4gIGZzL25s
cy9ubHNfdWNzMl91dGlscy5oICAgICAgfCAyODUgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCj4gPiAgZnMvc21iL2NsaWVudC9LY29uZmlnICAgICAgICB8ICAgMSArCj4gPiAgZnMvc21i
L2NsaWVudC9jaWZzX3VuaWNvZGUuYyB8ICAgMSAtCj4gPiAgZnMvc21iL2NsaWVudC9jaWZzX3Vu
aWNvZGUuaCB8IDMzMCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIGZz
L3NtYi9jbGllbnQvY2lmc191bml1cHIuaCAgfCAyMzkgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQo+ID4gIGZzL3NtYi9zZXJ2ZXIvS2NvbmZpZyAgICAgICAgfCAgIDEgKwo+ID4gIGZzL3NtYi9z
ZXJ2ZXIvdW5pY29kZS5jICAgICAgfCAgIDEgLQo+ID4gIGZzL3NtYi9zZXJ2ZXIvdW5pY29kZS5o
ICAgICAgfCAzMjUgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIGZzL3Nt
Yi9zZXJ2ZXIvdW5pdXByLmggICAgICAgfCAyNjggLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQo+ID4gIDE3IGZpbGVzIGNoYW5nZWQsIDQ2NyBpbnNlcnRpb25zKCspLCAxMjkzIGRlbGV0aW9u
cygtKQo+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBmcy9qZnMvamZzX3VuaXVwci5jCj4gPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGZzL25scy9ubHNfdWNzMl9kYXRhLmgKPiA+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZnMvbmxzL25sc191Y3MyX3V0aWxzLmMKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZnMv
bmxzL25sc191Y3MyX3V0aWxzLmgKPiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgZnMvc21iL2NsaWVu
dC9jaWZzX3VuaXVwci5oCj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGZzL3NtYi9zZXJ2ZXIvdW5p
dXByLmgKPiA+Cj4gPiAtLQo+ID4gMi40MS4wCj4gPgo+IC0tCj4gIC0tLS0tT3BlbiB1cCB5b3Vy
IGV5ZXMsIG9wZW4gdXAgeW91ciBtaW5kLCBvcGVuIHVwIHlvdXIgY29kZSAtLS0tLS0tCj4gLyBE
ci4gRGF2aWQgQWxhbiBHaWxiZXJ0ICAgIHwgICAgICAgUnVubmluZyBHTlUvTGludXggICAgICAg
fCBIYXBweSAgXAo+IFwgICAgICAgIGRhdmUgQCB0cmVibGlnLm9yZyB8ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgSW4gSGV4IC8KPiAgXCBfX19fX19fX19fX19fX19fX19fX19fX19f
fF9fX19fIGh0dHA6Ly93d3cudHJlYmxpZy5vcmcgICB8X19fX19fXy8KCgoKLS0gClRoYW5rcywK
ClN0ZXZlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMt
ZGlzY3Vzc2lvbgo=
