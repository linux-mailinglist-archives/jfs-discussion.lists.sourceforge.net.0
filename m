Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BB775BB5C
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Jul 2023 01:57:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMdWQ-0006Ko-QX;
	Thu, 20 Jul 2023 23:57:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qMdWJ-0006Kg-2N
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Jul 2023 23:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V6eQj3Stvw9JMFxFsglz9ybjRapsl+7ELiZ+AG8aRE0=; b=BLH4RNDSzBr2cTQBocmFJNMiZW
 4ir9rZS6AIr2pR46NgLpT1B1lzJUdsc8mCltIH3lsBcldpU+OVSfmUakEJu9MBgazTPsrIqGIQWLR
 sNrGB45+oClQbkRfQCAKd9ZGmN47WieYIy5v3KC6vRkwibPj66mcBK5KY8R4mMw8DHM4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V6eQj3Stvw9JMFxFsglz9ybjRapsl+7ELiZ+AG8aRE0=; b=K0EKfzl0q1wapNjD2U3Mrx/Z5W
 VetEAAxAvwTDKq91eC1huFLyJnStSZNjvCTo1vzgKkFbdtNB+deUls1hMpA7sdS6gkZ2j43E8RTqc
 64DRkTSUILtClxOzJgcsOxP/yKy5C1PmAOxsu4quUU6MVI4gwQ7AoHT9ZAI1tCgn898Q=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMdWF-0002S8-Pt for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Jul 2023 23:57:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V6eQj3Stvw9JMFxFsglz9ybjRapsl+7ELiZ+AG8aRE0=; b=dCU1y3gNhfSU6AZqE4g92nrIvh
 7DE6NlIck3IXdBNR128wblStaFAOFQar40GjIIw/akunkRYMw8g+FLYQeHkwlDtUGsPcHF2yfx27s
 dmZFIqpluTWwSd+XOU/9yJFPchrXE6kwwfMbTGGeP6Pv9suowE4L6pi8kZHXM1jLLTkaiUlXq/pbT
 fvsycLhGkN4mgsq0bzpKdL2BhO5UY8GEhCg4YqxETWUNuyhX1zehrssfNhRWYedC2PhkEjAHB5vDF
 60MZSFMc9IkD7JQY/yAo256MbF4m8HIBvmxlvNvpf3Q0JJBBJP0Eghqg47WDl2q8R24XVatDeHGIP
 QIVvDR/Q==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qMdW1-002S1e-HF; Thu, 20 Jul 2023 23:57:01 +0000
Date: Thu, 20 Jul 2023 23:57:01 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Tom Talpey <tom@talpey.com>
Message-ID: <ZLnJzUynpTBvZGtA@gallifrey>
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
 <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
 <ZLhchajZaWEVM6D7@gallifrey>
 <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
 <d1f7fbe9-8fe2-e3e3-d6ff-1544204202ff@talpey.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1f7fbe9-8fe2-e3e3-d6ff-1544204202ff@talpey.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-23-amd64 (x86_64)
