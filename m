Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8580E75C7C4
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Jul 2023 15:26:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMq91-0003SA-Sd;
	Fri, 21 Jul 2023 13:26:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qMq91-0003S4-DF
 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 13:26:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N/j54p0bBVZYU2hQGT4jINYi1HudgJ7WGPgFJvmDgAU=; b=TMF7faQnVXxRCOmgI140KNm8/b
 8wL3IqIMSHG33cFdmANr3oyUh7GOAtYajkHOLZ3mLVhFIco/gXoXne3bqD3N5WXAxizpWpEH+1CjY
 ZOWPTmkUd5jocTVYHyGaDzifBU3ET2pFcEpdtYChbiGNjsMXBwORae1/9PgBzTtEiM84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N/j54p0bBVZYU2hQGT4jINYi1HudgJ7WGPgFJvmDgAU=; b=HqwL+uAbt79qAyrBf1FjMxUvKA
 C8K6+Y9tKMSUhP3plVx2fWxZpHZ2xk0isCjbkQzmbBpx4/Fv/PrGCCoZboW+7krPStx2JNlCvlOZL
 ioaiSgXNgBlMHAahJR2G5RIlLYnJ0RlNs5mDd3Xb9S7ZulaYCRD7wrG0zJolQbSWIobk=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMq8w-00FGlY-FK for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 13:26:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N/j54p0bBVZYU2hQGT4jINYi1HudgJ7WGPgFJvmDgAU=; b=A6+zD6AabudE8Goh5BS5mi3dsp
 suOuudZaqsC86+Gtt1pgIAKz4jcAnjaGR1KQD3ABCjVBvyf5rT2wuwCy6U4eOZUwZ6yrhnMPMPdk0
 A1hglBsN4vtdaPS5Y68pieSAxSHh0VbIhjd25L82oP32CVGuvHdQls/2Ajwb/SWZSflt6eYIywRiZ
 Xd38AqC85YAMbWxxMj+pTfA3Q7SjgSzCf1CQMSjm3GHekmcsfBghuYkTTyUvI6UNt62QrzUiNIhNw
 SQ2r1a8MdkLTQ4vkQdhRBUrSJy6EIOZzFUWKDR7YfyR8dXjEPidWq48iPuA53FAdq7EmqCsWbPPT7
 MOOtTdSg==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qMq8h-002YXb-4I; Fri, 21 Jul 2023 13:25:47 +0000
Date: Fri, 21 Jul 2023 13:25:47 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Tom Talpey <tom@talpey.com>
Message-ID: <ZLqHW6B7/0wi8NmN@gallifrey>
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
 <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
 <ZLhchajZaWEVM6D7@gallifrey>
 <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
 <d1f7fbe9-8fe2-e3e3-d6ff-1544204202ff@talpey.com>
 <ZLnJzUynpTBvZGtA@gallifrey>
 <f8f4a2c5-05d3-0b2d-688f-b3274a98fc73@talpey.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f8f4a2c5-05d3-0b2d-688f-b3274a98fc73@talpey.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-23-amd64 (x86_64)
X-Uptime: 13:23:43 up 14 days, 22:55, 1 user, load average: 0.04, 0.04, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  * Tom Talpey (tom@talpey.com) wrote: > On 7/20/2023 7:57 PM, 
 Dr. David Alan Gilbert wrote: > > * Tom Talpey (tom@talpey.com) wrote: >
 > > On 7/19/2023 6:06 PM, Dave Kleikamp wrote: > > > > On 7/19/23 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qMq8w-00FGlY-FK
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

