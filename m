Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 840FC75A0DF
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Jul 2023 23:59:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMFC9-0002B4-II;
	Wed, 19 Jul 2023 21:58:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qMFC8-0002Ay-UO
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 21:58:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tQUQ8g2wvWfKqdq3ImlkFFwsTm+NbJDjAHJb9sGdEtY=; b=fpmrYqj9N/O0Zr+9nklLu8g8yH
 yPjKAj3zzKlrkPdlRr/R1ryWSjUhsRBYaVGEzmZdOeUtNRQd913v3ThELhk8j0g2uDBhiguqfu/2i
 qEEhPQFhhawGHAYZnyBDO3w5cKBT8znegktqf/32XNmaHsgci/7GMS8Umjz/omXiuRwo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tQUQ8g2wvWfKqdq3ImlkFFwsTm+NbJDjAHJb9sGdEtY=; b=ZKOLfNN78nMcVA8k6dRhYnxNpK
 89kCfFJVS5+I+v7ce6YzHdnW5gZRAHNZUFWSss9BH0vSzJ3+wgFIWZhOh9Bfiqm+yf8PpPQ6j5gNF
 a7f6oom32MIou7H18dpWFE/wWfFxrNSwq2+1Q3cYywECL79pdBYbDrc8swqqUNc5Om/s=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMFC8-0004UP-3J for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 21:58:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tQUQ8g2wvWfKqdq3ImlkFFwsTm+NbJDjAHJb9sGdEtY=; b=dhAPLaMaI6nD2w8TZ4h6p+i4KR
 8KK1CUw3yQncFjznKaVcz8gqM70x0vdh4L+jOFcgju+lkxzeb/Rksunzyw3G36/J/KXAlbgkEqdU4
 m2Qyo07acB1+rFDB3BQIfQYQAbrnQbEuz5EptkUGStU3rq438befzjUA4KiOd2aygzL/8KnpZOOys
 m0/cptotXKTSZN6jc3XsNEt4pjNhBgJY0GAE9+PgrvVSx8QKmVTp1dObkNrnN4mKJ1bV+HpeyH8mN
 9ckTMIv3aOEm2xipzPnQ/q/zEVtDpZDzcWuKa4bBN1M1cXdZA2uPBf0MmF6BAByOhb3vH3NKYBwG8
 apHt2w6A==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qMFBl-002EwK-41; Wed, 19 Jul 2023 21:58:29 +0000
Date: Wed, 19 Jul 2023 21:58:29 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Steve French <smfrench@gmail.com>
Message-ID: <ZLhchajZaWEVM6D7@gallifrey>
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
 <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-23-amd64 (x86_64)
