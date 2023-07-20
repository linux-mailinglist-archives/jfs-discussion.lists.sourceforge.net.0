Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D220C75B17D
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Jul 2023 16:46:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMUul-0005gE-Aq;
	Thu, 20 Jul 2023 14:45:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tom@talpey.com>) id 1qMUuj-0005g1-Eh
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Jul 2023 14:45:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z+9dml3x3od56Z/L2uwCzausZXn83XyOCdXqc12Mytk=; b=VBFLrSXQQGP/HzdiX1EMvTwYi2
 UAgP6zBmY91VsK3yiYVqO+OGOdcoFaDz6OR489A6XnV9jYqIOYtUK2i6Z0teLqdbzJqufHF7QH9A0
 /RQp2ku+1bT/elHWPqZpphlcy81GQz7DOuv1RAApjFXBnSBcw//lYNM2rID1qAbSa27E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z+9dml3x3od56Z/L2uwCzausZXn83XyOCdXqc12Mytk=; b=nD/OkHwxcx5LKj4dEfyFYHsIS6
 KRZT9KUcAGycrqEBw9Np8ahq3rcy/IMZMCP+XsMky/iB3alcD7hZKkioWpTnFPbvoqCz/LVmbxz8l
 SOR/tSPj4KSjwh6wnPI/QqFGQh2MakdOZ8mogl/d0g33wviXg/RmySvub9jRad11B25U=;
