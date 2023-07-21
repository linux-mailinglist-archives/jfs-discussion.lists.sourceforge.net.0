Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C57D75C790
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Jul 2023 15:19:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMq2T-0006eV-L2;
	Fri, 21 Jul 2023 13:19:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tom@talpey.com>) id 1qMq2R-0006eP-TZ
 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 13:19:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kwIv9qvBcBm5cJCZGQCOkS+6F1zYTnAStTX6ynHm0zo=; b=Bi9+0Rz517hnynEt41NjNiabKu
 TAt7bu7TvZC7yUzh3gOVLA2iwJYyFSi6bZvjMN9CvQjH3H4TsahMatL+hjUnLOMlpsyEV1yN/e4Ga
 sSrzLpCsN3fr5PJyQ8eDeIdpnzoeRwkDRn6PKWNE5Eo+PjLwpwX9mATZLeMhosmj+o5g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kwIv9qvBcBm5cJCZGQCOkS+6F1zYTnAStTX6ynHm0zo=; b=fPszec5hpMv5LRIfly4JTxwzc3
 +nQ4Z7w6IgpK7cjav47FnCY+2XStCC6RouKjEGZiATiJoq712bR0TVPfqLOGp4wxJq/CXyrrYlV/R
 8jdJ5tr2EKTU5nwhVSams+hJWaiHPTru89VgkB6tDT5vH1WyimE2Gn+YoiYlu7L2KkNo=;