X-Uptime: 21:57:15 up 13 days, 7:28, 1 user, load average: 0.09, 0.02, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: * Steve French (smfrench@gmail.com) wrote: > The related
 question
 is which tree to send it from, if no problems > reported (presumably mine
 since it mostly affect cifs.ko and ksmbd.ko, > and because t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qMFC8-0004UP-3J
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org, tom@talpey.com,
 krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

KiBTdGV2ZSBGcmVuY2ggKHNtZnJlbmNoQGdtYWlsLmNvbSkgd3JvdGU6Cj4gVGhlIHJlbGF0ZWQg
cXVlc3Rpb24gaXMgd2hpY2ggdHJlZSB0byBzZW5kIGl0IGZyb20sIGlmIG5vIHByb2JsZW1zCj4g
cmVwb3J0ZWQgKHByZXN1bWFibHkgbWluZSBzaW5jZSBpdCBtb3N0bHkgYWZmZWN0IGNpZnMua28g
YW5kIGtzbWJkLmtvLAo+IGFuZCBiZWNhdXNlIHRoZXJlIGhhc24ndCBiZWVuIGFjdGl2aXR5IGlu
IGZzL25scyBmb3IgeWVhcnMpCgpUaGF0IHdhcyBteSBob3BlLCBnaXZlbiB0aGF0IH5oYWxmIG9m
IHRoZSBwYXRjaGVzIGFyZSBkaXJlY3RseSBvbiB0aGF0CmNvZGUsIGFuZCBpdCdzIHRoZSBvbmx5
IHZlcnkgYWN0aXZlIHRyZWUgdGhpcyB0b3VjaGVzIGFzIGZhciBhcyBJIGNhbgp0ZWxsLgoKPiBP
biBXZWQsIEp1bCAxOSwgMjAyMyBhdCAxMjo1NuKAr1BNIFN0ZXZlIEZyZW5jaCA8c21mcmVuY2hA
Z21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBObyBvYmplY3Rpb25zIHRvIHRoaXMgb24gbXkgcGFy
dC4gIElmIFNoYWdneSBpcyBvayB3aXRoIHRoZSBKRlMKPiA+IGNoYW5nZSwgd2UgY291bGQgdGFy
Z2V0IGl0IGZvciA2LjYtcmMxIGlmIGl0IHRlc3RzIG91dCBvawoKVGhhbmtzLgoKRGF2ZQoKPiA+
IE9uIFdlZCwgSnVsIDEyLCAyMDIzIGF0IDY6MjjigK9QTSBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0
IDxkYXZlQHRyZWJsaWcub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gKiBsaW51eEB0cmVibGlnLm9y
ZyAobGludXhAdHJlYmxpZy5vcmcpIHdyb3RlOgo+ID4gPiA+IEZyb206ICJEci4gRGF2aWQgQWxh
biBHaWxiZXJ0IiA8bGludXhAdHJlYmxpZy5vcmc+Cj4gPiA+ID4KPiA+ID4gPiBUaGUgc21iIGNs
aWVudCBhbmQgc2VydmVyIGNvZGUgaGF2ZSAobW9zdGx5KSBkdXBsaWNhdGVkIGNvZGUKPiA+ID4g
PiBmb3IgdW5pY29kZSBtYW5pcHVsYXRpb24sIGluIHBhcnRpY3VsYXIgdXBwZXIgY2FzZSBoYW5k
bGluZy4KPiA+ID4gPgo+ID4gPiA+IEZsYXR0ZW4gdGhpcyBsb3QgaW50byBzaGFyZWQgY29kZS4K
PiA+ID4KPiA+ID4gR2VudGxlIHR3byB3ZWVrIHBpbmcgb24gdGhpcyBwbGVhc2UuCj4gPiA+Cj4g
PiA+IERhdmUKPiA+ID4KPiA+ID4gKEFwb2xvZ2llcyB0byB0aGUgMyBvZiB5b3Ugd2hvIGFscmVh
ZHkgZ290IGEgY29weSBvZiB0aGlzIHBpbmcsCj4gPiA+IHJlY2VudCBkdWUgdG8gYSBtaXNzaW5n
IGhlYWRlciAnLCcgKQo+ID4gPgo+ID4gPiA+IFRoZXJlJ3Mgc29tZSBjb2RlIHRoYXQncyBzbGln
aHRseSBkaWZmZXJlbnQgYmV0d2VlbiB0aGUgdHdvLCBhbmQKPiA+ID4gPiBJJ3ZlIG5vdCBhdHRl
bXB0ZWQgdG8gc2hhcmUgdGhhdCAtIHRoaXMgc2hvdWxkIGJlIHN0cmljdGx5IGEgbm8KPiA+ID4g
PiBiZWhhdmlvdXIgY2hhbmdlIHNldC4KPiA+ID4gPgo+ID4gPiA+IEluIGFkZGl0aW9uLCB0aGUg
c2FtZSB0YWJsZXMgYW5kIGNvZGUgYXJlIHNoYXJlZCBpbiBqZnMsIGhvd2V2ZXIKPiA+ID4gPiB0
aGVyZSdzIHZlcnkgbGl0dGxlIHRlc3RpbmcgYXZhaWxhYmxlIGZvciB0aGUgdW5pY29kZSBpbiB0
aGVyZSwKPiA+ID4gPiBzbyBqdXN0IHNoYXJlIHRoZSByYXcgZGF0YSB0YWJsZXMuCj4gPiA+ID4K
PiA+ID4gPiBJIHN1c3BlY3QgdGhlcmUncyBtb3JlIFVDUy0yIGNvZGUgdGhhdCBjYW4gYmUgc2hh
cmVkLCBpbiB0aGUgTkxTIGNvZGUKPiA+ID4gPiBhbmQgaW4gdGhlIFVDUy0yIGNvZGUgdXNlZCBi
eSB0aGUgRUZJIGludGVyZmFjZXMuCj4gPiA+ID4KPiA+ID4gPiBMaWdodGx5IHRlc3RlZCB3aXRo
IGEgbW9kdWxlIGFuZCBhIG1vbm9saXRoaWMgYnVpbGQsIGFuZCBqdXN0IG1vdW50aW5nCj4gPiA+
ID4gaXRzZWxmLgo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBkdXBlIHdhcyBmb3VuZCB1c2luZyBQTUQ6
Cj4gPiA+ID4gICBodHRwczovL3BtZC5naXRodWIuaW8vcG1kL3BtZF91c2VyZG9jc19jcGQuaHRt
bAo+ID4gPiA+Cj4gPiA+ID4gRGF2ZQo+ID4gPiA+Cj4gPiA+ID4gVmVyc2lvbiAyCj4gPiA+ID4g
ICBNb3ZlZCB0aGUgc2hhcmVkIGNvZGUgdG8gZnMvbmxzIGFmdGVyIHYxIGZlZWRiYWNrLgo+ID4g
PiA+ICAgUmVuYW1lZCBzaGFyZWQgdGFibGVzIGZyb20gU21iIHRvIE5scyBwcmVmaXgKPiA+ID4g
PiAgIE1vdmUgVW5pU3RyY2F0IGFzIHdlbGwKPiA+ID4gPiAgIFNoYXJlIHRoZSBKRlMgdGFibGVz
Cj4gPiA+ID4KPiA+ID4gPiBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0ICg0KToKPiA+ID4gPiAgIGZz
L3NtYjogUmVtb3ZlIHVuaWNvZGUgJ2xvd2VyJyB0YWJsZXMKPiA+ID4gPiAgIGZzL3NtYjogU3dp
bmcgdW5pY29kZSBjb21tb24gY29kZSBmcm9tIHNtYi0+TkxTCj4gPiA+ID4gICBmcy9zbWIvY2xp
ZW50OiBVc2UgY29tbW9uIGNvZGUgaW4gY2xpZW50Cj4gPiA+ID4gICBmcy9qZnM6IFVzZSBjb21t
b24gdWNzMiB1cHBlciBjYXNlIHRhYmxlCj4gPiA+ID4KPiA+ID4gPiAgZnMvamZzL0tjb25maWcg
ICAgICAgICAgICAgICB8ICAgMSArCj4gPiA+ID4gIGZzL2pmcy9NYWtlZmlsZSAgICAgICAgICAg
ICAgfCAgIDIgKy0KPiA+ID4gPiAgZnMvamZzL2pmc191bmljb2RlLmggICAgICAgICB8ICAxNyAr
LQo+ID4gPiA+ICBmcy9qZnMvamZzX3VuaXVwci5jICAgICAgICAgIHwgMTIxIC0tLS0tLS0tLS0t
LS0KPiA+ID4gPiAgZnMvbmxzL0tjb25maWcgICAgICAgICAgICAgICB8ICAgOCArCj4gPiA+ID4g
IGZzL25scy9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgIDEgKwo+ID4gPiA+ICBmcy9ubHMvbmxz
X3VjczJfZGF0YS5oICAgICAgIHwgIDE1ICsrCj4gPiA+ID4gIGZzL25scy9ubHNfdWNzMl91dGls
cy5jICAgICAgfCAxNDQgKysrKysrKysrKysrKysrCj4gPiA+ID4gIGZzL25scy9ubHNfdWNzMl91
dGlscy5oICAgICAgfCAyODUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ID4g
IGZzL3NtYi9jbGllbnQvS2NvbmZpZyAgICAgICAgfCAgIDEgKwo+ID4gPiA+ICBmcy9zbWIvY2xp
ZW50L2NpZnNfdW5pY29kZS5jIHwgICAxIC0KPiA+ID4gPiAgZnMvc21iL2NsaWVudC9jaWZzX3Vu
aWNvZGUuaCB8IDMzMCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gPiA+
ICBmcy9zbWIvY2xpZW50L2NpZnNfdW5pdXByLmggIHwgMjM5IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiA+ID4gPiAgZnMvc21iL3NlcnZlci9LY29uZmlnICAgICAgICB8ICAgMSArCj4gPiA+
ID4gIGZzL3NtYi9zZXJ2ZXIvdW5pY29kZS5jICAgICAgfCAgIDEgLQo+ID4gPiA+ICBmcy9zbWIv
c2VydmVyL3VuaWNvZGUuaCAgICAgIHwgMzI1ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiA+ID4gPiAgZnMvc21iL3NlcnZlci91bml1cHIuaCAgICAgICB8IDI2OCAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gIDE3IGZpbGVzIGNoYW5nZWQsIDQ2NyBpbnNl
cnRpb25zKCspLCAxMjkzIGRlbGV0aW9ucygtKQo+ID4gPiA+ICBkZWxldGUgbW9kZSAxMDA2NDQg
ZnMvamZzL2pmc191bml1cHIuYwo+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZnMvbmxzL25s
c191Y3MyX2RhdGEuaAo+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZnMvbmxzL25sc191Y3My
X3V0aWxzLmMKPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGZzL25scy9ubHNfdWNzMl91dGls
cy5oCj4gPiA+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBmcy9zbWIvY2xpZW50L2NpZnNfdW5pdXBy
LmgKPiA+ID4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGZzL3NtYi9zZXJ2ZXIvdW5pdXByLmgKPiA+
ID4gPgo+ID4gPiA+IC0tCj4gPiA+ID4gMi40MS4wCj4gPiA+ID4KPiA+ID4gLS0KPiA+ID4gIC0t
LS0tT3BlbiB1cCB5b3VyIGV5ZXMsIG9wZW4gdXAgeW91ciBtaW5kLCBvcGVuIHVwIHlvdXIgY29k
ZSAtLS0tLS0tCj4gPiA+IC8gRHIuIERhdmlkIEFsYW4gR2lsYmVydCAgICB8ICAgICAgIFJ1bm5p
bmcgR05VL0xpbnV4ICAgICAgIHwgSGFwcHkgIFwKPiA+ID4gXCAgICAgICAgZGF2ZSBAIHRyZWJs
aWcub3JnIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBJbiBIZXggLwo+ID4gPiAg
XCBfX19fX19fX19fX19fX19fX19fX19fX19ffF9fX19fIGh0dHA6Ly93d3cudHJlYmxpZy5vcmcg
ICB8X19fX19fXy8KPiA+Cj4gPgo+ID4KPiA+IC0tCj4gPiBUaGFua3MsCj4gPgo+ID4gU3RldmUK
PiAKPiAKPiAKPiAtLQo+IFRoYW5rcywKPiAKPiBTdGV2ZQotLSAKIC0tLS0tT3BlbiB1cCB5b3Vy
IGV5ZXMsIG9wZW4gdXAgeW91ciBtaW5kLCBvcGVuIHVwIHlvdXIgY29kZSAtLS0tLS0tICAgCi8g
RHIuIERhdmlkIEFsYW4gR2lsYmVydCAgICB8ICAgICAgIFJ1bm5pbmcgR05VL0xpbnV4ICAgICAg
IHwgSGFwcHkgIFwgClwgICAgICAgIGRhdmUgQCB0cmVibGlnLm9yZyB8ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgSW4gSGV4IC8KIFwgX19fX19fX19fX19fX19fX19fX19fX19fX3xf
X19fXyBodHRwOi8vd3d3LnRyZWJsaWcub3JnICAgfF9fX19fX18vCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
