Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1644A3B0C9
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 06:11:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkcMN-0000Qj-ET;
	Wed, 19 Feb 2025 05:10:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1tkcMM-0000Qa-7p
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 05:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xNvzDyUfSqITRgQB1MeFzfJlU9xVCRr9MmZRpCZtN0Y=; b=FICIFrYD8gY9tiodVljl6IaHTk
 D92D1BZhN3FD1Znmx243gAUpmziYTv7bLdIw7H9NLftdXTNX72aMrfVwwEn0l9cm5RwzNcEdgGF8c
 YzNIGypKMyJXhiZQmINH+gAi+/FQvkxJdXINhgbpLG2AWapTd29KkwZs3KdnnMia0llA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xNvzDyUfSqITRgQB1MeFzfJlU9xVCRr9MmZRpCZtN0Y=; b=PuvTdIAR0UPomc7IaWKsCjbbDt
 6kRZLkizE1MRA/YdGk5pistIZiLa+moGEwAanfGZ5qJOsZsOfZh5SaShSnkSufXaLTk0tQ453vqwD
 QWvHBImQtXdJbv3XdtOT5A56FjsNIaIUdRAjUA99TZcGOOVL7eYYIVxVUm20ObAGqzBg=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tkcML-0003sz-4y for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 05:10:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id EA64FA41CF6;
 Wed, 19 Feb 2025 05:09:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA51DC4CED1;
 Wed, 19 Feb 2025 05:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1739941845;
 bh=qxphvqi7G/P4h2lBp66CeMOj+EvTR2VDJKFiAP9MOjg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JHJ2dQhgEGEU9XHZRYdpJh9ouXvg+EK03p6FxYi4Es8RtII/fARmJDvW9r2lADXlv
 NWlLS5XQ6rq+k84lrtV9ZhIJY+F374YFqdrJtySwbkszTomR7ofaRQQBBHPwLixvHu
 Kx/Rrqr77KRT51765LSBPmomgVc4/L7w68rP5w0Y=