Received: from mail.rcn.syn-alias.com ([129.213.13.252] helo=smtp.rcn.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMq2O-00FFxQ-HY for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 13:19:19 +0000
X-Authed-Username: dG10YWxwZXlAcmNuLmNvbQ==
Authentication-Results: smtp01.rcn.email-ash1.sync.lan smtp.user=<hidden>;
 auth=pass (PLAIN)
Received: from [96.237.161.173] ([96.237.161.173:53667] helo=[192.168.0.206])
 by smtp.rcn.com (envelope-from <tom@talpey.com>)
 (ecelerity 4.4.0.19839 r(msys-ecelerity:tags/4.4.0.0^0)) with ESMTPSA
 (cipher=AES128-GCM-SHA256) 
 id 73/B7-05333-9C58AB46; Fri, 21 Jul 2023 09:19:05 -0400
Message-ID: <f8f4a2c5-05d3-0b2d-688f-b3274a98fc73@talpey.com>
Date: Fri, 21 Jul 2023 09:19:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Dr. David Alan Gilbert" <linux@treblig.org>
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
 <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
 <ZLhchajZaWEVM6D7@gallifrey>
 <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
 <d1f7fbe9-8fe2-e3e3-d6ff-1544204202ff@talpey.com>
 <ZLnJzUynpTBvZGtA@gallifrey>
From: Tom Talpey <tom@talpey.com>
In-Reply-To: <ZLnJzUynpTBvZGtA@gallifrey>
X-Vade-Verdict: clean
X-Vade-Analysis-1: gggruggvucftvghtrhhoucdtuddrgedviedrhedvgdehlecutefuodetggdotefrodftvfcurfhrohhf
X-Vade-Analysis-2: ihhlvgemucfujgfpteevqfftpdftvefppdfgpfggqdftvefppdfqfgfvnecuuegrihhlohhuthemucef
X-Vade-Analysis-3: tddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenogfuuhhsphgvtghtffhomhgrihhnucdl
X-Vade-Analysis-4: geelmdenucfjughrpefkffggfgfuvfevfhfhjggtgfesthekredttdefjeenucfhrhhomhepvfhomhcu
X-Vade-Analysis-5: vfgrlhhpvgihuceothhomhesthgrlhhpvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeelgeffvedu
X-Vade-Analysis-6: fffftdekgfduhfeffeeffeeiiedvfeeifedvuddutddtudegfefgjeenucffohhmrghinhepghhithhh
X-Vade-Analysis-7: uhgsrdhiohdpthhrvggslhhighdrohhrghenucfkphepleeirddvfeejrdduiedurddujeefnecuvehl
X-Vade-Analysis-8: uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepleeirddvfeejrdduiedurddujeefpdhh
X-Vade-Analysis-9: vghloheplgduledvrdduieekrddtrddvtdeingdpmhgrihhlfhhrohhmpehtohhmsehtrghlphgvhidr
X-Vade-Analysis-10: tghomhdprhgtphhtthhopehlihhnuhigsehtrhgvsghlihhgrdhorhhgpdhrtghpthhtohepuggrvhgv
X-Vade-Analysis-11: rdhklhgvihhkrghmphesohhrrggtlhgvrdgtohhmpdhrtghpthhtohepshhmfhhrvghntghhsehgmhgr
X-Vade-Analysis-12: ihhlrdgtohhmpdhrtghpthhtoheplhhinhhkihhnjhgvohhnsehkvghrnhgvlhdrohhrghdprhgtphht
X-Vade-Analysis-13: thhopehshhgrghhghieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqtghifhhssehv
X-Vade-Analysis-14: ghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhrihhsmhgrnhestgholhhlrggsohhrrgdr
X-Vade-Analysis-15: tghomh
X-Vade-Client: RCN
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/20/2023 7:57 PM, Dr. David Alan Gilbert wrote: > * Tom
 Talpey (tom@talpey.com) wrote: >> On 7/19/2023 6:06 PM, Dave Kleikamp wrote:
 >>> On 7/19/23 4:58PM, Dr. David Alan Gilbert wrote: >>>> * Ste [...] 
 Content analysis details:   (-1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [129.213.13.252 listed in list.dnswl.org]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom; id=tom%40talpey.com;
 ip=129.213.13.252; r=util-spamd-1.v13.lw.sourceforge.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qMq2O-00FFxQ-HY
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNy8yMC8yMDIzIDc6NTcgUE0sIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgd3JvdGU6Cj4gKiBU
b20gVGFscGV5ICh0b21AdGFscGV5LmNvbSkgd3JvdGU6Cj4+IE9uIDcvMTkvMjAyMyA2OjA2IFBN
LCBEYXZlIEtsZWlrYW1wIHdyb3RlOgo+Pj4gT24gNy8xOS8yMyA0OjU4UE0sIERyLiBEYXZpZCBB
bGFuIEdpbGJlcnQgd3JvdGU6Cj4+Pj4gKiBTdGV2ZSBGcmVuY2ggKHNtZnJlbmNoQGdtYWlsLmNv
bSkgd3JvdGU6Cj4+Pj4+IFRoZSByZWxhdGVkIHF1ZXN0aW9uIGlzIHdoaWNoIHRyZWUgdG8gc2Vu
ZCBpdCBmcm9tLCBpZiBubyBwcm9ibGVtcwo+Pj4+PiByZXBvcnRlZCAocHJlc3VtYWJseSBtaW5l
IHNpbmNlIGl0IG1vc3RseSBhZmZlY3QgY2lmcy5rbyBhbmQga3NtYmQua28sCj4+Pj4+IGFuZCBi
ZWNhdXNlIHRoZXJlIGhhc24ndCBiZWVuIGFjdGl2aXR5IGluIGZzL25scyBmb3IgeWVhcnMpCj4+
Pj4KPj4+PiBUaGF0IHdhcyBteSBob3BlLCBnaXZlbiB0aGF0IH5oYWxmIG9mIHRoZSBwYXRjaGVz
IGFyZSBkaXJlY3RseSBvbiB0aGF0Cj4+Pj4gY29kZSwgYW5kIGl0J3MgdGhlIG9ubHkgdmVyeSBh
Y3RpdmUgdHJlZSB0aGlzIHRvdWNoZXMgYXMgZmFyIGFzIEkgY2FuCj4+Pj4gdGVsbC4KPj4+Pgo+
Pj4+PiBPbiBXZWQsIEp1bCAxOSwgMjAyMyBhdCAxMjo1NuKAr1BNIFN0ZXZlIEZyZW5jaAo+Pj4+
PiA8c21mcmVuY2hAZ21haWwuY29tPiB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBObyBvYmplY3Rpb25z
IHRvIHRoaXMgb24gbXkgcGFydC7CoCBJZiBTaGFnZ3kgaXMgb2sgd2l0aCB0aGUgSkZTCj4+Pj4+
PiBjaGFuZ2UsIHdlIGNvdWxkIHRhcmdldCBpdCBmb3IgNi42LXJjMSBpZiBpdCB0ZXN0cyBvdXQg
b2sKPj4+Cj4+PiBGb3IgdGhlIHNlcmllczoKPj4+IFJldmlld2VkLWJ5OiBEYXZlIEtsZWlrYW1w
IDxkYXZlLmtsZWlrYW1wQG9yYWNsZS5jb20+Cj4+Pgo+Pj4gU3RldmUsCj4+PiBGZWVsIGZyZWUg
dG8gcHVsbCBpbiBldmVuIHRoZSA0dGggcGF0Y2ggaW50byB5b3VyIHRyZWUgd2l0aCBteSBjb25z
ZW50Lgo+Pj4gT3IgaWYgeW91J3JlIG1vcmUgY29tZm9ydGFibGUsIEkgY291bGQgc3VibWl0IGl0
IGFmdGVyIHlvdXJzIGhpdHMKPj4+IG1haW5saW5lLgo+Pj4KPj4+IFNoYWdneQo+Pgo+PiBUaGUg
Y2hhbmdlcyBsb29rIGdvb2QgdG8gbWUgYnV0IHRoZXJlIGlzIG9uZSBxdWlyayB3aXRoIHRoZQo+
PiBjb3B5cmlnaHRzIGFuZCBTUERYIGluIHBhdGNoIDIuCj4+Cj4+IEluIHRoZSBuZXcgZnMvbmxz
L25sc191Y3MyX3V0aWxzLmMsIHRoZSBTUERYIGxpbmUgY2hhbmdlcyBmcm9tCj4+IGEgIi8qIC4u
LiAqLyIgZm9ybSB0byAiLy8gLi4uIiwgd2hpY2ggbWF5IGJlIGEgcHJvcGVyIHVwZGF0ZSwgYnV0
Cj4+IHRoZW4gcGFydHdheSBkb3duLCBhZGRzIHRoZSBzYW1lIFNQRFggaW4gIi8qIC4uLiAqLyBm
b3JtLiBUaGVzZQo+PiBzaG91bGQgYXQgbGVhc3QgYmUgY29uc2lzdGVudC4KPj4KPj4+ICsrKyBi
L2ZzL25scy9ubHNfdWNzMl91dGlscy5jCj4+PiBAQCAtMSwxOSArMSwyNSBAQAo+Pj4gLS8qIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyICovCj4+PiArLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKPj4KPj4gdnMKPj4KPj4+ICsrKyBi
L2ZzL25scy9ubHNfdWNzMl91dGlscy5oCj4+PiBAQCAtMCwwICsxLDI5NyBAQAo+Pj4gKy8qIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyICovCj4gCj4gWWVoIHRoYXQn
cyBhbiBlYXN5IGZpeCAtIHNvIHRoYXQncyBqdXN0IHRoZSBmYWN0IHRoZSAuaCBoYXMKPiB0aGUg
b2xkZXIgLyogd2hlcmUgSSdkIGZpeGVkIHVwIHRoZSAuYyA/CgpZZXAsIGZvciBjb25zaXN0ZW5j
eSB0aGF0IHNvdW5kcyBnb29kLgoKPj4gU2Vjb25kLCB0aGUgY29weXJpZ2h0IGluIGZzL25scy9u
bHNfdWNzMl91dGlscy5jIGlzIGEgYml0IG9mCj4+IGEgbWFzaC11cCAoYWRkaW5nIDIwMDkgZXNw
ZWNpYWxseSkuCj4+Cj4+IEkgdGhpbmsgaXQncyBiZXR0ZXIgdG8ga2VlcCB0aGUgZXhhY3QgdGV4
dCBvZiBib3RoIGNvcHlyaWdodHMsCj4+IHBlcmhhcHMgd2l0aCBhIG5vdGUgYXMgdG8gd2hpY2gg
ZmlsZXMgaGFkIHRoZW0gcHJldmlvdXNseSwgYW5kCj4+IGFkZGluZyBzb21lIG5ldyBub3RlL2Js
YW5rIGxpbmUgdG8gc2VwYXJhdGUgdGhlIHJlY2VudCBjb250cmlidXRpb25zCj4+IGZyb20gTmFt
amFlIGFuZCB5b3UgZnJvbSB0aGUgYW5jaWVudCBoaXN0b3J5Lgo+IAo+IEhvdyBhYm91dCB0aGUg
Zm9sbG93aW5nOwo+IAo+ICAgKiBUaGlzIGZpbGUgaGFzIHRha2VuIGNodW5rcyBmcm9tIGEgZmV3
IG90aGVyIGZpbGVzCj4gICAqIHNtYi9zZXJ2ZXIvdW5pdXByLmggaGFkIHRoZSBkZWNsYXJhdGlv
bjoKClRoZXNlIHR3byBsaW5lcyBhYm92ZSBhcmVuJ3QgbmVlZGVkLCBiZWNhdXNlIHRoZSBsaW5l
cyBiZWxvdwpjb250YWluIHRoZSBjb3B5cmlnaHQgYW5kIHdoZXJlIHRoZXkgb3JpZ2luYXRlZC4g
U28ganVzdCBvbWl0CnRoZSB0d28gYWJvdmUuCgo+ICAgKgo+ICAgKiAgIFNvbWUgb2YgdGhlIHNv
dXJjZSBjb2RlIGluIHRoaXMgZmlsZSBjYW1lIGZyb20gZnMvY2lmcy91bml1cHIuaAo+ICAgKiAg
IENvcHlyaWdodCAoYykgSW50ZXJuYXRpb25hbCBCdXNpbmVzcyBNYWNoaW5lcyAgQ29ycC4sIDIw
MDAsMjAwMgo+ICAgKgo+ICAgKiBmcy9zbWIvc2VydmVyL3VuaWNvZGUuYyBoYWQgdGhlIGRlY2xh
cmF0aW9uOgoKQW5kIHRoaXMgb25lIGFib3ZlIC0gbm90IG5lZWRlZC4KCj4gICAqCj4gICAqICAg
U29tZSBvZiB0aGUgc291cmNlIGNvZGUgaW4gdGhpcyBmaWxlIGNhbWUgZnJvbSBmcy9jaWZzL2Np
ZnNfdW5pY29kZS5jCj4gICAqCj4gICAqICAgQ29weXJpZ2h0IChjKSBJbnRlcm5hdGlvbmFsIEJ1
c2luZXNzIE1hY2hpbmVzICBDb3JwLiwgMjAwMCwyMDA5Cj4gICAqICAgTW9kaWZpZWQgYnkgU3Rl
dmUgRnJlbmNoIChzZnJlbmNoQHVzLmlibS5jb20pCj4gICAqICAgTW9kaWZpZWQgYnkgTmFtamFl
IEplb24gKGxpbmtpbmplb25Aa2VybmVsLm9yZykKPiAgICoKPiAKPiBJIGhhdmVuJ3QgYWRkZWQg
dGhlIGV4dHJhIGxpbmUgYWJvdmUgTmFtamFlJ3MgbGluZSwgc2luY2UgaXQncyBub3cKPiBhIHN0
cmFpZ2h0IGNvcHkgZnJvbSB0aGUgdW5pY29kZS5jIGVudHJ5LgoKU3RyYWlnaHQgY29weSBpcyB3
aGF0J3MgaW1wb3J0YW50LiBObyBkZWxldGlvbiwgbm8gZWRpdCBpbiBhIGNvcHlyaWdodC4KU28s
IG9rLgoKPiBJJ20gbm90IHBhcnRpY3VsYXJseSBmdXNzZWQgYWJvdXQgYWRkaW5nIG15IG93biBs
aW5lIHVubGVzcyB5b3UgdGhpbmsKPiBpdCdzIG5lZWRlZDsgZ2l0IGtlZXBzIGJldHRlciBoaXN0
b3J5IQoKSW4gZmFjdCwgc2luY2UgeW91IHRlY2huaWNhbGx5IGRpZG4ndCBhZGQgYW55IGNvZGUs
IGp1c3QgZGVsZXRlZCwKbW92ZWQgb3IgcmVuYW1lZCwgSSB0aGluayBpdCBtaWdodCBiZSBiZXN0
IHRvIGxlYXZlIHlvdXJzZWxmIG91dC4KQnV0LCB0b3RhbGx5IHlvdXIgY2hvaWNlLgoKVG9tLgoK
Pj4+ICsrKyBiL2ZzL25scy9ubHNfdWNzMl91dGlscy5jCj4+PiAuLi4KPj4+IC0gKiAgIFNvbWUg
b2YgdGhlIHNvdXJjZSBjb2RlIGluIHRoaXMgZmlsZSBjYW1lIGZyb20gZnMvY2lmcy91bml1cHIu
aAo+Pj4gLSAqICAgQ29weXJpZ2h0IChjKSBJbnRlcm5hdGlvbmFsIEJ1c2luZXNzIE1hY2hpbmVz
ICBDb3JwLiwgMjAwMCwyMDAyCj4+PiAtICoKPj4+IC0gKiB1bml1cHIuaCAtIFVuaWNvZGUgY29t
cHJlc3NlZCBjYXNlIHJhbmdlcwo+Pj4gKyAqICAgU29tZSBvZiB0aGUgc291cmNlIGNvZGUgaW4g
dGhpcyBmaWxlIGNhbWUgZnJvbSBmcy9jaWZzL2NpZnNfdW5pY29kZS5jCj4+PiArICogICB2aWEg
ZnMvc21iL3VuaWNvZGUuYyBhbmQgZnMvc21iL3VuaXVwci5oIGFuZCBmcy9jaWZzL3VuaXVwci5o
Cj4+PiArICogICBDb3B5cmlnaHQgKGMpIEludGVybmF0aW9uYWwgQnVzaW5lc3MgTWFjaGluZXMg
IENvcnAuLCAyMDAwLDIwMDIsMjAwOQo+Pj4gKyAqICAgTW9kaWZpZWQgYnkgU3RldmUgRnJlbmNo
IChzZnJlbmNoQHVzLmlibS5jb20pCj4+PiArICogICBNb2RpZmllZCBieSBOYW1qYWUgSmVvbiAo
bGlua2luamVvbkBrZXJuZWwub3JnKQo+Pj4gKyAqICAgTW9kaWZpZWQgYnkgRHIuIERhdmlkIEFs
YW4gR2lsYmVydCA8bGludXhAdHJlYmxpZy5vcmc+Cj4+Cj4+IEFwYXJ0IGZyb20gY29uc2lkZXJp
bmcgdGhlc2U6Cj4+Cj4+IFJldmlld2VkLWJ5OiBUb20gVGFscGV5IDx0b21AdGFscGV5LmNvbT4K
PiAKPiBUaGFua3MhCj4gCj4gRGF2ZQo+IAo+PiBOaWNlIHdvcmshCj4+Cj4+Pj4KPj4+PiBUaGFu
a3MuCj4+Pj4KPj4+PiBEYXZlCj4+Pj4KPj4+Pj4+IE9uIFdlZCwgSnVsIDEyLCAyMDIzIGF0IDY6
MjjigK9QTSBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0Cj4+Pj4+PiA8ZGF2ZUB0cmVibGlnLm9yZz4g
d3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+PiAqIGxpbnV4QHRyZWJsaWcub3JnIChsaW51eEB0cmVibGln
Lm9yZykgd3JvdGU6Cj4+Pj4+Pj4+IEZyb206ICJEci4gRGF2aWQgQWxhbiBHaWxiZXJ0IiA8bGlu
dXhAdHJlYmxpZy5vcmc+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoZSBzbWIgY2xpZW50IGFuZCBzZXJ2
ZXIgY29kZSBoYXZlIChtb3N0bHkpIGR1cGxpY2F0ZWQgY29kZQo+Pj4+Pj4+PiBmb3IgdW5pY29k
ZSBtYW5pcHVsYXRpb24sIGluIHBhcnRpY3VsYXIgdXBwZXIgY2FzZSBoYW5kbGluZy4KPj4+Pj4+
Pj4KPj4+Pj4+Pj4gRmxhdHRlbiB0aGlzIGxvdCBpbnRvIHNoYXJlZCBjb2RlLgo+Pj4+Pj4+Cj4+
Pj4+Pj4gR2VudGxlIHR3byB3ZWVrIHBpbmcgb24gdGhpcyBwbGVhc2UuCj4+Pj4+Pj4KPj4+Pj4+
PiBEYXZlCj4+Pj4+Pj4KPj4+Pj4+PiAoQXBvbG9naWVzIHRvIHRoZSAzIG9mIHlvdSB3aG8gYWxy
ZWFkeSBnb3QgYSBjb3B5IG9mIHRoaXMgcGluZywKPj4+Pj4+PiByZWNlbnQgZHVlIHRvIGEgbWlz
c2luZyBoZWFkZXIgJywnICkKPj4+Pj4+Pgo+Pj4+Pj4+PiBUaGVyZSdzIHNvbWUgY29kZSB0aGF0
J3Mgc2xpZ2h0bHkgZGlmZmVyZW50IGJldHdlZW4gdGhlIHR3bywgYW5kCj4+Pj4+Pj4+IEkndmUg
bm90IGF0dGVtcHRlZCB0byBzaGFyZSB0aGF0IC0gdGhpcyBzaG91bGQgYmUgc3RyaWN0bHkgYSBu
bwo+Pj4+Pj4+PiBiZWhhdmlvdXIgY2hhbmdlIHNldC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSW4gYWRk
aXRpb24sIHRoZSBzYW1lIHRhYmxlcyBhbmQgY29kZSBhcmUgc2hhcmVkIGluIGpmcywgaG93ZXZl
cgo+Pj4+Pj4+PiB0aGVyZSdzIHZlcnkgbGl0dGxlIHRlc3RpbmcgYXZhaWxhYmxlIGZvciB0aGUg
dW5pY29kZSBpbiB0aGVyZSwKPj4+Pj4+Pj4gc28ganVzdCBzaGFyZSB0aGUgcmF3IGRhdGEgdGFi
bGVzLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJIHN1c3BlY3QgdGhlcmUncyBtb3JlIFVDUy0yIGNvZGUg
dGhhdCBjYW4gYmUgc2hhcmVkLCBpbiB0aGUgTkxTIGNvZGUKPj4+Pj4+Pj4gYW5kIGluIHRoZSBV
Q1MtMiBjb2RlIHVzZWQgYnkgdGhlIEVGSSBpbnRlcmZhY2VzLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBM
aWdodGx5IHRlc3RlZCB3aXRoIGEgbW9kdWxlIGFuZCBhIG1vbm9saXRoaWMgYnVpbGQsCj4+Pj4+
Pj4+IGFuZCBqdXN0IG1vdW50aW5nCj4+Pj4+Pj4+IGl0c2VsZi4KPj4+Pj4+Pj4KPj4+Pj4+Pj4g
VGhpcyBkdXBlIHdhcyBmb3VuZCB1c2luZyBQTUQ6Cj4+Pj4+Pj4+ICDCoMKgIGh0dHBzOi8vcG1k
LmdpdGh1Yi5pby9wbWQvcG1kX3VzZXJkb2NzX2NwZC5odG1sCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IERh
dmUKPj4+Pj4+Pj4KPj4+Pj4+Pj4gVmVyc2lvbiAyCj4+Pj4+Pj4+ICDCoMKgIE1vdmVkIHRoZSBz
aGFyZWQgY29kZSB0byBmcy9ubHMgYWZ0ZXIgdjEgZmVlZGJhY2suCj4+Pj4+Pj4+ICDCoMKgIFJl
bmFtZWQgc2hhcmVkIHRhYmxlcyBmcm9tIFNtYiB0byBObHMgcHJlZml4Cj4+Pj4+Pj4+ICDCoMKg
IE1vdmUgVW5pU3RyY2F0IGFzIHdlbGwKPj4+Pj4+Pj4gIMKgwqAgU2hhcmUgdGhlIEpGUyB0YWJs
ZXMKPj4+Pj4+Pj4KPj4+Pj4+Pj4gRHIuIERhdmlkIEFsYW4gR2lsYmVydCAoNCk6Cj4+Pj4+Pj4+
ICDCoMKgIGZzL3NtYjogUmVtb3ZlIHVuaWNvZGUgJ2xvd2VyJyB0YWJsZXMKPj4+Pj4+Pj4gIMKg
wqAgZnMvc21iOiBTd2luZyB1bmljb2RlIGNvbW1vbiBjb2RlIGZyb20gc21iLT5OTFMKPj4+Pj4+
Pj4gIMKgwqAgZnMvc21iL2NsaWVudDogVXNlIGNvbW1vbiBjb2RlIGluIGNsaWVudAo+Pj4+Pj4+
PiAgwqDCoCBmcy9qZnM6IFVzZSBjb21tb24gdWNzMiB1cHBlciBjYXNlIHRhYmxlCj4+Pj4+Pj4+
Cj4+Pj4+Pj4+ICDCoCBmcy9qZnMvS2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgwqAgMSArCj4+Pj4+Pj4+ICDCoCBmcy9qZnMvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqDCoCAyICstCj4+Pj4+Pj4+ICDCoCBmcy9qZnMvamZzX3VuaWNvZGUuaMKgwqDC
oMKgwqDCoMKgwqAgfMKgIDE3ICstCj4+Pj4+Pj4+ICDCoCBmcy9qZnMvamZzX3VuaXVwci5jwqDC
oMKgwqDCoMKgwqDCoMKgIHwgMTIxIC0tLS0tLS0tLS0tLS0KPj4+Pj4+Pj4gIMKgIGZzL25scy9L
Y29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA4ICsKPj4+Pj4+Pj4gIMKg
IGZzL25scy9NYWtlZmlsZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+Pj4+
Pj4+PiAgwqAgZnMvbmxzL25sc191Y3MyX2RhdGEuaMKgwqDCoMKgwqDCoCB8wqAgMTUgKysKPj4+
Pj4+Pj4gIMKgIGZzL25scy9ubHNfdWNzMl91dGlscy5jwqDCoMKgwqDCoCB8IDE0NCArKysrKysr
KysrKysrKysKPj4+Pj4+Pj4gIMKgIGZzL25scy9ubHNfdWNzMl91dGlscy5owqDCoMKgwqDCoCB8
IDI4NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+Pj4+Pj4gIMKgIGZzL3NtYi9j
bGllbnQvS2NvbmZpZ8KgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+Pj4+Pj4+PiAgwqAgZnMvc21i
L2NsaWVudC9jaWZzX3VuaWNvZGUuYyB8wqDCoCAxIC0KPj4+Pj4+Pj4gIMKgIGZzL3NtYi9jbGll
bnQvY2lmc191bmljb2RlLmggfCAzMzAKPj4+Pj4+Pj4gKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPj4+Pj4+Pj4gIMKgIGZzL3NtYi9jbGllbnQvY2lmc191bml1cHIuaMKgIHwg
MjM5IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+Pj4+Pj4gIMKgIGZzL3NtYi9zZXJ2ZXIv
S2NvbmZpZ8KgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+Pj4+Pj4+PiAgwqAgZnMvc21iL3NlcnZl
ci91bmljb2RlLmPCoMKgwqDCoMKgIHzCoMKgIDEgLQo+Pj4+Pj4+PiAgwqAgZnMvc21iL3NlcnZl
ci91bmljb2RlLmjCoMKgwqDCoMKgIHwgMzI1Cj4+Pj4+Pj4+ICstLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPj4+Pj4+Pj4gIMKgIGZzL3NtYi9zZXJ2ZXIvdW5pdXByLmjCoMKgwqDC
oMKgwqAgfCAyNjggLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+Pj4+PiAgwqAgMTcg
ZmlsZXMgY2hhbmdlZCwgNDY3IGluc2VydGlvbnMoKyksIDEyOTMgZGVsZXRpb25zKC0pCj4+Pj4+
Pj4+ICDCoCBkZWxldGUgbW9kZSAxMDA2NDQgZnMvamZzL2pmc191bml1cHIuYwo+Pj4+Pj4+PiAg
wqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGZzL25scy9ubHNfdWNzMl9kYXRhLmgKPj4+Pj4+Pj4gIMKg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBmcy9ubHMvbmxzX3VjczJfdXRpbHMuYwo+Pj4+Pj4+PiAgwqAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGZzL25scy9ubHNfdWNzMl91dGlscy5oCj4+Pj4+Pj4+ICDCoCBk
ZWxldGUgbW9kZSAxMDA2NDQgZnMvc21iL2NsaWVudC9jaWZzX3VuaXVwci5oCj4+Pj4+Pj4+ICDC
oCBkZWxldGUgbW9kZSAxMDA2NDQgZnMvc21iL3NlcnZlci91bml1cHIuaAo+Pj4+Pj4+Pgo+Pj4+
Pj4+PiAtLSAKPj4+Pj4+Pj4gMi40MS4wCj4+Pj4+Pj4+Cj4+Pj4+Pj4gLS0gCj4+Pj4+Pj4gIMKg
IC0tLS0tT3BlbiB1cCB5b3VyIGV5ZXMsIG9wZW4gdXAgeW91ciBtaW5kLCBvcGVuIHVwIHlvdXIg
Y29kZSAtLS0tLS0tCj4+Pj4+Pj4gLyBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0wqDCoMKgIHzCoMKg
wqDCoMKgwqAgUnVubmluZyBHTlUvTGludXjCoMKgwqDCoMKgwqAgfCBIYXBwecKgIFwKPj4+Pj4+
PiBcwqDCoMKgwqDCoMKgwqAgZGF2ZSBAIHRyZWJsaWcub3JnIHzCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCBJbiBIZXggLwo+Pj4+
Pj4+ICDCoCBcIF9fX19fX19fX19fX19fX19fX19fX19fX198X19fX18gaHR0cDovL3d3dy50cmVi
bGlnLm9yZ8KgwqAgfF9fX19fX18vCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiAtLSAKPj4+
Pj4+IFRoYW5rcywKPj4+Pj4+Cj4+Pj4+PiBTdGV2ZQo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiAt
LSAKPj4+Pj4gVGhhbmtzLAo+Pj4+Pgo+Pj4+PiBTdGV2ZQo+Pj4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
