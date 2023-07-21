Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3754175D60E
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Jul 2023 22:58:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMxCr-0007kD-7P;
	Fri, 21 Jul 2023 20:58:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qMxCo-0007k6-AB
 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 20:58:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iPT7bUJUv+LkTmcOfbsPCo4EaIDTV5G6zktQKLjq8hg=; b=d2V910CDsbAm/22llwYYtOWClf
 HcgIipezh+uGNoeArfxho/7uxghMQagpov+UwhCl5NmfflYiqWAmweMhQ8fyJ3FHVrAuNTgJzW2ry
 gWmqMuE4E11P8gSBDhpJmAdpMJTdGSRcqW2Hg952KEb7vpvAVWjP/tMyBVC1BkJt1Rco=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iPT7bUJUv+LkTmcOfbsPCo4EaIDTV5G6zktQKLjq8hg=; b=GPDCk44smAtYYToB4dSYzc3Jhj
 gHvnsbXvZUlXrmVATs9Ha038zMRS4l+sbWLaPjwBfV150t2bBpLjPHgdPPLpslIQIMP3jvqQDmXxG
 LCMaJ9TxBGh+Y2lzPGzeB9a65j2GaCmnjw8tYP517dvaQVKgblg3SgXsQr2rciF4BM3c=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMxCn-0007v9-7y for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 20:58:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iPT7bUJUv+LkTmcOfbsPCo4EaIDTV5G6zktQKLjq8hg=; b=L6FuFsiarFCR0FP89J++B/EsYO
 Qe/CL36wu38ovPdRWh7nE3gKY4nizQFMnUtMkavqPBu1nS5i2FgLoToFqejbd7rsKI3Idbfr+bP2j
 ujfCqILKiGyXBrXfNyCcrOI6HzoVIE7mjPXm3JTmjbju34uH7/bPZqqS2YbrQqm4W6wEUzLJjV20T
 ArS2fuWEcWMj9eMqXGdtaa9gGp8CuP9YnhSTiDk/ubFH0ty/aSZfw3f/CKrjGkAvDivrWrup0iseX
 W4e8xH486AuI7FfGQQp/JkH6Ky+jVDCSQ0pxk/8xyu7b7nqFGJ8p4alp9muTxkfG27OZaY3fU983K
 Ute2mFfw==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qMxCV-002dPe-W8; Fri, 21 Jul 2023 20:58:12 +0000