Date: Wed, 19 Feb 2025 06:10:42 +0100
To: 2025021350-geometry-appear-9d84@gregkh
Message-ID: <2025021902-overspend-buckwheat-e5c3@gregkh>
References: <Z7UoUyuHzGWwvBOK@qasdev.system>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z7UoUyuHzGWwvBOK@qasdev.system>
X-Spam-Score: -2.8 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Feb 19, 2025 at 12:39:47AM +0000, Qasim Ijaz wrote:
 > On Thu, Feb 13, 2025 at 11:07:07AM +0100, Greg KH wrote: > > On Thu, Feb
 13, 2025 at 12:20:25AM +0000, Qasim Ijaz wrote: > > > During the [...] 
 Content analysis details:   (-2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 TO_MALFORMED           To: has a malformed address
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tkcML-0003sz-4y
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix slab-out-of-bounds read in
 ea_get()
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
From: Greg KH via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Greg KH <gregkh@linuxfoundation.org>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, ancowi69@gmail.com,
 syzbot+4e6e7e4279d046613bc5@syzkaller.appspotmail.com, zhaomengmeng@kylinos.cn,
 llfamsec@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBGZWIgMTksIDIwMjUgYXQgMTI6Mzk6NDdBTSArMDAwMCwgUWFzaW0gSWpheiB3cm90
ZToKPiBPbiBUaHUsIEZlYiAxMywgMjAyNSBhdCAxMTowNzowN0FNICswMTAwLCBHcmVnIEtIIHdy
b3RlOgo+ID4gT24gVGh1LCBGZWIgMTMsIDIwMjUgYXQgMTI6MjA6MjVBTSArMDAwMCwgUWFzaW0g
SWpheiB3cm90ZToKPiA+ID4gRHVyaW5nIHRoZSAic2l6ZV9jaGVjayIgbGFiZWwgaW4gZWFfZ2V0
KCksIHRoZSBjb2RlIGNoZWNrcyBpZiB0aGUgZXh0ZW5kZWQgCj4gPiA+IGF0dHJpYnV0ZSBsaXN0
ICh4YXR0cikgc2l6ZSBtYXRjaGVzIGVhX3NpemUuIElmIG5vdCwgaXQgbG9ncyAKPiA+ID4gImVh
X2dldDogaW52YWxpZCBleHRlbmRlZCBhdHRyaWJ1dGUiIGFuZCBjYWxscyBwcmludF9oZXhfZHVt
cCgpLgo+ID4gPiAKPiA+ID4gSGVyZSwgRUFMSVNUX1NJWkUoZWFfYnVmLT54YXR0cikgcmV0dXJu
cyA0MTEwNDE3OTY4LCB3aGljaCBleGNlZWRzIAo+ID4gPiBJTlRfTUFYICgyLDE0Nyw0ODMsNjQ3
KS4gVGhlbiBlYV9zaXplIGlzIGNsYW1wZWQ6Cj4gPiA+IAo+ID4gPiAJaW50IHNpemUgPSBjbGFt
cF90KGludCwgZWFfc2l6ZSwgMCwgRUFMSVNUX1NJWkUoZWFfYnVmLT54YXR0cikpOwo+ID4gPiAK
PiA+ID4gQWx0aG91Z2ggY2xhbXBfdCBhaW1zIHRvIGJvdW5kIGVhX3NpemUgYmV0d2VlbiAwIGFu
ZCA0MTEwNDE3OTY4LCB0aGUgdXBwZXIgCj4gPiA+IGxpbWl0IGlzIHRyZWF0ZWQgYXMgYW4gaW50
LCBjYXVzaW5nIGFuIG92ZXJmbG93IGFib3ZlIDJeMzEgLSAxLiBUaGlzIGxlYWRzIAo+ID4gPiAi
c2l6ZSIgdG8gd3JhcCBhcm91bmQgYW5kIGJlY29tZSBuZWdhdGl2ZSAoLTE4NDU0OTMyOCkuCj4g
PiA+IAo+ID4gPiBUaGUgInNpemUiIGlzIHRoZW4gcGFzc2VkIHRvIHByaW50X2hleF9kdW1wKCkg
KGNhbGxlZCAibGVuIiBpbiAKPiA+ID4gcHJpbnRfaGV4X2R1bXAoKSksIGl0IGlzIHBhc3NlZCBh
cyB0eXBlIHNpemVfdCAoYW4gdW5zaWduZWQgCj4gPiA+IHR5cGUpLCB0aGlzIGlzIHRoZW4gc3Rv
cmVkIGluc2lkZSBhIHZhcmlhYmxlIGNhbGxlZCAKPiA+ID4gImludCByZW1haW5pbmciLCB3aGlj
aCBpcyB0aGVuIGFzc2lnbmVkIHRvICJpbnQgbGluZWxlbiIgd2hpY2ggCj4gPiA+IGlzIHRoZW4g
cGFzc2VkIHRvIGhleF9kdW1wX3RvX2J1ZmZlcigpLiBJbiBwcmludF9oZXhfZHVtcCgpIAo+ID4g
PiB0aGUgZm9yIGxvb3AsIGl0ZXJhdGVzIHRocm91Z2ggMCB0byBsZW4tMSwgd2hlcmUgbGVuIGlz
IAo+ID4gPiAxODQ0Njc0NDA3MzUyNTAwMjE3NiwgY2FsbGluZyBoZXhfZHVtcF90b19idWZmZXIo
KSAKPiA+ID4gb24gZWFjaCBpdGVyYXRpb246Cj4gPiA+IAo+ID4gPiAJZm9yIChpID0gMDsgaSA8
IGxlbjsgaSArPSByb3dzaXplKSB7Cj4gPiA+IAkJbGluZWxlbiA9IG1pbihyZW1haW5pbmcsIHJv
d3NpemUpOwo+ID4gPiAJCXJlbWFpbmluZyAtPSByb3dzaXplOwo+ID4gPiAKPiA+ID4gCQloZXhf
ZHVtcF90b19idWZmZXIocHRyICsgaSwgbGluZWxlbiwgcm93c2l6ZSwgZ3JvdXBzaXplLAo+ID4g
PiAJCQkJICAgbGluZWJ1Ziwgc2l6ZW9mKGxpbmVidWYpLCBhc2NpaSk7Cj4gPiA+IAkKPiA+ID4g
CQkuLi4KPiA+ID4gCX0KPiA+ID4gCQo+ID4gPiBUaGUgZXhwZWN0ZWQgc3RvcHBpbmcgY29uZGl0
aW9uIChpIDwgbGVuKSBpcyBlZmZlY3RpdmVseSBicm9rZW4gCj4gPiA+IHNpbmNlIGxlbiBpcyBj
b3JydXB0ZWQgYW5kIHZlcnkgbGFyZ2UuIFRoaXMgZXZlbnR1YWxseSBsZWFkcyB0byAKPiA+ID4g
dGhlICJwdHIraSIgYmVpbmcgcGFzc2VkIHRvIGhleF9kdW1wX3RvX2J1ZmZlcigpIHRvIGdldCBj
bG9zZXIgCj4gPiA+IHRvIHRoZSBlbmQgb2YgdGhlIGFjdHVhbCBib3VuZHMgb2YgInB0ciIsIGV2
ZW50dWFsbHkgYW4gb3V0IG9mIAo+ID4gPiBib3VuZHMgYWNjZXNzIGlzIGRvbmUgaW4gaGV4X2R1
bXBfdG9fYnVmZmVyKCkgaW4gdGhlIGZvbGxvd2luZyAKPiA+ID4gZm9yIGxvb3A6Cj4gPiA+IAo+
ID4gPiAJZm9yIChqID0gMDsgaiA8IGxlbjsgaisrKSB7Cj4gPiA+IAkJCWlmIChsaW5lYnVmbGVu
IDwgbHggKyAyKQo+ID4gPiAJCQkJZ290byBvdmVyZmxvdzI7Cj4gPiA+IAkJCWNoID0gcHRyW2pd
Owo+ID4gPiAJCS4uLgo+ID4gPiAJfQo+ID4gPiAKPiA+ID4gVG8gZml4IHRoaXMgd2Ugc2hvdWxk
IHZhbGlkYXRlICJFQUxJU1RfU0laRShlYV9idWYtPnhhdHRyKSIgCj4gPiA+IGJlZm9yZSBpdCBp
cyB1dGlsaXNlZC4KPiA+ID4gCj4gPiA+IFJlcG9ydGVkLWJ5OiBzeXpib3QgPHN5emJvdCs0ZTZl
N2U0Mjc5ZDA0NjYxM2JjNUBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tPgo+ID4gPiBUZXN0ZWQt
Ynk6IHN5emJvdCA8c3l6Ym90KzRlNmU3ZTQyNzlkMDQ2NjEzYmM1QHN5emthbGxlci5hcHBzcG90
bWFpbC5jb20+Cj4gPiA+IENsb3NlczogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVn
P2V4dGlkPTRlNmU3ZTQyNzlkMDQ2NjEzYmM1Cj4gPiA+IEZpeGVzOiBkOWY5ZDk2MTM2Y2IgKCJq
ZnM6IHhhdHRyOiBjaGVjayBpbnZhbGlkIHhhdHRyIHNpemUgbW9yZSBzdHJpY3RseSIpCj4gPiA+
IFNpZ25lZC1vZmYtYnk6IFFhc2ltIElqYXogPHFhc2RldjAwQGdtYWlsLmNvbT4KPiA+ID4gLS0t
Cj4gPiA+ICBmcy9qZnMveGF0dHIuYyB8IDE1ICsrKysrKysrKystLS0tLQo+ID4gPiAgMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBk
aWZmIC0tZ2l0IGEvZnMvamZzL3hhdHRyLmMgYi9mcy9qZnMveGF0dHIuYwo+ID4gPiBpbmRleCAy
NGFmYmFlODcyMjUuLjc1NzVjNTFjY2U5YiAxMDA2NDQKPiA+ID4gLS0tIGEvZnMvamZzL3hhdHRy
LmMKPiA+ID4gKysrIGIvZnMvamZzL3hhdHRyLmMKPiA+ID4gQEAgLTU1OSwxMSArNTU1LDE2IEBA
IHN0YXRpYyBpbnQgZWFfZ2V0KHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBlYV9idWZmZXIg
KmVhX2J1ZiwgaW50IG1pbl9zaXplKQo+ID4gPiAgCj4gPiA+ICAgICAgICBzaXplX2NoZWNrOgo+
ID4gPiAgCWlmIChFQUxJU1RfU0laRShlYV9idWYtPnhhdHRyKSAhPSBlYV9zaXplKSB7Cj4gPiA+
IC0JCWludCBzaXplID0gY2xhbXBfdChpbnQsIGVhX3NpemUsIDAsIEVBTElTVF9TSVpFKGVhX2J1
Zi0+eGF0dHIpKTsKPiA+ID4gLQo+ID4gPiAtCQlwcmludGsoS0VSTl9FUlIgImVhX2dldDogaW52
YWxpZCBleHRlbmRlZCBhdHRyaWJ1dGVcbiIpOwo+ID4gPiAtCQlwcmludF9oZXhfZHVtcChLRVJO
X0VSUiwgIiIsIERVTVBfUFJFRklYX0FERFJFU1MsIDE2LCAxLAo+ID4gPiAtCQkJCSAgICAgZWFf
YnVmLT54YXR0ciwgc2l6ZSwgMSk7Cj4gPiA+ICsJCWlmICh1bmxpa2VseShFQUxJU1RfU0laRShl
YV9idWYtPnhhdHRyKSA+IElOVF9NQVgpKSB7Cj4gPiA+ICsJCQlwcmludGsoS0VSTl9FUlIgImVh
X2dldDogZXh0ZW5kZWQgYXR0cmlidXRlIHNpemUgdG9vIGxhcmdlOiAldSA+IElOVF9NQVhcbiIs
Cj4gPiA+ICsJCQkgICAgICAgRUFMSVNUX1NJWkUoZWFfYnVmLT54YXR0cikpOwo+ID4gPiArCQl9
IGVsc2Ugewo+ID4gPiArCQkJaW50IHNpemUgPSBjbGFtcF90KGludCwgZWFfc2l6ZSwgMCwgRUFM
SVNUX1NJWkUoZWFfYnVmLT54YXR0cikpOwo+ID4gPiArCj4gPiA+ICsJCQlwcmludGsoS0VSTl9F
UlIgImVhX2dldDogaW52YWxpZCBleHRlbmRlZCBhdHRyaWJ1dGVcbiIpOwo+ID4gPiArCQkJcHJp
bnRfaGV4X2R1bXAoS0VSTl9FUlIsICIiLCBEVU1QX1BSRUZJWF9BRERSRVNTLCAxNiwgMSwKPiA+
ID4gKwkJCQkgICAgICAgZWFfYnVmLT54YXR0ciwgc2l6ZSwgMSk7Cj4gPiA+ICsJCX0KPiA+ID4g
IAkJZWFfcmVsZWFzZShpbm9kZSwgZWFfYnVmKTsKPiA+ID4gIAkJcmMgPSAtRUlPOwo+ID4gPiAg
CQlnb3RvIGNsZWFuX3VwOwo+ID4gPiAtLSAKPiA+ID4gMi4zOS41Cj4gPiA+IAo+ID4gCj4gPiBI
aSwKPiA+IAo+ID4gVGhpcyBpcyB0aGUgZnJpZW5kbHkgcGF0Y2gtYm90IG9mIEdyZWcgS3JvYWgt
SGFydG1hbi4gIFlvdSBoYXZlIHNlbnQgaGltCj4gPiBhIHBhdGNoIHRoYXQgaGFzIHRyaWdnZXJl
ZCB0aGlzIHJlc3BvbnNlLiAgSGUgdXNlZCB0byBtYW51YWxseSByZXNwb25kCj4gPiB0byB0aGVz
ZSBjb21tb24gcHJvYmxlbXMsIGJ1dCBpbiBvcmRlciB0byBzYXZlIGhpcyBzYW5pdHkgKGhlIGtl
cHQKPiA+IHdyaXRpbmcgdGhlIHNhbWUgdGhpbmcgb3ZlciBhbmQgb3ZlciwgeWV0IHRvIGRpZmZl
cmVudCBwZW9wbGUpLCBJIHdhcwo+ID4gY3JlYXRlZC4gIEhvcGVmdWxseSB5b3Ugd2lsbCBub3Qg
dGFrZSBvZmZlbmNlIGFuZCB3aWxsIGZpeCB0aGUgcHJvYmxlbQo+ID4gaW4geW91ciBwYXRjaCBh
bmQgcmVzdWJtaXQgaXQgc28gdGhhdCBpdCBjYW4gYmUgYWNjZXB0ZWQgaW50byB0aGUgTGludXgK
PiA+IGtlcm5lbCB0cmVlLgo+ID4gCj4gPiBZb3UgYXJlIHJlY2VpdmluZyB0aGlzIG1lc3NhZ2Ug
YmVjYXVzZSBvZiB0aGUgZm9sbG93aW5nIGNvbW1vbiBlcnJvcihzKQo+ID4gYXMgaW5kaWNhdGVk
IGJlbG93Ogo+ID4gCj4gPiAtIFlvdSBoYXZlIG1hcmtlZCBhIHBhdGNoIHdpdGggYSAiRml4ZXM6
IiB0YWcgZm9yIGEgY29tbWl0IHRoYXQgaXMgaW4gYW4KPiA+ICAgb2xkZXIgcmVsZWFzZWQga2Vy
bmVsLCB5ZXQgeW91IGRvIG5vdCBoYXZlIGEgY2M6IHN0YWJsZSBsaW5lIGluIHRoZQo+ID4gICBz
aWduZWQtb2ZmLWJ5IGFyZWEgYXQgYWxsLCB3aGljaCBtZWFucyB0aGF0IHRoZSBwYXRjaCB3aWxs
IG5vdCBiZQo+ID4gICBhcHBsaWVkIHRvIGFueSBvbGRlciBrZXJuZWwgcmVsZWFzZXMuICBUbyBw
cm9wZXJseSBmaXggdGhpcywgcGxlYXNlCj4gPiAgIGZvbGxvdyB0aGUgZG9jdW1lbnRlZCBydWxl
cyBpbiB0aGUKPiA+ICAgRG9jdW1lbnRhdGlvbi9wcm9jZXNzL3N0YWJsZS1rZXJuZWwtcnVsZXMu
cnN0IGZpbGUgZm9yIGhvdyB0byByZXNvbHZlCj4gPiAgIHRoaXMuCj4gPiAKPiA+IElmIHlvdSB3
aXNoIHRvIGRpc2N1c3MgdGhpcyBwcm9ibGVtIGZ1cnRoZXIsIG9yIHlvdSBoYXZlIHF1ZXN0aW9u
cyBhYm91dAo+ID4gaG93IHRvIHJlc29sdmUgdGhpcyBpc3N1ZSwgcGxlYXNlIGZlZWwgZnJlZSB0
byByZXNwb25kIHRvIHRoaXMgZW1haWwgYW5kCj4gPiBHcmVnIHdpbGwgcmVwbHkgb25jZSBoZSBo
YXMgZHVnIG91dCBmcm9tIHRoZSBwZW5kaW5nIHBhdGNoZXMgcmVjZWl2ZWQKPiA+IGZyb20gb3Ro
ZXIgZGV2ZWxvcGVycy4KPiA+Cj4gSGkgR3JlZywKPiAKPiBKdXN0IGZvbGxvd2luZyB1cCBvbiB0
aGlzIHBhdGNoLiBJ4oCZdmUgc2VudCB2MiB3aXRoIHRoZSBhZGRlZCBDQyBzdGFibGUgdGFnLiBI
ZXJl4oCZcyB0aGUgbGluazoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTAyMTMy
MTA1NTMuMjg2MTMtMS1xYXNkZXYwMEBnbWFpbC5jb20vCj4gCj4gTGV0IG1lIGtub3cgaWYgYW55
IGZ1cnRoZXIgY2hhbmdlcyBhcmUgbmVlZGVkLgoKSXQncyBiZWVuIGxlc3MgdGhhbiBvbmUgd2Vl
aywgZm9yIGEgZmlsZXN5c3RlbSB0aGF0IGlzIG5vdCBhY3RpdmVseQptYWludGFpbmVkIGFuZCBu
byBvbmUgc2hvdWxkIGJlIHVzaW5nIGFueW1vcmUsIHNvIHBsZWFzZSBiZSBwYXRpZW50LgoKdGhh
bmtzLAoKZ3JlZyBrLWgKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2pmcy1kaXNjdXNzaW9uCg==