Received: from mail.rcn.syn-alias.com ([129.213.13.252] helo=smtp.rcn.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMUug-0007oi-RT for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Jul 2023 14:45:56 +0000
X-Authed-Username: dG10YWxwZXlAcmNuLmNvbQ==
Authentication-Results: smtp02.rcn.email-ash1.sync.lan smtp.user=<hidden>;
 auth=pass (PLAIN)
Received: from [96.237.161.173] ([96.237.161.173:51681] helo=[192.168.0.206])
 by smtp.rcn.com (envelope-from <tom@talpey.com>)
 (ecelerity 4.4.0.19839 r(msys-ecelerity:tags/4.4.0.0^0)) with ESMTPSA
 (cipher=AES128-GCM-SHA256) 
 id AB/37-10976-1E349B46; Thu, 20 Jul 2023 10:25:37 -0400
Message-ID: <d1f7fbe9-8fe2-e3e3-d6ff-1544204202ff@talpey.com>
Date: Thu, 20 Jul 2023 10:25:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Dave Kleikamp <dave.kleikamp@oracle.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Steve French <smfrench@gmail.com>
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
 <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
 <ZLhchajZaWEVM6D7@gallifrey>
 <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
From: Tom Talpey <tom@talpey.com>
In-Reply-To: <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
X-Vade-Verdict: clean
X-Vade-Analysis-1: gggruggvucftvghtrhhoucdtuddrgedviedrhedtgdejiecutefuodetggdotefrodftvfcurfhrohhf
X-Vade-Analysis-2: ihhlvgemucfujgfpteevqfftpdftvefppdfgpfggqdftvefppdfqfgfvnecuuegrihhlohhuthemucef
X-Vade-Analysis-3: tddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenogfuuhhsphgvtghtffhomhgrihhnucdl
X-Vade-Analysis-4: geelmdenucfjughrpefkffggfgfuvfevfhfhjggtgfesthekredttdefjeenucfhrhhomhepvfhomhcu
X-Vade-Analysis-5: vfgrlhhpvgihuceothhomhesthgrlhhpvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeelgeffvedu
X-Vade-Analysis-6: fffftdekgfduhfeffeeffeeiiedvfeeifedvuddutddtudegfefgjeenucffohhmrghinhepghhithhh
X-Vade-Analysis-7: uhgsrdhiohdpthhrvggslhhighdrohhrghenucfkphepleeirddvfeejrdduiedurddujeefnecuvehl
X-Vade-Analysis-8: uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepleeirddvfeejrdduiedurddujeefpdhh
X-Vade-Analysis-9: vghloheplgduledvrdduieekrddtrddvtdeingdpmhgrihhlfhhrohhmpehtohhmsehtrghlphgvhidr
X-Vade-Analysis-10: tghomhdprhgtphhtthhopegurghvvgdrkhhlvghikhgrmhhpsehorhgrtghlvgdrtghomhdprhgtphht
X-Vade-Analysis-11: thhopehlihhnuhigsehtrhgvsghlihhgrdhorhhgpdhrtghpthhtohepshhmfhhrvghntghhsehgmhgr
X-Vade-Analysis-12: ihhlrdgtohhmpdhrtghpthhtoheplhhinhhkihhnjhgvohhnsehkvghrnhgvlhdrohhrghdprhgtphht
X-Vade-Analysis-13: thhopehshhgrghhghieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqtghifhhssehv
X-Vade-Analysis-14: ghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhrihhsmhgrnhestgholhhlrggsohhrrgdr
X-Vade-Analysis-15: tghomh
X-Vade-Client: RCN
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/19/2023 6:06 PM,
 Dave Kleikamp wrote: > On 7/19/23 4:58PM, 
 Dr. David Alan Gilbert wrote: >> * Steve French (smfrench@gmail.com) wrote:
 >>> The related question is which tree to send it from, if n [...] 
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [129.213.13.252 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [129.213.13.252 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom; id=tom%40talpey.com;
 ip=129.213.13.252; r=util-spamd-2.v13.lw.sourceforge.com]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qMUug-0007oi-RT
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
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 krisman@collabora.com, linkinjeon@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNy8xOS8yMDIzIDY6MDYgUE0sIERhdmUgS2xlaWthbXAgd3JvdGU6Cj4gT24gNy8xOS8yMyA0
OjU4UE0sIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgd3JvdGU6Cj4+ICogU3RldmUgRnJlbmNoIChz
bWZyZW5jaEBnbWFpbC5jb20pIHdyb3RlOgo+Pj4gVGhlIHJlbGF0ZWQgcXVlc3Rpb24gaXMgd2hp
Y2ggdHJlZSB0byBzZW5kIGl0IGZyb20sIGlmIG5vIHByb2JsZW1zCj4+PiByZXBvcnRlZCAocHJl
c3VtYWJseSBtaW5lIHNpbmNlIGl0IG1vc3RseSBhZmZlY3QgY2lmcy5rbyBhbmQga3NtYmQua28s
Cj4+PiBhbmQgYmVjYXVzZSB0aGVyZSBoYXNuJ3QgYmVlbiBhY3Rpdml0eSBpbiBmcy9ubHMgZm9y
IHllYXJzKQo+Pgo+PiBUaGF0IHdhcyBteSBob3BlLCBnaXZlbiB0aGF0IH5oYWxmIG9mIHRoZSBw
YXRjaGVzIGFyZSBkaXJlY3RseSBvbiB0aGF0Cj4+IGNvZGUsIGFuZCBpdCdzIHRoZSBvbmx5IHZl
cnkgYWN0aXZlIHRyZWUgdGhpcyB0b3VjaGVzIGFzIGZhciBhcyBJIGNhbgo+PiB0ZWxsLgo+Pgo+
Pj4gT24gV2VkLCBKdWwgMTksIDIwMjMgYXQgMTI6NTbigK9QTSBTdGV2ZSBGcmVuY2ggPHNtZnJl
bmNoQGdtYWlsLmNvbT4gCj4+PiB3cm90ZToKPj4+Pgo+Pj4+IE5vIG9iamVjdGlvbnMgdG8gdGhp
cyBvbiBteSBwYXJ0LsKgIElmIFNoYWdneSBpcyBvayB3aXRoIHRoZSBKRlMKPj4+PiBjaGFuZ2Us
IHdlIGNvdWxkIHRhcmdldCBpdCBmb3IgNi42LXJjMSBpZiBpdCB0ZXN0cyBvdXQgb2sKPiAKPiBG
b3IgdGhlIHNlcmllczoKPiBSZXZpZXdlZC1ieTogRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVpa2Ft
cEBvcmFjbGUuY29tPgo+IAo+IFN0ZXZlLAo+IEZlZWwgZnJlZSB0byBwdWxsIGluIGV2ZW4gdGhl
IDR0aCBwYXRjaCBpbnRvIHlvdXIgdHJlZSB3aXRoIG15IGNvbnNlbnQuIAo+IE9yIGlmIHlvdSdy
ZSBtb3JlIGNvbWZvcnRhYmxlLCBJIGNvdWxkIHN1Ym1pdCBpdCBhZnRlciB5b3VycyBoaXRzIG1h
aW5saW5lLgo+IAo+IFNoYWdneQoKVGhlIGNoYW5nZXMgbG9vayBnb29kIHRvIG1lIGJ1dCB0aGVy
ZSBpcyBvbmUgcXVpcmsgd2l0aCB0aGUKY29weXJpZ2h0cyBhbmQgU1BEWCBpbiBwYXRjaCAyLgoK
SW4gdGhlIG5ldyBmcy9ubHMvbmxzX3VjczJfdXRpbHMuYywgdGhlIFNQRFggbGluZSBjaGFuZ2Vz
IGZyb20KYSAiLyogLi4uICovIiBmb3JtIHRvICIvLyAuLi4iLCB3aGljaCBtYXkgYmUgYSBwcm9w
ZXIgdXBkYXRlLCBidXQKdGhlbiBwYXJ0d2F5IGRvd24sIGFkZHMgdGhlIHNhbWUgU1BEWCBpbiAi
LyogLi4uICovIGZvcm0uIFRoZXNlCnNob3VsZCBhdCBsZWFzdCBiZSBjb25zaXN0ZW50LgoKPiAr
KysgYi9mcy9ubHMvbmxzX3VjczJfdXRpbHMuYwo+IEBAIC0xLDE5ICsxLDI1IEBACj4gLS8qIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyICovCj4gKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyCgp2cwoKPiArKysgYi9mcy9ubHMvbmxz
X3VjczJfdXRpbHMuaAo+IEBAIC0wLDAgKzEsMjk3IEBACj4gKy8qIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyICovCgpTZWNvbmQsIHRoZSBjb3B5cmlnaHQgaW4gZnMv
bmxzL25sc191Y3MyX3V0aWxzLmMgaXMgYSBiaXQgb2YKYSBtYXNoLXVwIChhZGRpbmcgMjAwOSBl
c3BlY2lhbGx5KS4KCkkgdGhpbmsgaXQncyBiZXR0ZXIgdG8ga2VlcCB0aGUgZXhhY3QgdGV4dCBv
ZiBib3RoIGNvcHlyaWdodHMsCnBlcmhhcHMgd2l0aCBhIG5vdGUgYXMgdG8gd2hpY2ggZmlsZXMg
aGFkIHRoZW0gcHJldmlvdXNseSwgYW5kCmFkZGluZyBzb21lIG5ldyBub3RlL2JsYW5rIGxpbmUg
dG8gc2VwYXJhdGUgdGhlIHJlY2VudCBjb250cmlidXRpb25zCmZyb20gTmFtamFlIGFuZCB5b3Ug
ZnJvbSB0aGUgYW5jaWVudCBoaXN0b3J5LgoKPiArKysgYi9mcy9ubHMvbmxzX3VjczJfdXRpbHMu
Ywo+IC4uLgo+IC0gKiAgIFNvbWUgb2YgdGhlIHNvdXJjZSBjb2RlIGluIHRoaXMgZmlsZSBjYW1l
IGZyb20gZnMvY2lmcy91bml1cHIuaAo+IC0gKiAgIENvcHlyaWdodCAoYykgSW50ZXJuYXRpb25h
bCBCdXNpbmVzcyBNYWNoaW5lcyAgQ29ycC4sIDIwMDAsMjAwMgo+IC0gKgo+IC0gKiB1bml1cHIu
aCAtIFVuaWNvZGUgY29tcHJlc3NlZCBjYXNlIHJhbmdlcwo+ICsgKiAgIFNvbWUgb2YgdGhlIHNv
dXJjZSBjb2RlIGluIHRoaXMgZmlsZSBjYW1lIGZyb20gZnMvY2lmcy9jaWZzX3VuaWNvZGUuYwo+
ICsgKiAgIHZpYSBmcy9zbWIvdW5pY29kZS5jIGFuZCBmcy9zbWIvdW5pdXByLmggYW5kIGZzL2Np
ZnMvdW5pdXByLmgKPiArICogICBDb3B5cmlnaHQgKGMpIEludGVybmF0aW9uYWwgQnVzaW5lc3Mg
TWFjaGluZXMgIENvcnAuLCAyMDAwLDIwMDIsMjAwOQo+ICsgKiAgIE1vZGlmaWVkIGJ5IFN0ZXZl
IEZyZW5jaCAoc2ZyZW5jaEB1cy5pYm0uY29tKQo+ICsgKiAgIE1vZGlmaWVkIGJ5IE5hbWphZSBK
ZW9uIChsaW5raW5qZW9uQGtlcm5lbC5vcmcpCj4gKyAqICAgTW9kaWZpZWQgYnkgRHIuIERhdmlk
IEFsYW4gR2lsYmVydCA8bGludXhAdHJlYmxpZy5vcmc+CgpBcGFydCBmcm9tIGNvbnNpZGVyaW5n
IHRoZXNlOgoKUmV2aWV3ZWQtYnk6IFRvbSBUYWxwZXkgPHRvbUB0YWxwZXkuY29tPgoKTmljZSB3
b3JrIQoKPj4KPj4gVGhhbmtzLgo+Pgo+PiBEYXZlCj4+Cj4+Pj4gT24gV2VkLCBKdWwgMTIsIDIw
MjMgYXQgNjoyOOKAr1BNIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgCj4+Pj4gPGRhdmVAdHJlYmxp
Zy5vcmc+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiAqIGxpbnV4QHRyZWJsaWcub3JnIChsaW51eEB0cmVi
bGlnLm9yZykgd3JvdGU6Cj4+Pj4+PiBGcm9tOiAiRHIuIERhdmlkIEFsYW4gR2lsYmVydCIgPGxp
bnV4QHRyZWJsaWcub3JnPgo+Pj4+Pj4KPj4+Pj4+IFRoZSBzbWIgY2xpZW50IGFuZCBzZXJ2ZXIg
Y29kZSBoYXZlIChtb3N0bHkpIGR1cGxpY2F0ZWQgY29kZQo+Pj4+Pj4gZm9yIHVuaWNvZGUgbWFu
aXB1bGF0aW9uLCBpbiBwYXJ0aWN1bGFyIHVwcGVyIGNhc2UgaGFuZGxpbmcuCj4+Pj4+Pgo+Pj4+
Pj4gRmxhdHRlbiB0aGlzIGxvdCBpbnRvIHNoYXJlZCBjb2RlLgo+Pj4+Pgo+Pj4+PiBHZW50bGUg
dHdvIHdlZWsgcGluZyBvbiB0aGlzIHBsZWFzZS4KPj4+Pj4KPj4+Pj4gRGF2ZQo+Pj4+Pgo+Pj4+
PiAoQXBvbG9naWVzIHRvIHRoZSAzIG9mIHlvdSB3aG8gYWxyZWFkeSBnb3QgYSBjb3B5IG9mIHRo
aXMgcGluZywKPj4+Pj4gcmVjZW50IGR1ZSB0byBhIG1pc3NpbmcgaGVhZGVyICcsJyApCj4+Pj4+
Cj4+Pj4+PiBUaGVyZSdzIHNvbWUgY29kZSB0aGF0J3Mgc2xpZ2h0bHkgZGlmZmVyZW50IGJldHdl
ZW4gdGhlIHR3bywgYW5kCj4+Pj4+PiBJJ3ZlIG5vdCBhdHRlbXB0ZWQgdG8gc2hhcmUgdGhhdCAt
IHRoaXMgc2hvdWxkIGJlIHN0cmljdGx5IGEgbm8KPj4+Pj4+IGJlaGF2aW91ciBjaGFuZ2Ugc2V0
Lgo+Pj4+Pj4KPj4+Pj4+IEluIGFkZGl0aW9uLCB0aGUgc2FtZSB0YWJsZXMgYW5kIGNvZGUgYXJl
IHNoYXJlZCBpbiBqZnMsIGhvd2V2ZXIKPj4+Pj4+IHRoZXJlJ3MgdmVyeSBsaXR0bGUgdGVzdGlu
ZyBhdmFpbGFibGUgZm9yIHRoZSB1bmljb2RlIGluIHRoZXJlLAo+Pj4+Pj4gc28ganVzdCBzaGFy
ZSB0aGUgcmF3IGRhdGEgdGFibGVzLgo+Pj4+Pj4KPj4+Pj4+IEkgc3VzcGVjdCB0aGVyZSdzIG1v
cmUgVUNTLTIgY29kZSB0aGF0IGNhbiBiZSBzaGFyZWQsIGluIHRoZSBOTFMgY29kZQo+Pj4+Pj4g
YW5kIGluIHRoZSBVQ1MtMiBjb2RlIHVzZWQgYnkgdGhlIEVGSSBpbnRlcmZhY2VzLgo+Pj4+Pj4K
Pj4+Pj4+IExpZ2h0bHkgdGVzdGVkIHdpdGggYSBtb2R1bGUgYW5kIGEgbW9ub2xpdGhpYyBidWls
ZCwgYW5kIGp1c3QgCj4+Pj4+PiBtb3VudGluZwo+Pj4+Pj4gaXRzZWxmLgo+Pj4+Pj4KPj4+Pj4+
IFRoaXMgZHVwZSB3YXMgZm91bmQgdXNpbmcgUE1EOgo+Pj4+Pj4gwqDCoCBodHRwczovL3BtZC5n
aXRodWIuaW8vcG1kL3BtZF91c2VyZG9jc19jcGQuaHRtbAo+Pj4+Pj4KPj4+Pj4+IERhdmUKPj4+
Pj4+Cj4+Pj4+PiBWZXJzaW9uIDIKPj4+Pj4+IMKgwqAgTW92ZWQgdGhlIHNoYXJlZCBjb2RlIHRv
IGZzL25scyBhZnRlciB2MSBmZWVkYmFjay4KPj4+Pj4+IMKgwqAgUmVuYW1lZCBzaGFyZWQgdGFi
bGVzIGZyb20gU21iIHRvIE5scyBwcmVmaXgKPj4+Pj4+IMKgwqAgTW92ZSBVbmlTdHJjYXQgYXMg
d2VsbAo+Pj4+Pj4gwqDCoCBTaGFyZSB0aGUgSkZTIHRhYmxlcwo+Pj4+Pj4KPj4+Pj4+IERyLiBE
YXZpZCBBbGFuIEdpbGJlcnQgKDQpOgo+Pj4+Pj4gwqDCoCBmcy9zbWI6IFJlbW92ZSB1bmljb2Rl
ICdsb3dlcicgdGFibGVzCj4+Pj4+PiDCoMKgIGZzL3NtYjogU3dpbmcgdW5pY29kZSBjb21tb24g
Y29kZSBmcm9tIHNtYi0+TkxTCj4+Pj4+PiDCoMKgIGZzL3NtYi9jbGllbnQ6IFVzZSBjb21tb24g
Y29kZSBpbiBjbGllbnQKPj4+Pj4+IMKgwqAgZnMvamZzOiBVc2UgY29tbW9uIHVjczIgdXBwZXIg
Y2FzZSB0YWJsZQo+Pj4+Pj4KPj4+Pj4+IMKgIGZzL2pmcy9LY29uZmlnwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8wqDCoCAxICsKPj4+Pj4+IMKgIGZzL2pmcy9NYWtlZmlsZcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDIgKy0KPj4+Pj4+IMKgIGZzL2pmcy9qZnNfdW5pY29k
ZS5owqDCoMKgwqDCoMKgwqDCoCB8wqAgMTcgKy0KPj4+Pj4+IMKgIGZzL2pmcy9qZnNfdW5pdXBy
LmPCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMjEgLS0tLS0tLS0tLS0tLQo+Pj4+Pj4gwqAgZnMvbmxz
L0tjb25maWfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDggKwo+Pj4+Pj4gwqAg
ZnMvbmxzL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+Pj4+
PiDCoCBmcy9ubHMvbmxzX3VjczJfZGF0YS5owqDCoMKgwqDCoMKgIHzCoCAxNSArKwo+Pj4+Pj4g
wqAgZnMvbmxzL25sc191Y3MyX3V0aWxzLmPCoMKgwqDCoMKgIHwgMTQ0ICsrKysrKysrKysrKysr
Kwo+Pj4+Pj4gwqAgZnMvbmxzL25sc191Y3MyX3V0aWxzLmjCoMKgwqDCoMKgIHwgMjg1ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4gwqAgZnMvc21iL2NsaWVudC9LY29uZmln
wqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+Pj4+PiDCoCBmcy9zbWIvY2xpZW50L2NpZnNfdW5p
Y29kZS5jIHzCoMKgIDEgLQo+Pj4+Pj4gwqAgZnMvc21iL2NsaWVudC9jaWZzX3VuaWNvZGUuaCB8
IDMzMCAKPj4+Pj4+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4+PiDC
oCBmcy9zbWIvY2xpZW50L2NpZnNfdW5pdXByLmjCoCB8IDIzOSAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4+Pj4+PiDCoCBmcy9zbWIvc2VydmVyL0tjb25maWfCoMKgwqDCoMKgwqDCoCB8wqDC
oCAxICsKPj4+Pj4+IMKgIGZzL3NtYi9zZXJ2ZXIvdW5pY29kZS5jwqDCoMKgwqDCoCB8wqDCoCAx
IC0KPj4+Pj4+IMKgIGZzL3NtYi9zZXJ2ZXIvdW5pY29kZS5owqDCoMKgwqDCoCB8IDMyNSAKPj4+
Pj4+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+Pj4+IMKgIGZzL3NtYi9z
ZXJ2ZXIvdW5pdXByLmjCoMKgwqDCoMKgwqAgfCAyNjggLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQo+Pj4+Pj4gwqAgMTcgZmlsZXMgY2hhbmdlZCwgNDY3IGluc2VydGlvbnMoKyksIDEyOTMg
ZGVsZXRpb25zKC0pCj4+Pj4+PiDCoCBkZWxldGUgbW9kZSAxMDA2NDQgZnMvamZzL2pmc191bml1
cHIuYwo+Pj4+Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGZzL25scy9ubHNfdWNzMl9kYXRhLmgK
Pj4+Pj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBmcy9ubHMvbmxzX3VjczJfdXRpbHMuYwo+Pj4+
Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGZzL25scy9ubHNfdWNzMl91dGlscy5oCj4+Pj4+PiDC
oCBkZWxldGUgbW9kZSAxMDA2NDQgZnMvc21iL2NsaWVudC9jaWZzX3VuaXVwci5oCj4+Pj4+PiDC
oCBkZWxldGUgbW9kZSAxMDA2NDQgZnMvc21iL3NlcnZlci91bml1cHIuaAo+Pj4+Pj4KPj4+Pj4+
IC0tIAo+Pj4+Pj4gMi40MS4wCj4+Pj4+Pgo+Pj4+PiAtLSAKPj4+Pj4gwqAgLS0tLS1PcGVuIHVw
IHlvdXIgZXllcywgb3BlbiB1cCB5b3VyIG1pbmQsIG9wZW4gdXAgeW91ciBjb2RlIC0tLS0tLS0K
Pj4+Pj4gLyBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0wqDCoMKgIHzCoMKgwqDCoMKgwqAgUnVubmlu
ZyBHTlUvTGludXjCoMKgwqDCoMKgwqAgfCBIYXBwecKgIFwKPj4+Pj4gXMKgwqDCoMKgwqDCoMKg
IGRhdmUgQCB0cmVibGlnLm9yZyB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgSW4gSGV4IC8KPj4+Pj4gwqAgXCBfX19fX19fX19f
X19fX19fX19fX19fX19ffF9fX19fIGh0dHA6Ly93d3cudHJlYmxpZy5vcmfCoMKgIHxfX19fX19f
Lwo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+IC0tIAo+Pj4+IFRoYW5rcywKPj4+Pgo+Pj4+IFN0ZXZlCj4+
Pgo+Pj4KPj4+Cj4+PiAtLSAKPj4+IFRoYW5rcywKPj4+Cj4+PiBTdGV2ZQo+IAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1h
aWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