Date: Fri, 21 Jul 2023 20:58:11 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Tom Talpey <tom@talpey.com>
Message-ID: <ZLrxYzGXJzsLmGDs@gallifrey>
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
X-Uptime: 20:56:38 up 15 days, 6:28, 1 user, load average: 0.17, 0.04, 0.01
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
X-Headers-End: 1qMxCn-0007v9-7y
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
Pwo+IAo+IFllcCwgZm9yIGNvbnNpc3RlbmN5IHRoYXQgc291bmRzIGdvb2QuCgpJdCBkb2VzLi4u
LiBhbmQgSSBqdXN0IGZpeGVkIHVwIG15IHBhdGNoZXMgZm9yIGl0LCBhbmQgY2hlY2twYXRjaApt
b2FuczsKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rv
cnZhbGRzL2xpbnV4LmdpdC90cmVlL3NjcmlwdHMvY2hlY2twYXRjaC5wbCNuMzczNwoJaWYgKCRy
ZWFsZmlsZSA9fiAvXC4oaHxzfFMpJC8pIHsKCQkkY29tbWVudCA9ICcvKic7Cgl9IGVsc2lmICgk
cmVhbGZpbGUgPX4gL1wuKGN8cnN8ZHRzfGR0c2kpJC8pIHsKCQkkY29tbWVudCA9ICcvLyc7CgpJ
IGRvbid0IGdldCB3aGVyZSB0aGF0IGlkZWEgY2FtZSBmcm9tLgoKRGF2ZQoKPiA+ID4gU2Vjb25k
LCB0aGUgY29weXJpZ2h0IGluIGZzL25scy9ubHNfdWNzMl91dGlscy5jIGlzIGEgYml0IG9mCj4g
PiA+IGEgbWFzaC11cCAoYWRkaW5nIDIwMDkgZXNwZWNpYWxseSkuCj4gPiA+IAo+ID4gPiBJIHRo
aW5rIGl0J3MgYmV0dGVyIHRvIGtlZXAgdGhlIGV4YWN0IHRleHQgb2YgYm90aCBjb3B5cmlnaHRz
LAo+ID4gPiBwZXJoYXBzIHdpdGggYSBub3RlIGFzIHRvIHdoaWNoIGZpbGVzIGhhZCB0aGVtIHBy
ZXZpb3VzbHksIGFuZAo+ID4gPiBhZGRpbmcgc29tZSBuZXcgbm90ZS9ibGFuayBsaW5lIHRvIHNl
cGFyYXRlIHRoZSByZWNlbnQgY29udHJpYnV0aW9ucwo+ID4gPiBmcm9tIE5hbWphZSBhbmQgeW91
IGZyb20gdGhlIGFuY2llbnQgaGlzdG9yeS4KPiA+IAo+ID4gSG93IGFib3V0IHRoZSBmb2xsb3dp
bmc7Cj4gPiAKPiA+ICAgKiBUaGlzIGZpbGUgaGFzIHRha2VuIGNodW5rcyBmcm9tIGEgZmV3IG90
aGVyIGZpbGVzCj4gPiAgICogc21iL3NlcnZlci91bml1cHIuaCBoYWQgdGhlIGRlY2xhcmF0aW9u
Ogo+IAo+IFRoZXNlIHR3byBsaW5lcyBhYm92ZSBhcmVuJ3QgbmVlZGVkLCBiZWNhdXNlIHRoZSBs
aW5lcyBiZWxvdwo+IGNvbnRhaW4gdGhlIGNvcHlyaWdodCBhbmQgd2hlcmUgdGhleSBvcmlnaW5h
dGVkLiBTbyBqdXN0IG9taXQKPiB0aGUgdHdvIGFib3ZlLgo+IAo+ID4gICAqCj4gPiAgICogICBT
b21lIG9mIHRoZSBzb3VyY2UgY29kZSBpbiB0aGlzIGZpbGUgY2FtZSBmcm9tIGZzL2NpZnMvdW5p
dXByLmgKPiA+ICAgKiAgIENvcHlyaWdodCAoYykgSW50ZXJuYXRpb25hbCBCdXNpbmVzcyBNYWNo
aW5lcyAgQ29ycC4sIDIwMDAsMjAwMgo+ID4gICAqCj4gPiAgICogZnMvc21iL3NlcnZlci91bmlj
b2RlLmMgaGFkIHRoZSBkZWNsYXJhdGlvbjoKPiAKPiBBbmQgdGhpcyBvbmUgYWJvdmUgLSBub3Qg
bmVlZGVkLgo+IAo+ID4gICAqCj4gPiAgICogICBTb21lIG9mIHRoZSBzb3VyY2UgY29kZSBpbiB0
aGlzIGZpbGUgY2FtZSBmcm9tIGZzL2NpZnMvY2lmc191bmljb2RlLmMKPiA+ICAgKgo+ID4gICAq
ICAgQ29weXJpZ2h0IChjKSBJbnRlcm5hdGlvbmFsIEJ1c2luZXNzIE1hY2hpbmVzICBDb3JwLiwg
MjAwMCwyMDA5Cj4gPiAgICogICBNb2RpZmllZCBieSBTdGV2ZSBGcmVuY2ggKHNmcmVuY2hAdXMu
aWJtLmNvbSkKPiA+ICAgKiAgIE1vZGlmaWVkIGJ5IE5hbWphZSBKZW9uIChsaW5raW5qZW9uQGtl
cm5lbC5vcmcpCj4gPiAgICoKPiA+IAo+ID4gSSBoYXZlbid0IGFkZGVkIHRoZSBleHRyYSBsaW5l
IGFib3ZlIE5hbWphZSdzIGxpbmUsIHNpbmNlIGl0J3Mgbm93Cj4gPiBhIHN0cmFpZ2h0IGNvcHkg
ZnJvbSB0aGUgdW5pY29kZS5jIGVudHJ5Lgo+IAo+IFN0cmFpZ2h0IGNvcHkgaXMgd2hhdCdzIGlt
cG9ydGFudC4gTm8gZGVsZXRpb24sIG5vIGVkaXQgaW4gYSBjb3B5cmlnaHQuCj4gU28sIG9rLgo+
IAo+ID4gSSdtIG5vdCBwYXJ0aWN1bGFybHkgZnVzc2VkIGFib3V0IGFkZGluZyBteSBvd24gbGlu
ZSB1bmxlc3MgeW91IHRoaW5rCj4gPiBpdCdzIG5lZWRlZDsgZ2l0IGtlZXBzIGJldHRlciBoaXN0
b3J5IQo+IAo+IEluIGZhY3QsIHNpbmNlIHlvdSB0ZWNobmljYWxseSBkaWRuJ3QgYWRkIGFueSBj
b2RlLCBqdXN0IGRlbGV0ZWQsCj4gbW92ZWQgb3IgcmVuYW1lZCwgSSB0aGluayBpdCBtaWdodCBi
ZSBiZXN0IHRvIGxlYXZlIHlvdXJzZWxmIG91dC4KPiBCdXQsIHRvdGFsbHkgeW91ciBjaG9pY2Uu
Cj4gCj4gVG9tLgo+IAo+ID4gPiA+ICsrKyBiL2ZzL25scy9ubHNfdWNzMl91dGlscy5jCj4gPiA+
ID4gLi4uCj4gPiA+ID4gLSAqICAgU29tZSBvZiB0aGUgc291cmNlIGNvZGUgaW4gdGhpcyBmaWxl
IGNhbWUgZnJvbSBmcy9jaWZzL3VuaXVwci5oCj4gPiA+ID4gLSAqICAgQ29weXJpZ2h0IChjKSBJ
bnRlcm5hdGlvbmFsIEJ1c2luZXNzIE1hY2hpbmVzICBDb3JwLiwgMjAwMCwyMDAyCj4gPiA+ID4g
LSAqCj4gPiA+ID4gLSAqIHVuaXVwci5oIC0gVW5pY29kZSBjb21wcmVzc2VkIGNhc2UgcmFuZ2Vz
Cj4gPiA+ID4gKyAqICAgU29tZSBvZiB0aGUgc291cmNlIGNvZGUgaW4gdGhpcyBmaWxlIGNhbWUg
ZnJvbSBmcy9jaWZzL2NpZnNfdW5pY29kZS5jCj4gPiA+ID4gKyAqICAgdmlhIGZzL3NtYi91bmlj
b2RlLmMgYW5kIGZzL3NtYi91bml1cHIuaCBhbmQgZnMvY2lmcy91bml1cHIuaAo+ID4gPiA+ICsg
KiAgIENvcHlyaWdodCAoYykgSW50ZXJuYXRpb25hbCBCdXNpbmVzcyBNYWNoaW5lcyAgQ29ycC4s
IDIwMDAsMjAwMiwyMDA5Cj4gPiA+ID4gKyAqICAgTW9kaWZpZWQgYnkgU3RldmUgRnJlbmNoIChz
ZnJlbmNoQHVzLmlibS5jb20pCj4gPiA+ID4gKyAqICAgTW9kaWZpZWQgYnkgTmFtamFlIEplb24g
KGxpbmtpbmplb25Aa2VybmVsLm9yZykKPiA+ID4gPiArICogICBNb2RpZmllZCBieSBEci4gRGF2
aWQgQWxhbiBHaWxiZXJ0IDxsaW51eEB0cmVibGlnLm9yZz4KPiA+ID4gCj4gPiA+IEFwYXJ0IGZy
b20gY29uc2lkZXJpbmcgdGhlc2U6Cj4gPiA+IAo+ID4gPiBSZXZpZXdlZC1ieTogVG9tIFRhbHBl
eSA8dG9tQHRhbHBleS5jb20+Cj4gPiAKPiA+IFRoYW5rcyEKPiA+IAo+ID4gRGF2ZQo+ID4gCj4g
PiA+IE5pY2Ugd29yayEKPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoYW5rcy4KPiA+ID4g
PiA+IAo+ID4gPiA+ID4gRGF2ZQo+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gT24gV2VkLCBKdWwg
MTIsIDIwMjMgYXQgNjoyOOKAr1BNIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQKPiA+ID4gPiA+ID4g
PiA8ZGF2ZUB0cmVibGlnLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
PiA+ICogbGludXhAdHJlYmxpZy5vcmcgKGxpbnV4QHRyZWJsaWcub3JnKSB3cm90ZToKPiA+ID4g
PiA+ID4gPiA+ID4gRnJvbTogIkRyLiBEYXZpZCBBbGFuIEdpbGJlcnQiIDxsaW51eEB0cmVibGln
Lm9yZz4KPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IFRoZSBzbWIgY2xpZW50
IGFuZCBzZXJ2ZXIgY29kZSBoYXZlIChtb3N0bHkpIGR1cGxpY2F0ZWQgY29kZQo+ID4gPiA+ID4g
PiA+ID4gPiBmb3IgdW5pY29kZSBtYW5pcHVsYXRpb24sIGluIHBhcnRpY3VsYXIgdXBwZXIgY2Fz
ZSBoYW5kbGluZy4KPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IEZsYXR0ZW4g
dGhpcyBsb3QgaW50byBzaGFyZWQgY29kZS4KPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
ID4gR2VudGxlIHR3byB3ZWVrIHBpbmcgb24gdGhpcyBwbGVhc2UuCj4gPiA+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiA+IERhdmUKPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gKEFw
b2xvZ2llcyB0byB0aGUgMyBvZiB5b3Ugd2hvIGFscmVhZHkgZ290IGEgY29weSBvZiB0aGlzIHBp
bmcsCj4gPiA+ID4gPiA+ID4gPiByZWNlbnQgZHVlIHRvIGEgbWlzc2luZyBoZWFkZXIgJywnICkK
PiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBUaGVyZSdzIHNvbWUgY29kZSB0aGF0
J3Mgc2xpZ2h0bHkgZGlmZmVyZW50IGJldHdlZW4gdGhlIHR3bywgYW5kCj4gPiA+ID4gPiA+ID4g
PiA+IEkndmUgbm90IGF0dGVtcHRlZCB0byBzaGFyZSB0aGF0IC0gdGhpcyBzaG91bGQgYmUgc3Ry
aWN0bHkgYSBubwo+ID4gPiA+ID4gPiA+ID4gPiBiZWhhdmlvdXIgY2hhbmdlIHNldC4KPiA+ID4g
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IEluIGFkZGl0aW9uLCB0aGUgc2FtZSB0YWJs
ZXMgYW5kIGNvZGUgYXJlIHNoYXJlZCBpbiBqZnMsIGhvd2V2ZXIKPiA+ID4gPiA+ID4gPiA+ID4g
dGhlcmUncyB2ZXJ5IGxpdHRsZSB0ZXN0aW5nIGF2YWlsYWJsZSBmb3IgdGhlIHVuaWNvZGUgaW4g
dGhlcmUsCj4gPiA+ID4gPiA+ID4gPiA+IHNvIGp1c3Qgc2hhcmUgdGhlIHJhdyBkYXRhIHRhYmxl
cy4KPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IEkgc3VzcGVjdCB0aGVyZSdz
IG1vcmUgVUNTLTIgY29kZSB0aGF0IGNhbiBiZSBzaGFyZWQsIGluIHRoZSBOTFMgY29kZQo+ID4g
PiA+ID4gPiA+ID4gPiBhbmQgaW4gdGhlIFVDUy0yIGNvZGUgdXNlZCBieSB0aGUgRUZJIGludGVy
ZmFjZXMuCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBMaWdodGx5IHRlc3Rl
ZCB3aXRoIGEgbW9kdWxlIGFuZCBhIG1vbm9saXRoaWMgYnVpbGQsCj4gPiA+ID4gPiA+ID4gPiA+
IGFuZCBqdXN0IG1vdW50aW5nCj4gPiA+ID4gPiA+ID4gPiA+IGl0c2VsZi4KPiA+ID4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IFRoaXMgZHVwZSB3YXMgZm91bmQgdXNpbmcgUE1EOgo+
ID4gPiA+ID4gPiA+ID4gPiAgwqDCoCBodHRwczovL3BtZC5naXRodWIuaW8vcG1kL3BtZF91c2Vy
ZG9jc19jcGQuaHRtbAo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gRGF2ZQo+
ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gVmVyc2lvbiAyCj4gPiA+ID4gPiA+
ID4gPiA+ICDCoMKgIE1vdmVkIHRoZSBzaGFyZWQgY29kZSB0byBmcy9ubHMgYWZ0ZXIgdjEgZmVl
ZGJhY2suCj4gPiA+ID4gPiA+ID4gPiA+ICDCoMKgIFJlbmFtZWQgc2hhcmVkIHRhYmxlcyBmcm9t
IFNtYiB0byBObHMgcHJlZml4Cj4gPiA+ID4gPiA+ID4gPiA+ICDCoMKgIE1vdmUgVW5pU3RyY2F0
IGFzIHdlbGwKPiA+ID4gPiA+ID4gPiA+ID4gIMKgwqAgU2hhcmUgdGhlIEpGUyB0YWJsZXMKPiA+
ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IERyLiBEYXZpZCBBbGFuIEdpbGJlcnQg
KDQpOgo+ID4gPiA+ID4gPiA+ID4gPiAgwqDCoCBmcy9zbWI6IFJlbW92ZSB1bmljb2RlICdsb3dl
cicgdGFibGVzCj4gPiA+ID4gPiA+ID4gPiA+ICDCoMKgIGZzL3NtYjogU3dpbmcgdW5pY29kZSBj
b21tb24gY29kZSBmcm9tIHNtYi0+TkxTCj4gPiA+ID4gPiA+ID4gPiA+ICDCoMKgIGZzL3NtYi9j
bGllbnQ6IFVzZSBjb21tb24gY29kZSBpbiBjbGllbnQKPiA+ID4gPiA+ID4gPiA+ID4gIMKgwqAg
ZnMvamZzOiBVc2UgY29tbW9uIHVjczIgdXBwZXIgY2FzZSB0YWJsZQo+ID4gPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGZzL2pmcy9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqDCoCAxICsKPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGZzL2pmcy9NYWtlZmls
ZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDIgKy0KPiA+ID4gPiA+ID4gPiA+ID4g
IMKgIGZzL2pmcy9qZnNfdW5pY29kZS5owqDCoMKgwqDCoMKgwqDCoCB8wqAgMTcgKy0KPiA+ID4g
PiA+ID4gPiA+ID4gIMKgIGZzL2pmcy9qZnNfdW5pdXByLmPCoMKgwqDCoMKgwqDCoMKgwqAgfCAx
MjEgLS0tLS0tLS0tLS0tLQo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvbmxzL0tjb25maWfCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDggKwo+ID4gPiA+ID4gPiA+ID4gPiAgwqAg
ZnMvbmxzL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4gPiA+
ID4gPiA+ID4gPiA+ICDCoCBmcy9ubHMvbmxzX3VjczJfZGF0YS5owqDCoMKgwqDCoMKgIHzCoCAx
NSArKwo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvbmxzL25sc191Y3MyX3V0aWxzLmPCoMKgwqDC
oMKgIHwgMTQ0ICsrKysrKysrKysrKysrKwo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvbmxzL25s
c191Y3MyX3V0aWxzLmjCoMKgwqDCoMKgIHwgMjg1ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvc21iL2NsaWVudC9LY29uZmlnwqDCoMKgwqDC
oMKgwqAgfMKgwqAgMSArCj4gPiA+ID4gPiA+ID4gPiA+ICDCoCBmcy9zbWIvY2xpZW50L2NpZnNf
dW5pY29kZS5jIHzCoMKgIDEgLQo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvc21iL2NsaWVudC9j
aWZzX3VuaWNvZGUuaCB8IDMzMAo+ID4gPiA+ID4gPiA+ID4gPiArLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvc21iL2NsaWVudC9jaWZz
X3VuaXVwci5owqAgfCAyMzkgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gPiA+ID4gPiA+
ID4gPiAgwqAgZnMvc21iL3NlcnZlci9LY29uZmlnwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4g
PiA+ID4gPiA+ID4gPiA+ICDCoCBmcy9zbWIvc2VydmVyL3VuaWNvZGUuY8KgwqDCoMKgwqAgfMKg
wqAgMSAtCj4gPiA+ID4gPiA+ID4gPiA+ICDCoCBmcy9zbWIvc2VydmVyL3VuaWNvZGUuaMKgwqDC
oMKgwqAgfCAzMjUKPiA+ID4gPiA+ID4gPiA+ID4gKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgZnMvc21iL3NlcnZlci91bml1cHIuaMKgwqDC
oMKgwqDCoCB8IDI2OCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gPiA+ID4g
PiA+ICDCoCAxNyBmaWxlcyBjaGFuZ2VkLCA0NjcgaW5zZXJ0aW9ucygrKSwgMTI5MyBkZWxldGlv
bnMoLSkKPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGRlbGV0ZSBtb2RlIDEwMDY0NCBmcy9qZnMvamZz
X3VuaXVwci5jCj4gPiA+ID4gPiA+ID4gPiA+ICDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZnMvbmxz
L25sc191Y3MyX2RhdGEuaAo+ID4gPiA+ID4gPiA+ID4gPiAgwqAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGZzL25scy9ubHNfdWNzMl91dGlscy5jCj4gPiA+ID4gPiA+ID4gPiA+ICDCoCBjcmVhdGUgbW9k
ZSAxMDA2NDQgZnMvbmxzL25sc191Y3MyX3V0aWxzLmgKPiA+ID4gPiA+ID4gPiA+ID4gIMKgIGRl
bGV0ZSBtb2RlIDEwMDY0NCBmcy9zbWIvY2xpZW50L2NpZnNfdW5pdXByLmgKPiA+ID4gPiA+ID4g
PiA+ID4gIMKgIGRlbGV0ZSBtb2RlIDEwMDY0NCBmcy9zbWIvc2VydmVyL3VuaXVwci5oCj4gPiA+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiAtLSAKPiA+ID4gPiA+ID4gPiA+ID4gMi40
MS4wCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gLS0gCj4gPiA+ID4gPiA+ID4g
PiAgwqAgLS0tLS1PcGVuIHVwIHlvdXIgZXllcywgb3BlbiB1cCB5b3VyIG1pbmQsIG9wZW4gdXAg
eW91ciBjb2RlIC0tLS0tLS0KPiA+ID4gPiA+ID4gPiA+IC8gRHIuIERhdmlkIEFsYW4gR2lsYmVy
dMKgwqDCoCB8wqDCoMKgwqDCoMKgIFJ1bm5pbmcgR05VL0xpbnV4wqDCoMKgwqDCoMKgIHwgSGFw
cHnCoCBcCj4gPiA+ID4gPiA+ID4gPiBcwqDCoMKgwqDCoMKgwqAgZGF2ZSBAIHRyZWJsaWcub3Jn
IHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfCBJbiBIZXggLwo+ID4gPiA+ID4gPiA+ID4gIMKgIFwgX19fX19fX19fX19fX19fX19f
X19fX19fX3xfX19fXyBodHRwOi8vd3d3LnRyZWJsaWcub3JnwqDCoCB8X19fX19fXy8KPiA+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAtLSAK
PiA+ID4gPiA+ID4gPiBUaGFua3MsCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gU3RldmUK
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gLS0gCj4g
PiA+ID4gPiA+IFRoYW5rcywKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFN0ZXZlCj4gPiA+ID4g
Ci0tIAogLS0tLS1PcGVuIHVwIHlvdXIgZXllcywgb3BlbiB1cCB5b3VyIG1pbmQsIG9wZW4gdXAg
eW91ciBjb2RlIC0tLS0tLS0gICAKLyBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0ICAgIHwgICAgICAg
UnVubmluZyBHTlUvTGludXggICAgICAgfCBIYXBweSAgXCAKXCAgICAgICAgZGF2ZSBAIHRyZWJs
aWcub3JnIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBJbiBIZXggLwogXCBfX19f
X19fX19fX19fX19fX19fX19fX19ffF9fX19fIGh0dHA6Ly93d3cudHJlYmxpZy5vcmcgICB8X19f
X19fXy8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpK
ZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1k
aXNjdXNzaW9uCg==