KiBUb20gVGFscGV5ICh0b21AdGFscGV5LmNvbSkgd3JvdGU6Cj4gT24gNy8yMC8yMDIzIDc6NTcg
UE0sIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgd3JvdGU6Cj4gPiAqIFRvbSBUYWxwZXkgKHRvbUB0
YWxwZXkuY29tKSB3cm90ZToKPiA+ID4gT24gNy8xOS8yMDIzIDY6MDYgUE0sIERhdmUgS2xlaWth
bXAgd3JvdGU6Cj4gPiA+ID4gT24gNy8xOS8yMyA0OjU4UE0sIERyLiBEYXZpZCBBbGFuIEdpbGJl
cnQgd3JvdGU6Cj4gPiA+ID4gPiAqIFN0ZXZlIEZyZW5jaCAoc21mcmVuY2hAZ21haWwuY29tKSB3
cm90ZToKPiA+ID4gPiA+ID4gVGhlIHJlbGF0ZWQgcXVlc3Rpb24gaXMgd2hpY2ggdHJlZSB0byBz
ZW5kIGl0IGZyb20sIGlmIG5vIHByb2JsZW1zCj4gPiA+ID4gPiA+IHJlcG9ydGVkIChwcmVzdW1h
Ymx5IG1pbmUgc2luY2UgaXQgbW9zdGx5IGFmZmVjdCBjaWZzLmtvIGFuZCBrc21iZC5rbywKPiA+
ID4gPiA+ID4gYW5kIGJlY2F1c2UgdGhlcmUgaGFzbid0IGJlZW4gYWN0aXZpdHkgaW4gZnMvbmxz
IGZvciB5ZWFycykKPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhhdCB3YXMgbXkgaG9wZSwgZ2l2ZW4g
dGhhdCB+aGFsZiBvZiB0aGUgcGF0Y2hlcyBhcmUgZGlyZWN0bHkgb24gdGhhdAo+ID4gPiA+ID4g
Y29kZSwgYW5kIGl0J3MgdGhlIG9ubHkgdmVyeSBhY3RpdmUgdHJlZSB0aGlzIHRvdWNoZXMgYXMg
ZmFyIGFzIEkgY2FuCj4gPiA+ID4gPiB0ZWxsLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IE9uIFdl
ZCwgSnVsIDE5LCAyMDIzIGF0IDEyOjU24oCvUE0gU3RldmUgRnJlbmNoCj4gPiA+ID4gPiA+IDxz
bWZyZW5jaEBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IE5v
IG9iamVjdGlvbnMgdG8gdGhpcyBvbiBteSBwYXJ0LsKgIElmIFNoYWdneSBpcyBvayB3aXRoIHRo
ZSBKRlMKPiA+ID4gPiA+ID4gPiBjaGFuZ2UsIHdlIGNvdWxkIHRhcmdldCBpdCBmb3IgNi42LXJj
MSBpZiBpdCB0ZXN0cyBvdXQgb2sKPiA+ID4gPiAKPiA+ID4gPiBGb3IgdGhlIHNlcmllczoKPiA+
ID4gPiBSZXZpZXdlZC1ieTogRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVpa2FtcEBvcmFjbGUuY29t
Pgo+ID4gPiA+IAo+ID4gPiA+IFN0ZXZlLAo+ID4gPiA+IEZlZWwgZnJlZSB0byBwdWxsIGluIGV2
ZW4gdGhlIDR0aCBwYXRjaCBpbnRvIHlvdXIgdHJlZSB3aXRoIG15IGNvbnNlbnQuCj4gPiA+ID4g
T3IgaWYgeW91J3JlIG1vcmUgY29tZm9ydGFibGUsIEkgY291bGQgc3VibWl0IGl0IGFmdGVyIHlv
dXJzIGhpdHMKPiA+ID4gPiBtYWlubGluZS4KPiA+ID4gPiAKPiA+ID4gPiBTaGFnZ3kKPiA+ID4g
Cj4gPiA+IFRoZSBjaGFuZ2VzIGxvb2sgZ29vZCB0byBtZSBidXQgdGhlcmUgaXMgb25lIHF1aXJr
IHdpdGggdGhlCj4gPiA+IGNvcHlyaWdodHMgYW5kIFNQRFggaW4gcGF0Y2ggMi4KPiA+ID4gCj4g
PiA+IEluIHRoZSBuZXcgZnMvbmxzL25sc191Y3MyX3V0aWxzLmMsIHRoZSBTUERYIGxpbmUgY2hh
bmdlcyBmcm9tCj4gPiA+IGEgIi8qIC4uLiAqLyIgZm9ybSB0byAiLy8gLi4uIiwgd2hpY2ggbWF5
IGJlIGEgcHJvcGVyIHVwZGF0ZSwgYnV0Cj4gPiA+IHRoZW4gcGFydHdheSBkb3duLCBhZGRzIHRo
ZSBzYW1lIFNQRFggaW4gIi8qIC4uLiAqLyBmb3JtLiBUaGVzZQo+ID4gPiBzaG91bGQgYXQgbGVh
c3QgYmUgY29uc2lzdGVudC4KPiA+ID4gCj4gPiA+ID4gKysrIGIvZnMvbmxzL25sc191Y3MyX3V0
aWxzLmMKPiA+ID4gPiBAQCAtMSwxOSArMSwyNSBAQAo+ID4gPiA+IC0vKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlciAqLwo+ID4gPiA+ICsvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlcgo+ID4gPiAKPiA+ID4gdnMKPiA+ID4gCj4gPiA+
ID4gKysrIGIvZnMvbmxzL25sc191Y3MyX3V0aWxzLmgKPiA+ID4gPiBAQCAtMCwwICsxLDI5NyBA
QAo+ID4gPiA+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlciAq
Lwo+ID4gCj4gPiBZZWggdGhhdCdzIGFuIGVhc3kgZml4IC0gc28gdGhhdCdzIGp1c3QgdGhlIGZh
Y3QgdGhlIC5oIGhhcwo+ID4gdGhlIG9sZGVyIC8qIHdoZXJlIEknZCBmaXhlZCB1cCB0aGUgLmMg
Pwo+IAo+IFllcCwgZm9yIGNvbnNpc3RlbmN5IHRoYXQgc291bmRzIGdvb2QuCj4gCj4gPiA+IFNl
Y29uZCwgdGhlIGNvcHlyaWdodCBpbiBmcy9ubHMvbmxzX3VjczJfdXRpbHMuYyBpcyBhIGJpdCBv
Zgo+ID4gPiBhIG1hc2gtdXAgKGFkZGluZyAyMDA5IGVzcGVjaWFsbHkpLgo+ID4gPiAKPiA+ID4g
SSB0aGluayBpdCdzIGJldHRlciB0byBrZWVwIHRoZSBleGFjdCB0ZXh0IG9mIGJvdGggY29weXJp
Z2h0cywKPiA+ID4gcGVyaGFwcyB3aXRoIGEgbm90ZSBhcyB0byB3aGljaCBmaWxlcyBoYWQgdGhl
bSBwcmV2aW91c2x5LCBhbmQKPiA+ID4gYWRkaW5nIHNvbWUgbmV3IG5vdGUvYmxhbmsgbGluZSB0
byBzZXBhcmF0ZSB0aGUgcmVjZW50IGNvbnRyaWJ1dGlvbnMKPiA+ID4gZnJvbSBOYW1qYWUgYW5k
IHlvdSBmcm9tIHRoZSBhbmNpZW50IGhpc3RvcnkuCj4gPiAKPiA+IEhvdyBhYm91dCB0aGUgZm9s
bG93aW5nOwo+ID4gCj4gPiAgICogVGhpcyBmaWxlIGhhcyB0YWtlbiBjaHVua3MgZnJvbSBhIGZl
dyBvdGhlciBmaWxlcwo+ID4gICAqIHNtYi9zZXJ2ZXIvdW5pdXByLmggaGFkIHRoZSBkZWNsYXJh
dGlvbjoKPiAKPiBUaGVzZSB0d28gbGluZXMgYWJvdmUgYXJlbid0IG5lZWRlZCwgYmVjYXVzZSB0
aGUgbGluZXMgYmVsb3cKPiBjb250YWluIHRoZSBjb3B5cmlnaHQgYW5kIHdoZXJlIHRoZXkgb3Jp
Z2luYXRlZC4gU28ganVzdCBvbWl0Cj4gdGhlIHR3byBhYm92ZS4KCk9LLCB3aWxsIGRvOyBhbHRo
b3VnaCB0aGUgcmVhc29uIEkgaW5jbHVkZWQgdGhlbSB3YXMgYmVjYXVzZSB0aGUKcGF0aCBpbmNs
dWRlZCBpbiB0aGUgZGVjbGFyYXRpb24gaXNuJ3QgdGhlIGZpbGUgdGhlIGRlY2xhcmF0aW9uIGlz
CmN1cnJlbnRseSBpbi4KCj4gPiAgICoKPiA+ICAgKiAgIFNvbWUgb2YgdGhlIHNvdXJjZSBjb2Rl
IGluIHRoaXMgZmlsZSBjYW1lIGZyb20gZnMvY2lmcy91bml1cHIuaAo+ID4gICAqICAgQ29weXJp
Z2h0IChjKSBJbnRlcm5hdGlvbmFsIEJ1c2luZXNzIE1hY2hpbmVzICBDb3JwLiwgMjAwMCwyMDAy
Cj4gPiAgICoKPiA+ICAgKiBmcy9zbWIvc2VydmVyL3VuaWNvZGUuYyBoYWQgdGhlIGRlY2xhcmF0
aW9uOgo+IAo+IEFuZCB0aGlzIG9uZSBhYm92ZSAtIG5vdCBuZWVkZWQuCj4gCj4gPiAgICoKPiA+
ICAgKiAgIFNvbWUgb2YgdGhlIHNvdXJjZSBjb2RlIGluIHRoaXMgZmlsZSBjYW1lIGZyb20gZnMv
Y2lmcy9jaWZzX3VuaWNvZGUuYwo+ID4gICAqCj4gPiAgICogICBDb3B5cmlnaHQgKGMpIEludGVy
bmF0aW9uYWwgQnVzaW5lc3MgTWFjaGluZXMgIENvcnAuLCAyMDAwLDIwMDkKPiA+ICAgKiAgIE1v
ZGlmaWVkIGJ5IFN0ZXZlIEZyZW5jaCAoc2ZyZW5jaEB1cy5pYm0uY29tKQo+ID4gICAqICAgTW9k
aWZpZWQgYnkgTmFtamFlIEplb24gKGxpbmtpbmplb25Aa2VybmVsLm9yZykKPiA+ICAgKgo+ID4g
Cj4gPiBJIGhhdmVuJ3QgYWRkZWQgdGhlIGV4dHJhIGxpbmUgYWJvdmUgTmFtamFlJ3MgbGluZSwg
c2luY2UgaXQncyBub3cKPiA+IGEgc3RyYWlnaHQgY29weSBmcm9tIHRoZSB1bmljb2RlLmMgZW50
cnkuCj4gCj4gU3RyYWlnaHQgY29weSBpcyB3aGF0J3MgaW1wb3J0YW50LiBObyBkZWxldGlvbiwg
bm8gZWRpdCBpbiBhIGNvcHlyaWdodC4KPiBTbywgb2suCj4gCj4gPiBJJ20gbm90IHBhcnRpY3Vs
YXJseSBmdXNzZWQgYWJvdXQgYWRkaW5nIG15IG93biBsaW5lIHVubGVzcyB5b3UgdGhpbmsKPiA+
IGl0J3MgbmVlZGVkOyBnaXQga2VlcHMgYmV0dGVyIGhpc3RvcnkhCj4gCj4gSW4gZmFjdCwgc2lu
Y2UgeW91IHRlY2huaWNhbGx5IGRpZG4ndCBhZGQgYW55IGNvZGUsIGp1c3QgZGVsZXRlZCwKPiBt
b3ZlZCBvciByZW5hbWVkLCBJIHRoaW5rIGl0IG1pZ2h0IGJlIGJlc3QgdG8gbGVhdmUgeW91cnNl
bGYgb3V0LgoKT2ggdGhhdCBxdWVzdGlvbiBjb3VsZCBrZWVwIGNvcHlyaWdodCBsYXd5ZXJzIG9j
Y3VwaWVkIGZvciB5ZWFycyA6LSkKCj4gQnV0LCB0b3RhbGx5IHlvdXIgY2hvaWNlLgoKVGhhbmtz
CgpJJ2xsIHBvc3QgYSBtb2RpZmllZCB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2ggaW4gYSBmZXcgaG91
cnMuCgpEYXZlCgo+IFRvbS4KPiAKPiA+ID4gPiArKysgYi9mcy9ubHMvbmxzX3VjczJfdXRpbHMu
Ywo+ID4gPiA+IC4uLgo+ID4gPiA+IC0gKiAgIFNvbWUgb2YgdGhlIHNvdXJjZSBjb2RlIGluIHRo
aXMgZmlsZSBjYW1lIGZyb20gZnMvY2lmcy91bml1cHIuaAo+ID4gPiA+IC0gKiAgIENvcHlyaWdo
dCAoYykgSW50ZXJuYXRpb25hbCBCdXNpbmVzcyBNYWNoaW5lcyAgQ29ycC4sIDIwMDAsMjAwMgo+
ID4gPiA+IC0gKgo+ID4gPiA+IC0gKiB1bml1cHIuaCAtIFVuaWNvZGUgY29tcHJlc3NlZCBjYXNl
IHJhbmdlcwo+ID4gPiA+ICsgKiAgIFNvbWUgb2YgdGhlIHNvdXJjZSBjb2RlIGluIHRoaXMgZmls
ZSBjYW1lIGZyb20gZnMvY2lmcy9jaWZzX3VuaWNvZGUuYwo+ID4gPiA+ICsgKiAgIHZpYSBmcy9z
bWIvdW5pY29kZS5jIGFuZCBmcy9zbWIvdW5pdXByLmggYW5kIGZzL2NpZnMvdW5pdXByLmgKPiA+
ID4gPiArICogICBDb3B5cmlnaHQgKGMpIEludGVybmF0aW9uYWwgQnVzaW5lc3MgTWFjaGluZXMg
IENvcnAuLCAyMDAwLDIwMDIsMjAwOQo+ID4gPiA+ICsgKiAgIE1vZGlmaWVkIGJ5IFN0ZXZlIEZy
ZW5jaCAoc2ZyZW5jaEB1cy5pYm0uY29tKQo+ID4gPiA+ICsgKiAgIE1vZGlmaWVkIGJ5IE5hbWph
ZSBKZW9uIChsaW5raW5qZW9uQGtlcm5lbC5vcmcpCj4gPiA+ID4gKyAqICAgTW9kaWZpZWQgYnkg
RHIuIERhdmlkIEFsYW4gR2lsYmVydCA8bGludXhAdHJlYmxpZy5vcmc+Cj4gPiA+IAo+ID4gPiBB
cGFydCBmcm9tIGNvbnNpZGVyaW5nIHRoZXNlOgo+ID4gPiAKPiA+ID4gUmV2aWV3ZWQtYnk6IFRv
bSBUYWxwZXkgPHRvbUB0YWxwZXkuY29tPgo+ID4gCj4gPiBUaGFua3MhCj4gPiAKPiA+IERhdmUK
PiA+IAo+ID4gPiBOaWNlIHdvcmshCj4gPiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGFua3Mu
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IERhdmUKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IE9uIFdl
ZCwgSnVsIDEyLCAyMDIzIGF0IDY6MjjigK9QTSBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0Cj4gPiA+
ID4gPiA+ID4gPGRhdmVAdHJlYmxpZy5vcmc+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+
ID4gPiA+ID4gPiAqIGxpbnV4QHRyZWJsaWcub3JnIChsaW51eEB0cmVibGlnLm9yZykgd3JvdGU6
Cj4gPiA+ID4gPiA+ID4gPiA+IEZyb206ICJEci4gRGF2aWQgQWxhbiBHaWxiZXJ0IiA8bGludXhA
dHJlYmxpZy5vcmc+Cj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBUaGUgc21i
IGNsaWVudCBhbmQgc2VydmVyIGNvZGUgaGF2ZSAobW9zdGx5KSBkdXBsaWNhdGVkIGNvZGUKPiA+
ID4gPiA+ID4gPiA+ID4gZm9yIHVuaWNvZGUgbWFuaXB1bGF0aW9uLCBpbiBwYXJ0aWN1bGFyIHVw
cGVyIGNhc2UgaGFuZGxpbmcuCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBG
bGF0dGVuIHRoaXMgbG90IGludG8gc2hhcmVkIGNvZGUuCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiA+IEdlbnRsZSB0d28gd2VlayBwaW5nIG9uIHRoaXMgcGxlYXNlLgo+ID4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBEYXZlCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
PiA+IChBcG9sb2dpZXMgdG8gdGhlIDMgb2YgeW91IHdobyBhbHJlYWR5IGdvdCBhIGNvcHkgb2Yg
dGhpcyBwaW5nLAo+ID4gPiA+ID4gPiA+ID4gcmVjZW50IGR1ZSB0byBhIG1pc3NpbmcgaGVhZGVy
ICcsJyApCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gVGhlcmUncyBzb21lIGNv
ZGUgdGhhdCdzIHNsaWdodGx5IGRpZmZlcmVudCBiZXR3ZWVuIHRoZSB0d28sIGFuZAo+ID4gPiA+
ID4gPiA+ID4gPiBJJ3ZlIG5vdCBhdHRlbXB0ZWQgdG8gc2hhcmUgdGhhdCAtIHRoaXMgc2hvdWxk
IGJlIHN0cmljdGx5IGEgbm8KPiA+ID4gPiA+ID4gPiA+ID4gYmVoYXZpb3VyIGNoYW5nZSBzZXQu
Cj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBJbiBhZGRpdGlvbiwgdGhlIHNh
bWUgdGFibGVzIGFuZCBjb2RlIGFyZSBzaGFyZWQgaW4gamZzLCBob3dldmVyCj4gPiA+ID4gPiA+
ID4gPiA+IHRoZXJlJ3MgdmVyeSBsaXR0bGUgdGVzdGluZyBhdmFpbGFibGUgZm9yIHRoZSB1bmlj
b2RlIGluIHRoZXJlLAo+ID4gPiA+ID4gPiA+ID4gPiBzbyBqdXN0IHNoYXJlIHRoZSByYXcgZGF0
YSB0YWJsZXMuCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBJIHN1c3BlY3Qg
dGhlcmUncyBtb3JlIFVDUy0yIGNvZGUgdGhhdCBjYW4gYmUgc2hhcmVkLCBpbiB0aGUgTkxTIGNv
ZGUKPiA+ID4gPiA+ID4gPiA+ID4gYW5kIGluIHRoZSBVQ1MtMiBjb2RlIHVzZWQgYnkgdGhlIEVG
SSBpbnRlcmZhY2VzLgo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gTGlnaHRs
eSB0ZXN0ZWQgd2l0aCBhIG1vZHVsZSBhbmQgYSBtb25vbGl0aGljIGJ1aWxkLAo+ID4gPiA+ID4g
PiA+ID4gPiBhbmQganVzdCBtb3VudGluZwo+ID4gPiA+ID4gPiA+ID4gPiBpdHNlbGYuCj4gPiA+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBUaGlzIGR1cGUgd2FzIGZvdW5kIHVzaW5n
IFBNRDoKPiA+ID4gPiA+ID4gPiA+ID4gIMKgwqAgaHR0cHM6Ly9wbWQuZ2l0aHViLmlvL3BtZC9w
bWRfdXNlcmRvY3NfY3BkLmh0bWwKPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+
IERhdmUKPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IFZlcnNpb24gMgo+ID4g
PiA+ID4gPiA+ID4gPiAgwqDCoCBNb3ZlZCB0aGUgc2hhcmVkIGNvZGUgdG8gZnMvbmxzIGFmdGVy
IHYxIGZlZWRiYWNrLgo+ID4gPiA+ID4gPiA+ID4gPiAgwqDCoCBSZW5hbWVkIHNoYXJlZCB0YWJs
ZXMgZnJvbSBTbWIgdG8gTmxzIHByZWZpeAo+ID4gPiA+ID4gPiA+ID4gPiAgwqDCoCBNb3ZlIFVu
aVN0cmNhdCBhcyB3ZWxsCj4gPiA+ID4gPiA+ID4gPiA+ICDCoMKgIFNoYXJlIHRoZSBKRlMgdGFi
bGVzCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBEci4gRGF2aWQgQWxhbiBH
aWxiZXJ0ICg0KToKPiA+ID4gPiA+ID4gPiA+ID4gIMKgwqAgZnMvc21iOiBSZW1vdmUgdW5pY29k
ZSAnbG93ZXInIHRhYmxlcwo+ID4gPiA+ID4gPiA+ID4gPiAgwqDCoCBmcy9zbWI6IFN3aW5nIHVu
aWNvZGUgY29tbW9uIGNvZGUgZnJvbSBzbWItPk5MUwo+ID4gPiA+ID4gPiA+ID4gPiAgwqDCoCBm
cy9zbWIvY2xpZW50OiBVc2UgY29tbW9uIGNvZGUgaW4gY2xpZW50Cj4gPiA+ID4gPiA+ID4gPiA+
ICDCoMKgIGZzL2pmczogVXNlIGNvbW1vbiB1Y3MyIHVwcGVyIGNhc2UgdGFibGUKPiA+ID4gPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ICDCoCBmcy9qZnMvS2NvbmZpZ8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4gPiA+ID4gPiA+ID4gPiA+ICDCoCBmcy9qZnMv
TWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAyICstCj4gPiA+ID4gPiA+
ID4gPiA+ICDCoCBmcy9qZnMvamZzX3VuaWNvZGUuaMKgwqDCoMKgwqDCoMKgwqAgfMKgIDE3ICst
Cj4gPiA+ID4gPiA+ID4gPiA+ICDCoCBmcy9qZnMvamZzX3VuaXVwci5jwqDCoMKgwqDCoMKgwqDC
oMKgIHwgMTIxIC0tLS0tLS0tLS0tLS0KPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGZzL25scy9LY29u
ZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA4ICsKPiA+ID4gPiA+ID4gPiA+
ID4gIMKgIGZzL25scy9NYWtlZmlsZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEg
Kwo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvbmxzL25sc191Y3MyX2RhdGEuaMKgwqDCoMKgwqDC
oCB8wqAgMTUgKysKPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGZzL25scy9ubHNfdWNzMl91dGlscy5j
wqDCoMKgwqDCoCB8IDE0NCArKysrKysrKysrKysrKysKPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGZz
L25scy9ubHNfdWNzMl91dGlscy5owqDCoMKgwqDCoCB8IDI4NSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysKPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGZzL3NtYi9jbGllbnQvS2NvbmZpZ8Kg
wqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvc21iL2NsaWVu
dC9jaWZzX3VuaWNvZGUuYyB8wqDCoCAxIC0KPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGZzL3NtYi9j
bGllbnQvY2lmc191bmljb2RlLmggfCAzMzAKPiA+ID4gPiA+ID4gPiA+ID4gKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGZzL3NtYi9jbGll
bnQvY2lmc191bml1cHIuaMKgIHwgMjM5IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4g
PiA+ID4gPiA+ID4gIMKgIGZzL3NtYi9zZXJ2ZXIvS2NvbmZpZ8KgwqDCoMKgwqDCoMKgIHzCoMKg
IDEgKwo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvc21iL3NlcnZlci91bmljb2RlLmPCoMKgwqDC
oMKgIHzCoMKgIDEgLQo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvc21iL3NlcnZlci91bmljb2Rl
LmjCoMKgwqDCoMKgIHwgMzI1Cj4gPiA+ID4gPiA+ID4gPiA+ICstLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGZzL3NtYi9zZXJ2ZXIvdW5pdXBy
LmjCoMKgwqDCoMKgwqAgfCAyNjggLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gPiA+
ID4gPiA+ID4gPiAgwqAgMTcgZmlsZXMgY2hhbmdlZCwgNDY3IGluc2VydGlvbnMoKyksIDEyOTMg
ZGVsZXRpb25zKC0pCj4gPiA+ID4gPiA+ID4gPiA+ICDCoCBkZWxldGUgbW9kZSAxMDA2NDQgZnMv
amZzL2pmc191bml1cHIuYwo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGZzL25scy9ubHNfdWNzMl9kYXRhLmgKPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBmcy9ubHMvbmxzX3VjczJfdXRpbHMuYwo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGZzL25scy9ubHNfdWNzMl91dGlscy5oCj4gPiA+ID4gPiA+ID4gPiA+
ICDCoCBkZWxldGUgbW9kZSAxMDA2NDQgZnMvc21iL2NsaWVudC9jaWZzX3VuaXVwci5oCj4gPiA+
ID4gPiA+ID4gPiA+ICDCoCBkZWxldGUgbW9kZSAxMDA2NDQgZnMvc21iL3NlcnZlci91bml1cHIu
aAo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gLS0gCj4gPiA+ID4gPiA+ID4g
PiA+IDIuNDEuMAo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IC0tIAo+ID4gPiA+
ID4gPiA+ID4gIMKgIC0tLS0tT3BlbiB1cCB5b3VyIGV5ZXMsIG9wZW4gdXAgeW91ciBtaW5kLCBv
cGVuIHVwIHlvdXIgY29kZSAtLS0tLS0tCj4gPiA+ID4gPiA+ID4gPiAvIERyLiBEYXZpZCBBbGFu
IEdpbGJlcnTCoMKgwqAgfMKgwqDCoMKgwqDCoCBSdW5uaW5nIEdOVS9MaW51eMKgwqDCoMKgwqDC
oCB8IEhhcHB5wqAgXAo+ID4gPiA+ID4gPiA+ID4gXMKgwqDCoMKgwqDCoMKgIGRhdmUgQCB0cmVi
bGlnLm9yZyB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHwgSW4gSGV4IC8KPiA+ID4gPiA+ID4gPiA+ICDCoCBcIF9fX19fX19fX19f
X19fX19fX19fX19fX198X19fX18gaHR0cDovL3d3dy50cmVibGlnLm9yZ8KgwqAgfF9fX19fX18v
Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
ID4gLS0gCj4gPiA+ID4gPiA+ID4gVGhhbmtzLAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
IFN0ZXZlCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
IC0tIAo+ID4gPiA+ID4gPiBUaGFua3MsCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBTdGV2ZQo+
ID4gPiA+IAotLSAKIC0tLS0tT3BlbiB1cCB5b3VyIGV5ZXMsIG9wZW4gdXAgeW91ciBtaW5kLCBv
cGVuIHVwIHlvdXIgY29kZSAtLS0tLS0tICAgCi8gRHIuIERhdmlkIEFsYW4gR2lsYmVydCAgICB8
ICAgICAgIFJ1bm5pbmcgR05VL0xpbnV4ICAgICAgIHwgSGFwcHkgIFwgClwgICAgICAgIGRhdmUg
QCB0cmVibGlnLm9yZyB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgSW4gSGV4IC8K
IFwgX19fX19fX19fX19fX19fX19fX19fX19fX3xfX19fXyBodHRwOi8vd3d3LnRyZWJsaWcub3Jn
ICAgfF9fX19fX18vCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9qZnMtZGlzY3Vzc2lvbgo=