X-Uptime: 23:37:09 up 14 days, 9:08, 1 user, load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  * Tom Talpey (tom@talpey.com) wrote: > On 7/19/2023 6:06 PM, 
 Dave Kleikamp wrote: > > On 7/19/23 4:58PM, Dr. David Alan Gilbert wrote:
 > > > * Steve French (smfrench@gmail.com) wrote: > > > > The rela [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qMdWF-0002S8-Pt
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 shaggy@kernel.org, linux-kernel@vger.kernel.org,
 Steve French <smfrench@gmail.com>, krisman@collabora.com,
 linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

KiBUb20gVGFscGV5ICh0b21AdGFscGV5LmNvbSkgd3JvdGU6Cj4gT24gNy8xOS8yMDIzIDY6MDYg
UE0sIERhdmUgS2xlaWthbXAgd3JvdGU6Cj4gPiBPbiA3LzE5LzIzIDQ6NThQTSwgRHIuIERhdmlk
IEFsYW4gR2lsYmVydCB3cm90ZToKPiA+ID4gKiBTdGV2ZSBGcmVuY2ggKHNtZnJlbmNoQGdtYWls
LmNvbSkgd3JvdGU6Cj4gPiA+ID4gVGhlIHJlbGF0ZWQgcXVlc3Rpb24gaXMgd2hpY2ggdHJlZSB0
byBzZW5kIGl0IGZyb20sIGlmIG5vIHByb2JsZW1zCj4gPiA+ID4gcmVwb3J0ZWQgKHByZXN1bWFi
bHkgbWluZSBzaW5jZSBpdCBtb3N0bHkgYWZmZWN0IGNpZnMua28gYW5kIGtzbWJkLmtvLAo+ID4g
PiA+IGFuZCBiZWNhdXNlIHRoZXJlIGhhc24ndCBiZWVuIGFjdGl2aXR5IGluIGZzL25scyBmb3Ig
eWVhcnMpCj4gPiA+IAo+ID4gPiBUaGF0IHdhcyBteSBob3BlLCBnaXZlbiB0aGF0IH5oYWxmIG9m
IHRoZSBwYXRjaGVzIGFyZSBkaXJlY3RseSBvbiB0aGF0Cj4gPiA+IGNvZGUsIGFuZCBpdCdzIHRo
ZSBvbmx5IHZlcnkgYWN0aXZlIHRyZWUgdGhpcyB0b3VjaGVzIGFzIGZhciBhcyBJIGNhbgo+ID4g
PiB0ZWxsLgo+ID4gPiAKPiA+ID4gPiBPbiBXZWQsIEp1bCAxOSwgMjAyMyBhdCAxMjo1NuKAr1BN
IFN0ZXZlIEZyZW5jaAo+ID4gPiA+IDxzbWZyZW5jaEBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+
ID4gCj4gPiA+ID4gPiBObyBvYmplY3Rpb25zIHRvIHRoaXMgb24gbXkgcGFydC7CoCBJZiBTaGFn
Z3kgaXMgb2sgd2l0aCB0aGUgSkZTCj4gPiA+ID4gPiBjaGFuZ2UsIHdlIGNvdWxkIHRhcmdldCBp
dCBmb3IgNi42LXJjMSBpZiBpdCB0ZXN0cyBvdXQgb2sKPiA+IAo+ID4gRm9yIHRoZSBzZXJpZXM6
Cj4gPiBSZXZpZXdlZC1ieTogRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVpa2FtcEBvcmFjbGUuY29t
Pgo+ID4gCj4gPiBTdGV2ZSwKPiA+IEZlZWwgZnJlZSB0byBwdWxsIGluIGV2ZW4gdGhlIDR0aCBw
YXRjaCBpbnRvIHlvdXIgdHJlZSB3aXRoIG15IGNvbnNlbnQuCj4gPiBPciBpZiB5b3UncmUgbW9y
ZSBjb21mb3J0YWJsZSwgSSBjb3VsZCBzdWJtaXQgaXQgYWZ0ZXIgeW91cnMgaGl0cwo+ID4gbWFp
bmxpbmUuCj4gPiAKPiA+IFNoYWdneQo+IAo+IFRoZSBjaGFuZ2VzIGxvb2sgZ29vZCB0byBtZSBi
dXQgdGhlcmUgaXMgb25lIHF1aXJrIHdpdGggdGhlCj4gY29weXJpZ2h0cyBhbmQgU1BEWCBpbiBw
YXRjaCAyLgo+IAo+IEluIHRoZSBuZXcgZnMvbmxzL25sc191Y3MyX3V0aWxzLmMsIHRoZSBTUERY
IGxpbmUgY2hhbmdlcyBmcm9tCj4gYSAiLyogLi4uICovIiBmb3JtIHRvICIvLyAuLi4iLCB3aGlj
aCBtYXkgYmUgYSBwcm9wZXIgdXBkYXRlLCBidXQKPiB0aGVuIHBhcnR3YXkgZG93biwgYWRkcyB0
aGUgc2FtZSBTUERYIGluICIvKiAuLi4gKi8gZm9ybS4gVGhlc2UKPiBzaG91bGQgYXQgbGVhc3Qg
YmUgY29uc2lzdGVudC4KPiAKPiA+ICsrKyBiL2ZzL25scy9ubHNfdWNzMl91dGlscy5jCj4gPiBA
QCAtMSwxOSArMSwyNSBAQAo+ID4gLS8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
LW9yLWxhdGVyICovCj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3It
bGF0ZXIKPiAKPiB2cwo+IAo+ID4gKysrIGIvZnMvbmxzL25sc191Y3MyX3V0aWxzLmgKPiA+IEBA
IC0wLDAgKzEsMjk3IEBACj4gPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b3ItbGF0ZXIgKi8KClllaCB0aGF0J3MgYW4gZWFzeSBmaXggLSBzbyB0aGF0J3MganVzdCB0aGUg
ZmFjdCB0aGUgLmggaGFzCnRoZSBvbGRlciAvKiB3aGVyZSBJJ2QgZml4ZWQgdXAgdGhlIC5jID8K
Cj4gU2Vjb25kLCB0aGUgY29weXJpZ2h0IGluIGZzL25scy9ubHNfdWNzMl91dGlscy5jIGlzIGEg
Yml0IG9mCj4gYSBtYXNoLXVwIChhZGRpbmcgMjAwOSBlc3BlY2lhbGx5KS4KPiAKPiBJIHRoaW5r
IGl0J3MgYmV0dGVyIHRvIGtlZXAgdGhlIGV4YWN0IHRleHQgb2YgYm90aCBjb3B5cmlnaHRzLAo+
IHBlcmhhcHMgd2l0aCBhIG5vdGUgYXMgdG8gd2hpY2ggZmlsZXMgaGFkIHRoZW0gcHJldmlvdXNs
eSwgYW5kCj4gYWRkaW5nIHNvbWUgbmV3IG5vdGUvYmxhbmsgbGluZSB0byBzZXBhcmF0ZSB0aGUg
cmVjZW50IGNvbnRyaWJ1dGlvbnMKPiBmcm9tIE5hbWphZSBhbmQgeW91IGZyb20gdGhlIGFuY2ll
bnQgaGlzdG9yeS4KCkhvdyBhYm91dCB0aGUgZm9sbG93aW5nOwoKICogVGhpcyBmaWxlIGhhcyB0
YWtlbiBjaHVua3MgZnJvbSBhIGZldyBvdGhlciBmaWxlcwogKiBzbWIvc2VydmVyL3VuaXVwci5o
IGhhZCB0aGUgZGVjbGFyYXRpb246CiAqCiAqICAgU29tZSBvZiB0aGUgc291cmNlIGNvZGUgaW4g
dGhpcyBmaWxlIGNhbWUgZnJvbSBmcy9jaWZzL3VuaXVwci5oCiAqICAgQ29weXJpZ2h0IChjKSBJ
bnRlcm5hdGlvbmFsIEJ1c2luZXNzIE1hY2hpbmVzICBDb3JwLiwgMjAwMCwyMDAyCiAqCiAqIGZz
L3NtYi9zZXJ2ZXIvdW5pY29kZS5jIGhhZCB0aGUgZGVjbGFyYXRpb246CiAqCiAqICAgU29tZSBv
ZiB0aGUgc291cmNlIGNvZGUgaW4gdGhpcyBmaWxlIGNhbWUgZnJvbSBmcy9jaWZzL2NpZnNfdW5p
Y29kZS5jCiAqCiAqICAgQ29weXJpZ2h0IChjKSBJbnRlcm5hdGlvbmFsIEJ1c2luZXNzIE1hY2hp
bmVzICBDb3JwLiwgMjAwMCwyMDA5CiAqICAgTW9kaWZpZWQgYnkgU3RldmUgRnJlbmNoIChzZnJl
bmNoQHVzLmlibS5jb20pCiAqICAgTW9kaWZpZWQgYnkgTmFtamFlIEplb24gKGxpbmtpbmplb25A
a2VybmVsLm9yZykKICoKCkkgaGF2ZW4ndCBhZGRlZCB0aGUgZXh0cmEgbGluZSBhYm92ZSBOYW1q
YWUncyBsaW5lLCBzaW5jZSBpdCdzIG5vdwphIHN0cmFpZ2h0IGNvcHkgZnJvbSB0aGUgdW5pY29k
ZS5jIGVudHJ5LgpJJ20gbm90IHBhcnRpY3VsYXJseSBmdXNzZWQgYWJvdXQgYWRkaW5nIG15IG93
biBsaW5lIHVubGVzcyB5b3UgdGhpbmsKaXQncyBuZWVkZWQ7IGdpdCBrZWVwcyBiZXR0ZXIgaGlz
dG9yeSEKCj4gPiArKysgYi9mcy9ubHMvbmxzX3VjczJfdXRpbHMuYwo+ID4gLi4uCj4gPiAtICog
ICBTb21lIG9mIHRoZSBzb3VyY2UgY29kZSBpbiB0aGlzIGZpbGUgY2FtZSBmcm9tIGZzL2NpZnMv
dW5pdXByLmgKPiA+IC0gKiAgIENvcHlyaWdodCAoYykgSW50ZXJuYXRpb25hbCBCdXNpbmVzcyBN
YWNoaW5lcyAgQ29ycC4sIDIwMDAsMjAwMgo+ID4gLSAqCj4gPiAtICogdW5pdXByLmggLSBVbmlj
b2RlIGNvbXByZXNzZWQgY2FzZSByYW5nZXMKPiA+ICsgKiAgIFNvbWUgb2YgdGhlIHNvdXJjZSBj
b2RlIGluIHRoaXMgZmlsZSBjYW1lIGZyb20gZnMvY2lmcy9jaWZzX3VuaWNvZGUuYwo+ID4gKyAq
ICAgdmlhIGZzL3NtYi91bmljb2RlLmMgYW5kIGZzL3NtYi91bml1cHIuaCBhbmQgZnMvY2lmcy91
bml1cHIuaAo+ID4gKyAqICAgQ29weXJpZ2h0IChjKSBJbnRlcm5hdGlvbmFsIEJ1c2luZXNzIE1h
Y2hpbmVzICBDb3JwLiwgMjAwMCwyMDAyLDIwMDkKPiA+ICsgKiAgIE1vZGlmaWVkIGJ5IFN0ZXZl
IEZyZW5jaCAoc2ZyZW5jaEB1cy5pYm0uY29tKQo+ID4gKyAqICAgTW9kaWZpZWQgYnkgTmFtamFl
IEplb24gKGxpbmtpbmplb25Aa2VybmVsLm9yZykKPiA+ICsgKiAgIE1vZGlmaWVkIGJ5IERyLiBE
YXZpZCBBbGFuIEdpbGJlcnQgPGxpbnV4QHRyZWJsaWcub3JnPgo+IAo+IEFwYXJ0IGZyb20gY29u
c2lkZXJpbmcgdGhlc2U6Cj4gCj4gUmV2aWV3ZWQtYnk6IFRvbSBUYWxwZXkgPHRvbUB0YWxwZXku
Y29tPgoKVGhhbmtzIQoKRGF2ZQoKPiBOaWNlIHdvcmshCj4gCj4gPiA+IAo+ID4gPiBUaGFua3Mu
Cj4gPiA+IAo+ID4gPiBEYXZlCj4gPiA+IAo+ID4gPiA+ID4gT24gV2VkLCBKdWwgMTIsIDIwMjMg
YXQgNjoyOOKAr1BNIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQKPiA+ID4gPiA+IDxkYXZlQHRyZWJs
aWcub3JnPiB3cm90ZToKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ICogbGludXhAdHJlYmxpZy5v
cmcgKGxpbnV4QHRyZWJsaWcub3JnKSB3cm90ZToKPiA+ID4gPiA+ID4gPiBGcm9tOiAiRHIuIERh
dmlkIEFsYW4gR2lsYmVydCIgPGxpbnV4QHRyZWJsaWcub3JnPgo+ID4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiA+IFRoZSBzbWIgY2xpZW50IGFuZCBzZXJ2ZXIgY29kZSBoYXZlIChtb3N0bHkpIGR1
cGxpY2F0ZWQgY29kZQo+ID4gPiA+ID4gPiA+IGZvciB1bmljb2RlIG1hbmlwdWxhdGlvbiwgaW4g
cGFydGljdWxhciB1cHBlciBjYXNlIGhhbmRsaW5nLgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiA+IEZsYXR0ZW4gdGhpcyBsb3QgaW50byBzaGFyZWQgY29kZS4KPiA+ID4gPiA+ID4gCj4gPiA+
ID4gPiA+IEdlbnRsZSB0d28gd2VlayBwaW5nIG9uIHRoaXMgcGxlYXNlLgo+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gRGF2ZQo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gKEFwb2xvZ2llcyB0byB0
aGUgMyBvZiB5b3Ugd2hvIGFscmVhZHkgZ290IGEgY29weSBvZiB0aGlzIHBpbmcsCj4gPiA+ID4g
PiA+IHJlY2VudCBkdWUgdG8gYSBtaXNzaW5nIGhlYWRlciAnLCcgKQo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiBUaGVyZSdzIHNvbWUgY29kZSB0aGF0J3Mgc2xpZ2h0bHkgZGlmZmVyZW50IGJl
dHdlZW4gdGhlIHR3bywgYW5kCj4gPiA+ID4gPiA+ID4gSSd2ZSBub3QgYXR0ZW1wdGVkIHRvIHNo
YXJlIHRoYXQgLSB0aGlzIHNob3VsZCBiZSBzdHJpY3RseSBhIG5vCj4gPiA+ID4gPiA+ID4gYmVo
YXZpb3VyIGNoYW5nZSBzZXQuCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gSW4gYWRkaXRp
b24sIHRoZSBzYW1lIHRhYmxlcyBhbmQgY29kZSBhcmUgc2hhcmVkIGluIGpmcywgaG93ZXZlcgo+
ID4gPiA+ID4gPiA+IHRoZXJlJ3MgdmVyeSBsaXR0bGUgdGVzdGluZyBhdmFpbGFibGUgZm9yIHRo
ZSB1bmljb2RlIGluIHRoZXJlLAo+ID4gPiA+ID4gPiA+IHNvIGp1c3Qgc2hhcmUgdGhlIHJhdyBk
YXRhIHRhYmxlcy4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBJIHN1c3BlY3QgdGhlcmUn
cyBtb3JlIFVDUy0yIGNvZGUgdGhhdCBjYW4gYmUgc2hhcmVkLCBpbiB0aGUgTkxTIGNvZGUKPiA+
ID4gPiA+ID4gPiBhbmQgaW4gdGhlIFVDUy0yIGNvZGUgdXNlZCBieSB0aGUgRUZJIGludGVyZmFj
ZXMuCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gTGlnaHRseSB0ZXN0ZWQgd2l0aCBhIG1v
ZHVsZSBhbmQgYSBtb25vbGl0aGljIGJ1aWxkLAo+ID4gPiA+ID4gPiA+IGFuZCBqdXN0IG1vdW50
aW5nCj4gPiA+ID4gPiA+ID4gaXRzZWxmLgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IFRo
aXMgZHVwZSB3YXMgZm91bmQgdXNpbmcgUE1EOgo+ID4gPiA+ID4gPiA+IMKgwqAgaHR0cHM6Ly9w
bWQuZ2l0aHViLmlvL3BtZC9wbWRfdXNlcmRvY3NfY3BkLmh0bWwKPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiBEYXZlCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gVmVyc2lvbiAyCj4g
PiA+ID4gPiA+ID4gwqDCoCBNb3ZlZCB0aGUgc2hhcmVkIGNvZGUgdG8gZnMvbmxzIGFmdGVyIHYx
IGZlZWRiYWNrLgo+ID4gPiA+ID4gPiA+IMKgwqAgUmVuYW1lZCBzaGFyZWQgdGFibGVzIGZyb20g
U21iIHRvIE5scyBwcmVmaXgKPiA+ID4gPiA+ID4gPiDCoMKgIE1vdmUgVW5pU3RyY2F0IGFzIHdl
bGwKPiA+ID4gPiA+ID4gPiDCoMKgIFNoYXJlIHRoZSBKRlMgdGFibGVzCj4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gRHIuIERhdmlkIEFsYW4gR2lsYmVydCAoNCk6Cj4gPiA+ID4gPiA+ID4g
wqDCoCBmcy9zbWI6IFJlbW92ZSB1bmljb2RlICdsb3dlcicgdGFibGVzCj4gPiA+ID4gPiA+ID4g
wqDCoCBmcy9zbWI6IFN3aW5nIHVuaWNvZGUgY29tbW9uIGNvZGUgZnJvbSBzbWItPk5MUwo+ID4g
PiA+ID4gPiA+IMKgwqAgZnMvc21iL2NsaWVudDogVXNlIGNvbW1vbiBjb2RlIGluIGNsaWVudAo+
ID4gPiA+ID4gPiA+IMKgwqAgZnMvamZzOiBVc2UgY29tbW9uIHVjczIgdXBwZXIgY2FzZSB0YWJs
ZQo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IMKgIGZzL2pmcy9LY29uZmlnwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxICsKPiA+ID4gPiA+ID4gPiDCoCBmcy9qZnMvTWFr
ZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAyICstCj4gPiA+ID4gPiA+ID4g
wqAgZnMvamZzL2pmc191bmljb2RlLmjCoMKgwqDCoMKgwqDCoMKgIHzCoCAxNyArLQo+ID4gPiA+
ID4gPiA+IMKgIGZzL2pmcy9qZnNfdW5pdXByLmPCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMjEgLS0t
LS0tLS0tLS0tLQo+ID4gPiA+ID4gPiA+IMKgIGZzL25scy9LY29uZmlnwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8wqDCoCA4ICsKPiA+ID4gPiA+ID4gPiDCoCBmcy9ubHMvTWFrZWZpbGXC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxICsKPiA+ID4gPiA+ID4gPiDCoCBmcy9u
bHMvbmxzX3VjczJfZGF0YS5owqDCoMKgwqDCoMKgIHzCoCAxNSArKwo+ID4gPiA+ID4gPiA+IMKg
IGZzL25scy9ubHNfdWNzMl91dGlscy5jwqDCoMKgwqDCoCB8IDE0NCArKysrKysrKysrKysrKysK
PiA+ID4gPiA+ID4gPiDCoCBmcy9ubHMvbmxzX3VjczJfdXRpbHMuaMKgwqDCoMKgwqAgfCAyODUg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gPiA+ID4gwqAgZnMvc21iL2Ns
aWVudC9LY29uZmlnwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4gPiA+ID4gPiA+ID4gwqAgZnMv
c21iL2NsaWVudC9jaWZzX3VuaWNvZGUuYyB8wqDCoCAxIC0KPiA+ID4gPiA+ID4gPiDCoCBmcy9z
bWIvY2xpZW50L2NpZnNfdW5pY29kZS5oIHwgMzMwCj4gPiA+ID4gPiA+ID4gKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiA+ID4gPiDCoCBmcy9zbWIvY2xpZW50L2Np
ZnNfdW5pdXByLmjCoCB8IDIzOSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gPiA+
ID4gwqAgZnMvc21iL3NlcnZlci9LY29uZmlnwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4gPiA+
ID4gPiA+ID4gwqAgZnMvc21iL3NlcnZlci91bmljb2RlLmPCoMKgwqDCoMKgIHzCoMKgIDEgLQo+
ID4gPiA+ID4gPiA+IMKgIGZzL3NtYi9zZXJ2ZXIvdW5pY29kZS5owqDCoMKgwqDCoCB8IDMyNQo+
ID4gPiA+ID4gPiA+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiA+
ID4gPiDCoCBmcy9zbWIvc2VydmVyL3VuaXVwci5owqDCoMKgwqDCoMKgIHwgMjY4IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiA+ID4gPiDCoCAxNyBmaWxlcyBjaGFuZ2VkLCA0
NjcgaW5zZXJ0aW9ucygrKSwgMTI5MyBkZWxldGlvbnMoLSkKPiA+ID4gPiA+ID4gPiDCoCBkZWxl
dGUgbW9kZSAxMDA2NDQgZnMvamZzL2pmc191bml1cHIuYwo+ID4gPiA+ID4gPiA+IMKgIGNyZWF0
ZSBtb2RlIDEwMDY0NCBmcy9ubHMvbmxzX3VjczJfZGF0YS5oCj4gPiA+ID4gPiA+ID4gwqAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGZzL25scy9ubHNfdWNzMl91dGlscy5jCj4gPiA+ID4gPiA+ID4gwqAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGZzL25scy9ubHNfdWNzMl91dGlscy5oCj4gPiA+ID4gPiA+ID4g
wqAgZGVsZXRlIG1vZGUgMTAwNjQ0IGZzL3NtYi9jbGllbnQvY2lmc191bml1cHIuaAo+ID4gPiA+
ID4gPiA+IMKgIGRlbGV0ZSBtb2RlIDEwMDY0NCBmcy9zbWIvc2VydmVyL3VuaXVwci5oCj4gPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLS0gCj4gPiA+ID4gPiA+ID4gMi40MS4wCj4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+IC0tIAo+ID4gPiA+ID4gPiDCoCAtLS0tLU9wZW4gdXAgeW91ciBl
eWVzLCBvcGVuIHVwIHlvdXIgbWluZCwgb3BlbiB1cCB5b3VyIGNvZGUgLS0tLS0tLQo+ID4gPiA+
ID4gPiAvIERyLiBEYXZpZCBBbGFuIEdpbGJlcnTCoMKgwqAgfMKgwqDCoMKgwqDCoCBSdW5uaW5n
IEdOVS9MaW51eMKgwqDCoMKgwqDCoCB8IEhhcHB5wqAgXAo+ID4gPiA+ID4gPiBcwqDCoMKgwqDC
oMKgwqAgZGF2ZSBAIHRyZWJsaWcub3JnIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCBJbiBIZXggLwo+ID4gPiA+ID4gPiDCoCBc
IF9fX19fX19fX19fX19fX19fX19fX19fX198X19fX18gaHR0cDovL3d3dy50cmVibGlnLm9yZ8Kg
wqAgfF9fX19fX18vCj4gPiA+ID4gPiAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiAt
LSAKPiA+ID4gPiA+IFRoYW5rcywKPiA+ID4gPiA+IAo+ID4gPiA+ID4gU3RldmUKPiA+ID4gPiAK
PiA+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiAtLSAKPiA+ID4gPiBUaGFua3MsCj4gPiA+ID4gCj4g
PiA+ID4gU3RldmUKPiA+IAotLSAKIC0tLS0tT3BlbiB1cCB5b3VyIGV5ZXMsIG9wZW4gdXAgeW91
ciBtaW5kLCBvcGVuIHVwIHlvdXIgY29kZSAtLS0tLS0tICAgCi8gRHIuIERhdmlkIEFsYW4gR2ls
YmVydCAgICB8ICAgICAgIFJ1bm5pbmcgR05VL0xpbnV4ICAgICAgIHwgSGFwcHkgIFwgClwgICAg
ICAgIGRhdmUgQCB0cmVibGlnLm9yZyB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
SW4gSGV4IC8KIFwgX19fX19fX19fX19fX19fX19fX19fX19fX3xfX19fXyBodHRwOi8vd3d3LnRy
ZWJsaWcub3JnICAgfF9fX19fX18vCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9u
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
